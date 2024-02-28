%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Migration Hub API methods help to obtain server and
%% application migration status and integrate your resource-specific
%% migration tool by providing a programmatic interface to Migration Hub.
%%
%% Remember that you must set your AWS Migration Hub home region before you
%% call any of these APIs, or a `HomeRegionNotSetException' error will be
%% returned. Also, you must make the API calls while in your home region.
-module(aws_migration_hub).

-export([associate_created_artifact/2,
         associate_created_artifact/3,
         associate_discovered_resource/2,
         associate_discovered_resource/3,
         create_progress_update_stream/2,
         create_progress_update_stream/3,
         delete_progress_update_stream/2,
         delete_progress_update_stream/3,
         describe_application_state/2,
         describe_application_state/3,
         describe_migration_task/2,
         describe_migration_task/3,
         disassociate_created_artifact/2,
         disassociate_created_artifact/3,
         disassociate_discovered_resource/2,
         disassociate_discovered_resource/3,
         import_migration_task/2,
         import_migration_task/3,
         list_application_states/2,
         list_application_states/3,
         list_created_artifacts/2,
         list_created_artifacts/3,
         list_discovered_resources/2,
         list_discovered_resources/3,
         list_migration_tasks/2,
         list_migration_tasks/3,
         list_progress_update_streams/2,
         list_progress_update_streams/3,
         notify_application_state/2,
         notify_application_state/3,
         notify_migration_task_state/2,
         notify_migration_task_state/3,
         put_resource_attributes/2,
         put_resource_attributes/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a created artifact of an AWS cloud resource, the target
%% receiving the migration, with the migration task performed by a migration
%% tool.
%%
%% This API has the following traits:
%%
%% <ul> <li> Migration tools can call the `AssociateCreatedArtifact'
%% operation to indicate which AWS artifact is associated with a migration
%% task.
%%
%% </li> <li> The created artifact name must be provided in ARN (Amazon
%% Resource Name) format which will contain information about type and
%% region; for example:
%% `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b'.
%%
%% </li> <li> Examples of the AWS resource behind the created artifact are,
%% AMI's, EC2 instance, or DMS endpoint, etc.
%%
%% </li> </ul>
associate_created_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_created_artifact(Client, Input, []).
associate_created_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateCreatedArtifact">>, Input, Options).

%% @doc Associates a discovered resource ID from Application Discovery
%% Service with a migration task.
associate_discovered_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_discovered_resource(Client, Input, []).
associate_discovered_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDiscoveredResource">>, Input, Options).

%% @doc Creates a progress update stream which is an AWS resource used for
%% access control as well as a namespace for migration task names that is
%% implicitly linked to your AWS account.
%%
%% It must uniquely identify the migration tool as it is used for all updates
%% made by the tool; however, it does not need to be unique for each AWS
%% account because it is scoped to the AWS account.
create_progress_update_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_progress_update_stream(Client, Input, []).
create_progress_update_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProgressUpdateStream">>, Input, Options).

%% @doc Deletes a progress update stream, including all of its tasks, which
%% was previously created as an AWS resource used for access control.
%%
%% This API has the following traits:
%%
%% <ul> <li> The only parameter needed for `DeleteProgressUpdateStream'
%% is the stream name (same as a `CreateProgressUpdateStream' call).
%%
%% </li> <li> The call will return, and a background process will
%% asynchronously delete the stream and all of its resources (tasks,
%% associated resources, resource attributes, created artifacts).
%%
%% </li> <li> If the stream takes time to be deleted, it might still show up
%% on a `ListProgressUpdateStreams' call.
%%
%% </li> <li> `CreateProgressUpdateStream', `ImportMigrationTask',
%% `NotifyMigrationTaskState', and all Associate[*] APIs related to the
%% tasks belonging to the stream will throw &quot;InvalidInputException&quot;
%% if the stream of the same name is in the process of being deleted.
%%
%% </li> <li> Once the stream and all of its resources are deleted,
%% `CreateProgressUpdateStream' for a stream of the same name will
%% succeed, and that stream will be an entirely new logical resource (without
%% any resources associated with the old stream).
%%
%% </li> </ul>
delete_progress_update_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_progress_update_stream(Client, Input, []).
delete_progress_update_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProgressUpdateStream">>, Input, Options).

%% @doc Gets the migration status of an application.
describe_application_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_state(Client, Input, []).
describe_application_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationState">>, Input, Options).

%% @doc Retrieves a list of all attributes associated with a specific
%% migration task.
describe_migration_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_migration_task(Client, Input, []).
describe_migration_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMigrationTask">>, Input, Options).

%% @doc Disassociates a created artifact of an AWS resource with a migration
%% task performed by a migration tool that was previously associated.
%%
%% This API has the following traits:
%%
%% <ul> <li> A migration user can call the `DisassociateCreatedArtifacts'
%% operation to disassociate a created AWS Artifact from a migration task.
%%
%% </li> <li> The created artifact name must be provided in ARN (Amazon
%% Resource Name) format which will contain information about type and
%% region; for example:
%% `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b'.
%%
%% </li> <li> Examples of the AWS resource behind the created artifact are,
%% AMI's, EC2 instance, or RDS instance, etc.
%%
%% </li> </ul>
disassociate_created_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_created_artifact(Client, Input, []).
disassociate_created_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateCreatedArtifact">>, Input, Options).

%% @doc Disassociate an Application Discovery Service discovered resource
%% from a migration task.
disassociate_discovered_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_discovered_resource(Client, Input, []).
disassociate_discovered_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDiscoveredResource">>, Input, Options).

%% @doc Registers a new migration task which represents a server, database,
%% etc., being migrated to AWS by a migration tool.
%%
%% This API is a prerequisite to calling the `NotifyMigrationTaskState'
%% API as the migration tool must first register the migration task with
%% Migration Hub.
import_migration_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_migration_task(Client, Input, []).
import_migration_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportMigrationTask">>, Input, Options).

%% @doc Lists all the migration statuses for your applications.
%%
%% If you use the optional `ApplicationIds' parameter, only the migration
%% statuses for those applications will be returned.
list_application_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_states(Client, Input, []).
list_application_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationStates">>, Input, Options).

%% @doc Lists the created artifacts attached to a given migration task in an
%% update stream.
%%
%% This API has the following traits:
%%
%% <ul> <li> Gets the list of the created artifacts while migration is taking
%% place.
%%
%% </li> <li> Shows the artifacts created by the migration tool that was
%% associated by the `AssociateCreatedArtifact' API.
%%
%% </li> <li> Lists created artifacts in a paginated interface.
%%
%% </li> </ul>
list_created_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_created_artifacts(Client, Input, []).
list_created_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCreatedArtifacts">>, Input, Options).

%% @doc Lists discovered resources associated with the given
%% `MigrationTask'.
list_discovered_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_discovered_resources(Client, Input, []).
list_discovered_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDiscoveredResources">>, Input, Options).

%% @doc Lists all, or filtered by resource name, migration tasks associated
%% with the user account making this call.
%%
%% This API has the following traits:
%%
%% <ul> <li> Can show a summary list of the most recent migration tasks.
%%
%% </li> <li> Can show a summary list of migration tasks associated with a
%% given discovered resource.
%%
%% </li> <li> Lists migration tasks in a paginated interface.
%%
%% </li> </ul>
list_migration_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_migration_tasks(Client, Input, []).
list_migration_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMigrationTasks">>, Input, Options).

%% @doc Lists progress update streams associated with the user account making
%% this call.
list_progress_update_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_progress_update_streams(Client, Input, []).
list_progress_update_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProgressUpdateStreams">>, Input, Options).

%% @doc Sets the migration state of an application.
%%
%% For a given application identified by the value passed to
%% `ApplicationId', its status is set or updated by passing one of three
%% values to `Status': `NOT_STARTED | IN_PROGRESS | COMPLETED'.
notify_application_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_application_state(Client, Input, []).
notify_application_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyApplicationState">>, Input, Options).

%% @doc Notifies Migration Hub of the current status, progress, or other
%% detail regarding a migration task.
%%
%% This API has the following traits:
%%
%% <ul> <li> Migration tools will call the `NotifyMigrationTaskState' API
%% to share the latest progress and status.
%%
%% </li> <li> `MigrationTaskName' is used for addressing updates to the
%% correct target.
%%
%% </li> <li> `ProgressUpdateStream' is used for access control and to
%% provide a namespace for each migration tool.
%%
%% </li> </ul>
notify_migration_task_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_migration_task_state(Client, Input, []).
notify_migration_task_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyMigrationTaskState">>, Input, Options).

%% @doc Provides identifying details of the resource being migrated so that
%% it can be associated in the Application Discovery Service repository.
%%
%% This association occurs asynchronously after `PutResourceAttributes'
%% returns.
%%
%% Keep in mind that subsequent calls to PutResourceAttributes will override
%% previously stored attributes. For example, if it is first called with a
%% MAC address, but later, it is desired to add an IP address, it will then
%% be required to call it with both the IP and MAC addresses to prevent
%% overriding the MAC address.
%%
%% Note the instructions regarding the special use case of the
%% `ResourceAttributeList' :
%% https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList
%% parameter when specifying any &quot;VM&quot; related value.
%%
%% Because this is an asynchronous call, it will always return 200, whether
%% an association occurs or not. To confirm if an association was found based
%% on the provided details, call `ListDiscoveredResources'.
put_resource_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_attributes(Client, Input, []).
put_resource_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourceAttributes">>, Input, Options).

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
    Client1 = Client#{service => <<"mgh">>},
    Host = build_host(<<"mgh">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSMigrationHub.", Action/binary>>}
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
