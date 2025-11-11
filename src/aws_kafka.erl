%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The operations for managing an Amazon MSK cluster.
-module(aws_kafka).

-export([batch_associate_scram_secret/3,
         batch_associate_scram_secret/4,
         batch_disassociate_scram_secret/3,
         batch_disassociate_scram_secret/4,
         create_cluster/2,
         create_cluster/3,
         create_cluster_v2/2,
         create_cluster_v2/3,
         create_configuration/2,
         create_configuration/3,
         create_replicator/2,
         create_replicator/3,
         create_vpc_connection/2,
         create_vpc_connection/3,
         delete_cluster/3,
         delete_cluster/4,
         delete_cluster_policy/3,
         delete_cluster_policy/4,
         delete_configuration/3,
         delete_configuration/4,
         delete_replicator/3,
         delete_replicator/4,
         delete_vpc_connection/3,
         delete_vpc_connection/4,
         describe_cluster/2,
         describe_cluster/4,
         describe_cluster/5,
         describe_cluster_operation/2,
         describe_cluster_operation/4,
         describe_cluster_operation/5,
         describe_cluster_operation_v2/2,
         describe_cluster_operation_v2/4,
         describe_cluster_operation_v2/5,
         describe_cluster_v2/2,
         describe_cluster_v2/4,
         describe_cluster_v2/5,
         describe_configuration/2,
         describe_configuration/4,
         describe_configuration/5,
         describe_configuration_revision/3,
         describe_configuration_revision/5,
         describe_configuration_revision/6,
         describe_replicator/2,
         describe_replicator/4,
         describe_replicator/5,
         describe_vpc_connection/2,
         describe_vpc_connection/4,
         describe_vpc_connection/5,
         get_bootstrap_brokers/2,
         get_bootstrap_brokers/4,
         get_bootstrap_brokers/5,
         get_cluster_policy/2,
         get_cluster_policy/4,
         get_cluster_policy/5,
         get_compatible_kafka_versions/1,
         get_compatible_kafka_versions/3,
         get_compatible_kafka_versions/4,
         list_client_vpc_connections/2,
         list_client_vpc_connections/4,
         list_client_vpc_connections/5,
         list_cluster_operations/2,
         list_cluster_operations/4,
         list_cluster_operations/5,
         list_cluster_operations_v2/2,
         list_cluster_operations_v2/4,
         list_cluster_operations_v2/5,
         list_clusters/1,
         list_clusters/3,
         list_clusters/4,
         list_clusters_v2/1,
         list_clusters_v2/3,
         list_clusters_v2/4,
         list_configuration_revisions/2,
         list_configuration_revisions/4,
         list_configuration_revisions/5,
         list_configurations/1,
         list_configurations/3,
         list_configurations/4,
         list_kafka_versions/1,
         list_kafka_versions/3,
         list_kafka_versions/4,
         list_nodes/2,
         list_nodes/4,
         list_nodes/5,
         list_replicators/1,
         list_replicators/3,
         list_replicators/4,
         list_scram_secrets/2,
         list_scram_secrets/4,
         list_scram_secrets/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_vpc_connections/1,
         list_vpc_connections/3,
         list_vpc_connections/4,
         put_cluster_policy/3,
         put_cluster_policy/4,
         reboot_broker/3,
         reboot_broker/4,
         reject_client_vpc_connection/3,
         reject_client_vpc_connection/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_broker_count/3,
         update_broker_count/4,
         update_broker_storage/3,
         update_broker_storage/4,
         update_broker_type/3,
         update_broker_type/4,
         update_cluster_configuration/3,
         update_cluster_configuration/4,
         update_cluster_kafka_version/3,
         update_cluster_kafka_version/4,
         update_configuration/3,
         update_configuration/4,
         update_connectivity/3,
         update_connectivity/4,
         update_monitoring/3,
         update_monitoring/4,
         update_rebalancing/3,
         update_rebalancing/4,
         update_replication_info/3,
         update_replication_info/4,
         update_security/3,
         update_security/4,
         update_storage/3,
         update_storage/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% amazon_msk_cluster() :: #{
%%   <<"MskClusterArn">> => string()
%% }
-type amazon_msk_cluster() :: #{binary() => any()}.

%% Example:
%% describe_cluster_request() :: #{}
-type describe_cluster_request() :: #{}.


%% Example:
%% describe_vpc_connection_response() :: #{
%%   <<"Authentication">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"State">> => list(any()),
%%   <<"Subnets">> => list(string()),
%%   <<"Tags">> => map(),
%%   <<"TargetClusterArn">> => string(),
%%   <<"VpcConnectionArn">> => string(),
%%   <<"VpcId">> => string()
%% }
-type describe_vpc_connection_response() :: #{binary() => any()}.


%% Example:
%% list_client_vpc_connections_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_client_vpc_connections_request() :: #{binary() => any()}.

%% Example:
%% describe_cluster_v2_request() :: #{}
-type describe_cluster_v2_request() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% provisioned_request() :: #{
%%   <<"BrokerNodeGroupInfo">> => broker_node_group_info(),
%%   <<"ClientAuthentication">> => client_authentication(),
%%   <<"ConfigurationInfo">> => configuration_info(),
%%   <<"EncryptionInfo">> => encryption_info(),
%%   <<"EnhancedMonitoring">> => list(any()),
%%   <<"KafkaVersion">> => string(),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"NumberOfBrokerNodes">> => integer(),
%%   <<"OpenMonitoring">> => open_monitoring_info(),
%%   <<"Rebalancing">> => rebalancing(),
%%   <<"StorageMode">> => list(any())
%% }
-type provisioned_request() :: #{binary() => any()}.


%% Example:
%% compatible_kafka_version() :: #{
%%   <<"SourceVersion">> => string(),
%%   <<"TargetVersions">> => list(string())
%% }
-type compatible_kafka_version() :: #{binary() => any()}.


%% Example:
%% get_compatible_kafka_versions_response() :: #{
%%   <<"CompatibleKafkaVersions">> => list(compatible_kafka_version())
%% }
-type get_compatible_kafka_versions_response() :: #{binary() => any()}.


%% Example:
%% topic_replication_update() :: #{
%%   <<"CopyAccessControlListsForTopics">> => boolean(),
%%   <<"CopyTopicConfigurations">> => boolean(),
%%   <<"DetectAndCopyNewTopics">> => boolean(),
%%   <<"TopicsToExclude">> => list(string()),
%%   <<"TopicsToReplicate">> => list(string())
%% }
-type topic_replication_update() :: #{binary() => any()}.


%% Example:
%% create_vpc_connection_response() :: #{
%%   <<"Authentication">> => string(),
%%   <<"ClientSubnets">> => list(string()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"VpcConnectionArn">> => string(),
%%   <<"VpcId">> => string()
%% }
-type create_vpc_connection_response() :: #{binary() => any()}.


%% Example:
%% update_broker_storage_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type update_broker_storage_response() :: #{binary() => any()}.


%% Example:
%% update_broker_type_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type update_broker_type_response() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"InvalidParameter">> => string(),
%%   <<"Message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% update_storage_request() :: #{
%%   <<"CurrentVersion">> := string(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput(),
%%   <<"StorageMode">> => list(any()),
%%   <<"VolumeSizeGB">> => integer()
%% }
-type update_storage_request() :: #{binary() => any()}.


%% Example:
%% list_vpc_connections_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VpcConnections">> => list(vpc_connection())
%% }
-type list_vpc_connections_response() :: #{binary() => any()}.


%% Example:
%% update_configuration_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ServerProperties">> := binary()
%% }
-type update_configuration_request() :: #{binary() => any()}.


%% Example:
%% prometheus() :: #{
%%   <<"JmxExporter">> => jmx_exporter(),
%%   <<"NodeExporter">> => node_exporter()
%% }
-type prometheus() :: #{binary() => any()}.


%% Example:
%% describe_cluster_response() :: #{
%%   <<"ClusterInfo">> => cluster_info()
%% }
-type describe_cluster_response() :: #{binary() => any()}.


%% Example:
%% serverless_client_authentication() :: #{
%%   <<"Sasl">> => serverless_sasl()
%% }
-type serverless_client_authentication() :: #{binary() => any()}.


%% Example:
%% open_monitoring() :: #{
%%   <<"Prometheus">> => prometheus()
%% }
-type open_monitoring() :: #{binary() => any()}.


%% Example:
%% cluster_info() :: #{
%%   <<"ActiveOperationArn">> => string(),
%%   <<"BrokerNodeGroupInfo">> => broker_node_group_info(),
%%   <<"ClientAuthentication">> => client_authentication(),
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentBrokerSoftwareInfo">> => broker_software_info(),
%%   <<"CurrentVersion">> => string(),
%%   <<"CustomerActionStatus">> => list(any()),
%%   <<"EncryptionInfo">> => encryption_info(),
%%   <<"EnhancedMonitoring">> => list(any()),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"NumberOfBrokerNodes">> => integer(),
%%   <<"OpenMonitoring">> => open_monitoring(),
%%   <<"Rebalancing">> => rebalancing(),
%%   <<"State">> => list(any()),
%%   <<"StateInfo">> => state_info(),
%%   <<"StorageMode">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"ZookeeperConnectString">> => string(),
%%   <<"ZookeeperConnectStringTls">> => string()
%% }
-type cluster_info() :: #{binary() => any()}.


%% Example:
%% cluster_operation_step() :: #{
%%   <<"StepInfo">> => cluster_operation_step_info(),
%%   <<"StepName">> => string()
%% }
-type cluster_operation_step() :: #{binary() => any()}.


%% Example:
%% create_cluster_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterName">> => string(),
%%   <<"State">> => list(any())
%% }
-type create_cluster_response() :: #{binary() => any()}.


%% Example:
%% cluster_operation_v2_summary() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterType">> => list(any()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"OperationArn">> => string(),
%%   <<"OperationState">> => string(),
%%   <<"OperationType">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type cluster_operation_v2_summary() :: #{binary() => any()}.


