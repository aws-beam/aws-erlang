%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Timestream for InfluxDB is a managed time-series database
%% engine that makes it
%% easy for application developers and DevOps teams to run InfluxDB databases
%% on Amazon Web Services for near real-time time-series applications using
%% open-source APIs.
%%
%% With Amazon Timestream for InfluxDB, it is easy to set up, operate, and
%% scale time-series workloads that can answer queries with single-digit
%% millisecond query response time.
-module(aws_timestream_influxdb).

-export([create_db_cluster/2,
         create_db_cluster/3,
         create_db_instance/2,
         create_db_instance/3,
         create_db_parameter_group/2,
         create_db_parameter_group/3,
         delete_db_cluster/2,
         delete_db_cluster/3,
         delete_db_instance/2,
         delete_db_instance/3,
         get_db_cluster/2,
         get_db_cluster/3,
         get_db_instance/2,
         get_db_instance/3,
         get_db_parameter_group/2,
         get_db_parameter_group/3,
         list_db_clusters/2,
         list_db_clusters/3,
         list_db_instances/2,
         list_db_instances/3,
         list_db_instances_for_cluster/2,
         list_db_instances_for_cluster/3,
         list_db_parameter_groups/2,
         list_db_parameter_groups/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_db_cluster/2,
         update_db_cluster/3,
         update_db_instance/2,
         update_db_instance/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% influx_dbv3_enterprise_parameters() :: #{
%%   <<"gen1LookbackDuration">> => duration(),
%%   <<"walReplayFailOnError">> => [boolean()],
%%   <<"dataFusionRuntimeEventInterval">> => [integer()],
%%   <<"distinctValueCacheDisableFromHistory">> => [boolean()],
%%   <<"compactionMaxNumFilesPerPlan">> => [integer()],
%%   <<"compactionMultipliers">> => [string()],
%%   <<"parquetMemCachePruneInterval">> => duration(),
%%   <<"dataFusionNumThreads">> => [integer()],
%%   <<"catalogSyncInterval">> => duration(),
%%   <<"logFormat">> => list(any()),
%%   <<"ingestQueryInstances">> => [integer()],
%%   <<"disableParquetMemCache">> => [boolean()],
%%   <<"walReplayConcurrencyLimit">> => [integer()],
%%   <<"dedicatedCompactor">> => [boolean()],
%%   <<"retentionCheckInterval">> => duration(),
%%   <<"lastValueCacheDisableFromHistory">> => [boolean()],
%%   <<"dataFusionRuntimeMaxBlockingThreads">> => [integer()],
%%   <<"compactionCleanupWait">> => duration(),
%%   <<"dataFusionRuntimeDisableLifoSlot">> => [boolean()],
%%   <<"walMaxWriteBufferSize">> => [integer()],
%%   <<"deleteGracePeriod">> => duration(),
%%   <<"dataFusionMaxParquetFanout">> => [integer()],
%%   <<"dataFusionRuntimeMaxIoEventsPerTick">> => [integer()],
%%   <<"gen1Duration">> => duration(),
%%   <<"parquetMemCacheSize">> => list(),
%%   <<"parquetMemCacheQueryPathDuration">> => duration(),
%%   <<"forceSnapshotMemThreshold">> => list(),
%%   <<"parquetMemCachePrunePercentage">> => [float()],
%%   <<"distinctCacheEvictionInterval">> => duration(),
%%   <<"dataFusionRuntimeThreadPriority">> => [integer()],
%%   <<"logFilter">> => [string()],
%%   <<"compactionRowLimit">> => [integer()],
%%   <<"snapshottedWalFilesToKeep">> => [integer()],
%%   <<"walSnapshotSize">> => [integer()],
%%   <<"preemptiveCacheAge">> => duration(),
%%   <<"dataFusionUseCachedParquetLoader">> => [boolean()],
%%   <<"replicationInterval">> => duration(),
%%   <<"compactionCheckInterval">> => duration(),
%%   <<"compactionGen2Duration">> => duration(),
%%   <<"lastCacheEvictionInterval">> => duration(),
%%   <<"execMemPoolBytes">> => list(),
%%   <<"maxHttpRequestSize">> => [float()],
%%   <<"tableIndexCacheConcurrencyLimit">> => [integer()],
%%   <<"dataFusionRuntimeType">> => list(any()),
%%   <<"queryLogSize">> => [integer()],
%%   <<"dataFusionConfig">> => [string()],
%%   <<"dataFusionRuntimeGlobalQueueInterval">> => [integer()],
%%   <<"queryFileLimit">> => [integer()],
%%   <<"dataFusionRuntimeThreadKeepAlive">> => duration(),
%%   <<"queryOnlyInstances">> => [integer()],
%%   <<"tableIndexCacheMaxEntries">> => [integer()],
%%   <<"hardDeleteDefaultDuration">> => duration()
%% }
-type influx_dbv3_enterprise_parameters() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_db_instances_for_cluster_input() :: #{
%%   <<"dbClusterId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_db_instances_for_cluster_input() :: #{binary() => any()}.

%% Example:
%% list_db_parameter_groups_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_db_parameter_groups_input() :: #{binary() => any()}.

%% Example:
%% update_db_cluster_input() :: #{
%%   <<"dbClusterId">> := string(),
%%   <<"dbInstanceType">> => list(any()),
%%   <<"dbParameterGroupIdentifier">> => string(),
%%   <<"failoverMode">> => list(any()),
%%   <<"logDeliveryConfiguration">> => log_delivery_configuration(),
%%   <<"port">> => integer()
%% }
-type update_db_cluster_input() :: #{binary() => any()}.

