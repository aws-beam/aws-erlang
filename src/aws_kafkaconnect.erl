%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_kafkaconnect).

-export([create_connector/2,
         create_connector/3,
         create_custom_plugin/2,
         create_custom_plugin/3,
         create_worker_configuration/2,
         create_worker_configuration/3,
         delete_connector/3,
         delete_connector/4,
         delete_custom_plugin/3,
         delete_custom_plugin/4,
         delete_worker_configuration/3,
         delete_worker_configuration/4,
         describe_connector/2,
         describe_connector/4,
         describe_connector/5,
         describe_connector_operation/2,
         describe_connector_operation/4,
         describe_connector_operation/5,
         describe_custom_plugin/2,
         describe_custom_plugin/4,
         describe_custom_plugin/5,
         describe_worker_configuration/2,
         describe_worker_configuration/4,
         describe_worker_configuration/5,
         list_connector_operations/2,
         list_connector_operations/4,
         list_connector_operations/5,
         list_connectors/1,
         list_connectors/3,
         list_connectors/4,
         list_custom_plugins/1,
         list_custom_plugins/3,
         list_custom_plugins/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_worker_configurations/1,
         list_worker_configurations/3,
         list_worker_configurations/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_connector/3,
         update_connector/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% custom_plugin_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customPluginArn">> => string(),
%%   <<"customPluginState">> => string(),
%%   <<"description">> => string(),
%%   <<"latestRevision">> => custom_plugin_revision_summary(),
%%   <<"name">> => string()
%% }
-type custom_plugin_summary() :: #{binary() => any()}.


%% Example:
%% kafka_cluster_client_authentication() :: #{
%%   <<"authenticationType">> => string()
%% }
-type kafka_cluster_client_authentication() :: #{binary() => any()}.


%% Example:
%% kafka_cluster_client_authentication_description() :: #{
%%   <<"authenticationType">> => string()
%% }
-type kafka_cluster_client_authentication_description() :: #{binary() => any()}.


%% Example:
%% scale_in_policy() :: #{
%%   <<"cpuUtilizationPercentage">> => integer()
%% }
-type scale_in_policy() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% describe_worker_configuration_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"latestRevision">> => worker_configuration_revision_description(),
%%   <<"name">> => string(),
%%   <<"workerConfigurationArn">> => string(),
%%   <<"workerConfigurationState">> => string()
%% }
-type describe_worker_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_connectors_response() :: #{
%%   <<"connectors">> => list(connector_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_connectors_response() :: #{binary() => any()}.


%% Example:
%% plugin() :: #{
%%   <<"customPlugin">> => custom_plugin()
%% }
-type plugin() :: #{binary() => any()}.


%% Example:
%% capacity_description() :: #{
%%   <<"autoScaling">> => auto_scaling_description(),
%%   <<"provisionedCapacity">> => provisioned_capacity_description()
%% }
-type capacity_description() :: #{binary() => any()}.


%% Example:
%% describe_custom_plugin_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customPluginArn">> => string(),
%%   <<"customPluginState">> => string(),
%%   <<"description">> => string(),
%%   <<"latestRevision">> => custom_plugin_revision_summary(),
%%   <<"name">> => string(),
%%   <<"stateDescription">> => state_description()
%% }
-type describe_custom_plugin_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% worker_configuration_description() :: #{
%%   <<"revision">> => float(),
%%   <<"workerConfigurationArn">> => string()
%% }
-type worker_configuration_description() :: #{binary() => any()}.


%% Example:
%% vpc() :: #{
%%   <<"securityGroups">> => list(string()()),
%%   <<"subnets">> => list(string()())
%% }
-type vpc() :: #{binary() => any()}.


