%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc For more information about Amazon Web Services Cloud Control API, see
%% the Amazon Web Services Cloud Control API User
%% Guide:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/what-is-cloudcontrolapi.html.
-module(aws_cloudcontrol).

-export([cancel_resource_request/2,
         cancel_resource_request/3,
         create_resource/2,
         create_resource/3,
         delete_resource/2,
         delete_resource/3,
         get_resource/2,
         get_resource/3,
         get_resource_request_status/2,
         get_resource_request_status/3,
         list_resource_requests/2,
         list_resource_requests/3,
         list_resources/2,
         list_resources/3,
         update_resource/2,
         update_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_resource_requests_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceRequestStatusSummaries">> => list(progress_event()())
%% }
-type list_resource_requests_output() :: #{binary() => any()}.

%% Example:
%% delete_resource_output() :: #{
%%   <<"ProgressEvent">> => progress_event()
%% }
-type delete_resource_output() :: #{binary() => any()}.

%% Example:
%% get_resource_request_status_input() :: #{
%%   <<"RequestToken">> := string()
%% }
-type get_resource_request_status_input() :: #{binary() => any()}.

%% Example:
%% handler_internal_failure_exception() :: #{
%%   <<"Message">> => string()
%% }
-type handler_internal_failure_exception() :: #{binary() => any()}.

%% Example:
%% general_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type general_service_exception() :: #{binary() => any()}.

%% Example:
%% already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.

%% Example:
%% create_resource_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DesiredState">> := string(),
%%   <<"RoleArn">> => string(),
%%   <<"TypeName">> := string(),
%%   <<"TypeVersionId">> => string()
%% }
-type create_resource_input() :: #{binary() => any()}.

%% Example:
%% network_failure_exception() :: #{
%%   <<"Message">> => string()
%% }
-type network_failure_exception() :: #{binary() => any()}.

%% Example:
%% update_resource_output() :: #{
%%   <<"ProgressEvent">> => progress_event()
%% }
-type update_resource_output() :: #{binary() => any()}.

%% Example:
%% private_type_exception() :: #{
%%   <<"Message">> => string()
%% }
-type private_type_exception() :: #{binary() => any()}.

%% Example:
%% update_resource_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Identifier">> := string(),
%%   <<"PatchDocument">> := string(),
%%   <<"RoleArn">> => string(),
%%   <<"TypeName">> := string(),
%%   <<"TypeVersionId">> => string()
%% }
-type update_resource_input() :: #{binary() => any()}.

%% Example:
%% unsupported_action_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_action_exception() :: #{binary() => any()}.

%% Example:
%% get_resource_output() :: #{
%%   <<"ResourceDescription">> => resource_description(),
%%   <<"TypeName">> => string()
%% }
-type get_resource_output() :: #{binary() => any()}.

%% Example:
%% list_resources_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceModel">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"TypeName">> := string(),
%%   <<"TypeVersionId">> => string()
%% }
-type list_resources_input() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% concurrent_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_operation_exception() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% type_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type type_not_found_exception() :: #{binary() => any()}.

%% Example:
%% client_token_conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type client_token_conflict_exception() :: #{binary() => any()}.

%% Example:
%% progress_event() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"EventTime">> => non_neg_integer(),
%%   <<"HooksRequestToken">> => string(),
%%   <<"Identifier">> => string(),
%%   <<"Operation">> => string(),
%%   <<"OperationStatus">> => string(),
%%   <<"RequestToken">> => string(),
%%   <<"ResourceModel">> => string(),
%%   <<"RetryAfter">> => non_neg_integer(),
%%   <<"StatusMessage">> => string(),
%%   <<"TypeName">> => string()
%% }
-type progress_event() :: #{binary() => any()}.

%% Example:
%% cancel_resource_request_output() :: #{
%%   <<"ProgressEvent">> => progress_event()
%% }
-type cancel_resource_request_output() :: #{binary() => any()}.

%% Example:
%% list_resource_requests_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceRequestStatusFilter">> => resource_request_status_filter()
%% }
-type list_resource_requests_input() :: #{binary() => any()}.

%% Example:
%% cancel_resource_request_input() :: #{
%%   <<"RequestToken">> := string()
%% }
-type cancel_resource_request_input() :: #{binary() => any()}.