%% Example:
%% delete_db_instance_output() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"arn">> => string(),
%%   <<"availabilityZone">> => [string()],
%%   <<"dbClusterId">> => string(),
%%   <<"dbInstanceType">> => list(any()),
%%   <<"dbParameterGroupIdentifier">> => string(),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"influxAuthParametersSecretArn">> => [string()],
%%   <<"instanceMode">> => list(any()),
%%   <<"instanceModes">> => list(list(any())()),
%%   <<"logDeliveryConfiguration">> => log_delivery_configuration(),
%%   <<"name">> => string(),
%%   <<"networkType">> => list(any()),
%%   <<"port">> => integer(),
%%   <<"publiclyAccessible">> => [boolean()],
%%   <<"secondaryAvailabilityZone">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"vpcSecurityGroupIds">> => list(string()),
%%   <<"vpcSubnetIds">> => list(string())
%% }
-type delete_db_instance_output() :: #{binary() => any()}.

%% Example:
%% list_db_clusters_output() :: #{
%%   <<"items">> => list(db_cluster_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_db_clusters_output() :: #{binary() => any()}.

%% Example:
%% db_parameter_group_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type db_parameter_group_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_db_instance_input() :: #{
%%   <<"identifier">> := string()
%% }
-type delete_db_instance_input() :: #{binary() => any()}.