%% Example:
%% describe_connector_response() :: #{
%%   <<"capacity">> => capacity_description(),
%%   <<"connectorArn">> => string(),
%%   <<"connectorConfiguration">> => map(),
%%   <<"connectorDescription">> => string(),
%%   <<"connectorName">> => string(),
%%   <<"connectorState">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"currentVersion">> => string(),
%%   <<"kafkaCluster">> => kafka_cluster_description(),
%%   <<"kafkaClusterClientAuthentication">> => kafka_cluster_client_authentication_description(),
%%   <<"kafkaClusterEncryptionInTransit">> => kafka_cluster_encryption_in_transit_description(),
%%   <<"kafkaConnectVersion">> => string(),
%%   <<"logDelivery">> => log_delivery_description(),
%%   <<"plugins">> => list(plugin_description()()),
%%   <<"serviceExecutionRoleArn">> => string(),
%%   <<"stateDescription">> => state_description(),
%%   <<"workerConfiguration">> => worker_configuration_description()
%% }
-type describe_connector_response() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% update_connector_request() :: #{
%%   <<"capacity">> => capacity_update(),
%%   <<"connectorConfiguration">> => map(),
%%   <<"currentVersion">> := string()
%% }
-type update_connector_request() :: #{binary() => any()}.


%% Example:
%% worker_configuration() :: #{
%%   <<"revision">> => float(),
%%   <<"workerConfigurationArn">> => string()
%% }
-type worker_configuration() :: #{binary() => any()}.


%% Example:
%% worker_configuration_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"latestRevision">> => worker_configuration_revision_summary(),
%%   <<"name">> => string(),
%%   <<"workerConfigurationArn">> => string(),
%%   <<"workerConfigurationState">> => string()
%% }
-type worker_configuration_summary() :: #{binary() => any()}.


%% Example:
%% scale_in_policy_description() :: #{
%%   <<"cpuUtilizationPercentage">> => integer()
%% }
-type scale_in_policy_description() :: #{binary() => any()}.


%% Example:
%% worker_setting() :: #{
%%   <<"capacity">> => capacity_description()
%% }
-type worker_setting() :: #{binary() => any()}.


%% Example:
%% delete_custom_plugin_response() :: #{
%%   <<"customPluginArn">> => string(),
%%   <<"customPluginState">> => string()
%% }
-type delete_custom_plugin_response() :: #{binary() => any()}.


%% Example:
%% list_connectors_request() :: #{
%%   <<"connectorNamePrefix">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_connectors_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% capacity() :: #{
%%   <<"autoScaling">> => auto_scaling(),
%%   <<"provisionedCapacity">> => provisioned_capacity()
%% }
-type capacity() :: #{binary() => any()}.


%% Example:
%% auto_scaling_update() :: #{
%%   <<"maxWorkerCount">> => integer(),
%%   <<"mcuCount">> => integer(),
%%   <<"minWorkerCount">> => integer(),
%%   <<"scaleInPolicy">> => scale_in_policy_update(),
%%   <<"scaleOutPolicy">> => scale_out_policy_update()
%% }
-type auto_scaling_update() :: #{binary() => any()}.


%% Example:
%% kafka_cluster() :: #{
%%   <<"apacheKafkaCluster">> => apache_kafka_cluster()
%% }
-type kafka_cluster() :: #{binary() => any()}.


%% Example:
%% connector_operation_step() :: #{
%%   <<"stepState">> => string(),
%%   <<"stepType">> => string()
%% }
-type connector_operation_step() :: #{binary() => any()}.


%% Example:
%% list_connector_operations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_connector_operations_request() :: #{binary() => any()}.


%% Example:
%% list_worker_configurations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workerConfigurations">> => list(worker_configuration_summary()())
%% }
-type list_worker_configurations_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% kafka_cluster_encryption_in_transit_description() :: #{
%%   <<"encryptionType">> => string()
%% }
-type kafka_cluster_encryption_in_transit_description() :: #{binary() => any()}.


%% Example:
%% provisioned_capacity_description() :: #{
%%   <<"mcuCount">> => integer(),
%%   <<"workerCount">> => integer()
%% }
-type provisioned_capacity_description() :: #{binary() => any()}.


%% Example:
%% kafka_cluster_encryption_in_transit() :: #{
%%   <<"encryptionType">> => string()
%% }
-type kafka_cluster_encryption_in_transit() :: #{binary() => any()}.


%% Example:
%% scale_out_policy_description() :: #{
%%   <<"cpuUtilizationPercentage">> => integer()
%% }
-type scale_out_policy_description() :: #{binary() => any()}.


