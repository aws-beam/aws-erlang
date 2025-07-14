%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon S3 on Outposts provides access to S3 on Outposts operations.
-module(aws_s3outposts).

-export([create_endpoint/2,
         create_endpoint/3,
         delete_endpoint/2,
         delete_endpoint/3,
         list_endpoints/1,
         list_endpoints/3,
         list_endpoints/4,
         list_outposts_with_s3/1,
         list_outposts_with_s3/3,
         list_outposts_with_s3/4,
         list_shared_endpoints/2,
         list_shared_endpoints/4,
         list_shared_endpoints/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_endpoint_request() :: #{
%%   <<"AccessType">> => list(any()),
%%   <<"CustomerOwnedIpv4Pool">> => string(),
%%   <<"OutpostId">> := string(),
%%   <<"SecurityGroupId">> := string(),
%%   <<"SubnetId">> := string()
%% }
-type create_endpoint_request() :: #{binary() => any()}.


%% Example:
%% create_endpoint_result() :: #{
%%   <<"EndpointArn">> => string()
%% }
-type create_endpoint_result() :: #{binary() => any()}.


%% Example:
%% delete_endpoint_request() :: #{
%%   <<"EndpointId">> := string(),
%%   <<"OutpostId">> := string()
%% }
-type delete_endpoint_request() :: #{binary() => any()}.


%% Example:
%% endpoint() :: #{
%%   <<"AccessType">> => list(any()),
%%   <<"CidrBlock">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CustomerOwnedIpv4Pool">> => string(),
%%   <<"EndpointArn">> => string(),
%%   <<"FailedReason">> => failed_reason(),
%%   <<"NetworkInterfaces">> => list(network_interface()),
%%   <<"OutpostsId">> => string(),
%%   <<"SecurityGroupId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"SubnetId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type endpoint() :: #{binary() => any()}.


%% Example:
%% failed_reason() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type failed_reason() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_endpoints_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_endpoints_request() :: #{binary() => any()}.


%% Example:
%% list_endpoints_result() :: #{
%%   <<"Endpoints">> => list(endpoint()),
%%   <<"NextToken">> => string()
%% }
-type list_endpoints_result() :: #{binary() => any()}.


%% Example:
%% list_outposts_with_s3_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_outposts_with_s3_request() :: #{binary() => any()}.


%% Example:
%% list_outposts_with_s3_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Outposts">> => list(outpost())
%% }
-type list_outposts_with_s3_result() :: #{binary() => any()}.


%% Example:
%% list_shared_endpoints_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OutpostId">> := string()
%% }
-type list_shared_endpoints_request() :: #{binary() => any()}.


%% Example:
%% list_shared_endpoints_result() :: #{
%%   <<"Endpoints">> => list(endpoint()),
%%   <<"NextToken">> => string()
%% }
-type list_shared_endpoints_result() :: #{binary() => any()}.


%% Example:
%% network_interface() :: #{
%%   <<"NetworkInterfaceId">> => string()
%% }
-type network_interface() :: #{binary() => any()}.


%% Example:
%% outpost() :: #{
%%   <<"CapacityInBytes">> => float(),
%%   <<"OutpostArn">> => string(),
%%   <<"OutpostId">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"S3OutpostArn">> => string()
%% }
-type outpost() :: #{binary() => any()}.


%% Example:
%% outpost_offline_exception() :: #{
%%   <<"Message">> => string()
%% }
-type outpost_offline_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type create_endpoint_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    outpost_offline_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_endpoint_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    outpost_offline_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_endpoints_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_outposts_with_s3_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_shared_endpoints_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an endpoint and associates it with the specified Outpost.
%%
%% It can take up to 5 minutes for this action to finish.
%%
%% Related actions include:
%%
%% DeleteEndpoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html
%%
%% ListEndpoints:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html
-spec create_endpoint(aws_client:aws_client(), create_endpoint_request()) ->
    {ok, create_endpoint_result(), tuple()} |
    {error, any()} |
    {error, create_endpoint_errors(), tuple()}.
create_endpoint(Client, Input) ->
    create_endpoint(Client, Input, []).

