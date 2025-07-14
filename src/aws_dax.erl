%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc DAX is a managed caching service engineered for Amazon DynamoDB.
%%
%% DAX
%% dramatically speeds up database reads by caching frequently-accessed data
%% from DynamoDB, so
%% applications can access that data with sub-millisecond latency. You can
%% create a DAX
%% cluster easily, using the AWS Management Console. With a few simple
%% modifications to
%% your code, your application can begin taking advantage of the DAX cluster
%% and realize
%% significant improvements in read performance.
-module(aws_dax).

-export([create_cluster/2,
         create_cluster/3,
         create_parameter_group/2,
         create_parameter_group/3,
         create_subnet_group/2,
         create_subnet_group/3,
         decrease_replication_factor/2,
         decrease_replication_factor/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_parameter_group/2,
         delete_parameter_group/3,
         delete_subnet_group/2,
         delete_subnet_group/3,
         describe_clusters/2,
         describe_clusters/3,
         describe_default_parameters/2,
         describe_default_parameters/3,
         describe_events/2,
         describe_events/3,
         describe_parameter_groups/2,
         describe_parameter_groups/3,
         describe_parameters/2,
         describe_parameters/3,
         describe_subnet_groups/2,
         describe_subnet_groups/3,
         increase_replication_factor/2,
         increase_replication_factor/3,
         list_tags/2,
         list_tags/3,
         reboot_node/2,
         reboot_node/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_cluster/2,
         update_cluster/3,
         update_parameter_group/2,
         update_parameter_group/3,
         update_subnet_group/2,
         update_subnet_group/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% sse_description() :: #{
%%   <<"Status">> => list(any())
%% }
-type sse_description() :: #{binary() => any()}.

%% Example:
%% node_quota_for_customer_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type node_quota_for_customer_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% reboot_node_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type reboot_node_response() :: #{binary() => any()}.

%% Example:
%% create_subnet_group_response() :: #{
%%   <<"SubnetGroup">> => subnet_group()
%% }
-type create_subnet_group_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_parameter_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ParameterGroupName">> := string()
%% }
-type create_parameter_group_request() :: #{binary() => any()}.

%% Example:
%% describe_parameter_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ParameterGroups">> => list(parameter_group())
%% }
-type describe_parameter_groups_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type create_cluster_response() :: #{binary() => any()}.

%% Example:
%% subnet_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% create_parameter_group_response() :: #{
%%   <<"ParameterGroup">> => parameter_group()
%% }
-type create_parameter_group_response() :: #{binary() => any()}.

%% Example:
%% describe_parameters_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ParameterGroupName">> := string(),
%%   <<"Source">> => string()
%% }
-type describe_parameters_request() :: #{binary() => any()}.

%% Example:
%% security_group_membership() :: #{
%%   <<"SecurityGroupIdentifier">> => string(),
%%   <<"Status">> => string()
%% }
-type security_group_membership() :: #{binary() => any()}.

%% Example:
%% cluster_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_not_found_fault() :: #{binary() => any()}.

%% Example:
%% subnet() :: #{
%%   <<"SubnetAvailabilityZone">> => string(),
%%   <<"SubnetIdentifier">> => string()
%% }
-type subnet() :: #{binary() => any()}.

%% Example:
%% invalid_subnet() :: #{
%%   <<"message">> => string()
%% }
-type invalid_subnet() :: #{binary() => any()}.

%% Example:
%% parameter_name_value() :: #{
%%   <<"ParameterName">> => string(),
%%   <<"ParameterValue">> => string()
%% }
-type parameter_name_value() :: #{binary() => any()}.

%% Example:
%% list_tags_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_response() :: #{binary() => any()}.

%% Example:
%% describe_parameters_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Parameters">> => list(parameter())
%% }
-type describe_parameters_response() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_group_state_fault() :: #{binary() => any()}.

%% Example:
%% subnet_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_parameter_group_request() :: #{
%%   <<"ParameterGroupName">> := string()
%% }
-type delete_parameter_group_request() :: #{binary() => any()}.

