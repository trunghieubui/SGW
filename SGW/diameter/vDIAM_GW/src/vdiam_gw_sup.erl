%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. May 2017 11:29 AM
%%%-------------------------------------------------------------------
-module(vdiam_gw_sup).
-author("thanhdoan").
-include("logger.hrl").
-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).
-define(SERVER, ?MODULE).

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
    % Parameter for supervisor
    RestartStrategy = one_for_one,
    MaxRestarts = 1,
    MaxSecondsBetweenRestarts = 5,
    SupFlags = {RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts},

    Restart = permanent,
    Shutdown = 5000,
    Type = supervisor,

    Diam_Pool_Sup = {diam_pool_sup, {diam_pool_sup, start_link, []},
        Restart,
        Shutdown,
        Type,
        [diam_pool_sup]},

%%    Imp_Pool_Sup = {imp_pool_sup, {imp_pool_sup, start_link, []},
%%        Restart,
%%        Shutdown,
%%        Type,
%%        [imp_pool_sup]},

%%    Imp_Handler_Sup = {imp_handler_sup, {imp_handler_sup, start_link, []},
%%        Restart,
%%        Shutdown,
%%        Type,
%%        [imp_handler_sup]},

%%    Statistic_Handler_Sup = {statistic_handler_sup, {statistic_handler_sup, start_link, []},
%%        Restart,
%%        Shutdown,
%%        Type,
%%        [statistic_handler_sup]},/home/hieubt11/SGW_CP/Code_/vDIAM_GW

%%    Node_Check_Sup = {node_check_sup, {node_check_sup, start_link, []},
%%        Restart,
%%        Shutdown,
%%        Type,
%%        [node_check_sup]},

%%    API_Handler_Sup = {api_handler_sup, {api_handler_sup, start_link, []},
%%        Restart,
%%        Shutdown,
%%        Type,
%%        [api_handler_sup]},

%%    PMIPSup = {pmip, {pmip_sup, start_link, []},
%%        permanent,
%%        5000,
%%        supervisor, [pmip_sup]},
    %% List process
    ?LOG_INFO("Start Diam_Pool_Sup, Imp_Pool_Sup, Imp_Handler_Sup, Node_Check_Sup, API_Handler_Sup, Statistic_Handler_Sup",[]),

    %% Child is also supervisor
%%    LstProcessChild = [Diam_Pool_Sup, Imp_Pool_Sup, Imp_Handler_Sup, Node_Check_Sup, API_Handler_Sup],
    LstProcessChild = [Diam_Pool_Sup],
    {ok, {SupFlags, LstProcessChild}}.