%% Example:
%% update_replication_info_request() :: #{
%%   <<"ConsumerGroupReplication">> => consumer_group_replication_update(),
%%   <<"CurrentVersion">> := string(),
%%   <<"SourceKafkaClusterArn">> := string(),
%%   <<"TargetKafkaClusterArn">> := string(),
%%   <<"TopicReplication">> => topic_replication_update()
%% }
-type update_replication_info_request() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"InvalidParameter">> => string(),
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% logging_info() :: #{
%%   <<"BrokerLogs">> := broker_logs()
%% }
-type logging_info() :: #{binary() => any()}.


%% Example:
%% list_configurations_response() :: #{
%%   <<"Configurations">> => list(configuration()),
%%   <<"NextToken">> => string()
%% }
-type list_configurations_response() :: #{binary() => any()}.


%% Example:
%% list_client_vpc_connections_response() :: #{
%%   <<"ClientVpcConnections">> => list(client_vpc_connection()),
%%   <<"NextToken">> => string()
%% }
-type list_client_vpc_connections_response() :: #{binary() => any()}.


%% Example:
%% update_security_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type update_security_response() :: #{binary() => any()}.


%% Example:
%% reboot_broker_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type reboot_broker_response() :: #{binary() => any()}.


%% Example:
%% update_connectivity_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type update_connectivity_response() :: #{binary() => any()}.


%% Example:
%% list_cluster_operations_v2_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_cluster_operations_v2_request() :: #{binary() => any()}.


%% Example:
%% kafka_cluster_summary() :: #{
%%   <<"AmazonMskCluster">> => amazon_msk_cluster(),
%%   <<"KafkaClusterAlias">> => string()
%% }
-type kafka_cluster_summary() :: #{binary() => any()}.


%% Example:
%% broker_logs() :: #{
%%   <<"CloudWatchLogs">> => cloud_watch_logs(),
%%   <<"Firehose">> => firehose(),
%%   <<"S3">> => s3()
%% }
-type broker_logs() :: #{binary() => any()}.


%% Example:
%% update_cluster_configuration_request() :: #{
%%   <<"ConfigurationInfo">> := configuration_info(),
%%   <<"CurrentVersion">> := string()
%% }
-type update_cluster_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_storage_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type update_storage_response() :: #{binary() => any()}.


%% Example:
%% kafka_cluster_client_vpc_config() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type kafka_cluster_client_vpc_config() :: #{binary() => any()}.


%% Example:
%% configuration() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"KafkaVersions">> => list(string()),
%%   <<"LatestRevision">> => configuration_revision(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type configuration() :: #{binary() => any()}.


%% Example:
%% create_replicator_response() :: #{
%%   <<"ReplicatorArn">> => string(),
%%   <<"ReplicatorName">> => string(),
%%   <<"ReplicatorState">> => list(any())
%% }
-type create_replicator_response() :: #{binary() => any()}.


%% Example:
%% client_vpc_connection() :: #{
%%   <<"Authentication">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Owner">> => string(),
%%   <<"State">> => list(any()),
%%   <<"VpcConnectionArn">> => string()
%% }
-type client_vpc_connection() :: #{binary() => any()}.


%% Example:
%% user_identity() :: #{
%%   <<"PrincipalId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type user_identity() :: #{binary() => any()}.


%% Example:
%% list_clusters_v2_request() :: #{
%%   <<"ClusterNameFilter">> => string(),
%%   <<"ClusterTypeFilter">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_v2_request() :: #{binary() => any()}.


%% Example:
%% update_replication_info_response() :: #{
%%   <<"ReplicatorArn">> => string(),
%%   <<"ReplicatorState">> => list(any())
%% }
-type update_replication_info_response() :: #{binary() => any()}.


%% Example:
%% replication_state_info() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type replication_state_info() :: #{binary() => any()}.


%% Example:
%% public_access() :: #{
%%   <<"Type">> => string()
%% }
-type public_access() :: #{binary() => any()}.


%% Example:
%% configuration_info() :: #{
%%   <<"Arn">> => string(),
%%   <<"Revision">> => float()
%% }
-type configuration_info() :: #{binary() => any()}.


%% Example:
%% error_info() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorString">> => string()
%% }
-type error_info() :: #{binary() => any()}.


%% Example:
%% update_rebalancing_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type update_rebalancing_response() :: #{binary() => any()}.

%% Example:
%% delete_cluster_policy_response() :: #{}
-type delete_cluster_policy_response() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% vpc_connection() :: #{
%%   <<"Authentication">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"TargetClusterArn">> => string(),
%%   <<"VpcConnectionArn">> => string(),
%%   <<"VpcId">> => string()
%% }
-type vpc_connection() :: #{binary() => any()}.


%% Example:
%% replication_info_summary() :: #{
%%   <<"SourceKafkaClusterAlias">> => string(),
%%   <<"TargetKafkaClusterAlias">> => string()
%% }
-type replication_info_summary() :: #{binary() => any()}.


%% Example:
%% create_vpc_connection_request() :: #{
%%   <<"Authentication">> := string(),
%%   <<"ClientSubnets">> := list(string()),
%%   <<"SecurityGroups">> := list(string()),
%%   <<"Tags">> => map(),
%%   <<"TargetClusterArn">> := string(),
%%   <<"VpcId">> := string()
%% }
-type create_vpc_connection_request() :: #{binary() => any()}.


%% Example:
%% serverless_sasl() :: #{
%%   <<"Iam">> => iam()
%% }
-type serverless_sasl() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"InvalidParameter">> => string(),
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% node_exporter_info() :: #{
%%   <<"EnabledInBroker">> => boolean()
%% }
-type node_exporter_info() :: #{binary() => any()}.


%% Example:
%% delete_replicator_request() :: #{
%%   <<"CurrentVersion">> => string()
%% }
-type delete_replicator_request() :: #{binary() => any()}.


%% Example:
%% batch_associate_scram_secret_request() :: #{
%%   <<"SecretArnList">> := list(string())
%% }
-type batch_associate_scram_secret_request() :: #{binary() => any()}.


%% Example:
%% create_replicator_request() :: #{
%%   <<"Description">> => string(),
%%   <<"KafkaClusters">> := list(kafka_cluster()),
%%   <<"ReplicationInfoList">> := list(replication_info()),
%%   <<"ReplicatorName">> := string(),
%%   <<"ServiceExecutionRoleArn">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_replicator_request() :: #{binary() => any()}.

%% Example:
%% describe_replicator_request() :: #{}
-type describe_replicator_request() :: #{}.


%% Example:
%% list_cluster_operations_response() :: #{
%%   <<"ClusterOperationInfoList">> => list(cluster_operation_info()),
%%   <<"NextToken">> => string()
%% }
-type list_cluster_operations_response() :: #{binary() => any()}.


%% Example:
%% list_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_configurations_request() :: #{binary() => any()}.


%% Example:
%% consumer_group_replication() :: #{
%%   <<"ConsumerGroupsToExclude">> => list(string()),
%%   <<"ConsumerGroupsToReplicate">> => list(string()),
%%   <<"DetectAndCopyNewConsumerGroups">> => boolean(),
%%   <<"SynchroniseConsumerGroupOffsets">> => boolean()
%% }
-type consumer_group_replication() :: #{binary() => any()}.


%% Example:
%% replication_info_description() :: #{
%%   <<"ConsumerGroupReplication">> => consumer_group_replication(),
%%   <<"SourceKafkaClusterAlias">> => string(),
%%   <<"TargetCompressionType">> => list(any()),
%%   <<"TargetKafkaClusterAlias">> => string(),
%%   <<"TopicReplication">> => topic_replication()
%% }
-type replication_info_description() :: #{binary() => any()}.


%% Example:
%% node_info() :: #{
%%   <<"AddedToClusterTime">> => string(),
%%   <<"BrokerNodeInfo">> => broker_node_info(),
%%   <<"ControllerNodeInfo">> => controller_node_info(),
%%   <<"InstanceType">> => string(),
%%   <<"NodeARN">> => string(),
%%   <<"NodeType">> => list(any()),
%%   <<"ZookeeperNodeInfo">> => zookeeper_node_info()
%% }
-type node_info() :: #{binary() => any()}.


%% Example:
%% kafka_cluster() :: #{
%%   <<"AmazonMskCluster">> => amazon_msk_cluster(),
%%   <<"VpcConfig">> => kafka_cluster_client_vpc_config()
%% }
-type kafka_cluster() :: #{binary() => any()}.


%% Example:
%% update_broker_count_request() :: #{
%%   <<"CurrentVersion">> := string(),
%%   <<"TargetNumberOfBrokerNodes">> := integer()
%% }
-type update_broker_count_request() :: #{binary() => any()}.


%% Example:
%% delete_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"State">> => list(any())
%% }
-type delete_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_cluster_configuration_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type update_cluster_configuration_response() :: #{binary() => any()}.


%% Example:
%% topic_replication() :: #{
%%   <<"CopyAccessControlListsForTopics">> => boolean(),
%%   <<"CopyTopicConfigurations">> => boolean(),
%%   <<"DetectAndCopyNewTopics">> => boolean(),
%%   <<"StartingPosition">> => replication_starting_position(),
%%   <<"TopicNameConfiguration">> => replication_topic_name_configuration(),
%%   <<"TopicsToExclude">> => list(string()),
%%   <<"TopicsToReplicate">> => list(string())
%% }
-type topic_replication() :: #{binary() => any()}.

%% Example:
%% delete_vpc_connection_request() :: #{}
-type delete_vpc_connection_request() :: #{}.


%% Example:
%% update_cluster_kafka_version_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type update_cluster_kafka_version_response() :: #{binary() => any()}.


%% Example:
%% list_vpc_connections_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_vpc_connections_request() :: #{binary() => any()}.


%% Example:
%% cluster_operation_v2_provisioned() :: #{
%%   <<"OperationSteps">> => list(cluster_operation_step()),
%%   <<"SourceClusterInfo">> => mutable_cluster_info(),
%%   <<"TargetClusterInfo">> => mutable_cluster_info(),
%%   <<"VpcConnectionInfo">> => vpc_connection_info()
%% }
-type cluster_operation_v2_provisioned() :: #{binary() => any()}.


%% Example:
%% replication_starting_position() :: #{
%%   <<"Type">> => list(any())
%% }
-type replication_starting_position() :: #{binary() => any()}.


%% Example:
%% create_cluster_v2_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterName">> => string(),
%%   <<"ClusterType">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type create_cluster_v2_response() :: #{binary() => any()}.


