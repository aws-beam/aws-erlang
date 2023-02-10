%%%% @doc
%%%
%%% Allows generating either a get or put presigned s3 url.
%%% This can be used by external clients such as cURL to access the object in question.
%%%
%%% See:
%%%   - https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
%%%   - https://docs.aws.amazon.com/AmazonS3/latest/userguide/ShareObjectPreSignedURL.html
-module(aws_s3_presigned_url).

-export([ make_presigned_v4_url/5
        ]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================
-spec make_presigned_v4_url(map(), get | put, integer(), binary(), binary()) -> {ok, binary()}.
make_presigned_v4_url(Client0, Method, ExpireSeconds, Bucket, Key) ->
    MethodBin = aws_request:method_to_binary(Method),
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],
    Client = Client0#{service => <<"s3">>},
    SecurityToken = maps:get(token, Client, undefined),
    AccessKeyID = maps:get(access_key_id, Client),
    Region = maps:get(region, Client),
    Host = build_host(<<"s3">>, Client, Bucket),
    {BaseHost, URL0} = build_url(Host, Path, Client, Bucket),
    Now = calendar:universal_time(),
    ShortDate = list_to_binary(ec_date:format("Ymd", Now)),
    Credential = make_credential(AccessKeyID, ShortDate, Region),
    Headers0 = [{<<"Host">>, Host},
                {<<"X-Amz-Algorithm">>, <<"AWS4-HMAC-SHA256">>},
                {<<"X-Amz-Credential">>, Credential},
                {<<"X-Amz-Date">>, list_to_binary(ec_date:format("YmdTHisZ", Now))},
                {<<"X-Amz-Expires">>, integer_to_binary(ExpireSeconds)},
                {<<"X-Amz-SignedHeaders">>, <<"host">>}
               ],
    Headers = maybe_add_security_token(Headers0, SecurityToken),
    Signature = sign_request(Client, MethodBin, BaseHost, aws_request:add_query(URL0, Headers), [{<<"Host">>, BaseHost}], Now, <<"UNSIGNED-PAYLOAD">>),
    FinalHeaders = lists:keysort(1, [{<<"X-Amz-Signature">>, Signature} | Headers]),
    {ok, aws_request:add_query(URL0, FinalHeaders)}.

%%====================================================================
%% Internal functions
%%====================================================================
build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}, undefined) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}, _Bucket) ->
    <<Endpoint/binary>>;
build_host(_EndpointPrefix, #{region := <<"local">>}, undefined) ->
    "localhost";
build_host(_EndpointPrefix, #{region := <<"local">>}, _Bucket) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}, undefined) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>);
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}, Bucket) ->
    aws_util:binary_join([Bucket, EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host0, Path0, Client, Bucket) ->
    Proto = maps:get(proto, Client),
    %% Mocks are notoriously bad with host-style requests, just skip it and use path-style for anything local
    %% At some points once the mocks catch up, we should remove this ugly hack...
    Host1 = erlang:iolist_to_binary(Host0),
    IsLocalHost = maps:get(region, Client) =:= <<"local">>,
    Path = erlang:iolist_to_binary(Path0),
    Host = case Bucket of
             _ when not IsLocalHost andalso Bucket =/= undefined ->
               erlang:iolist_to_binary(string:replace(Host1, <<Bucket/binary, ".">>, <<"">>, all));
             _ ->
              Host1
           end,
    Port = maps:get(port, Client),
    {Host, aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>)}.

make_credential(AccessKeyID, ShortDate, Region) ->
    <<AccessKeyID/binary, "/", ShortDate/binary, "/", Region/binary, "/", "s3/aws4_request">>.

maybe_add_security_token(Headers, undefined) ->
    Headers;
maybe_add_security_token(Headers, SecurityToken) ->
    [{<<"X-Amz-Security-Token">>, SecurityToken} | Headers].

