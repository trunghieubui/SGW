%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2017 11:16 AM
%%%-------------------------------------------------------------------
-module(db_util).
-author("thanhdoan").
-include("logger.hrl").
-include("constant.hrl").

%% API
-export([]).
-compile(export_all).

new(TableName) ->
    ets:new(TableName, [named_table, public, {keypos, 1}, {write_concurrency, true}, {read_concurrency, true}]).

delete(TableName, Key) ->
    ets:delete(TableName, Key).

insert(TableName, {Key, Value}) ->
    ets:insert(TableName, [{Key, Value}]);
insert(TableName, [{Key, Value}]) ->
    ets:insert(TableName, [{Key, Value}]).

lookup(TableName, Key) ->
    Tuple = ets:lookup(TableName, Key),
    if
        Tuple == [] ->
            [];
        true ->
            element(2, lists:nth(1, Tuple))
    end.

db_ets_create() ->
    db_util:new(?TBL_DIAM_GW_POOL_SUP),
    db_util:new(?TBL_DIAM_GW_NODE),
    db_util:new(?TBL_DIAM_GW_MAPPING_NODE),
    db_util:new(?TBL_DIAM_GW_ROUND_ROBIN),

    %% Load data default for PoolSup
    db_util:insert(?TBL_DIAM_GW_POOL_SUP, {pool_diam, 0}),
    db_util:insert(?TBL_DIAM_GW_POOL_SUP, {pool_imp, 0}),
    db_util:insert(?TBL_DIAM_GW_ROUND_ROBIN, {round_robin, 0}).