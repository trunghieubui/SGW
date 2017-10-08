%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Mar 2017 2:51 PM
%%%-------------------------------------------------------------------
-ifndef(CONSTANT_FILE).
-define(CONSTANT_FILE, 1).

-define(APP_NAME, vdiam_gw).
-define(TBL_DIAM_GW_CONFIG, tbl_diam_gw_config).
-define(TBL_DIAM_GW_POOL_SUP, tbl_diam_gw_pool_sup).
-define(TBL_DIAM_GW_NODE, tbl_diam_gw_node).
-define(TBL_DIAM_GW_ROUND_ROBIN, tbl_diam_gw_round_robin).
-define(TBL_DIAM_GW_MAPPING_NODE, tbl_diam_gw_mapping_node).

%% For diameter
-define(DIAM_APP_ID_GX, 16777238).
-define(DIAM_APP_ID_GY, 4).
-define(DIAM_OCS_SERVICE_CTX_ID, "version1.ccg@viettel.com.vn").
-define(DIAM_VENDOR_ID, 10415).
-define(DIAM_DICT_GX, diameter_gen_base_gx).
-define(DIAM_DICT_GY, diameter_gen_base_gy).
-define(DIAM_CALLBACK, diam_callback).
-define(DIAM_HANDLER_GX, diam_handler_gx).
-define(DIAM_HANDLER_GY, diam_handler_gy).
-define(DIAM_SESSION, diam_session).
-define(DIAM_PRODUCT_NAME, "vpgwcp").

%% Define byPass
-define(BY_PASS_PCRF, 0).
-define(BY_PASS_OCS, 1).

%% For null
-define(NULL, undefined).

%% For Timeout
-define(DIAMETER_TIMEOUT, 60000).
-define(IMP_RECHECK, 10000).
-define(STAT_RECHECK, 10000).

%% For supervisor pool
-define(TOTAL_SUPERVISOR_POOL_DIAM, 1).
-define(TOTAL_SUPERVISOR_POOL_IMP, 8).

-endif.