%% Example:
%% parameter_group_status() :: #{
%%   <<"NodeIdsToReboot">> => list(string()),
%%   <<"ParameterApplyStatus">> => string(),
%%   <<"ParameterGroupName">> => string()
%% }
-type parameter_group_status() :: #{binary() => any()}.

%% Example:
%% tag_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type tag_not_found_fault() :: #{binary() => any()}.

%% Example:
%% update_cluster_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"Description">> => string(),
%%   <<"NotificationTopicArn">> => string(),
%%   <<"NotificationTopicStatus">> => string(),
%%   <<"ParameterGroupName">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"SecurityGroupIds">> => list(string())
%% }
-type update_cluster_request() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_combination_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_combination_exception() :: #{binary() => any()}.

%% Example:
%% invalid_vpc_network_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_vpc_network_state_fault() :: #{binary() => any()}.

%% Example:
%% tag_quota_per_resource_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type tag_quota_per_resource_exceeded() :: #{binary() => any()}.

%% Example:
%% delete_subnet_group_request() :: #{
%%   <<"SubnetGroupName">> := string()
%% }
-type delete_subnet_group_request() :: #{binary() => any()}.

%% Example:
%% subnet_group() :: #{
%%   <<"Description">> => string(),
%%   <<"SubnetGroupName">> => string(),
%%   <<"Subnets">> => list(subnet()),
%%   <<"VpcId">> => string()
%% }
-type subnet_group() :: #{binary() => any()}.

%% Example:
%% decrease_replication_factor_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type decrease_replication_factor_response() :: #{binary() => any()}.

%% Example:
%% create_cluster_request() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"ClusterEndpointEncryptionType">> => list(any()),
%%   <<"ClusterName">> := string(),
%%   <<"Description">> => string(),
%%   <<"IamRoleArn">> := string(),
%%   <<"NodeType">> := string(),
%%   <<"NotificationTopicArn">> => string(),
%%   <<"ParameterGroupName">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"ReplicationFactor">> := integer(),
%%   <<"SSESpecification">> => sse_specification(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetGroupName">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_cluster_request() :: #{binary() => any()}.

%% Example:
%% describe_default_parameters_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Parameters">> => list(parameter())
%% }
-type describe_default_parameters_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% cluster() :: #{
%%   <<"ActiveNodes">> => integer(),
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterDiscoveryEndpoint">> => endpoint(),
%%   <<"ClusterEndpointEncryptionType">> => list(any()),
%%   <<"ClusterName">> => string(),
%%   <<"Description">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"NodeIdsToRemove">> => list(string()),
%%   <<"NodeType">> => string(),
%%   <<"Nodes">> => list(node()),
%%   <<"NotificationConfiguration">> => notification_configuration(),
%%   <<"ParameterGroup">> => parameter_group_status(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"SSEDescription">> => sse_description(),
%%   <<"SecurityGroups">> => list(security_group_membership()),
%%   <<"Status">> => string(),
%%   <<"SubnetGroup">> => string(),
%%   <<"TotalNodes">> => integer()
%% }
-type cluster() :: #{binary() => any()}.

%% Example:
%% subnet_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{

%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% increase_replication_factor_request() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"ClusterName">> := string(),
%%   <<"NewReplicationFactor">> := integer()
%% }
-type increase_replication_factor_request() :: #{binary() => any()}.

%% Example:
%% describe_subnet_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SubnetGroups">> => list(subnet_group())
%% }
-type describe_subnet_groups_response() :: #{binary() => any()}.

%% Example:
%% parameter() :: #{
%%   <<"AllowedValues">> => string(),
%%   <<"ChangeType">> => list(any()),
%%   <<"DataType">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsModifiable">> => list(any()),
%%   <<"NodeTypeSpecificValues">> => list(node_type_specific_value()),
%%   <<"ParameterName">> => string(),
%%   <<"ParameterType">> => list(any()),
%%   <<"ParameterValue">> => string(),
%%   <<"Source">> => string()
%% }
-type parameter() :: #{binary() => any()}.

