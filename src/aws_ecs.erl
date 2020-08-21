%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon Elastic Container Service</fullname>
%%
%% Amazon Elastic Container Service (Amazon ECS) is a highly scalable, fast,
%% container management service that makes it easy to run, stop, and manage
%% Docker containers on a cluster. You can host your cluster on a serverless
%% infrastructure that is managed by Amazon ECS by launching your services or
%% tasks using the Fargate launch type. For more control, you can host your
%% tasks on a cluster of Amazon Elastic Compute Cloud (Amazon EC2) instances
%% that you manage by using the EC2 launch type. For more information about
%% launch types, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon
%% ECS Launch Types</a>.
%%
%% Amazon ECS lets you launch and stop container-based applications with
%% simple API calls, allows you to get the state of your cluster from a
%% centralized service, and gives you access to many familiar Amazon EC2
%% features.
%%
%% You can use Amazon ECS to schedule the placement of containers across your
%% cluster based on your resource needs, isolation policies, and availability
%% requirements. Amazon ECS eliminates the need for you to operate your own
%% cluster management and configuration management systems or worry about
%% scaling your management infrastructure.
-module(aws_ecs).

-export([create_capacity_provider/2,
         create_capacity_provider/3,
         create_cluster/2,
         create_cluster/3,
         create_service/2,
         create_service/3,
         create_task_set/2,
         create_task_set/3,
         delete_account_setting/2,
         delete_account_setting/3,
         delete_attributes/2,
         delete_attributes/3,
         delete_capacity_provider/2,
         delete_capacity_provider/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_service/2,
         delete_service/3,
         delete_task_set/2,
         delete_task_set/3,
         deregister_container_instance/2,
         deregister_container_instance/3,
         deregister_task_definition/2,
         deregister_task_definition/3,
         describe_capacity_providers/2,
         describe_capacity_providers/3,
         describe_clusters/2,
         describe_clusters/3,
         describe_container_instances/2,
         describe_container_instances/3,
         describe_services/2,
         describe_services/3,
         describe_task_definition/2,
         describe_task_definition/3,
         describe_task_sets/2,
         describe_task_sets/3,
         describe_tasks/2,
         describe_tasks/3,
         discover_poll_endpoint/2,
         discover_poll_endpoint/3,
         list_account_settings/2,
         list_account_settings/3,
         list_attributes/2,
         list_attributes/3,
         list_clusters/2,
         list_clusters/3,
         list_container_instances/2,
         list_container_instances/3,
         list_services/2,
         list_services/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_task_definition_families/2,
         list_task_definition_families/3,
         list_task_definitions/2,
         list_task_definitions/3,
         list_tasks/2,
         list_tasks/3,
         put_account_setting/2,
         put_account_setting/3,
         put_account_setting_default/2,
         put_account_setting_default/3,
         put_attributes/2,
         put_attributes/3,
         put_cluster_capacity_providers/2,
         put_cluster_capacity_providers/3,
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
         submit_attachment_state_changes/2,
         submit_attachment_state_changes/3,
         submit_container_state_change/2,
         submit_container_state_change/3,
         submit_task_state_change/2,
         submit_task_state_change/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_cluster_settings/2,
         update_cluster_settings/3,
         update_container_agent/2,
         update_container_agent/3,
         update_container_instances_state/2,
         update_container_instances_state/3,
         update_service/2,
         update_service/3,
         update_service_primary_task_set/2,
         update_service_primary_task_set/3,
         update_task_set/2,
         update_task_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new capacity provider. Capacity providers are associated
%% with an Amazon ECS cluster and are used in capacity provider strategies to
%% facilitate cluster auto scaling.
%%
%% Only capacity providers using an Auto Scaling group can be created. Amazon
%% ECS tasks on AWS Fargate use the <code>FARGATE</code> and
%% <code>FARGATE_SPOT</code> capacity providers which are already created and
%% available to all accounts in Regions supported by AWS Fargate.
create_capacity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_capacity_provider(Client, Input, []).
create_capacity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCapacityProvider">>, Input, Options).

%% @doc Creates a new Amazon ECS cluster. By default, your account receives a
%% <code>default</code> cluster when you launch your first container
%% instance. However, you can create your own cluster with a unique name with
%% the <code>CreateCluster</code> action.
%%
%% <note> When you call the <a>CreateCluster</a> API operation, Amazon ECS
%% attempts to create the Amazon ECS service-linked role for your account so
%% that required resources in other AWS services can be managed on your
%% behalf. However, if the IAM user that makes the call does not have
%% permissions to create the service-linked role, it is not created. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using
%% Service-Linked Roles for Amazon ECS</a> in the <i>Amazon Elastic Container
%% Service Developer Guide</i>.
%%
%% </note>
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Runs and maintains a desired number of tasks from a specified task
%% definition. If the number of tasks running in a service drops below the
%% <code>desiredCount</code>, Amazon ECS runs another copy of the task in the
%% specified cluster. To update an existing service, see the UpdateService
%% action.
%%
%% In addition to maintaining the desired count of tasks in your service, you
%% can optionally run your service behind one or more load balancers. The
%% load balancers distribute traffic across the tasks that are associated
%% with the service. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html">Service
%% Load Balancing</a> in the <i>Amazon Elastic Container Service Developer
%% Guide</i>.
%%
%% Tasks for services that <i>do not</i> use a load balancer are considered
%% healthy if they're in the <code>RUNNING</code> state. Tasks for services
%% that <i>do</i> use a load balancer are considered healthy if they're in
%% the <code>RUNNING</code> state and the container instance that they're
%% hosted on is reported as healthy by the load balancer.
%%
%% There are two service scheduler strategies available:
%%
%% <ul> <li> <code>REPLICA</code> - The replica scheduling strategy places
%% and maintains the desired number of tasks across your cluster. By default,
%% the service scheduler spreads tasks across Availability Zones. You can use
%% task placement strategies and constraints to customize task placement
%% decisions. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html">Service
%% Scheduler Concepts</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
%%
%% </li> <li> <code>DAEMON</code> - The daemon scheduling strategy deploys
%% exactly one task on each active container instance that meets all of the
%% task placement constraints that you specify in your cluster. The service
%% scheduler also evaluates the task placement constraints for running tasks
%% and will stop tasks that do not meet the placement constraints. When using
%% this strategy, you don't need to specify a desired number of tasks, a task
%% placement strategy, or use Service Auto Scaling policies. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html">Service
%% Scheduler Concepts</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
%%
%% </li> </ul> You can optionally specify a deployment configuration for your
%% service. The deployment is triggered by changing properties, such as the
%% task definition or the desired count of a service, with an
%% <a>UpdateService</a> operation. The default value for a replica service
%% for <code>minimumHealthyPercent</code> is 100%. The default value for a
%% daemon service for <code>minimumHealthyPercent</code> is 0%.
%%
%% If a service is using the <code>ECS</code> deployment controller, the
%% minimum healthy percent represents a lower limit on the number of tasks in
%% a service that must remain in the <code>RUNNING</code> state during a
%% deployment, as a percentage of the desired number of tasks (rounded up to
%% the nearest integer), and while any container instances are in the
%% <code>DRAINING</code> state if the service contains tasks using the EC2
%% launch type. This parameter enables you to deploy without using additional
%% cluster capacity. For example, if your service has a desired number of
%% four tasks and a minimum healthy percent of 50%, the scheduler might stop
%% two existing tasks to free up cluster capacity before starting two new
%% tasks. Tasks for services that <i>do not</i> use a load balancer are
%% considered healthy if they're in the <code>RUNNING</code> state. Tasks for
%% services that <i>do</i> use a load balancer are considered healthy if
%% they're in the <code>RUNNING</code> state and they're reported as healthy
%% by the load balancer. The default value for minimum healthy percent is
%% 100%.
%%
%% If a service is using the <code>ECS</code> deployment controller, the
%% <b>maximum percent</b> parameter represents an upper limit on the number
%% of tasks in a service that are allowed in the <code>RUNNING</code> or
%% <code>PENDING</code> state during a deployment, as a percentage of the
%% desired number of tasks (rounded down to the nearest integer), and while
%% any container instances are in the <code>DRAINING</code> state if the
%% service contains tasks using the EC2 launch type. This parameter enables
%% you to define the deployment batch size. For example, if your service has
%% a desired number of four tasks and a maximum percent value of 200%, the
%% scheduler may start four new tasks before stopping the four older tasks
%% (provided that the cluster resources required to do this are available).
%% The default value for maximum percent is 200%.
%%
%% If a service is using either the <code>CODE_DEPLOY</code> or
%% <code>EXTERNAL</code> deployment controller types and tasks that use the
%% EC2 launch type, the <b>minimum healthy percent</b> and <b>maximum
%% percent</b> values are used only to define the lower and upper limit on
%% the number of the tasks in the service that remain in the
%% <code>RUNNING</code> state while the container instances are in the
%% <code>DRAINING</code> state. If the tasks in the service use the Fargate
%% launch type, the minimum healthy percent and maximum percent values aren't
%% used, although they're currently visible when describing your service.
%%
%% When creating a service that uses the <code>EXTERNAL</code> deployment
%% controller, you can specify only parameters that aren't controlled at the
%% task set level. The only required parameter is the service name. You
%% control your services using the <a>CreateTaskSet</a> operation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon
%% ECS Deployment Types</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
%%
%% When the service scheduler launches new tasks, it determines task
%% placement in your cluster using the following logic:
%%
%% <ul> <li> Determine which of the container instances in your cluster can
%% support your service's task definition (for example, they have the
%% required CPU, memory, ports, and container instance attributes).
%%
%% </li> <li> By default, the service scheduler attempts to balance tasks
%% across Availability Zones in this manner (although you can choose a
%% different placement strategy) with the <code>placementStrategy</code>
%% parameter):
%%
%% <ul> <li> Sort the valid container instances, giving priority to instances
%% that have the fewest number of running tasks for this service in their
%% respective Availability Zone. For example, if zone A has one running
%% service task and zones B and C each have zero, valid container instances
%% in either zone B or C are considered optimal for placement.
%%
%% </li> <li> Place the new service task on a valid container instance in an
%% optimal Availability Zone (based on the previous steps), favoring
%% container instances with the fewest number of running tasks for this
%% service.
%%
%% </li> </ul> </li> </ul>
create_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service(Client, Input, []).
create_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateService">>, Input, Options).

