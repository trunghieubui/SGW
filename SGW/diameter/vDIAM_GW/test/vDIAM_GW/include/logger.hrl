-ifndef(LOGGER_FILE).
-define(LOGGER_FILE, 1).

-compile([{parse_transform, lager_transform}]).

-define(BASE_DEBUG(Format, Args),
	lager:debug(Format, Args)).

-define(BASE_INFO_MSG(Format, Args),
	lager:info(Format, Args)).

-define(BASE_NOTICE_MSG(Format, Args),
	lager:notice(Format, Args)).

-define(BASE_WARNING_MSG(Format, Args),
	lager:warning(Format, Args)).

-define(BASE_ERROR_MSG(Format, Args),
	lager:error(Format, Args)).

-define(BASE_CRITICAL_MSG(Format, Args),
	lager:critical(Format, Args)).

%% define log debug for DIAM_GW
-define(LOG_DEBUG(Str, Value), ?BASE_DEBUG(string:concat("[DIAM_GW] ~p:~p- ", Str),
    lists:append([?MODULE,?LINE],Value))).
-define(LOG_NOTICE(Str, Value), ?BASE_NOTICE_MSG(string:concat("[DIAM_GW] ~p:~p- ", Str),
    lists:append([?MODULE,?LINE],Value))).
-define(LOG_ERROR(Str, Value), ?BASE_ERROR_MSG(string:concat("[DIAM_GW] ~p:~p- ", Str),
    lists:append([?MODULE,?LINE],Value))).
-define(LOG_WARNING(Str, Value), ?BASE_WARNING_MSG(string:concat("[DIAM_GW] ~p:~p- ", Str),
    lists:append([?MODULE,?LINE],Value))).
-define(LOG_INFO(Str, Value), ?BASE_INFO_MSG(string:concat("[DIAM_GW] ~p:~p- ", Str),
    lists:append([?MODULE,?LINE],Value))).
-define(LOG_CRITICAL(Str, Value), ?BASE_CRITICAL_MSG(string:concat("[DIAM_GW] ~p:~p- ", Str),
    lists:append([?MODULE,?LINE],Value))).

-endif.