%% Example:
%% list_db_instances_for_cluster_output() :: #{
%%   <<"items">> => list(db_instance_for_cluster_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_db_instances_for_cluster_output() :: #{binary() => any()}.

%% Example:
%% influx_dbv2_parameters() :: #{
%%   <<"queryMaxMemoryBytes">> => [float()],
%%   <<"queryConcurrency">> => [integer()],
%%   <<"storageMaxIndexLogFileSize">> => [float()],
%%   <<"influxqlMaxSelectBuckets">> => [float()],
%%   <<"httpIdleTimeout">> => duration(),
%%   <<"storageWalMaxConcurrentWrites">> => [integer()],
%%   <<"storageCompactFullWriteColdDuration">> => duration(),
%%   <<"storageCompactThroughputBurst">> => [float()],
%%   <<"uiDisabled">> => [boolean()],
%%   <<"metricsDisabled">> => [boolean()],
%%   <<"fluxLogEnabled">> => [boolean()],
%%   <<"pprofDisabled">> => [boolean()],
%%   <<"queryQueueSize">> => [integer()],
%%   <<"tracingType">> => list(any()),
%%   <<"influxqlMaxSelectSeries">> => [float()],
%%   <<"sessionLength">> => [integer()],
%%   <<"queryInitialMemoryBytes">> => [float()],
%%   <<"storageSeriesIdSetCacheSize">> => [float()],
%%   <<"storageCacheMaxMemorySize">> => [float()],
%%   <<"logLevel">> => list(any()),
%%   <<"influxqlMaxSelectPoint">> => [float()],
%%   <<"queryMemoryBytes">> => [float()],
%%   <<"storageCacheSnapshotMemorySize">> => [float()],
%%   <<"noTasks">> => [boolean()],
%%   <<"httpReadTimeout">> => duration(),
%%   <<"storageNoValidateFieldSize">> => [boolean()],
%%   <<"storageMaxConcurrentCompactions">> => [integer()],
%%   <<"httpReadHeaderTimeout">> => duration(),
%%   <<"storageCacheSnapshotWriteColdDuration">> => duration(),
%%   <<"sessionRenewDisabled">> => [boolean()],
%%   <<"storageSeriesFileMaxConcurrentSnapshotCompactions">> => [integer()],
%%   <<"storageRetentionCheckInterval">> => duration(),
%%   <<"httpWriteTimeout">> => duration(),
%%   <<"storageWalMaxWriteDelay">> => duration()
%% }
-type influx_dbv2_parameters() :: #{binary() => any()}.

%% Example:
%% get_db_instance_output() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"arn">> => string(),
%%   <<"availabilityZone">> => [string()],
%%   <<"dbClusterId">> => string(),
%%   <<"dbInstanceType">> => list(any()),
%%   <<"dbParameterGroupIdentifier">> => string(),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"influxAuthParametersSecretArn">> => [string()],
%%   <<"instanceMode">> => list(any()),
%%   <<"instanceModes">> => list(list(any())()),
%%   <<"logDeliveryConfiguration">> => log_delivery_configuration(),
%%   <<"name">> => string(),
%%   <<"networkType">> => list(any()),
%%   <<"port">> => integer(),
%%   <<"publiclyAccessible">> => [boolean()],
%%   <<"secondaryAvailabilityZone">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"vpcSecurityGroupIds">> => list(string()),
%%   <<"vpcSubnetIds">> => list(string())
%% }
-type get_db_instance_output() :: #{binary() => any()}.

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
%% db_instance_summary() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"arn">> => string(),
%%   <<"dbInstanceType">> => list(any()),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"networkType">> => list(any()),
%%   <<"port">> => integer(),
%%   <<"status">> => list(any())
%% }
-type db_instance_summary() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_input() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"bucket">> => string(),
%%   <<"dbInstanceType">> := list(any()),
%%   <<"dbParameterGroupIdentifier">> => string(),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"failoverMode">> => list(any()),
%%   <<"logDeliveryConfiguration">> => log_delivery_configuration(),
%%   <<"name">> := string(),
%%   <<"networkType">> => list(any()),
%%   <<"organization">> => string(),
%%   <<"password">> => string(),
%%   <<"port">> => integer(),
%%   <<"publiclyAccessible">> => [boolean()],
%%   <<"tags">> => map(),
%%   <<"username">> => string(),
%%   <<"vpcSecurityGroupIds">> := list(string()),
%%   <<"vpcSubnetIds">> := list(string())
%% }
-type create_db_cluster_input() :: #{binary() => any()}.

%% Example:
%% get_db_parameter_group_output() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"parameters">> => list()
%% }
-type get_db_parameter_group_output() :: #{binary() => any()}.

%% Example:
%% list_db_clusters_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_db_clusters_input() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_db_instance_input() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"dbInstanceType">> => list(any()),
%%   <<"dbParameterGroupIdentifier">> => string(),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"identifier">> := string(),
%%   <<"logDeliveryConfiguration">> => log_delivery_configuration(),
%%   <<"port">> => integer()
%% }
-type update_db_instance_input() :: #{binary() => any()}.

