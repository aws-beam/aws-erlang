%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon Web Services Control Catalog API reference.
%%
%% This guide is for
%% developers who need detailed information about how to programmatically
%% identify and filter
%% the common controls and related metadata that are available to Amazon Web
%% Services customers. This API reference provides
%% descriptions, syntax, and usage examples for each of the actions and data
%% types that are
%% supported by Amazon Web Services Control Catalog.
%%
%% Use the following links to get started with the Amazon Web Services
%% Control Catalog API:
%%
%% Actions:
%% https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_Operations.html:
%% An
%% alphabetical list of all Control Catalog API operations.
%%
%% Data types:
%% https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_Types.html:
%% An
%% alphabetical list of all Control Catalog data types.
%%
%% Common
%% parameters:
%% https://docs.aws.amazon.com/controlcatalog/latest/APIReference/CommonParameters.html:
%% Parameters that all operations can use.
%%
%% Common errors:
%% https://docs.aws.amazon.com/controlcatalog/latest/APIReference/CommonErrors.html:
%% Client and server errors that all operations can return.
-module(aws_controlcatalog).

-export([get_control/2,
         get_control/3,
         list_common_controls/2,
         list_common_controls/3,
         list_controls/2,
         list_controls/3,
         list_domains/2,
         list_domains/3,
         list_objectives/2,
         list_objectives/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% associated_domain_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => [string()]
%% }
-type associated_domain_summary() :: #{binary() => any()}.


%% Example:
%% associated_objective_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => [string()]
%% }
-type associated_objective_summary() :: #{binary() => any()}.


%% Example:
%% common_control_filter() :: #{
%%   <<"Objectives">> => list(objective_resource_filter()())
%% }
-type common_control_filter() :: #{binary() => any()}.


%% Example:
%% common_control_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateTime">> => [non_neg_integer()],
%%   <<"Description">> => [string()],
%%   <<"Domain">> => associated_domain_summary(),
%%   <<"LastUpdateTime">> => [non_neg_integer()],
%%   <<"Name">> => [string()],
%%   <<"Objective">> => associated_objective_summary()
%% }
-type common_control_summary() :: #{binary() => any()}.


%% Example:
%% control_parameter() :: #{
%%   <<"Name">> => [string()]
%% }
-type control_parameter() :: #{binary() => any()}.


%% Example:
%% control_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Behavior">> => list(any()),
%%   <<"CreateTime">> => [non_neg_integer()],
%%   <<"Description">> => [string()],
%%   <<"Implementation">> => implementation_summary(),
%%   <<"Name">> => [string()],
%%   <<"Severity">> => list(any())
%% }
-type control_summary() :: #{binary() => any()}.


%% Example:
%% domain_resource_filter() :: #{
%%   <<"Arn">> => string()
%% }
-type domain_resource_filter() :: #{binary() => any()}.


%% Example:
%% domain_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateTime">> => [non_neg_integer()],
%%   <<"Description">> => [string()],
%%   <<"LastUpdateTime">> => [non_neg_integer()],
%%   <<"Name">> => [string()]
%% }
-type domain_summary() :: #{binary() => any()}.


%% Example:
%% get_control_request() :: #{
%%   <<"ControlArn">> := string()
%% }
-type get_control_request() :: #{binary() => any()}.


%% Example:
%% get_control_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Behavior">> => list(any()),
%%   <<"CreateTime">> => [non_neg_integer()],
%%   <<"Description">> => [string()],
%%   <<"Implementation">> => implementation_details(),
%%   <<"Name">> => [string()],
%%   <<"Parameters">> => list(control_parameter()()),
%%   <<"RegionConfiguration">> => region_configuration(),
%%   <<"Severity">> => list(any())
%% }
-type get_control_response() :: #{binary() => any()}.


%% Example:
%% implementation_details() :: #{
%%   <<"Identifier">> => string(),
%%   <<"Type">> => string()
%% }
-type implementation_details() :: #{binary() => any()}.


%% Example:
%% implementation_summary() :: #{
%%   <<"Identifier">> => string(),
%%   <<"Type">> => string()
%% }
-type implementation_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_common_controls_request() :: #{
%%   <<"CommonControlFilter">> => common_control_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_common_controls_request() :: #{binary() => any()}.


%% Example:
%% list_common_controls_response() :: #{
%%   <<"CommonControls">> => list(common_control_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_common_controls_response() :: #{binary() => any()}.


%% Example:
%% list_controls_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_controls_request() :: #{binary() => any()}.


%% Example:
%% list_controls_response() :: #{
%%   <<"Controls">> => list(control_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_controls_response() :: #{binary() => any()}.


%% Example:
%% list_domains_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_domains_request() :: #{binary() => any()}.


%% Example:
%% list_domains_response() :: #{
%%   <<"Domains">> => list(domain_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_domains_response() :: #{binary() => any()}.


%% Example:
%% list_objectives_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectiveFilter">> => objective_filter()
%% }
-type list_objectives_request() :: #{binary() => any()}.


%% Example:
%% list_objectives_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Objectives">> => list(objective_summary()())
%% }
-type list_objectives_response() :: #{binary() => any()}.


%% Example:
%% objective_filter() :: #{
%%   <<"Domains">> => list(domain_resource_filter()())
%% }
-type objective_filter() :: #{binary() => any()}.


