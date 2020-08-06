-module(aws_util).

-export([base16/1,
         binary_join/2,
         hmac_sha256/2,
         hmac_sha256_hexdigest/2,
         sha256_hexdigest/1,
         decode_xml/1,
         get_in/2,
         get_in/3
        ]).

-include_lib("xmerl/include/xmerl.hrl").

%%====================================================================
%% API
%%====================================================================

%% Base16 encode binary data.
base16(Data) ->
    << <<(hex(N div 16)), (hex(N rem 16))>> || <<N>> <= Data >>.

%% Join binary values using the specified separator.
binary_join([], _) -> <<"">>;
binary_join([H|[]], _) -> H;
binary_join(L, Sep) when is_list(Sep)  ->
    binary_join(L, list_to_binary(Sep));
binary_join([H|T], Sep) ->
    binary_join(T, H, Sep).

%% Create an HMAC-SHA256 hexdigest for Key and Message.
hmac_sha256_hexdigest(Key, Message) ->
    aws_util:base16(hmac_sha256(Key, Message)).

%% Create an HMAC-SHA256 hexdigest for Key and Message.
hmac_sha256(Key, Message) ->
    crypto:hmac(sha256, Key, Message).

%% Create a SHA256 hexdigest for Value.
sha256_hexdigest(Value) ->
    aws_util:base16(crypto:hash(sha256, Value)).

decode_xml(Xml) ->
  XmlString = unicode:characters_to_list(Xml),
  Opts = [{hook_fun, fun hook_fun/2}],
  {Element, []} = xmerl_scan:string(XmlString, Opts),
  Element.

-spec get_in([any()], any()) -> any().
get_in(Keys, V) ->
  get_in(Keys, V, undefined).

-spec get_in([any()], any(), any()) -> any().
get_in([], V, _Default) ->
  V;
get_in([K | Keys], Map, Default) when is_map(Map) ->
  case maps:find(K, Map) of
    {ok, V} -> get_in(Keys, V, Default);
    error -> Default
  end.

%%====================================================================
%% Internal functions
%%====================================================================

-define(TEXT, '__text').

%% Callback hook_fun for xmerl parser
hook_fun(#xmlElement{name = Tag, content = Content} , GlobalState) ->
  Value = case lists:foldr(fun content_to_map/2, none, Content) of
            V = #{?TEXT := Text} ->
              case string:trim(Text) of
                <<>>    -> maps:remove(?TEXT, V);
                Trimmed -> V#{?TEXT => Trimmed}
              end;
            V -> V
          end,
  {#{Tag => Value}, GlobalState};
hook_fun(#xmlText{value = Text}, GlobalState) ->
  {unicode:characters_to_binary(Text), GlobalState}.

%% @doc Convert the content of an Xml node into a map.
%%
%% When there is more than one element with the same tag name, their
%% values get merged into a list.
%%
%% If the content is only text then that is what gets returned.
%%
%% If the content is a mix between text and child elements, then the
%% elements are processed as described above and all the text parts
%% are merged under the `__text' key.

content_to_map(X, none) ->
  X;
content_to_map(X, Acc) when is_map(X), is_map(Acc) ->
  [{Tag, Value}] = maps:to_list(X),
  case maps:is_key(Tag, Acc) of
    true ->
      UpdateFun = fun(L) when is_list(L) ->
                      [Value | L];
                     (V) -> [Value, V]
                  end,
      maps:update_with(Tag, UpdateFun, Acc);
    false -> maps:merge(Acc, X)
  end;
content_to_map(X, #{?TEXT := Text} = Acc) when is_binary(X), is_map(Acc) ->
  Acc#{?TEXT => <<X/binary, Text/binary>>};
content_to_map(X, Acc) when is_binary(X), is_map(Acc) ->
  Acc#{?TEXT => X};
content_to_map(X, Acc) when is_binary(X), is_binary(Acc) ->
  <<X/binary, Acc/binary>>;
content_to_map(X, Acc) when is_map(X), is_binary(Acc) ->
  X#{?TEXT => Acc}.

%% Convert an integer in the 0-16 range to a hexadecimal byte
%% representation.
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

%% hmac_sha256/2 returns a SHA256 HMAC for a message.
hmac_sha256_test() ->
    ?assertEqual(
       <<110, 158, 242, 155, 117, 255, 252,  91,
         122, 186, 229,  39, 213, 143, 218, 219,
          47, 228,  46, 114,  25,   1,  25, 118,
         145, 115,  67,   6,  95,  88, 237,  74>>,
       hmac_sha256(<<"key">>, <<"message">>)).

%% hmac_sha256_hexdigest/2 returns an HMAC SHA256 hexdigest for a message.
hmac_sha256_hexdigest_test() ->
    ?assertEqual(
       <<"6e9ef29b75fffc5b7abae527d58fdadb2fe42e7219011976917343065f58ed4a">>,
       hmac_sha256_hexdigest(<<"key">>, <<"message">>)).

-endif.