%% Example:
%% node_exporter() :: #{
%%   <<"EnabledInBroker">> => boolean()
%% }
-type node_exporter() :: #{binary() => any()}.


%% Example:
%% jmx_exporter() :: #{
%%   <<"EnabledInBroker">> => boolean()
%% }
-type jmx_exporter() :: #{binary() => any()}.


%% Example:
%% connectivity_info() :: #{
%%   <<"PublicAccess">> => public_access(),
%%   <<"VpcConnectivity">> => vpc_connectivity()
%% }
-type connectivity_info() :: #{binary() => any()}.


%% Example:
%% tls() :: #{
%%   <<"CertificateAuthorityArnList">> => list(string()),
%%   <<"Enabled">> => boolean()
%% }
-type tls() :: #{binary() => any()}.


%% Example:
%% broker_node_group_info() :: #{
%%   <<"BrokerAZDistribution">> => list(any()),
%%   <<"ClientSubnets">> => list(string()),
%%   <<"ConnectivityInfo">> => connectivity_info(),
%%   <<"InstanceType">> => string(),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"StorageInfo">> => storage_info(),
%%   <<"ZoneIds">> => list(string())
%% }
-type broker_node_group_info() :: #{binary() => any()}.


%% Example:
%% controller_node_info() :: #{
%%   <<"Endpoints">> => list(string())
%% }
-type controller_node_info() :: #{binary() => any()}.


%% Example:
%% create_cluster_request() :: #{
%%   <<"BrokerNodeGroupInfo">> := broker_node_group_info(),
%%   <<"ClientAuthentication">> => client_authentication(),
%%   <<"ClusterName">> := string(),
%%   <<"ConfigurationInfo">> => configuration_info(),
%%   <<"EncryptionInfo">> => encryption_info(),
%%   <<"EnhancedMonitoring">> => list(any()),
%%   <<"KafkaVersion">> := string(),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"NumberOfBrokerNodes">> := integer(),
%%   <<"OpenMonitoring">> => open_monitoring_info(),
%%   <<"Rebalancing">> => rebalancing(),
%%   <<"StorageMode">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_cluster_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"InvalidParameter">> => string(),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_configuration_request() :: #{}
-type delete_configuration_request() :: #{}.


%% Example:
%% describe_cluster_operation_v2_response() :: #{
%%   <<"ClusterOperationInfo">> => cluster_operation_v2()
%% }
-type describe_cluster_operation_v2_response() :: #{binary() => any()}.

%% Example:
%% get_cluster_policy_request() :: #{}
-type get_cluster_policy_request() :: #{}.


%% Example:
%% open_monitoring_info() :: #{
%%   <<"Prometheus">> => prometheus_info()
%% }
-type open_monitoring_info() :: #{binary() => any()}.


%% Example:
%% cluster() :: #{
%%   <<"ActiveOperationArn">> => string(),
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterName">> => string(),
%%   <<"ClusterType">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentVersion">> => string(),
%%   <<"Provisioned">> => provisioned(),
%%   <<"Serverless">> => serverless(),
%%   <<"State">> => list(any()),
%%   <<"StateInfo">> => state_info(),
%%   <<"Tags">> => map()
%% }
-type cluster() :: #{binary() => any()}.


%% Example:
%% vpc_connection_info_serverless() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Owner">> => string(),
%%   <<"UserIdentity">> => user_identity(),
%%   <<"VpcConnectionArn">> => string()
%% }
-type vpc_connection_info_serverless() :: #{binary() => any()}.


%% Example:
%% vpc_connectivity_scram() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type vpc_connectivity_scram() :: #{binary() => any()}.


%% Example:
%% reboot_broker_request() :: #{
%%   <<"BrokerIds">> := list(string())
%% }
-type reboot_broker_request() :: #{binary() => any()}.


%% Example:
%% encryption_in_transit() :: #{
%%   <<"ClientBroker">> => list(any()),
%%   <<"InCluster">> => boolean()
%% }
-type encryption_in_transit() :: #{binary() => any()}.


%% Example:
%% get_compatible_kafka_versions_request() :: #{
%%   <<"ClusterArn">> => string()
%% }
-type get_compatible_kafka_versions_request() :: #{binary() => any()}.


%% Example:
%% get_bootstrap_brokers_response() :: #{
%%   <<"BootstrapBrokerString">> => string(),
%%   <<"BootstrapBrokerStringPublicSaslIam">> => string(),
%%   <<"BootstrapBrokerStringPublicSaslScram">> => string(),
%%   <<"BootstrapBrokerStringPublicTls">> => string(),
%%   <<"BootstrapBrokerStringSaslIam">> => string(),
%%   <<"BootstrapBrokerStringSaslScram">> => string(),
%%   <<"BootstrapBrokerStringTls">> => string(),
%%   <<"BootstrapBrokerStringVpcConnectivitySaslIam">> => string(),
%%   <<"BootstrapBrokerStringVpcConnectivitySaslScram">> => string(),
%%   <<"BootstrapBrokerStringVpcConnectivityTls">> => string()
%% }
-type get_bootstrap_brokers_response() :: #{binary() => any()}.


%% Example:
%% jmx_exporter_info() :: #{
%%   <<"EnabledInBroker">> => boolean()
%% }
-type jmx_exporter_info() :: #{binary() => any()}.

%% Example:
%% describe_configuration_revision_request() :: #{}
-type describe_configuration_revision_request() :: #{}.


%% Example:
%% vpc_connectivity_iam() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type vpc_connectivity_iam() :: #{binary() => any()}.


%% Example:
%% update_broker_storage_request() :: #{
%%   <<"CurrentVersion">> := string(),
%%   <<"TargetBrokerEBSVolumeInfo">> := list(broker_ebs_volume_info())
%% }
-type update_broker_storage_request() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"InvalidParameter">> => string(),
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_kafka_versions_response() :: #{
%%   <<"KafkaVersions">> => list(kafka_version()),
%%   <<"NextToken">> => string()
%% }
-type list_kafka_versions_response() :: #{binary() => any()}.


%% Example:
%% delete_replicator_response() :: #{
%%   <<"ReplicatorArn">> => string(),
%%   <<"ReplicatorState">> => list(any())
%% }
-type delete_replicator_response() :: #{binary() => any()}.


%% Example:
%% update_cluster_kafka_version_request() :: #{
%%   <<"ConfigurationInfo">> => configuration_info(),
%%   <<"CurrentVersion">> := string(),
%%   <<"TargetKafkaVersion">> := string()
%% }
-type update_cluster_kafka_version_request() :: #{binary() => any()}.


%% Example:
%% vpc_config() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type vpc_config() :: #{binary() => any()}.


%% Example:
%% list_nodes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_nodes_request() :: #{binary() => any()}.


%% Example:
%% list_clusters_v2_response() :: #{
%%   <<"ClusterInfoList">> => list(cluster()),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_v2_response() :: #{binary() => any()}.


%% Example:
%% update_security_request() :: #{
%%   <<"ClientAuthentication">> => client_authentication(),
%%   <<"CurrentVersion">> := string(),
%%   <<"EncryptionInfo">> => encryption_info()
%% }
-type update_security_request() :: #{binary() => any()}.


%% Example:
%% create_configuration_request() :: #{
%%   <<"Description">> => string(),
%%   <<"KafkaVersions">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"ServerProperties">> := binary()
%% }
-type create_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% replication_topic_name_configuration() :: #{
%%   <<"Type">> => list(any())
%% }
-type replication_topic_name_configuration() :: #{binary() => any()}.


%% Example:
%% vpc_connectivity_client_authentication() :: #{
%%   <<"Sasl">> => vpc_connectivity_sasl(),
%%   <<"Tls">> => vpc_connectivity_tls()
%% }
-type vpc_connectivity_client_authentication() :: #{binary() => any()}.


%% Example:
%% serverless_request() :: #{
%%   <<"ClientAuthentication">> => serverless_client_authentication(),
%%   <<"VpcConfigs">> => list(vpc_config())
%% }
-type serverless_request() :: #{binary() => any()}.

%% Example:
%% delete_cluster_policy_request() :: #{}
-type delete_cluster_policy_request() :: #{}.


%% Example:
%% list_replicators_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ReplicatorNameFilter">> => string()
%% }
-type list_replicators_request() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"InvalidParameter">> => string(),
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% vpc_connectivity_tls() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type vpc_connectivity_tls() :: #{binary() => any()}.


%% Example:
%% list_clusters_response() :: #{
%%   <<"ClusterInfoList">> => list(cluster_info()),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_response() :: #{binary() => any()}.


%% Example:
%% put_cluster_policy_response() :: #{
%%   <<"CurrentVersion">> => string()
%% }
-type put_cluster_policy_response() :: #{binary() => any()}.


%% Example:
%% delete_cluster_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"State">> => list(any())
%% }
-type delete_cluster_response() :: #{binary() => any()}.


%% Example:
%% list_configuration_revisions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Revisions">> => list(configuration_revision())
%% }
-type list_configuration_revisions_response() :: #{binary() => any()}.


%% Example:
%% storage_info() :: #{
%%   <<"EbsStorageInfo">> => ebs_storage_info()
%% }
-type storage_info() :: #{binary() => any()}.


%% Example:
%% create_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LatestRevision">> => configuration_revision(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type create_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_kafka_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_kafka_versions_request() :: #{binary() => any()}.


%% Example:
%% update_monitoring_request() :: #{
%%   <<"CurrentVersion">> := string(),
%%   <<"EnhancedMonitoring">> => list(any()),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"OpenMonitoring">> => open_monitoring_info()
%% }
-type update_monitoring_request() :: #{binary() => any()}.


%% Example:
%% iam() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type iam() :: #{binary() => any()}.


%% Example:
%% describe_cluster_operation_response() :: #{
%%   <<"ClusterOperationInfo">> => cluster_operation_info()
%% }
-type describe_cluster_operation_response() :: #{binary() => any()}.


%% Example:
%% get_cluster_policy_response() :: #{
%%   <<"CurrentVersion">> => string(),
%%   <<"Policy">> => string()
%% }
-type get_cluster_policy_response() :: #{binary() => any()}.