%% Example:
%% update_subnet_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"SubnetGroupName">> := string(),
%%   <<"SubnetIds">> => list(string())
%% }
-type update_subnet_group_request() :: #{binary() => any()}.

%% Example:
%% invalid_arn_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_arn_fault() :: #{binary() => any()}.

%% Example:
%% describe_default_parameters_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_default_parameters_request() :: #{binary() => any()}.

%% Example:
%% create_subnet_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"SubnetGroupName">> := string(),
%%   <<"SubnetIds">> := list(string())
%% }
-type create_subnet_group_request() :: #{binary() => any()}.

%% Example:
%% parameter_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type parameter_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% node_type_specific_value() :: #{
%%   <<"NodeType">> => string(),
%%   <<"Value">> => string()
%% }
-type node_type_specific_value() :: #{binary() => any()}.

%% Example:
%% delete_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type delete_cluster_response() :: #{binary() => any()}.

%% Example:
%% delete_subnet_group_response() :: #{
%%   <<"DeletionMessage">> => string()
%% }
-type delete_subnet_group_response() :: #{binary() => any()}.

%% Example:
%% decrease_replication_factor_request() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"ClusterName">> := string(),
%%   <<"NewReplicationFactor">> := integer(),
%%   <<"NodeIdsToRemove">> => list(string())
%% }
-type decrease_replication_factor_request() :: #{binary() => any()}.

%% Example:
%% cluster_quota_for_customer_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_quota_for_customer_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% notification_configuration() :: #{
%%   <<"TopicArn">> => string(),
%%   <<"TopicStatus">> => string()
%% }
-type notification_configuration() :: #{binary() => any()}.

%% Example:
%% delete_parameter_group_response() :: #{
%%   <<"DeletionMessage">> => string()
%% }
-type delete_parameter_group_response() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"Port">> => integer(),
%%   <<"URL">> => string()
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% dax_node() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"Endpoint">> => endpoint(),
%%   <<"NodeCreateTime">> => non_neg_integer(),
%%   <<"NodeId">> => string(),
%%   <<"NodeStatus">> => string(),
%%   <<"ParameterGroupStatus">> => string()
%% }
-type dax_node() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"SourceName">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type event() :: #{binary() => any()}.

%% Example:
%% delete_cluster_request() :: #{
%%   <<"ClusterName">> := string()
%% }
-type delete_cluster_request() :: #{binary() => any()}.

%% Example:
%% parameter_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type parameter_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_events_request() :: #{
%%   <<"Duration">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SourceName">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type describe_events_request() :: #{binary() => any()}.

%% Example:
%% describe_subnet_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SubnetGroupNames">> => list(string())
%% }
-type describe_subnet_groups_request() :: #{binary() => any()}.

%% Example:
%% subnet_in_use() :: #{
%%   <<"message">> => string()
%% }
-type subnet_in_use() :: #{binary() => any()}.

%% Example:
%% service_linked_role_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type service_linked_role_not_found_fault() :: #{binary() => any()}.

%% Example:
%% increase_replication_factor_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type increase_replication_factor_response() :: #{binary() => any()}.

%% Example:
%% sse_specification() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type sse_specification() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_parameter_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ParameterGroupNames">> => list(string())
%% }
-type describe_parameter_groups_request() :: #{binary() => any()}.

%% Example:
%% describe_clusters_response() :: #{
%%   <<"Clusters">> => list(cluster()),
%%   <<"NextToken">> => string()
%% }
-type describe_clusters_response() :: #{binary() => any()}.

%% Example:
%% reboot_node_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"NodeId">> := string()
%% }
-type reboot_node_request() :: #{binary() => any()}.

%% Example:
%% invalid_cluster_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cluster_state_fault() :: #{binary() => any()}.

%% Example:
%% update_parameter_group_response() :: #{
%%   <<"ParameterGroup">> => parameter_group()
%% }
-type update_parameter_group_response() :: #{binary() => any()}.

%% Example:
%% subnet_group_in_use_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_group_in_use_fault() :: #{binary() => any()}.

%% Example:
%% update_parameter_group_request() :: #{
%%   <<"ParameterGroupName">> := string(),
%%   <<"ParameterNameValues">> := list(parameter_name_value())
%% }
-type update_parameter_group_request() :: #{binary() => any()}.