%% Example:
%% create_db_cluster_output() :: #{
%%   <<"dbClusterId">> => string(),
%%   <<"dbClusterStatus">> => list(any())
%% }
-type create_db_cluster_output() :: #{binary() => any()}.

%% Example:
%% log_delivery_configuration() :: #{
%%   <<"s3Configuration">> => s3_configuration()
%% }
-type log_delivery_configuration() :: #{binary() => any()}.

%% Example:
%% get_db_cluster_output() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"arn">> => string(),
%%   <<"dbInstanceType">> => list(any()),
%%   <<"dbParameterGroupIdentifier">> => string(),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"endpoint">> => [string()],
%%   <<"engineType">> => list(any()),
%%   <<"failoverMode">> => list(any()),
%%   <<"id">> => string(),
%%   <<"influxAuthParametersSecretArn">> => [string()],
%%   <<"logDeliveryConfiguration">> => log_delivery_configuration(),
%%   <<"name">> => string(),
%%   <<"networkType">> => list(any()),
%%   <<"port">> => integer(),
%%   <<"publiclyAccessible">> => [boolean()],
%%   <<"readerEndpoint">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"vpcSecurityGroupIds">> => list(string()),
%%   <<"vpcSubnetIds">> => list(string())
%% }
-type get_db_cluster_output() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% get_db_parameter_group_input() :: #{
%%   <<"identifier">> := string()
%% }
-type get_db_parameter_group_input() :: #{binary() => any()}.

%% Example:
%% list_db_parameter_groups_output() :: #{
%%   <<"items">> => list(db_parameter_group_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_db_parameter_groups_output() :: #{binary() => any()}.

%% Example:
%% create_db_instance_output() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"arn">> => string(),
%%   <<"availabilityZone">> => [string()],
%%   <<"dbClusterId">> => string(),
%%   <<"dbInstanceType">> => list(any()),
%%   <<"dbParameterGroupIdentifier">> => string(),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"influxAuthParametersSecretArn">> => [string()],
%%   <<"instanceMode">> => list(any()),
%%   <<"instanceModes">> => list(list(any())()),
%%   <<"logDeliveryConfiguration">> => log_delivery_configuration(),
%%   <<"name">> => string(),
%%   <<"networkType">> => list(any()),
%%   <<"port">> => integer(),
%%   <<"publiclyAccessible">> => [boolean()],
%%   <<"secondaryAvailabilityZone">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"vpcSecurityGroupIds">> => list(string()),
%%   <<"vpcSubnetIds">> => list(string())
%% }
-type create_db_instance_output() :: #{binary() => any()}.

%% Example:
%% db_instance_for_cluster_summary() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"arn">> => string(),
%%   <<"dbInstanceType">> => list(any()),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"instanceMode">> => list(any()),
%%   <<"instanceModes">> => list(list(any())()),
%%   <<"name">> => string(),
%%   <<"networkType">> => list(any()),
%%   <<"port">> => integer(),
%%   <<"status">> => list(any())
%% }
-type db_instance_for_cluster_summary() :: #{binary() => any()}.

%% Example:
%% get_db_cluster_input() :: #{
%%   <<"dbClusterId">> := string()
%% }
-type get_db_cluster_input() :: #{binary() => any()}.

%% Example:
%% list_db_instances_output() :: #{
%%   <<"items">> => list(db_instance_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_db_instances_output() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% create_db_parameter_group_input() :: #{
%%   <<"description">> => [string()],
%%   <<"name">> := string(),
%%   <<"parameters">> => list(),
%%   <<"tags">> => map()
%% }
-type create_db_parameter_group_input() :: #{binary() => any()}.

