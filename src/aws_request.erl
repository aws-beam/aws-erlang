-module(aws_request).

-export([ add_headers/2
        , add_query/2
        , build_headers/2
        , build_custom_headers/2
        , method_to_binary/1
        , sign_request/5
        , request/2
        ]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================
%% Perform the actual request and depending on configuration,
%% retry if the response is off a retriable type.
request(RequestFun, Options) ->
  RetryState = init_retry_state(proplists:get_value(retry_options, Options, undefined)),
  do_request(RequestFun, RetryState).

%% Generate headers with an AWS signature version 4 for the specified
%% request.
sign_request(Client, Method, URL, Headers, Body) ->
    AccessKeyID = maps:get(access_key_id, Client),
    SecretAccessKey = maps:get(secret_access_key, Client),
    Region = maps:get(region, Client),
    Service = maps:get(service, Client),
    Token = maps:get(token, Client, undefined),
    sign_request(AccessKeyID, SecretAccessKey, Region, Service, Token,
                 Method, URL, Headers, Body).

%% @doc Include additions only if they don't already exist in the provided list.
add_headers([], Headers) ->
  Headers;
add_headers([{Name, _} = Header | Additions], Headers) ->
  case lists:keyfind(Name, 1, Headers) of
    false -> add_headers(Additions, [Header | Headers]);
    _ -> add_headers(Additions, Headers)
  end.

%% @doc Build request headers based on a list key-value pairs
%% representing the mappings from param names to header names and a
%% map with the `params'.
build_headers(ParamsHeadersMapping, Params0)
  when is_list(ParamsHeadersMapping),
       is_map(Params0) ->
  Fun = fun({HeaderName, ParamName}, {HeadersAcc, ParamsAcc}) ->
            case maps:get(ParamName, ParamsAcc, undefined) of
              undefined ->
                {HeadersAcc, ParamsAcc};
              Value ->
                Headers = [{HeaderName, Value} | HeadersAcc],
                Params = maps:remove(ParamName, ParamsAcc),
                {Headers, Params}
            end
        end,
  lists:foldl(Fun, {[], Params0}, ParamsHeadersMapping).

%% @doc Build custom request headers based on a list key-value pairs
%% representing the mappings from param names to header names and a
%% map with the `params'.
build_custom_headers(ParamsCustomHeadersMapping, Params0)
  when is_list(ParamsCustomHeadersMapping),
       is_map(Params0) ->
  Fun = fun({HeaderName, ParamName}, {HeadersAcc, ParamsAcc}) ->
            case maps:get(ParamName, ParamsAcc, undefined) of
              undefined ->
                {HeadersAcc, ParamsAcc};
              Value ->
                Headers = [{<<HeaderName/binary, K/binary>>, V}
                           || {K, V} <- maps:to_list(Value)] ++ HeadersAcc,
                Params = maps:remove(ParamName, ParamsAcc),
                {Headers, Params}
            end
        end,
  lists:foldl(Fun, {[], Params0}, ParamsCustomHeadersMapping).

%% @doc Add querystring to url is there are any parameters in the list
-spec add_query(binary(), [{binary(), any()}]) -> binary().
add_query(Url, []) ->
    Url;
add_query(Url, Query) ->
    QueryString = aws_util:encode_query(Query),
    aws_util:binary_join([Url, QueryString], <<"?">>).

-spec method_to_binary(atom()) -> binary().
method_to_binary(delete)  -> <<"DELETE">>;
method_to_binary(get)     -> <<"GET">>;
method_to_binary(head)    -> <<"HEAD">>;
method_to_binary(options) -> <<"OPTIONS">>;
method_to_binary(patch)   -> <<"PATCH">>;
method_to_binary(post)    -> <<"POST">>;
method_to_binary(put)     -> <<"PUT">>.

%%====================================================================
%% Internal functions
%%====================================================================

%% Generate headers with an AWS signature version 4 for the specified
%% request.
sign_request(AccessKeyID, SecretAccessKey, Region, Service, Token,
             Method, URL, Headers, Body) ->
    sign_request(AccessKeyID, SecretAccessKey, Region, Service, Token,
                 calendar:universal_time(), Method, URL, Headers, Body).

%% Generate headers with an AWS signature version 4 for the specified
%% request using the specified time when generating signatures.
sign_request(AccessKeyID, SecretAccessKey, Region, Service, Token, Now,
             Method, URL, Headers0, Body) ->
    LongDate = list_to_binary(ec_date:format("YmdTHisZ", Now)),
    ShortDate = list_to_binary(ec_date:format("Ymd", Now)),
    Headers1 = add_date_header(Headers0, LongDate),
    Headers2 = add_content_hash_header(Headers1, Body),
    Headers = maybe_add_token_header(Headers2, Token),

    CanonicalRequest = canonical_request(Method, URL, Headers, Body),
    HashedCanonicalRequest = aws_util:sha256_hexdigest(CanonicalRequest),
    CredentialScope = credential_scope(ShortDate, Region, Service),
    SigningKey = signing_key(SecretAccessKey, ShortDate, Region, Service),
    StringToSign = string_to_sign(LongDate, CredentialScope,
                                  HashedCanonicalRequest),
    Signature = aws_util:hmac_sha256_hexdigest(SigningKey, StringToSign),
    SignedHeaders = signed_headers(Headers),
    Authorization = authorization(AccessKeyID, CredentialScope, SignedHeaders,
                                  Signature),
    add_authorization_header(Headers, Authorization).

%% Add an Authorization header with an AWS4-HMAC-SHA256 signature to the
%% list of headers.
add_authorization_header(Headers, Authorization) ->
    [{<<"Authorization">>, Authorization}|Headers].

%% Add an X-Amz-Date header with a long date value in YYMMDDTHHMMSSZ format
%% to a list of headers.
add_date_header(Headers, Date) ->
    [{<<"X-Amz-Date">>, Date}|Headers].

%% Add an X-Amz-Content-SHA256 header which is the hash of the payload.
%% This header is required for S3 when using the v4 signature. Adding it
%% in requests for all services does not cause any issues.
add_content_hash_header(Headers, Body) ->
    [ {<<"X-Amz-Content-SHA256">>, aws_util:sha256_hexdigest(Body)}
    | Headers
    ].

%% Add an X-Amz-Security-Token header with the user-submitted security token
%% to a list of headers
maybe_add_token_header(Headers, undefined) ->
    Headers;
maybe_add_token_header(Headers, Token) ->
    [{<<"X-Amz-Security-Token">>, Token}|Headers].

%% Generate an AWS4-HMAC-SHA256 authorization signature.
authorization(AccessKeyID, CredentialScope, SignedHeaders, Signature) ->
    << <<"AWS4-HMAC-SHA256 ">>/binary,
       <<"Credential=">>/binary, AccessKeyID/binary,
       <<"/">>/binary, CredentialScope/binary,
       <<", SignedHeaders=">>/binary, SignedHeaders/binary,
       <<", Signature=">>/binary, Signature/binary >>.

%% Generate a signing key from a secret access key, a short date in YYMMDD
%% format, a region identifier and a service identifier.
signing_key(SecretAccessKey, ShortDate, Region, Service) ->
    SigningKey = << <<"AWS4">>/binary, SecretAccessKey/binary>>,
    SignedDate = aws_util:hmac_sha256(SigningKey, ShortDate),
    SignedRegion = aws_util:hmac_sha256(SignedDate, Region),
    SignedService = aws_util:hmac_sha256(SignedRegion, Service),
    aws_util:hmac_sha256(SignedService, <<"aws4_request">>).

%% Generate a credential scope from a short date in YYMMDD format, a
%% region identifier and a service identifier.
credential_scope(ShortDate, Region, Service) ->
    aws_util:binary_join([ShortDate, Region, Service, <<"aws4_request">>],
                         "/").

%% Generate the text to sign from a long date in YYMMDDTHHMMSSZ format, a
%% credential scope and a hashed canonical request.
string_to_sign(LongDate, CredentialScope, HashedCanonicalRequest) ->
    aws_util:binary_join([<<"AWS4-HMAC-SHA256">>, LongDate, CredentialScope,
                          HashedCanonicalRequest],
                         "\n").

%% Process and merge request values into a canonical request for AWS
%% signature version 4.
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
split_url(URL) ->
    URI = hackney_url:parse_url(URL),
    {ensure_path(URI#hackney_url.path), fix_qs(URI#hackney_url.qs)}.

%% When signing a request, the query string for query params that do
%% no contain a value such as "key" should be encoded as "key=".
%% Without this fix, the request will result in a SignatureDoesNotMatch error.
fix_qs(QueryString) ->
  hackney_url:qs(
    lists:sort(
      lists:map(fun({K, true}) -> {K, ""};
                   ({K, V}) when is_binary(V) -> {K, V}
                end, hackney_url:parse_qs(QueryString)))).

%% Convert a list of headers to canonical header format.  Leading and
%% trailing whitespace around header names and values is stripped, header
%% names are lowercased, and headers are newline-joined in alphabetical
%% order (with a trailing newline).
canonical_headers(Headers) ->
    list_to_binary(lists:sort(lists:map(fun canonical_header/1, Headers))).

%% Strip leading and trailing whitespace around Name and Value, convert
%% Name to lowercase, and add a trailing newline.
canonical_header({Name, Value}) ->
    N = list_to_binary(string:strip(string:to_lower(binary_to_list(Name)))),
    V = list_to_binary(string:strip(binary_to_list(Value))),
    <<N/binary, <<":">>/binary, V/binary, <<"\n">>/binary >>.

%% Convert a list of headers to canonicals signed header format.  Leading
%% and trailing whitespace around names is stripped, header names are
%% lowercased, and header names are semicolon-joined in alphabetical order.
signed_headers(Headers) ->
    aws_util:binary_join(lists:sort(lists:map(fun signed_header/1, Headers)),
                         <<";">>).

%% Strip leading and trailing whitespace around Name and convert it to
%% lowercase.
signed_header({Name, _}) ->
    list_to_binary(string:strip(string:to_lower(binary_to_list(Name)))).

ensure_path(<<"">>) -> <<"/">>;
ensure_path(Path) -> Path.

do_request(RequestFun, RetryState) ->
  Response = RequestFun(),
  case classify_response(Response) of
    retriable ->
      case should_retry(RetryState) of
        {ok, NewRetryState} ->
          do_request(RequestFun, NewRetryState);
        false ->
          Response
      end;
    error ->
      Response;
    ok ->
      Response
  end.

init_retry_state(undefined) ->
  undefined;
init_retry_state({exponential_with_jitter, {MaxAttempts, BaseSleepTime, CapSleepTime}}) ->
  #{ type => exponential_with_jitter
   , n => 0
   , max_attempts => MaxAttempts
   , base_sleep_time => BaseSleepTime
   , cap_sleep_time => CapSleepTime
  }.

classify_response({error, _, {StatusCode, _, _}})
  when is_integer(StatusCode) andalso StatusCode >= 500 ->
  retriable;
classify_response({error, {StatusCode, _}})
  when is_integer(StatusCode) andalso StatusCode >= 500 ->
  retriable;
classify_response({error, _, {StatusCode, _, _}})
  when is_integer(StatusCode) ->
  error;
classify_response({error, closed}) ->
  retriable;
classify_response({error, connect_timeout}) ->
  retriable;
classify_response({error, checkout_timeout}) ->
  retriable;
classify_response({error, _}) ->
  error;
classify_response({ok, {_, _}}) ->
  ok;
classify_response({ok, _, {_, _, _}}) ->
  ok.

should_retry(undefined) ->
  false;
should_retry(#{ type := exponential_with_jitter
              , n := N
              , max_attempts := MaxAttempts}) when N =:= MaxAttempts ->
  false;
should_retry(#{ type := exponential_with_jitter
              , n := N
              , base_sleep_time := BaseSleepTime
              , cap_sleep_time := CapSleepTime} = RetryState0) ->
  Temp = min(CapSleepTime, BaseSleepTime * trunc(math:pow(2, N))),
  Sleep = Temp div 2 + rand:uniform(Temp div 2),
  timer:sleep(Sleep),
  {ok, RetryState0#{ n => N +1 }}.

%%====================================================================
%% Unit tests
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

%% sign_request/5 extracts credentials, service and region information from
%% a client map and generates an AWS signature version 4 for a request.  It
%% returns a new set of HTTP headers with Authorization and X-Aws-Date
%% header/value pairs added.
sign_request_with_client_test() ->
    Client = #{access_key_id => <<"access-key-id">>,
               secret_access_key => <<"secret-access-key">>,
               endpoint => <<"amazonaws.com">>,
               region => <<"us-east-1">>,
               service => <<"ec2">>},
    Method = <<"GET">>,
    URL = <<"https://ec2.us-east-1.amazonaws.com?Action=DescribeInstances&Version=2014-10-01">>,
    Headers = [{<<"Host">>, <<"ec2.us-east-1.amazonaws.com">>},
               {<<"Header">>, <<"Value">>}],
    Body = <<"">>,
    SignedHeaders = sign_request(Client, Method, URL, Headers, Body),
    ?assertEqual(true, proplists:is_defined(<<"Authorization">>, SignedHeaders)),
    ?assertEqual(true, proplists:is_defined(<<"X-Amz-Date">>, SignedHeaders)).

