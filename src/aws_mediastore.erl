%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc An AWS Elemental MediaStore container is a namespace that holds
%% folders and objects.
%%
%% You use a container endpoint to create, read, and delete objects.
-module(aws_mediastore).

-export([create_container/2,
         create_container/3,
         delete_container/2,
         delete_container/3,
         delete_container_policy/2,
         delete_container_policy/3,
         delete_cors_policy/2,
         delete_cors_policy/3,
         delete_lifecycle_policy/2,
         delete_lifecycle_policy/3,
         delete_metric_policy/2,
         delete_metric_policy/3,
         describe_container/2,
         describe_container/3,
         get_container_policy/2,
         get_container_policy/3,
         get_cors_policy/2,
         get_cors_policy/3,
         get_lifecycle_policy/2,
         get_lifecycle_policy/3,
         get_metric_policy/2,
         get_metric_policy/3,
         list_containers/2,
         list_containers/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_container_policy/2,
         put_container_policy/3,
         put_cors_policy/2,
         put_cors_policy/3,
         put_lifecycle_policy/2,
         put_lifecycle_policy/3,
         put_metric_policy/2,
         put_metric_policy/3,
         start_access_logging/2,
         start_access_logging/3,
         stop_access_logging/2,
         stop_access_logging/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a storage container to hold objects.
%%
%% A container is similar to a bucket in
%% the Amazon S3 service.
create_container(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_container(Client, Input, []).
create_container(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContainer">>, Input, Options).

%% @doc Deletes the specified container.
%%
%% Before you make a `DeleteContainer'
%% request, delete any objects in the container or in any folders in the
%% container. You can
%% delete only empty containers.
delete_container(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_container(Client, Input, []).
delete_container(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContainer">>, Input, Options).

%% @doc Deletes the access policy that is associated with the specified
%% container.
delete_container_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_container_policy(Client, Input, []).
delete_container_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContainerPolicy">>, Input, Options).

%% @doc Deletes the cross-origin resource sharing (CORS) configuration
%% information that is
%% set for the container.
%%
%% To use this operation, you must have permission to perform the
%% `MediaStore:DeleteCorsPolicy' action. The container owner has this
%% permission
%% by default and can grant this permission to others.
delete_cors_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cors_policy(Client, Input, []).
delete_cors_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCorsPolicy">>, Input, Options).

%% @doc Removes an object lifecycle policy from a container.
%%
%% It takes up to 20 minutes for the change to take effect.
delete_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lifecycle_policy(Client, Input, []).
delete_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLifecyclePolicy">>, Input, Options).

%% @doc Deletes the metric policy that is associated with the specified
%% container.
%%
%% If there is no metric policy associated with the container, MediaStore
%% doesn't send metrics to CloudWatch.
delete_metric_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_metric_policy(Client, Input, []).
delete_metric_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMetricPolicy">>, Input, Options).

%% @doc Retrieves the properties of the requested container.
%%
%% This request is commonly used to
%% retrieve the endpoint of a container. An endpoint is a value assigned by
%% the service when a
%% new container is created. A container's endpoint does not change after
%% it has been
%% assigned. The `DescribeContainer' request returns a single
%% `Container' object based on `ContainerName'. To return all
%% `Container' objects that are associated with a specified AWS account,
%% use
%% `ListContainers'.
describe_container(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_container(Client, Input, []).
describe_container(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContainer">>, Input, Options).

%% @doc Retrieves the access policy for the specified container.
%%
%% For information about the
%% data that is included in an access policy, see the AWS Identity and Access
%% Management User
%% Guide: https://aws.amazon.com/documentation/iam/.
get_container_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_container_policy(Client, Input, []).
get_container_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContainerPolicy">>, Input, Options).

%% @doc Returns the cross-origin resource sharing (CORS) configuration
%% information that is
%% set for the container.
%%
%% To use this operation, you must have permission to perform the
%% `MediaStore:GetCorsPolicy' action. By default, the container owner has
%% this
%% permission and can grant it to others.
get_cors_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cors_policy(Client, Input, []).
get_cors_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCorsPolicy">>, Input, Options).

%% @doc Retrieves the object lifecycle policy that is assigned to a
%% container.
get_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lifecycle_policy(Client, Input, []).
get_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLifecyclePolicy">>, Input, Options).

%% @doc Returns the metric policy for the specified container.
get_metric_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_metric_policy(Client, Input, []).
get_metric_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMetricPolicy">>, Input, Options).

%% @doc Lists the properties of all containers in AWS Elemental MediaStore.
%%
%% You can query to receive all the containers in one response. Or you can
%% include the
%% `MaxResults' parameter to receive a limited number of containers in
%% each
%% response. In this case, the response includes a token. To get the next set
%% of containers,
%% send the command again, this time with the `NextToken' parameter (with
%% the
%% returned token as its value). The next set of responses appears, with a
%% token if there are
%% still more containers to receive.
%%
%% See also `DescribeContainer', which gets the properties of one
%% container.
list_containers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_containers(Client, Input, []).
list_containers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContainers">>, Input, Options).

%% @doc Returns a list of the tags assigned to the specified container.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates an access policy for the specified container to restrict the
%% users and
%% clients that can access it.
%%
%% For information about the data that is included in an access
%% policy, see the AWS Identity and
%% Access Management User Guide: https://aws.amazon.com/documentation/iam/.
%%
%% For this release of the REST API, you can create only one policy for a
%% container. If
%% you enter `PutContainerPolicy' twice, the second command modifies the
%% existing
%% policy.
put_container_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_container_policy(Client, Input, []).
put_container_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutContainerPolicy">>, Input, Options).

%% @doc Sets the cross-origin resource sharing (CORS) configuration on a
%% container so that
%% the container can service cross-origin requests.
%%
%% For example, you might want to enable a
%% request whose origin is http://www.example.com to access your AWS
%% Elemental MediaStore
%% container at my.example.container.com by using the browser's
%% XMLHttpRequest
%% capability.
%%
%% To enable CORS on a container, you attach a CORS policy to the container.
%% In the CORS
%% policy, you configure rules that identify origins and the HTTP methods
%% that can be executed
%% on your container. The policy can contain up to 398,000 characters. You
%% can add up to 100
%% rules to a CORS policy. If more than one rule applies, the service uses
%% the first
%% applicable rule listed.
%%
%% To learn more about CORS, see Cross-Origin Resource Sharing (CORS) in AWS
%% Elemental MediaStore:
%% https://docs.aws.amazon.com/mediastore/latest/ug/cors-policy.html.
put_cors_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_cors_policy(Client, Input, []).
put_cors_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutCorsPolicy">>, Input, Options).

%% @doc Writes an object lifecycle policy to a container.
%%
%% If the container already has an object lifecycle policy, the service
%% replaces the existing policy with the new policy. It takes up to 20
%% minutes for the change to take effect.
%%
%% For information about how to construct an object lifecycle policy, see
%% Components of an Object Lifecycle Policy:
%% https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html.
put_lifecycle_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_lifecycle_policy(Client, Input, []).
put_lifecycle_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLifecyclePolicy">>, Input, Options).

%% @doc The metric policy that you want to add to the container.
%%
%% A metric policy allows AWS Elemental MediaStore to send metrics to Amazon
%% CloudWatch. It takes up to 20 minutes for the new policy to take effect.
put_metric_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_metric_policy(Client, Input, []).
put_metric_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMetricPolicy">>, Input, Options).

%% @doc Starts access logging on the specified container.
%%
%% When you enable access logging on a container, MediaStore delivers access
%% logs for objects stored in that container to Amazon CloudWatch Logs.
start_access_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_access_logging(Client, Input, []).
start_access_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAccessLogging">>, Input, Options).

%% @doc Stops access logging on the specified container.
%%
%% When you stop access logging on a container, MediaStore stops sending
%% access logs to Amazon CloudWatch Logs. These access logs are not saved and
%% are not retrievable.
stop_access_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_access_logging(Client, Input, []).
stop_access_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAccessLogging">>, Input, Options).

%% @doc Adds tags to the specified AWS Elemental MediaStore container.
%%
%% Tags are key:value pairs that you can associate with AWS resources. For
%% example, the
%% tag key might be &quot;customer&quot; and the tag value might be
%% &quot;companyA.&quot; You can specify one or more tags to add to each
%% container. You can add up to 50
%% tags to each container. For more information about tagging, including
%% naming and usage conventions, see Tagging Resources in MediaStore:
%% https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from the specified container.
%%
%% You can specify one or more tags to remove.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"mediastore">>},
    Host = build_host(<<"mediastore">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"MediaStore_20170901.", Action/binary>>}
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