%% @doc Create a task set in the specified cluster and service. This is used
%% when a service uses the <code>EXTERNAL</code> deployment controller type.
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon
%% ECS Deployment Types</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
create_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_task_set(Client, Input, []).
create_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTaskSet">>, Input, Options).

%% @doc Disables an account setting for a specified IAM user, IAM role, or
%% the root user for an account.
delete_account_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_setting(Client, Input, []).
delete_account_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountSetting">>, Input, Options).

%% @doc Deletes one or more custom attributes from an Amazon ECS resource.
delete_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_attributes(Client, Input, []).
delete_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAttributes">>, Input, Options).

%% @doc Deletes the specified capacity provider.
%%
%% <note> The <code>FARGATE</code> and <code>FARGATE_SPOT</code> capacity
%% providers are reserved and cannot be deleted. You can disassociate them
%% from a cluster using either the <a>PutClusterCapacityProviders</a> API or
%% by deleting the cluster.
%%
%% </note> Prior to a capacity provider being deleted, the capacity provider
%% must be removed from the capacity provider strategy from all services. The
%% <a>UpdateService</a> API can be used to remove a capacity provider from a
%% service's capacity provider strategy. When updating a service, the
%% <code>forceNewDeployment</code> option can be used to ensure that any
%% tasks using the Amazon EC2 instance capacity provided by the capacity
%% provider are transitioned to use the capacity from the remaining capacity
%% providers. Only capacity providers that are not associated with a cluster
%% can be deleted. To remove a capacity provider from a cluster, you can
%% either use <a>PutClusterCapacityProviders</a> or delete the cluster.
delete_capacity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_capacity_provider(Client, Input, []).
delete_capacity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCapacityProvider">>, Input, Options).