%% Example:
%% parameter_group() :: #{
%%   <<"Description">> => string(),
%%   <<"ParameterGroupName">> => string()
%% }
-type parameter_group() :: #{binary() => any()}.

%% Example:
%% insufficient_cluster_capacity_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_cluster_capacity_fault() :: #{binary() => any()}.

%% Example:
%% cluster_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceName">> := string()
%% }
-type list_tags_request() :: #{binary() => any()}.

%% Example:
%% subnet_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type subnet_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% node_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type node_not_found_fault() :: #{binary() => any()}.

%% Example:
%% parameter_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type parameter_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_clusters_request() :: #{
%%   <<"ClusterNames">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_clusters_request() :: #{binary() => any()}.

%% Example:
%% describe_events_response() :: #{
%%   <<"Events">> => list(event()),
%%   <<"NextToken">> => string()
%% }
-type describe_events_response() :: #{binary() => any()}.

%% Example:
%% update_subnet_group_response() :: #{
%%   <<"SubnetGroup">> => subnet_group()
%% }
-type update_subnet_group_response() :: #{binary() => any()}.

%% Example:
%% node_quota_for_cluster_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type node_quota_for_cluster_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% update_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type update_cluster_response() :: #{binary() => any()}.

-type create_cluster_errors() ::
    node_quota_for_cluster_exceeded_fault() | 
    parameter_group_not_found_fault() | 
    cluster_already_exists_fault() | 
    insufficient_cluster_capacity_fault() | 
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    cluster_quota_for_customer_exceeded_fault() | 
    invalid_parameter_value_exception() | 
    service_quota_exceeded_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    subnet_group_not_found_fault() | 
    invalid_parameter_group_state_fault() | 
    node_quota_for_customer_exceeded_fault().

-type create_parameter_group_errors() ::
    service_linked_role_not_found_fault() | 
    parameter_group_quota_exceeded_fault() | 
    parameter_group_already_exists_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    invalid_parameter_group_state_fault().

-type create_subnet_group_errors() ::
    subnet_quota_exceeded_fault() | 
    service_linked_role_not_found_fault() | 
    subnet_group_quota_exceeded_fault() | 
    invalid_subnet() | 
    subnet_group_already_exists_fault().

-type decrease_replication_factor_errors() ::
    node_not_found_fault() | 
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault().

-type delete_cluster_errors() ::
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault().

-type delete_parameter_group_errors() ::
    parameter_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    invalid_parameter_group_state_fault().

-type delete_subnet_group_errors() ::
    subnet_group_in_use_fault() | 
    service_linked_role_not_found_fault() | 
    subnet_group_not_found_fault().

-type describe_clusters_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault().

-type describe_default_parameters_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_events_errors() ::
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_parameter_groups_errors() ::
    parameter_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_parameters_errors() ::
    parameter_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_subnet_groups_errors() ::
    service_linked_role_not_found_fault() | 
    subnet_group_not_found_fault().

-type increase_replication_factor_errors() ::
    node_quota_for_cluster_exceeded_fault() | 
    insufficient_cluster_capacity_fault() | 
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_vpc_network_state_fault() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault() | 
    node_quota_for_customer_exceeded_fault().

-type list_tags_errors() ::
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_arn_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault().

-type reboot_node_errors() ::
    node_not_found_fault() | 
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault().

-type tag_resource_errors() ::
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_arn_fault() | 
    invalid_parameter_value_exception() | 
    tag_quota_per_resource_exceeded() | 
    invalid_parameter_combination_exception() | 
    cluster_not_found_fault().

-type untag_resource_errors() ::
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_arn_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    tag_not_found_fault() | 
    cluster_not_found_fault().

-type update_cluster_errors() ::
    parameter_group_not_found_fault() | 
    invalid_cluster_state_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    invalid_parameter_group_state_fault() | 
    cluster_not_found_fault().

