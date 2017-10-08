%%%-------------------------------------------------------------------
%%% @author vtk.user-tbl
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Oct 2017 2:50 PM
%%%-------------------------------------------------------------------
-module(pmip_sup).
%%-include("db_records.hrl").
%%-include("constant.hrl").
-behaviour(supervisor).
%% ====================================================================
%% ******************API functions & Include headers*******************
%% ====================================================================
-export([start_link/0]).
-export([init/1]).
%%-define(SERVER, ?MODULE).

%% start_link/0
%% ====================================================================
%% @doc Start UDP Process Supervisor
%%-spec start_link() -> Result when
%%	Result :: {ok,pid()} | ignore | {error,Error},
%%	Error :: {already_started, pid()} | term().
%% ====================================================================
start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).
%%%.
%%%   CALLBACKS
init([]) ->
    PmipReceiveHandle = {gtpmhandle, {pmip_receive_handle, start_link, []}, permanent, 5000, worker, [pmip_receive_handle]},
%%    PmipPoolSup = {pool_sup, {pmip_pool_sup, start_link, []}, permanent, 5000, worker, [pmip_pool_sup]},
    {ok, {{one_for_one, 5, 10}, [PmipReceiveHandle]}}.
