%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc For more information about Amazon Web Services Cloud Control API, see
%% the Amazon Web Services Cloud Control API User Guide:
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

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels the specified resource operation request.
%%
%% For more information, see Canceling resource operation requests:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-cancel
%% in the Amazon Web Services Cloud Control API User Guide.
%%
%% Only resource operations requests with a status of `PENDING' or
%% `IN_PROGRESS' can be canceled.
cancel_resource_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_resource_request(Client, Input, []).
cancel_resource_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelResourceRequest">>, Input, Options).

%% @doc Creates the specified resource.
%%
%% For more information, see Creating a resource:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html
%% in the Amazon Web Services Cloud Control API User Guide.
%%
%% After you have initiated a resource creation request, you can monitor the
%% progress of your request by calling GetResourceRequestStatus:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
%% using the `RequestToken' of the `ProgressEvent' type returned by
%% `CreateResource'.
create_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource(Client, Input, []).
create_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResource">>, Input, Options).

%% @doc Deletes the specified resource.
%%
%% For details, see Deleting a resource:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-delete.html
%% in the Amazon Web Services Cloud Control API User Guide.
%%
%% After you have initiated a resource deletion request, you can monitor the
%% progress of your request by calling GetResourceRequestStatus:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
%% using the `RequestToken' of the `ProgressEvent' returned by
%% `DeleteResource'.
delete_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource(Client, Input, []).
delete_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResource">>, Input, Options).

%% @doc Returns information about the current state of the specified
%% resource.
%%
%% For details, see Reading a resource's current state:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-read.html.
%%
%% You can use this action to return information about an existing resource
%% in your account and Amazon Web Services Region, whether those resources
%% were provisioned using Cloud Control API.
get_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource(Client, Input, []).
get_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResource">>, Input, Options).

%% @doc Returns the current status of a resource operation request.
%%
%% For more information, see Tracking the progress of resource operation
%% requests:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track
%% in the Amazon Web Services Cloud Control API User Guide.
get_resource_request_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_request_status(Client, Input, []).
get_resource_request_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceRequestStatus">>, Input, Options).

%% @doc Returns existing resource operation requests.
%%
%% This includes requests of all status types. For more information, see
%% Listing active resource operation requests:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-list
%% in the Amazon Web Services Cloud Control API User Guide.
%%
%% Resource operation requests expire after 7 days.
list_resource_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_requests(Client, Input, []).
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
%% your account and Amazon Web Services Region, whether those resources were
%% provisioned using Cloud Control API.
list_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources(Client, Input, []).
list_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResources">>, Input, Options).

%% @doc Updates the specified property values in the resource.
%%
%% You specify your resource property updates as a list of patch operations
%% contained in a JSON patch document that adheres to the RFC 6902 -
%% JavaScript Object Notation (JSON) Patch :
%% https://datatracker.ietf.org/doc/html/rfc6902 standard.
%%
%% For details on how Cloud Control API performs resource update operations,
%% see Updating a resource:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html
%% in the Amazon Web Services Cloud Control API User Guide.
%%
%% After you have initiated a resource update request, you can monitor the
%% progress of your request by calling GetResourceRequestStatus:
%% https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
%% using the `RequestToken' of the `ProgressEvent' returned by
%% `UpdateResource'.
%%
%% For more information about the properties of a specific resource, refer to
%% the related topic for the resource in the Resource and property types
%% reference:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
%% in the CloudFormation Users Guide.
update_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource(Client, Input, []).
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
