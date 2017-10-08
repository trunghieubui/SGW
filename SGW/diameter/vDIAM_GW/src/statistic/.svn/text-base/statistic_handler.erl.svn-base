%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2017 11:09 AM
%%%-------------------------------------------------------------------
-module(statistic_handler).
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
    total_data_in,
    total_data_out,
    last_total_in,
    last_total_out
}).

start_link() ->
    gen_server:start_link({local, statistic_handler}, ?MODULE, [], []).

stop() ->
    gen_server:cast(?MODULE, stop).

init([]) ->
    erlang:send(self(), stat),
    {ok, #state{
        total_data_in = 0,
        total_data_out = 0,
        last_total_in = 0,
        last_total_out = 0
    }}.

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast(increase_in, State) ->
    {noreply, State#state{
        total_data_in = State#state.total_data_in + 1
    }};

handle_cast(increase_out, State) ->
    {noreply, State#state{
        total_data_out = State#state.total_data_out + 1
    }};

handle_cast(_Request, State) ->
    {noreply, State}.

handle_info(stat, State) ->
    try
        Time = ?STAT_RECHECK / 1000,
        TPS_IN = round((State#state.total_data_in - State#state.last_total_in) / Time),
        TPS_OUT = round((State#state.total_data_out - State#state.last_total_out) / Time),
        io:format("TOTAL_IN = ~p, TOTAL_OUT = ~p, TPS_IN = ~p tps, TPS_OUT = ~p tps ~n",[State#state.total_data_in, State#state.total_data_out, TPS_IN, TPS_OUT]),

        %% Scheduler
        erlang:send_after(?STAT_RECHECK, self(), stat),

        %% Return
        {noreply, State#state{
            last_total_in = State#state.total_data_in,
            last_total_out = State#state.total_data_out
        }}
    catch
        _:Err ->
            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in stat of statistic_handler"),
            ?LOG_ERROR("Exception: ~p ~p", [Err, erlang:get_stacktrace()]),
            %% Scheduler
            erlang:send_after(?STAT_RECHECK, self(), stat),

            %% Return
            {noreply, State}
    end;

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

