%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Jun 2017 8:14 AM
%%%-------------------------------------------------------------------
-module(alarm_util).
-include("constant.hrl").
-include("define_kpi.hrl").
-include("logger.hrl").
-author("thanhdoan").

%% API
-export([send_alarm/3, cancel_alarm/1]).

%% Send alarm to OAM Server
send_alarm(AlarmId, Severity, AlarmMsg)->
    OamServer = config_util:get_config_value(oam_server),

    ?LOG_WARNING("Send AlarmId=~p, Severity=~p, AlarmMsg=~p to ~p",[AlarmId, Severity, AlarmMsg, OamServer]),
    gen_server:cast({nm_alarm_handler, OamServer}, {raise_alarm_from_node, {?APP_NAME, AlarmId, Severity, AlarmMsg}}).

%% Cancel alarm to OAM Server
cancel_alarm(AlarmId)->
    OamServer = config_util:get_config_value(oam_server),

    ?LOG_WARNING("Cancel AlarmId=~p to ~p",[AlarmId, OamServer]),
    gen_server:cast({nm_alarm_handler, OamServer}, {raise_alarm_from_node, {?APP_NAME, AlarmId, ?ALARM_LEVEL_NORMAL, "ALARM_LEVEL_NORMAL"}}).