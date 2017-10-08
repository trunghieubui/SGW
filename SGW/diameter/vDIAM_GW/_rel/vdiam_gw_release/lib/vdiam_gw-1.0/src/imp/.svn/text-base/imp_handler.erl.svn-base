%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2017 11:09 AM
%%%-------------------------------------------------------------------
-module(imp_handler).
-author("thanhdoan").
-include("constant.hrl").
-include("logger.hrl").

-behaviour(gen_server).

%% API
-export([start_link/0, stop/0]).
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
    gen_server:start_link({local, imp_handler}, ?MODULE, [], []).

stop() ->
    gen_server:cast(?MODULE, stop).

init([]) ->
    {ok, #state{}}.

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast({imp_normal_incoming, PGWNode, DiameterType, Msg}, State) ->
    imp_sup:send_msg_imp_incoming({imp_normal_incoming, PGWNode, DiameterType, Msg}),
    {noreply, State};

handle_cast({imp_heartbeat_incoming, PGWNode}, State) ->
    imp_sup:send_msg_imp_incoming({imp_heartbeat_incoming, PGWNode}),
    {noreply, State};

handle_cast(_Request, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