sign_request_with_temporary_client_test() ->
    Client = #{access_key_id => <<"access-key-id">>,
               secret_access_key => <<"secret-access-key">>,
               endpoint => <<"amazonaws.com">>,
               region => <<"us-east-1">>,
               token => <<"my-token">>,
               service => <<"ec2">>},
    Method = <<"GET">>,
    URL = <<"https://ec2.us-east-1.amazonaws.com?Action=DescribeInstances&Version=2014-10-01">>,
    Headers = [{<<"Host">>, <<"ec2.us-east-1.amazonaws.com">>},
               {<<"Header">>, <<"Value">>}],
    Body = <<"">>,
    SignedHeaders = sign_request(Client, Method, URL, Headers, Body),
    ?assertEqual(true, proplists:is_defined(<<"Authorization">>, SignedHeaders)),
    ?assertEqual(true, proplists:is_defined(<<"X-Amz-Security-Token">>, SignedHeaders)),
    ?assertEqual(true, proplists:is_defined(<<"X-Amz-Date">>, SignedHeaders)).

%% sign_request/8 generates an AWS signature version 4 for a request and
%% returns a new set of HTTP headers with Authorization and X-Aws-Date
%% header/value pairs added.
sign_request_test() ->
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
    ?assertEqual([{<<"Authorization">>, <<"AWS4-HMAC-SHA256 Credential=access-key-id/20150403/us-east-1/ec2/aws4_request, SignedHeaders=header;host;x-amz-content-sha256;x-amz-date, Signature=65b6f4bd9f9577791a2d4bac1b1390e96352ecb1ac47171cc49ae295a42577c5">>},
                  {<<"X-Amz-Content-SHA256">>, <<"e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855">>},
                  {<<"X-Amz-Date">>, <<"20150403T213117Z">>},
                  {<<"Host">>, <<"ec2.us-east-1.amazonaws.com">>},
                  {<<"Header">>, <<"Value">>}],
    sign_request(AccessKeyID, SecretAccessKey, Region, Service, undefined, Now, Method, URL, Headers, Body)).

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

