%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Mar 2017 3:39 PM
%%%-------------------------------------------------------------------
-module(imp_handler_in).
-author("thanhdoan").
-include("constant.hrl").
-include("logger.hrl").
-include("define_kpi.hrl").
%% Include libarary
-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter/include/diameter_gen_base_gx.hrl").
-include_lib("diameter/include/diameter_gen_base_gy.hrl").
-behaviour(gen_server).

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
    gen_server:start_link(?MODULE, [], []).

init([]) ->
    {ok, #state{}}.


handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast({imp_heartbeat_incoming, PGWNode}, State) ->
    try
        process_heart_beat(PGWNode)
    catch
        _:Err ->
            ?LOG_ERROR("Exception in imp_heartbeat_incoming: ~p ~p", [Err, erlang:get_stacktrace()])
    end,
    {stop, normal, State};

handle_cast({imp_normal_incoming, PGWNode, DiameterType, Msg}, State) ->
    try
        gen_server:cast(statistic_handler,increase_out),
        case DiameterType of
            1->
                %% Gx
                RequestType = Msg#diameter_base_CCR.'CC-Request-Type',
                MsgType =
                    case RequestType of
                        ?'DIAMETER_BASE_CC-REQUEST-TYPE_INITIAL_REQUEST' ->
                            ccr_init_gx;
                        ?'DIAMETER_BASE_CC-REQUEST-TYPE_UPDATE_REQUEST' ->
                            ccr_update_gx;
                        ?'DIAMETER_BASE_CC-REQUEST-TYPE_TERMINATION_REQUEST' ->
                            ccr_terminate_gx;
                        _->
                            unknown
                    end,

                %% Mapping node & ReqNumber
                SessionId = Msg#diameter_base_CCR.'Session-Id',
                RequestNumber = Msg#diameter_base_CCR.'CC-Request-Number',
                db_util:insert(?TBL_DIAM_GW_MAPPING_NODE,{{SessionId, RequestNumber}, {PGWNode, os:timestamp()}}),

                ?LOG_NOTICE("Send ~p=~p to PCRF", [MsgType, Msg]),

                diameter:call(?DIAM_HANDLER_GX, diameter_base_app, Msg, []);
            _->
                %% Gy
                RequestType = Msg#diameter_base_gy_CCR.'CC-Request-Type',
                MsgType =
                    case RequestType of
                        ?'DIAMETER_BASE_GY_CC-REQUEST-TYPE_INITIAL_REQUEST' ->
                            ccr_init_gy;
                        ?'DIAMETER_BASE_GY_CC-REQUEST-TYPE_UPDATE_REQUEST' ->
                            ccr_update_gy;
                        ?'DIAMETER_BASE_GY_CC-REQUEST-TYPE_TERMINATION_REQUEST' ->
                            ccr_terminate_gy;
                        _->
                            unknown
                    end,

                %% Mapping node & ReqNumber
                SessionId = Msg#diameter_base_gy_CCR.'Session-Id',
                RequestNumber = Msg#diameter_base_gy_CCR.'CC-Request-Number',
                db_util:insert(?TBL_DIAM_GW_MAPPING_NODE,{{SessionId, RequestNumber}, {PGWNode, os:timestamp()}}),

                ?LOG_DEBUG("Send ~p=~p to OCS", [MsgType, Msg]),
                diameter:call(?DIAM_HANDLER_GY, diameter_base_app, Msg, [])
        end
    catch
        _:Err ->
            ?LOG_ERROR("Exception in imp_normal_incoming: ~p ~p", [Err, erlang:get_stacktrace()])
    end,
    {stop, normal, State};

handle_cast(_Request, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

process_heart_beat(PGWNode)->
    ?LOG_NOTICE("Receive HEART_BEAT from ~p",[PGWNode]),

    %% Check existed
    case db_util:lookup(?TBL_DIAM_GW_NODE, PGWNode) of
        []->
            %% Insert
            db_util:insert(?TBL_DIAM_GW_NODE,{PGWNode,os:timestamp()});
        _->
            %% Update
            ets:update_element(?TBL_DIAM_GW_NODE, PGWNode, {2, os:timestamp()})
    end.