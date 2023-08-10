%%%% @doc
%%%
%%% Allows generating either a get or put presigned s3 url.
%%% This can be used by external clients such as cURL to access the object in question.
%%%
%%% See:
%%%   - https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
%%%   - https://docs.aws.amazon.com/AmazonS3/latest/userguide/ShareObjectPreSignedURL.html
-module(aws_s3_presigned_url).

-export([ make_presigned_v4_url/5,
          make_presigned_v4_url/6
        ]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================
-spec make_presigned_v4_url(map(), get | put, integer(), binary(), binary()) -> {ok, binary()}.
make_presigned_v4_url(Client0, Method, ExpireSeconds, Bucket, Key) ->
    make_presigned_v4_url(Client0, Method, ExpireSeconds, Bucket, Key, path).

-spec make_presigned_v4_url(map(), get | put, integer(), binary(), binary(),path|virtual_host) -> {ok, binary()}.
make_presigned_v4_url(Client0, Method, ExpireSeconds, Bucket, Key, Style) ->
    MethodBin = aws_request:method_to_binary(Method),
    Path = build_path(Client0,Bucket,Key,Style),
    Client = Client0#{service => <<"s3">>},
    SecurityToken = aws_client:token(Client),
    AccessKeyID = aws_client:access_key_id(Client),
    SecretAccessKey = aws_client:secret_access_key(Client),
    Region = aws_client:region(Client),
    Service = aws_client:service(Client),
    Host = build_host(<<"s3">>, Client, Bucket,Style),
    URL = build_url(Host, Path, Client),
    Now = calendar:universal_time(),
    Options0 = [ {ttl, ExpireSeconds}
               , {body_digest, <<"UNSIGNED-PAYLOAD">>}
               ],
    Options = case SecurityToken of
                undefined ->
                  Options0;
                _ ->
                  [{session_token, hackney_url:urlencode(SecurityToken)} | Options0]
              end,
    {ok, aws_signature:sign_v4_query_params(AccessKeyID, SecretAccessKey, Region, Service, Now, MethodBin, URL, Options)}.

%%====================================================================
%% Internal functions
%%====================================================================
%% Mocks are notoriously bad with host-style requests, just skip it and use path-style for anything local
%% At some points once the mocks catch up, we should remove this ugly hacks...
build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}, _Bucket, _Style) ->
    <<Endpoint/binary>>;
build_host(_EndpointPrefix, #{region := <<"local">>}, _Bucket, _Style) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}, _Bucket, path = _Style) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>);
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}, Bucket, virtual_host = _Style) ->
    aws_util:binary_join([Bucket, EndpointPrefix, Region, Endpoint], <<".">>).

build_path(#{region := <<"local">>} = _Client,Bucket,Key, path = _Style) ->
    ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""];
build_path(_Client,Bucket,Key, path = _Style) ->
    ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""];
build_path(_Client,_Bucket,Key,virtual_host = _Style) ->
    ["/", aws_util:encode_multi_segment_uri(Key), ""].