%% Example:
%% vpc_description() :: #{
%%   <<"securityGroups">> => list(string()()),
%%   <<"subnets">> => list(string()())
%% }
-type vpc_description() :: #{binary() => any()}.


%% Example:
%% list_custom_plugins_response() :: #{
%%   <<"customPlugins">> => list(custom_plugin_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_custom_plugins_response() :: #{binary() => any()}.


%% Example:
%% auto_scaling_description() :: #{
%%   <<"maxWorkerCount">> => integer(),
%%   <<"mcuCount">> => integer(),
%%   <<"minWorkerCount">> => integer(),
%%   <<"scaleInPolicy">> => scale_in_policy_description(),
%%   <<"scaleOutPolicy">> => scale_out_policy_description()
%% }
-type auto_scaling_description() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logs_log_delivery_description() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"logGroup">> => string()
%% }
-type cloud_watch_logs_log_delivery_description() :: #{binary() => any()}.


%% Example:
%% apache_kafka_cluster() :: #{
%%   <<"bootstrapServers">> => string(),
%%   <<"vpc">> => vpc()
%% }
-type apache_kafka_cluster() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% scale_out_policy_update() :: #{
%%   <<"cpuUtilizationPercentage">> => integer()
%% }
-type scale_out_policy_update() :: #{binary() => any()}.


%% Example:
%% firehose_log_delivery_description() :: #{
%%   <<"deliveryStream">> => string(),
%%   <<"enabled">> => boolean()
%% }
-type firehose_log_delivery_description() :: #{binary() => any()}.


%% Example:
%% provisioned_capacity() :: #{
%%   <<"mcuCount">> => integer(),
%%   <<"workerCount">> => integer()
%% }
-type provisioned_capacity() :: #{binary() => any()}.


%% Example:
%% state_description() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type state_description() :: #{binary() => any()}.


%% Example:
%% create_connector_response() :: #{
%%   <<"connectorArn">> => string(),
%%   <<"connectorName">> => string(),
%%   <<"connectorState">> => string()
%% }
-type create_connector_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% capacity_update() :: #{
%%   <<"autoScaling">> => auto_scaling_update(),
%%   <<"provisionedCapacity">> => provisioned_capacity_update()
%% }
-type capacity_update() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% worker_configuration_revision_description() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"propertiesFileContent">> => string(),
%%   <<"revision">> => float()
%% }
-type worker_configuration_revision_description() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"bucketArn">> => string(),
%%   <<"fileKey">> => string(),
%%   <<"objectVersion">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% log_delivery_description() :: #{
%%   <<"workerLogDelivery">> => worker_log_delivery_description()
%% }
-type log_delivery_description() :: #{binary() => any()}.

%% Example:
%% describe_connector_request() :: #{}
-type describe_connector_request() :: #{}.


%% Example:
%% custom_plugin_description() :: #{
%%   <<"customPluginArn">> => string(),
%%   <<"revision">> => float()
%% }
-type custom_plugin_description() :: #{binary() => any()}.


%% Example:
%% auto_scaling() :: #{
%%   <<"maxWorkerCount">> => integer(),
%%   <<"mcuCount">> => integer(),
%%   <<"minWorkerCount">> => integer(),
%%   <<"scaleInPolicy">> => scale_in_policy(),
%%   <<"scaleOutPolicy">> => scale_out_policy()
%% }
-type auto_scaling() :: #{binary() => any()}.

%% Example:
%% delete_custom_plugin_request() :: #{}
-type delete_custom_plugin_request() :: #{}.


%% Example:
%% provisioned_capacity_update() :: #{
%%   <<"mcuCount">> => integer(),
%%   <<"workerCount">> => integer()
%% }
-type provisioned_capacity_update() :: #{binary() => any()}.


%% Example:
%% connector_operation_summary() :: #{
%%   <<"connectorOperationArn">> => string(),
%%   <<"connectorOperationState">> => string(),
%%   <<"connectorOperationType">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"endTime">> => non_neg_integer()
%% }
-type connector_operation_summary() :: #{binary() => any()}.


