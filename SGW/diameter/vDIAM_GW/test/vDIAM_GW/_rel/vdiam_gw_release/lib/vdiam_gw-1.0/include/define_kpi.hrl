-ifndef(__DEFINE_KPI).
-define(__DEFINE_KPI, true).

%% Define for Alarm Id
-define(ALARM_ID_EXCEPTION, 1001).
-define(ALARM_ID_RECV_INVALID_MSG, 1002).
-define(ALARM_ID_TIMEOUT, 1003).
-define(ALARM_ID_APN_NOT_FOUND, 1004).
-define(ALARM_ID_ALLOCATE_IP_FAIL, 1005).
-define(ALARM_ID_SEND_TO_SGW_FAIL, 1006).
-define(ALARM_ID_SEND_TO_DP_FAIL, 1007).
-define(ALARM_ID_SEND_TO_AAA_FAIL, 1008).
-define(ALARM_ID_START_PROCESS_FAIL, 1009).
-define(ALARM_ID_DECODE_MSG_FAIL, 1010).
-define(ALARM_ID_BEARER_CTX_NOT_FOUND, 1011).
-define(ALARM_ID_CC_REQ_NBR_NOT_FOUND, 1012).
-define(ALARM_ID_DP_RETURN_ERROR, 1013).
-define(ALARM_ID_OPEN_CDR_RECORD_FAIL,1014).
-define(ALARM_ID_UPDATE_CDR_RECORD_FAIL,1015).
-define(ALARM_ID_CLOSE_CDR_RECORD_FAIL,1016).
-define(ALARM_ID_GEN_ANS1_FAIL,1017).
-define(ALARM_ID_CDF_LOST_CONN_CGF,1018).
-define(ALARM_ID_SEND_TO_PGW_FAIL, 1019).

%% Define Alarm Level
-define(ALARM_LEVEL_CRITICAL, 0).
-define(ALARM_LEVEL_MAJOR, 1).
-define(ALARM_LEVEL_MINOR, 2).
-define(ALARM_LEVEL_WARNING, 3).
-define(ALARM_LEVEL_NORMAL, 4).


-endif.