%% @doc Deletes the specified cluster. The cluster will transition to the
%% <code>INACTIVE</code> state. Clusters with an <code>INACTIVE</code> status
%% may remain discoverable in your account for a period of time. However,
%% this behavior is subject to change in the future, so you should not rely
%% on <code>INACTIVE</code> clusters persisting.
%%
%% You must deregister all container instances from this cluster before you
%% may delete it. You can list the container instances in a cluster with
%% <a>ListContainerInstances</a> and deregister them with
%% <a>DeregisterContainerInstance</a>.
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
%% or in the <a>ListServices</a> API operation. After all tasks have
%% transitioned to either <code>STOPPING</code> or <code>STOPPED</code>
%% status, the service status moves from <code>DRAINING</code> to
%% <code>INACTIVE</code>. Services in the <code>DRAINING</code> or
%% <code>INACTIVE</code> status can still be viewed with the
%% <a>DescribeServices</a> API operation. However, in the future,
%% <code>INACTIVE</code> services may be cleaned up and purged from Amazon
%% ECS record keeping, and <a>DescribeServices</a> calls on those services
%% return a <code>ServiceNotFoundException</code> error.
%%
%% </note> <important> If you attempt to create a new service with the same
%% name as an existing service in either <code>ACTIVE</code> or
%% <code>DRAINING</code> status, you receive an error.
%%
%% </important>
delete_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service(Client, Input, []).
delete_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteService">>, Input, Options).