-type update_parameter_group_errors() ::
    parameter_group_not_found_fault() | 
    service_linked_role_not_found_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    invalid_parameter_group_state_fault().

-type update_subnet_group_errors() ::
    subnet_quota_exceeded_fault() | 
    service_linked_role_not_found_fault() | 
    subnet_in_use() | 
    subnet_group_not_found_fault() | 
    invalid_subnet().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a DAX cluster.
%%
%% All nodes in the cluster run the same DAX caching software.
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

%% @doc Creates a new parameter group.
%%
%% A parameter group is a collection of parameters that
%% you apply to all of the nodes in a DAX cluster.
-spec create_parameter_group(aws_client:aws_client(), create_parameter_group_request()) ->
    {ok, create_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, create_parameter_group_errors(), tuple()}.
create_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_parameter_group(Client, Input, []).

-spec create_parameter_group(aws_client:aws_client(), create_parameter_group_request(), proplists:proplist()) ->
    {ok, create_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, create_parameter_group_errors(), tuple()}.
create_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateParameterGroup">>, Input, Options).

%% @doc Creates a new subnet group.
-spec create_subnet_group(aws_client:aws_client(), create_subnet_group_request()) ->
    {ok, create_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, create_subnet_group_errors(), tuple()}.
create_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subnet_group(Client, Input, []).

-spec create_subnet_group(aws_client:aws_client(), create_subnet_group_request(), proplists:proplist()) ->
    {ok, create_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, create_subnet_group_errors(), tuple()}.
create_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubnetGroup">>, Input, Options).

%% @doc Removes one or more nodes from a DAX cluster.
%%
%% You cannot use `DecreaseReplicationFactor' to remove the last node in
%% a DAX cluster. If you need to do this, use `DeleteCluster' instead.
-spec decrease_replication_factor(aws_client:aws_client(), decrease_replication_factor_request()) ->
    {ok, decrease_replication_factor_response(), tuple()} |
    {error, any()} |
    {error, decrease_replication_factor_errors(), tuple()}.
decrease_replication_factor(Client, Input)
  when is_map(Client), is_map(Input) ->
    decrease_replication_factor(Client, Input, []).

-spec decrease_replication_factor(aws_client:aws_client(), decrease_replication_factor_request(), proplists:proplist()) ->
    {ok, decrease_replication_factor_response(), tuple()} |
    {error, any()} |
    {error, decrease_replication_factor_errors(), tuple()}.
decrease_replication_factor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DecreaseReplicationFactor">>, Input, Options).

%% @doc Deletes a previously provisioned DAX cluster.
%%
%% DeleteCluster deletes all associated nodes, node endpoints
%% and the DAX cluster itself. When you receive a successful response from
%% this action,
%% DAX immediately begins deleting the cluster; you cannot cancel or revert
%% this
%% action.
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

%% @doc Deletes the specified parameter group.
%%
%% You cannot delete a parameter group if it is
%% associated with any DAX clusters.
-spec delete_parameter_group(aws_client:aws_client(), delete_parameter_group_request()) ->
    {ok, delete_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, delete_parameter_group_errors(), tuple()}.
delete_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parameter_group(Client, Input, []).

-spec delete_parameter_group(aws_client:aws_client(), delete_parameter_group_request(), proplists:proplist()) ->
    {ok, delete_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, delete_parameter_group_errors(), tuple()}.
delete_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParameterGroup">>, Input, Options).

%% @doc Deletes a subnet group.
%%
%% You cannot delete a subnet group if it is associated with any DAX
%% clusters.
-spec delete_subnet_group(aws_client:aws_client(), delete_subnet_group_request()) ->
    {ok, delete_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, delete_subnet_group_errors(), tuple()}.
delete_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subnet_group(Client, Input, []).

-spec delete_subnet_group(aws_client:aws_client(), delete_subnet_group_request(), proplists:proplist()) ->
    {ok, delete_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, delete_subnet_group_errors(), tuple()}.
delete_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubnetGroup">>, Input, Options).