%% Example:
%% objective_resource_filter() :: #{
%%   <<"Arn">> => string()
%% }
-type objective_resource_filter() :: #{binary() => any()}.


%% Example:
%% objective_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateTime">> => [non_neg_integer()],
%%   <<"Description">> => [string()],
%%   <<"Domain">> => associated_domain_summary(),
%%   <<"LastUpdateTime">> => [non_neg_integer()],
%%   <<"Name">> => [string()]
%% }
-type objective_summary() :: #{binary() => any()}.


%% Example:
%% region_configuration() :: #{
%%   <<"DeployableRegions">> => list(string()()),
%%   <<"Scope">> => list(any())
%% }
-type region_configuration() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type get_control_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_common_controls_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_controls_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_domains_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_objectives_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns details about a specific control, most notably a list of
%% Amazon Web Services Regions where this control is supported.
%%
%% Input a value for the ControlArn parameter, in ARN form. `GetControl'
%% accepts controltower or controlcatalog control ARNs as input. Returns a
%% controlcatalog ARN format.
%%
%% In the API response, controls that have the value `GLOBAL' in the
%% `Scope' field do not show the `DeployableRegions' field, because
%% it does not apply. Controls that have the value `REGIONAL' in the
%% `Scope' field return a value for the `DeployableRegions' field, as
%% shown in the example.
-spec get_control(aws_client:aws_client(), get_control_request()) ->
    {ok, get_control_response(), tuple()} |
    {error, any()} |
    {error, get_control_errors(), tuple()}.
get_control(Client, Input) ->
    get_control(Client, Input, []).

-spec get_control(aws_client:aws_client(), get_control_request(), proplists:proplist()) ->
    {ok, get_control_response(), tuple()} |
    {error, any()} |
    {error, get_control_errors(), tuple()}.
get_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-control"],
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

%% @doc Returns a paginated list of common controls from the Amazon Web
%% Services Control
%% Catalog.
%%
%% You can apply an optional filter to see common controls that have a
%% specific objective. If
%% you don’t provide a filter, the operation returns all common controls.
-spec list_common_controls(aws_client:aws_client(), list_common_controls_request()) ->
    {ok, list_common_controls_response(), tuple()} |
    {error, any()} |
    {error, list_common_controls_errors(), tuple()}.
list_common_controls(Client, Input) ->
    list_common_controls(Client, Input, []).

-spec list_common_controls(aws_client:aws_client(), list_common_controls_request(), proplists:proplist()) ->
    {ok, list_common_controls_response(), tuple()} |
    {error, any()} |
    {error, list_common_controls_errors(), tuple()}.
list_common_controls(Client, Input0, Options0) ->
    Method = post,
    Path = ["/common-controls"],
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
                     {<<"maxResults">>, <<"MaxResults">>},
                     {<<"nextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a paginated list of all available controls in the Amazon Web
%% Services Control Catalog library.
%%
%% Allows you to discover available controls. The list of controls is given
%% as structures of type controlSummary. The ARN is returned in the global
%% controlcatalog format, as shown in the examples.
-spec list_controls(aws_client:aws_client(), list_controls_request()) ->
    {ok, list_controls_response(), tuple()} |
    {error, any()} |
    {error, list_controls_errors(), tuple()}.
list_controls(Client, Input) ->
    list_controls(Client, Input, []).

-spec list_controls(aws_client:aws_client(), list_controls_request(), proplists:proplist()) ->
    {ok, list_controls_response(), tuple()} |
    {error, any()} |
    {error, list_controls_errors(), tuple()}.
list_controls(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-controls"],
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
                     {<<"maxResults">>, <<"MaxResults">>},
                     {<<"nextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a paginated list of domains from the Amazon Web Services
%% Control Catalog.
-spec list_domains(aws_client:aws_client(), list_domains_request()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input) ->
    list_domains(Client, Input, []).

-spec list_domains(aws_client:aws_client(), list_domains_request(), proplists:proplist()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/domains"],
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
                     {<<"maxResults">>, <<"MaxResults">>},
                     {<<"nextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a paginated list of objectives from the Amazon Web Services
%% Control Catalog.
%%
%% You can apply an optional filter to see the objectives that belong to a
%% specific domain.
%% If you don’t provide a filter, the operation returns all objectives.
-spec list_objectives(aws_client:aws_client(), list_objectives_request()) ->
    {ok, list_objectives_response(), tuple()} |
    {error, any()} |
    {error, list_objectives_errors(), tuple()}.
list_objectives(Client, Input) ->
    list_objectives(Client, Input, []).

-spec list_objectives(aws_client:aws_client(), list_objectives_request(), proplists:proplist()) ->
    {ok, list_objectives_response(), tuple()} |
    {error, any()} |
    {error, list_objectives_errors(), tuple()}.
list_objectives(Client, Input0, Options0) ->
    Method = post,
    Path = ["/objectives"],
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
                     {<<"maxResults">>, <<"MaxResults">>},
                     {<<"nextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"controlcatalog">>},
    Host = build_host(<<"controlcatalog">>, Client1),
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
