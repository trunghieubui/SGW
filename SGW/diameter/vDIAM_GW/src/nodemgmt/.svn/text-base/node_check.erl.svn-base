%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2017 11:09 AM
%%%-------------------------------------------------------------------
-module(node_check).
-author("thanhdoan").
-include("constant.hrl").
-include("define_kpi.hrl").
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
    gen_server:start_link({local, node_check}, ?MODULE, [], []).

stop() ->
    gen_server:cast(?MODULE, stop).

init([]) ->
    erlang:send(self(), check_heartbeat),
    {ok, #state{}}.

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast(_Request, State) ->
    {noreply, State}.

%% Check timeout if not receive Echo Msg
handle_info(check_heartbeat, State) ->
    try
        ListResult = ets:match(?TBL_DIAM_GW_NODE, '$1'),
        lists:foreach(fun(NodeInfo)->
               [{Key, Value}] = NodeInfo,

               %% Check lastTime
                case timer:now_diff(os:timestamp(), Value) / 1000 > ?DIAMETER_TIMEOUT of
                    true ->
                        ?LOG_ERROR("Timeout with PGWPCP=~p, delete from ~p", [Key, ?TBL_DIAM_GW_NODE]),

                        %% Delete from ETS
                        db_util:delete(?TBL_DIAM_GW_NODE, Key);
                    _ ->
                        do_nothing
                end
          end, ListResult),

        ListResult2 = ets:match(?TBL_DIAM_GW_MAPPING_NODE, '$1'),
        lists:foreach(fun(MappingInfo)->
            [{Key, Value}] = MappingInfo,

            {_, LastTime} = Value,

            %% Check lastTime
            case timer:now_diff(os:timestamp(), LastTime) / 1000 > ?DIAMETER_TIMEOUT of
                true ->
                    %% Delete from ETS
                    db_util:delete(?TBL_DIAM_GW_MAPPING_NODE, Key);
                _ ->
                    do_nothing
            end
                      end, ListResult2)
    catch
        _:Err ->
            alarm_util:send_alarm(?ALARM_ID_EXCEPTION, ?ALARM_LEVEL_CRITICAL, "Exception in check_heartbeat of node_check"),
            ?LOG_ERROR("Exception: ~p ~p", [Err, erlang:get_stacktrace()])
    end,

    %% Scheduler
    erlang:send_after(?IMP_RECHECK, self(), check_heartbeat),

    %% Return
    {noreply, State};

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

