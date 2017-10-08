%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. Mar 2017 3:54 PM
%%%-------------------------------------------------------------------
-module(diam_callback).
-author("thanhdoan").

%% Include library
-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter/include/diameter_gen_base_gx.hrl").
-include_lib("diameter/include/diameter_gen_base_gy.hrl").
-include("logger.hrl").
-include("constant.hrl").
-include("define_kpi.hrl").
-define(debug_flag,false).
-ifdef(debug_flag).
-define(DEBUG(X), io:format("DEBUG ~p: ~p ~p~n", [?MODULE, ?LINE, X])).
-else.
-define(DEBUG(X), void).
-endif.
%% API
-export([]).

%% diameter callbacks
-export([peer_up/3,
    peer_down/3,
    pick_peer/4,
    prepare_request/3,
    prepare_retransmit/3,
    handle_answer/4,
    handle_error/4,
    handle_request/3]).

peer_up(SvcName, {PeerRef, _}, State) ->
%%    State.
    ?LOG_NOTICE("Peer up: ~p,~p", [PeerRef, SvcName]),
    Req = #diameter_base_CCR{
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
%%       'AN-GW-Address' = [#'diameter_base_answer-message']
        '3GPP-SGSN-MCC-MNC' = ["45204"],
%%        '3GPP-User-Location-Info' = []
%%        'PDN-Connection-ID' = [31]
        'Bearer-Usage' = [0],
        'Online' = [1],
        'Offline' =  [1],
%%        'Access-Network-Charging-Address' = [#'dia']
        'Access-Network-Charging-Identifier-Gx' = [#'diameter_base_Access-Network-Charging-Identifier-Gx'{
            'Access-Network-Charging-Identifier-Value' = [31]
        }]
    },
  %  DiameterPeer = #diameter_packet{msg = Req},
   % B=0,
%%    prepare_request(DiameterPeer,A, {B, DiameterCap}),

    %%gen_server:cast(imp_handler_in, {imp_normal_incoming, PGWNode, DiameterType, Msg}).
    diameter:call(?DIAM_HANDLER_GX, diameter_base_app, Req, []),
    State.

peer_down(_SvcName, {PeerRef, _}, State) ->
    ?LOG_NOTICE("Peer down: ~p", [PeerRef]),
    State.

pick_peer([Peer | _], _, _SvcName, _State) ->
    ?LOG_NOTICE("Peer pick: ~p", [Peer]),
    {ok, Peer}.

%% Send msg to PCRF
prepare_request(#diameter_packet{msg = Req} = _Pkt, _, {_, Caps}) when is_record(Req, diameter_base_CCR) ->
    try
        #diameter_caps{origin_host = {OH, _DH}, origin_realm = {OR, DR}} = Caps,

        {send, Req#diameter_base_CCR{
            'Origin-Host' = OH,
            'Origin-Realm' = OR,
            'Destination-Realm' = DR}}
    catch
        _:Err ->
            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in prepare_request_pcrf"),
            ?LOG_ERROR("Exception in prepare_request_pcrf: ~p ~p", [Err, erlang:get_stacktrace()])
    end;

%% Send msg to OCS
prepare_request(#diameter_packet{msg = Req} = _Pkt, _, {_, Caps}) when is_record(Req, diameter_base_gy_CCR) ->
    try
        #diameter_caps{origin_host = {OH, _DH}, origin_realm = {OR, DR}} = Caps,

        {send, Req#diameter_base_gy_CCR{
            'Origin-Host' = OH,
            'Origin-Realm' = OR,
            'Destination-Realm' = DR}}
    catch
        _:Err ->
            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in prepare_request_ocs"),
            ?LOG_ERROR("Exception in prepare_request_ocs: ~p ~p", [Err, erlang:get_stacktrace()])
    end;