%% @doc Returns information about all provisioned DAX clusters if no cluster
%% identifier
%% is specified, or about a specific DAX cluster if a cluster identifier is
%% supplied.
%%
%% If the cluster is in the CREATING state, only cluster level information
%% will be
%% displayed until all of the nodes are successfully provisioned.
%%
%% If the cluster is in the DELETING state, only cluster level information
%% will be
%% displayed.
%%
%% If nodes are currently being added to the DAX cluster, node endpoint
%% information
%% and creation time for the additional nodes will not be displayed until
%% they are
%% completely provisioned. When the DAX cluster state is available,
%% the cluster is ready for use.
%%
%% If nodes are currently being removed from the DAX cluster, no endpoint
%% information for the removed nodes is displayed.
-spec describe_clusters(aws_client:aws_client(), describe_clusters_request()) ->
    {ok, describe_clusters_response(), tuple()} |
    {error, any()} |
    {error, describe_clusters_errors(), tuple()}.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).

-spec describe_clusters(aws_client:aws_client(), describe_clusters_request(), proplists:proplist()) ->
    {ok, describe_clusters_response(), tuple()} |
    {error, any()} |
    {error, describe_clusters_errors(), tuple()}.
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Returns the default system parameter information for the DAX caching
%% software.
-spec describe_default_parameters(aws_client:aws_client(), describe_default_parameters_request()) ->
    {ok, describe_default_parameters_response(), tuple()} |
    {error, any()} |
    {error, describe_default_parameters_errors(), tuple()}.
describe_default_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_default_parameters(Client, Input, []).

-spec describe_default_parameters(aws_client:aws_client(), describe_default_parameters_request(), proplists:proplist()) ->
    {ok, describe_default_parameters_response(), tuple()} |
    {error, any()} |
    {error, describe_default_parameters_errors(), tuple()}.
describe_default_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDefaultParameters">>, Input, Options).

%% @doc Returns events related to DAX clusters and parameter groups.
%%
%% You can obtain
%% events specific to a particular DAX cluster or parameter group by
%% providing the name
%% as a parameter.
%%
%% By default, only the events occurring within the last 24 hours are
%% returned; however,
%% you can retrieve up to 14 days' worth of events if necessary.
-spec describe_events(aws_client:aws_client(), describe_events_request()) ->
    {ok, describe_events_response(), tuple()} |
    {error, any()} |
    {error, describe_events_errors(), tuple()}.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).

-spec describe_events(aws_client:aws_client(), describe_events_request(), proplists:proplist()) ->
    {ok, describe_events_response(), tuple()} |
    {error, any()} |
    {error, describe_events_errors(), tuple()}.
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns a list of parameter group descriptions.
%%
%% If a parameter group name is
%% specified, the list will contain only the descriptions for that group.
-spec describe_parameter_groups(aws_client:aws_client(), describe_parameter_groups_request()) ->
    {ok, describe_parameter_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_parameter_groups_errors(), tuple()}.
describe_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_parameter_groups(Client, Input, []).

-spec describe_parameter_groups(aws_client:aws_client(), describe_parameter_groups_request(), proplists:proplist()) ->
    {ok, describe_parameter_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_parameter_groups_errors(), tuple()}.
describe_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular parameter group.
-spec describe_parameters(aws_client:aws_client(), describe_parameters_request()) ->
    {ok, describe_parameters_response(), tuple()} |
    {error, any()} |
    {error, describe_parameters_errors(), tuple()}.
describe_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_parameters(Client, Input, []).

-spec describe_parameters(aws_client:aws_client(), describe_parameters_request(), proplists:proplist()) ->
    {ok, describe_parameters_response(), tuple()} |
    {error, any()} |
    {error, describe_parameters_errors(), tuple()}.
describe_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeParameters">>, Input, Options).

%% @doc Returns a list of subnet group descriptions.
%%
%% If a subnet group name is specified,
%% the list will contain only the description of that group.
-spec describe_subnet_groups(aws_client:aws_client(), describe_subnet_groups_request()) ->
    {ok, describe_subnet_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_subnet_groups_errors(), tuple()}.
describe_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subnet_groups(Client, Input, []).