%% @doc Deletes a specified task set within a service. This is used when a
%% service uses the <code>EXTERNAL</code> deployment controller type. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon
%% ECS Deployment Types</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
delete_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_task_set(Client, Input, []).
delete_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTaskSet">>, Input, Options).

%% @doc Deregisters an Amazon ECS container instance from the specified
%% cluster. This instance is no longer available to run tasks.
%%
%% If you intend to use the container instance for some other purpose after
%% deregistration, you should stop all of the tasks running on the container
%% instance before deregistration. That prevents any orphaned tasks from
%% consuming resources.
%%
%% Deregistering a container instance removes the instance from a cluster,
%% but it does not terminate the EC2 instance. If you are finished using the
%% instance, be sure to terminate it in the Amazon EC2 console to stop
%% billing.
%%
%% <note> If you terminate a running container instance, Amazon ECS
%% automatically deregisters the instance from your cluster (stopped
%% container instances or instances with disconnected agents are not
%% automatically deregistered when terminated).
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
%% reference an <code>INACTIVE</code> task definition. However, there may be
%% up to a 10-minute window following deregistration where these restrictions
%% have not yet taken effect.
%%
%% <note> At this time, <code>INACTIVE</code> task definitions remain
%% discoverable in your account indefinitely. However, this behavior is
%% subject to change in the future, so you should not rely on
%% <code>INACTIVE</code> task definitions persisting beyond the lifecycle of
%% any associated tasks and services.
%%
%% </note>
deregister_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_task_definition(Client, Input, []).
deregister_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTaskDefinition">>, Input, Options).

%% @doc Describes one or more of your capacity providers.
describe_capacity_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_capacity_providers(Client, Input, []).
describe_capacity_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCapacityProviders">>, Input, Options).

%% @doc Describes one or more of your clusters.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Describes Amazon Elastic Container Service container instances.
%% Returns metadata about registered and remaining resources on each
%% container instance requested.
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

%% @doc Describes the task sets in the specified cluster and service. This is
%% used when a service uses the <code>EXTERNAL</code> deployment controller
%% type. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon
%% ECS Deployment Types</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
describe_task_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_task_sets(Client, Input, []).
describe_task_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTaskSets">>, Input, Options).

%% @doc Describes a specified task or tasks.
describe_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tasks(Client, Input, []).
describe_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTasks">>, Input, Options).

%% @doc <note> This action is only used by the Amazon ECS agent, and it is
%% not intended for use outside of the agent.
%%
%% </note> Returns an endpoint for the Amazon ECS agent to poll for updates.
discover_poll_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_poll_endpoint(Client, Input, []).
discover_poll_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverPollEndpoint">>, Input, Options).

%% @doc Lists the account settings for a specified principal.
list_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_settings(Client, Input, []).
list_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountSettings">>, Input, Options).

%% @doc Lists the attributes for Amazon ECS resources within a specified
%% target type and cluster. When you specify a target type and cluster,
%% <code>ListAttributes</code> returns a list of attribute objects, one for
%% each attribute on each resource. You can filter the list of results to a
%% single attribute name to only return results that have that name. You can
%% also filter the results by attribute name and value, for example, to see
%% which container instances in a cluster are running a Linux AMI
%% (<code>ecs.os-type=linux</code>).
list_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attributes(Client, Input, []).
list_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttributes">>, Input, Options).

%% @doc Returns a list of existing clusters.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc Returns a list of container instances in a specified cluster. You can
%% filter the results of a <code>ListContainerInstances</code> operation with
%% cluster query language statements inside the <code>filter</code>
%% parameter. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster
%% Query Language</a> in the <i>Amazon Elastic Container Service Developer
%% Guide</i>.
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

%% @doc List the tags for an Amazon ECS resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns a list of task definition families that are registered to
%% your account (which may include task definition families that no longer
%% have any <code>ACTIVE</code> task definition revisions).
%%
%% You can filter out task definition families that do not contain any
%% <code>ACTIVE</code> task definition revisions by setting the
%% <code>status</code> parameter to <code>ACTIVE</code>. You can also filter
%% the results with the <code>familyPrefix</code> parameter.
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
%%
%% Recently stopped tasks might appear in the returned results. Currently,
%% stopped tasks appear in the returned results for at least one hour.
list_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tasks(Client, Input, []).
list_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTasks">>, Input, Options).

