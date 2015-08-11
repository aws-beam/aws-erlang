%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc
%%
%% Amazon EC2 Container Service (Amazon ECS) is a highly scalable, fast,
%% container management service that makes it easy to run, stop, and manage
%% Docker containers on a cluster of Amazon EC2 instances. Amazon ECS lets
%% you launch and stop container-enabled applications with simple API calls,
%% allows you to get the state of your cluster from a centralized service,
%% and gives you access to many familiar Amazon EC2 features like security
%% groups, Amazon EBS volumes, and IAM roles.
%%
%% You can use Amazon ECS to schedule the placement of containers across your
%% cluster based on your resource needs, isolation policies, and availability
%% requirements. Amazon EC2 Container Service eliminates the need for you to
%% operate your own cluster management and configuration management systems
%% or worry about scaling your management infrastructure.
-module(aws_ecs).

-export([create_cluster/3,
         create_service/3,
         delete_cluster/3,
         delete_service/3,
         deregister_container_instance/3,
         deregister_task_definition/3,
         describe_clusters/3,
         describe_container_instances/3,
         describe_services/3,
         describe_task_definition/3,
         describe_tasks/3,
         discover_poll_endpoint/3,
         list_clusters/3,
         list_container_instances/3,
         list_services/3,
         list_task_definition_families/3,
         list_task_definitions/3,
         list_tasks/3,
         register_container_instance/3,
         register_task_definition/3,
         run_task/3,
         start_task/3,
         stop_task/3,
         submit_container_state_change/3,
         submit_task_state_change/3,
         update_container_agent/3,
         update_service/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Amazon ECS cluster. By default, your account will
%% receive a <code>default</code> cluster when you launch your first
%% container instance. However, you can create your own cluster with a unique
%% name with the <code>CreateCluster</code> action.
create_cluster(Client, Input, Options) ->
  request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Runs and maintains a desired number of tasks from a specified task
%% definition. If the number of tasks running in a service drops below
%% <code>desiredCount</code>, Amazon ECS will spawn another instantiation of
%% the task in the specified cluster.
create_service(Client, Input, Options) ->
  request(Client, <<"CreateService">>, Input, Options).

%% @doc Deletes the specified cluster. You must deregister all container
%% instances from this cluster before you may delete it. You can list the
%% container instances in a cluster with <a>ListContainerInstances</a> and
%% deregister them with <a>DeregisterContainerInstance</a>.
delete_cluster(Client, Input, Options) ->
  request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes a specified service within a cluster.
delete_service(Client, Input, Options) ->
  request(Client, <<"DeleteService">>, Input, Options).

%% @doc Deregisters an Amazon ECS container instance from the specified
%% cluster. This instance will no longer be available to run tasks.
%%
%% If you intend to use the container instance for some other purpose after
%% deregistration, you should stop all of the tasks running on the container
%% instance before deregistration to avoid any orphaned tasks from consuming
%% resources.
%%
%% Deregistering a container instance removes the instance from a cluster,
%% but it does not terminate the EC2 instance; if you are finished using the
%% instance, be sure to terminate it in the Amazon EC2 console to stop
%% billing.
%%
%% <note>When you terminate a container instance, it is automatically
%% deregistered from your cluster.
%%
%% </note>
deregister_container_instance(Client, Input, Options) ->
  request(Client, <<"DeregisterContainerInstance">>, Input, Options).

%% @doc Deregisters the specified task definition by family and revision.
%% Upon deregistration, the task definition is marked as
%% <code>INACTIVE</code>. Existing tasks and services that reference an
%% <code>INACTIVE</code> task definition continue to run without disruption.
%% Existing services that reference an <code>INACTIVE</code> task definition
%% can still scale up or down by modifying the service's desired count.
%%
%% You cannot use an <code>INACTIVE</code> task definition to run new tasks
%% or create new services, and you cannot update an existing service to
%% reference an <code>INACTIVE</code> task definition (although there may be
%% up to a 10 minute window following deregistration where these restrictions
%% have not yet taken effect).
deregister_task_definition(Client, Input, Options) ->
  request(Client, <<"DeregisterTaskDefinition">>, Input, Options).

%% @doc Describes one or more of your clusters.
describe_clusters(Client, Input, Options) ->
  request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Describes Amazon EC2 Container Service container instances. Returns
%% metadata about registered and remaining resources on each container
%% instance requested.
describe_container_instances(Client, Input, Options) ->
  request(Client, <<"DescribeContainerInstances">>, Input, Options).

%% @doc Describes the specified services running in your cluster.
describe_services(Client, Input, Options) ->
  request(Client, <<"DescribeServices">>, Input, Options).

%% @doc Describes a task definition. You can specify a <code>family</code>
%% and <code>revision</code> to find information on a specific task
%% definition, or you can simply specify the family to find the latest
%% <code>ACTIVE</code> revision in that family.
%%
%% <note> You can only describe <code>INACTIVE</code> task definitions while
%% an active task or service references them.
%%
%% </note>
describe_task_definition(Client, Input, Options) ->
  request(Client, <<"DescribeTaskDefinition">>, Input, Options).

%% @doc Describes a specified task or tasks.
describe_tasks(Client, Input, Options) ->
  request(Client, <<"DescribeTasks">>, Input, Options).

%% @doc <note>This action is only used by the Amazon EC2 Container Service
%% agent, and it is not intended for use outside of the agent.
%%
%% </note> Returns an endpoint for the Amazon EC2 Container Service agent to
%% poll for updates.
discover_poll_endpoint(Client, Input, Options) ->
  request(Client, <<"DiscoverPollEndpoint">>, Input, Options).

%% @doc Returns a list of existing clusters.
list_clusters(Client, Input, Options) ->
  request(Client, <<"ListClusters">>, Input, Options).

%% @doc Returns a list of container instances in a specified cluster.
list_container_instances(Client, Input, Options) ->
  request(Client, <<"ListContainerInstances">>, Input, Options).

%% @doc Lists the services that are running in a specified cluster.
list_services(Client, Input, Options) ->
  request(Client, <<"ListServices">>, Input, Options).

%% @doc Returns a list of task definition families that are registered to
%% your account (which may include task definition families that no longer
%% have any <code>ACTIVE</code> task definitions). You can filter the results
%% with the <code>familyPrefix</code> parameter.
list_task_definition_families(Client, Input, Options) ->
  request(Client, <<"ListTaskDefinitionFamilies">>, Input, Options).

%% @doc Returns a list of task definitions that are registered to your
%% account. You can filter the results by family name with the
%% <code>familyPrefix</code> parameter or by status with the
%% <code>status</code> parameter.
list_task_definitions(Client, Input, Options) ->
  request(Client, <<"ListTaskDefinitions">>, Input, Options).

%% @doc Returns a list of tasks for a specified cluster. You can filter the
%% results by family name, by a particular container instance, or by the
%% desired status of the task with the <code>family</code>,
%% <code>containerInstance</code>, and <code>desiredStatus</code> parameters.
list_tasks(Client, Input, Options) ->
  request(Client, <<"ListTasks">>, Input, Options).

%% @doc <note>This action is only used by the Amazon EC2 Container Service
%% agent, and it is not intended for use outside of the agent.
%%
%% </note> Registers an Amazon EC2 instance into the specified cluster. This
%% instance will become available to place containers on.
register_container_instance(Client, Input, Options) ->
  request(Client, <<"RegisterContainerInstance">>, Input, Options).

%% @doc Registers a new task definition from the supplied <code>family</code>
%% and <code>containerDefinitions</code>. Optionally, you can add data
%% volumes to your containers with the <code>volumes</code> parameter. For
%% more information on task definition parameters and defaults, see <a
%% href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon
%% ECS Task Definitions</a> in the <i>Amazon EC2 Container Service Developer
%% Guide</i>.
register_task_definition(Client, Input, Options) ->
  request(Client, <<"RegisterTaskDefinition">>, Input, Options).

%% @doc Start a task using random placement and the default Amazon ECS
%% scheduler. If you want to use your own scheduler or place a task on a
%% specific container instance, use <code>StartTask</code> instead.
%%
%% <important> The <code>count</code> parameter is limited to 10 tasks per
%% call.
%%
%% </important>
run_task(Client, Input, Options) ->
  request(Client, <<"RunTask">>, Input, Options).

%% @doc Starts a new task from the specified task definition on the specified
%% container instance or instances. If you want to use the default Amazon ECS
%% scheduler to place your task, use <code>RunTask</code> instead.
%%
%% <important> The list of container instances to start tasks on is limited
%% to 10.
%%
%% </important>
start_task(Client, Input, Options) ->
  request(Client, <<"StartTask">>, Input, Options).

%% @doc Stops a running task.
stop_task(Client, Input, Options) ->
  request(Client, <<"StopTask">>, Input, Options).

%% @doc <note>This action is only used by the Amazon EC2 Container Service
%% agent, and it is not intended for use outside of the agent.
%%
%% </note> Sent to acknowledge that a container changed states.
submit_container_state_change(Client, Input, Options) ->
  request(Client, <<"SubmitContainerStateChange">>, Input, Options).

%% @doc <note>This action is only used by the Amazon EC2 Container Service
%% agent, and it is not intended for use outside of the agent.
%%
%% </note> Sent to acknowledge that a task changed states.
submit_task_state_change(Client, Input, Options) ->
  request(Client, <<"SubmitTaskStateChange">>, Input, Options).

%% @doc Updates the Amazon ECS container agent on a specified container
%% instance. Updating the Amazon ECS container agent does not interrupt
%% running tasks or services on the container instance. The process for
%% updating the agent differs depending on whether your container instance
%% was launched with the Amazon ECS-optimized AMI or another operating
%% system.
%%
%% <code>UpdateContainerAgent</code> requires the Amazon ECS-optimized AMI or
%% Amazon Linux with the <code>ecs-init</code> service installed and running.
%% For help updating the Amazon ECS container agent on other operating
%% systems, see <a
%% href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent">Manually
%% Updating the Amazon ECS Container Agent</a> in the <i>Amazon EC2 Container
%% Service Developer Guide</i>.
update_container_agent(Client, Input, Options) ->
  request(Client, <<"UpdateContainerAgent">>, Input, Options).

%% @doc Modify the desired count or task definition used in a service.
%%
%% You can add to or subtract from the number of instantiations of a task
%% definition in a service by specifying the cluster that the service is
%% running in and a new <code>desiredCount</code> parameter.
%%
%% You can use <code>UpdateService</code> to modify your task definition and
%% deploy a new version of your service, one task at a time. If you modify
%% the task definition with <code>UpdateService</code>, Amazon ECS spawns a
%% task with the new version of the task definition and then stops an old
%% task after the new version is running. Because <code>UpdateService</code>
%% starts a new version of the task before stopping an old version, your
%% cluster must have capacity to support one more instantiation of the task
%% when <code>UpdateService</code> is run. If your cluster cannot support
%% another instantiation of the task used in your service, you can reduce the
%% desired count of your service by one before modifying the task definition.
update_service(Client, Input, Options) ->
  request(Client, <<"UpdateService">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

target(Action) ->
    << <<"AmazonEC2ContainerServiceV20141113.">>/binary, Action/binary>>.

request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"ecs">>},
    Method = post,
    Host = aws_util:binary_join([<<"ecs.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, target(Action)}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, Method, URL, Headers, Payload),
    Response = hackney:request(Method, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Result = jsx:decode(Body, [return_maps]),
    {ok, Result, {200, ResponseHeaders, Client}};
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Reason = maps:get(<<"__type">>, jsx:decode(Body, [return_maps])),
    {error, Reason, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