-spec describe_subnet_groups(aws_client:aws_client(), describe_subnet_groups_request(), proplists:proplist()) ->
    {ok, describe_subnet_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_subnet_groups_errors(), tuple()}.
describe_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubnetGroups">>, Input, Options).

%% @doc Adds one or more nodes to a DAX cluster.
-spec increase_replication_factor(aws_client:aws_client(), increase_replication_factor_request()) ->
    {ok, increase_replication_factor_response(), tuple()} |
    {error, any()} |
    {error, increase_replication_factor_errors(), tuple()}.
increase_replication_factor(Client, Input)
  when is_map(Client), is_map(Input) ->
    increase_replication_factor(Client, Input, []).

-spec increase_replication_factor(aws_client:aws_client(), increase_replication_factor_request(), proplists:proplist()) ->
    {ok, increase_replication_factor_response(), tuple()} |
    {error, any()} |
    {error, increase_replication_factor_errors(), tuple()}.
increase_replication_factor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IncreaseReplicationFactor">>, Input, Options).

%% @doc List all of the tags for a DAX cluster.
%%
%% You can call `ListTags' up to
%% 10 times per second, per account.
-spec list_tags(aws_client:aws_client(), list_tags_request()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).

-spec list_tags(aws_client:aws_client(), list_tags_request(), proplists:proplist()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Reboots a single node of a DAX cluster.
%%
%% The reboot action takes place
%% as soon as possible. During the
%% reboot, the node status is set to REBOOTING.
%%
%% `RebootNode' restarts the DAX engine process and does not remove the
%% contents of the cache.
-spec reboot_node(aws_client:aws_client(), reboot_node_request()) ->
    {ok, reboot_node_response(), tuple()} |
    {error, any()} |
    {error, reboot_node_errors(), tuple()}.
reboot_node(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_node(Client, Input, []).

-spec reboot_node(aws_client:aws_client(), reboot_node_request(), proplists:proplist()) ->
    {ok, reboot_node_response(), tuple()} |
    {error, any()} |
    {error, reboot_node_errors(), tuple()}.
reboot_node(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootNode">>, Input, Options).

%% @doc Associates a set of tags with a DAX resource.
%%
%% You can call `TagResource' up to 5 times per second, per
%% account.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the association of tags from a DAX resource.
%%
%% You can call
%% `UntagResource' up to 5 times per second, per account.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies the settings for a DAX cluster.
%%
%% You can use this action to change one or
%% more cluster configuration parameters by specifying the parameters and the
%% new
%% values.
-spec update_cluster(aws_client:aws_client(), update_cluster_request()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster(Client, Input, []).

-spec update_cluster(aws_client:aws_client(), update_cluster_request(), proplists:proplist()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCluster">>, Input, Options).

%% @doc Modifies the parameters of a parameter group.
%%
%% You can modify up to 20
%% parameters in a single request by submitting a list parameter name and
%% value
%% pairs.
-spec update_parameter_group(aws_client:aws_client(), update_parameter_group_request()) ->
    {ok, update_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, update_parameter_group_errors(), tuple()}.
update_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_parameter_group(Client, Input, []).

-spec update_parameter_group(aws_client:aws_client(), update_parameter_group_request(), proplists:proplist()) ->
    {ok, update_parameter_group_response(), tuple()} |
    {error, any()} |
    {error, update_parameter_group_errors(), tuple()}.
update_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateParameterGroup">>, Input, Options).

%% @doc Modifies an existing subnet group.
-spec update_subnet_group(aws_client:aws_client(), update_subnet_group_request()) ->
    {ok, update_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, update_subnet_group_errors(), tuple()}.
update_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subnet_group(Client, Input, []).

-spec update_subnet_group(aws_client:aws_client(), update_subnet_group_request(), proplists:proplist()) ->
    {ok, update_subnet_group_response(), tuple()} |
    {error, any()} |
    {error, update_subnet_group_errors(), tuple()}.
update_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubnetGroup">>, Input, Options).

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
    Client1 = Client#{service => <<"dax">>},
    Host = build_host(<<"dax">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonDAXV3.", Action/binary>>}
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
