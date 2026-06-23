%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Lambda Core is a set of APIs for managing shared infrastructure
%% resources used by AWS Lambda.
%%
%% The Lambda Core API provides operations for creating and managing network
%% connectors that enable Lambda MicroVMs to access resources in your Amazon
%% Virtual Private Cloud (Amazon VPC).
%%
%% Network connectors provision elastic network interfaces (ENIs) in your VPC
%% subnets, providing a managed network path from Lambda compute environments
%% to private resources such as Amazon RDS databases, Amazon ElastiCache
%% clusters, and internal APIs. You create a network connector once and
%% attach it to one or more Lambda MicroVMs at run time.
-module(aws_lambda_core).

-export([create_network_connector/2,
         create_network_connector/3,
         delete_network_connector/3,
         delete_network_connector/4,
         get_network_connector/2,
         get_network_connector/4,
         get_network_connector/5,
         list_network_connectors/1,
         list_network_connectors/3,
         list_network_connectors/4,
         update_network_connector/3,
         update_network_connector/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_network_connector_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Configuration">> := list(),
%%   <<"Name">> := string(),
%%   <<"OperatorRole">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_network_connector_request() :: #{binary() => any()}.


%% Example:
%% create_network_connector_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Configuration">> => list(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"OperatorRole">> => string(),
%%   <<"State">> => list(any())
%% }
-type create_network_connector_response() :: #{binary() => any()}.

%% Example:
%% delete_network_connector_request() :: #{}
-type delete_network_connector_request() :: #{}.


%% Example:
%% delete_network_connector_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Configuration">> => list(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"OperatorRole">> => string(),
%%   <<"State">> => list(any())
%% }
-type delete_network_connector_response() :: #{binary() => any()}.

%% Example:
%% get_network_connector_request() :: #{}
-type get_network_connector_request() :: #{}.


%% Example:
%% get_network_connector_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Configuration">> => list(),
%%   <<"Id">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"LastUpdateStatus">> => list(any()),
%%   <<"LastUpdateStatusReason">> => string(),
%%   <<"LastUpdateStatusReasonCode">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"OperatorRole">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string(),
%%   <<"StateReasonCode">> => list(any()),
%%   <<"Version">> => float()
%% }
-type get_network_connector_response() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.


%% Example:
%% list_network_connectors_request() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"State">> => list(any())
%% }
-type list_network_connectors_request() :: #{binary() => any()}.


%% Example:
%% list_network_connectors_response() :: #{
%%   <<"NetworkConnectors">> => list(network_connector_summary()),
%%   <<"NextMarker">> => string()
%% }
-type list_network_connectors_response() :: #{binary() => any()}.


%% Example:
%% network_connector_limit_exceeded_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type network_connector_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% network_connector_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type network_connector_summary() :: #{binary() => any()}.


%% Example:
%% network_connector_vpc_egress_configuration() :: #{
%%   <<"AssociatedComputeResourceTypes">> => list(list(any())()),
%%   <<"NetworkProtocol">> => list(any()),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type network_connector_vpc_egress_configuration() :: #{binary() => any()}.


%% Example:
%% resource_conflict_exception() :: #{
%%   <<"Type">> => string(),
%%   <<"message">> => string()
%% }
-type resource_conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type service_exception() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Reason">> => list(any()),
%%   <<"Type">> => string(),
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% update_network_connector_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Configuration">> => list(),
%%   <<"OperatorRole">> => string()
%% }
-type update_network_connector_request() :: #{binary() => any()}.


%% Example:
%% update_network_connector_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Configuration">> => list(),
%%   <<"Id">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"LastUpdateStatus">> => list(any()),
%%   <<"LastUpdateStatusReason">> => string(),
%%   <<"Name">> => string(),
%%   <<"OperatorRole">> => string(),
%%   <<"State">> => list(any())
%% }
-type update_network_connector_response() :: #{binary() => any()}.

-type create_network_connector_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_conflict_exception() | 
    network_connector_limit_exceeded_exception() | 
    invalid_parameter_value_exception().

-type delete_network_connector_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

-type get_network_connector_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_value_exception().

-type list_network_connectors_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    invalid_parameter_value_exception().

-type update_network_connector_errors() ::
    too_many_requests_exception() | 
    service_exception() | 
    resource_not_found_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_value_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a network connector that enables Lambda compute resources to
