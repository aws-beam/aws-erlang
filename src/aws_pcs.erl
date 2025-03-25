%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Parallel Computing Service (Amazon Web Services
%% PCS) is a managed service that makes it easier for
%% you to run and scale your high performance computing (HPC) workloads,
%% and build scientific and engineering models on Amazon Web Services using
%% Slurm.
%%
%% For more information, see
%% the Amazon Web Services Parallel Computing Service
%% User Guide: https://docs.aws.amazon.com/pcs/latest/userguide.
%%
%% This reference describes the actions and data types of the service
%% management API. You can use the
%% Amazon Web Services SDKs to call the API actions in software, or use the
%% Command Line Interface (CLI) to call the API
%% actions manually. These API actions manage the service through an Amazon
%% Web Services account.
%%
%% The API actions operate on Amazon Web Services PCS resources. A resource
%% is
%% an entity in Amazon Web Services that you can work with. Amazon Web
%% Services services create resources when you use
%% the features of the service. Examples of Amazon Web Services PCS resources
%% include clusters, compute
%% node groups, and queues. For more information about resources in Amazon
%% Web Services, see Resource:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/getting-started-terms-and-concepts.html#term-resource
%% in the Resource Explorer User Guide.
%%
%% An Amazon Web Services PCS compute node is an Amazon EC2 instance. You
%% don't launch
%% compute nodes directly. Amazon Web Services PCS uses configuration
%% information that you provide to launch
%% compute nodes in your Amazon Web Services account. You receive billing
%% charges for your running compute nodes.
%% Amazon Web Services PCS automatically terminates your compute nodes when
%% you delete the Amazon Web Services PCS resources
%% related to those compute nodes.
-module(aws_pcs).

-export([create_cluster/2,
         create_cluster/3,
         create_compute_node_group/2,
         create_compute_node_group/3,
         create_queue/2,
         create_queue/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_compute_node_group/2,
         delete_compute_node_group/3,
         delete_queue/2,
         delete_queue/3,
         get_cluster/2,
         get_cluster/3,
         get_compute_node_group/2,
         get_compute_node_group/3,
         get_queue/2,
         get_queue/3,
         list_clusters/2,
         list_clusters/3,
         list_compute_node_groups/2,
         list_compute_node_groups/3,
         list_queues/2,
         list_queues/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         register_compute_node_group_instance/2,
         register_compute_node_group_instance/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_compute_node_group/2,
         update_compute_node_group/3,
         update_queue/2,
         update_queue/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_queue_response() :: #{
%%   <<"queue">> => queue()
%% }
-type get_queue_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_queues_request() :: #{
%%   <<"clusterIdentifier">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_queues_request() :: #{binary() => any()}.

%% Example:
%% delete_compute_node_group_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"clusterIdentifier">> := string(),
%%   <<"computeNodeGroupIdentifier">> := string()
%% }
-type delete_compute_node_group_request() :: #{binary() => any()}.

%% Example:
%% slurm_custom_setting() :: #{
%%   <<"parameterName">> => [string()],
%%   <<"parameterValue">> => [string()]
%% }
-type slurm_custom_setting() :: #{binary() => any()}.

%% Example:
%% create_cluster_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type create_cluster_response() :: #{binary() => any()}.

%% Example:
%% compute_node_group_configuration() :: #{
%%   <<"computeNodeGroupId">> => [string()]
%% }
-type compute_node_group_configuration() :: #{binary() => any()}.

%% Example:
%% networking() :: #{
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"subnetIds">> => list(string()())
%% }
-type networking() :: #{binary() => any()}.

%% Example:
%% get_cluster_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type get_cluster_response() :: #{binary() => any()}.

%% Example:
%% queue() :: #{
%%   <<"arn">> => [string()],
%%   <<"clusterId">> => [string()],
%%   <<"computeNodeGroupConfigurations">> => list(compute_node_group_configuration()()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"errorInfo">> => list(error_info()()),
%%   <<"id">> => [string()],
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type queue() :: #{binary() => any()}.

%% Example:
%% error_info() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type error_info() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_queue_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"clusterIdentifier">> := string(),
%%   <<"computeNodeGroupConfigurations">> => list(compute_node_group_configuration()()),
%%   <<"queueIdentifier">> := string()
%% }
-type update_queue_request() :: #{binary() => any()}.