%% Example:
%% consumer_group_replication_update() :: #{
%%   <<"ConsumerGroupsToExclude">> => list(string()),
%%   <<"ConsumerGroupsToReplicate">> => list(string()),
%%   <<"DetectAndCopyNewConsumerGroups">> => boolean(),
%%   <<"SynchroniseConsumerGroupOffsets">> => boolean()
%% }
-type consumer_group_replication_update() :: #{binary() => any()}.


%% Example:
%% reject_client_vpc_connection_request() :: #{
%%   <<"VpcConnectionArn">> := string()
%% }
-type reject_client_vpc_connection_request() :: #{binary() => any()}.


%% Example:
%% unauthenticated() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type unauthenticated() :: #{binary() => any()}.


%% Example:
%% firehose() :: #{
%%   <<"DeliveryStream">> => string(),
%%   <<"Enabled">> := boolean()
%% }
-type firehose() :: #{binary() => any()}.

%% Example:
%% describe_cluster_operation_request() :: #{}
-type describe_cluster_operation_request() :: #{}.


%% Example:
%% list_clusters_request() :: #{
%%   <<"ClusterNameFilter">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_request() :: #{binary() => any()}.


%% Example:
%% update_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"LatestRevision">> => configuration_revision()
%% }
-type update_configuration_response() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logs() :: #{
%%   <<"Enabled">> := boolean(),
%%   <<"LogGroup">> => string()
%% }
-type cloud_watch_logs() :: #{binary() => any()}.


%% Example:
%% describe_configuration_revision_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Revision">> => float(),
%%   <<"ServerProperties">> => binary()
%% }
-type describe_configuration_revision_response() :: #{binary() => any()}.


%% Example:
%% vpc_connection_info() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Owner">> => string(),
%%   <<"UserIdentity">> => user_identity(),
%%   <<"VpcConnectionArn">> => string()
%% }
-type vpc_connection_info() :: #{binary() => any()}.


%% Example:
%% update_connectivity_request() :: #{
%%   <<"ConnectivityInfo">> := connectivity_info(),
%%   <<"CurrentVersion">> := string()
%% }
-type update_connectivity_request() :: #{binary() => any()}.

%% Example:
%% describe_vpc_connection_request() :: #{}
-type describe_vpc_connection_request() :: #{}.


%% Example:
%% broker_node_info() :: #{
%%   <<"AttachedENIId">> => string(),
%%   <<"BrokerId">> => float(),
%%   <<"ClientSubnet">> => string(),
%%   <<"ClientVpcIpAddress">> => string(),
%%   <<"CurrentBrokerSoftwareInfo">> => broker_software_info(),
%%   <<"Endpoints">> => list(string())
%% }
-type broker_node_info() :: #{binary() => any()}.


%% Example:
%% zookeeper_node_info() :: #{
%%   <<"AttachedENIId">> => string(),
%%   <<"ClientVpcIpAddress">> => string(),
%%   <<"Endpoints">> => list(string()),
%%   <<"ZookeeperId">> => float(),
%%   <<"ZookeeperVersion">> => string()
%% }
-type zookeeper_node_info() :: #{binary() => any()}.


%% Example:
%% update_rebalancing_request() :: #{
%%   <<"CurrentVersion">> := string(),
%%   <<"Rebalancing">> := rebalancing()
%% }
-type update_rebalancing_request() :: #{binary() => any()}.


%% Example:
%% ebs_storage_info() :: #{
%%   <<"ProvisionedThroughput">> => provisioned_throughput(),
%%   <<"VolumeSize">> => integer()
%% }
-type ebs_storage_info() :: #{binary() => any()}.


%% Example:
%% delete_cluster_request() :: #{
%%   <<"CurrentVersion">> => string()
%% }
-type delete_cluster_request() :: #{binary() => any()}.


%% Example:
%% provisioned_throughput() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"VolumeThroughput">> => integer()
%% }
-type provisioned_throughput() :: #{binary() => any()}.


%% Example:
%% encryption_at_rest() :: #{
%%   <<"DataVolumeKMSKeyId">> => string()
%% }
-type encryption_at_rest() :: #{binary() => any()}.


%% Example:
%% update_broker_count_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type update_broker_count_response() :: #{binary() => any()}.


%% Example:
%% put_cluster_policy_request() :: #{
%%   <<"CurrentVersion">> => string(),
%%   <<"Policy">> := string()
%% }
-type put_cluster_policy_request() :: #{binary() => any()}.


%% Example:
%% describe_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"KafkaVersions">> => list(string()),
%%   <<"LatestRevision">> => configuration_revision(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type describe_configuration_response() :: #{binary() => any()}.


%% Example:
%% client_authentication() :: #{
%%   <<"Sasl">> => sasl(),
%%   <<"Tls">> => tls(),
%%   <<"Unauthenticated">> => unauthenticated()
%% }
-type client_authentication() :: #{binary() => any()}.


%% Example:
%% provisioned() :: #{
%%   <<"BrokerNodeGroupInfo">> => broker_node_group_info(),
%%   <<"ClientAuthentication">> => client_authentication(),
%%   <<"CurrentBrokerSoftwareInfo">> => broker_software_info(),
%%   <<"CustomerActionStatus">> => list(any()),
%%   <<"EncryptionInfo">> => encryption_info(),
%%   <<"EnhancedMonitoring">> => list(any()),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"NumberOfBrokerNodes">> => integer(),
%%   <<"OpenMonitoring">> => open_monitoring_info(),
%%   <<"Rebalancing">> => rebalancing(),
%%   <<"StorageMode">> => list(any()),
%%   <<"ZookeeperConnectString">> => string(),
%%   <<"ZookeeperConnectStringTls">> => string()
%% }
-type provisioned() :: #{binary() => any()}.


%% Example:
%% sasl() :: #{
%%   <<"Iam">> => iam(),
%%   <<"Scram">> => scram()
%% }
-type sasl() :: #{binary() => any()}.


%% Example:
%% s3() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Enabled">> := boolean(),
%%   <<"Prefix">> => string()
%% }
-type s3() :: #{binary() => any()}.


%% Example:
%% list_cluster_operations_v2_response() :: #{
%%   <<"ClusterOperationInfoList">> => list(cluster_operation_v2_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_cluster_operations_v2_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"InvalidParameter">> => string(),
%%   <<"Message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% list_replicators_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Replicators">> => list(replicator_summary())
%% }
-type list_replicators_response() :: #{binary() => any()}.


%% Example:
%% list_cluster_operations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_cluster_operations_request() :: #{binary() => any()}.


%% Example:
%% describe_replicator_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentVersion">> => string(),
%%   <<"IsReplicatorReference">> => boolean(),
%%   <<"KafkaClusters">> => list(kafka_cluster_description()),
%%   <<"ReplicationInfoList">> => list(replication_info_description()),
%%   <<"ReplicatorArn">> => string(),
%%   <<"ReplicatorDescription">> => string(),
%%   <<"ReplicatorName">> => string(),
%%   <<"ReplicatorResourceArn">> => string(),
%%   <<"ReplicatorState">> => list(any()),
%%   <<"ServiceExecutionRoleArn">> => string(),
%%   <<"StateInfo">> => replication_state_info(),
%%   <<"Tags">> => map()
%% }
-type describe_replicator_response() :: #{binary() => any()}.


%% Example:
%% kafka_cluster_description() :: #{
%%   <<"AmazonMskCluster">> => amazon_msk_cluster(),
%%   <<"KafkaClusterAlias">> => string(),
%%   <<"VpcConfig">> => kafka_cluster_client_vpc_config()
%% }
-type kafka_cluster_description() :: #{binary() => any()}.


%% Example:
%% kafka_version() :: #{
%%   <<"Status">> => list(any()),
%%   <<"Version">> => string()
%% }
-type kafka_version() :: #{binary() => any()}.


%% Example:
%% delete_vpc_connection_response() :: #{
%%   <<"State">> => list(any()),
%%   <<"VpcConnectionArn">> => string()
%% }
-type delete_vpc_connection_response() :: #{binary() => any()}.


%% Example:
%% encryption_info() :: #{
%%   <<"EncryptionAtRest">> => encryption_at_rest(),
%%   <<"EncryptionInTransit">> => encryption_in_transit()
%% }
-type encryption_info() :: #{binary() => any()}.

%% Example:
%% describe_configuration_request() :: #{}
-type describe_configuration_request() :: #{}.


%% Example:
%% cluster_operation_info() :: #{
%%   <<"ClientRequestId">> => string(),
%%   <<"ClusterArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ErrorInfo">> => error_info(),
%%   <<"OperationArn">> => string(),
%%   <<"OperationState">> => string(),
%%   <<"OperationSteps">> => list(cluster_operation_step()),
%%   <<"OperationType">> => string(),
%%   <<"SourceClusterInfo">> => mutable_cluster_info(),
%%   <<"TargetClusterInfo">> => mutable_cluster_info(),
%%   <<"VpcConnectionInfo">> => vpc_connection_info()
%% }
-type cluster_operation_info() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"InvalidParameter">> => string(),
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.

%% Example:
%% get_bootstrap_brokers_request() :: #{}
-type get_bootstrap_brokers_request() :: #{}.


%% Example:
%% batch_disassociate_scram_secret_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"UnprocessedScramSecrets">> => list(unprocessed_scram_secret())
%% }
-type batch_disassociate_scram_secret_response() :: #{binary() => any()}.


%% Example:
%% describe_cluster_v2_response() :: #{
%%   <<"ClusterInfo">> => cluster()
%% }
-type describe_cluster_v2_response() :: #{binary() => any()}.


%% Example:
%% prometheus_info() :: #{
%%   <<"JmxExporter">> => jmx_exporter_info(),
%%   <<"NodeExporter">> => node_exporter_info()
%% }
-type prometheus_info() :: #{binary() => any()}.

%% Example:
%% describe_cluster_operation_v2_request() :: #{}
-type describe_cluster_operation_v2_request() :: #{}.


%% Example:
%% configuration_revision() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Revision">> => float()
%% }
-type configuration_revision() :: #{binary() => any()}.


%% Example:
%% scram() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type scram() :: #{binary() => any()}.