%% @doc Modifies an account setting. Account settings are set on a per-Region
%% basis.
%%
%% If you change the account setting for the root user, the default settings
%% for all of the IAM users and roles for which no individual account setting
%% has been specified are reset. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html">Account
%% Settings</a> in the <i>Amazon Elastic Container Service Developer
%% Guide</i>.
%%
%% When <code>serviceLongArnFormat</code>, <code>taskLongArnFormat</code>, or
%% <code>containerInstanceLongArnFormat</code> are specified, the Amazon
%% Resource Name (ARN) and resource ID format of the resource type for a
%% specified IAM user, IAM role, or the root user for an account is affected.
%% The opt-in and opt-out account setting must be set for each Amazon ECS
%% resource separately. The ARN and resource ID format of a resource will be
%% defined by the opt-in status of the IAM user or role that created the
%% resource. You must enable this setting to use Amazon ECS features such as
%% resource tagging.
%%
%% When <code>awsvpcTrunking</code> is specified, the elastic network
%% interface (ENI) limit for any new container instances that support the
%% feature is changed. If <code>awsvpcTrunking</code> is enabled, any new
%% container instances that support the feature are launched have the
%% increased ENI limits available to them. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html">Elastic
%% Network Interface Trunking</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
%%
%% When <code>containerInsights</code> is specified, the default setting
%% indicating whether CloudWatch Container Insights is enabled for your
%% clusters is changed. If <code>containerInsights</code> is enabled, any new
%% clusters that are created will have Container Insights enabled unless you
%% disable it during cluster creation. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html">CloudWatch
%% Container Insights</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
put_account_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_setting(Client, Input, []).
put_account_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountSetting">>, Input, Options).

