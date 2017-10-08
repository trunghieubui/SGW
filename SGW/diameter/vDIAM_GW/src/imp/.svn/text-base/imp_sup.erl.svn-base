%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2017 11:09 AM
%%%-------------------------------------------------------------------
-module(imp_sup).
-author("thanhdoan").
-behaviour(supervisor).
-include("define_kpi.hrl").
-include("logger.hrl").
-include("constant.hrl").

%% API
-export([start_link/1]).

%% Supervisor callbacks
-export([init/1]).
-export([send_msg_imp_incoming/1]).

-define(SERVER, ?MODULE).

start_link(Name) ->
    supervisor:start_link({local, Name}, ?MODULE, []).

%% Call to start process handler messsage incoming
start_imp_handler_in() ->
    try
        KeyGen = integer_to_list(erlang:system_time()),
        PidName = string:concat("imp_in_", KeyGen),

        Handler = {PidName, {imp_handler_in, start_link, []},
            %% For dynamic supervisor (do_not_autorestart)
            temporary,
            5000,
            worker, [imp_handler_in]},

        ImpIndex = ets:update_counter(?TBL_DIAM_GW_POOL_SUP, pool_imp, {2, 1, ?TOTAL_SUPERVISOR_POOL_IMP, 1}),
        case supervisor:start_child(imp_pool_sup:get_imp_name(ImpIndex), Handler) of
            {ok, RetPid} ->
                RetPid;
            {error, Error} ->
                alarm_util:send_alarm(?ALARM_ID_START_PROCESS_FAIL, ?ALARM_LEVEL_CRITICAL, "Can not start_imp_handler_in"),
                ?LOG_ERROR("Can not start_gtpc_handler_in: error=~p", [Error]),
                error
        end
    catch
        _:Err ->
            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in start_imp_handler_in"),
            ?LOG_ERROR("Exception in start_imp_handler_in: ~p ~p", [Err, erlang:get_stacktrace()])
    end.

%% Send message in
send_msg_imp_incoming(Para)->
    %% Send To DP
    case start_imp_handler_in() of
        error ->
            error;
        GtpcPid ->
            gen_server:cast(GtpcPid, Para)
    end.

init([]) ->
    RestartStrategy = one_for_one,
    MaxRestarts = 1,
    MaxSecondsBetweenRestarts = 5,

    SupFlags = {RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts},

    {ok, {SupFlags, []}}.