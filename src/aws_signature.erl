-module(aws_signature).

-export([v4/8]).

-include_lib("hackney/include/hackney_lib.hrl").

-type header() :: tuple(binary(), binary()).
-type headers() :: list(header()).

%%====================================================================
%% API
%%====================================================================

%% Generate headers with an AWS signature version 4 for the specified
%% request.
v4(AccessKeyID, SecretAccessKey, Region, Service, Method, URL, Headers, Body) ->
    v4(AccessKeyID, SecretAccessKey, Region, Service,
       calendar:universal_time(), Method, URL, Headers, Body).

%% Generate headers with an AWS signature version 4 for the specified
%% request using the specified time when generating signatures.
v4(AccessKeyID, SecretAccessKey, Region, Service, Now, Method, URL, Headers, Body) ->
    LongDate = list_to_binary(ec_date:format("YmdTGisZ", Now)),
    ShortDate = list_to_binary(ec_date:format("Ymd", Now)),
    Headers1 = add_date_header(Headers, LongDate),
    CanonicalRequest = canonical_request(Method, URL, Headers1, Body),
    HashedCanonicalRequest = aws_util:sha256_hexdigest(CanonicalRequest),
    CredentialScope = credential_scope(ShortDate, Region, Service),
    SigningKey = signing_key(SecretAccessKey, ShortDate, Region, Service),
    StringToSign = string_to_sign(LongDate, CredentialScope,
                                  HashedCanonicalRequest),
    Signature = sign(SigningKey, StringToSign),
    SignedHeaders = signed_headers(Headers1),
    Authorization = authorization(AccessKeyID, CredentialScope, SignedHeaders,
                                  Signature),
    add_authorization_header(Headers1, Authorization).

%%====================================================================
%% Internal functions
%%====================================================================

%% Add an Authorization header with an AWS4-HMAC-SHA256 signature to the
%% list of headers.
-spec add_authorization_header(tuple(binary(), binary()), binary()) -> tuple(binary(), binary()).
add_authorization_header(Headers, Authorization) ->
    [{<<"Authorization">>, Authorization}|Headers].

%% Add an X-Amz-Date header with a long date value in YYMMDDTHHMMSSZ format
%% to a list of headers.
-spec add_date_header(tuple(binary(), binary()), binary()) -> tuple(binary(), binary()).
add_date_header(Headers, Date) ->
    [{<<"X-Amz-Date">>, Date}|Headers].

%% Generate an AWS4-HMAC-SHA256 authorization signature.
authorization(AccessKeyID, CredentialScope, SignedHeaders, Signature) ->
    << <<"AWS4-HMAC-SHA256 ">>/binary,
       <<"Credential=">>/binary, AccessKeyID/binary,
       <<"/">>/binary, CredentialScope/binary,
       <<", SignedHeaders=">>/binary, SignedHeaders/binary,
       <<", Signature=">>/binary, Signature/binary >>.

%% Generate a HMAC-SHA256 signature.
-spec sign(binary(), binary()) -> binary().
sign(Key, Message) ->
    aws_util:hmac_sha256_hexdigest(Key, Message).

%% Generate a signing key from a secret access key, a short date in YYMMDD
%% format, a region identifier and a service identifier.
-spec signing_key(binary(), binary(), binary(), binary()) -> binary().
signing_key(SecretAccessKey, ShortDate, Region, Service) ->
    SignedDate = sign(<< <<"AWS4">>/binary, SecretAccessKey/binary>>,
                      ShortDate),
    SignedRegion = sign(SignedDate, Region),
    SignedService = sign(SignedRegion, Service),
    sign(SignedService, <<"aws4_request">>).

%% Generate a credential scope from a short date in YYMMDD format, a
%% region identifier and a service identifier.
-spec credential_scope(binary(), binary(), binary()) -> binary().
credential_scope(ShortDate, Region, Service) ->
    aws_util:binary_join([ShortDate, Region, Service, <<"aws4_request">>],
                         "/").

