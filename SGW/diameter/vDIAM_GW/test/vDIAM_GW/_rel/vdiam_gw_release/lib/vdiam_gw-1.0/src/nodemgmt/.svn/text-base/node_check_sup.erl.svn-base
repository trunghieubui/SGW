%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2017 11:09 AM
%%%-------------------------------------------------------------------
-module(node_check_sup).
-author("thanhdoan").
-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
    RestartStrategy = one_for_one,
    MaxRestarts = 1,
    MaxSecondsBetweenRestarts = 5,

    SupFlags = {RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts},

    Restart = permanent,
    Shutdown = 5000,
    Type = worker,

    Node_Check = {'node_check', {'node_check', start_link, []},
        Restart, Shutdown, Type, ['node_check']},

    {ok, {SupFlags, [Node_Check]}}.