%% Example:
%% list_db_instances_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_db_instances_input() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% update_db_instance_output() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"arn">> => string(),
%%   <<"availabilityZone">> => [string()],
%%   <<"dbClusterId">> => string(),
%%   <<"dbInstanceType">> => list(any()),
%%   <<"dbParameterGroupIdentifier">> => string(),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"endpoint">> => [string()],
%%   <<"id">> => string(),
%%   <<"influxAuthParametersSecretArn">> => [string()],
%%   <<"instanceMode">> => list(any()),
%%   <<"instanceModes">> => list(list(any())()),
%%   <<"logDeliveryConfiguration">> => log_delivery_configuration(),
%%   <<"name">> => string(),
%%   <<"networkType">> => list(any()),
%%   <<"port">> => integer(),
%%   <<"publiclyAccessible">> => [boolean()],
%%   <<"secondaryAvailabilityZone">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"vpcSecurityGroupIds">> => list(string()),
%%   <<"vpcSubnetIds">> => list(string())
%% }
-type update_db_instance_output() :: #{binary() => any()}.

%% Example:
%% duration() :: #{
%%   <<"durationType">> => list(any()),
%%   <<"value">> => [float()]
%% }
-type duration() :: #{binary() => any()}.

%% Example:
%% update_db_cluster_output() :: #{
%%   <<"dbClusterStatus">> => list(any())
%% }
-type update_db_cluster_output() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
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
%% delete_db_cluster_input() :: #{
%%   <<"dbClusterId">> := string()
%% }
-type delete_db_cluster_input() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% s3_configuration() :: #{
%%   <<"bucketName">> => [string()],
%%   <<"enabled">> => [boolean()]
%% }
-type s3_configuration() :: #{binary() => any()}.

%% Example:
%% get_db_instance_input() :: #{
%%   <<"identifier">> := string()
%% }
-type get_db_instance_input() :: #{binary() => any()}.

%% Example:
%% delete_db_cluster_output() :: #{
%%   <<"dbClusterStatus">> => list(any())
%% }
-type delete_db_cluster_output() :: #{binary() => any()}.

%% Example:
%% db_cluster_summary() :: #{
%%   <<"allocatedStorage">> => integer(),
%%   <<"arn">> => string(),
%%   <<"dbInstanceType">> => list(any()),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"endpoint">> => [string()],
%%   <<"engineType">> => list(any()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"networkType">> => list(any()),
%%   <<"port">> => integer(),
%%   <<"readerEndpoint">> => [string()],
%%   <<"status">> => list(any())
%% }
-type db_cluster_summary() :: #{binary() => any()}.

%% Example:
%% create_db_parameter_group_output() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"parameters">> => list()
%% }
-type create_db_parameter_group_output() :: #{binary() => any()}.

%% Example:
%% influx_dbv3_core_parameters() :: #{
%%   <<"gen1LookbackDuration">> => duration(),
%%   <<"walReplayFailOnError">> => [boolean()],
%%   <<"dataFusionRuntimeEventInterval">> => [integer()],
%%   <<"parquetMemCachePruneInterval">> => duration(),
%%   <<"dataFusionNumThreads">> => [integer()],
%%   <<"logFormat">> => list(any()),
%%   <<"disableParquetMemCache">> => [boolean()],
%%   <<"walReplayConcurrencyLimit">> => [integer()],
%%   <<"retentionCheckInterval">> => duration(),
%%   <<"dataFusionRuntimeMaxBlockingThreads">> => [integer()],
%%   <<"dataFusionRuntimeDisableLifoSlot">> => [boolean()],
%%   <<"walMaxWriteBufferSize">> => [integer()],
%%   <<"deleteGracePeriod">> => duration(),
%%   <<"dataFusionMaxParquetFanout">> => [integer()],
%%   <<"dataFusionRuntimeMaxIoEventsPerTick">> => [integer()],
%%   <<"gen1Duration">> => duration(),
%%   <<"parquetMemCacheSize">> => list(),
%%   <<"parquetMemCacheQueryPathDuration">> => duration(),
%%   <<"forceSnapshotMemThreshold">> => list(),
%%   <<"parquetMemCachePrunePercentage">> => [float()],
%%   <<"distinctCacheEvictionInterval">> => duration(),
%%   <<"dataFusionRuntimeThreadPriority">> => [integer()],
%%   <<"logFilter">> => [string()],
%%   <<"snapshottedWalFilesToKeep">> => [integer()],
%%   <<"walSnapshotSize">> => [integer()],
%%   <<"preemptiveCacheAge">> => duration(),
%%   <<"dataFusionUseCachedParquetLoader">> => [boolean()],
%%   <<"lastCacheEvictionInterval">> => duration(),
%%   <<"execMemPoolBytes">> => list(),
%%   <<"maxHttpRequestSize">> => [float()],
%%   <<"tableIndexCacheConcurrencyLimit">> => [integer()],
%%   <<"dataFusionRuntimeType">> => list(any()),
%%   <<"queryLogSize">> => [integer()],
%%   <<"dataFusionConfig">> => [string()],
%%   <<"dataFusionRuntimeGlobalQueueInterval">> => [integer()],
%%   <<"queryFileLimit">> => [integer()],
%%   <<"dataFusionRuntimeThreadKeepAlive">> => duration(),
%%   <<"tableIndexCacheMaxEntries">> => [integer()],
%%   <<"hardDeleteDefaultDuration">> => duration()
%% }
-type influx_dbv3_core_parameters() :: #{binary() => any()}.

