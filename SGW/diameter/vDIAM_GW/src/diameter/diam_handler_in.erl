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
-export([start_link/0, stop/0]).

%% gen_server callbacks
-export([init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    terminate/2,
    code_change/3]).

-define(SERVER, ?MODULE).

-record(state, {}).

%%start_link() ->
%%    io:format(" pmip_receive_handle start_link ~n", []),
%%    gen_server:start_link({local, ?MODULE}, ?MODULE, null, []).

start_link() ->
    gen_server:start_link(?MODULE, [], []).

stop() ->
    gen_server:cast(?MODULE, stop).

init(_Params) ->
    {ok, #state{}}.

%%terminate(Reason, {server, Sock}) ->
%%    io:format("Terminate Reason:~p~n", [Reason]),
%%    ok.

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast(Msg, State) ->
    io:format("casting: ~p ~n",[Msg]),
    {normaly, State};

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



%%  send request message
handle_cast(imp_normal_incoming, State) ->
    Msg = #diameter_base_CCR{
        'Session-Id' = "diam_session;1559632244;3;vemu_pcrf@29.19.19.130",
        'Auth-Application-Id' = 16777238,
        %'Origin-Host' = "vpgwcp.epc.mnc004.mnc452.3gppnetwork.org",
        %'Origin-Realm' = "epc.mnc004.mcc452.3gppnetwork.org",
        %'Destination-Realm' = "vttek-pcrf.com",
        %'Destination-Host' = "vttek-pcrf.com",
        'CC-Request-Type' = 1,
        'CC-Request-Number' = 0,
        'Origin-State-Id' = [1559632244],
        'Subscription-Id' = [#'diameter_base_Subscription-Id'{
            'Subscription-Id-Type' = 1,
            'Subscription-Id-Data' = "452040000000003"
        }],
        'Supported-Features' = [#'diameter_base_Supported-Features'{
            'Vendor-Id' = 10415,
            'Feature-List-ID' = 1,
            'Feature-List' = 3
        }],
        'Network-Request-Support' = [1],
        'Framed-IP-Address' = [[10,37,27,79]],
        'IP-CAN-Type' = [5],
        'RAT-Type' = [1004],
        'User-Equipment-Info' = [#'diameter_base_User-Equipment-Info'{
            'User-Equipment-Info-Type' = 0,
            'User-Equipment-Info-Value' = "919293949596970"
        }],
        'QoS-Information' = [#'diameter_base_QoS-Information'{
            'QoS-Class-Identifier' = [8],
%%            'Bearer-Identifier' = [05],
            'Allocation-Retention-Priority' = [#'diameter_base_Allocation-Retention-Priority'{
                'Priority-Level' = [5],
                'Pre-emption-Capability' = [1],
                'Pre-emption-Vulnerability' = [0]
            }],
            'APN-Aggregate-Max-Bitrate-UL' = [5000000],
            'APN-Aggregate-Max-Bitrate-DL' = [5000000]
        }],
        'Default-EPS-Bearer-QoS' = [#'diameter_base_Default-EPS-Bearer-QoS'{
            'QoS-Class-Identifier' = [6],
            'Allocation-Retention-Priority' = [#'diameter_base_Allocation-Retention-Priority'{
                'Priority-Level' = [9],
                'Pre-emption-Capability' = [0],
                'Pre-emption-Vulnerability' = [0]
            }]
        }],
        '3GPP-SGSN-MCC-MNC' = ["45204"],
        'Bearer-Usage' = [0],
        'Online' = [1],
        'Offline' =  [1],
        'Access-Network-Charging-Identifier-Gx' = [#'diameter_base_Access-Network-Charging-Identifier-Gx'{
            'Access-Network-Charging-Identifier-Value' = [31]
        }]
    },
    ?LOG_NOTICE("I am in handle cast imp_handler_in on myself with ~p~n",[Msg]),
    diameter:call(?DIAM_HANDLER_GX, diameter_base_app, Msg, []),
    {noreply, State};

handle_cast(_Request, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.