%% Example:
%% get_resource_request_status_output() :: #{
%%   <<"HooksProgressEvent">> => list(hook_progress_event()()),
%%   <<"ProgressEvent">> => progress_event()
%% }
-type get_resource_request_status_output() :: #{binary() => any()}.

%% Example:
%% resource_description() :: #{
%%   <<"Identifier">> => string(),
%%   <<"Properties">> => string()
%% }
-type resource_description() :: #{binary() => any()}.

%% Example:
%% hook_progress_event() :: #{
%%   <<"FailureMode">> => string(),
%%   <<"HookEventTime">> => non_neg_integer(),
%%   <<"HookStatus">> => string(),
%%   <<"HookStatusMessage">> => string(),
%%   <<"HookTypeArn">> => string(),
%%   <<"HookTypeName">> => string(),
%%   <<"HookTypeVersionId">> => string(),
%%   <<"InvocationPoint">> => string()
%% }
-type hook_progress_event() :: #{binary() => any()}.

%% Example:
%% delete_resource_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Identifier">> := string(),
%%   <<"RoleArn">> => string(),
%%   <<"TypeName">> := string(),
%%   <<"TypeVersionId">> => string()
%% }
-type delete_resource_input() :: #{binary() => any()}.

%% Example:
%% not_updatable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_updatable_exception() :: #{binary() => any()}.

%% Example:
%% not_stabilized_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_stabilized_exception() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% service_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% request_token_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type request_token_not_found_exception() :: #{binary() => any()}.

%% Example:
%% handler_failure_exception() :: #{
%%   <<"Message">> => string()
%% }
-type handler_failure_exception() :: #{binary() => any()}.

%% Example:
%% create_resource_output() :: #{
%%   <<"ProgressEvent">> => progress_event()
%% }
-type create_resource_output() :: #{binary() => any()}.

%% Example:
%% invalid_credentials_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_credentials_exception() :: #{binary() => any()}.

%% Example:
%% resource_conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_conflict_exception() :: #{binary() => any()}.

%% Example:
%% get_resource_input() :: #{
%%   <<"Identifier">> := string(),
%%   <<"RoleArn">> => string(),
%%   <<"TypeName">> := string(),
%%   <<"TypeVersionId">> => string()
%% }
-type get_resource_input() :: #{binary() => any()}.

%% Example:
%% list_resources_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceDescriptions">> => list(resource_description()()),
%%   <<"TypeName">> => string()
%% }
-type list_resources_output() :: #{binary() => any()}.

%% Example:
%% service_internal_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_internal_error_exception() :: #{binary() => any()}.

%% Example:
%% resource_request_status_filter() :: #{
%%   <<"OperationStatuses">> => list(string()()),
%%   <<"Operations">> => list(string()())
%% }
-type resource_request_status_filter() :: #{binary() => any()}.

-type cancel_resource_request_errors() ::
    request_token_not_found_exception() | 
    concurrent_modification_exception().

-type create_resource_errors() ::
    service_internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_credentials_exception() | 
    handler_failure_exception() | 
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    not_stabilized_exception() | 
    not_updatable_exception() | 
    client_token_conflict_exception() | 
    type_not_found_exception() | 
    invalid_request_exception() | 
    concurrent_operation_exception() | 
    resource_not_found_exception() | 
    unsupported_action_exception() | 
    private_type_exception() | 
    network_failure_exception() | 
    already_exists_exception() | 
    general_service_exception() | 
    handler_internal_failure_exception().

-type delete_resource_errors() ::
    service_internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_credentials_exception() | 
    handler_failure_exception() | 
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    not_stabilized_exception() | 
    not_updatable_exception() | 
    client_token_conflict_exception() | 
    type_not_found_exception() | 
    invalid_request_exception() | 
    concurrent_operation_exception() | 
    resource_not_found_exception() | 
    unsupported_action_exception() | 
    private_type_exception() | 
    network_failure_exception() | 
    already_exists_exception() | 
    general_service_exception() | 
    handler_internal_failure_exception().