%% Example:
%% create_db_instance_input() :: #{
%%   <<"allocatedStorage">> := integer(),
%%   <<"bucket">> => string(),
%%   <<"dbInstanceType">> := list(any()),
%%   <<"dbParameterGroupIdentifier">> => string(),
%%   <<"dbStorageType">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"logDeliveryConfiguration">> => log_delivery_configuration(),
%%   <<"name">> := string(),
%%   <<"networkType">> => list(any()),
%%   <<"organization">> => string(),
%%   <<"password">> := string(),
%%   <<"port">> => integer(),
%%   <<"publiclyAccessible">> => [boolean()],
%%   <<"tags">> => map(),
%%   <<"username">> => string(),
%%   <<"vpcSecurityGroupIds">> := list(string()),
%%   <<"vpcSubnetIds">> := list(string())
%% }
-type create_db_instance_input() :: #{binary() => any()}.

-type create_db_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_db_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_db_parameter_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_db_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_db_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_db_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_db_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_db_parameter_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_db_clusters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_db_instances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_db_instances_for_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_db_parameter_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type tag_resource_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

-type update_db_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_db_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Timestream for InfluxDB cluster.
-spec create_db_cluster(aws_client:aws_client(), create_db_cluster_input()) ->
    {ok, create_db_cluster_output(), tuple()} |
    {error, any()} |
    {error, create_db_cluster_errors(), tuple()}.
create_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_cluster(Client, Input, []).

-spec create_db_cluster(aws_client:aws_client(), create_db_cluster_input(), proplists:proplist()) ->
    {ok, create_db_cluster_output(), tuple()} |
    {error, any()} |
    {error, create_db_cluster_errors(), tuple()}.
create_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDbCluster">>, Input, Options).

%% @doc Creates a new Timestream for InfluxDB DB instance.
-spec create_db_instance(aws_client:aws_client(), create_db_instance_input()) ->
    {ok, create_db_instance_output(), tuple()} |
    {error, any()} |
    {error, create_db_instance_errors(), tuple()}.
create_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_instance(Client, Input, []).

-spec create_db_instance(aws_client:aws_client(), create_db_instance_input(), proplists:proplist()) ->
    {ok, create_db_instance_output(), tuple()} |
    {error, any()} |
    {error, create_db_instance_errors(), tuple()}.
create_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDbInstance">>, Input, Options).

%% @doc Creates a new Timestream for InfluxDB DB parameter group to associate
%% with DB instances.
-spec create_db_parameter_group(aws_client:aws_client(), create_db_parameter_group_input()) ->
    {ok, create_db_parameter_group_output(), tuple()} |
    {error, any()} |
    {error, create_db_parameter_group_errors(), tuple()}.
