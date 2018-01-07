%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2010-2015. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%
%%

%%
%% This file contains code that's included by encode/decode modules
%% generated by diameter_codegen.erl. This code does most of the work, the
%% generated code being kept simple.
%%

-define(THROW(T), throw({?MODULE, T})).

%% Tag common to generated dictionaries.
-define(TAG, diameter_gen).

%% Key to a value in the process dictionary that determines whether or
%% not an unrecognized AVP setting the M-bit should be regarded as an
%% error or not. See is_strict/0. This is only used to relax M-bit
%% interpretation inside Grouped AVPs not setting the M-bit. The
%% service_opt() strict_mbit can be used to disable the check
%% globally.
-define(STRICT_KEY, strict).

%% Key that says whether or not we should do a best-effort decode
%% within Failed-AVP.
-define(FAILED_KEY, failed).

-type parent_name()   :: atom().  %% parent = Message or AVP
-type parent_record() :: tuple(). %%
-type avp_name()   :: atom().
-type avp_record() :: tuple().
-type avp_values() :: [{avp_name(), term()}].

-type non_grouped_avp() :: #diameter_avp{}.
-type grouped_avp() :: nonempty_improper_list(#diameter_avp{}, [avp()]).
-type avp() :: non_grouped_avp() | grouped_avp().

%% Use a (hopefully) unique key when manipulating the process
%% dictionary.

putr(K,V) ->
    put({?TAG, K}, V).

getr(K) ->
    case get({?TAG, K}) of
        undefined ->
            V = erase({?MODULE, K}),  %% written in old code
            V == undefined orelse putr(K,V),
            V;
        V ->
            V
    end.

eraser(K) ->
    erase({?TAG, K}).

%% ---------------------------------------------------------------------------
%% # encode_avps/2
%% ---------------------------------------------------------------------------

-spec encode_avps(parent_name(), parent_record() | avp_values())
   -> binary()
    | no_return().

encode_avps(Name, Vals)
  when is_list(Vals) ->
    encode_avps(Name, '#set-'(Vals, newrec(Name)));

encode_avps(Name, Rec) ->
    try
        list_to_binary(encode(Name, Rec))
    catch
        throw: {?MODULE, Reason} ->
			io:format("[Error]****************************************Detail Reason: ~w~n", [Reason]),
            diameter_lib:log({encode, error},
                             ?MODULE,
                             ?LINE,
                             {Reason, Name, Rec}),
            erlang:error(list_to_tuple(Reason ++ [Name]));
        error: Reason ->
			io:format("[Error]****************************************Detail Reason: ~w~n", [Reason]),
            Stack = erlang:get_stacktrace(),
            diameter_lib:log({encode, failure},
                             ?MODULE,
                             ?LINE,
                             {Reason, Name, Rec, Stack}),
            erlang:error({encode_failure, Reason, Name, Stack})
    end.

%% encode/2

encode(Name, Rec) ->
    lists:flatmap(fun(A) -> encode(Name, A, '#get-'(A, Rec)) end,
                  '#info-'(element(1, Rec), fields)).

%% encode/3

encode(Name, AvpName, Values) ->
    e(Name, AvpName, avp_arity(Name, AvpName), Values).

%% e/4

e(_, AvpName, 1, undefined) ->
    ?THROW([mandatory_avp_missing, AvpName]);

e(Name, AvpName, 1, Value) ->
    e(Name, AvpName, [Value]);

e(_, _, {0,_}, []) ->
    [];

e(_, AvpName, _, T)
  when not is_list(T) ->
    ?THROW([repeated_avp_as_non_list, AvpName, T]);

e(_, AvpName, {Min, _}, L)
  when length(L) < Min ->
    ?THROW([repeated_avp_insufficient_arity, AvpName, Min, L]);

e(_, AvpName, {_, Max}, L)
  when Max < length(L) ->
    ?THROW([repeated_avp_excessive_arity, AvpName, Max, L]);

e(Name, AvpName, _, Values) ->
    e(Name, AvpName, Values).

%% e/3

e(Name, 'AVP', Values) ->
    [pack_AVP(Name, A) || A <- Values];

e(_, AvpName, Values) ->
    e(AvpName, Values).

%% e/2

e(AvpName, Values) ->
    H = avp_header(AvpName),
    [diameter_codec:pack_avp(H, avp(encode, V, AvpName)) || V <- Values].

%% pack_AVP/2

%% No value: assume AVP data is already encoded. The normal case will
%% be when this is passed back from #diameter_packet.errors as a
%% consequence of a failed decode. Any AVP can be encoded this way
%% however, which side-steps any arity checks for known AVP's and
%% could potentially encode something unfortunate.
pack_AVP(_, #diameter_avp{value = undefined} = A) ->
    diameter_codec:pack_avp(A);

%% Missing name for value encode.
pack_AVP(_, #diameter_avp{name = N, value = V})
  when N == undefined;
       N == 'AVP' ->
    ?THROW([value_with_nameless_avp, N, V]);

%% Or not. Ensure that 'AVP' is the appropriate field. Note that if we
%% don't know this AVP at all then the encode will fail.
pack_AVP(Name, #diameter_avp{name = AvpName,
                             value = Data}) ->
    0 == avp_arity(Name, AvpName)
        orelse ?THROW([known_avp_as_AVP, Name, AvpName, Data]),
    e(AvpName, [Data]).

%% ---------------------------------------------------------------------------
%% # decode_avps/2
%% ---------------------------------------------------------------------------

-spec decode_avps(parent_name(), [#diameter_avp{}])
   -> {parent_record(), [avp()], Failed}
 when Failed :: [{5000..5999, #diameter_avp{}}].

decode_avps(Name, Recs) ->
    {Avps, {Rec, Failed}}
        = lists:foldl(fun(T,A) -> decode(Name, T, A) end,
                      {[], {newrec(Name), []}},
                      Recs),
%%added by tulm4
    if 
		Failed /= [] ->
		NoE = [], 	
	    [TF|_] = Failed,
	    CoF = element(1, TF),
%%  	    util:log("DB33:********~w * ~w ~n", [TF, CoF]),
		   if 
		   (CoF =:= 5008) orelse (CoF =:= 5001) orelse (CoF =:= 5009) -> {Rec, Avps, NoE ++ missing(Rec, Name, NoE)};
	       true -> {Rec, Avps, Failed ++ missing(Rec, Name, Failed)}
	       end;
	    true -> {Rec, Avps, Failed ++ missing(Rec, Name, Failed)}
	end.
    
%%     {Rec, Avps, Failed ++ missing(Rec, Name, Failed)}.

%% Append 5005 errors so that errors are reported in the order
%% encountered. Failed-AVP should typically contain the first
%% encountered error accordg to the RFC.

newrec(Name) ->
    '#new-'(name2rec(Name)).

%% 3588:
%%
%%   DIAMETER_MISSING_AVP               5005
%%      The request did not contain an AVP that is required by the Command
%%      Code definition.  If this value is sent in the Result-Code AVP, a
%%      Failed-AVP AVP SHOULD be included in the message.  The Failed-AVP
%%      AVP MUST contain an example of the missing AVP complete with the
%%      Vendor-Id if applicable.  The value field of the missing AVP
%%      should be of correct minimum length and contain zeros.

missing(Rec, Name, Failed) ->
    Avps = lists:foldl(fun({_, #diameter_avp{code = C, vendor_id = V}}, A) ->
                               sets:add_element({C,V}, A)
                       end,
                       sets:new(),
                       Failed),
    [{5005, A} || F <- '#info-'(element(1, Rec), fields),
                  not has_arity(avp_arity(Name, F), '#get-'(F, Rec)),
                  #diameter_avp{code = C, vendor_id = V}
                      = A <- [empty_avp(F)],
                  not sets:is_element({C,V}, Avps)].

%% Maximum arities have already been checked in building the record.

has_arity({Min, _}, L) ->
    has_prefix(Min, L);
has_arity(N, V) ->
    N /= 1 orelse V /= undefined.

%% Compare a non-negative integer and the length of a list without
%% computing the length.
has_prefix(0, _) ->
    true;
has_prefix(_, []) ->
    false;
has_prefix(N, L) ->
    has_prefix(N-1, tl(L)).

%% empty_avp/1

empty_avp(Name) ->
    {Code, Flags, VId} = avp_header(Name),
    {Name, Type} = avp_name(Code, VId),
    #diameter_avp{name = Name,
                  code = Code,
                  vendor_id = VId,
                  is_mandatory = 0 /= (Flags band 2#01000000),
                  need_encryption = 0 /= (Flags band 2#00100000),
                  data = empty_value(Name),
                  type = Type}.

%% 3588, ch 7:
%%
%%   The Result-Code AVP describes the error that the Diameter node
%%   encountered in its processing.  In case there are multiple errors,
%%   the Diameter node MUST report only the first error it encountered
%%   (detected possibly in some implementation dependent order).  The
%%   specific errors that can be described by this AVP are described in
%%   the following section.

%% decode/3

decode(Name, #diameter_avp{code = Code, vendor_id = Vid} = Avp, Acc) ->
%%added by tulm4 
%% 	io:format("DB31:********~w ~w ~n", [Name, Code]),
%% 	case Code of
%% 		1619 -> nop;
%% 		_ -> decode(Name, avp_name(Code, Vid), Avp, Acc)
%% 	end.

    decode(Name, avp_name(Code, Vid), Avp, Acc).

%% decode/4

%% AVP is defined in the dictionary ...
decode(Name, {AvpName, Type}, Avp, Acc) ->
    d(Name, Avp#diameter_avp{name = AvpName, type = Type}, Acc);

%% ... or not.
decode(Name, 'AVP', Avp, Acc) ->
    decode_AVP(Name, Avp, Acc).

%% 6733, 4.4:
%%
%%   Receivers of a Grouped AVP that does not have the 'M' (mandatory)
%%   bit set and one or more of the encapsulated AVPs within the group
%%   has the 'M' (mandatory) bit set MAY simply be ignored if the
%%   Grouped AVP itself is unrecognized. The rule applies even if the
%%   encapsulated AVP with its 'M' (mandatory) bit set is further
%%   encapsulated within other sub-groups, i.e., other Grouped AVPs
%%   embedded within the Grouped AVP.
%%
%% The first sentence is slightly mangled, but take it to mean this:
%%
%%   An unrecognized AVP of type Grouped that does not set the 'M' bit
%%   MAY be ignored even if one of its encapsulated AVPs sets the 'M'
%%   bit.
%%
%% The text above is a change from RFC 3588, which instead says this:
%%
%%   Further, if any of the AVPs encapsulated within a Grouped AVP has
%%   the 'M' (mandatory) bit set, the Grouped AVP itself MUST also
%%   include the 'M' bit set.
%%
%% Both of these texts have problems. If the AVP is unknown then its
%% type is unknown since the type isn't sent over the wire, so the
%% 6733 text becomes a non-statement: don't know that the AVP not
%% setting the M-bit is of type Grouped, therefore can't know that its
%% data consists of encapsulated AVPs, therefore can't but ignore that
%% one of these might set the M-bit. It should be no worse if we know
%% the AVP to have type Grouped.
%%
%% Similarly, for the 3588 text: if we receive an AVP that doesn't set
%% the M-bit and don't know that the AVP has type Grouped then we
%% can't realize that its data contains an AVP that sets the M-bit, so
%% can't regard the AVP as erroneous on this account. Again, it should
%% be no worse if the type is known to be Grouped, but in this case
%% the RFC forces us to regard the AVP as erroneous. This is
%% inconsistent, and the 3588 text has never been enforced.
%%
%% So, if an AVP doesn't set the M-bit then we're free to ignore it,
%% regardless of the AVP's type. If we know the type to be Grouped
%% then we must ignore the M-bit on an encapsulated AVP. That means
%% packing such an encapsulated AVP into an 'AVP' field if need be,
%% not regarding the lack of a specific field as an error as is
%% otherwise the case. (The lack of an AVP-specific field being how we
%% defined the RFC's "unrecognized", which is slightly stronger than
%% "not defined".)

%% d/3

d(Name, Avp, Acc) ->
    #diameter_avp{name = AvpName,
                  data = Data,
                  type = Type,
                  is_mandatory = M}
        = Avp,

    %% Use the process dictionary is to keep track of whether or not
    %% to ignore an M-bit on an encapsulated AVP. Not ideal, but the
    %% alternative requires widespread changes to be able to pass the
    %% value around through the entire decode. The solution here is
    %% simple in comparison, both to implement and to understand.

    Strict = relax(Type, M),

    %% Use the process dictionary again to keep track of whether we're
    %% decoding within Failed-AVP and should ignore decode errors
    %% altogether.

    Failed = relax(Name),  %% Not AvpName or else a failed Failed-AVP
                           %% decode is packed into 'AVP'.
    Mod = dict(Failed),    %% Dictionary to decode in.

    %% On decode, a Grouped AVP is represented as a #diameter_avp{}
    %% list with AVP as head and component AVPs as tail. On encode,
    %% data can be a list of component AVPs.

    try Mod:avp(decode, Data, AvpName) of
        V ->
            {Avps, T} = Acc,
            {H, A} = ungroup(V, Avp),
            {[H | Avps], pack_avp(Name, A, T)}
    catch
        throw: {?TAG, {grouped, Error, ComponentAvps}} ->
            g(is_failed(), Error, Name, trim(Avp), Acc, ComponentAvps);
        error: Reason ->
            d(is_failed(), Reason, Name, trim(Avp), Acc)
    after
        reset(?STRICT_KEY, Strict),
        reset(?FAILED_KEY, Failed)
    end.

%% trim/1
%%
%% Remove any extra bit that was added in diameter_codec to induce a
%% 5014 error.

trim(#diameter_avp{data = <<0:1, Bin/binary>>} = Avp) ->
    Avp#diameter_avp{data = Bin};

trim(Avps)
  when is_list(Avps) ->
    lists:map(fun trim/1, Avps);

trim(Avp) ->
    Avp.

%% dict/1
%%
%% Retrieve the dictionary for the best-effort decode of Failed-AVP,
%% as put by diameter_codec:decode/2. See that function for the
%% explanation.

dict(true) ->
    case get({diameter_codec, dictionary}) of
        undefined ->
            ?MODULE;
        Mod ->
            Mod
    end;

dict(_) ->
    ?MODULE.

%% g/5

%% Ignore decode errors within Failed-AVP (best-effort) ...
g(true, [_Error | Rec], Name, Avp, Acc, _ComponentAvps) ->
    decode_AVP(Name, Avp#diameter_avp{value = Rec}, Acc);
g(true, _Error, Name, Avp, Acc, _ComponentAvps) ->
    decode_AVP(Name, Avp, Acc);

%% ... or not.
g(false, [Error | _Rec], _Name, Avp, Acc, ComponentAvps) ->
    g(Error, Avp, Acc, ComponentAvps);
g(false, Error, _Name, Avp, Acc, ComponentAvps) ->
    g(Error, Avp, Acc, ComponentAvps).

%% g/4

g({RC, ErrorData}, Avp, Acc, ComponentAvps) ->
    {Avps, {Rec, Errors}} = Acc,
    E = Avp#diameter_avp{data = [ErrorData]},
    {[[Avp | trim(ComponentAvps)] | Avps], {Rec, [{RC, E} | Errors]}}.

%% d/5

%% Ignore a decode error within Failed-AVP ...
d(true, _, Name, Avp, Acc) ->
    decode_AVP(Name, Avp, Acc);

%% ... or not. Failures here won't be visible since they're a "normal"
%% occurrence if the peer sends a faulty AVP that we need to respond
%% sensibly to. Log the occurence for traceability, but the peer will
%% also receive info in the resulting answer message.
d(false, Reason, Name, Avp, {Avps, Acc}) ->
    Stack = diameter_lib:get_stacktrace(),
    diameter_lib:log(decode_error,
                     ?MODULE,
                     ?LINE,
                     {Name, Avp#diameter_avp.name, Stack}),
    {Rec, Failed} = Acc,
    {[Avp|Avps], {Rec, [rc(Reason, Avp) | Failed]}}.

%% relax/2

%% Set false in the process dictionary as soon as we see a Grouped AVP
%% that doesn't set the M-bit, so that is_strict() can say whether or
%% not to ignore the M-bit on an encapsulated AVP.
relax('Grouped', M) ->
    case getr(?STRICT_KEY) of
        undefined when not M ->
            putr(?STRICT_KEY, M);
        _ ->
            false
    end;
relax(_, _) ->
    false.

is_strict() ->
    diameter_codec:getopt(strict_mbit)
        andalso false /= getr(?STRICT_KEY).

%% relax/1
%%
%% Set true in the process dictionary as soon as we see Failed-AVP.
%% Matching on 'Failed-AVP' assumes that this is the RFC AVP.
%% Strictly, this doesn't need to be the case.

relax('Failed-AVP') ->
    putr(?FAILED_KEY, true);

relax(_) ->
    is_failed().

%% is_failed/0
%%
%% Is the AVP currently being decoded nested within Failed-AVP? Note
%% that this is only true when Failed-AVP is the parent. In
%% particular, it's not true when Failed-AVP itself is being decoded
%% (unless nested).

is_failed() ->
    true == getr(?FAILED_KEY).

%% is_failed/1

is_failed(Name) ->
    'Failed-AVP' == Name orelse is_failed().

%% reset/2

reset(Key, undefined) ->
    eraser(Key);
reset(_, _) ->
    ok.

%% decode_AVP/3
%%
%% Don't know this AVP: see if it can be packed in an 'AVP' field
%% undecoded. Note that the type field is 'undefined' in this case.

decode_AVP(Name, Avp, {Avps, Acc}) ->
    {[trim(Avp) | Avps], pack_AVP(Name, Avp, Acc)}.

%% rc/1

%% diameter_types will raise an error of this form to communicate
%% DIAMETER_INVALID_AVP_LENGTH (5014). A module specified to a
%% @custom_types tag in a dictionary file can also raise an error of
%% this form.
rc({'DIAMETER', 5014 = RC, _}, #diameter_avp{name = AvpName} = Avp) ->
    {RC, Avp#diameter_avp{data = empty_value(AvpName)}};

%% 3588:
%%
%%   DIAMETER_INVALID_AVP_VALUE         5004
%%      The request contained an AVP with an invalid value in its data
%%      portion.  A Diameter message indicating this error MUST include
%%      the offending AVPs within a Failed-AVP AVP.
rc(_, Avp) ->
    {5004, Avp}.

%% ungroup/2

-spec ungroup(term(), #diameter_avp{})
   -> {avp(), #diameter_avp{}}.

%% The decoded value in the Grouped case is as returned by grouped_avp/3:
%% a record and a list of component AVP's.
ungroup(V, #diameter_avp{type = 'Grouped'} = Avp) ->
    {Rec, As} = V,
    A = Avp#diameter_avp{value = Rec},
    {[A|As], A};

%% Otherwise it's just a plain value.
ungroup(V, #diameter_avp{} = Avp) ->
    A = Avp#diameter_avp{value = V},
    {A, A}.

%% pack_avp/3

pack_avp(Name, #diameter_avp{name = AvpName} = Avp, Acc) ->
    pack_avp(Name, avp_arity(Name, AvpName), Avp, Acc).

%% pack_avp/4

pack_avp(Name, 0, Avp, Acc) ->
    pack_AVP(Name, Avp, Acc);

pack_avp(_, Arity, Avp, Acc) ->
    pack(Arity, Avp#diameter_avp.name, Avp, Acc).

%% pack_AVP/3

%% Length failure was induced because of a header/payload length
%% mismatch. The AVP Length is reset to match the received data if
%% this AVP is encoded in an answer message, since the length is
%% computed.
%%
%% Data is a truncated header if command_code = undefined, otherwise
%% payload bytes. The former is padded to the length of a header if
%% the AVP reaches an outgoing encode in diameter_codec.
%%
%% RFC 6733 says that an AVP returned with 5014 can contain a minimal
%% payload for the AVP's type, but in this case we don't know the
%% type.

pack_AVP(_, #diameter_avp{data = <<0:1, Data/binary>>} = Avp, Acc) ->
    {Rec, Failed} = Acc,
    {Rec, [{5014, Avp#diameter_avp{data = Data}} | Failed]};

pack_AVP(Name, #diameter_avp{is_mandatory = M, name = AvpName} = Avp, Acc) ->
    case pack_arity(Name, AvpName, M) of
        0 ->
            {Rec, Failed} = Acc,
            {Rec, [{if M -> 5001; true -> 5008 end, Avp} | Failed]};
        Arity ->
            pack(Arity, 'AVP', Avp, Acc)
    end.

%% Give Failed-AVP special treatment since (1) it'll contain any
%% unrecognized mandatory AVP's and (2) the RFC 3588 grammar failed to
%% allow for Failed-AVP in an answer-message.

pack_arity(Name, AvpName, M) ->

    %% Not testing just Name /= 'Failed-AVP' means we're changing the
    %% packing of AVPs nested within Failed-AVP, but the point of
    %% ignoring errors within Failed-AVP is to decode as much as
    %% possible, and failing because a mandatory AVP couldn't be
    %% packed into a dedicated field defeats that point. Note
    %% is_failed/1 since is_failed/0 will return false when packing
    %% 'AVP' within Failed-AVP.

    pack_arity(is_failed(Name)
                 orelse {Name, AvpName} == {'answer-message', 'Failed-AVP'}
                 orelse not M
                 orelse not is_strict(),
               Name).

pack_arity(true, Name) ->
    avp_arity(Name, 'AVP');

pack_arity(false, _) ->
    0.

%% 3588:
%%
%%   DIAMETER_AVP_UNSUPPORTED           5001
%%      The peer received a message that contained an AVP that is not
%%      recognized or supported and was marked with the Mandatory bit.  A
%%      Diameter message with this error MUST contain one or more Failed-
%%      AVP AVP containing the AVPs that caused the failure.
%%
%%   DIAMETER_AVP_NOT_ALLOWED           5008
%%      A message was received with an AVP that MUST NOT be present.  The
%%      Failed-AVP AVP MUST be included and contain a copy of the
%%      offending AVP.

%% pack/4

pack(Arity, FieldName, Avp, {Rec, _} = Acc) ->
    pack('#get-'(FieldName, Rec), Arity, FieldName, Avp, Acc).

%% pack/5

pack(undefined, 1, FieldName, Avp, Acc) ->
    p(FieldName, fun(V) -> V end, Avp, Acc);

%% 3588:
%%
%%   DIAMETER_AVP_OCCURS_TOO_MANY_TIMES 5009
%%      A message was received that included an AVP that appeared more
%%      often than permitted in the message definition.  The Failed-AVP
%%      AVP MUST be included and contain a copy of the first instance of
%%      the offending AVP that exceeded the maximum number of occurrences
%%

pack(_, 1, _, Avp, {Rec, Failed}) ->
    {Rec, [{5009, Avp} | Failed]};
pack(L, {_, Max}, FieldName, Avp, Acc) ->
    case '*' /= Max andalso has_prefix(Max, L) of
        true ->
            {Rec, Failed} = Acc,
            {Rec, [{5009, Avp} | Failed]};
        false ->
            p(FieldName, fun(V) -> [V|L] end, Avp, Acc)
    end.

%% p/4

p(F, Fun, Avp, {Rec, Failed}) ->
    {'#set-'({F, Fun(value(F, Avp))}, Rec), Failed}.

value('AVP', Avp) ->
    Avp;
value(_, Avp) ->
    Avp#diameter_avp.value.

%% ---------------------------------------------------------------------------
%% # grouped_avp/3
%% ---------------------------------------------------------------------------

-spec grouped_avp(decode, avp_name(), bitstring())
   -> {avp_record(), [avp()]};
                 (encode, avp_name(), avp_record() | avp_values())
   -> binary()
    | no_return().

%% Length error induced by diameter_codec:collect_avps/1: the AVP
%% length in the header was too short (insufficient for the extracted
%% header) or too long (past the end of the message). An empty payload
%% is sufficient according to the RFC text for 5014.
grouped_avp(decode, _Name, <<0:1, _/binary>>) ->
    throw({?TAG, {grouped, {5014, []}, []}});

grouped_avp(decode, Name, Data) ->
    grouped_decode(Name, diameter_codec:collect_avps(Data));

grouped_avp(encode, Name, Data) ->
    encode_avps(Name, Data).

%% grouped_decode/2
%%
%% Note that Grouped is the only AVP type that doesn't just return a
%% decoded value, also returning the list of component diameter_avp
%% records.

%% Length error in trailing component AVP.
grouped_decode(_Name, {Error, Acc}) ->
    {5014, Avp} = Error,
    throw({?TAG, {grouped, Error, [Avp | Acc]}});

%% 7.5.  Failed-AVP AVP

%%    In the case where the offending AVP is embedded within a Grouped AVP,
%%    the Failed-AVP MAY contain the grouped AVP, which in turn contains
%%    the single offending AVP.  The same method MAY be employed if the
%%    grouped AVP itself is embedded in yet another grouped AVP and so on.
%%    In this case, the Failed-AVP MAY contain the grouped AVP hierarchy up
%%    to the single offending AVP.  This enables the recipient to detect
%%    the location of the offending AVP when embedded in a group.

%% An error in decoding a component AVP throws the first fauly
%% component, which the catch in d/3 wraps in the Grouped AVP in
%% question. A partially decoded record is only used when ignoring
%% errors in Failed-AVP.
grouped_decode(Name, ComponentAvps) ->
    {Rec, Avps, Es} = decode_avps(Name, ComponentAvps),
    [] == Es orelse throw({?TAG, {grouped, [{_,_} = hd(Es) | Rec], Avps}}),
    {Rec, Avps}.

%% ---------------------------------------------------------------------------
%% # empty_group/1
%% ---------------------------------------------------------------------------

empty_group(Name) ->
    list_to_binary(empty_body(Name)).

empty_body(Name) ->
    [z(F, avp_arity(Name, F)) || F <- '#info-'(name2rec(Name), fields)].

z(Name, 1) ->
    z(Name);
z(_, {0,_}) ->
    [];
z(Name, {Min, _}) ->
    lists:duplicate(Min, z(Name)).

z('AVP') ->
    <<0:64/integer>>;  %% minimal header
z(Name) ->
    Bin = diameter_codec:pack_avp(avp_header(Name), empty_value(Name)),
    << <<0>> || <<_>> <= Bin >>.

%% ---------------------------------------------------------------------------
%% # empty/1
%% ---------------------------------------------------------------------------

empty(AvpName) ->
    avp(encode, zero, AvpName).
