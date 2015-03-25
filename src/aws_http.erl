-module(aws_http).

%% API exports
-export([]).
-include_lib("hackney/include/hackney_lib.hrl").

-type header() :: tuple(binary(), binary()).
-type headers() :: list(header()).

%%====================================================================
%% API functions
%%====================================================================

%% sign_v4(Creds, Method, URL, Headers, Body) ->
%%     CanonicalRequest = canonical_request(Method, URL, Headers, Body),
%%     undefined.

%%====================================================================
%% Internal functions
%%====================================================================

%% Process and merge request values into a canonical request using AWS
%% signature version 4 defined in:
%%
%%   http://docs.aws.amazon.com/general/latest/gr/sigv4_signing.html.
-spec canonical_request(binary(), binary(), headers(), binary()) -> binary().
canonical_request(Method, URL, Headers, Body) ->
    {CanonicalURL, CanonicalQueryString} = split_url(URL),
    CanonicalHeaders = canonical_headers(Headers),
    SignedHeaders = signed_headers(Headers),
    PayloadHash = payload_hash(Body),
    binary_join([Method, CanonicalURL, CanonicalQueryString,
                 CanonicalHeaders, SignedHeaders, PayloadHash], <<"\n">>).

split_url(URL) ->
    ok.

%% Convert a list of headers to canonical header format.  Leading and
%% trailing whitespace around header names and values is stripped,
%% header names are lowercased, and headers are newline-joined in
%% alphabetical order (with a trailing newline).
-spec canonical_headers(headers()) -> binary().
canonical_headers(Headers) ->
    list_to_binary(lists:sort(lists:map(fun canonical_header/1, Headers))).

%% Strip leading and trailing whitespace around Name and Value,
%% convert Name to lowercase, and add a trailing newline.
-spec canonical_header({binary(), binary()}) -> binary().
canonical_header({Name, Value}) ->
    N = list_to_binary(string:strip(string:to_lower(binary_to_list(Name)))),
    V = list_to_binary(string:strip(binary_to_list(Value))),
    <<N/binary, <<":">>/binary, V/binary, <<"\n">>/binary >>.

%% Convert a list of headers to canonicals signed header format.
%% Leading and trailing whitespace around names is stripped, header
%% names are lowercased, and header names are semicolon-joined in
%% alphabetical order.
-spec signed_headers(headers()) -> binary().
signed_headers(Headers) ->
    binary_join(lists:sort(lists:map(fun signed_header/1, Headers)), <<";">>).

%% Strip leading and trailing whitespace around Name and convert it to
%% lowercase.
-spec signed_header({binary(), binary()}) -> binary().
signed_header({Name, _}) ->
    list_to_binary(string:strip(string:to_lower(binary_to_list(Name)))).

%% Create a SHA256 hexdigest from Body.
-spec payload_hash(binary()) -> binary().
payload_hash(Body) ->
    base16(crypto:hash(sha256, Body)).

%%====================================================================
%% Internal utility functions
%%====================================================================

%% Base16 encode binary data.
-spec base16(binary()) -> <<_:_*16>>.
base16(Data) ->
    << <<(hex(N div 16)), (hex(N rem 16))>> || <<N>> <= Data >>.

%% Convert an integer in the 0-16 range to a hexadecimal byte
%% representation.
-spec hex(integer()) -> byte().
hex(N) when N >= 0, N < 10 ->
    N + $0;
hex(N) when N < 16 ->
    N - 10 + $a.

binary_join([], _) -> <<"">>;
binary_join([H|[]], _) -> H;
binary_join(List, Sep) when is_list(Sep)  ->
    binary_join(List, list_to_binary(Sep));
binary_join([H|T], Sep) ->
    binary_join(T, H, Sep).

binary_join([], Acc, _) ->
    Acc;
binary_join([H|T], Acc, Sep) ->
    binary_join(T, <<Acc/binary, Sep/binary, H/binary>>, Sep).

%%====================================================================
%% Unit test functions
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

%% canonical_headers returns a newline-delimited list of trimmed and
%% lowecase headers, sorted in alphabetical order, and with a trailing
%% newline.
canonical_headers_test() ->
    Headers = [{<<"X-Amz-Date">>, <<"20150325T105958Z">>},
               {<<"Host">>, <<"example.com">>}],
    ?assertEqual(<<"host:example.com\nx-amz-date:20150325T105958Z\n">>,
                 canonical_headers(Headers)).

%% canonical_header lowercases and colon-joins a header name and value
%% and adds a trailing newline.
canonical_header_test() ->
    ?assertEqual(<<"host:example.com\n">>,
                 canonical_header({<<"Host">>, <<"example.com">>})).

%% canonical_header strips leading and trailing whitespace from the
%% header name and value.
canonical_header_strips_whitespace_test() ->
    ?assertEqual(<<"host:example.com\n">>,
                 canonical_header({<<" Host ">>, <<" example.com ">>})).

%% signed_headers lowercases and semicolon-joins header names in
%% alphabetic order.
signed_headers_test() ->
    Headers = [{<<"X-Amz-Date">>, <<"20150325T105958Z">>},
               {<<"Host">>, <<"example.com">>}],
    ?assertEqual(<<"host;x-amz-date">>, signed_headers(Headers)).

%% signed_header lowercases the header name.
signed_header_test() ->
    ?assertEqual(<<"host">>, signed_header({<<"Host">>, <<"example.com">>})).

%% signed_header lowercases and strips leading and trailing whitespace
%% from the header name.
signed_header_strips_whitespace_test() ->
    ?assertEqual(<<"host">>, signed_header({<<" Host ">>, <<"example.com">>})).

%% payload_hash returns a SHA256 hexdigest for an empty
%% body.
payload_hash_with_empty_body_test() ->
    ?assertEqual(
       <<"e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855">>,
       payload_hash(<<"">>)).

%% payload_hash returns a SHA256 hexdigest for a non-empty
%% body.
payload_hash_test() ->
    ?assertEqual(
       <<"315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3">>,
       payload_hash(<<"Hello, world!">>)).

%% binary_join joins a list of binary values, separated by a separator
%% character, into a single binary value.
binary_join_test() ->
    ?_assertEqual(binary_join([<<"a">>, <<"b">>, <<"c">>], <<",">>),
                  <<"a,b,c">>).

%% binary_join correctly joins binary values with a multi-character
%% separator.
binary_join_with_multi_character_separator_test() ->
    ?_assertEqual(binary_join([<<"a">>, <<"b">>, <<"c">>], <<", ">>),
                  <<"a, b, c">>).

%% binary_join converts a list containing a single binary into the
%% binary itself.
binary_join_with_single_element_list_test() ->
    ?_assertEqual(binary_join([<<"a">>], <<",">>), <<"a">>).

%% binary_join returns an empty binary value when an empty list is
%% provided.
binary_join_with_empty_list_test() ->
    ?_assertEqual(binary_join([], <<",">>), <<"">>).

-endif.