%% Example:
%% cluster_slurm_configuration() :: #{
%%   <<"authKey">> => slurm_auth_key(),
%%   <<"scaleDownIdleTimeInSeconds">> => [integer()],
%%   <<"slurmCustomSettings">> => list(slurm_custom_setting()())
%% }
-type cluster_slurm_configuration() :: #{binary() => any()}.

%% Example:
%% get_compute_node_group_response() :: #{
%%   <<"computeNodeGroup">> => compute_node_group()
%% }
-type get_compute_node_group_response() :: #{binary() => any()}.

%% Example:
%% queue_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"clusterId">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"id">> => [string()],
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type queue_summary() :: #{binary() => any()}.

%% Example:
%% cluster_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"id">> => [string()],
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => [string()],
%%   <<"status">> => list(any())
%% }
-type cluster_summary() :: #{binary() => any()}.

%% Example:
%% scheduler_request() :: #{
%%   <<"type">> => list(any()),
%%   <<"version">> => [string()]
%% }
-type scheduler_request() :: #{binary() => any()}.

%% Example:
%% compute_node_group() :: #{
%%   <<"amiId">> => string(),
%%   <<"arn">> => [string()],
%%   <<"clusterId">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"customLaunchTemplate">> => custom_launch_template(),
%%   <<"errorInfo">> => list(error_info()()),
%%   <<"iamInstanceProfileArn">> => string(),
%%   <<"id">> => [string()],
%%   <<"instanceConfigs">> => list(instance_config()()),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"purchaseOption">> => list(any()),
%%   <<"scalingConfiguration">> => scaling_configuration(),
%%   <<"slurmConfiguration">> => compute_node_group_slurm_configuration(),
%%   <<"spotOptions">> => spot_options(),
%%   <<"status">> => list(any()),
%%   <<"subnetIds">> => list(string()())
%% }
-type compute_node_group() :: #{binary() => any()}.

%% Example:
%% create_cluster_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"clusterName">> := string(),
%%   <<"networking">> := networking_request(),
%%   <<"scheduler">> := scheduler_request(),
%%   <<"size">> := list(any()),
%%   <<"slurmConfiguration">> => cluster_slurm_configuration_request(),
%%   <<"tags">> => map()
%% }
-type create_cluster_request() :: #{binary() => any()}.

%% Example:
%% register_compute_node_group_instance_response() :: #{
%%   <<"endpoints">> => list(endpoint()()),
%%   <<"nodeID">> => [string()],
%%   <<"sharedSecret">> => string()
%% }
-type register_compute_node_group_instance_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_queue_request() :: #{
%%   <<"clusterIdentifier">> := string(),
%%   <<"queueIdentifier">> := string()
%% }
-type get_queue_request() :: #{binary() => any()}.

%% Example:
%% cluster() :: #{
%%   <<"arn">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"endpoints">> => list(endpoint()()),
%%   <<"errorInfo">> => list(error_info()()),
%%   <<"id">> => [string()],
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => [string()],
%%   <<"networking">> => networking(),
%%   <<"scheduler">> => scheduler(),
%%   <<"size">> => list(any()),
%%   <<"slurmConfiguration">> => cluster_slurm_configuration(),
%%   <<"status">> => list(any())
%% }
-type cluster() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% scaling_configuration_request() :: #{
%%   <<"maxInstanceCount">> => [integer()],
%%   <<"minInstanceCount">> => [integer()]
%% }
-type scaling_configuration_request() :: #{binary() => any()}.

%% Example:
%% update_compute_node_group_slurm_configuration_request() :: #{
%%   <<"slurmCustomSettings">> => list(slurm_custom_setting()())
%% }
-type update_compute_node_group_slurm_configuration_request() :: #{binary() => any()}.

%% Example:
%% register_compute_node_group_instance_request() :: #{
%%   <<"bootstrapId">> := string(),
%%   <<"clusterIdentifier">> := string()
%% }
-type register_compute_node_group_instance_request() :: #{binary() => any()}.

