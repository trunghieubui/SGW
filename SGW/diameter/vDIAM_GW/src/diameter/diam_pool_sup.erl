%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2017 11:09 AM
%%%-------------------------------------------------------------------
-module(diam_pool_sup).
-author("thanhdoan").
-behaviour(supervisor).
-include("constant.hrl").

%% API
-export([start_link/0,stop/0]).

%% Supervisor callbacks
-export([init/1, get_diam_name/1]).

-define(SERVER, ?MODULE).

start_link() ->
    supervisor:start_link({local, diam_pool_sup}, ?MODULE, []).

stop() ->
    case whereis(?MODULE) of
        P when is_pid(P) ->
            exit(P, kill);
        _ -> ok
    end.

init([]) ->
    RestartStrategy = one_for_one,
    MaxRestarts = 1,
    MaxSecondsBetweenRestarts = 5,

    SupFlags = {RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts},
%%    Restart = temporary,
    Restart =permanent,
    Shutdown = 5000,
    Type = supervisor,

    ListPool = lists:seq(1, ?TOTAL_SUPERVISOR_POOL_DIAM),
    List_Diam_Sup = lists:foldl(fun(Inst, HList) ->
        Name = get_diam_name(Inst),
        [{Name,{diam_sup, start_link, [Name]},
            Restart,
            Shutdown,
            Type, [diam_sup]} | HList]
     end, [], ListPool),

%%    Diam = {pool_sup, {diam_sup, start_link, []}, permanent, 5000, worker, [diam_sup]},
%%    {ok, {{one_for_one, 5, 10}, [Diam]}}.

    {ok, {SupFlags, List_Diam_Sup}}.

get_diam_name(Inst) when is_integer(Inst) ->
    list_to_atom("diam_sup_" ++ integer_to_list(Inst)).