%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With License Manager, you can discover and track your commercial
%% Linux subscriptions on running
%% Amazon EC2 instances.
-module(aws_license_manager_linux_subscriptions).

-export([get_service_settings/2,
         get_service_settings/3,
         list_linux_subscription_instances/2,
         list_linux_subscription_instances/3,
         list_linux_subscriptions/2,
         list_linux_subscriptions/3,
         update_service_settings/2,
         update_service_settings/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% filter() :: #{
%%   <<"Name">> => [string()],
%%   <<"Operator">> => string(),
%%   <<"Values">> => list([string()]())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% get_service_settings_request() :: #{}
-type get_service_settings_request() :: #{}.


%% Example:
%% get_service_settings_response() :: #{
%%   <<"HomeRegions">> => list([string()]()),
%%   <<"LinuxSubscriptionsDiscovery">> => string(),
%%   <<"LinuxSubscriptionsDiscoverySettings">> => linux_subscriptions_discovery_settings(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => map()
%% }
-type get_service_settings_response() :: #{binary() => any()}.


%% Example:
%% instance() :: #{
%%   <<"AccountID">> => [string()],
%%   <<"AmiId">> => [string()],
%%   <<"InstanceID">> => [string()],
%%   <<"InstanceType">> => [string()],
%%   <<"LastUpdatedTime">> => [string()],
%%   <<"ProductCode">> => list([string()]()),
%%   <<"Region">> => [string()],
%%   <<"Status">> => [string()],
%%   <<"SubscriptionName">> => [string()],
%%   <<"UsageOperation">> => [string()]
%% }
-type instance() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% linux_subscriptions_discovery_settings() :: #{
%%   <<"OrganizationIntegration">> => string(),
%%   <<"SourceRegions">> => list([string()]())
%% }
-type linux_subscriptions_discovery_settings() :: #{binary() => any()}.


%% Example:
%% list_linux_subscription_instances_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_linux_subscription_instances_request() :: #{binary() => any()}.


%% Example:
%% list_linux_subscription_instances_response() :: #{
%%   <<"Instances">> => list(instance()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_linux_subscription_instances_response() :: #{binary() => any()}.


%% Example:
%% list_linux_subscriptions_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_linux_subscriptions_request() :: #{binary() => any()}.


%% Example:
%% list_linux_subscriptions_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"Subscriptions">> => list(subscription()())
%% }
-type list_linux_subscriptions_response() :: #{binary() => any()}.


%% Example:
%% subscription() :: #{
%%   <<"InstanceCount">> => float(),
%%   <<"Name">> => [string()],
%%   <<"Type">> => [string()]
%% }
-type subscription() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_service_settings_request() :: #{
%%   <<"AllowUpdate">> => [boolean()],
%%   <<"LinuxSubscriptionsDiscovery">> := string(),
%%   <<"LinuxSubscriptionsDiscoverySettings">> := linux_subscriptions_discovery_settings()
%% }
-type update_service_settings_request() :: #{binary() => any()}.


%% Example:
%% update_service_settings_response() :: #{
%%   <<"HomeRegions">> => list([string()]()),
%%   <<"LinuxSubscriptionsDiscovery">> => string(),
%%   <<"LinuxSubscriptionsDiscoverySettings">> => linux_subscriptions_discovery_settings(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => map()
%% }
-type update_service_settings_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type get_service_settings_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

-type list_linux_subscription_instances_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

-type list_linux_subscriptions_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

-type update_service_settings_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Lists the Linux subscriptions service settings.
-spec get_service_settings(aws_client:aws_client(), get_service_settings_request()) ->
    {ok, get_service_settings_response(), tuple()} |
    {error, any()} |
    {error, get_service_settings_errors(), tuple()}.
get_service_settings(Client, Input) ->
    get_service_settings(Client, Input, []).

-spec get_service_settings(aws_client:aws_client(), get_service_settings_request(), proplists:proplist()) ->
    {ok, get_service_settings_response(), tuple()} |
    {error, any()} |
    {error, get_service_settings_errors(), tuple()}.
get_service_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/GetServiceSettings"],
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

%% @doc Lists the running Amazon EC2 instances that were discovered with
%% commercial Linux
%% subscriptions.
-spec list_linux_subscription_instances(aws_client:aws_client(), list_linux_subscription_instances_request()) ->
    {ok, list_linux_subscription_instances_response(), tuple()} |
    {error, any()} |
    {error, list_linux_subscription_instances_errors(), tuple()}.
list_linux_subscription_instances(Client, Input) ->
    list_linux_subscription_instances(Client, Input, []).

-spec list_linux_subscription_instances(aws_client:aws_client(), list_linux_subscription_instances_request(), proplists:proplist()) ->
    {ok, list_linux_subscription_instances_response(), tuple()} |
    {error, any()} |
    {error, list_linux_subscription_instances_errors(), tuple()}.
list_linux_subscription_instances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/ListLinuxSubscriptionInstances"],
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

%% @doc Lists the Linux subscriptions that have been discovered.
%%
%% If you have linked your
%% organization, the returned results will include data aggregated across
%% your accounts in
%% Organizations.
-spec list_linux_subscriptions(aws_client:aws_client(), list_linux_subscriptions_request()) ->
    {ok, list_linux_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_linux_subscriptions_errors(), tuple()}.
list_linux_subscriptions(Client, Input) ->
    list_linux_subscriptions(Client, Input, []).

-spec list_linux_subscriptions(aws_client:aws_client(), list_linux_subscriptions_request(), proplists:proplist()) ->
    {ok, list_linux_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_linux_subscriptions_errors(), tuple()}.
list_linux_subscriptions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/ListLinuxSubscriptions"],
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

%% @doc Updates the service settings for Linux subscriptions.
-spec update_service_settings(aws_client:aws_client(), update_service_settings_request()) ->
    {ok, update_service_settings_response(), tuple()} |
    {error, any()} |
    {error, update_service_settings_errors(), tuple()}.
update_service_settings(Client, Input) ->
    update_service_settings(Client, Input, []).

-spec update_service_settings(aws_client:aws_client(), update_service_settings_request(), proplists:proplist()) ->
    {ok, update_service_settings_response(), tuple()} |
    {error, any()} |
    {error, update_service_settings_errors(), tuple()}.
update_service_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/subscription/UpdateServiceSettings"],
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
    Client1 = Client#{service => <<"license-manager-linux-subscriptions">>},
    Host = build_host(<<"license-manager-linux-subscriptions">>, Client1),
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