%% Example:
%% list_compute_node_groups_response() :: #{
%%   <<"computeNodeGroups">> => list(compute_node_group_summary()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_compute_node_groups_response() :: #{binary() => any()}.

%% Example:
%% get_compute_node_group_request() :: #{
%%   <<"clusterIdentifier">> := string(),
%%   <<"computeNodeGroupIdentifier">> := string()
%% }
-type get_compute_node_group_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% update_compute_node_group_request() :: #{
%%   <<"amiId">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"clusterIdentifier">> := string(),
%%   <<"computeNodeGroupIdentifier">> := string(),
%%   <<"customLaunchTemplate">> => custom_launch_template(),
%%   <<"iamInstanceProfileArn">> => string(),
%%   <<"purchaseOption">> => list(any()),
%%   <<"scalingConfiguration">> => scaling_configuration_request(),
%%   <<"slurmConfiguration">> => update_compute_node_group_slurm_configuration_request(),
%%   <<"spotOptions">> => spot_options(),
%%   <<"subnetIds">> => list([string()]())
%% }
-type update_compute_node_group_request() :: #{binary() => any()}.

%% Example:
%% compute_node_group_slurm_configuration_request() :: #{
%%   <<"slurmCustomSettings">> => list(slurm_custom_setting()())
%% }
-type compute_node_group_slurm_configuration_request() :: #{binary() => any()}.

%% Example:
%% spot_options() :: #{
%%   <<"allocationStrategy">> => list(any())
%% }
-type spot_options() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% create_queue_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"clusterIdentifier">> := string(),
%%   <<"computeNodeGroupConfigurations">> => list(compute_node_group_configuration()()),
%%   <<"queueName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_queue_request() :: #{binary() => any()}.

%% Example:
%% list_clusters_response() :: #{
%%   <<"clusters">> => list(cluster_summary()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_clusters_response() :: #{binary() => any()}.

%% Example:
%% update_compute_node_group_response() :: #{
%%   <<"computeNodeGroup">> => compute_node_group()
%% }
-type update_compute_node_group_response() :: #{binary() => any()}.

%% Example:
%% delete_cluster_response() :: #{

%% }
-type delete_cluster_response() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"port">> => [string()],
%%   <<"privateIpAddress">> => [string()],
%%   <<"publicIpAddress">> => [string()],
%%   <<"type">> => list(any())
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% list_clusters_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_clusters_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% compute_node_group_slurm_configuration() :: #{
%%   <<"slurmCustomSettings">> => list(slurm_custom_setting()())
%% }
-type compute_node_group_slurm_configuration() :: #{binary() => any()}.

%% Example:
%% delete_cluster_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"clusterIdentifier">> := string()
%% }
-type delete_cluster_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% scaling_configuration() :: #{
%%   <<"maxInstanceCount">> => [integer()],
%%   <<"minInstanceCount">> => [integer()]
%% }
-type scaling_configuration() :: #{binary() => any()}.

%% Example:
%% cluster_slurm_configuration_request() :: #{
%%   <<"scaleDownIdleTimeInSeconds">> => [integer()],
%%   <<"slurmCustomSettings">> => list(slurm_custom_setting()())
%% }
-type cluster_slurm_configuration_request() :: #{binary() => any()}.

%% Example:
%% scheduler() :: #{
%%   <<"type">> => list(any()),
%%   <<"version">> => [string()]
%% }
-type scheduler() :: #{binary() => any()}.

%% Example:
%% create_compute_node_group_response() :: #{
%%   <<"computeNodeGroup">> => compute_node_group()
%% }
-type create_compute_node_group_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% instance_config() :: #{
%%   <<"instanceType">> => [string()]
%% }
-type instance_config() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_compute_node_group_response() :: #{

%% }
-type delete_compute_node_group_response() :: #{binary() => any()}.

%% Example:
%% list_queues_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"queues">> => list(queue_summary()())
%% }
-type list_queues_response() :: #{binary() => any()}.

%% Example:
%% list_compute_node_groups_request() :: #{
%%   <<"clusterIdentifier">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_compute_node_groups_request() :: #{binary() => any()}.

%% Example:
%% update_queue_response() :: #{
%%   <<"queue">> => queue()
%% }
-type update_queue_response() :: #{binary() => any()}.

%% Example:
%% delete_queue_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"clusterIdentifier">> := string(),
%%   <<"queueIdentifier">> := string()
%% }
-type delete_queue_request() :: #{binary() => any()}.

%% Example:
%% networking_request() :: #{
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"subnetIds">> => list(string()())
%% }
-type networking_request() :: #{binary() => any()}.

