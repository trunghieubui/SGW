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
    gen_server:start_link({local, imp_handler_in}, ?MODULE, [], []).

init([]) ->
    {ok, #state{}}.

handle_call(_Request, _From, State) ->
    {reply, ok, State}.
%%gen_server:cast({imp_handler_in, PgwNode},{imp_normal_incoming, {DiameterType, Msg}}).
handle_cast({imp_heartbeat_incoming, PGWNode}, State) ->
    try
        process_heart_beat(PGWNode)
    catch
        _:Err ->
            ?LOG_ERROR("Exception in imp_heartbeat_incoming: ~p ~p", [Err, erlang:get_stacktrace()])
    end,
    {stop, normal, State};
%%gen_server:cast({imp_handler_in, PgwNode},{imp_normal_incoming, {DiameterType, Msg}).
%%

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

handle_cast({imp_normal_incoming, PGWNode, DiameterType, Msg}, State) ->
    io:format("I am in handle cast imp_handler_in"),
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
%%                diameter:call(?DIAM_HANDLER_GX, diameter_base_app, Req, []);
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