create_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_parameter_group(Client, Input, []).

-spec create_db_parameter_group(aws_client:aws_client(), create_db_parameter_group_input(), proplists:proplist()) ->
    {ok, create_db_parameter_group_output(), tuple()} |
    {error, any()} |
    {error, create_db_parameter_group_errors(), tuple()}.
create_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDbParameterGroup">>, Input, Options).

%% @doc Deletes a Timestream for InfluxDB cluster.
-spec delete_db_cluster(aws_client:aws_client(), delete_db_cluster_input()) ->
    {ok, delete_db_cluster_output(), tuple()} |
    {error, any()} |
    {error, delete_db_cluster_errors(), tuple()}.
delete_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_cluster(Client, Input, []).

-spec delete_db_cluster(aws_client:aws_client(), delete_db_cluster_input(), proplists:proplist()) ->
    {ok, delete_db_cluster_output(), tuple()} |
    {error, any()} |
    {error, delete_db_cluster_errors(), tuple()}.
delete_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDbCluster">>, Input, Options).

%% @doc Deletes a Timestream for InfluxDB DB instance.
-spec delete_db_instance(aws_client:aws_client(), delete_db_instance_input()) ->
    {ok, delete_db_instance_output(), tuple()} |
    {error, any()} |
    {error, delete_db_instance_errors(), tuple()}.
delete_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_instance(Client, Input, []).

-spec delete_db_instance(aws_client:aws_client(), delete_db_instance_input(), proplists:proplist()) ->
    {ok, delete_db_instance_output(), tuple()} |
    {error, any()} |
    {error, delete_db_instance_errors(), tuple()}.
delete_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDbInstance">>, Input, Options).

%% @doc Retrieves information about a Timestream for InfluxDB cluster.
-spec get_db_cluster(aws_client:aws_client(), get_db_cluster_input()) ->
    {ok, get_db_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_db_cluster_errors(), tuple()}.
get_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_db_cluster(Client, Input, []).

-spec get_db_cluster(aws_client:aws_client(), get_db_cluster_input(), proplists:proplist()) ->
    {ok, get_db_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_db_cluster_errors(), tuple()}.
get_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDbCluster">>, Input, Options).

%% @doc Returns a Timestream for InfluxDB DB instance.
-spec get_db_instance(aws_client:aws_client(), get_db_instance_input()) ->
    {ok, get_db_instance_output(), tuple()} |
    {error, any()} |
    {error, get_db_instance_errors(), tuple()}.
get_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_db_instance(Client, Input, []).

-spec get_db_instance(aws_client:aws_client(), get_db_instance_input(), proplists:proplist()) ->
    {ok, get_db_instance_output(), tuple()} |
    {error, any()} |
    {error, get_db_instance_errors(), tuple()}.
get_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDbInstance">>, Input, Options).

%% @doc Returns a Timestream for InfluxDB DB parameter group.
-spec get_db_parameter_group(aws_client:aws_client(), get_db_parameter_group_input()) ->
    {ok, get_db_parameter_group_output(), tuple()} |
    {error, any()} |
    {error, get_db_parameter_group_errors(), tuple()}.
get_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_db_parameter_group(Client, Input, []).

-spec get_db_parameter_group(aws_client:aws_client(), get_db_parameter_group_input(), proplists:proplist()) ->
    {ok, get_db_parameter_group_output(), tuple()} |
    {error, any()} |
    {error, get_db_parameter_group_errors(), tuple()}.
get_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDbParameterGroup">>, Input, Options).

%% @doc Returns a list of Timestream for InfluxDB DB clusters.
-spec list_db_clusters(aws_client:aws_client(), list_db_clusters_input()) ->
    {ok, list_db_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_db_clusters_errors(), tuple()}.
list_db_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_db_clusters(Client, Input, []).

-spec list_db_clusters(aws_client:aws_client(), list_db_clusters_input(), proplists:proplist()) ->
    {ok, list_db_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_db_clusters_errors(), tuple()}.
