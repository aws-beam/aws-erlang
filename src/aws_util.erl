-module(aws_util).

%% API exports
-export([base16/1,
         binary_join/2]).

%%====================================================================
%% API functions
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

%%====================================================================
%% Internal utility functions
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
%% Unit test functions
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

-endif.