%% Generate headers with an AWS signature version 4 for the specified
%% request.
sign_request(Client, Method, Host, URL, Headers, Now, Body) ->
    AccessKeyID = maps:get(access_key_id, Client),
    SecretAccessKey = maps:get(secret_access_key, Client),
    Region = maps:get(region, Client),
    Service = maps:get(service, Client),
    Token = maps:get(token, Client, undefined),
    sign_request(AccessKeyID, SecretAccessKey, Region, Service, Token, Now,
                 Method, Host, URL, Headers, Body).

%% Generate headers with an AWS signature version 4 for the specified
%% request using the specified time when generating signatures.
sign_request(_AccessKeyID, SecretAccessKey, Region, Service, _Token, Now,
             Method, Host, URL, Headers0, Body) ->
    LongDate = list_to_binary(ec_date:format("YmdTHisZ", Now)),
    ShortDate = list_to_binary(ec_date:format("Ymd", Now)),
    CanonicalRequest = canonical_request(Method, Host, URL, Headers0, Body),
    HashedCanonicalRequest = aws_util:sha256_hexdigest(CanonicalRequest),
    CredentialScope = aws_request:credential_scope(ShortDate, Region, Service),
    SigningKey = aws_request:signing_key(SecretAccessKey, ShortDate, Region, Service),
    StringToSign = aws_request:string_to_sign(LongDate, CredentialScope,
                                              HashedCanonicalRequest),
    aws_util:hmac_sha256_hexdigest(SigningKey, StringToSign).

%% Process and merge request values into a canonical request for AWS
%% signature version 4.
canonical_request(Method, _Host, URL, Headers, _Body) ->
    {CanonicalURL, CanonicalQueryString} = aws_request:split_url(URL),
    CanonicalHeaders = aws_request:canonical_headers(Headers),
    SignedHeaders = aws_request:signed_headers(Headers),
    aws_util:binary_join([Method, CanonicalURL, CanonicalQueryString,
                          CanonicalHeaders, SignedHeaders, <<"UNSIGNED-PAYLOAD">>],
                         <<"\n">>).

%%====================================================================
%% Unit tests
%%====================================================================

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

presigned_url_test() ->
    Client = aws_client:make_temporary_client(<<"AccessKeyID">>, <<"SecretAccessKey">>,
                                              <<"Token">>, <<"eu-west-1">>),
    {ok, Url} = aws_s3_presigned_url:make_presigned_v4_url(Client, put, 3600, <<"bucket">>, <<"key">>),
    HackneyUrl = hackney_url:parse_url(Url),
    ParsedQs = hackney_url:parse_qs(HackneyUrl#hackney_url.qs),
    Credential = proplists:get_value(<<"X-Amz-Credential">>, ParsedQs),
    [AccessKeyId, _ShortDate, Region, Service, Request] = binary:split(Credential, <<"/">>, [global]),
    ?assertEqual(https, HackneyUrl#hackney_url.scheme),
    ?assertEqual(443, HackneyUrl#hackney_url.port),
    ?assertEqual("s3.eu-west-1.amazonaws.com", HackneyUrl#hackney_url.host),
    ?assertEqual(<<"/bucket/key">>, HackneyUrl#hackney_url.path),
    ?assertEqual(8, length(ParsedQs)),
    ?assertEqual(<<"AccessKeyID">>, AccessKeyId),
    ?assertEqual(<<"eu-west-1">>, Region),
    ?assertEqual(<<"s3">>, Service),
    ?assertEqual(<<"aws4_request">>, Request),
    ?assertEqual(<<"bucket.s3.eu-west-1.amazonaws.com">>, proplists:get_value(<<"Host">>, ParsedQs)),
    ?assertEqual(<<"AWS4-HMAC-SHA256">>, proplists:get_value(<<"X-Amz-Algorithm">>, ParsedQs)),
    ?assertEqual(<<"3600">>, proplists:get_value(<<"X-Amz-Expires">>, ParsedQs)),
    ?assertEqual(<<"Token">>, proplists:get_value(<<"X-Amz-Security-Token">>, ParsedQs)),
    ?assertEqual(<<"host">>, proplists:get_value(<<"X-Amz-SignedHeaders">>, ParsedQs)).

-endif.
