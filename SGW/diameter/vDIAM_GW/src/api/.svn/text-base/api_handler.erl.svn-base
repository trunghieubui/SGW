%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2017 11:09 AM
%%%-------------------------------------------------------------------
-module(api_handler).
-author("thanhdoan").
-include("constant.hrl").
-include("logger.hrl").
-include("define_kpi.hrl").

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

-record(state, {
}).

start_link() ->
    gen_server:start_link({local, api_handler}, ?MODULE, [], []).

stop() ->
    gen_server:cast(?MODULE, stop).

init([]) ->
    {ok, #state{
    }}.

handle_call(Request, _From, State) ->
    ?LOG_ERROR("Wrong Request = ~p", Request),
    {reply, ok, State}.

handle_cast({add_config, ConfigKey, ConfigValue}, State) ->
    try
        %% Insert into DB
        ?LOG_WARNING("INSERT config with Key=~p,Value=~p",[ConfigKey, ConfigValue]),
        db_util:insert(?TBL_DIAM_GW_CONFIG, {ConfigKey, ConfigValue})
    catch
        _:Err ->
            ?LOG_ERROR("Exception in add_config: ~p ~p", [Err, erlang:get_stacktrace()])
    end,

    {noreply, State};

handle_cast({del_config, ConfigKey}, State) ->
    try
        %% Remove from DB
        ?LOG_WARNING("DELETE config with Key=~p",[ConfigKey]),
        db_util:delete(?TBL_DIAM_GW_CONFIG, ConfigKey)
    catch
        _:Err ->
            ?LOG_ERROR("Exception in del_config: ~p ~p", [Err, erlang:get_stacktrace()])
    end,

    {noreply, State};

handle_cast(Request, State) ->
    ?LOG_ERROR("Wrong Request = ~p", Request),
    {noreply, State}.

handle_info(Info, State) ->
    ?LOG_ERROR("Wrong Info = ~p", [Info]),
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

