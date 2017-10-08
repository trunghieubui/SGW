-module(vdiam_gw_app).
-behaviour(application).
-include("logger.hrl").
-include("constant.hrl").

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    try
        register(vdiam_gw_app, self()),

        %%	Set log level
        lager:set_loglevel(lager_console_backend, debug),

        %% Read config file
        ?LOG_INFO("Reading configuration file",[]),
        case config_util:load_config() of
            ok->
                %% Create & load default ETS database
                ?LOG_INFO("Create table and load default data to ETS database",[]),
                db_util:db_ets_create(),

                %% Start Diameter gx & gy
                diam_start:diameter_gx_start(),
                diam_start:diameter_gy_start(),

                %% 	Start vDIAM_GW supervisor
                ?LOG_INFO("Start vDIAM_GW supervisor",[]),
                vdiam_gw_sup:start_link();
            _->
                ?LOG_ERROR("Cannot load config, so stop vdiam_gw_app application",[]),
                stop(1)
        end
    catch
        _:Err->
            ?LOG_ERROR("Exception in start vdiam_gw_app: ~p ~p",[Err, erlang:get_stacktrace()])
    end.

stop(_State) ->
    ok.