%% Example:
%% mutable_cluster_info() :: #{
%%   <<"BrokerCountUpdateInfo">> => broker_count_update_info(),
%%   <<"BrokerEBSVolumeInfo">> => list(broker_ebs_volume_info()),
%%   <<"ClientAuthentication">> => client_authentication(),
%%   <<"ConfigurationInfo">> => configuration_info(),
%%   <<"ConnectivityInfo">> => connectivity_info(),
%%   <<"EncryptionInfo">> => encryption_info(),
%%   <<"EnhancedMonitoring">> => list(any()),
%%   <<"InstanceType">> => string(),
%%   <<"KafkaVersion">> => string(),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"NumberOfBrokerNodes">> => integer(),
%%   <<"OpenMonitoring">> => open_monitoring(),
%%   <<"Rebalancing">> => rebalancing(),
%%   <<"StorageMode">> => list(any())
%% }
-type mutable_cluster_info() :: #{binary() => any()}.


%% Example:
%% broker_ebs_volume_info() :: #{
%%   <<"KafkaBrokerNodeId">> => string(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput(),
%%   <<"VolumeSizeGB">> => integer()
%% }
-type broker_ebs_volume_info() :: #{binary() => any()}.


%% Example:
%% rebalancing() :: #{
%%   <<"Status">> => list(any())
%% }
-type rebalancing() :: #{binary() => any()}.


%% Example:
%% list_scram_secrets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SecretArnList">> => list(string())
%% }
-type list_scram_secrets_response() :: #{binary() => any()}.


%% Example:
%% batch_associate_scram_secret_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"UnprocessedScramSecrets">> => list(unprocessed_scram_secret())
%% }
-type batch_associate_scram_secret_response() :: #{binary() => any()}.


%% Example:
%% update_monitoring_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterOperationArn">> => string()
%% }
-type update_monitoring_response() :: #{binary() => any()}.


%% Example:
%% vpc_connectivity() :: #{
%%   <<"ClientAuthentication">> => vpc_connectivity_client_authentication()
%% }
-type vpc_connectivity() :: #{binary() => any()}.

%% Example:
%% reject_client_vpc_connection_response() :: #{}
-type reject_client_vpc_connection_response() :: #{}.


%% Example:
%% replicator_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentVersion">> => string(),
%%   <<"IsReplicatorReference">> => boolean(),
%%   <<"KafkaClustersSummary">> => list(kafka_cluster_summary()),
%%   <<"ReplicationInfoSummaryList">> => list(replication_info_summary()),
%%   <<"ReplicatorArn">> => string(),
%%   <<"ReplicatorName">> => string(),
%%   <<"ReplicatorResourceArn">> => string(),
%%   <<"ReplicatorState">> => list(any())
%% }
-type replicator_summary() :: #{binary() => any()}.


%% Example:
%% state_info() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type state_info() :: #{binary() => any()}.


%% Example:
%% list_scram_secrets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_scram_secrets_request() :: #{binary() => any()}.


%% Example:
%% batch_disassociate_scram_secret_request() :: #{
%%   <<"SecretArnList">> := list(string())
%% }
-type batch_disassociate_scram_secret_request() :: #{binary() => any()}.


%% Example:
%% update_broker_type_request() :: #{
%%   <<"CurrentVersion">> := string(),
%%   <<"TargetInstanceType">> := string()
%% }
-type update_broker_type_request() :: #{binary() => any()}.


%% Example:
%% unprocessed_scram_secret() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"SecretArn">> => string()
%% }
-type unprocessed_scram_secret() :: #{binary() => any()}.


%% Example:
%% vpc_connectivity_sasl() :: #{
%%   <<"Iam">> => vpc_connectivity_iam(),
%%   <<"Scram">> => vpc_connectivity_scram()
%% }
-type vpc_connectivity_sasl() :: #{binary() => any()}.


%% Example:
%% replication_info() :: #{
%%   <<"ConsumerGroupReplication">> => consumer_group_replication(),
%%   <<"SourceKafkaClusterArn">> => string(),
%%   <<"TargetCompressionType">> => list(any()),
%%   <<"TargetKafkaClusterArn">> => string(),
%%   <<"TopicReplication">> => topic_replication()
%% }
-type replication_info() :: #{binary() => any()}.


%% Example:
%% cluster_operation_v2() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterType">> => list(any()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ErrorInfo">> => error_info(),
%%   <<"OperationArn">> => string(),
%%   <<"OperationState">> => string(),
%%   <<"OperationType">> => string(),
%%   <<"Provisioned">> => cluster_operation_v2_provisioned(),
%%   <<"Serverless">> => cluster_operation_v2_serverless(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type cluster_operation_v2() :: #{binary() => any()}.


%% Example:
%% broker_count_update_info() :: #{
%%   <<"CreatedBrokerIds">> => list(float()),
%%   <<"DeletedBrokerIds">> => list(float())
%% }
-type broker_count_update_info() :: #{binary() => any()}.


%% Example:
%% list_nodes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NodeInfoList">> => list(node_info())
%% }
-type list_nodes_response() :: #{binary() => any()}.


%% Example:
%% list_configuration_revisions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_revisions_request() :: #{binary() => any()}.


%% Example:
%% cluster_operation_v2_serverless() :: #{
%%   <<"VpcConnectionInfo">> => vpc_connection_info_serverless()
%% }
-type cluster_operation_v2_serverless() :: #{binary() => any()}.


%% Example:
%% create_cluster_v2_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"Provisioned">> => provisioned_request(),
%%   <<"Serverless">> => serverless_request(),
%%   <<"Tags">> => map()
%% }
-type create_cluster_v2_request() :: #{binary() => any()}.


%% Example:
%% cluster_operation_step_info() :: #{
%%   <<"StepStatus">> => string()
%% }
-type cluster_operation_step_info() :: #{binary() => any()}.


%% Example:
%% serverless() :: #{
%%   <<"ClientAuthentication">> => serverless_client_authentication(),
%%   <<"VpcConfigs">> => list(vpc_config())
%% }
-type serverless() :: #{binary() => any()}.


%% Example:
%% broker_software_info() :: #{
%%   <<"ConfigurationArn">> => string(),
%%   <<"ConfigurationRevision">> => float(),
%%   <<"KafkaVersion">> => string()
%% }
-type broker_software_info() :: #{binary() => any()}.

-type batch_associate_scram_secret_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type batch_disassociate_scram_secret_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type create_cluster_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type create_cluster_v2_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type create_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type create_replicator_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type create_vpc_connection_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type delete_cluster_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type delete_cluster_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type delete_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type delete_replicator_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type delete_vpc_connection_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type describe_cluster_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_cluster_operation_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_cluster_operation_v2_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_cluster_v2_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_configuration_revision_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_replicator_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_vpc_connection_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type get_bootstrap_brokers_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type get_cluster_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type get_compatible_kafka_versions_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_client_vpc_connections_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_cluster_operations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_cluster_operations_v2_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_clusters_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_clusters_v2_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_configuration_revisions_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_configurations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_kafka_versions_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_nodes_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type list_replicators_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_scram_secrets_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception().

-type list_vpc_connections_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type put_cluster_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    forbidden_exception().

-type reboot_broker_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type reject_client_vpc_connection_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception().

-type update_broker_count_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_broker_storage_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_broker_type_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_cluster_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_cluster_kafka_version_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_connectivity_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_monitoring_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_rebalancing_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_replication_info_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_security_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_storage_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates one or more Scram Secrets with an Amazon MSK cluster.
-spec batch_associate_scram_secret(aws_client:aws_client(), binary() | list(), batch_associate_scram_secret_request()) ->
    {ok, batch_associate_scram_secret_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_scram_secret_errors(), tuple()}.
batch_associate_scram_secret(Client, ClusterArn, Input) ->
    batch_associate_scram_secret(Client, ClusterArn, Input, []).

-spec batch_associate_scram_secret(aws_client:aws_client(), binary() | list(), batch_associate_scram_secret_request(), proplists:proplist()) ->
    {ok, batch_associate_scram_secret_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_scram_secret_errors(), tuple()}.