%% Example:
%% create_compute_node_group_request() :: #{
%%   <<"amiId">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"clusterIdentifier">> := string(),
%%   <<"computeNodeGroupName">> := string(),
%%   <<"customLaunchTemplate">> := custom_launch_template(),
%%   <<"iamInstanceProfileArn">> := string(),
%%   <<"instanceConfigs">> := list(instance_config()()),
%%   <<"purchaseOption">> => list(any()),
%%   <<"scalingConfiguration">> := scaling_configuration_request(),
%%   <<"slurmConfiguration">> => compute_node_group_slurm_configuration_request(),
%%   <<"spotOptions">> => spot_options(),
%%   <<"subnetIds">> := list([string()]()),
%%   <<"tags">> => map()
%% }
-type create_compute_node_group_request() :: #{binary() => any()}.

%% Example:
%% delete_queue_response() :: #{

%% }
-type delete_queue_response() :: #{binary() => any()}.

%% Example:
%% compute_node_group_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"clusterId">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"id">> => [string()],
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type compute_node_group_summary() :: #{binary() => any()}.

%% Example:
%% get_cluster_request() :: #{
%%   <<"clusterIdentifier">> := string()
%% }
-type get_cluster_request() :: #{binary() => any()}.

%% Example:
%% slurm_auth_key() :: #{
%%   <<"secretArn">> => [string()],
%%   <<"secretVersion">> => [string()]
%% }
-type slurm_auth_key() :: #{binary() => any()}.

%% Example:
%% custom_launch_template() :: #{
%%   <<"id">> => [string()],
%%   <<"version">> => [string()]
%% }
-type custom_launch_template() :: #{binary() => any()}.

%% Example:
%% create_queue_response() :: #{
%%   <<"queue">> => queue()
%% }
-type create_queue_response() :: #{binary() => any()}.

-type create_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_compute_node_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_queue_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_compute_node_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_queue_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_compute_node_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_queue_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_clusters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_compute_node_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_queues_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type register_compute_node_group_instance_errors() ::
    access_denied_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