%% Example:
%% scale_in_policy_update() :: #{
%%   <<"cpuUtilizationPercentage">> => integer()
%% }
-type scale_in_policy_update() :: #{binary() => any()}.


%% Example:
%% describe_connector_operation_response() :: #{
%%   <<"connectorArn">> => string(),
%%   <<"connectorOperationArn">> => string(),
%%   <<"connectorOperationState">> => string(),
%%   <<"connectorOperationType">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"errorInfo">> => state_description(),
%%   <<"operationSteps">> => list(connector_operation_step()()),
%%   <<"originConnectorConfiguration">> => map(),
%%   <<"originWorkerSetting">> => worker_setting(),
%%   <<"targetConnectorConfiguration">> => map(),
%%   <<"targetWorkerSetting">> => worker_setting()
%% }
-type describe_connector_operation_response() :: #{binary() => any()}.


%% Example:
%% s3_log_delivery() :: #{
%%   <<"bucket">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"prefix">> => string()
%% }
-type s3_log_delivery() :: #{binary() => any()}.


%% Example:
%% worker_configuration_revision_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"revision">> => float()
%% }
-type worker_configuration_revision_summary() :: #{binary() => any()}.


%% Example:
%% create_connector_request() :: #{
%%   <<"capacity">> := capacity(),
%%   <<"connectorConfiguration">> := map(),
%%   <<"connectorDescription">> => string(),
%%   <<"connectorName">> := string(),
%%   <<"kafkaCluster">> := kafka_cluster(),
%%   <<"kafkaClusterClientAuthentication">> := kafka_cluster_client_authentication(),
%%   <<"kafkaClusterEncryptionInTransit">> := kafka_cluster_encryption_in_transit(),
%%   <<"kafkaConnectVersion">> := string(),
%%   <<"logDelivery">> => log_delivery(),
%%   <<"plugins">> := list(plugin()()),
%%   <<"serviceExecutionRoleArn">> := string(),
%%   <<"tags">> => map(),
%%   <<"workerConfiguration">> => worker_configuration()
%% }
-type create_connector_request() :: #{binary() => any()}.


%% Example:
%% delete_worker_configuration_response() :: #{
%%   <<"workerConfigurationArn">> => string(),
%%   <<"workerConfigurationState">> => string()
%% }
-type delete_worker_configuration_response() :: #{binary() => any()}.


%% Example:
%% worker_log_delivery() :: #{
%%   <<"cloudWatchLogs">> => cloud_watch_logs_log_delivery(),
%%   <<"firehose">> => firehose_log_delivery(),
%%   <<"s3">> => s3_log_delivery()
%% }
-type worker_log_delivery() :: #{binary() => any()}.


%% Example:
%% plugin_description() :: #{
%%   <<"customPlugin">> => custom_plugin_description()
%% }
-type plugin_description() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% delete_connector_response() :: #{
%%   <<"connectorArn">> => string(),
%%   <<"connectorState">> => string()
%% }
-type delete_connector_response() :: #{binary() => any()}.


%% Example:
%% connector_summary() :: #{
%%   <<"capacity">> => capacity_description(),
%%   <<"connectorArn">> => string(),
%%   <<"connectorDescription">> => string(),
%%   <<"connectorName">> => string(),
%%   <<"connectorState">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"currentVersion">> => string(),
%%   <<"kafkaCluster">> => kafka_cluster_description(),
%%   <<"kafkaClusterClientAuthentication">> => kafka_cluster_client_authentication_description(),
%%   <<"kafkaClusterEncryptionInTransit">> => kafka_cluster_encryption_in_transit_description(),
%%   <<"kafkaConnectVersion">> => string(),
%%   <<"logDelivery">> => log_delivery_description(),
%%   <<"plugins">> => list(plugin_description()()),
%%   <<"serviceExecutionRoleArn">> => string(),
%%   <<"workerConfiguration">> => worker_configuration_description()
%% }
-type connector_summary() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logs_log_delivery() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"logGroup">> => string()
%% }
-type cloud_watch_logs_log_delivery() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% worker_log_delivery_description() :: #{
%%   <<"cloudWatchLogs">> => cloud_watch_logs_log_delivery_description(),
%%   <<"firehose">> => firehose_log_delivery_description(),
%%   <<"s3">> => s3_log_delivery_description()
%% }
-type worker_log_delivery_description() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% log_delivery() :: #{
%%   <<"workerLogDelivery">> => worker_log_delivery()
%% }
-type log_delivery() :: #{binary() => any()}.