batch_associate_scram_secret(Client, ClusterArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/scram-secrets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates one or more Scram Secrets from an Amazon MSK cluster.
-spec batch_disassociate_scram_secret(aws_client:aws_client(), binary() | list(), batch_disassociate_scram_secret_request()) ->
    {ok, batch_disassociate_scram_secret_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_scram_secret_errors(), tuple()}.
batch_disassociate_scram_secret(Client, ClusterArn, Input) ->
    batch_disassociate_scram_secret(Client, ClusterArn, Input, []).

-spec batch_disassociate_scram_secret(aws_client:aws_client(), binary() | list(), batch_disassociate_scram_secret_request(), proplists:proplist()) ->
    {ok, batch_disassociate_scram_secret_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_scram_secret_errors(), tuple()}.
batch_disassociate_scram_secret(Client, ClusterArn, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/scram-secrets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new MSK cluster.
-spec create_cluster(aws_client:aws_client(), create_cluster_request()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_request(), proplists:proplist()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/clusters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new MSK cluster.
-spec create_cluster_v2(aws_client:aws_client(), create_cluster_v2_request()) ->
    {ok, create_cluster_v2_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_v2_errors(), tuple()}.
create_cluster_v2(Client, Input) ->
    create_cluster_v2(Client, Input, []).

-spec create_cluster_v2(aws_client:aws_client(), create_cluster_v2_request(), proplists:proplist()) ->
    {ok, create_cluster_v2_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_v2_errors(), tuple()}.
create_cluster_v2(Client, Input0, Options0) ->
    Method = post,
    Path = ["/api/v2/clusters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new MSK configuration.
-spec create_configuration(aws_client:aws_client(), create_configuration_request()) ->
    {ok, create_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_errors(), tuple()}.
create_configuration(Client, Input) ->
    create_configuration(Client, Input, []).

-spec create_configuration(aws_client:aws_client(), create_configuration_request(), proplists:proplist()) ->
    {ok, create_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_errors(), tuple()}.
create_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/configurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates the replicator.
-spec create_replicator(aws_client:aws_client(), create_replicator_request()) ->
    {ok, create_replicator_response(), tuple()} |
    {error, any()} |
    {error, create_replicator_errors(), tuple()}.
create_replicator(Client, Input) ->
    create_replicator(Client, Input, []).

-spec create_replicator(aws_client:aws_client(), create_replicator_request(), proplists:proplist()) ->
    {ok, create_replicator_response(), tuple()} |
    {error, any()} |
    {error, create_replicator_errors(), tuple()}.
create_replicator(Client, Input0, Options0) ->
    Method = post,
    Path = ["/replication/v1/replicators"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new MSK VPC connection.
-spec create_vpc_connection(aws_client:aws_client(), create_vpc_connection_request()) ->
    {ok, create_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_connection_errors(), tuple()}.
create_vpc_connection(Client, Input) ->
    create_vpc_connection(Client, Input, []).

-spec create_vpc_connection(aws_client:aws_client(), create_vpc_connection_request(), proplists:proplist()) ->
    {ok, create_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_connection_errors(), tuple()}.
create_vpc_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/vpc-connection"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the MSK cluster specified by the Amazon Resource Name (ARN)
%% in the request.
-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_request()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, ClusterArn, Input) ->
    delete_cluster(Client, ClusterArn, Input, []).

-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_request(), proplists:proplist()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, ClusterArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"currentVersion">>, <<"CurrentVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the MSK cluster policy specified by the Amazon Resource Name
%% (ARN) in the request.
-spec delete_cluster_policy(aws_client:aws_client(), binary() | list(), delete_cluster_policy_request()) ->
    {ok, delete_cluster_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_policy_errors(), tuple()}.
delete_cluster_policy(Client, ClusterArn, Input) ->
    delete_cluster_policy(Client, ClusterArn, Input, []).

-spec delete_cluster_policy(aws_client:aws_client(), binary() | list(), delete_cluster_policy_request(), proplists:proplist()) ->
    {ok, delete_cluster_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_policy_errors(), tuple()}.
delete_cluster_policy(Client, ClusterArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an MSK Configuration.
-spec delete_configuration(aws_client:aws_client(), binary() | list(), delete_configuration_request()) ->
    {ok, delete_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_errors(), tuple()}.
delete_configuration(Client, Arn, Input) ->
    delete_configuration(Client, Arn, Input, []).

-spec delete_configuration(aws_client:aws_client(), binary() | list(), delete_configuration_request(), proplists:proplist()) ->
    {ok, delete_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_errors(), tuple()}.
delete_configuration(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a replicator.
-spec delete_replicator(aws_client:aws_client(), binary() | list(), delete_replicator_request()) ->
    {ok, delete_replicator_response(), tuple()} |
    {error, any()} |
    {error, delete_replicator_errors(), tuple()}.
delete_replicator(Client, ReplicatorArn, Input) ->
    delete_replicator(Client, ReplicatorArn, Input, []).

-spec delete_replicator(aws_client:aws_client(), binary() | list(), delete_replicator_request(), proplists:proplist()) ->
    {ok, delete_replicator_response(), tuple()} |
    {error, any()} |
    {error, delete_replicator_errors(), tuple()}.
delete_replicator(Client, ReplicatorArn, Input0, Options0) ->
    Method = delete,
    Path = ["/replication/v1/replicators/", aws_util:encode_uri(ReplicatorArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"currentVersion">>, <<"CurrentVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a MSK VPC connection.
-spec delete_vpc_connection(aws_client:aws_client(), binary() | list(), delete_vpc_connection_request()) ->
    {ok, delete_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_connection_errors(), tuple()}.
delete_vpc_connection(Client, Arn, Input) ->
    delete_vpc_connection(Client, Arn, Input, []).

-spec delete_vpc_connection(aws_client:aws_client(), binary() | list(), delete_vpc_connection_request(), proplists:proplist()) ->
    {ok, delete_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_connection_errors(), tuple()}.
delete_vpc_connection(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/vpc-connection/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a description of the MSK cluster whose Amazon Resource Name
%% (ARN) is specified in the request.
-spec describe_cluster(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, ClusterArn)
  when is_map(Client) ->
    describe_cluster(Client, ClusterArn, #{}, #{}).

-spec describe_cluster(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec describe_cluster(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of the cluster operation specified by the ARN.
-spec describe_cluster_operation(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_cluster_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_operation_errors(), tuple()}.
describe_cluster_operation(Client, ClusterOperationArn)
  when is_map(Client) ->
    describe_cluster_operation(Client, ClusterOperationArn, #{}, #{}).

-spec describe_cluster_operation(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_cluster_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_operation_errors(), tuple()}.
describe_cluster_operation(Client, ClusterOperationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster_operation(Client, ClusterOperationArn, QueryMap, HeadersMap, []).

-spec describe_cluster_operation(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_cluster_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_operation_errors(), tuple()}.
describe_cluster_operation(Client, ClusterOperationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/operations/", aws_util:encode_uri(ClusterOperationArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of the cluster operation specified by the ARN.
-spec describe_cluster_operation_v2(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_cluster_operation_v2_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_operation_v2_errors(), tuple()}.
describe_cluster_operation_v2(Client, ClusterOperationArn)
  when is_map(Client) ->
    describe_cluster_operation_v2(Client, ClusterOperationArn, #{}, #{}).

-spec describe_cluster_operation_v2(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_cluster_operation_v2_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_operation_v2_errors(), tuple()}.
describe_cluster_operation_v2(Client, ClusterOperationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster_operation_v2(Client, ClusterOperationArn, QueryMap, HeadersMap, []).

-spec describe_cluster_operation_v2(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_cluster_operation_v2_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_operation_v2_errors(), tuple()}.
describe_cluster_operation_v2(Client, ClusterOperationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v2/operations/", aws_util:encode_uri(ClusterOperationArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of the MSK cluster whose Amazon Resource Name
%% (ARN) is specified in the request.
-spec describe_cluster_v2(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_cluster_v2_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_v2_errors(), tuple()}.
describe_cluster_v2(Client, ClusterArn)
  when is_map(Client) ->
    describe_cluster_v2(Client, ClusterArn, #{}, #{}).

-spec describe_cluster_v2(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_cluster_v2_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_v2_errors(), tuple()}.
describe_cluster_v2(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster_v2(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec describe_cluster_v2(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_cluster_v2_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_v2_errors(), tuple()}.
describe_cluster_v2(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v2/clusters/", aws_util:encode_uri(ClusterArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of this MSK configuration.
-spec describe_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_errors(), tuple()}.
describe_configuration(Client, Arn)
  when is_map(Client) ->
    describe_configuration(Client, Arn, #{}, #{}).

-spec describe_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_errors(), tuple()}.
describe_configuration(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_configuration(Client, Arn, QueryMap, HeadersMap, []).

-spec describe_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_errors(), tuple()}.
describe_configuration(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of this revision of the configuration.
-spec describe_configuration_revision(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_configuration_revision_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_revision_errors(), tuple()}.
describe_configuration_revision(Client, Arn, Revision)
  when is_map(Client) ->
    describe_configuration_revision(Client, Arn, Revision, #{}, #{}).

-spec describe_configuration_revision(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_configuration_revision_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_revision_errors(), tuple()}.
describe_configuration_revision(Client, Arn, Revision, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_configuration_revision(Client, Arn, Revision, QueryMap, HeadersMap, []).

-spec describe_configuration_revision(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_configuration_revision_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_revision_errors(), tuple()}.
describe_configuration_revision(Client, Arn, Revision, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), "/revisions/", aws_util:encode_uri(Revision), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a replicator.
-spec describe_replicator(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_replicator_response(), tuple()} |
    {error, any()} |
    {error, describe_replicator_errors(), tuple()}.
describe_replicator(Client, ReplicatorArn)
  when is_map(Client) ->
    describe_replicator(Client, ReplicatorArn, #{}, #{}).

-spec describe_replicator(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_replicator_response(), tuple()} |
    {error, any()} |
    {error, describe_replicator_errors(), tuple()}.
describe_replicator(Client, ReplicatorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_replicator(Client, ReplicatorArn, QueryMap, HeadersMap, []).

-spec describe_replicator(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_replicator_response(), tuple()} |
    {error, any()} |
    {error, describe_replicator_errors(), tuple()}.
describe_replicator(Client, ReplicatorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/replication/v1/replicators/", aws_util:encode_uri(ReplicatorArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of this MSK VPC connection.
-spec describe_vpc_connection(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_connection_errors(), tuple()}.
describe_vpc_connection(Client, Arn)
  when is_map(Client) ->
    describe_vpc_connection(Client, Arn, #{}, #{}).

-spec describe_vpc_connection(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_connection_errors(), tuple()}.
describe_vpc_connection(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vpc_connection(Client, Arn, QueryMap, HeadersMap, []).

-spec describe_vpc_connection(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_connection_errors(), tuple()}.
describe_vpc_connection(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/vpc-connection/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of brokers that a client application can use to bootstrap.
%%
%% This list doesn't necessarily include all of the brokers in the
%% cluster. The following Python 3.6 example shows how you can use the Amazon
%% Resource Name (ARN) of a cluster to get its bootstrap brokers. If you
%% don't know the ARN of your cluster, you can use the `ListClusters'
%% operation to get the ARNs of all the clusters in this account and Region.
-spec get_bootstrap_brokers(aws_client:aws_client(), binary() | list()) ->
    {ok, get_bootstrap_brokers_response(), tuple()} |
    {error, any()} |
    {error, get_bootstrap_brokers_errors(), tuple()}.
get_bootstrap_brokers(Client, ClusterArn)
  when is_map(Client) ->
    get_bootstrap_brokers(Client, ClusterArn, #{}, #{}).

-spec get_bootstrap_brokers(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_bootstrap_brokers_response(), tuple()} |
    {error, any()} |
    {error, get_bootstrap_brokers_errors(), tuple()}.
get_bootstrap_brokers(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bootstrap_brokers(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec get_bootstrap_brokers(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bootstrap_brokers_response(), tuple()} |
    {error, any()} |
    {error, get_bootstrap_brokers_errors(), tuple()}.
get_bootstrap_brokers(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/bootstrap-brokers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the MSK cluster policy specified by the Amazon Resource Name
%% (ARN) in the request.
-spec get_cluster_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cluster_policy_response(), tuple()} |
    {error, any()} |
    {error, get_cluster_policy_errors(), tuple()}.
get_cluster_policy(Client, ClusterArn)
  when is_map(Client) ->
    get_cluster_policy(Client, ClusterArn, #{}, #{}).

-spec get_cluster_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cluster_policy_response(), tuple()} |
    {error, any()} |
    {error, get_cluster_policy_errors(), tuple()}.
get_cluster_policy(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cluster_policy(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec get_cluster_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cluster_policy_response(), tuple()} |
    {error, any()} |
    {error, get_cluster_policy_errors(), tuple()}.
get_cluster_policy(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Apache Kafka versions to which you can update the MSK
%% cluster.
-spec get_compatible_kafka_versions(aws_client:aws_client()) ->
    {ok, get_compatible_kafka_versions_response(), tuple()} |
    {error, any()} |
    {error, get_compatible_kafka_versions_errors(), tuple()}.
get_compatible_kafka_versions(Client)
  when is_map(Client) ->
    get_compatible_kafka_versions(Client, #{}, #{}).

-spec get_compatible_kafka_versions(aws_client:aws_client(), map(), map()) ->
    {ok, get_compatible_kafka_versions_response(), tuple()} |
    {error, any()} |
    {error, get_compatible_kafka_versions_errors(), tuple()}.
get_compatible_kafka_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_compatible_kafka_versions(Client, QueryMap, HeadersMap, []).

-spec get_compatible_kafka_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_compatible_kafka_versions_response(), tuple()} |
    {error, any()} |
    {error, get_compatible_kafka_versions_errors(), tuple()}.
get_compatible_kafka_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/compatible-kafka-versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"clusterArn">>, maps:get(<<"clusterArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the VPC connections in this Region.
-spec list_client_vpc_connections(aws_client:aws_client(), binary() | list()) ->
    {ok, list_client_vpc_connections_response(), tuple()} |
    {error, any()} |
    {error, list_client_vpc_connections_errors(), tuple()}.
list_client_vpc_connections(Client, ClusterArn)
  when is_map(Client) ->
    list_client_vpc_connections(Client, ClusterArn, #{}, #{}).

-spec list_client_vpc_connections(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_client_vpc_connections_response(), tuple()} |
    {error, any()} |
    {error, list_client_vpc_connections_errors(), tuple()}.
list_client_vpc_connections(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_client_vpc_connections(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec list_client_vpc_connections(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_client_vpc_connections_response(), tuple()} |
    {error, any()} |
    {error, list_client_vpc_connections_errors(), tuple()}.
list_client_vpc_connections(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/client-vpc-connections"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the operations that have been performed on the
%% specified MSK cluster.
-spec list_cluster_operations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_cluster_operations_response(), tuple()} |
    {error, any()} |
    {error, list_cluster_operations_errors(), tuple()}.
list_cluster_operations(Client, ClusterArn)
  when is_map(Client) ->
    list_cluster_operations(Client, ClusterArn, #{}, #{}).

-spec list_cluster_operations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_cluster_operations_response(), tuple()} |
    {error, any()} |
    {error, list_cluster_operations_errors(), tuple()}.
list_cluster_operations(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cluster_operations(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec list_cluster_operations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_cluster_operations_response(), tuple()} |
    {error, any()} |
    {error, list_cluster_operations_errors(), tuple()}.
list_cluster_operations(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/operations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the operations that have been performed on the
%% specified MSK cluster.
-spec list_cluster_operations_v2(aws_client:aws_client(), binary() | list()) ->
    {ok, list_cluster_operations_v2_response(), tuple()} |
    {error, any()} |
    {error, list_cluster_operations_v2_errors(), tuple()}.
list_cluster_operations_v2(Client, ClusterArn)
  when is_map(Client) ->
    list_cluster_operations_v2(Client, ClusterArn, #{}, #{}).

-spec list_cluster_operations_v2(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_cluster_operations_v2_response(), tuple()} |
    {error, any()} |
    {error, list_cluster_operations_v2_errors(), tuple()}.
list_cluster_operations_v2(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cluster_operations_v2(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec list_cluster_operations_v2(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_cluster_operations_v2_response(), tuple()} |
    {error, any()} |
    {error, list_cluster_operations_v2_errors(), tuple()}.
list_cluster_operations_v2(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v2/clusters/", aws_util:encode_uri(ClusterArn), "/operations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the MSK clusters in the current Region.
-spec list_clusters(aws_client:aws_client()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client)
  when is_map(Client) ->
    list_clusters(Client, #{}, #{}).

-spec list_clusters(aws_client:aws_client(), map(), map()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters(Client, QueryMap, HeadersMap, []).

-spec list_clusters(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"clusterNameFilter">>, maps:get(<<"clusterNameFilter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the MSK clusters in the current Region.
-spec list_clusters_v2(aws_client:aws_client()) ->
    {ok, list_clusters_v2_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_v2_errors(), tuple()}.
list_clusters_v2(Client)
  when is_map(Client) ->
    list_clusters_v2(Client, #{}, #{}).

-spec list_clusters_v2(aws_client:aws_client(), map(), map()) ->
    {ok, list_clusters_v2_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_v2_errors(), tuple()}.
list_clusters_v2(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters_v2(Client, QueryMap, HeadersMap, []).

-spec list_clusters_v2(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_clusters_v2_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_v2_errors(), tuple()}.
list_clusters_v2(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v2/clusters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"clusterNameFilter">>, maps:get(<<"clusterNameFilter">>, QueryMap, undefined)},
        {<<"clusterTypeFilter">>, maps:get(<<"clusterTypeFilter">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the MSK configurations in this Region.
-spec list_configuration_revisions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_configuration_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_revisions_errors(), tuple()}.
list_configuration_revisions(Client, Arn)
  when is_map(Client) ->
    list_configuration_revisions(Client, Arn, #{}, #{}).

-spec list_configuration_revisions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_configuration_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_revisions_errors(), tuple()}.
list_configuration_revisions(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_revisions(Client, Arn, QueryMap, HeadersMap, []).

-spec list_configuration_revisions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_configuration_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_revisions_errors(), tuple()}.
list_configuration_revisions(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), "/revisions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the MSK configurations in this Region.
-spec list_configurations(aws_client:aws_client()) ->
    {ok, list_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_configurations_errors(), tuple()}.
list_configurations(Client)
  when is_map(Client) ->
    list_configurations(Client, #{}, #{}).

-spec list_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_configurations_errors(), tuple()}.
list_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configurations(Client, QueryMap, HeadersMap, []).

-spec list_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_configurations_errors(), tuple()}.
list_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Apache Kafka versions.
-spec list_kafka_versions(aws_client:aws_client()) ->
    {ok, list_kafka_versions_response(), tuple()} |
    {error, any()} |
    {error, list_kafka_versions_errors(), tuple()}.
list_kafka_versions(Client)
  when is_map(Client) ->
    list_kafka_versions(Client, #{}, #{}).

-spec list_kafka_versions(aws_client:aws_client(), map(), map()) ->
    {ok, list_kafka_versions_response(), tuple()} |
    {error, any()} |
    {error, list_kafka_versions_errors(), tuple()}.
list_kafka_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kafka_versions(Client, QueryMap, HeadersMap, []).

-spec list_kafka_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_kafka_versions_response(), tuple()} |
    {error, any()} |
    {error, list_kafka_versions_errors(), tuple()}.
list_kafka_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/kafka-versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the broker nodes in the cluster.
-spec list_nodes(aws_client:aws_client(), binary() | list()) ->
    {ok, list_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, ClusterArn)
  when is_map(Client) ->
    list_nodes(Client, ClusterArn, #{}, #{}).

-spec list_nodes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_nodes(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec list_nodes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the replicators.
-spec list_replicators(aws_client:aws_client()) ->
    {ok, list_replicators_response(), tuple()} |
    {error, any()} |
    {error, list_replicators_errors(), tuple()}.
list_replicators(Client)
  when is_map(Client) ->
    list_replicators(Client, #{}, #{}).

-spec list_replicators(aws_client:aws_client(), map(), map()) ->
    {ok, list_replicators_response(), tuple()} |
    {error, any()} |
    {error, list_replicators_errors(), tuple()}.
list_replicators(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_replicators(Client, QueryMap, HeadersMap, []).

-spec list_replicators(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_replicators_response(), tuple()} |
    {error, any()} |
    {error, list_replicators_errors(), tuple()}.
list_replicators(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/replication/v1/replicators"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"replicatorNameFilter">>, maps:get(<<"replicatorNameFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the Scram Secrets associated with an Amazon MSK
%% cluster.
-spec list_scram_secrets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_scram_secrets_response(), tuple()} |
    {error, any()} |
    {error, list_scram_secrets_errors(), tuple()}.
list_scram_secrets(Client, ClusterArn)
  when is_map(Client) ->
    list_scram_secrets(Client, ClusterArn, #{}, #{}).

-spec list_scram_secrets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_scram_secrets_response(), tuple()} |
    {error, any()} |
    {error, list_scram_secrets_errors(), tuple()}.
list_scram_secrets(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scram_secrets(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec list_scram_secrets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_scram_secrets_response(), tuple()} |
    {error, any()} |
    {error, list_scram_secrets_errors(), tuple()}.
list_scram_secrets(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/scram-secrets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags associated with the specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the VPC connections in this Region.
-spec list_vpc_connections(aws_client:aws_client()) ->
    {ok, list_vpc_connections_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_connections_errors(), tuple()}.
list_vpc_connections(Client)
  when is_map(Client) ->
    list_vpc_connections(Client, #{}, #{}).

-spec list_vpc_connections(aws_client:aws_client(), map(), map()) ->
    {ok, list_vpc_connections_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_connections_errors(), tuple()}.
list_vpc_connections(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_connections(Client, QueryMap, HeadersMap, []).

-spec list_vpc_connections(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_vpc_connections_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_connections_errors(), tuple()}.
list_vpc_connections(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/vpc-connections"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates or updates the MSK cluster policy specified by the cluster
%% Amazon Resource Name (ARN) in the request.
-spec put_cluster_policy(aws_client:aws_client(), binary() | list(), put_cluster_policy_request()) ->
    {ok, put_cluster_policy_response(), tuple()} |
    {error, any()} |
    {error, put_cluster_policy_errors(), tuple()}.
put_cluster_policy(Client, ClusterArn, Input) ->
    put_cluster_policy(Client, ClusterArn, Input, []).

-spec put_cluster_policy(aws_client:aws_client(), binary() | list(), put_cluster_policy_request(), proplists:proplist()) ->
    {ok, put_cluster_policy_response(), tuple()} |
    {error, any()} |
    {error, put_cluster_policy_errors(), tuple()}.
put_cluster_policy(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Reboots brokers.
-spec reboot_broker(aws_client:aws_client(), binary() | list(), reboot_broker_request()) ->
    {ok, reboot_broker_response(), tuple()} |
    {error, any()} |
    {error, reboot_broker_errors(), tuple()}.
reboot_broker(Client, ClusterArn, Input) ->
    reboot_broker(Client, ClusterArn, Input, []).

-spec reboot_broker(aws_client:aws_client(), binary() | list(), reboot_broker_request(), proplists:proplist()) ->
    {ok, reboot_broker_response(), tuple()} |
    {error, any()} |
    {error, reboot_broker_errors(), tuple()}.
reboot_broker(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/reboot-broker"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns empty response.
-spec reject_client_vpc_connection(aws_client:aws_client(), binary() | list(), reject_client_vpc_connection_request()) ->
    {ok, reject_client_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, reject_client_vpc_connection_errors(), tuple()}.
reject_client_vpc_connection(Client, ClusterArn, Input) ->
    reject_client_vpc_connection(Client, ClusterArn, Input, []).

-spec reject_client_vpc_connection(aws_client:aws_client(), binary() | list(), reject_client_vpc_connection_request(), proplists:proplist()) ->
    {ok, reject_client_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, reject_client_vpc_connection_errors(), tuple()}.
reject_client_vpc_connection(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/client-vpc-connection"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to the specified MSK resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the tags associated with the keys that are provided in the
%% query.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the number of broker nodes in the cluster.
-spec update_broker_count(aws_client:aws_client(), binary() | list(), update_broker_count_request()) ->
    {ok, update_broker_count_response(), tuple()} |
    {error, any()} |
    {error, update_broker_count_errors(), tuple()}.
update_broker_count(Client, ClusterArn, Input) ->
    update_broker_count(Client, ClusterArn, Input, []).

-spec update_broker_count(aws_client:aws_client(), binary() | list(), update_broker_count_request(), proplists:proplist()) ->
    {ok, update_broker_count_response(), tuple()} |
    {error, any()} |
    {error, update_broker_count_errors(), tuple()}.
update_broker_count(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes/count"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the EBS storage associated with MSK brokers.
-spec update_broker_storage(aws_client:aws_client(), binary() | list(), update_broker_storage_request()) ->
    {ok, update_broker_storage_response(), tuple()} |
    {error, any()} |
    {error, update_broker_storage_errors(), tuple()}.
update_broker_storage(Client, ClusterArn, Input) ->
    update_broker_storage(Client, ClusterArn, Input, []).

-spec update_broker_storage(aws_client:aws_client(), binary() | list(), update_broker_storage_request(), proplists:proplist()) ->
    {ok, update_broker_storage_response(), tuple()} |
    {error, any()} |
    {error, update_broker_storage_errors(), tuple()}.
update_broker_storage(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes/storage"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates EC2 instance type.
-spec update_broker_type(aws_client:aws_client(), binary() | list(), update_broker_type_request()) ->
    {ok, update_broker_type_response(), tuple()} |
    {error, any()} |
    {error, update_broker_type_errors(), tuple()}.
update_broker_type(Client, ClusterArn, Input) ->
    update_broker_type(Client, ClusterArn, Input, []).

-spec update_broker_type(aws_client:aws_client(), binary() | list(), update_broker_type_request(), proplists:proplist()) ->
    {ok, update_broker_type_response(), tuple()} |
    {error, any()} |
    {error, update_broker_type_errors(), tuple()}.
update_broker_type(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/nodes/type"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the cluster with the configuration that is specified in the
%% request body.
-spec update_cluster_configuration(aws_client:aws_client(), binary() | list(), update_cluster_configuration_request()) ->
    {ok, update_cluster_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_configuration_errors(), tuple()}.
update_cluster_configuration(Client, ClusterArn, Input) ->
    update_cluster_configuration(Client, ClusterArn, Input, []).

-spec update_cluster_configuration(aws_client:aws_client(), binary() | list(), update_cluster_configuration_request(), proplists:proplist()) ->
    {ok, update_cluster_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_configuration_errors(), tuple()}.
update_cluster_configuration(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Apache Kafka version for the cluster.
-spec update_cluster_kafka_version(aws_client:aws_client(), binary() | list(), update_cluster_kafka_version_request()) ->
    {ok, update_cluster_kafka_version_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_kafka_version_errors(), tuple()}.
update_cluster_kafka_version(Client, ClusterArn, Input) ->
    update_cluster_kafka_version(Client, ClusterArn, Input, []).

-spec update_cluster_kafka_version(aws_client:aws_client(), binary() | list(), update_cluster_kafka_version_request(), proplists:proplist()) ->
    {ok, update_cluster_kafka_version_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_kafka_version_errors(), tuple()}.
update_cluster_kafka_version(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/version"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an MSK configuration.
-spec update_configuration(aws_client:aws_client(), binary() | list(), update_configuration_request()) ->
    {ok, update_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_errors(), tuple()}.
update_configuration(Client, Arn, Input) ->
    update_configuration(Client, Arn, Input, []).

-spec update_configuration(aws_client:aws_client(), binary() | list(), update_configuration_request(), proplists:proplist()) ->
    {ok, update_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_errors(), tuple()}.
update_configuration(Client, Arn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/configurations/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the cluster's connectivity configuration.
-spec update_connectivity(aws_client:aws_client(), binary() | list(), update_connectivity_request()) ->
    {ok, update_connectivity_response(), tuple()} |
    {error, any()} |
    {error, update_connectivity_errors(), tuple()}.
update_connectivity(Client, ClusterArn, Input) ->
    update_connectivity(Client, ClusterArn, Input, []).

-spec update_connectivity(aws_client:aws_client(), binary() | list(), update_connectivity_request(), proplists:proplist()) ->
    {ok, update_connectivity_response(), tuple()} |
    {error, any()} |
    {error, update_connectivity_errors(), tuple()}.
update_connectivity(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/connectivity"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the monitoring settings for the cluster.
%%
%% You can use this operation to specify which Apache Kafka metrics you want
%% Amazon MSK to send to Amazon CloudWatch. You can also specify settings for
%% open monitoring with Prometheus.
-spec update_monitoring(aws_client:aws_client(), binary() | list(), update_monitoring_request()) ->
    {ok, update_monitoring_response(), tuple()} |
    {error, any()} |
    {error, update_monitoring_errors(), tuple()}.
update_monitoring(Client, ClusterArn, Input) ->
    update_monitoring(Client, ClusterArn, Input, []).

-spec update_monitoring(aws_client:aws_client(), binary() | list(), update_monitoring_request(), proplists:proplist()) ->
    {ok, update_monitoring_response(), tuple()} |
    {error, any()} |
    {error, update_monitoring_errors(), tuple()}.
update_monitoring(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/monitoring"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use this resource to update the intelligent rebalancing status of an
%% Amazon MSK Provisioned cluster with Express brokers.
-spec update_rebalancing(aws_client:aws_client(), binary() | list(), update_rebalancing_request()) ->
    {ok, update_rebalancing_response(), tuple()} |
    {error, any()} |
    {error, update_rebalancing_errors(), tuple()}.
update_rebalancing(Client, ClusterArn, Input) ->
    update_rebalancing(Client, ClusterArn, Input, []).

-spec update_rebalancing(aws_client:aws_client(), binary() | list(), update_rebalancing_request(), proplists:proplist()) ->
    {ok, update_rebalancing_response(), tuple()} |
    {error, any()} |
    {error, update_rebalancing_errors(), tuple()}.
update_rebalancing(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/rebalancing"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates replication info of a replicator.
-spec update_replication_info(aws_client:aws_client(), binary() | list(), update_replication_info_request()) ->
    {ok, update_replication_info_response(), tuple()} |
    {error, any()} |
    {error, update_replication_info_errors(), tuple()}.
update_replication_info(Client, ReplicatorArn, Input) ->
    update_replication_info(Client, ReplicatorArn, Input, []).

-spec update_replication_info(aws_client:aws_client(), binary() | list(), update_replication_info_request(), proplists:proplist()) ->
    {ok, update_replication_info_response(), tuple()} |
    {error, any()} |
    {error, update_replication_info_errors(), tuple()}.
update_replication_info(Client, ReplicatorArn, Input0, Options0) ->
    Method = put,
    Path = ["/replication/v1/replicators/", aws_util:encode_uri(ReplicatorArn), "/replication-info"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the security settings for the cluster.
%%
%% You can use this operation to specify encryption and authentication on
%% existing clusters.
-spec update_security(aws_client:aws_client(), binary() | list(), update_security_request()) ->
    {ok, update_security_response(), tuple()} |
    {error, any()} |
    {error, update_security_errors(), tuple()}.
update_security(Client, ClusterArn, Input) ->
    update_security(Client, ClusterArn, Input, []).

-spec update_security(aws_client:aws_client(), binary() | list(), update_security_request(), proplists:proplist()) ->
    {ok, update_security_response(), tuple()} |
    {error, any()} |
    {error, update_security_errors(), tuple()}.
update_security(Client, ClusterArn, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/security"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates cluster broker volume size (or) sets cluster storage mode to
%% TIERED.
-spec update_storage(aws_client:aws_client(), binary() | list(), update_storage_request()) ->
    {ok, update_storage_response(), tuple()} |
    {error, any()} |
    {error, update_storage_errors(), tuple()}.
update_storage(Client, ClusterArn, Input) ->
    update_storage(Client, ClusterArn, Input, []).

-spec update_storage(aws_client:aws_client(), binary() | list(), update_storage_request(), proplists:proplist()) ->
    {ok, update_storage_response(), tuple()} |
    {error, any()} |
    {error, update_storage_errors(), tuple()}.
update_storage(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/clusters/", aws_util:encode_uri(ClusterArn), "/storage"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"kafka">>},
    Host = build_host(<<"kafka">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