%% Generate the text to sign from a long date in YYMMDDTHHMMSSZ format, a
%% credential scope and a hashed canonical request.
-spec string_to_sign(binary(), binary(), binary()) -> binary().
string_to_sign(LongDate, CredentialScope, HashedCanonicalRequest) ->
    aws_util:binary_join([<<"AWS4-HMAC-SHA256">>, LongDate, CredentialScope,
                          HashedCanonicalRequest],
                         "\n").

%% Process and merge request values into a canonical request for AWS
%% signature version 4.
-spec canonical_request(binary(), binary(), headers(), binary()) -> binary().
canonical_request(Method, URL, Headers, Body) ->
    {CanonicalURL, CanonicalQueryString} = split_url(URL),
    CanonicalHeaders = canonical_headers(Headers),
    SignedHeaders = signed_headers(Headers),
    PayloadHash = aws_util:sha256_hexdigest(Body),
    aws_util:binary_join([Method, CanonicalURL, CanonicalQueryString,
                          CanonicalHeaders, SignedHeaders, PayloadHash],
                         <<"\n">>).

%% Strip the query string from the URL, if one if present, and return the
%% URL and query string as separate values.
-spec split_url(binary()) -> tuple(binary(), binary()).
split_url(URL) ->
    URI = hackney_url:parse_url(URL),
    %% FIXME(jkakar) Query string name/value pairs should be URL encoded
    %% and sorted alphabetically.
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

%%====================================================================
%% Unit tests
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

%% v4/8 generates an AWS signature version 4 for a request and returns a
%% new set of HTTP headers with Authorization and X-Aws-Date header/value
%% pairs added.
v4_test() ->
    AccessKeyID = <<"access-key-id">>,
    SecretAccessKey = <<"secret-access-key">>,
    Region = <<"us-east-1">>,
    Service = <<"ec2">>,
    Now = {{2015, 4, 3}, {21, 31, 17}},
    Method = <<"GET">>,
    URL = <<"https://ec2.us-east-1.amazonaws.com?Action=DescribeInstances&Version=2014-10-01">>,
    Headers = [{<<"Host">>, <<"ec2.us-east-1.amazonaws.com">>},
               {<<"Header">>, <<"Value">>}],
    Body = <<"">>,
    ?assertEqual([{<<"Authorization">>, <<"AWS4-HMAC-SHA256 Credential=access-key-id/20150403/us-east-1/ec2/aws4_request, SignedHeaders=header;host;x-amz-date, Signature=8aa86f9889396b663f8fbf2923da39501c2ee54ccbefba4e4ef6ae7004d574b8">>},
                  {<<"X-Amz-Date">>, <<"20150403T213117Z">>},
                  {<<"Host">>, <<"ec2.us-east-1.amazonaws.com">>},
                  {<<"Header">>, <<"Value">>}],
    v4(AccessKeyID, SecretAccessKey, Region, Service, Now, Method, URL, Headers, Body)).

%% add_authorization_header/2 adds an Authorization header to a list of
%% headers.
add_authorization_header_test() ->
    ?assertEqual([{<<"Authorization">>, <<"AWS4-HMAC-SHA256 ...">>},
                  {<<"Host">>, <<"example.com">>}],
                 add_authorization_header([{<<"Host">>, <<"example.com">>}],
                                          <<"AWS4-HMAC-SHA256 ...">>)).

%% add_date_header/2 adds an X-Amz-Date header to a list of headers.
add_date_header_test() ->
    ?assertEqual([{<<"X-Amz-Date">>, <<"20150326T221217Z">>},
                  {<<"Host">>, <<"example.com">>}],
                 add_date_header([{<<"Host">>, <<"example.com">>}],
                                 <<"20150326T221217Z">>)).