%% Example:
%% update_connector_response() :: #{
%%   <<"connectorArn">> => string(),
%%   <<"connectorOperationArn">> => string(),
%%   <<"connectorState">> => string()
%% }
-type update_connector_response() :: #{binary() => any()}.

%% Example:
%% describe_custom_plugin_request() :: #{}
-type describe_custom_plugin_request() :: #{}.


%% Example:
%% create_worker_configuration_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"propertiesFileContent">> := string(),
%%   <<"tags">> => map()
%% }
-type create_worker_configuration_request() :: #{binary() => any()}.


%% Example:
%% kafka_cluster_description() :: #{
%%   <<"apacheKafkaCluster">> => apache_kafka_cluster_description()
%% }
-type kafka_cluster_description() :: #{binary() => any()}.


%% Example:
%% create_custom_plugin_response() :: #{
%%   <<"customPluginArn">> => string(),
%%   <<"customPluginState">> => string(),
%%   <<"name">> => string(),
%%   <<"revision">> => float()
%% }
-type create_custom_plugin_response() :: #{binary() => any()}.


%% Example:
%% custom_plugin_location_description() :: #{
%%   <<"s3Location">> => s3_location_description()
%% }
-type custom_plugin_location_description() :: #{binary() => any()}.


%% Example:
%% custom_plugin() :: #{
%%   <<"customPluginArn">> => string(),
%%   <<"revision">> => float()
%% }
-type custom_plugin() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% delete_connector_request() :: #{
%%   <<"currentVersion">> => string()
%% }
-type delete_connector_request() :: #{binary() => any()}.


%% Example:
%% firehose_log_delivery() :: #{
%%   <<"deliveryStream">> => string(),
%%   <<"enabled">> => boolean()
%% }
-type firehose_log_delivery() :: #{binary() => any()}.


%% Example:
%% create_worker_configuration_response() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"latestRevision">> => worker_configuration_revision_summary(),
%%   <<"name">> => string(),
%%   <<"workerConfigurationArn">> => string(),
%%   <<"workerConfigurationState">> => string()
%% }
-type create_worker_configuration_response() :: #{binary() => any()}.

%% Example:
%% delete_worker_configuration_request() :: #{}
-type delete_worker_configuration_request() :: #{}.


%% Example:
%% s3_log_delivery_description() :: #{
%%   <<"bucket">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"prefix">> => string()
%% }
-type s3_log_delivery_description() :: #{binary() => any()}.


%% Example:
%% list_custom_plugins_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"namePrefix">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_custom_plugins_request() :: #{binary() => any()}.


%% Example:
%% apache_kafka_cluster_description() :: #{
%%   <<"bootstrapServers">> => string(),
%%   <<"vpc">> => vpc_description()
%% }
-type apache_kafka_cluster_description() :: #{binary() => any()}.


%% Example:
%% s3_location_description() :: #{
%%   <<"bucketArn">> => string(),
%%   <<"fileKey">> => string(),
%%   <<"objectVersion">> => string()
%% }
-type s3_location_description() :: #{binary() => any()}.


%% Example:
%% list_worker_configurations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"namePrefix">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_worker_configurations_request() :: #{binary() => any()}.


%% Example:
%% custom_plugin_location() :: #{
%%   <<"s3Location">> => s3_location()
%% }
-type custom_plugin_location() :: #{binary() => any()}.


%% Example:
%% list_connector_operations_response() :: #{
%%   <<"connectorOperations">> => list(connector_operation_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_connector_operations_response() :: #{binary() => any()}.


%% Example:
%% scale_out_policy() :: #{
%%   <<"cpuUtilizationPercentage">> => integer()
%% }
-type scale_out_policy() :: #{binary() => any()}.