prepare_request(#diameter_packet{msg = _Req} = _Pkt, _, {_, _Caps}) ->
    alarm_util:send_alarm(?ALARM_ID_RECV_INVALID_MSG, ?ALARM_LEVEL_CRITICAL, "prepare_request in diam_callback"),
    ?LOG_ERROR("Don't know message request....", []).

prepare_retransmit(Packet, SvcName, Peer) ->
    prepare_request(Packet, SvcName, Peer).

%% Receive msg from PCRF

handle_answer(#diameter_packet{msg = Msg}, _Request, _SvcName, _Peer) when is_record(_Request, diameter_base_CEA) ->
    ?LOG_NOTICE("Receive CEA from PCRF:~p", [Msg]);
    %diam_sup:send_msg_diam_incoming({gx_cca_send_to_pgwcp, Msg});

handle_answer(#diameter_packet{msg = Msg}, _Request, _SvcName, _Peer) when is_record(_Request, diameter_base_CCR) ->
    ?LOG_NOTICE("Receive CCA from PCRF:~p", [Msg]),
    diam_sup:send_msg_diam_incoming({gx_cca_send_to_pgwcp, Msg});

%% Receive msg from OCS
handle_answer(#diameter_packet{msg = Msg}, _Request, _SvcName, _Peer) when is_record(_Request, diameter_base_gy_CCR) ->
    ?LOG_NOTICE("Receive CCA from OCS", []),
    diam_sup:send_msg_diam_incoming({gy_cca_send_to_pgwcp, Msg});

handle_answer(#diameter_packet{msg = Msg}, _Request, _SvcName, _Peer) ->
    alarm_util:send_alarm(?ALARM_ID_RECV_INVALID_MSG, ?ALARM_LEVEL_CRITICAL, "handle_answer in diam_callback"),
    ?LOG_NOTICE("Don't know message answer: ~w * ~w", [Msg, _Request]).

handle_error(Reason, Request, _SvcName, _Peer) when is_list(Request) ->
    alarm_util:send_alarm(?ALARM_ID_RECV_INVALID_MSG, ?ALARM_LEVEL_CRITICAL, "handle_error in diam_callback"),
    ?LOG_ERROR("Error: ~p", [Reason]);

handle_error(Reason, _Request, _SvcName, _Peer) ->
    alarm_util:send_alarm(?ALARM_ID_RECV_INVALID_MSG, ?ALARM_LEVEL_CRITICAL, "handle_error in diam_callback"),
    ?LOG_ERROR("Error: ~p", [Reason]).

%% handle_request/3
handle_request(#diameter_packet{msg = Msg}, _SvcName, {_, Caps}) when is_record(Msg, diameter_base_DPR) ->
    ?LOG_DEBUG("Received Disconnected Peer Request ", []),
    #diameter_caps{origin_host = {OH, _},
        origin_realm = {OR, _}}
        = Caps,

    DPA = #diameter_base_DPA{
        'Result-Code' = ?'DIAMETER_BASE_RESULT-CODE_DIAMETER_SUCCESS',
        'Origin-Host' = OH,
        'Origin-Realm' = OR
    },

    ?LOG_DEBUG("Send Disconneted Peer Answer", []),
    {reply, DPA};

handle_request(#diameter_packet{msg = RAR}, _SvcName, {_, Caps}) when is_record(RAR, diameter_base_RAR) ->
    try
        ?LOG_DEBUG("Received Re-Auth-Request = ~p", [RAR]),
        #diameter_caps{origin_host = {OH, _}, origin_realm = {OR, _}} = Caps,

        %% Find IMSI by sessionId
        SessionId = RAR#diameter_base_RAR.'Session-Id',
        ?LOG_DEBUG("SessionId in RAR-PCRF = ~p", [SessionId]),

        %% Validate RAR
        if
            RAR#diameter_base_RAR.'Origin-Host' =:= ?NULL orelse
                RAR#diameter_base_RAR.'Origin-Realm' =:= ?NULL orelse
                RAR#diameter_base_RAR.'Destination-Host' =:= ?NULL orelse
                RAR#diameter_base_RAR.'Destination-Realm' =:= ?NULL orelse
                RAR#diameter_base_RAR.'Auth-Application-Id' =:= ?NULL orelse
                RAR#diameter_base_RAR.'Re-Auth-Request-Type' =:= ?NULL ->
                ?LOG_ERROR("MISSING_MANDATORY_AVP in RAR", []),
                {reply, #diameter_base_RAA{
                    'Origin-Host' = OH,
                    'Origin-Realm' = OR,
                    'Session-Id' = SessionId,
                    'Result-Code' = ?'DIAMETER_BASE_RESULT-CODE_MISSING_AVP'
                }};
            true ->
                %% Send RAR to PGWCP
                diam_sup:send_msg_diam_incoming({gx_rar_send_to_pgwcp, RAR}),

                %% Send RAA to PCRF server
                ?LOG_DEBUG("Send Re-Auth-Answer to PCRF", []),
                {reply, #diameter_base_RAA{
                    'Origin-Host' = OH,
                    'Origin-Realm' = OR,
                    'Session-Id' = SessionId,
                    'Result-Code' = ?'DIAMETER_BASE_RESULT-CODE_DIAMETER_SUCCESS'
                }}
        end
    catch
        _:Err ->
            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in handle_request"),
            ?LOG_ERROR("Exception in handle_request: ~p ~p", [Err, erlang:get_stacktrace()])
    end.


