%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Mar 2017 3:39 PM
%%%-------------------------------------------------------------------
-module(diam_handler_in).
-author("thanhdoan").
%% Include libarary
-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter/include/diameter_gen_base_gx.hrl").
-include_lib("diameter/include/diameter_gen_base_gy.hrl").
-include("constant.hrl").
-include("logger.hrl").
-include("define_kpi.hrl").
-behaviour(gen_server).
-define(debug_flag,false).
-ifdef(debug_flag).
-define(DEBUG(X), io:format("DEBUG ~p: ~p ~p~n", [?MODULE, ?LINE, X])).
-else.
-define(DEBUG(X), void).
-endif.
%% API
-export([start_link/0]).

%% gen_server callbacks
-export([init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    terminate/2,
    code_change/3]).

-define(SERVER, ?MODULE).

-record(state, {}).

start_link() ->
    ?DEBUG("I am in start_link"),
    gen_server:start_link(?MODULE, [], []).

init([]) ->
    {ok, #state{}}.

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

%% Receive msg from PCRF for send to PGWCP
handle_cast({gx_cca_send_to_pgwcp, CCA}, XState) ->
    ?LOG_NOTICE("I am in handle_cast function: ~p~n",[CCA]),
    try
        %% Get NodeName from SessionId (OctetString)
        SessionId = CCA#diameter_base_CCA.'Session-Id',
        [RequestNumber] = CCA#diameter_base_CCA.'CC-Request-Number',

        PgwNode = db_util:lookup(?TBL_DIAM_GW_MAPPING_NODE, {SessionId, RequestNumber}),
        case PgwNode of
            []->
                ?LOG_ERROR("Not found mappingNode with Key=~p,~p", [SessionId, RequestNumber]);
            _->
                {PGWInfo,_} = PgwNode,

                %% Check node isAlive
                case db_util:lookup(?TBL_DIAM_GW_NODE, PGWInfo) of
                    []->
                        ?LOG_ERROR("Node PGWPCP ~p is died, can not send msg to PGWCP", [PGWInfo]);
                    _->
                        ?LOG_DEBUG("Found PGWPCP = ~p", [PGWInfo]),

                        %% Send to PGWCP
                        [RequestType] = CCA#diameter_base_CCA.'CC-Request-Type',
                        MsgType =
                            case RequestType of
                                ?'DIAMETER_BASE_CC-REQUEST-TYPE_INITIAL_REQUEST' ->
                                    cca_init_gx;
                                ?'DIAMETER_BASE_CC-REQUEST-TYPE_UPDATE_REQUEST' ->
                                    cca_update_gx;
                                ?'DIAMETER_BASE_CC-REQUEST-TYPE_TERMINATION_REQUEST' ->
                                    cca_terminate_gx;
                                _->
                                    unknown
                            end,
                        ?LOG_DEBUG("Send ~p=~p to PGWCP", [MsgType, CCA]),
                        gen_server:cast(statistic_handler,increase_in),
                        gen_server:cast({diam_handler, PGWInfo},{gx_cca, CCA})
                end,

                %% Del Mapping
                db_util:delete(?TBL_DIAM_GW_MAPPING_NODE, {SessionId, RequestNumber})
        end
    catch
        _:Err ->
            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in gx_send_to_bh"),
            ?LOG_ERROR("Exception in gx_send_to_pgwcp: ~p ~p", [Err, erlang:get_stacktrace()])
    end,
    {stop, normal, XState};

%% Receive msg from PCRF for send to PGWCP
handle_cast({gx_rar_send_to_pgwcp, RAR}, XState) ->
    try
        %% Get Node by round robin
        ListResult = ets:match(?TBL_DIAM_GW_NODE, '$1'),
        TotalNode = length(ListResult),

        PGWInfo =
        if
            TotalNode =:= 0->
                not_found;
            true ->
                NodeIndex = ets:update_counter(?TBL_DIAM_GW_ROUND_ROBIN, round_robin, {2, 1, TotalNode, 1}),
                NodeInfo = lists:nth(NodeIndex, ListResult),
                [{PInfo, _}] = NodeInfo,
                PInfo
        end,

        %% Check node isAlive
        case PGWInfo of
            not_found->
                ?LOG_ERROR("Not found any PGWCP, can not send msg to PGWCP", []);
            _->
                ?LOG_DEBUG("Found PGWPCP = ~p", [PGWInfo]),

                %% Send to PGWCP
                ?LOG_DEBUG("Send RAR_Gx=~p to PGWCP", [RAR]),
                gen_server:cast({diam_handler, PGWInfo},{gx_rar, RAR})
        end
    catch
        _:Err ->
            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in gx_send_to_bh"),
            ?LOG_ERROR("Exception in gx_send_to_pgwcp: ~p ~p", [Err, erlang:get_stacktrace()])
    end,

    {stop, normal, XState};

%% Receive msg from OCS for send to PGWCP
handle_cast({gy_cca_send_to_pgwcp, CCA}, XState) ->
    try
        %% Get NodeName from SessionId (OctetString)
        SessionId = CCA#diameter_base_gy_CCA.'Session-Id',
        [RequestNumber] = CCA#diameter_base_gy_CCA.'CC-Request-Number',

        PgwNode = db_util:lookup(?TBL_DIAM_GW_MAPPING_NODE, {SessionId, RequestNumber}),
        case PgwNode of
            []->
                ?LOG_ERROR("Not found mappingNode with Key=~p,~p", [SessionId, RequestNumber]);
            _ ->
                {PGWInfo,_} = PgwNode,

                %% Check node isAlive
                case db_util:lookup(?TBL_DIAM_GW_NODE, PGWInfo) of
                    []->
                        ?LOG_ERROR("Node PGWPCP ~p is died, can not send msg to PGWCP", [PGWInfo]);
                    _->
                        ?LOG_DEBUG("Found PGWPCP = ~p", [PGWInfo]),

                        %% Send to PGWCP
                        [RequestType] = CCA#diameter_base_gy_CCA.'CC-Request-Type',
                        MsgType =
                            case RequestType of
                                ?'DIAMETER_BASE_GY_CC-REQUEST-TYPE_INITIAL_REQUEST' ->
                                    cca_init_gy;
                                ?'DIAMETER_BASE_GY_CC-REQUEST-TYPE_UPDATE_REQUEST' ->
                                    cca_update_gy;
                                ?'DIAMETER_BASE_GY_CC-REQUEST-TYPE_TERMINATION_REQUEST' ->
                                    cca_terminate_gy;
                                _->
                                    unknown
                            end,
                        ?LOG_DEBUG("Send ~p=~p to PGWCP", [MsgType, CCA]),
                        gen_server:cast(statistic_handler,increase_in),
                        gen_server:cast({diam_handler, PGWInfo},{gy_cca, CCA})
                end,

                %% Del Mapping
                db_util:delete(?TBL_DIAM_GW_MAPPING_NODE, {SessionId, RequestNumber})
        end
    catch
        _:Err ->
            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in gy_send_to_pgwcp"),
            ?LOG_ERROR("Exception in gy_send_to_bh: ~p ~p", [Err, erlang:get_stacktrace()])
    end,

    {stop, normal, XState};

handle_cast(_Request, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.