list_db_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDbClusters">>, Input, Options).

%% @doc Returns a list of Timestream for InfluxDB DB instances.
-spec list_db_instances(aws_client:aws_client(), list_db_instances_input()) ->
    {ok, list_db_instances_output(), tuple()} |
    {error, any()} |
    {error, list_db_instances_errors(), tuple()}.
list_db_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_db_instances(Client, Input, []).

-spec list_db_instances(aws_client:aws_client(), list_db_instances_input(), proplists:proplist()) ->
    {ok, list_db_instances_output(), tuple()} |
    {error, any()} |
    {error, list_db_instances_errors(), tuple()}.
list_db_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDbInstances">>, Input, Options).

%% @doc Returns a list of Timestream for InfluxDB clusters.
-spec list_db_instances_for_cluster(aws_client:aws_client(), list_db_instances_for_cluster_input()) ->
    {ok, list_db_instances_for_cluster_output(), tuple()} |
    {error, any()} |
    {error, list_db_instances_for_cluster_errors(), tuple()}.
list_db_instances_for_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_db_instances_for_cluster(Client, Input, []).

-spec list_db_instances_for_cluster(aws_client:aws_client(), list_db_instances_for_cluster_input(), proplists:proplist()) ->
    {ok, list_db_instances_for_cluster_output(), tuple()} |
    {error, any()} |
    {error, list_db_instances_for_cluster_errors(), tuple()}.
list_db_instances_for_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDbInstancesForCluster">>, Input, Options).

%% @doc Returns a list of Timestream for InfluxDB DB parameter groups.
-spec list_db_parameter_groups(aws_client:aws_client(), list_db_parameter_groups_input()) ->
    {ok, list_db_parameter_groups_output(), tuple()} |
    {error, any()} |
    {error, list_db_parameter_groups_errors(), tuple()}.
list_db_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_db_parameter_groups(Client, Input, []).

-spec list_db_parameter_groups(aws_client:aws_client(), list_db_parameter_groups_input(), proplists:proplist()) ->
    {ok, list_db_parameter_groups_output(), tuple()} |
    {error, any()} |
    {error, list_db_parameter_groups_errors(), tuple()}.
list_db_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDbParameterGroups">>, Input, Options).

%% @doc A list of tags applied to the resource.
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

%% @doc Tags are composed of a Key/Value pairs.
%%
%% You can use tags to categorize and track your Timestream for InfluxDB
%% resources.
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

%% @doc Removes the tag from the specified resource.
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

%% @doc Updates a Timestream for InfluxDB cluster.
-spec update_db_cluster(aws_client:aws_client(), update_db_cluster_input()) ->
    {ok, update_db_cluster_output(), tuple()} |
    {error, any()} |
    {error, update_db_cluster_errors(), tuple()}.
update_db_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_db_cluster(Client, Input, []).

-spec update_db_cluster(aws_client:aws_client(), update_db_cluster_input(), proplists:proplist()) ->
    {ok, update_db_cluster_output(), tuple()} |
    {error, any()} |
    {error, update_db_cluster_errors(), tuple()}.
update_db_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDbCluster">>, Input, Options).

%% @doc Updates a Timestream for InfluxDB DB instance.
-spec update_db_instance(aws_client:aws_client(), update_db_instance_input()) ->
    {ok, update_db_instance_output(), tuple()} |
    {error, any()} |
    {error, update_db_instance_errors(), tuple()}.
update_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_db_instance(Client, Input, []).

-spec update_db_instance(aws_client:aws_client(), update_db_instance_input(), proplists:proplist()) ->
    {ok, update_db_instance_output(), tuple()} |
    {error, any()} |
    {error, update_db_instance_errors(), tuple()}.
update_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDbInstance">>, Input, Options).

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
    Client1 = Client#{service => <<"timestream-influxdb">>},
    Host = build_host(<<"timestream-influxdb">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AmazonTimestreamInfluxDB.", Action/binary>>}
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
