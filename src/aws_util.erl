-module(aws_util).

-export([base16/1,
         binary_join/2,
         hmac_sha256_hexdigest/2,
         sha256_hexdigest/1]).

%%====================================================================
%% API
%%====================================================================

%% Base16 encode binary data.
-spec base16(binary()) -> <<_:_*16>>.
base16(Data) ->
    << <<(hex(N div 16)), (hex(N rem 16))>> || <<N>> <= Data >>.

binary_join([], _) -> <<"">>;
binary_join([H|[]], _) -> H;
binary_join(List, Sep) when is_list(Sep)  ->
    binary_join(List, list_to_binary(Sep));
binary_join([H|T], Sep) ->
    binary_join(T, H, Sep).

%% Create an HMAC-SHA256 hexdigest for Key and Message.
-spec hmac_sha256_hexdigest(binary(), binary()) -> binary().
hmac_sha256_hexdigest(Key, Message) ->
    aws_util:base16(crypto:hmac(sha256, Key, Message)).

%% Create a SHA256 hexdigest for Value.
-spec sha256_hexdigest(binary()) -> binary().
sha256_hexdigest(Value) ->
    aws_util:base16(crypto:hash(sha256, Value)).

%%====================================================================
%% Internal functions
%%====================================================================

%% Convert an integer in the 0-16 range to a hexadecimal byte
%% representation.
-spec hex(integer()) -> byte().
hex(N) when N >= 0, N < 10 ->
    N + $0;
hex(N) when N < 16 ->
    N - 10 + $a.

binary_join([], Acc, _) ->
    Acc;
binary_join([H|T], Acc, Sep) ->
    binary_join(T, <<Acc/binary, Sep/binary, H/binary>>, Sep).

%%====================================================================
%% Unit tests
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

%% binary_join/2 joins a list of binary values, separated by a separator
%% character, into a single binary value.
binary_join_test() ->
    ?assertEqual(binary_join([<<"a">>, <<"b">>, <<"c">>], <<",">>),
                 <<"a,b,c">>).

%% binary_join/2 correctly joins binary values with a multi-character
%% separator.
binary_join_with_multi_character_separator_test() ->
    ?assertEqual(binary_join([<<"a">>, <<"b">>, <<"c">>], <<", ">>),
                 <<"a, b, c">>).

%% binary_join/2 converts a list containing a single binary into the binary
%% itself.
binary_join_with_single_element_list_test() ->
    ?assertEqual(binary_join([<<"a">>], <<",">>), <<"a">>).

%% binary_join/2 returns an empty binary value when an empty list is
%% provided.
binary_join_with_empty_list_test() ->
    ?assertEqual(binary_join([], <<",">>), <<"">>).


%% sha256_hexdigest/1 returns a SHA256 hexdigest for an empty value.
sha256_hexdigest_with_empty_value_test() ->
    ?assertEqual(
       <<"e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855">>,
       sha256_hexdigest(<<"">>)).

%% sha256_hexdigest/1 returns a SHA256 hexdigest for a non-empty body.
sha256_hexdigest_test() ->
    ?assertEqual(
       <<"315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3">>,
       sha256_hexdigest(<<"Hello, world!">>)).

%% hmac_sha256_hexdigest/2 returns an HMAC SHA256 hexdigest for a message.
hmac_sha256_hexdigest_test() ->
    ?assertEqual(
       <<"6e9ef29b75fffc5b7abae527d58fdadb2fe42e7219011976917343065f58ed4a">>,
       hmac_sha256_hexdigest(<<"key">>, <<"message">>)).

-endif.