%% signing_key/4 creates a signing key from a secret access key, short
%% date, region identifier and service identifier.
signing_key_test() ->
    ?assertEqual(
       <<108, 238, 174, 127,  62,  29, 151, 251,
         60,  200, 152, 110,  95, 108, 195, 104,
         208, 222,  84, 216, 129,  34, 102, 127,
         208,  93,  22,  61,  71,  54, 199, 206>>,
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
          <<"/">>,
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
    ?assertEqual({<<"/index">>, <<"one=1&two=2">>},
                 split_url(<<"https://example.com/index?one=1&two=2">>)).

%% split_url/1 splits a URL from its query string, URL encodes the query
%% string, and returns the URL and sorted query string as separate values.
split_url_sorted_test() ->
    ?assertEqual({<<"/index">>, <<"one=1&two=2">>},
                 split_url(<<"https://example.com/index?two=2&one=1">>)).

%% split_url/1 returns an empty binary if no query string is present.
split_url_without_query_string_test() ->
    ?assertEqual({<<"/index">>, <<"">>},
                 split_url(<<"https://example.com/index?">>)).

%% split_url/1 returns an binary if a query string is present.
split_url_with_all_uri_elements_test() ->
    ?assertEqual(
       {<<"/index">>, <<"one=1">>},
       split_url(<<"https://username:secret@example.com:80/index?one=1">>)).

%% split_url/1 returns a patched up binary if a query string with no value is present.
split_url_with_uri_elements_with_no_value_test() ->
    ?assertEqual(
       {<<"/index">>, <<"one=">>},
       split_url(<<"https://username:secret@example.com:80/index?one">>)).

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
               {<<"Host">>, <<"example.com">>},
               {<<"Header">>, <<"Value">>}],
    ?assertEqual(<<"header;host;x-amz-date">>, signed_headers(Headers)).

%% signed_header/1 lowercases the header name.
signed_header_test() ->
    ?assertEqual(<<"host">>, signed_header({<<"Host">>, <<"example.com">>})).

%% signed_header/1 lowercases and strips leading and trailing whitespace
%% from the header name.
signed_header_strips_whitespace_test() ->
    ?assertEqual(<<"host">>, signed_header({<<" Host ">>, <<"example.com">>})).

-endif.
