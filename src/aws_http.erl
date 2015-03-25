-module(aws_http).

%% API exports
-export([]).
-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API functions
%%====================================================================

%% sign_v4(Creds, Method, URL, Headers, Body) ->
%%     CanonicalRequest = canonical_request(Method, URL, Headers, Body),
%%     undefined.

%%====================================================================
%% Internal functions
%%====================================================================

%% canonical_request(Method, URL, Headers, Body) ->
%%     ParsedURL = hackney_url:parse_url(URL),
%%     [Method, URL, <<"">>].

%% Convert a list of headers to canonical header format.  Leading and
%% trailing whitespace around header names and values is stripped,
%% header names are lowercased, and headers are newline-joined in
%% alphabetical order (with a trailing newline).
canonical_headers(Headers) ->
    list_to_binary(lists:sort(lists:map(fun canonical_header/1, Headers))).

%% Strip leading and trailing whitespace around Name and Value,
%% convert Name to lowercase, and add a trailing newline.
-spec canonical_header({binary(), binary()}) -> binary().
canonical_header({Name, Value}) ->
    N = list_to_binary(string:strip(string:to_lower(binary_to_list(Name)))),
    V = list_to_binary(string:strip(binary_to_list(Value))),
    <<N/binary, <<":">>/binary, V/binary, <<"\n">>/binary >>.

canonical_payload_hash(Body) ->
    base16(crypto:hash(sha256, Body)).

-spec base16(binary()) -> <<_:_*16>>.
base16(Data) ->
    << <<(hex(N div 16)), (hex(N rem 16))>> || <<N>> <= Data >>.
hex(N) when N < 10 ->
    N + $0;
hex(N) when N < 16 ->
    N - 10 + $a.

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

%% canonical_header lowercases and joins a {Key, Value} header and adds a
%% trailing newline.
canonical_header_test() ->
    ?assertEqual(<<"host:example.com\n">>,
                 canonical_header({<<"Host">>, <<"example.com">>})).

%% canonical_header strips leading and trailing whitespace from the key
%% and value.
canonical_header_strips_whitespace_test() ->
    ?assertEqual(<<"host:example.com\n">>,
                 canonical_header({<<" Host ">>, <<" example.com ">>})).

%% canonical_payload_hash correctly returns a SHA256 HMAC hexdigest
%% for an empty body.
canonical_payload_hash_with_empty_body_test() ->
    ?assertEqual(
       <<"e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855">>,
       canonical_payload_hash(<<"">>)).

%% canonical_payload_hash correctly returns a SHA256 HMAC hexdigest
%% for a non-empty body.
canonical_payload_hash_test() ->
    ?assertEqual(
       <<"315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3">>,
       canonical_payload_hash(<<"Hello, world!">>)).

-endif.
