-module(config_util).
-include("logger.hrl").
-include("constant.hrl").

-compile(export_all).

get_config_value(Para) ->
    db_util:lookup(?TBL_DIAM_GW_CONFIG, Para).

load_config() ->
    try
        db_util:new(?TBL_DIAM_GW_CONFIG),

        %% Get config server from init argument
        case init:get_argument(nm_server) of
            {ok, [[StrNMServer]]} ->
                NMServer = list_to_atom(StrNMServer),
                ?LOG_INFO("NM_SERVER=~p", [NMServer]),

                case gen_server:call({nm_api_handler, NMServer}, {get_config, node()}) of
                    not_ok->
                        ?LOG_ERROR("Can not find any config in ~p, please config it, so read_config_from_file diam_gw.config",[NMServer]),
                        read_config_from_file();
                    ListConf->
                        ?LOG_DEBUG("ResultConf=~p", [ListConf]),
                        if
                            ListConf =:= ?NULL orelse ListConf =:= []->
                                ?LOG_ERROR("Can not find any config!!! So read_config_from_file diam_gw.config", []),
                                read_config_from_file();
                            true->
                                %% Insert into DB ETS
                                lists:foreach(fun(Conf) ->
                                    {ConfKey, ConfValue} = Conf,
                                    ?LOG_DEBUG("Conf=~p",[Conf]),
                                    db_util:insert(?TBL_DIAM_GW_CONFIG,{ConfKey, ConfValue})

                                              end, ListConf),
                                ok
                        end
                end;
            _ ->
                ?LOG_ERROR("Can not find NM_SERVER in vm.args, so read_config_from_file diam_gw.config", []),
                read_config_from_file()
        end
    catch
        _:Err ->
            ?LOG_ERROR("Exception in load_config: ~p ~p, so read_config_from_file diam_gw.config", [Err, erlang:get_stacktrace()]),
            read_config_from_file()
    end.

read_config_from_file()->
    {ok, ListConf} = file:consult("../../priv/diam_gw.config"),

    if
        ListConf =:= ?NULL orelse ListConf =:= []->
            ?LOG_ERROR("Can not find any config!!!", []),
            not_ok;
        true->
            %% Insert into DB ETS
            lists:foreach(fun(Conf) ->
                {ConfKey, ConfValue} = Conf,
                ?LOG_DEBUG("Conf=~p",[Conf]),
                db_util:insert(?TBL_DIAM_GW_CONFIG,{ConfKey, ConfValue})
                          end, ListConf),
            ok
    end.