%% route outbound traffic through your Amazon VPC.
%%
%% The network connector provisions elastic network interfaces (ENIs) in the
%% subnets you specify, providing a managed network path to private resources
%% such as databases, caches, and internal APIs.
%%
%% This operation is asynchronous. The network connector starts in
%% `PENDING' state while ENIs are provisioned in your VPC (provisioning
%% typically takes up to 10 minutes). Use `GetNetworkConnector' to poll
%% the connector state until it reaches `ACTIVE'. Once active, you can
%% attach the connector to Lambda MicroVMs at run time using the
%% `egressNetworkConnectors' parameter on `RunMicroVm'.
%%
%% This operation is idempotent when you provide a `ClientToken' — if you
%% retry a request that completed successfully using the same client token,
%% the operation returns the existing connector without creating a duplicate.
-spec create_network_connector(aws_client:aws_client(), create_network_connector_request()) ->
    {ok, create_network_connector_response(), tuple()} |
    {error, any()} |
    {error, create_network_connector_errors(), tuple()}.
create_network_connector(Client, Input) ->
    create_network_connector(Client, Input, []).

-spec create_network_connector(aws_client:aws_client(), create_network_connector_request(), proplists:proplist()) ->
    {ok, create_network_connector_response(), tuple()} |
    {error, any()} |
    {error, create_network_connector_errors(), tuple()}.
create_network_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2026-04-04/network-connectors"],
    SuccessStatusCode = 202,
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

%% @doc Initiates deletion of a network connector.
%%
%% The connector transitions to `DELETING' state while elastic network
%% interfaces are cleaned up asynchronously. After deletion completes,
%% subsequent calls to `GetNetworkConnector' return
%% `ResourceNotFoundException'.
%%
%% This operation is idempotent — calling delete on a connector that is
%% already deleting or has been deleted succeeds without error. You can
%% delete connectors in `ACTIVE' or `FAILED' states. Before deleting
%% a connector, ensure that no Lambda MicroVMs are using it, as they will
%% lose VPC egress connectivity immediately.
-spec delete_network_connector(aws_client:aws_client(), binary() | list(), delete_network_connector_request()) ->
    {ok, delete_network_connector_response(), tuple()} |
    {error, any()} |
    {error, delete_network_connector_errors(), tuple()}.
delete_network_connector(Client, Identifier, Input) ->
    delete_network_connector(Client, Identifier, Input, []).

-spec delete_network_connector(aws_client:aws_client(), binary() | list(), delete_network_connector_request(), proplists:proplist()) ->
    {ok, delete_network_connector_response(), tuple()} |
    {error, any()} |
    {error, delete_network_connector_errors(), tuple()}.
delete_network_connector(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/2026-04-04/network-connectors/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 202,
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

%% @doc Retrieves the current configuration, state, and metadata of a network
%% connector.
%%
%% The `Identifier' parameter accepts the connector ID, name, or full
%% ARN. Use this operation to poll connector state after creation or update,
%% or to inspect the current VPC configuration and any failure reasons.
%%
%% The response includes the full connector configuration, current state, and
%% — if the connector has been updated — the `LastUpdateStatus' and
%% `LastUpdateStatusReasonCode' fields that indicate whether the most
%% recent update succeeded or failed.
-spec get_network_connector(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_connector_response(), tuple()} |
    {error, any()} |
    {error, get_network_connector_errors(), tuple()}.
get_network_connector(Client, Identifier)
  when is_map(Client) ->
    get_network_connector(Client, Identifier, #{}, #{}).

-spec get_network_connector(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_connector_response(), tuple()} |
    {error, any()} |
    {error, get_network_connector_errors(), tuple()}.
get_network_connector(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_connector(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_network_connector(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_connector_response(), tuple()} |
    {error, any()} |
    {error, get_network_connector_errors(), tuple()}.
get_network_connector(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-04-04/network-connectors/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of network connectors in your account for
%% the current Region.
%%
%% You can optionally filter results by connector state. Use the `Marker'
%% parameter from a previous response to retrieve the next page of results.
%%
%% Each item in the response includes the connector ARN, name, ID, type,
%% current state, and last modified timestamp. To retrieve full configuration
%% details for a specific connector, use `GetNetworkConnector'.
-spec list_network_connectors(aws_client:aws_client()) ->
    {ok, list_network_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_network_connectors_errors(), tuple()}.
list_network_connectors(Client)
  when is_map(Client) ->
    list_network_connectors(Client, #{}, #{}).

-spec list_network_connectors(aws_client:aws_client(), map(), map()) ->
    {ok, list_network_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_network_connectors_errors(), tuple()}.
list_network_connectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_network_connectors(Client, QueryMap, HeadersMap, []).

-spec list_network_connectors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_network_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_network_connectors_errors(), tuple()}.
list_network_connectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2026-04-04/network-connectors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"State">>, maps:get(<<"State">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates the VPC configuration or operator role of an existing network
%% connector.
%%
%% You can modify the subnet IDs, security group IDs, network protocol, or
%% operator role. The connector must be in `ACTIVE' state to accept
%% updates.
%%
%% This operation is asynchronous. The connector remains in `ACTIVE'
%% state during the update — existing workloads that reference this connector
%% are not disrupted. Use `GetNetworkConnector' to monitor the
%% `LastUpdateStatus' field, which transitions through `InProgress'
%% to `Successful' or `Failed'. If the update fails, the
%% `LastUpdateStatusReasonCode' field provides a specific error code for
%% troubleshooting. This operation is idempotent when you provide a
%% `ClientToken'.
-spec update_network_connector(aws_client:aws_client(), binary() | list(), update_network_connector_request()) ->
    {ok, update_network_connector_response(), tuple()} |
    {error, any()} |
    {error, update_network_connector_errors(), tuple()}.
update_network_connector(Client, Identifier, Input) ->
    update_network_connector(Client, Identifier, Input, []).

-spec update_network_connector(aws_client:aws_client(), binary() | list(), update_network_connector_request(), proplists:proplist()) ->
    {ok, update_network_connector_response(), tuple()} |
    {error, any()} |
    {error, update_network_connector_errors(), tuple()}.
update_network_connector(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/2026-04-04/network-connectors/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 202,
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
    Client1 = Client#{service => <<"lambda">>},
    DefaultHost = build_host(<<"lambda">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_LAMBDA_CORE">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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