-spec create_endpoint(aws_client:aws_client(), create_endpoint_request(), proplists:proplist()) ->
    {ok, create_endpoint_result(), tuple()} |
    {error, any()} |
    {error, create_endpoint_errors(), tuple()}.
create_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/S3Outposts/CreateEndpoint"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an endpoint.
%%
%% It can take up to 5 minutes for this action to finish.
%%
%% Related actions include:
%%
%% CreateEndpoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html
%%
%% ListEndpoints:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html
-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, Input) ->
    delete_endpoint(Client, Input, []).

-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/S3Outposts/DeleteEndpoint"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"endpointId">>, <<"EndpointId">>},
                     {<<"outpostId">>, <<"OutpostId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists endpoints associated with the specified Outpost.
%%
%% Related actions include:
%%
%% CreateEndpoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html
%%
%% DeleteEndpoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html
-spec list_endpoints(aws_client:aws_client()) ->
    {ok, list_endpoints_result(), tuple()} |
    {error, any()} |
    {error, list_endpoints_errors(), tuple()}.
list_endpoints(Client)
  when is_map(Client) ->
    list_endpoints(Client, #{}, #{}).

-spec list_endpoints(aws_client:aws_client(), map(), map()) ->
    {ok, list_endpoints_result(), tuple()} |
    {error, any()} |
    {error, list_endpoints_errors(), tuple()}.
list_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_endpoints(Client, QueryMap, HeadersMap, []).

-spec list_endpoints(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_endpoints_result(), tuple()} |
    {error, any()} |
    {error, list_endpoints_errors(), tuple()}.
list_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/S3Outposts/ListEndpoints"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Outposts with S3 on Outposts capacity for your Amazon Web
%% Services account.
%%
%% Includes S3 on Outposts that you have access to as the Outposts owner, or
%% as a shared user
%% from Resource Access Manager (RAM).
-spec list_outposts_with_s3(aws_client:aws_client()) ->
    {ok, list_outposts_with_s3_result(), tuple()} |
    {error, any()} |
    {error, list_outposts_with_s3_errors(), tuple()}.
list_outposts_with_s3(Client)
  when is_map(Client) ->
    list_outposts_with_s3(Client, #{}, #{}).

-spec list_outposts_with_s3(aws_client:aws_client(), map(), map()) ->
    {ok, list_outposts_with_s3_result(), tuple()} |
    {error, any()} |
    {error, list_outposts_with_s3_errors(), tuple()}.
list_outposts_with_s3(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_outposts_with_s3(Client, QueryMap, HeadersMap, []).

-spec list_outposts_with_s3(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_outposts_with_s3_result(), tuple()} |
    {error, any()} |
    {error, list_outposts_with_s3_errors(), tuple()}.
list_outposts_with_s3(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/S3Outposts/ListOutpostsWithS3"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all endpoints associated with an Outpost that has been shared
%% by Amazon Web Services Resource Access Manager (RAM).
%%
%% Related actions include:
%%
%% CreateEndpoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html
%%
%% DeleteEndpoint:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html
-spec list_shared_endpoints(aws_client:aws_client(), binary() | list()) ->
    {ok, list_shared_endpoints_result(), tuple()} |
    {error, any()} |
    {error, list_shared_endpoints_errors(), tuple()}.
list_shared_endpoints(Client, OutpostId)
  when is_map(Client) ->
    list_shared_endpoints(Client, OutpostId, #{}, #{}).

-spec list_shared_endpoints(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_shared_endpoints_result(), tuple()} |
    {error, any()} |
    {error, list_shared_endpoints_errors(), tuple()}.
list_shared_endpoints(Client, OutpostId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_shared_endpoints(Client, OutpostId, QueryMap, HeadersMap, []).

-spec list_shared_endpoints(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_shared_endpoints_result(), tuple()} |
    {error, any()} |
    {error, list_shared_endpoints_errors(), tuple()}.
list_shared_endpoints(Client, OutpostId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/S3Outposts/ListSharedEndpoints"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"outpostId">>, OutpostId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"s3-outposts">>},
    Host = build_host(<<"s3-outposts">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
