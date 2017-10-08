%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Mar 2017 2:40 PM
%%%-------------------------------------------------------------------
-module(diam_sup).
-author("thanhdoan").
-include("define_kpi.hrl").
-include("logger.hrl").
-include("constant.hrl").
-behaviour(supervisor).
-define(debug_flag,false).
-ifdef(debug_flag).
-define(DEBUG(X), io:format("DEBUG ~p: ~p ~p~n", [?MODULE, ?LINE, X])).
-else.
-define(DEBUG(X), void).
-endif.
%% API
-export([start_link/1, send_msg_diam_incoming/1]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

start_link(Name) ->
    supervisor:start_link({local, Name}, ?MODULE, []).

%% Call to start process handler messsage incoming
start_diam_handler_in() ->
    try
        KeyGen = integer_to_list(erlang:system_time()),
        PidName = string:concat("diam_in_", KeyGen),

        Handler = {PidName, {diam_handler_in, start_link, []},
            %% For dynamic supervisor (do_not_autorestart)
            temporary,
            5000,
            worker, [diam_handler_in]},

        DiamIndex = ets:update_counter(?TBL_DIAM_GW_POOL_SUP, pool_diam, {2, 1, ?TOTAL_SUPERVISOR_POOL_DIAM, 1}),
        case supervisor:start_child(diam_pool_sup:get_diam_name(DiamIndex), Handler) of
            {ok, RetPid} ->
                RetPid;
            {error, Error} ->
                alarm_util:send_alarm(?ALARM_ID_START_PROCESS_FAIL, ?ALARM_LEVEL_CRITICAL, "Can not start_diam_handler_in"),
                ?LOG_ERROR("Can not start_diam_handler_in: error=~p", [Error]),
                error
        end
    catch
        _:Err ->
            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in start_diam_handler_in"),
            ?LOG_ERROR("Exception in start_diam_handler_in: ~p ~p", [Err, erlang:get_stacktrace()])
    end.

%% Send message in
send_msg_diam_incoming(Para)->
    %% Send To DP
    case start_diam_handler_in() of
        error ->
            error;
        DiamPid ->
            gen_server:cast(DiamPid, Para)
    end.

init([]) ->
    RestartStrategy = one_for_one,
    MaxRestarts = 1,
    MaxSecondsBetweenRestarts = 5,

    SupFlags = {RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts},

    {ok, {SupFlags, []}}.