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
    aws_util:binary_join([Method, CanonicalURL, CanonicalQueryString,
                          CanonicalHeaders, SignedHeaders, PayloadHash],
                         <<"\n">>).

%% Strip the query string from the URL, if one if present, and return the
%% URL and query string as separate values.
-spec split_url(binary()) -> tuple(binary(), binary()).
split_url(URL) ->
    URI = hackney_url:parse_url(URL),
    %% FIXME(jkakar) Query string values should be sorted
    %% alphabetically and URL encoded.
    {hackney_url:unparse_url(URI#hackney_url{qs= <<"">>}), URI#hackney_url.qs}.

%% Convert a list of headers to canonical header format.  Leading and
%% trailing whitespace around header names and values is stripped, header
%% names are lowercased, and headers are newline-joined in alphabetical
%% order (with a trailing newline).
-spec canonical_headers(headers()) -> binary().
canonical_headers(Headers) ->
    list_to_binary(lists:sort(lists:map(fun canonical_header/1, Headers))).

%% Strip leading and trailing whitespace around Name and Value, convert
%% Name to lowercase, and add a trailing newline.
-spec canonical_header(tuple(binary(), binary())) -> binary().
canonical_header({Name, Value}) ->
    N = list_to_binary(string:strip(string:to_lower(binary_to_list(Name)))),
    V = list_to_binary(string:strip(binary_to_list(Value))),
    <<N/binary, <<":">>/binary, V/binary, <<"\n">>/binary >>.

%% Convert a list of headers to canonicals signed header format.  Leading
%% and trailing whitespace around names is stripped, header names are
%% lowercased, and header names are semicolon-joined in alphabetical order.
-spec signed_headers(headers()) -> binary().
signed_headers(Headers) ->
    aws_util:binary_join(lists:sort(lists:map(fun signed_header/1, Headers)),
                         <<";">>).

%% Strip leading and trailing whitespace around Name and convert it to
%% lowercase.
-spec signed_header(tuple(binary(), binary())) -> binary().
signed_header({Name, _}) ->
    list_to_binary(string:strip(string:to_lower(binary_to_list(Name)))).

%% Create a SHA256 hexdigest from Body.
-spec payload_hash(binary()) -> binary().
payload_hash(Body) ->
    aws_util:base16(crypto:hash(sha256, Body)).

%%====================================================================
%% Unit test functions
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

%% split_url/2 splits a URL from its query string, URL encodes the query
%% string, and returns the URL and query string as separate values.
split_url_test() ->
    ?assertEqual({<<"https://example.com/index">>, <<"one=1&two=2">>},
                 split_url(<<"https://example.com/index?one=1&two=2">>)).

%% split_url/2 returns an empty binary if no query string is present.
split_url_without_query_string_test() ->
    ?assertEqual({<<"https://example.com/index">>, <<"">>},
                 split_url(<<"https://example.com/index?">>)).

%% split_url/2 returns an empty binary if no query string is present.
split_url_with_all_uri_elements_test() ->
    ?assertEqual(
       {<<"https://username:secret@example.com:80/index">>, <<"one=1">>},
       split_url(<<"https://username:secret@example.com:80/index?one=1">>)).

%% canonical_headers/1 returns a newline-delimited list of trimmed and
%% lowecase headers, sorted in alphabetical order, and with a trailing
%% newline.
canonical_headers_test() ->
    Headers = [{<<"X-Amz-Date">>, <<"20150325T105958Z">>},
               {<<"Host">>, <<"example.com">>}],
    ?assertEqual(<<"host:example.com\nx-amz-date:20150325T105958Z\n">>,
                 canonical_headers(Headers)).

%% canonical_header/1 lowercases and colon-joins a header name and value
%% and adds a trailing newline.
canonical_header_test() ->
    ?assertEqual(<<"host:example.com\n">>,
                 canonical_header({<<"Host">>, <<"example.com">>})).

%% canonical_header/1 strips leading and trailing whitespace from the
%% header name and value.
canonical_header_strips_whitespace_test() ->
    ?assertEqual(<<"host:example.com\n">>,
                 canonical_header({<<" Host ">>, <<" example.com ">>})).

%% signed_headers/1 lowercases and semicolon-joins header names in
%% alphabetic order.
signed_headers_test() ->
    Headers = [{<<"X-Amz-Date">>, <<"20150325T105958Z">>},
               {<<"Host">>, <<"example.com">>}],
    ?assertEqual(<<"host;x-amz-date">>, signed_headers(Headers)).

%% signed_header/1 lowercases the header name.
signed_header_test() ->
    ?assertEqual(<<"host">>, signed_header({<<"Host">>, <<"example.com">>})).

%% signed_header/1 lowercases and strips leading and trailing whitespace
%% from the header name.
signed_header_strips_whitespace_test() ->
    ?assertEqual(<<"host">>, signed_header({<<" Host ">>, <<"example.com">>})).

%% payload_hash/1 returns a SHA256 hexdigest for an empty body.
payload_hash_with_empty_body_test() ->
    ?assertEqual(
       <<"e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855">>,
       payload_hash(<<"">>)).

%% payload_hash/1 returns a SHA256 hexdigest for a non-empty body.
payload_hash_test() ->
    ?assertEqual(
       <<"315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3">>,
       payload_hash(<<"Hello, world!">>)).

-endif.
