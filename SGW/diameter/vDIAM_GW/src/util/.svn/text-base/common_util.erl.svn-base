%%%-------------------------------------------------------------------
%%% @author thanhdoan
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Jul 2017 11:14 AM
%%%-------------------------------------------------------------------
-module(common_util).
-author("thanhdoan").

%% API
-export([]).
-compile(export_all).

ip_to_list(IP) ->
    {A, B, C, D} = IP,
    [A] ++ [B] ++ [C] ++ [D].

bin_to_ip(Bin) ->
    <<A:8, B:8, C:8, D:8>> = Bin,
    {A, B, C, D}.

ip_to_string(IP) ->
    {A, B, C, D} = IP,
    string:join([integer_to_list(A), integer_to_list(B), integer_to_list(C), integer_to_list(D)], ".").