-type get_resource_errors() ::
    service_internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_credentials_exception() | 
    handler_failure_exception() | 
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    not_stabilized_exception() | 
    not_updatable_exception() | 
    type_not_found_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unsupported_action_exception() | 
    private_type_exception() | 
    network_failure_exception() | 
    already_exists_exception() | 
    general_service_exception() | 
    handler_internal_failure_exception().

-type get_resource_request_status_errors() ::
    request_token_not_found_exception().

-type list_resources_errors() ::
    service_internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_credentials_exception() | 
    handler_failure_exception() | 
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    not_stabilized_exception() | 
    not_updatable_exception() | 
    type_not_found_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unsupported_action_exception() | 
    private_type_exception() | 
    network_failure_exception() | 
    already_exists_exception() | 
    general_service_exception() | 
    handler_internal_failure_exception().

-type update_resource_errors() ::
    service_internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_credentials_exception() | 
    handler_failure_exception() | 
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    not_stabilized_exception() | 
    not_updatable_exception() | 
    client_token_conflict_exception() | 
    type_not_found_exception() | 
    invalid_request_exception() | 
    concurrent_operation_exception() | 
    resource_not_found_exception() | 
    unsupported_action_exception() | 
    private_type_exception() | 
    network_failure_exception() | 
    already_exists_exception() | 
    general_service_exception() | 
    handler_internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels the specified resource operation request.
%%
%% For more information, see Canceling resource operation requests:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-cancel
%% in the
%% Amazon Web Services Cloud Control API User Guide.
%%
%% Only resource operations requests with a status of `PENDING' or
%% `IN_PROGRESS' can be canceled.
-spec cancel_resource_request(aws_client:aws_client(), cancel_resource_request_input()) ->
    {ok, cancel_resource_request_output(), tuple()} |
    {error, any()} |
    {error, cancel_resource_request_errors(), tuple()}.
cancel_resource_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_resource_request(Client, Input, []).

-spec cancel_resource_request(aws_client:aws_client(), cancel_resource_request_input(), proplists:proplist()) ->
    {ok, cancel_resource_request_output(), tuple()} |
    {error, any()} |
    {error, cancel_resource_request_errors(), tuple()}.
cancel_resource_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelResourceRequest">>, Input, Options).

%% @doc Creates the specified resource.
%%
%% For more information, see Creating a
%% resource:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html
%% in the Amazon Web Services Cloud Control API User Guide.
%%
%% After you have initiated a resource creation request, you can monitor the
%% progress of your
%% request by calling GetResourceRequestStatus:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
%% using the `RequestToken' of the
%% `ProgressEvent' type returned by `CreateResource'.
-spec create_resource(aws_client:aws_client(), create_resource_input()) ->
    {ok, create_resource_output(), tuple()} |
    {error, any()} |
    {error, create_resource_errors(), tuple()}.
create_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource(Client, Input, []).

-spec create_resource(aws_client:aws_client(), create_resource_input(), proplists:proplist()) ->
    {ok, create_resource_output(), tuple()} |
    {error, any()} |
    {error, create_resource_errors(), tuple()}.
create_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResource">>, Input, Options).

%% @doc Deletes the specified resource.
%%
%% For details, see Deleting a
%% resource:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-delete.html
%% in the Amazon Web Services Cloud Control API User Guide.
%%
%% After you have initiated a resource deletion request, you can monitor the
%% progress of your
%% request by calling GetResourceRequestStatus:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
%% using the `RequestToken' of the
%% `ProgressEvent' returned by `DeleteResource'.
-spec delete_resource(aws_client:aws_client(), delete_resource_input()) ->
    {ok, delete_resource_output(), tuple()} |
    {error, any()} |
    {error, delete_resource_errors(), tuple()}.
delete_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource(Client, Input, []).

-spec delete_resource(aws_client:aws_client(), delete_resource_input(), proplists:proplist()) ->
    {ok, delete_resource_output(), tuple()} |
    {error, any()} |
    {error, delete_resource_errors(), tuple()}.
delete_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResource">>, Input, Options).

