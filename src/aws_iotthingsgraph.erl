%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS IoT Things Graph</fullname>
%%
%% AWS IoT Things Graph provides an integrated set of tools that enable
%% developers to connect devices and services that use different standards,
%% such as units of measure and communication protocols. AWS IoT Things Graph
%% makes it possible to build IoT applications with little to no code by
%% connecting devices and services and defining how they interact at an
%% abstract level.
%%
%% For more information about how AWS IoT Things Graph works, see the <a
%% href="https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-whatis.html">User
%% Guide</a>.
-module(aws_iotthingsgraph).

-export([associate_entity_to_thing/2,
         associate_entity_to_thing/3,
         create_flow_template/2,
         create_flow_template/3,
         create_system_instance/2,
         create_system_instance/3,
         create_system_template/2,
         create_system_template/3,
         delete_flow_template/2,
         delete_flow_template/3,
         delete_namespace/2,
         delete_namespace/3,
         delete_system_instance/2,
         delete_system_instance/3,
         delete_system_template/2,
         delete_system_template/3,
         deploy_system_instance/2,
         deploy_system_instance/3,
         deprecate_flow_template/2,
         deprecate_flow_template/3,
         deprecate_system_template/2,
         deprecate_system_template/3,
         describe_namespace/2,
         describe_namespace/3,
         dissociate_entity_from_thing/2,
         dissociate_entity_from_thing/3,
         get_entities/2,
         get_entities/3,
         get_flow_template/2,
         get_flow_template/3,
         get_flow_template_revisions/2,
         get_flow_template_revisions/3,
         get_namespace_deletion_status/2,
         get_namespace_deletion_status/3,
         get_system_instance/2,
         get_system_instance/3,
         get_system_template/2,
         get_system_template/3,
         get_system_template_revisions/2,
         get_system_template_revisions/3,
         get_upload_status/2,
         get_upload_status/3,
         list_flow_execution_messages/2,
         list_flow_execution_messages/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         search_entities/2,
         search_entities/3,
         search_flow_executions/2,
         search_flow_executions/3,
         search_flow_templates/2,
         search_flow_templates/3,
         search_system_instances/2,
         search_system_instances/3,
         search_system_templates/2,
         search_system_templates/3,
         search_things/2,
         search_things/3,
         tag_resource/2,
         tag_resource/3,
         undeploy_system_instance/2,
         undeploy_system_instance/3,
         untag_resource/2,
         untag_resource/3,
         update_flow_template/2,
         update_flow_template/3,
         update_system_template/2,
         update_system_template/3,
         upload_entity_definitions/2,
         upload_entity_definitions/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a device with a concrete thing that is in the user's
%% registry.
%%
%% A thing can be associated with only one device at a time. If you associate
%% a thing with a new device id, its previous association will be removed.
associate_entity_to_thing(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_entity_to_thing(Client, Input, []).
associate_entity_to_thing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateEntityToThing">>, Input, Options).

%% @doc Creates a workflow template. Workflows can be created only in the
%% user's namespace. (The public namespace contains only entities.) The
%% workflow can contain only entities in the specified namespace. The
%% workflow is validated against the entities in the latest version of the
%% user's namespace unless another namespace version is specified in the
%% request.
create_flow_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_flow_template(Client, Input, []).
create_flow_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFlowTemplate">>, Input, Options).

%% @doc Creates a system instance.
%%
%% This action validates the system instance, prepares the deployment-related
%% resources. For Greengrass deployments, it updates the Greengrass group
%% that is specified by the <code>greengrassGroupName</code> parameter. It
%% also adds a file to the S3 bucket specified by the
%% <code>s3BucketName</code> parameter. You need to call
%% <code>DeploySystemInstance</code> after running this action.
%%
%% For Greengrass deployments, since this action modifies and adds resources
%% to a Greengrass group and an S3 bucket on the caller's behalf, the calling
%% identity must have write permissions to both the specified Greengrass
%% group and S3 bucket. Otherwise, the call will fail with an authorization
%% error.
%%
%% For cloud deployments, this action requires a
%% <code>flowActionsRoleArn</code> value. This is an IAM role that has
%% permissions to access AWS services, such as AWS Lambda and AWS IoT, that
%% the flow uses when it executes.
%%
%% If the definition document doesn't specify a version of the user's
%% namespace, the latest version will be used by default.
create_system_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_system_instance(Client, Input, []).
create_system_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSystemInstance">>, Input, Options).

%% @doc Creates a system. The system is validated against the entities in the
%% latest version of the user's namespace unless another namespace version is
%% specified in the request.
create_system_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_system_template(Client, Input, []).
create_system_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSystemTemplate">>, Input, Options).

%% @doc Deletes a workflow. Any new system or deployment that contains this
%% workflow will fail to update or deploy. Existing deployments that contain
%% the workflow will continue to run (since they use a snapshot of the
%% workflow taken at the time of deployment).
delete_flow_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_flow_template(Client, Input, []).
delete_flow_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFlowTemplate">>, Input, Options).

%% @doc Deletes the specified namespace. This action deletes all of the
%% entities in the namespace. Delete the systems and flows that use entities
%% in the namespace before performing this action.
delete_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_namespace(Client, Input, []).
delete_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNamespace">>, Input, Options).

%% @doc Deletes a system instance. Only system instances that have never been
%% deployed, or that have been undeployed can be deleted.
%%
%% Users can create a new system instance that has the same ID as a deleted
%% system instance.
delete_system_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_system_instance(Client, Input, []).
delete_system_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSystemInstance">>, Input, Options).

%% @doc Deletes a system. New deployments can't contain the system after its
%% deletion. Existing deployments that contain the system will continue to
%% work because they use a snapshot of the system that is taken when it is
%% deployed.
delete_system_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_system_template(Client, Input, []).
delete_system_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSystemTemplate">>, Input, Options).

%% @doc <b>Greengrass and Cloud Deployments</b>
%%
%% Deploys the system instance to the target specified in
%% <code>CreateSystemInstance</code>.
%%
%% <b>Greengrass Deployments</b>
%%
%% If the system or any workflows and entities have been updated before this
%% action is called, then the deployment will create a new Amazon Simple
%% Storage Service resource file and then deploy it.
%%
%% Since this action creates a Greengrass deployment on the caller's behalf,
%% the calling identity must have write permissions to the specified
%% Greengrass group. Otherwise, the call will fail with an authorization
%% error.
%%
%% For information about the artifacts that get added to your Greengrass core
%% device when you use this API, see <a
%% href="https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-greengrass.html">AWS
%% IoT Things Graph and AWS IoT Greengrass</a>.
deploy_system_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deploy_system_instance(Client, Input, []).
deploy_system_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeploySystemInstance">>, Input, Options).

%% @doc Deprecates the specified workflow. This action marks the workflow for
%% deletion. Deprecated flows can't be deployed, but existing deployments
%% will continue to run.
deprecate_flow_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_flow_template(Client, Input, []).
deprecate_flow_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateFlowTemplate">>, Input, Options).

%% @doc Deprecates the specified system.
deprecate_system_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_system_template(Client, Input, []).
deprecate_system_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateSystemTemplate">>, Input, Options).

%% @doc Gets the latest version of the user's namespace and the public
%% version that it is tracking.
describe_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_namespace(Client, Input, []).
describe_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNamespace">>, Input, Options).

%% @doc Dissociates a device entity from a concrete thing. The action takes
%% only the type of the entity that you need to dissociate because only one
%% entity of a particular type can be associated with a thing.
dissociate_entity_from_thing(Client, Input)
  when is_map(Client), is_map(Input) ->
    dissociate_entity_from_thing(Client, Input, []).
dissociate_entity_from_thing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DissociateEntityFromThing">>, Input, Options).

%% @doc Gets definitions of the specified entities. Uses the latest version
%% of the user's namespace by default. This API returns the following TDM
%% entities.
%%
%% <ul> <li> Properties
%%
%% </li> <li> States
%%
%% </li> <li> Events
%%
%% </li> <li> Actions
%%
%% </li> <li> Capabilities
%%
%% </li> <li> Mappings
%%
%% </li> <li> Devices
%%
%% </li> <li> Device Models
%%
%% </li> <li> Services
%%
%% </li> </ul> This action doesn't return definitions for systems, flows, and
%% deployments.
get_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_entities(Client, Input, []).
get_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEntities">>, Input, Options).

%% @doc Gets the latest version of the <code>DefinitionDocument</code> and
%% <code>FlowTemplateSummary</code> for the specified workflow.
get_flow_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_flow_template(Client, Input, []).
get_flow_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFlowTemplate">>, Input, Options).

%% @doc Gets revisions of the specified workflow. Only the last 100 revisions
%% are stored. If the workflow has been deprecated, this action will return
%% revisions that occurred before the deprecation. This action won't work for
%% workflows that have been deleted.
get_flow_template_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_flow_template_revisions(Client, Input, []).
get_flow_template_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFlowTemplateRevisions">>, Input, Options).

%% @doc Gets the status of a namespace deletion task.
get_namespace_deletion_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_namespace_deletion_status(Client, Input, []).
get_namespace_deletion_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNamespaceDeletionStatus">>, Input, Options).

%% @doc Gets a system instance.
get_system_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_system_instance(Client, Input, []).
get_system_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSystemInstance">>, Input, Options).

%% @doc Gets a system.
get_system_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_system_template(Client, Input, []).
get_system_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSystemTemplate">>, Input, Options).

%% @doc Gets revisions made to the specified system template. Only the
%% previous 100 revisions are stored. If the system has been deprecated, this
%% action will return the revisions that occurred before its deprecation.
%% This action won't work with systems that have been deleted.
get_system_template_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_system_template_revisions(Client, Input, []).
get_system_template_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSystemTemplateRevisions">>, Input, Options).

%% @doc Gets the status of the specified upload.
get_upload_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_upload_status(Client, Input, []).
get_upload_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUploadStatus">>, Input, Options).

%% @doc Returns a list of objects that contain information about events in a
%% flow execution.
list_flow_execution_messages(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_flow_execution_messages(Client, Input, []).
list_flow_execution_messages(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFlowExecutionMessages">>, Input, Options).

%% @doc Lists all tags on an AWS IoT Things Graph resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Searches for entities of the specified type. You can search for
%% entities in your namespace and the public namespace that you're tracking.
search_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_entities(Client, Input, []).
search_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchEntities">>, Input, Options).

%% @doc Searches for AWS IoT Things Graph workflow execution instances.
search_flow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_flow_executions(Client, Input, []).
search_flow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchFlowExecutions">>, Input, Options).

%% @doc Searches for summary information about workflows.
search_flow_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_flow_templates(Client, Input, []).
search_flow_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchFlowTemplates">>, Input, Options).

%% @doc Searches for system instances in the user's account.
search_system_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_system_instances(Client, Input, []).
search_system_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchSystemInstances">>, Input, Options).

%% @doc Searches for summary information about systems in the user's account.
%% You can filter by the ID of a workflow to return only systems that use the
%% specified workflow.
search_system_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_system_templates(Client, Input, []).
search_system_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchSystemTemplates">>, Input, Options).

%% @doc Searches for things associated with the specified entity. You can
%% search by both device and device model.
%%
%% For example, if two different devices, camera1 and camera2, implement the
%% camera device model, the user can associate thing1 to camera1 and thing2
%% to camera2. <code>SearchThings(camera2)</code> will return only thing2,
%% but <code>SearchThings(camera)</code> will return both thing1 and thing2.
%%
%% This action searches for exact matches and doesn't perform partial text
%% matching.
search_things(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_things(Client, Input, []).
search_things(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchThings">>, Input, Options).

%% @doc Creates a tag for the specified resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a system instance from its target (Cloud or Greengrass).
undeploy_system_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    undeploy_system_instance(Client, Input, []).
undeploy_system_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UndeploySystemInstance">>, Input, Options).

%% @doc Removes a tag from the specified resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the specified workflow. All deployed systems and system
%% instances that use the workflow will see the changes in the flow when it
%% is redeployed. If you don't want this behavior, copy the workflow
%% (creating a new workflow with a different ID), and update the copy. The
%% workflow can contain only entities in the specified namespace.
update_flow_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_flow_template(Client, Input, []).
update_flow_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFlowTemplate">>, Input, Options).

%% @doc Updates the specified system. You don't need to run this action after
%% updating a workflow. Any deployment that uses the system will see the
%% changes in the system when it is redeployed.
update_system_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_system_template(Client, Input, []).
update_system_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSystemTemplate">>, Input, Options).

%% @doc Asynchronously uploads one or more entity definitions to the user's
%% namespace. The <code>document</code> parameter is required if
%% <code>syncWithPublicNamespace</code> and
%% <code>deleteExistingEntites</code> are false. If the
%% <code>syncWithPublicNamespace</code> parameter is set to
%% <code>true</code>, the user's namespace will synchronize with the latest
%% version of the public namespace. If <code>deprecateExistingEntities</code>
%% is set to true, all entities in the latest version will be deleted before
%% the new <code>DefinitionDocument</code> is uploaded.
%%
%% When a user uploads entity definitions for the first time, the service
%% creates a new namespace for the user. The new namespace tracks the public
%% namespace. Currently users can have only one namespace. The namespace
%% version increments whenever a user uploads entity definitions that are
%% backwards-incompatible and whenever a user sets the
%% <code>syncWithPublicNamespace</code> parameter or the
%% <code>deprecateExistingEntities</code> parameter to <code>true</code>.
%%
%% The IDs for all of the entities should be in URN format. Each entity must
%% be in the user's namespace. Users can't create entities in the public
%% namespace, but entity definitions can refer to entities in the public
%% namespace.
%%
%% Valid entities are <code>Device</code>, <code>DeviceModel</code>,
%% <code>Service</code>, <code>Capability</code>, <code>State</code>,
%% <code>Action</code>, <code>Event</code>, <code>Property</code>,
%% <code>Mapping</code>, <code>Enum</code>.
upload_entity_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    upload_entity_definitions(Client, Input, []).
upload_entity_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UploadEntityDefinitions">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"iotthingsgraph">>},
    Host = build_host(<<"iotthingsgraph">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"IotThingsGraphFrontEndService.", Action/binary>>}
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