%% @doc Modifies an account setting for all IAM users on an account for whom
%% no individual account setting has been specified. Account settings are set
%% on a per-Region basis.
put_account_setting_default(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_setting_default(Client, Input, []).
put_account_setting_default(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountSettingDefault">>, Input, Options).

%% @doc Create or update an attribute on an Amazon ECS resource. If the
%% attribute does not exist, it is created. If the attribute exists, its
%% value is replaced with the specified value. To delete an attribute, use
%% <a>DeleteAttributes</a>. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a>
%% in the <i>Amazon Elastic Container Service Developer Guide</i>.
put_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_attributes(Client, Input, []).
put_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAttributes">>, Input, Options).

%% @doc Modifies the available capacity providers and the default capacity
%% provider strategy for a cluster.
%%
%% You must specify both the available capacity providers and a default
%% capacity provider strategy for the cluster. If the specified cluster has
%% existing capacity providers associated with it, you must specify all
%% existing capacity providers in addition to any new ones you want to add.
%% Any existing capacity providers associated with a cluster that are omitted
%% from a <a>PutClusterCapacityProviders</a> API call will be disassociated
%% with the cluster. You can only disassociate an existing capacity provider
%% from a cluster if it's not being used by any existing tasks.
%%
%% When creating a service or running a task on a cluster, if no capacity
%% provider or launch type is specified, then the cluster's default capacity
%% provider strategy is used. It is recommended to define a default capacity
%% provider strategy for your cluster, however you may specify an empty array
%% (<code>[]</code>) to bypass defining a default strategy.
put_cluster_capacity_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_cluster_capacity_providers(Client, Input, []).
put_cluster_capacity_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutClusterCapacityProviders">>, Input, Options).

%% @doc <note> This action is only used by the Amazon ECS agent, and it is
%% not intended for use outside of the agent.
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
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon
%% ECS Task Definitions</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
%%
%% You can specify an IAM role for your task with the
%% <code>taskRoleArn</code> parameter. When you specify an IAM role for a
%% task, its containers can then use the latest versions of the AWS CLI or
%% SDKs to make API requests to the AWS services that are specified in the
%% IAM policy associated with the role. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM
%% Roles for Tasks</a> in the <i>Amazon Elastic Container Service Developer
%% Guide</i>.
%%
%% You can specify a Docker networking mode for the containers in your task
%% definition with the <code>networkMode</code> parameter. The available
%% network modes correspond to those described in <a
%% href="https://docs.docker.com/engine/reference/run/#/network-settings">Network
%% settings</a> in the Docker run reference. If you specify the
%% <code>awsvpc</code> network mode, the task is allocated an elastic network
%% interface, and you must specify a <a>NetworkConfiguration</a> when you
%% create a service or run a task with the task definition. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task
%% Networking</a> in the <i>Amazon Elastic Container Service Developer
%% Guide</i>.
register_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_task_definition(Client, Input, []).
register_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTaskDefinition">>, Input, Options).

%% @doc Starts a new task using the specified task definition.
%%
%% You can allow Amazon ECS to place tasks for you, or you can customize how
%% Amazon ECS places tasks using placement constraints and placement
%% strategies. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling
%% Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.
%%
%% Alternatively, you can use <a>StartTask</a> to use your own scheduler or
%% place tasks manually on specific container instances.
%%
%% The Amazon ECS API follows an eventual consistency model, due to the
%% distributed nature of the system supporting the API. This means that the
%% result of an API command you run that affects your Amazon ECS resources
%% might not be immediately visible to all subsequent commands you run. Keep
%% this in mind when you carry out an API command that immediately follows a
%% previous API command.
%%
%% To manage eventual consistency, you can do the following:
%%
%% <ul> <li> Confirm the state of the resource before you run a command to
%% modify it. Run the DescribeTasks command using an exponential backoff
%% algorithm to ensure that you allow enough time for the previous command to
%% propagate through the system. To do this, run the DescribeTasks command
%% repeatedly, starting with a couple of seconds of wait time and increasing
%% gradually up to five minutes of wait time.
%%
%% </li> <li> Add wait time between subsequent commands, even if the
%% DescribeTasks command returns an accurate response. Apply an exponential
%% backoff algorithm starting with a couple of seconds of wait time, and
%% increase gradually up to about five minutes of wait time.
%%
%% </li> </ul>
run_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_task(Client, Input, []).
run_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunTask">>, Input, Options).

%% @doc Starts a new task from the specified task definition on the specified
%% container instance or instances.
%%
%% Alternatively, you can use <a>RunTask</a> to place tasks for you. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling
%% Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.
start_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_task(Client, Input, []).
start_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTask">>, Input, Options).

%% @doc Stops a running task. Any tags associated with the task will be
%% deleted.
%%
%% When <a>StopTask</a> is called on a task, the equivalent of <code>docker
%% stop</code> is issued to the containers running in the task. This results
%% in a <code>SIGTERM</code> value and a default 30-second timeout, after
%% which the <code>SIGKILL</code> value is sent and the containers are
%% forcibly stopped. If the container handles the <code>SIGTERM</code> value
%% gracefully and exits within 30 seconds from receiving it, no
%% <code>SIGKILL</code> value is sent.
%%
%% <note> The default 30-second timeout can be configured on the Amazon ECS
%% container agent with the <code>ECS_CONTAINER_STOP_TIMEOUT</code> variable.
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon
%% ECS Container Agent Configuration</a> in the <i>Amazon Elastic Container
%% Service Developer Guide</i>.
%%
%% </note>
stop_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_task(Client, Input, []).
stop_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTask">>, Input, Options).

%% @doc <note> This action is only used by the Amazon ECS agent, and it is
%% not intended for use outside of the agent.
%%
%% </note> Sent to acknowledge that an attachment changed states.
submit_attachment_state_changes(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_attachment_state_changes(Client, Input, []).
submit_attachment_state_changes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitAttachmentStateChanges">>, Input, Options).

%% @doc <note> This action is only used by the Amazon ECS agent, and it is
%% not intended for use outside of the agent.
%%
%% </note> Sent to acknowledge that a container changed states.
submit_container_state_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_container_state_change(Client, Input, []).
submit_container_state_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitContainerStateChange">>, Input, Options).

%% @doc <note> This action is only used by the Amazon ECS agent, and it is
%% not intended for use outside of the agent.
%%
%% </note> Sent to acknowledge that a task changed states.
submit_task_state_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_task_state_change(Client, Input, []).
submit_task_state_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitTaskStateChange">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% <code>resourceArn</code>. If existing tags on a resource are not specified
%% in the request parameters, they are not changed. When a resource is
%% deleted, the tags associated with that resource are deleted as well.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes specified tags from a resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies the settings to use for a cluster.
update_cluster_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster_settings(Client, Input, []).
update_cluster_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateClusterSettings">>, Input, Options).

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
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent">Manually
%% Updating the Amazon ECS Container Agent</a> in the <i>Amazon Elastic
%% Container Service Developer Guide</i>.
update_container_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_container_agent(Client, Input, []).
update_container_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContainerAgent">>, Input, Options).

%% @doc Modifies the status of an Amazon ECS container instance.
%%
%% Once a container instance has reached an <code>ACTIVE</code> state, you
%% can change the status of a container instance to <code>DRAINING</code> to
%% manually remove an instance from a cluster, for example to perform system
%% updates, update the Docker daemon, or scale down the cluster size.
%%
%% <important> A container instance cannot be changed to
%% <code>DRAINING</code> until it has reached an <code>ACTIVE</code> status.
%% If the instance is in any other status, an error will be received.
%%
%% </important> When you set a container instance to <code>DRAINING</code>,
%% Amazon ECS prevents new tasks from being scheduled for placement on the
%% container instance and replacement service tasks are started on other
%% container instances in the cluster if the resources are available. Service
%% tasks on the container instance that are in the <code>PENDING</code> state
%% are stopped immediately.
%%
%% Service tasks on the container instance that are in the
%% <code>RUNNING</code> state are stopped and replaced according to the
%% service's deployment configuration parameters,
%% <code>minimumHealthyPercent</code> and <code>maximumPercent</code>. You
%% can change the deployment configuration of your service using
%% <a>UpdateService</a>.
%%
%% <ul> <li> If <code>minimumHealthyPercent</code> is below 100%, the
%% scheduler can ignore <code>desiredCount</code> temporarily during task
%% replacement. For example, <code>desiredCount</code> is four tasks, a
%% minimum of 50% allows the scheduler to stop two existing tasks before
%% starting two new tasks. If the minimum is 100%, the service scheduler
%% can't remove existing tasks until the replacement tasks are considered
%% healthy. Tasks for services that do not use a load balancer are considered
%% healthy if they are in the <code>RUNNING</code> state. Tasks for services
%% that use a load balancer are considered healthy if they are in the
%% <code>RUNNING</code> state and the container instance they are hosted on
%% is reported as healthy by the load balancer.
%%
%% </li> <li> The <code>maximumPercent</code> parameter represents an upper
%% limit on the number of running tasks during task replacement, which
%% enables you to define the replacement batch size. For example, if
%% <code>desiredCount</code> is four tasks, a maximum of 200% starts four new
%% tasks before stopping the four tasks to be drained, provided that the
%% cluster resources required to do this are available. If the maximum is
%% 100%, then replacement tasks can't start until the draining tasks have
%% stopped.
%%
%% </li> </ul> Any <code>PENDING</code> or <code>RUNNING</code> tasks that do
%% not belong to a service are not affected. You must wait for them to finish
%% or stop them manually.
%%
%% A container instance has completed draining when it has no more
%% <code>RUNNING</code> tasks. You can verify this using <a>ListTasks</a>.
%%
%% When a container instance has been drained, you can set a container
%% instance to <code>ACTIVE</code> status and once it has reached that status
%% the Amazon ECS scheduler can begin scheduling tasks on the instance again.
update_container_instances_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_container_instances_state(Client, Input, []).
update_container_instances_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContainerInstancesState">>, Input, Options).

%% @doc <important> Updating the task placement strategies and constraints on
%% an Amazon ECS service remains in preview and is a Beta Service as defined
%% by and subject to the Beta Service Participation Service Terms located at
%% <a
%% href="https://aws.amazon.com/service-terms">https://aws.amazon.com/service-terms</a>
%% ("Beta Terms"). These Beta Terms apply to your participation in this
%% preview.
%%
%% </important> Modifies the parameters of a service.
%%
%% For services using the rolling update (<code>ECS</code>) deployment
%% controller, the desired count, deployment configuration, network
%% configuration, task placement constraints and strategies, or task
%% definition used can be updated.
%%
%% For services using the blue/green (<code>CODE_DEPLOY</code>) deployment
%% controller, only the desired count, deployment configuration, task
%% placement constraints and strategies, and health check grace period can be
%% updated using this API. If the network configuration, platform version, or
%% task definition need to be updated, a new AWS CodeDeploy deployment should
%% be created. For more information, see <a
%% href="https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html">CreateDeployment</a>
%% in the <i>AWS CodeDeploy API Reference</i>.
%%
%% For services using an external deployment controller, you can update only
%% the desired count, task placement constraints and strategies, and health
%% check grace period using this API. If the launch type, load balancer,
%% network configuration, platform version, or task definition need to be
%% updated, you should create a new task set. For more information, see
%% <a>CreateTaskSet</a>.
%%
%% You can add to or subtract from the number of instantiations of a task
%% definition in a service by specifying the cluster that the service is
%% running in and a new <code>desiredCount</code> parameter.
%%
%% If you have updated the Docker image of your application, you can create a
%% new task definition with that image and deploy it to your service. The
%% service scheduler uses the minimum healthy percent and maximum percent
%% parameters (in the service's deployment configuration) to determine the
%% deployment strategy.
%%
%% <note> If your updated Docker image uses the same tag as what is in the
%% existing task definition for your service (for example,
%% <code>my_image:latest</code>), you do not need to create a new revision of
%% your task definition. You can update the service using the
%% <code>forceNewDeployment</code> option. The new tasks launched by the
%% deployment pull the current image/tag combination from your repository
%% when they start.
%%
%% </note> You can also update the deployment configuration of a service.
%% When a deployment is triggered by updating the task definition of a
%% service, the service scheduler uses the deployment configuration
%% parameters, <code>minimumHealthyPercent</code> and
%% <code>maximumPercent</code>, to determine the deployment strategy.
%%
%% <ul> <li> If <code>minimumHealthyPercent</code> is below 100%, the
%% scheduler can ignore <code>desiredCount</code> temporarily during a
%% deployment. For example, if <code>desiredCount</code> is four tasks, a
%% minimum of 50% allows the scheduler to stop two existing tasks before
%% starting two new tasks. Tasks for services that do not use a load balancer
%% are considered healthy if they are in the <code>RUNNING</code> state.
%% Tasks for services that use a load balancer are considered healthy if they
%% are in the <code>RUNNING</code> state and the container instance they are
%% hosted on is reported as healthy by the load balancer.
%%
%% </li> <li> The <code>maximumPercent</code> parameter represents an upper
%% limit on the number of running tasks during a deployment, which enables
%% you to define the deployment batch size. For example, if
%% <code>desiredCount</code> is four tasks, a maximum of 200% starts four new
%% tasks before stopping the four older tasks (provided that the cluster
%% resources required to do this are available).
%%
%% </li> </ul> When <a>UpdateService</a> stops a task during a deployment,
%% the equivalent of <code>docker stop</code> is issued to the containers
%% running in the task. This results in a <code>SIGTERM</code> and a
%% 30-second timeout, after which <code>SIGKILL</code> is sent and the
%% containers are forcibly stopped. If the container handles the
%% <code>SIGTERM</code> gracefully and exits within 30 seconds from receiving
%% it, no <code>SIGKILL</code> is sent.
%%
%% When the service scheduler launches new tasks, it determines task
%% placement in your cluster with the following logic:
%%
%% <ul> <li> Determine which of the container instances in your cluster can
%% support your service's task definition (for example, they have the
%% required CPU, memory, ports, and container instance attributes).
%%
%% </li> <li> By default, the service scheduler attempts to balance tasks
%% across Availability Zones in this manner (although you can choose a
%% different placement strategy):
%%
%% <ul> <li> Sort the valid container instances by the fewest number of
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
%% </li> </ul> </li> </ul> When the service scheduler stops running tasks, it
%% attempts to maintain balance across the Availability Zones in your cluster
%% using the following logic:
%%
%% <ul> <li> Sort the container instances by the largest number of running
%% tasks for this service in the same Availability Zone as the instance. For
%% example, if zone A has one running service task and zones B and C each
%% have two, container instances in either zone B or C are considered optimal
%% for termination.
%%
%% </li> <li> Stop the task on a container instance in an optimal
%% Availability Zone (based on the previous steps), favoring container
%% instances with the largest number of running tasks for this service.
%%
%% </li> </ul>
update_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service(Client, Input, []).
update_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateService">>, Input, Options).

%% @doc Modifies which task set in a service is the primary task set. Any
%% parameters that are updated on the primary task set in a service will
%% transition to the service. This is used when a service uses the
%% <code>EXTERNAL</code> deployment controller type. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon
%% ECS Deployment Types</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
update_service_primary_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_primary_task_set(Client, Input, []).
update_service_primary_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServicePrimaryTaskSet">>, Input, Options).

%% @doc Modifies a task set. This is used when a service uses the
%% <code>EXTERNAL</code> deployment controller type. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon
%% ECS Deployment Types</a> in the <i>Amazon Elastic Container Service
%% Developer Guide</i>.
update_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task_set(Client, Input, []).
update_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTaskSet">>, Input, Options).

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
    Client1 = Client#{service => <<"ecs">>},
    Host = get_host(<<"ecs">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonEC2ContainerServiceV20141113.", Action/binary>>}
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

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