%% @doc Returns information about the current state of the specified
%% resource.
%%
%% For details, see
%% Reading a resource's current state:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-read.html.
%%
%% You can use this action to return information about an existing resource
%% in your account
%% and Amazon Web Services Region, whether those resources were provisioned
%% using Cloud Control API.
-spec get_resource(aws_client:aws_client(), get_resource_input()) ->
    {ok, get_resource_output(), tuple()} |
    {error, any()} |
    {error, get_resource_errors(), tuple()}.
get_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource(Client, Input, []).

-spec get_resource(aws_client:aws_client(), get_resource_input(), proplists:proplist()) ->
    {ok, get_resource_output(), tuple()} |
    {error, any()} |
    {error, get_resource_errors(), tuple()}.
get_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResource">>, Input, Options).

%% @doc Returns the current status of a resource operation request.
%%
%% For more information, see
%% Tracking the progress of resource operation requests:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track
%% in the
%% Amazon Web Services Cloud Control API User Guide.
-spec get_resource_request_status(aws_client:aws_client(), get_resource_request_status_input()) ->
    {ok, get_resource_request_status_output(), tuple()} |
    {error, any()} |
    {error, get_resource_request_status_errors(), tuple()}.
get_resource_request_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_request_status(Client, Input, []).

-spec get_resource_request_status(aws_client:aws_client(), get_resource_request_status_input(), proplists:proplist()) ->
    {ok, get_resource_request_status_output(), tuple()} |
    {error, any()} |
    {error, get_resource_request_status_errors(), tuple()}.
get_resource_request_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceRequestStatus">>, Input, Options).

%% @doc Returns existing resource operation requests.
%%
%% This includes requests of all status types.
%% For more information, see Listing active resource operation requests:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-list
%% in the
%% Amazon Web Services Cloud Control API User Guide.
%%
%% Resource operation requests expire after 7 days.
-spec list_resource_requests(aws_client:aws_client(), list_resource_requests_input()) ->
    {ok, list_resource_requests_output(), tuple()} |
    {error, any()}.
list_resource_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_requests(Client, Input, []).

-spec list_resource_requests(aws_client:aws_client(), list_resource_requests_input(), proplists:proplist()) ->
    {ok, list_resource_requests_output(), tuple()} |
    {error, any()}.
list_resource_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceRequests">>, Input, Options).

%% @doc Returns information about the specified resources.
%%
%% For more information, see Discovering resources:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-list.html
%% in the Amazon Web Services Cloud Control API User Guide.
%%
%% You can use this action to return information about existing resources in
%% your account and
%% Amazon Web Services Region, whether those resources were provisioned using
%% Cloud Control API.
-spec list_resources(aws_client:aws_client(), list_resources_input()) ->
    {ok, list_resources_output(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources(Client, Input, []).

-spec list_resources(aws_client:aws_client(), list_resources_input(), proplists:proplist()) ->
    {ok, list_resources_output(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResources">>, Input, Options).

%% @doc Updates the specified property values in the resource.
%%
%% You specify your resource property updates as a list of patch operations
%% contained in a
%% JSON patch document that adheres to the
%% RFC 6902 - JavaScript Object
%% Notation (JSON) Patch
%% : https://datatracker.ietf.org/doc/html/rfc6902 standard.
%%
%% For details on how Cloud Control API performs resource update operations,
%% see Updating a resource:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html
%% in the Amazon Web Services Cloud Control API User Guide.
%%
%% After you have initiated a resource update request, you can monitor the
%% progress of your
%% request by calling GetResourceRequestStatus:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
%% using the `RequestToken' of the
%% `ProgressEvent' returned by `UpdateResource'.
%%
%% For more information about the properties of a specific resource, refer to
%% the related
%% topic for the resource in the Resource and property types reference:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
%% in the CloudFormation Users Guide.
-spec update_resource(aws_client:aws_client(), update_resource_input()) ->
    {ok, update_resource_output(), tuple()} |
    {error, any()} |
    {error, update_resource_errors(), tuple()}.
update_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource(Client, Input, []).

-spec update_resource(aws_client:aws_client(), update_resource_input(), proplists:proplist()) ->
    {ok, update_resource_output(), tuple()} |
    {error, any()} |
    {error, update_resource_errors(), tuple()}.
update_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResource">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"cloudcontrolapi">>},
    Host = build_host(<<"cloudcontrolapi">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"CloudApiService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
