%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc Amazon EC2 Container Service (Amazon ECS) is a highly scalable, fast,
%% container management service that makes it easy to run, stop, and manage
%% Docker containers on a cluster of EC2 instances. Amazon ECS lets you
%% launch and stop container-enabled applications with simple API calls,
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

-export([create_cluster/2,
         create_cluster/3,
         create_service/2,
         create_service/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_service/2,
         delete_service/3,
         deregister_container_instance/2,
         deregister_container_instance/3,
         deregister_task_definition/2,
         deregister_task_definition/3,
         describe_clusters/2,
         describe_clusters/3,
         describe_container_instances/2,
         describe_container_instances/3,
         describe_services/2,
         describe_services/3,
         describe_task_definition/2,
         describe_task_definition/3,
         describe_tasks/2,
         describe_tasks/3,
         discover_poll_endpoint/2,
         discover_poll_endpoint/3,
         list_clusters/2,
         list_clusters/3,
         list_container_instances/2,
         list_container_instances/3,
         list_services/2,
         list_services/3,
         list_task_definition_families/2,
         list_task_definition_families/3,
         list_task_definitions/2,
         list_task_definitions/3,
         list_tasks/2,
         list_tasks/3,
         register_container_instance/2,
         register_container_instance/3,
         register_task_definition/2,
         register_task_definition/3,
         run_task/2,
         run_task/3,
         start_task/2,
         start_task/3,
         stop_task/2,
         stop_task/3,
         submit_container_state_change/2,
         submit_container_state_change/3,
         submit_task_state_change/2,
         submit_task_state_change/3,
         update_container_agent/2,
         update_container_agent/3,
         update_service/2,
         update_service/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Amazon ECS cluster. By default, your account receives a
%% <code>default</code> cluster when you launch your first container
%% instance. However, you can create your own cluster with a unique name with
%% the <code>CreateCluster</code> action.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Runs and maintains a desired number of tasks from a specified task
%% definition. If the number of tasks running in a service drops below
%% <code>desiredCount</code>, Amazon ECS spawns another instantiation of the
%% task in the specified cluster. To update an existing service, see
%% <a>UpdateService</a>.
%%
%% You can optionally specify a deployment configuration for your service.
%% During a deployment (which is triggered by changing the task definition of
%% a service with an <a>UpdateService</a> operation), the service scheduler
%% uses the <code>minimumHealthyPercent</code> and
%% <code>maximumPercent</code> parameters to determine the deployment
%% strategy.
%%
%% If the <code>minimumHealthyPercent</code> is below 100%, the scheduler can
%% ignore the <code>desiredCount</code> temporarily during a deployment. For
%% example, if your service has a <code>desiredCount</code> of four tasks, a
%% <code>minimumHealthyPercent</code> of 50% allows the scheduler to stop two
%% existing tasks before starting two new tasks. Tasks for services that
%% <i>do not</i> use a load balancer are considered healthy if they are in
%% the <code>RUNNING</code> state; tasks for services that <i>do</i> use a
%% load balancer are considered healthy if they are in the
%% <code>RUNNING</code> state and the container instance it is hosted on is
%% reported as healthy by the load balancer. The default value for
%% <code>minimumHealthyPercent</code> is 50% in the console and 100% for the
%% AWS CLI, the AWS SDKs, and the APIs.
%%
%% The <code>maximumPercent</code> parameter represents an upper limit on the
%% number of running tasks during a deployment, which enables you to define
%% the deployment batch size. For example, if your service has a
%% <code>desiredCount</code> of four tasks, a <code>maximumPercent</code>
%% value of 200% starts four new tasks before stopping the four older tasks
%% (provided that the cluster resources required to do this are available).
%% The default value for <code>maximumPercent</code> is 200%.
%%
%% When the service scheduler launches new tasks, it attempts to balance them
%% across the Availability Zones in your cluster with the following logic:
%%
%% <ul> <li> Determine which of the container instances in your cluster can
%% support your service's task definition (for example, they have the
%% required CPU, memory, ports, and container instance attributes).
%%
%% </li> <li> Sort the valid container instances by the fewest number of
%% running tasks for this service in the same Availability Zone as the
%% instance. For example, if zone A has one running service task and zones B
%% and C each have zero, valid container instances in either zone B or C are
%% considered optimal for placement.
%%
%% </li> <li> Place the new service task on a valid container instance in an
%% optimal Availability Zone (based on the previous steps), favoring
%% container instances with the fewest number of running tasks for this
%% service.
%%
%% </li> </ul>
create_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service(Client, Input, []).
create_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateService">>, Input, Options).

%% @doc Deletes the specified cluster. You must deregister all container
%% instances from this cluster before you may delete it. You can list the
%% container instances in a cluster with <a>ListContainerInstances</a> and
%% deregister them with <a>DeregisterContainerInstance</a>.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes a specified service within a cluster. You can delete a
%% service if you have no running tasks in it and the desired task count is
%% zero. If the service is actively maintaining tasks, you cannot delete it,
%% and you must update the service to a desired task count of zero. For more
%% information, see <a>UpdateService</a>.
%%
%% <note> When you delete a service, if there are still running tasks that
%% require cleanup, the service status moves from <code>ACTIVE</code> to
%% <code>DRAINING</code>, and the service is no longer visible in the console
%% or in <a>ListServices</a> API operations. After the tasks have stopped,
%% then the service status moves from <code>DRAINING</code> to
%% <code>INACTIVE</code>. Services in the <code>DRAINING</code> or
%% <code>INACTIVE</code> status can still be viewed with
%% <a>DescribeServices</a> API operations; however, in the future,
%% <code>INACTIVE</code> services may be cleaned up and purged from Amazon
%% ECS record keeping, and <a>DescribeServices</a> API operations on those
%% services will return a <code>ServiceNotFoundException</code> error.
%%
%% </note>
delete_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service(Client, Input, []).
delete_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteService">>, Input, Options).

%% @doc Deregisters an Amazon ECS container instance from the specified
%% cluster. This instance is no longer available to run tasks.
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
deregister_container_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_container_instance(Client, Input, []).
deregister_container_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
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
deregister_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_task_definition(Client, Input, []).
deregister_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTaskDefinition">>, Input, Options).

%% @doc Describes one or more of your clusters.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Describes Amazon EC2 Container Service container instances. Returns
%% metadata about registered and remaining resources on each container
%% instance requested.
describe_container_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_container_instances(Client, Input, []).
describe_container_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContainerInstances">>, Input, Options).

%% @doc Describes the specified services running in your cluster.
describe_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_services(Client, Input, []).
describe_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServices">>, Input, Options).

%% @doc Describes a task definition. You can specify a <code>family</code>
%% and <code>revision</code> to find information about a specific task
%% definition, or you can simply specify the family to find the latest
%% <code>ACTIVE</code> revision in that family.
%%
%% <note> You can only describe <code>INACTIVE</code> task definitions while
%% an active task or service references them.
%%
%% </note>
describe_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_task_definition(Client, Input, []).
describe_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTaskDefinition">>, Input, Options).

%% @doc Describes a specified task or tasks.
describe_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tasks(Client, Input, []).
describe_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTasks">>, Input, Options).

%% @doc <note>This action is only used by the Amazon EC2 Container Service
%% agent, and it is not intended for use outside of the agent.
%%
%% </note> Returns an endpoint for the Amazon EC2 Container Service agent to
%% poll for updates.
discover_poll_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_poll_endpoint(Client, Input, []).
discover_poll_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverPollEndpoint">>, Input, Options).

%% @doc Returns a list of existing clusters.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc Returns a list of container instances in a specified cluster.
list_container_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_container_instances(Client, Input, []).
list_container_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContainerInstances">>, Input, Options).

%% @doc Lists the services that are running in a specified cluster.
list_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services(Client, Input, []).
list_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServices">>, Input, Options).

%% @doc Returns a list of task definition families that are registered to
%% your account (which may include task definition families that no longer
%% have any <code>ACTIVE</code> task definitions). You can filter the results
%% with the <code>familyPrefix</code> parameter.
list_task_definition_families(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_task_definition_families(Client, Input, []).
list_task_definition_families(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTaskDefinitionFamilies">>, Input, Options).

%% @doc Returns a list of task definitions that are registered to your
%% account. You can filter the results by family name with the
%% <code>familyPrefix</code> parameter or by status with the
%% <code>status</code> parameter.
list_task_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_task_definitions(Client, Input, []).
list_task_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTaskDefinitions">>, Input, Options).

%% @doc Returns a list of tasks for a specified cluster. You can filter the
%% results by family name, by a particular container instance, or by the
%% desired status of the task with the <code>family</code>,
%% <code>containerInstance</code>, and <code>desiredStatus</code> parameters.
list_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tasks(Client, Input, []).
list_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTasks">>, Input, Options).

%% @doc <note>This action is only used by the Amazon EC2 Container Service
%% agent, and it is not intended for use outside of the agent.
%%
%% </note> Registers an EC2 instance into the specified cluster. This
%% instance becomes available to place containers on.
register_container_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_container_instance(Client, Input, []).
register_container_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterContainerInstance">>, Input, Options).

%% @doc Registers a new task definition from the supplied <code>family</code>
%% and <code>containerDefinitions</code>. Optionally, you can add data
%% volumes to your containers with the <code>volumes</code> parameter. For
%% more information about task definition parameters and defaults, see <a
%% href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon
%% ECS Task Definitions</a> in the <i>Amazon EC2 Container Service Developer
%% Guide</i>.
register_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_task_definition(Client, Input, []).
register_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTaskDefinition">>, Input, Options).

%% @doc Start a task using random placement and the default Amazon ECS
%% scheduler. To use your own scheduler or place a task on a specific
%% container instance, use <code>StartTask</code> instead.
%%
%% <important> The <code>count</code> parameter is limited to 10 tasks per
%% call.
%%
%% </important>
run_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_task(Client, Input, []).
run_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunTask">>, Input, Options).

%% @doc Starts a new task from the specified task definition on the specified
%% container instance or instances. To use the default Amazon ECS scheduler
%% to place your task, use <code>RunTask</code> instead.
%%
%% <important> The list of container instances to start tasks on is limited
%% to 10.
%%
%% </important>
start_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_task(Client, Input, []).
start_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTask">>, Input, Options).

%% @doc Stops a running task.
%%
%% When <a>StopTask</a> is called on a task, the equivalent of <code>docker
%% stop</code> is issued to the containers running in the task. This results
%% in a <code>SIGTERM</code> and a 30-second timeout, after which
%% <code>SIGKILL</code> is sent and the containers are forcibly stopped. If
%% the container handles the <code>SIGTERM</code> gracefully and exits within
%% 30 seconds from receiving it, no <code>SIGKILL</code> is sent.
stop_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_task(Client, Input, []).
stop_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTask">>, Input, Options).

%% @doc <note>This action is only used by the Amazon EC2 Container Service
%% agent, and it is not intended for use outside of the agent.
%%
%% </note> Sent to acknowledge that a container changed states.
submit_container_state_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_container_state_change(Client, Input, []).
submit_container_state_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitContainerStateChange">>, Input, Options).

%% @doc <note>This action is only used by the Amazon EC2 Container Service
%% agent, and it is not intended for use outside of the agent.
%%
%% </note> Sent to acknowledge that a task changed states.
submit_task_state_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_task_state_change(Client, Input, []).
submit_task_state_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
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
update_container_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_container_agent(Client, Input, []).
update_container_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContainerAgent">>, Input, Options).

%% @doc Modifies the desired count, deployment configuration, or task
%% definition used in a service.
%%
%% You can add to or subtract from the number of instantiations of a task
%% definition in a service by specifying the cluster that the service is
%% running in and a new <code>desiredCount</code> parameter.
%%
%% You can use <a>UpdateService</a> to modify your task definition and deploy
%% a new version of your service.
%%
%% You can also update the deployment configuration of a service. When a
%% deployment is triggered by updating the task definition of a service, the
%% service scheduler uses the deployment configuration parameters,
%% <code>minimumHealthyPercent</code> and <code>maximumPercent</code>, to
%% determine the deployment strategy.
%%
%% If the <code>minimumHealthyPercent</code> is below 100%, the scheduler can
%% ignore the <code>desiredCount</code> temporarily during a deployment. For
%% example, if your service has a <code>desiredCount</code> of four tasks, a
%% <code>minimumHealthyPercent</code> of 50% allows the scheduler to stop two
%% existing tasks before starting two new tasks. Tasks for services that
%% <i>do not</i> use a load balancer are considered healthy if they are in
%% the <code>RUNNING</code> state; tasks for services that <i>do</i> use a
%% load balancer are considered healthy if they are in the
%% <code>RUNNING</code> state and the container instance it is hosted on is
%% reported as healthy by the load balancer.
%%
%% The <code>maximumPercent</code> parameter represents an upper limit on the
%% number of running tasks during a deployment, which enables you to define
%% the deployment batch size. For example, if your service has a
%% <code>desiredCount</code> of four tasks, a <code>maximumPercent</code>
%% value of 200% starts four new tasks before stopping the four older tasks
%% (provided that the cluster resources required to do this are available).
%%
%% When <a>UpdateService</a> stops a task during a deployment, the equivalent
%% of <code>docker stop</code> is issued to the containers running in the
%% task. This results in a <code>SIGTERM</code> and a 30-second timeout,
%% after which <code>SIGKILL</code> is sent and the containers are forcibly
%% stopped. If the container handles the <code>SIGTERM</code> gracefully and
%% exits within 30 seconds from receiving it, no <code>SIGKILL</code> is
%% sent.
%%
%% When the service scheduler launches new tasks, it attempts to balance them
%% across the Availability Zones in your cluster with the following logic:
%%
%% <ul> <li> Determine which of the container instances in your cluster can
%% support your service's task definition (for example, they have the
%% required CPU, memory, ports, and container instance attributes).
%%
%% </li> <li> Sort the valid container instances by the fewest number of
%% running tasks for this service in the same Availability Zone as the
%% instance. For example, if zone A has one running service task and zones B
%% and C each have zero, valid container instances in either zone B or C are
%% considered optimal for placement.
%%
%% </li> <li> Place the new service task on a valid container instance in an
%% optimal Availability Zone (based on the previous steps), favoring
%% container instances with the fewest number of running tasks for this
%% service.
%%
%% </li> </ul>
update_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service(Client, Input, []).
update_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateService">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"ecs">>},
    Host = aws_util:binary_join([<<"ecs.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AmazonEC2ContainerServiceV20141113.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
