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
    handle_error/4]).
%%    handle_request/3]).

peer_up(SvcName, {PeerRef, _}, State) ->
    ?LOG_NOTICE("Peer up: ~p,~p", [PeerRef, SvcName]),
%%    gen_server:cast(pmip_receive_handle, imp_normal_incoming),
    gen_server:cast(pmip, imp_normal_incoming),
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

%%handle_answer(#diameter_packet{msg = Msg}, _Request, _SvcName, _Peer) when is_record(_Request, diameter_base_CEA) ->
%%    ?LOG_NOTICE("Receive CEA from PCRF:~p", [Msg]);
%%    %diam_sup:send_msg_diam_incoming({gx_cca_send_to_pgwcp, Msg});

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

%%%% handle_request/3
%%handle_request(#diameter_packet{msg = Msg}, _SvcName, {_, Caps}) when is_record(Msg, diameter_base_DPR) ->
%%    ?LOG_DEBUG("Received Disconnected Peer Request ", []),
%%    #diameter_caps{origin_host = {OH, _},
%%        origin_realm = {OR, _}}
%%        = Caps,
%%
%%    DPA = #diameter_base_DPA{
%%        'Result-Code' = ?'DIAMETER_BASE_RESULT-CODE_DIAMETER_SUCCESS',
%%        'Origin-Host' = OH,
%%        'Origin-Realm' = OR
%%    },
%%
%%    ?LOG_DEBUG("Send Disconneted Peer Answer", []),
%%    {reply, DPA}.

%%  receive the request message
%%handle_request(#diameter_packet{msg = RAR}, _SvcName, {_, Caps}) when is_record(RAR, diameter_base_RAR) ->
%%    try
%%        ?LOG_DEBUG("Received Re-Auth-Request = ~p", [RAR]),
%%        #diameter_caps{origin_host = {OH, _}, origin_realm = {OR, _}} = Caps,
%%
%%        %% Find IMSI by sessionId
%%        SessionId = RAR#diameter_base_RAR.'Session-Id',
%%        ?LOG_DEBUG("SessionId in RAR-PCRF = ~p", [SessionId]),
%%
%%        %% Validate RAR
%%        if
%%            RAR#diameter_base_RAR.'Origin-Host' =:= ?NULL orelse
%%                RAR#diameter_base_RAR.'Origin-Realm' =:= ?NULL orelse
%%                RAR#diameter_base_RAR.'Destination-Host' =:= ?NULL orelse
%%                RAR#diameter_base_RAR.'Destination-Realm' =:= ?NULL orelse
%%                RAR#diameter_base_RAR.'Auth-Application-Id' =:= ?NULL orelse
%%                RAR#diameter_base_RAR.'Re-Auth-Request-Type' =:= ?NULL ->
%%                ?LOG_ERROR("MISSING_MANDATORY_AVP in RAR", []),
%%                {reply, #diameter_base_RAA{
%%                    'Origin-Host' = OH,
%%                    'Origin-Realm' = OR,
%%                    'Session-Id' = SessionId,
%%                    'Result-Code' = ?'DIAMETER_BASE_RESULT-CODE_MISSING_AVP'
%%                }};
%%            true ->
%%                %% Send RAR to PGWCP
%%                diam_sup:send_msg_diam_incoming({gx_rar_send_to_pgwcp, RAR}),
%%
%%                %% Send RAA to PCRF server
%%                ?LOG_DEBUG("Send Re-Auth-Answer to PCRF", []),
%%                {reply, #diameter_base_RAA{
%%                    'Origin-Host' = OH,
%%                    'Origin-Realm' = OR,
%%                    'Session-Id' = SessionId,
%%                    'Result-Code' = ?'DIAMETER_BASE_RESULT-CODE_DIAMETER_SUCCESS'
%%                }}
%%        end
%%    catch
%%        _:Err ->
%%            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in handle_request"),
%%            ?LOG_ERROR("Exception in handle_request: ~p ~p", [Err, erlang:get_stacktrace()])
%%    end.


