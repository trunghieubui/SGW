%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2017 11:09 AM
%%%-------------------------------------------------------------------
-module(imp_pool_sup).
-author("thanhdoan").
-behaviour(supervisor).
-include("constant.hrl").

%% API
-export([start_link/0,stop/0]).

%% Supervisor callbacks
-export([init/1, get_imp_name/1]).

-define(SERVER, ?MODULE).

start_link() ->
    supervisor:start_link({local, imp_pool_sup}, ?MODULE, []).

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
    Restart = temporary,
    Shutdown = 5000,
    Type = supervisor,

    ListPool = lists:seq(1, ?TOTAL_SUPERVISOR_POOL_IMP),
    List_Imp_Sup = lists:foldl(fun(Inst, HList) ->
        Name = get_imp_name(Inst),
        [{Name,{imp_sup, start_link, [Name]},
            Restart,
            Shutdown,
            Type, [imp_sup]} | HList]
     end, [], ListPool),

    {ok, {SupFlags, List_Imp_Sup}}.

get_imp_name(Inst) when is_integer(Inst) ->
    list_to_atom("imp_sup_" ++ integer_to_list(Inst)).