-type update_compute_node_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_queue_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a cluster in your account.
%%
%% Amazon Web Services PCS creates the cluster controller in a
%% service-owned account. The cluster controller communicates with the
%% cluster resources in
%% your account. The subnets and security groups for the cluster must already
%% exist before you
%% use this API action.
%%
%% It takes time for Amazon Web Services PCS to create the cluster. The
%% cluster is in
%% a `Creating' state until it is ready to use. There can only be 1
%% cluster in a `Creating' state per Amazon Web Services Region per
%% Amazon Web Services account.
%% `CreateCluster'
%% fails with a `ServiceQuotaExceededException' if there is already
%% a cluster in a `Creating' state.
-spec create_cluster(aws_client:aws_client(), create_cluster_request()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_request(), proplists:proplist()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates a managed set of compute nodes.
%%
%% You associate a compute node group with a
%% cluster through 1 or more Amazon Web Services PCS queues or as part of the
%% login fleet. A compute node
%% group includes the definition of the compute properties and lifecycle
%% management.
%% Amazon Web Services PCS uses the information you provide to this API
%% action to launch compute nodes in
%% your account. You can only specify subnets in the same Amazon VPC as your
%% cluster. You receive
%% billing charges for the compute nodes that Amazon Web Services PCS
%% launches in your account. You must
%% already have a launch template before you call this API. For more
%% information, see Launch an
%% instance from a launch template:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html
%% in the Amazon Elastic Compute Cloud User Guide for Linux
%% Instances.
-spec create_compute_node_group(aws_client:aws_client(), create_compute_node_group_request()) ->
    {ok, create_compute_node_group_response(), tuple()} |
    {error, any()} |
    {error, create_compute_node_group_errors(), tuple()}.
create_compute_node_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_compute_node_group(Client, Input, []).

-spec create_compute_node_group(aws_client:aws_client(), create_compute_node_group_request(), proplists:proplist()) ->
    {ok, create_compute_node_group_response(), tuple()} |
    {error, any()} |
    {error, create_compute_node_group_errors(), tuple()}.
create_compute_node_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateComputeNodeGroup">>, Input, Options).

%% @doc Creates a job queue.
%%
%% You must associate 1 or more compute node groups with the queue.
%% You can associate 1 compute node group with multiple queues.
-spec create_queue(aws_client:aws_client(), create_queue_request()) ->
    {ok, create_queue_response(), tuple()} |
    {error, any()} |
    {error, create_queue_errors(), tuple()}.
create_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_queue(Client, Input, []).

-spec create_queue(aws_client:aws_client(), create_queue_request(), proplists:proplist()) ->
    {ok, create_queue_response(), tuple()} |
    {error, any()} |
    {error, create_queue_errors(), tuple()}.
create_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateQueue">>, Input, Options).

%% @doc Deletes a cluster and all its linked resources.
%%
%% You must delete all queues and compute
%% node groups associated with the cluster before you can delete the cluster.
-spec delete_cluster(aws_client:aws_client(), delete_cluster_request()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).

-spec delete_cluster(aws_client:aws_client(), delete_cluster_request(), proplists:proplist()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes a compute node group.
%%
%% You must delete all queues associated with the compute
%% node group first.
-spec delete_compute_node_group(aws_client:aws_client(), delete_compute_node_group_request()) ->
    {ok, delete_compute_node_group_response(), tuple()} |
    {error, any()} |
    {error, delete_compute_node_group_errors(), tuple()}.
delete_compute_node_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_compute_node_group(Client, Input, []).

-spec delete_compute_node_group(aws_client:aws_client(), delete_compute_node_group_request(), proplists:proplist()) ->
    {ok, delete_compute_node_group_response(), tuple()} |
    {error, any()} |
    {error, delete_compute_node_group_errors(), tuple()}.
delete_compute_node_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteComputeNodeGroup">>, Input, Options).

%% @doc Deletes a job queue.
%%
%% If the compute node group associated with this queue isn't
%% associated with any other queues, Amazon Web Services PCS terminates all
%% the compute nodes for this
%% queue.
-spec delete_queue(aws_client:aws_client(), delete_queue_request()) ->
    {ok, delete_queue_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_errors(), tuple()}.
delete_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_queue(Client, Input, []).

-spec delete_queue(aws_client:aws_client(), delete_queue_request(), proplists:proplist()) ->
    {ok, delete_queue_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_errors(), tuple()}.
delete_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteQueue">>, Input, Options).

%% @doc Returns detailed information about a running cluster in your account.
%%
%% This API action
%% provides networking information, endpoint information for communication
%% with the scheduler,
%% and provisioning status.
-spec get_cluster(aws_client:aws_client(), get_cluster_request()) ->
    {ok, get_cluster_response(), tuple()} |
    {error, any()} |
    {error, get_cluster_errors(), tuple()}.
get_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cluster(Client, Input, []).

-spec get_cluster(aws_client:aws_client(), get_cluster_request(), proplists:proplist()) ->
    {ok, get_cluster_response(), tuple()} |
    {error, any()} |
    {error, get_cluster_errors(), tuple()}.
get_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCluster">>, Input, Options).

%% @doc Returns detailed information about a compute node group.
%%
%% This API action provides
%% networking information, EC2 instance type, compute node group status, and
%% scheduler (such
%% as Slurm) configuration.
-spec get_compute_node_group(aws_client:aws_client(), get_compute_node_group_request()) ->
    {ok, get_compute_node_group_response(), tuple()} |
    {error, any()} |
    {error, get_compute_node_group_errors(), tuple()}.
get_compute_node_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compute_node_group(Client, Input, []).

-spec get_compute_node_group(aws_client:aws_client(), get_compute_node_group_request(), proplists:proplist()) ->
    {ok, get_compute_node_group_response(), tuple()} |
    {error, any()} |
    {error, get_compute_node_group_errors(), tuple()}.
get_compute_node_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComputeNodeGroup">>, Input, Options).

%% @doc Returns detailed information about a queue.
%%
%% The information includes the compute node
%% groups that the queue uses to schedule jobs.
-spec get_queue(aws_client:aws_client(), get_queue_request()) ->
    {ok, get_queue_response(), tuple()} |
    {error, any()} |
    {error, get_queue_errors(), tuple()}.
get_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_queue(Client, Input, []).

-spec get_queue(aws_client:aws_client(), get_queue_request(), proplists:proplist()) ->
    {ok, get_queue_response(), tuple()} |
    {error, any()} |
    {error, get_queue_errors(), tuple()}.
get_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueue">>, Input, Options).

%% @doc Returns a list of running clusters in your account.
-spec list_clusters(aws_client:aws_client(), list_clusters_request()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).

-spec list_clusters(aws_client:aws_client(), list_clusters_request(), proplists:proplist()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc Returns a list of all compute node groups associated with a cluster.
-spec list_compute_node_groups(aws_client:aws_client(), list_compute_node_groups_request()) ->
    {ok, list_compute_node_groups_response(), tuple()} |
    {error, any()} |
    {error, list_compute_node_groups_errors(), tuple()}.
list_compute_node_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compute_node_groups(Client, Input, []).

-spec list_compute_node_groups(aws_client:aws_client(), list_compute_node_groups_request(), proplists:proplist()) ->
    {ok, list_compute_node_groups_response(), tuple()} |
    {error, any()} |
    {error, list_compute_node_groups_errors(), tuple()}.
list_compute_node_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComputeNodeGroups">>, Input, Options).

%% @doc Returns a list of all queues associated with a cluster.
-spec list_queues(aws_client:aws_client(), list_queues_request()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_queues(Client, Input, []).

-spec list_queues(aws_client:aws_client(), list_queues_request(), proplists:proplist()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQueues">>, Input, Options).

%% @doc Returns a list of all tags on an Amazon Web Services PCS resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc
%% This API action isn't intended for you to use.
%%
%% Amazon Web Services PCS uses this API action to register the compute nodes
%% it launches in your account.
-spec register_compute_node_group_instance(aws_client:aws_client(), register_compute_node_group_instance_request()) ->
    {ok, register_compute_node_group_instance_response(), tuple()} |
    {error, any()} |
    {error, register_compute_node_group_instance_errors(), tuple()}.
register_compute_node_group_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_compute_node_group_instance(Client, Input, []).

-spec register_compute_node_group_instance(aws_client:aws_client(), register_compute_node_group_instance_request(), proplists:proplist()) ->
    {ok, register_compute_node_group_instance_response(), tuple()} |
    {error, any()} |
    {error, register_compute_node_group_instance_errors(), tuple()}.
register_compute_node_group_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterComputeNodeGroupInstance">>, Input, Options).

%% @doc Adds or edits tags on an Amazon Web Services PCS resource.
%%
%% Each tag consists of a tag key and a tag
%% value. The tag key and tag value are case-sensitive strings. The tag value
%% can be an empty
%% (null) string. To add a tag, specify a new tag key and a tag value. To
%% edit a tag, specify
%% an existing tag key and a new tag value.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes tags from an Amazon Web Services PCS resource.
%%
%% To delete a tag, specify the tag key and the
%% Amazon Resource Name (ARN) of the Amazon Web Services PCS resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a compute node group.
%%
%% You can update many of the fields related to your compute
%% node group including the configurations for networking, compute nodes, and
%% settings
%% specific to your scheduler (such as Slurm).
-spec update_compute_node_group(aws_client:aws_client(), update_compute_node_group_request()) ->
    {ok, update_compute_node_group_response(), tuple()} |
    {error, any()} |
    {error, update_compute_node_group_errors(), tuple()}.
update_compute_node_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_compute_node_group(Client, Input, []).

-spec update_compute_node_group(aws_client:aws_client(), update_compute_node_group_request(), proplists:proplist()) ->
    {ok, update_compute_node_group_response(), tuple()} |
    {error, any()} |
    {error, update_compute_node_group_errors(), tuple()}.
update_compute_node_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateComputeNodeGroup">>, Input, Options).

%% @doc Updates the compute node group configuration of a queue.
%%
%% Use this API to change the
%% compute node groups that the queue can send jobs to.
-spec update_queue(aws_client:aws_client(), update_queue_request()) ->
    {ok, update_queue_response(), tuple()} |
    {error, any()} |
    {error, update_queue_errors(), tuple()}.
update_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_queue(Client, Input, []).

-spec update_queue(aws_client:aws_client(), update_queue_request(), proplists:proplist()) ->
    {ok, update_queue_response(), tuple()} |
    {error, any()} |
    {error, update_queue_errors(), tuple()}.
update_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateQueue">>, Input, Options).

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
    Client1 = Client#{service => <<"pcs">>},
    Host = build_host(<<"pcs">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSParallelComputingService.", Action/binary>>}
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