%% sign/2 creates a signature from a signing key and the string to sign.
sign_test() ->
    SigningKey = signing_key(<<"secret-access-key">>, <<"20150326">>,
                             <<"us-east-1">>, <<"s3">>),
    LongDate = <<"20150326T202136Z">>,
    CredentialScope = credential_scope(
                        <<"20150325">>, <<"us-east-1">>, <<"iam">>),
    CanonicalRequest = canonical_request(
                         <<"GET">>, <<"https://example.com">>,
                         [{<<"Host">>, <<"example.com">>},
                          {<<"X-Amz-Date">>, <<"20150325T105958Z">>}],
                         <<"">>),
    HashedCanonicalRequest = aws_util:sha256_hexdigest(CanonicalRequest),
    StringToSign = string_to_sign(LongDate, CredentialScope,
                                  HashedCanonicalRequest),
    ?assertEqual(
       <<"79daaebf3b7c59c7f1e79f1e30279b4b93536fcdff446f2e34dae262765cd3b1">>,
       sign(SigningKey, StringToSign)).

%% signing_key/4 creates a signing key from a secret access key, short
%% date, region identifier and service identifier.
signing_key_test() ->
    ?assertEqual(
       <<"4c804ed64ddbae9322ee4d6933b4ff24158cd0079a644e20689b64e309ca409e">>,
       signing_key(<<"secret-access-key">>, <<"20150326">>, <<"us-east-1">>,
                   <<"s3">>)).

%% credential_scope/3 combines a short date, region and service name and
%% signature identifier into a slash-joined binary value.
credential_scope_test() ->
    ?assertEqual(<<"20150325/us-east-1/iam/aws4_request">>,
                 credential_scope(<<"20150325">>, <<"us-east-1">>, <<"iam">>)).

%% string_to_sign/3 combines a long date, credential scope and hash
%% canonical request into a binary value that's ready to sign.
string_to_sign_test() ->
    LongDate = <<"20150326T202136Z">>,
    CredentialScope = credential_scope(
                        <<"20150325">>, <<"us-east-1">>, <<"iam">>),
    CanonicalRequest = canonical_request(
                         <<"GET">>, <<"https://example.com">>,
                         [{<<"Host">>, <<"example.com">>},
                          {<<"X-Amz-Date">>, <<"20150325T105958Z">>}],
                         <<"">>),
    HashedCanonicalRequest = aws_util:sha256_hexdigest(CanonicalRequest),
    ?assertEqual
       (<< <<"AWS4-HMAC-SHA256">>/binary, <<"\n">>/binary,
           LongDate/binary, <<"\n">>/binary,
           CredentialScope/binary, <<"\n">>/binary,
           HashedCanonicalRequest/binary>>,
        string_to_sign(LongDate, CredentialScope, HashedCanonicalRequest)).

%% canonical_request/4 converts an HTTP method, URL, headers and body into
%% a canonical request for AWS signature version 4
canonical_request_test() ->
    ?assertEqual(
       aws_util:binary_join(
         [<<"GET">>,
          <<"https://example.com/">>,
          <<"">>,
          <<"host:example.com">>,
          <<"x-amz-date:20150325T105958Z">>,
          <<"">>,
          <<"host;x-amz-date">>,
          <<"e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855">>],
         "\n"),
       canonical_request(<<"GET">>, <<"https://example.com">>,
                         [{<<"Host">>, <<"example.com">>},
                          {<<"X-Amz-Date">>, <<"20150325T105958Z">>}],
                         <<"">>)).

%% split_url/1 splits a URL from its query string, URL encodes the query
%% string, and returns the URL and query string as separate values.
split_url_test() ->
    ?assertEqual({<<"https://example.com/index">>, <<"one=1&two=2">>},
                 split_url(<<"https://example.com/index?one=1&two=2">>)).

%% split_url/1 returns an empty binary if no query string is present.
split_url_without_query_string_test() ->
    ?assertEqual({<<"https://example.com/index">>, <<"">>},
                 split_url(<<"https://example.com/index?">>)).

%% split_url/1 returns an empty binary if no query string is present.
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

-endif.
