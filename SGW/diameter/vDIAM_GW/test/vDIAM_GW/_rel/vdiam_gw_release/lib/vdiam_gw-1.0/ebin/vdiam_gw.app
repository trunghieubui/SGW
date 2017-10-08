{application, vdiam_gw, [
	{description, "Viettel Diameter Gateway"},
	{vsn, "1.0"},
	{modules, ['alarm_util','api_handler','api_handler_sup','common_util','config_util','db_util','diam_callback','diam_handler_in','diam_pool_sup','diam_start','diam_sup','imp_handler','imp_handler_in','imp_handler_sup','imp_pool_sup','imp_sup','node_check','node_check_sup','statistic_handler','statistic_handler_sup','vdiam_gw_app','vdiam_gw_sup']},
	{registered, [vdiam_gw_sup]},
	{applications, [kernel,stdlib,diameter,lager]},
	{mod, {vdiam_gw_app, []}}
]}.