%% Example:
%% custom_plugin_file_description() :: #{
%%   <<"fileMd5">> => string(),
%%   <<"fileSize">> => float()
%% }
-type custom_plugin_file_description() :: #{binary() => any()}.


%% Example:
%% create_custom_plugin_request() :: #{
%%   <<"contentType">> := string(),
%%   <<"description">> => string(),
%%   <<"location">> := custom_plugin_location(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_custom_plugin_request() :: #{binary() => any()}.

%% Example:
%% describe_connector_operation_request() :: #{}
-type describe_connector_operation_request() :: #{}.

%% Example:
%% describe_worker_configuration_request() :: #{}
-type describe_worker_configuration_request() :: #{}.


%% Example:
%% custom_plugin_revision_summary() :: #{
%%   <<"contentType">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"fileDescription">> => custom_plugin_file_description(),
%%   <<"location">> => custom_plugin_location_description(),
%%   <<"revision">> => float()
%% }
-type custom_plugin_revision_summary() :: #{binary() => any()}.

-type create_connector_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type create_custom_plugin_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type create_worker_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type delete_connector_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type delete_custom_plugin_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type delete_worker_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_connector_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_connector_operation_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_custom_plugin_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_worker_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_connector_operations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_connectors_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_custom_plugins_errors() ::
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
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_worker_configurations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_connector_errors() ::
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

%% @doc Creates a connector using the specified properties.
-spec create_connector(aws_client:aws_client(), create_connector_request()) ->
    {ok, create_connector_response(), tuple()} |
    {error, any()} |
    {error, create_connector_errors(), tuple()}.
create_connector(Client, Input) ->
    create_connector(Client, Input, []).

-spec create_connector(aws_client:aws_client(), create_connector_request(), proplists:proplist()) ->
    {ok, create_connector_response(), tuple()} |
    {error, any()} |
    {error, create_connector_errors(), tuple()}.
create_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/connectors"],
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

%% @doc Creates a custom plugin using the specified properties.
-spec create_custom_plugin(aws_client:aws_client(), create_custom_plugin_request()) ->
    {ok, create_custom_plugin_response(), tuple()} |
    {error, any()} |
    {error, create_custom_plugin_errors(), tuple()}.
create_custom_plugin(Client, Input) ->
    create_custom_plugin(Client, Input, []).

-spec create_custom_plugin(aws_client:aws_client(), create_custom_plugin_request(), proplists:proplist()) ->
    {ok, create_custom_plugin_response(), tuple()} |
    {error, any()} |
    {error, create_custom_plugin_errors(), tuple()}.