build_url(Host0, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Host = erlang:iolist_to_binary(Host0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

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
    ?assertEqual(7, length(ParsedQs)),
    ?assertEqual(<<"AccessKeyID">>, AccessKeyId),
    ?assertEqual(<<"eu-west-1">>, Region),
    ?assertEqual(<<"s3">>, Service),
    ?assertEqual(<<"aws4_request">>, Request),
    ?assertEqual(<<"AWS4-HMAC-SHA256">>, proplists:get_value(<<"X-Amz-Algorithm">>, ParsedQs)),
    ?assertEqual(<<"3600">>, proplists:get_value(<<"X-Amz-Expires">>, ParsedQs)),
    ?assertEqual(<<"Token">>, proplists:get_value(<<"X-Amz-Security-Token">>, ParsedQs)),
    ?assertEqual(<<"host">>, proplists:get_value(<<"X-Amz-SignedHeaders">>, ParsedQs)).

presigned_url_local_with_endpoint_test() ->
    Client = aws_client:make_temporary_client(<<"AccessKeyID">>, <<"SecretAccessKey">>,
                                              <<"Token">>, <<"local">>),
    {ok, Url} = aws_s3_presigned_url:make_presigned_v4_url(Client, put, 3600, <<"bucket">>, <<"key">>),
    HackneyUrl = hackney_url:parse_url(Url),
    ParsedQs = hackney_url:parse_qs(HackneyUrl#hackney_url.qs),
    Credential = proplists:get_value(<<"X-Amz-Credential">>, ParsedQs),
    [AccessKeyId, _ShortDate, Region, Service, Request] = binary:split(Credential, <<"/">>, [global]),
    ?assertEqual(https, HackneyUrl#hackney_url.scheme),
    ?assertEqual(443, HackneyUrl#hackney_url.port),
    ?assertEqual("amazonaws.com", HackneyUrl#hackney_url.host),
    ?assertEqual(<<"/bucket/key">>, HackneyUrl#hackney_url.path),
    ?assertEqual(7, length(ParsedQs)),
    ?assertEqual(<<"AccessKeyID">>, AccessKeyId),
    ?assertEqual(<<"local">>, Region),
    ?assertEqual(<<"s3">>, Service),
    ?assertEqual(<<"aws4_request">>, Request),
    ?assertEqual(<<"AWS4-HMAC-SHA256">>, proplists:get_value(<<"X-Amz-Algorithm">>, ParsedQs)),
    ?assertEqual(<<"3600">>, proplists:get_value(<<"X-Amz-Expires">>, ParsedQs)),
    ?assertEqual(<<"Token">>, proplists:get_value(<<"X-Amz-Security-Token">>, ParsedQs)),
    ?assertEqual(<<"host">>, proplists:get_value(<<"X-Amz-SignedHeaders">>, ParsedQs)).

presigned_url_local_without_endpoint_test() ->
    Client0 = aws_client:make_temporary_client(<<"AccessKeyID">>, <<"SecretAccessKey">>,
                                              <<"Token">>, <<"local">>),
    Client = maps:without([endpoint],Client0),
    {ok, Url} = aws_s3_presigned_url:make_presigned_v4_url(Client, put, 3600, <<"bucket">>, <<"key">>),
    HackneyUrl = hackney_url:parse_url(Url),
    ParsedQs = hackney_url:parse_qs(HackneyUrl#hackney_url.qs),
    Credential = proplists:get_value(<<"X-Amz-Credential">>, ParsedQs),
    [AccessKeyId, _ShortDate, Region, Service, Request] = binary:split(Credential, <<"/">>, [global]),
    ?assertEqual(https, HackneyUrl#hackney_url.scheme),
    ?assertEqual(443, HackneyUrl#hackney_url.port),
    ?assertEqual("localhost", HackneyUrl#hackney_url.host),
    ?assertEqual(<<"/bucket/key">>, HackneyUrl#hackney_url.path),
    ?assertEqual(7, length(ParsedQs)),
    ?assertEqual(<<"AccessKeyID">>, AccessKeyId),
    ?assertEqual(<<"local">>, Region),
    ?assertEqual(<<"s3">>, Service),
    ?assertEqual(<<"aws4_request">>, Request),
    ?assertEqual(<<"AWS4-HMAC-SHA256">>, proplists:get_value(<<"X-Amz-Algorithm">>, ParsedQs)),
    ?assertEqual(<<"3600">>, proplists:get_value(<<"X-Amz-Expires">>, ParsedQs)),
    ?assertEqual(<<"Token">>, proplists:get_value(<<"X-Amz-Security-Token">>, ParsedQs)),
    ?assertEqual(<<"host">>, proplists:get_value(<<"X-Amz-SignedHeaders">>, ParsedQs)).

presigned_url_local_without_without_bucket_does_not_work_test() ->
    Client = aws_client:make_temporary_client(<<"AccessKeyID">>, <<"SecretAccessKey">>,
                                              <<"Token">>, <<"local">>),
    ?assertException (error,function_clause,aws_s3_presigned_url:make_presigned_v4_url(Client, put, 3600, undefined, <<"key">>)).

presigned_url_path_style_test() ->
    Client = aws_client:make_temporary_client(<<"AccessKeyID">>, <<"SecretAccessKey">>,
                                              <<"Token">>, <<"eu-west-1">>),
    {ok, Url} = aws_s3_presigned_url:make_presigned_v4_url(Client, put, 3600, <<"bucket">>, <<"key">>,path),
    HackneyUrl = hackney_url:parse_url(Url),
    ParsedQs = hackney_url:parse_qs(HackneyUrl#hackney_url.qs),
    Credential = proplists:get_value(<<"X-Amz-Credential">>, ParsedQs),
    [AccessKeyId, _ShortDate, Region, Service, Request] = binary:split(Credential, <<"/">>, [global]),
    ?assertEqual(https, HackneyUrl#hackney_url.scheme),
    ?assertEqual(443, HackneyUrl#hackney_url.port),
    ?assertEqual("s3.eu-west-1.amazonaws.com", HackneyUrl#hackney_url.host),
    ?assertEqual(<<"/bucket/key">>, HackneyUrl#hackney_url.path),
    ?assertEqual(7, length(ParsedQs)),
    ?assertEqual(<<"AccessKeyID">>, AccessKeyId),
    ?assertEqual(<<"eu-west-1">>, Region),
    ?assertEqual(<<"s3">>, Service),
    ?assertEqual(<<"aws4_request">>, Request),
    ?assertEqual(<<"AWS4-HMAC-SHA256">>, proplists:get_value(<<"X-Amz-Algorithm">>, ParsedQs)),
    ?assertEqual(<<"3600">>, proplists:get_value(<<"X-Amz-Expires">>, ParsedQs)),
    ?assertEqual(<<"Token">>, proplists:get_value(<<"X-Amz-Security-Token">>, ParsedQs)),
    ?assertEqual(<<"host">>, proplists:get_value(<<"X-Amz-SignedHeaders">>, ParsedQs)).

presigned_url_virtual_host_style_test() ->
    Client = aws_client:make_temporary_client(<<"AccessKeyID">>, <<"SecretAccessKey">>,
                                              <<"Token">>, <<"eu-west-1">>),
    {ok, Url} = aws_s3_presigned_url:make_presigned_v4_url(Client, put, 3600, <<"bucket">>, <<"key">>,virtual_host),
    HackneyUrl = hackney_url:parse_url(Url),
    ParsedQs = hackney_url:parse_qs(HackneyUrl#hackney_url.qs),
    Credential = proplists:get_value(<<"X-Amz-Credential">>, ParsedQs),
    [AccessKeyId, _ShortDate, Region, Service, Request] = binary:split(Credential, <<"/">>, [global]),
    ?assertEqual(https, HackneyUrl#hackney_url.scheme),
    ?assertEqual(443, HackneyUrl#hackney_url.port),
    ?assertEqual("bucket.s3.eu-west-1.amazonaws.com", HackneyUrl#hackney_url.host),
    ?assertEqual(<<"/key">>, HackneyUrl#hackney_url.path),
    ?assertEqual(7, length(ParsedQs)),
    ?assertEqual(<<"AccessKeyID">>, AccessKeyId),
    ?assertEqual(<<"eu-west-1">>, Region),
    ?assertEqual(<<"s3">>, Service),
    ?assertEqual(<<"aws4_request">>, Request),
    ?assertEqual(<<"AWS4-HMAC-SHA256">>, proplists:get_value(<<"X-Amz-Algorithm">>, ParsedQs)),
    ?assertEqual(<<"3600">>, proplists:get_value(<<"X-Amz-Expires">>, ParsedQs)),
    ?assertEqual(<<"Token">>, proplists:get_value(<<"X-Amz-Security-Token">>, ParsedQs)),
    ?assertEqual(<<"host">>, proplists:get_value(<<"X-Amz-SignedHeaders">>, ParsedQs)).
-endif.