create_custom_plugin(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/custom-plugins"],
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

%% @doc Creates a worker configuration using the specified properties.
-spec create_worker_configuration(aws_client:aws_client(), create_worker_configuration_request()) ->
    {ok, create_worker_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_worker_configuration_errors(), tuple()}.
create_worker_configuration(Client, Input) ->
    create_worker_configuration(Client, Input, []).

-spec create_worker_configuration(aws_client:aws_client(), create_worker_configuration_request(), proplists:proplist()) ->
    {ok, create_worker_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_worker_configuration_errors(), tuple()}.
create_worker_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/worker-configurations"],
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

%% @doc Deletes the specified connector.
-spec delete_connector(aws_client:aws_client(), binary() | list(), delete_connector_request()) ->
    {ok, delete_connector_response(), tuple()} |
    {error, any()} |
    {error, delete_connector_errors(), tuple()}.
delete_connector(Client, ConnectorArn, Input) ->
    delete_connector(Client, ConnectorArn, Input, []).

-spec delete_connector(aws_client:aws_client(), binary() | list(), delete_connector_request(), proplists:proplist()) ->
    {ok, delete_connector_response(), tuple()} |
    {error, any()} |
    {error, delete_connector_errors(), tuple()}.
delete_connector(Client, ConnectorArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/connectors/", aws_util:encode_uri(ConnectorArn), ""],
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
                     {<<"currentVersion">>, <<"currentVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a custom plugin.
-spec delete_custom_plugin(aws_client:aws_client(), binary() | list(), delete_custom_plugin_request()) ->
    {ok, delete_custom_plugin_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_plugin_errors(), tuple()}.
delete_custom_plugin(Client, CustomPluginArn, Input) ->
    delete_custom_plugin(Client, CustomPluginArn, Input, []).

-spec delete_custom_plugin(aws_client:aws_client(), binary() | list(), delete_custom_plugin_request(), proplists:proplist()) ->
    {ok, delete_custom_plugin_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_plugin_errors(), tuple()}.
delete_custom_plugin(Client, CustomPluginArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/custom-plugins/", aws_util:encode_uri(CustomPluginArn), ""],
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

%% @doc Deletes the specified worker configuration.
-spec delete_worker_configuration(aws_client:aws_client(), binary() | list(), delete_worker_configuration_request()) ->
    {ok, delete_worker_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_worker_configuration_errors(), tuple()}.
delete_worker_configuration(Client, WorkerConfigurationArn, Input) ->
    delete_worker_configuration(Client, WorkerConfigurationArn, Input, []).

-spec delete_worker_configuration(aws_client:aws_client(), binary() | list(), delete_worker_configuration_request(), proplists:proplist()) ->
    {ok, delete_worker_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_worker_configuration_errors(), tuple()}.
delete_worker_configuration(Client, WorkerConfigurationArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/worker-configurations/", aws_util:encode_uri(WorkerConfigurationArn), ""],
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

%% @doc Returns summary information about the connector.
-spec describe_connector(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_errors(), tuple()}.
describe_connector(Client, ConnectorArn)
  when is_map(Client) ->
    describe_connector(Client, ConnectorArn, #{}, #{}).

-spec describe_connector(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_errors(), tuple()}.
describe_connector(Client, ConnectorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_connector(Client, ConnectorArn, QueryMap, HeadersMap, []).

-spec describe_connector(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_errors(), tuple()}.
describe_connector(Client, ConnectorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/connectors/", aws_util:encode_uri(ConnectorArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified connector's operations.
-spec describe_connector_operation(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_connector_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_operation_errors(), tuple()}.
describe_connector_operation(Client, ConnectorOperationArn)
  when is_map(Client) ->
    describe_connector_operation(Client, ConnectorOperationArn, #{}, #{}).

-spec describe_connector_operation(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_connector_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_operation_errors(), tuple()}.
describe_connector_operation(Client, ConnectorOperationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_connector_operation(Client, ConnectorOperationArn, QueryMap, HeadersMap, []).

-spec describe_connector_operation(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_connector_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_connector_operation_errors(), tuple()}.
describe_connector_operation(Client, ConnectorOperationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/connectorOperations/", aws_util:encode_uri(ConnectorOperationArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A summary description of the custom plugin.
-spec describe_custom_plugin(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_custom_plugin_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_plugin_errors(), tuple()}.
describe_custom_plugin(Client, CustomPluginArn)
  when is_map(Client) ->
    describe_custom_plugin(Client, CustomPluginArn, #{}, #{}).

-spec describe_custom_plugin(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_custom_plugin_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_plugin_errors(), tuple()}.
describe_custom_plugin(Client, CustomPluginArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_custom_plugin(Client, CustomPluginArn, QueryMap, HeadersMap, []).

-spec describe_custom_plugin(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_custom_plugin_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_plugin_errors(), tuple()}.
describe_custom_plugin(Client, CustomPluginArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/custom-plugins/", aws_util:encode_uri(CustomPluginArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a worker configuration.
-spec describe_worker_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_worker_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_worker_configuration_errors(), tuple()}.
describe_worker_configuration(Client, WorkerConfigurationArn)
  when is_map(Client) ->
    describe_worker_configuration(Client, WorkerConfigurationArn, #{}, #{}).

-spec describe_worker_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_worker_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_worker_configuration_errors(), tuple()}.
describe_worker_configuration(Client, WorkerConfigurationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_worker_configuration(Client, WorkerConfigurationArn, QueryMap, HeadersMap, []).

-spec describe_worker_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_worker_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_worker_configuration_errors(), tuple()}.
describe_worker_configuration(Client, WorkerConfigurationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/worker-configurations/", aws_util:encode_uri(WorkerConfigurationArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about a connector's operation(s).
-spec list_connector_operations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_connector_operations_response(), tuple()} |
    {error, any()} |
    {error, list_connector_operations_errors(), tuple()}.
list_connector_operations(Client, ConnectorArn)
  when is_map(Client) ->
    list_connector_operations(Client, ConnectorArn, #{}, #{}).

-spec list_connector_operations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_connector_operations_response(), tuple()} |
    {error, any()} |
    {error, list_connector_operations_errors(), tuple()}.
list_connector_operations(Client, ConnectorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_connector_operations(Client, ConnectorArn, QueryMap, HeadersMap, []).

-spec list_connector_operations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_connector_operations_response(), tuple()} |
    {error, any()} |
    {error, list_connector_operations_errors(), tuple()}.
list_connector_operations(Client, ConnectorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/connectors/", aws_util:encode_uri(ConnectorArn), "/operations"],
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

%% @doc Returns a list of all the connectors in this account and Region.
%%
%% The list is limited to
%% connectors whose name starts with the specified prefix. The response also
%% includes a
%% description of each of the listed connectors.
-spec list_connectors(aws_client:aws_client()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client)
  when is_map(Client) ->
    list_connectors(Client, #{}, #{}).

-spec list_connectors(aws_client:aws_client(), map(), map()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_connectors(Client, QueryMap, HeadersMap, []).

-spec list_connectors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/connectors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"connectorNamePrefix">>, maps:get(<<"connectorNamePrefix">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all of the custom plugins in this account and
%% Region.
-spec list_custom_plugins(aws_client:aws_client()) ->
    {ok, list_custom_plugins_response(), tuple()} |
    {error, any()} |
    {error, list_custom_plugins_errors(), tuple()}.
list_custom_plugins(Client)
  when is_map(Client) ->
    list_custom_plugins(Client, #{}, #{}).

-spec list_custom_plugins(aws_client:aws_client(), map(), map()) ->
    {ok, list_custom_plugins_response(), tuple()} |
    {error, any()} |
    {error, list_custom_plugins_errors(), tuple()}.
list_custom_plugins(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_custom_plugins(Client, QueryMap, HeadersMap, []).

-spec list_custom_plugins(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_custom_plugins_response(), tuple()} |
    {error, any()} |
    {error, list_custom_plugins_errors(), tuple()}.
list_custom_plugins(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/custom-plugins"],
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
        {<<"namePrefix">>, maps:get(<<"namePrefix">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the tags attached to the specified resource.
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

%% @doc Returns a list of all of the worker configurations in this account
%% and Region.
-spec list_worker_configurations(aws_client:aws_client()) ->
    {ok, list_worker_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_worker_configurations_errors(), tuple()}.
list_worker_configurations(Client)
  when is_map(Client) ->
    list_worker_configurations(Client, #{}, #{}).

-spec list_worker_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_worker_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_worker_configurations_errors(), tuple()}.
list_worker_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_worker_configurations(Client, QueryMap, HeadersMap, []).

-spec list_worker_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_worker_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_worker_configurations_errors(), tuple()}.
list_worker_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/worker-configurations"],
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
        {<<"namePrefix">>, maps:get(<<"namePrefix">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Attaches tags to the specified resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified connector.
-spec update_connector(aws_client:aws_client(), binary() | list(), update_connector_request()) ->
    {ok, update_connector_response(), tuple()} |
    {error, any()} |
    {error, update_connector_errors(), tuple()}.
update_connector(Client, ConnectorArn, Input) ->
    update_connector(Client, ConnectorArn, Input, []).

-spec update_connector(aws_client:aws_client(), binary() | list(), update_connector_request(), proplists:proplist()) ->
    {ok, update_connector_response(), tuple()} |
    {error, any()} |
    {error, update_connector_errors(), tuple()}.
update_connector(Client, ConnectorArn, Input0, Options0) ->
    Method = put,
    Path = ["/v1/connectors/", aws_util:encode_uri(ConnectorArn), ""],
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
                     {<<"currentVersion">>, <<"currentVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"kafkaconnect">>},
    Host = build_host(<<"kafkaconnect">>, Client1),
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
