%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon DynamoDB
%%
%% Amazon DynamoDB is a fully managed NoSQL database service that provides
%% fast
%% and predictable performance with seamless scalability.
%%
%% DynamoDB lets you
%% offload the administrative burdens of operating and scaling a distributed
%% database, so
%% that you don't have to worry about hardware provisioning, setup and
%% configuration,
%% replication, software patching, or cluster scaling.
%%
%% With DynamoDB, you can create database tables that can store and retrieve
%% any amount of data, and serve any level of request traffic. You can scale
%% up or scale
%% down your tables' throughput capacity without downtime or performance
%% degradation, and
%% use the Amazon Web Services Management Console to monitor resource
%% utilization and performance
%% metrics.
%%
%% DynamoDB automatically spreads the data and traffic for your tables over
%% a sufficient number of servers to handle your throughput and storage
%% requirements, while
%% maintaining consistent and fast performance. All of your data is stored on
%% solid state
%% disks (SSDs) and automatically replicated across multiple Availability
%% Zones in an
%% Amazon Web Services Region, providing built-in high availability and data
%% durability.
-module(aws_dynamodb).

-export([batch_execute_statement/2,
         batch_execute_statement/3,
         batch_get_item/2,
         batch_get_item/3,
         batch_write_item/2,
         batch_write_item/3,
         create_backup/2,
         create_backup/3,
         create_global_table/2,
         create_global_table/3,
         create_table/2,
         create_table/3,
         delete_backup/2,
         delete_backup/3,
         delete_item/2,
         delete_item/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_table/2,
         delete_table/3,
         describe_backup/2,
         describe_backup/3,
         describe_continuous_backups/2,
         describe_continuous_backups/3,
         describe_contributor_insights/2,
         describe_contributor_insights/3,
         describe_endpoints/2,
         describe_endpoints/3,
         describe_export/2,
         describe_export/3,
         describe_global_table/2,
         describe_global_table/3,
         describe_global_table_settings/2,
         describe_global_table_settings/3,
         describe_import/2,
         describe_import/3,
         describe_kinesis_streaming_destination/2,
         describe_kinesis_streaming_destination/3,
         describe_limits/2,
         describe_limits/3,
         describe_table/2,
         describe_table/3,
         describe_table_replica_auto_scaling/2,
         describe_table_replica_auto_scaling/3,
         describe_time_to_live/2,
         describe_time_to_live/3,
         disable_kinesis_streaming_destination/2,
         disable_kinesis_streaming_destination/3,
         enable_kinesis_streaming_destination/2,
         enable_kinesis_streaming_destination/3,
         execute_statement/2,
         execute_statement/3,
         execute_transaction/2,
         execute_transaction/3,
         export_table_to_point_in_time/2,
         export_table_to_point_in_time/3,
         get_item/2,
         get_item/3,
         get_resource_policy/2,
         get_resource_policy/3,
         import_table/2,
         import_table/3,
         list_backups/2,
         list_backups/3,
         list_contributor_insights/2,
         list_contributor_insights/3,
         list_exports/2,
         list_exports/3,
         list_global_tables/2,
         list_global_tables/3,
         list_imports/2,
         list_imports/3,
         list_tables/2,
         list_tables/3,
         list_tags_of_resource/2,
         list_tags_of_resource/3,
         put_item/2,
         put_item/3,
         put_resource_policy/2,
         put_resource_policy/3,
         query/2,
         query/3,
         restore_table_from_backup/2,
         restore_table_from_backup/3,
         restore_table_to_point_in_time/2,
         restore_table_to_point_in_time/3,
         scan/2,
         scan/3,
         tag_resource/2,
         tag_resource/3,
         transact_get_items/2,
         transact_get_items/3,
         transact_write_items/2,
         transact_write_items/3,
         untag_resource/2,
         untag_resource/3,
         update_continuous_backups/2,
         update_continuous_backups/3,
         update_contributor_insights/2,
         update_contributor_insights/3,
         update_global_table/2,
         update_global_table/3,
         update_global_table_settings/2,
         update_global_table_settings/3,
         update_item/2,
         update_item/3,
         update_kinesis_streaming_destination/2,
         update_kinesis_streaming_destination/3,
         update_table/2,
         update_table/3,
         update_table_replica_auto_scaling/2,
         update_table_replica_auto_scaling/3,
         update_time_to_live/2,
         update_time_to_live/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% table_description() :: #{
%%   <<"ArchivalSummary">> => archival_summary(),
%%   <<"AttributeDefinitions">> => list(attribute_definition()()),
%%   <<"BillingModeSummary">> => billing_mode_summary(),
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"DeletionProtectionEnabled">> => boolean(),
%%   <<"GlobalSecondaryIndexes">> => list(global_secondary_index_description()()),
%%   <<"GlobalTableVersion">> => string(),
%%   <<"ItemCount">> => float(),
%%   <<"KeySchema">> => list(key_schema_element()()),
%%   <<"LatestStreamArn">> => string(),
%%   <<"LatestStreamLabel">> => string(),
%%   <<"LocalSecondaryIndexes">> => list(local_secondary_index_description()()),
%%   <<"MultiRegionConsistency">> => list(any()),
%%   <<"OnDemandThroughput">> => on_demand_throughput(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput_description(),
%%   <<"Replicas">> => list(replica_description()()),
%%   <<"RestoreSummary">> => restore_summary(),
%%   <<"SSEDescription">> => sse_description(),
%%   <<"StreamSpecification">> => stream_specification(),
%%   <<"TableArn">> => string(),
%%   <<"TableClassSummary">> => table_class_summary(),
%%   <<"TableId">> => string(),
%%   <<"TableName">> => string(),
%%   <<"TableSizeBytes">> => float(),
%%   <<"TableStatus">> => list(any()),
%%   <<"WarmThroughput">> => table_warm_throughput_description()
%% }
-type table_description() :: #{binary() => any()}.

%% Example:
%% transact_write_items_output() :: #{
%%   <<"ConsumedCapacity">> => list(consumed_capacity()()),
%%   <<"ItemCollectionMetrics">> => map()
%% }
-type transact_write_items_output() :: #{binary() => any()}.

%% Example:
%% replica_settings_description() :: #{
%%   <<"RegionName">> => string(),
%%   <<"ReplicaBillingModeSummary">> => billing_mode_summary(),
%%   <<"ReplicaGlobalSecondaryIndexSettings">> => list(replica_global_secondary_index_settings_description()()),
%%   <<"ReplicaProvisionedReadCapacityAutoScalingSettings">> => auto_scaling_settings_description(),
%%   <<"ReplicaProvisionedReadCapacityUnits">> => float(),
%%   <<"ReplicaProvisionedWriteCapacityAutoScalingSettings">> => auto_scaling_settings_description(),
%%   <<"ReplicaProvisionedWriteCapacityUnits">> => float(),
%%   <<"ReplicaStatus">> => list(any()),
%%   <<"ReplicaTableClassSummary">> => table_class_summary()
%% }
-type replica_settings_description() :: #{binary() => any()}.

%% Example:
%% sse_description() :: #{
%%   <<"InaccessibleEncryptionDateTime">> => non_neg_integer(),
%%   <<"KMSMasterKeyArn">> => string(),
%%   <<"SSEType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type sse_description() :: #{binary() => any()}.

%% Example:
%% global_table_global_secondary_index_settings_update() :: #{
%%   <<"IndexName">> => string(),
%%   <<"ProvisionedWriteCapacityAutoScalingSettingsUpdate">> => auto_scaling_settings_update(),
%%   <<"ProvisionedWriteCapacityUnits">> => float()
%% }
-type global_table_global_secondary_index_settings_update() :: #{binary() => any()}.

%% Example:
%% transact_write_items_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"ReturnItemCollectionMetrics">> => list(any()),
%%   <<"TransactItems">> := list(transact_write_item()())
%% }
-type transact_write_items_input() :: #{binary() => any()}.

%% Example:
%% local_secondary_index() :: #{
%%   <<"IndexName">> => string(),
%%   <<"KeySchema">> => list(key_schema_element()()),
%%   <<"Projection">> => projection()
%% }
-type local_secondary_index() :: #{binary() => any()}.

%% Example:
%% create_table_output() :: #{
%%   <<"TableDescription">> => table_description()
%% }
-type create_table_output() :: #{binary() => any()}.

%% Example:
%% local_secondary_index_info() :: #{
%%   <<"IndexName">> => string(),
%%   <<"KeySchema">> => list(key_schema_element()()),
%%   <<"Projection">> => projection()
%% }
-type local_secondary_index_info() :: #{binary() => any()}.

%% Example:
%% transact_write_item() :: #{
%%   <<"ConditionCheck">> => condition_check(),
%%   <<"Delete">> => delete(),
%%   <<"Put">> => put(),
%%   <<"Update">> => update()
%% }
-type transact_write_item() :: #{binary() => any()}.

%% Example:
%% describe_limits_output() :: #{
%%   <<"AccountMaxReadCapacityUnits">> => float(),
%%   <<"AccountMaxWriteCapacityUnits">> => float(),
%%   <<"TableMaxReadCapacityUnits">> => float(),
%%   <<"TableMaxWriteCapacityUnits">> => float()
%% }
-type describe_limits_output() :: #{binary() => any()}.

%% Example:
%% time_to_live_specification() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"Enabled">> => boolean()
%% }
-type time_to_live_specification() :: #{binary() => any()}.

%% Example:
%% expected_attribute_value() :: #{
%%   <<"AttributeValueList">> => list(list()()),
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"Exists">> => boolean(),
%%   <<"Value">> => list()
%% }
-type expected_attribute_value() :: #{binary() => any()}.

%% Example:
%% keys_and_attributes() :: #{
%%   <<"AttributesToGet">> => list(string()()),
%%   <<"ConsistentRead">> => boolean(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"Keys">> => list(map()()),
%%   <<"ProjectionExpression">> => string()
%% }
-type keys_and_attributes() :: #{binary() => any()}.

%% Example:
%% point_in_time_recovery_description() :: #{
%%   <<"EarliestRestorableDateTime">> => non_neg_integer(),
%%   <<"LatestRestorableDateTime">> => non_neg_integer(),
%%   <<"PointInTimeRecoveryStatus">> => list(any()),
%%   <<"RecoveryPeriodInDays">> => integer()
%% }
-type point_in_time_recovery_description() :: #{binary() => any()}.

%% Example:
%% batch_execute_statement_output() :: #{
%%   <<"ConsumedCapacity">> => list(consumed_capacity()()),
%%   <<"Responses">> => list(batch_statement_response()())
%% }
-type batch_execute_statement_output() :: #{binary() => any()}.

%% Example:
%% describe_export_output() :: #{
%%   <<"ExportDescription">> => export_description()
%% }
-type describe_export_output() :: #{binary() => any()}.

%% Example:
%% item_collection_size_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type item_collection_size_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% attribute_definition() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeType">> => list(any())
%% }
-type attribute_definition() :: #{binary() => any()}.

%% Example:
%% update_time_to_live_output() :: #{
%%   <<"TimeToLiveSpecification">> => time_to_live_specification()
%% }
-type update_time_to_live_output() :: #{binary() => any()}.

%% Example:
%% create_replication_group_member_action() :: #{
%%   <<"GlobalSecondaryIndexes">> => list(replica_global_secondary_index()()),
%%   <<"KMSMasterKeyId">> => string(),
%%   <<"OnDemandThroughputOverride">> => on_demand_throughput_override(),
%%   <<"ProvisionedThroughputOverride">> => provisioned_throughput_override(),
%%   <<"RegionName">> => string(),
%%   <<"TableClassOverride">> => list(any())
%% }
-type create_replication_group_member_action() :: #{binary() => any()}.

%% Example:
%% table_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type table_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% list_imports_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"TableArn">> => string()
%% }
-type list_imports_input() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_output() :: #{
%%   <<"Policy">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type get_resource_policy_output() :: #{binary() => any()}.

%% Example:
%% on_demand_throughput() :: #{
%%   <<"MaxReadRequestUnits">> => float(),
%%   <<"MaxWriteRequestUnits">> => float()
%% }
-type on_demand_throughput() :: #{binary() => any()}.

%% Example:
%% point_in_time_recovery_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type point_in_time_recovery_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% get_item_output() :: #{
%%   <<"ConsumedCapacity">> => consumed_capacity(),
%%   <<"Item">> => map()
%% }
-type get_item_output() :: #{binary() => any()}.

%% Example:
%% create_global_table_input() :: #{
%%   <<"GlobalTableName">> := string(),
%%   <<"ReplicationGroup">> := list(replica()())
%% }
-type create_global_table_input() :: #{binary() => any()}.

%% Example:
%% batch_get_item_input() :: #{
%%   <<"RequestItems">> := map(),
%%   <<"ReturnConsumedCapacity">> => list(any())
%% }
-type batch_get_item_input() :: #{binary() => any()}.

%% Example:
%% kinesis_data_stream_destination() :: #{
%%   <<"ApproximateCreationDateTimePrecision">> => list(any()),
%%   <<"DestinationStatus">> => list(any()),
%%   <<"DestinationStatusDescription">> => string(),
%%   <<"StreamArn">> => string()
%% }
-type kinesis_data_stream_destination() :: #{binary() => any()}.

%% Example:
%% execute_transaction_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"TransactStatements">> := list(parameterized_statement()())
%% }
-type execute_transaction_input() :: #{binary() => any()}.

%% Example:
%% list_global_tables_output() :: #{
%%   <<"GlobalTables">> => list(global_table()()),
%%   <<"LastEvaluatedGlobalTableName">> => string()
%% }
-type list_global_tables_output() :: #{binary() => any()}.

%% Example:
%% delete_replica_action() :: #{
%%   <<"RegionName">> => string()
%% }
-type delete_replica_action() :: #{binary() => any()}.

%% Example:
%% delete() :: #{
%%   <<"ConditionExpression">> => string(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"ExpressionAttributeValues">> => map(),
%%   <<"Key">> => map(),
%%   <<"ReturnValuesOnConditionCheckFailure">> => list(any()),
%%   <<"TableName">> => string()
%% }
-type delete() :: #{binary() => any()}.

%% Example:
%% update_continuous_backups_output() :: #{
%%   <<"ContinuousBackupsDescription">> => continuous_backups_description()
%% }
-type update_continuous_backups_output() :: #{binary() => any()}.

%% Example:
%% billing_mode_summary() :: #{
%%   <<"BillingMode">> => list(any()),
%%   <<"LastUpdateToPayPerRequestDateTime">> => non_neg_integer()
%% }
-type billing_mode_summary() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% list_backups_input() :: #{
%%   <<"BackupType">> => list(any()),
%%   <<"ExclusiveStartBackupArn">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"TableName">> => string(),
%%   <<"TimeRangeLowerBound">> => non_neg_integer(),
%%   <<"TimeRangeUpperBound">> => non_neg_integer()
%% }
-type list_backups_input() :: #{binary() => any()}.

%% Example:
%% replica_global_secondary_index_auto_scaling_update() :: #{
%%   <<"IndexName">> => string(),
%%   <<"ProvisionedReadCapacityAutoScalingUpdate">> => auto_scaling_settings_update()
%% }
-type replica_global_secondary_index_auto_scaling_update() :: #{binary() => any()}.

%% Example:
%% replica_auto_scaling_description() :: #{
%%   <<"GlobalSecondaryIndexes">> => list(replica_global_secondary_index_auto_scaling_description()()),
%%   <<"RegionName">> => string(),
%%   <<"ReplicaProvisionedReadCapacityAutoScalingSettings">> => auto_scaling_settings_description(),
%%   <<"ReplicaProvisionedWriteCapacityAutoScalingSettings">> => auto_scaling_settings_description(),
%%   <<"ReplicaStatus">> => list(any())
%% }
-type replica_auto_scaling_description() :: #{binary() => any()}.

%% Example:
%% replica_settings_update() :: #{
%%   <<"RegionName">> => string(),
%%   <<"ReplicaGlobalSecondaryIndexSettingsUpdate">> => list(replica_global_secondary_index_settings_update()()),
%%   <<"ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate">> => auto_scaling_settings_update(),
%%   <<"ReplicaProvisionedReadCapacityUnits">> => float(),
%%   <<"ReplicaTableClass">> => list(any())
%% }
-type replica_settings_update() :: #{binary() => any()}.

%% Example:
%% global_table() :: #{
%%   <<"GlobalTableName">> => string(),
%%   <<"ReplicationGroup">> => list(replica()())
%% }
-type global_table() :: #{binary() => any()}.

%% Example:
%% batch_write_item_output() :: #{
%%   <<"ConsumedCapacity">> => list(consumed_capacity()()),
%%   <<"ItemCollectionMetrics">> => map(),
%%   <<"UnprocessedItems">> => map()
%% }
-type batch_write_item_output() :: #{binary() => any()}.

%% Example:
%% create_table_input() :: #{
%%   <<"AttributeDefinitions">> := list(attribute_definition()()),
%%   <<"BillingMode">> => list(any()),
%%   <<"DeletionProtectionEnabled">> => boolean(),
%%   <<"GlobalSecondaryIndexes">> => list(global_secondary_index()()),
%%   <<"KeySchema">> := list(key_schema_element()()),
%%   <<"LocalSecondaryIndexes">> => list(local_secondary_index()()),
%%   <<"OnDemandThroughput">> => on_demand_throughput(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput(),
%%   <<"ResourcePolicy">> => string(),
%%   <<"SSESpecification">> => sse_specification(),
%%   <<"StreamSpecification">> => stream_specification(),
%%   <<"TableClass">> => list(any()),
%%   <<"TableName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"WarmThroughput">> => warm_throughput()
%% }
-type create_table_input() :: #{binary() => any()}.

%% Example:
%% write_request() :: #{
%%   <<"DeleteRequest">> => delete_request(),
%%   <<"PutRequest">> => put_request()
%% }
-type write_request() :: #{binary() => any()}.

%% Example:
%% restore_summary() :: #{
%%   <<"RestoreDateTime">> => non_neg_integer(),
%%   <<"RestoreInProgress">> => boolean(),
%%   <<"SourceBackupArn">> => string(),
%%   <<"SourceTableArn">> => string()
%% }
-type restore_summary() :: #{binary() => any()}.

%% Example:
%% enable_kinesis_streaming_configuration() :: #{
%%   <<"ApproximateCreationDateTimePrecision">> => list(any())
%% }
-type enable_kinesis_streaming_configuration() :: #{binary() => any()}.

%% Example:
%% invalid_endpoint_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_endpoint_exception() :: #{binary() => any()}.

%% Example:
%% describe_global_table_output() :: #{
%%   <<"GlobalTableDescription">> => global_table_description()
%% }
-type describe_global_table_output() :: #{binary() => any()}.

%% Example:
%% table_creation_parameters() :: #{
%%   <<"AttributeDefinitions">> => list(attribute_definition()()),
%%   <<"BillingMode">> => list(any()),
%%   <<"GlobalSecondaryIndexes">> => list(global_secondary_index()()),
%%   <<"KeySchema">> => list(key_schema_element()()),
%%   <<"OnDemandThroughput">> => on_demand_throughput(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput(),
%%   <<"SSESpecification">> => sse_specification(),
%%   <<"TableName">> => string()
%% }
-type table_creation_parameters() :: #{binary() => any()}.

%% Example:
%% replicated_write_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type replicated_write_conflict_exception() :: #{binary() => any()}.

%% Example:
%% execute_statement_output() :: #{
%%   <<"ConsumedCapacity">> => consumed_capacity(),
%%   <<"Items">> => list(map()()),
%%   <<"LastEvaluatedKey">> => map(),
%%   <<"NextToken">> => string()
%% }
-type execute_statement_output() :: #{binary() => any()}.

%% Example:
%% describe_endpoints_response() :: #{
%%   <<"Endpoints">> => list(endpoint()())
%% }
-type describe_endpoints_response() :: #{binary() => any()}.

%% Example:
%% backup_summary() :: #{
%%   <<"BackupArn">> => string(),
%%   <<"BackupCreationDateTime">> => non_neg_integer(),
%%   <<"BackupExpiryDateTime">> => non_neg_integer(),
%%   <<"BackupName">> => string(),
%%   <<"BackupSizeBytes">> => float(),
%%   <<"BackupStatus">> => list(any()),
%%   <<"BackupType">> => list(any()),
%%   <<"TableArn">> => string(),
%%   <<"TableId">> => string(),
%%   <<"TableName">> => string()
%% }
-type backup_summary() :: #{binary() => any()}.

%% Example:
%% describe_kinesis_streaming_destination_input() :: #{
%%   <<"TableName">> := string()
%% }
-type describe_kinesis_streaming_destination_input() :: #{binary() => any()}.

%% Example:
%% auto_scaling_settings_description() :: #{
%%   <<"AutoScalingDisabled">> => boolean(),
%%   <<"AutoScalingRoleArn">> => string(),
%%   <<"MaximumUnits">> => float(),
%%   <<"MinimumUnits">> => float(),
%%   <<"ScalingPolicies">> => list(auto_scaling_policy_description()())
%% }
-type auto_scaling_settings_description() :: #{binary() => any()}.

%% Example:
%% update_contributor_insights_output() :: #{
%%   <<"ContributorInsightsStatus">> => list(any()),
%%   <<"IndexName">> => string(),
%%   <<"TableName">> => string()
%% }
-type update_contributor_insights_output() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_output() :: #{
%%   <<"RevisionId">> => string()
%% }
-type put_resource_policy_output() :: #{binary() => any()}.

%% Example:
%% update_global_table_settings_input() :: #{
%%   <<"GlobalTableBillingMode">> => list(any()),
%%   <<"GlobalTableGlobalSecondaryIndexSettingsUpdate">> => list(global_table_global_secondary_index_settings_update()()),
%%   <<"GlobalTableName">> := string(),
%%   <<"GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate">> => auto_scaling_settings_update(),
%%   <<"GlobalTableProvisionedWriteCapacityUnits">> => float(),
%%   <<"ReplicaSettingsUpdate">> => list(replica_settings_update()())
%% }
-type update_global_table_settings_input() :: #{binary() => any()}.

%% Example:
%% scan_input() :: #{
%%   <<"AttributesToGet">> => list(string()()),
%%   <<"ConditionalOperator">> => list(any()),
%%   <<"ConsistentRead">> => boolean(),
%%   <<"ExclusiveStartKey">> => map(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"ExpressionAttributeValues">> => map(),
%%   <<"FilterExpression">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"ProjectionExpression">> => string(),
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"ScanFilter">> => map(),
%%   <<"Segment">> => integer(),
%%   <<"Select">> => list(any()),
%%   <<"TableName">> := string(),
%%   <<"TotalSegments">> => integer()
%% }
-type scan_input() :: #{binary() => any()}.

%% Example:
%% import_summary() :: #{
%%   <<"CloudWatchLogGroupArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ImportArn">> => string(),
%%   <<"ImportStatus">> => list(any()),
%%   <<"InputFormat">> => list(any()),
%%   <<"S3BucketSource">> => s3_bucket_source(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TableArn">> => string()
%% }
-type import_summary() :: #{binary() => any()}.

%% Example:
%% table_class_summary() :: #{
%%   <<"LastUpdateDateTime">> => non_neg_integer(),
%%   <<"TableClass">> => list(any())
%% }
-type table_class_summary() :: #{binary() => any()}.

%% Example:
%% describe_table_output() :: #{
%%   <<"Table">> => table_description()
%% }
-type describe_table_output() :: #{binary() => any()}.

%% Example:
%% key_schema_element() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"KeyType">> => list(any())
%% }
-type key_schema_element() :: #{binary() => any()}.

%% Example:
%% transaction_canceled_exception() :: #{
%%   <<"CancellationReasons">> => list(cancellation_reason()()),
%%   <<"Message">> => string()
%% }
-type transaction_canceled_exception() :: #{binary() => any()}.

%% Example:
%% on_demand_throughput_override() :: #{
%%   <<"MaxReadRequestUnits">> => float()
%% }
-type on_demand_throughput_override() :: #{binary() => any()}.

%% Example:
%% update_table_replica_auto_scaling_output() :: #{
%%   <<"TableAutoScalingDescription">> => table_auto_scaling_description()
%% }
-type update_table_replica_auto_scaling_output() :: #{binary() => any()}.

%% Example:
%% describe_import_output() :: #{
%%   <<"ImportTableDescription">> => import_table_description()
%% }
-type describe_import_output() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_input() :: #{
%%   <<"ExpectedRevisionId">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type delete_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% create_replica_action() :: #{
%%   <<"RegionName">> => string()
%% }
-type create_replica_action() :: #{binary() => any()}.

%% Example:
%% parameterized_statement() :: #{
%%   <<"Parameters">> => list(list()()),
%%   <<"ReturnValuesOnConditionCheckFailure">> => list(any()),
%%   <<"Statement">> => string()
%% }
-type parameterized_statement() :: #{binary() => any()}.

%% Example:
%% list_tags_of_resource_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_of_resource_output() :: #{binary() => any()}.

%% Example:
%% query_output() :: #{
%%   <<"ConsumedCapacity">> => consumed_capacity(),
%%   <<"Count">> => integer(),
%%   <<"Items">> => list(map()()),
%%   <<"LastEvaluatedKey">> => map(),
%%   <<"ScannedCount">> => integer()
%% }
-type query_output() :: #{binary() => any()}.

%% Example:
%% capacity() :: #{
%%   <<"CapacityUnits">> => float(),
%%   <<"ReadCapacityUnits">> => float(),
%%   <<"WriteCapacityUnits">> => float()
%% }
-type capacity() :: #{binary() => any()}.

%% Example:
%% batch_write_item_input() :: #{
%%   <<"RequestItems">> := map(),
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"ReturnItemCollectionMetrics">> => list(any())
%% }
-type batch_write_item_input() :: #{binary() => any()}.

%% Example:
%% update_kinesis_streaming_destination_output() :: #{
%%   <<"DestinationStatus">> => list(any()),
%%   <<"StreamArn">> => string(),
%%   <<"TableName">> => string(),
%%   <<"UpdateKinesisStreamingConfiguration">> => update_kinesis_streaming_configuration()
%% }
-type update_kinesis_streaming_destination_output() :: #{binary() => any()}.

%% Example:
%% update_global_table_input() :: #{
%%   <<"GlobalTableName">> := string(),
%%   <<"ReplicaUpdates">> := list(replica_update()())
%% }
-type update_global_table_input() :: #{binary() => any()}.

%% Example:
%% execute_statement_input() :: #{
%%   <<"ConsistentRead">> => boolean(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Parameters">> => list(list()()),
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"ReturnValuesOnConditionCheckFailure">> => list(any()),
%%   <<"Statement">> := string()
%% }
-type execute_statement_input() :: #{binary() => any()}.

%% Example:
%% table_warm_throughput_description() :: #{
%%   <<"ReadUnitsPerSecond">> => float(),
%%   <<"Status">> => list(any()),
%%   <<"WriteUnitsPerSecond">> => float()
%% }
-type table_warm_throughput_description() :: #{binary() => any()}.

%% Example:
%% list_tables_input() :: #{
%%   <<"ExclusiveStartTableName">> => string(),
%%   <<"Limit">> => integer()
%% }
-type list_tables_input() :: #{binary() => any()}.

%% Example:
%% describe_global_table_settings_input() :: #{
%%   <<"GlobalTableName">> := string()
%% }
-type describe_global_table_settings_input() :: #{binary() => any()}.

%% Example:
%% batch_execute_statement_input() :: #{
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"Statements">> := list(batch_statement_request()())
%% }
-type batch_execute_statement_input() :: #{binary() => any()}.

%% Example:
%% update_table_replica_auto_scaling_input() :: #{
%%   <<"GlobalSecondaryIndexUpdates">> => list(global_secondary_index_auto_scaling_update()()),
%%   <<"ProvisionedWriteCapacityAutoScalingUpdate">> => auto_scaling_settings_update(),
%%   <<"ReplicaUpdates">> => list(replica_auto_scaling_update()()),
%%   <<"TableName">> := string()
%% }
-type update_table_replica_auto_scaling_input() :: #{binary() => any()}.

%% Example:
%% kinesis_streaming_destination_input() :: #{
%%   <<"EnableKinesisStreamingConfiguration">> => enable_kinesis_streaming_configuration(),
%%   <<"StreamArn">> := string(),
%%   <<"TableName">> := string()
%% }
-type kinesis_streaming_destination_input() :: #{binary() => any()}.

%% Example:
%% policy_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type policy_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_import_input() :: #{
%%   <<"ImportArn">> := string()
%% }
-type describe_import_input() :: #{binary() => any()}.

%% Example:
%% replica_auto_scaling_update() :: #{
%%   <<"RegionName">> => string(),
%%   <<"ReplicaGlobalSecondaryIndexUpdates">> => list(replica_global_secondary_index_auto_scaling_update()()),
%%   <<"ReplicaProvisionedReadCapacityAutoScalingUpdate">> => auto_scaling_settings_update()
%% }
-type replica_auto_scaling_update() :: #{binary() => any()}.

%% Example:
%% replica_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type replica_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% restore_table_to_point_in_time_output() :: #{
%%   <<"TableDescription">> => table_description()
%% }
-type restore_table_to_point_in_time_output() :: #{binary() => any()}.

%% Example:
%% csv_options() :: #{
%%   <<"Delimiter">> => string(),
%%   <<"HeaderList">> => list(string()())
%% }
-type csv_options() :: #{binary() => any()}.

%% Example:
%% projection() :: #{
%%   <<"NonKeyAttributes">> => list(string()()),
%%   <<"ProjectionType">> => list(any())
%% }
-type projection() :: #{binary() => any()}.

%% Example:
%% replica_global_secondary_index() :: #{
%%   <<"IndexName">> => string(),
%%   <<"OnDemandThroughputOverride">> => on_demand_throughput_override(),
%%   <<"ProvisionedThroughputOverride">> => provisioned_throughput_override()
%% }
-type replica_global_secondary_index() :: #{binary() => any()}.

%% Example:
%% provisioned_throughput_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type provisioned_throughput_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_item_output() :: #{
%%   <<"ConsumedCapacity">> => list(consumed_capacity()()),
%%   <<"Responses">> => map(),
%%   <<"UnprocessedKeys">> => map()
%% }
-type batch_get_item_output() :: #{binary() => any()}.

%% Example:
%% describe_backup_input() :: #{
%%   <<"BackupArn">> := string()
%% }
-type describe_backup_input() :: #{binary() => any()}.

%% Example:
%% source_table_details() :: #{
%%   <<"BillingMode">> => list(any()),
%%   <<"ItemCount">> => float(),
%%   <<"KeySchema">> => list(key_schema_element()()),
%%   <<"OnDemandThroughput">> => on_demand_throughput(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput(),
%%   <<"TableArn">> => string(),
%%   <<"TableCreationDateTime">> => non_neg_integer(),
%%   <<"TableId">> => string(),
%%   <<"TableName">> => string(),
%%   <<"TableSizeBytes">> => float()
%% }
-type source_table_details() :: #{binary() => any()}.

%% Example:
%% global_secondary_index_auto_scaling_update() :: #{
%%   <<"IndexName">> => string(),
%%   <<"ProvisionedWriteCapacityAutoScalingUpdate">> => auto_scaling_settings_update()
%% }
-type global_secondary_index_auto_scaling_update() :: #{binary() => any()}.

%% Example:
%% update() :: #{
%%   <<"ConditionExpression">> => string(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"ExpressionAttributeValues">> => map(),
%%   <<"Key">> => map(),
%%   <<"ReturnValuesOnConditionCheckFailure">> => list(any()),
%%   <<"TableName">> => string(),
%%   <<"UpdateExpression">> => string()
%% }
-type update() :: #{binary() => any()}.

%% Example:
%% describe_contributor_insights_output() :: #{
%%   <<"ContributorInsightsRuleList">> => list(string()()),
%%   <<"ContributorInsightsStatus">> => list(any()),
%%   <<"FailureException">> => failure_exception(),
%%   <<"IndexName">> => string(),
%%   <<"LastUpdateDateTime">> => non_neg_integer(),
%%   <<"TableName">> => string()
%% }
-type describe_contributor_insights_output() :: #{binary() => any()}.

%% Example:
%% describe_endpoints_request() :: #{

%% }
-type describe_endpoints_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_table_input() :: #{
%%   <<"TableName">> := string()
%% }
-type describe_table_input() :: #{binary() => any()}.

%% Example:
%% delete_backup_input() :: #{
%%   <<"BackupArn">> := string()
%% }
-type delete_backup_input() :: #{binary() => any()}.

%% Example:
%% consumed_capacity() :: #{
%%   <<"CapacityUnits">> => float(),
%%   <<"GlobalSecondaryIndexes">> => map(),
%%   <<"LocalSecondaryIndexes">> => map(),
%%   <<"ReadCapacityUnits">> => float(),
%%   <<"Table">> => capacity(),
%%   <<"TableName">> => string(),
%%   <<"WriteCapacityUnits">> => float()
%% }
-type consumed_capacity() :: #{binary() => any()}.

%% Example:
%% backup_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type backup_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% delete_table_input() :: #{
%%   <<"TableName">> := string()
%% }
-type delete_table_input() :: #{binary() => any()}.

%% Example:
%% describe_backup_output() :: #{
%%   <<"BackupDescription">> => backup_description()
%% }
-type describe_backup_output() :: #{binary() => any()}.

%% Example:
%% create_global_secondary_index_action() :: #{
%%   <<"IndexName">> => string(),
%%   <<"KeySchema">> => list(key_schema_element()()),
%%   <<"OnDemandThroughput">> => on_demand_throughput(),
%%   <<"Projection">> => projection(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput(),
%%   <<"WarmThroughput">> => warm_throughput()
%% }
-type create_global_secondary_index_action() :: #{binary() => any()}.

%% Example:
%% local_secondary_index_description() :: #{
%%   <<"IndexArn">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"IndexSizeBytes">> => float(),
%%   <<"ItemCount">> => float(),
%%   <<"KeySchema">> => list(key_schema_element()()),
%%   <<"Projection">> => projection()
%% }
-type local_secondary_index_description() :: #{binary() => any()}.

%% Example:
%% delete_item_output() :: #{
%%   <<"Attributes">> => map(),
%%   <<"ConsumedCapacity">> => consumed_capacity(),
%%   <<"ItemCollectionMetrics">> => item_collection_metrics()
%% }
-type delete_item_output() :: #{binary() => any()}.

%% Example:
%% replica_global_secondary_index_settings_description() :: #{
%%   <<"IndexName">> => string(),
%%   <<"IndexStatus">> => list(any()),
%%   <<"ProvisionedReadCapacityAutoScalingSettings">> => auto_scaling_settings_description(),
%%   <<"ProvisionedReadCapacityUnits">> => float(),
%%   <<"ProvisionedWriteCapacityAutoScalingSettings">> => auto_scaling_settings_description(),
%%   <<"ProvisionedWriteCapacityUnits">> => float()
%% }
-type replica_global_secondary_index_settings_description() :: #{binary() => any()}.

%% Example:
%% continuous_backups_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type continuous_backups_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_input() :: #{
%%   <<"ConfirmRemoveSelfResourceAccess">> => boolean(),
%%   <<"ExpectedRevisionId">> => string(),
%%   <<"Policy">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% replica_update() :: #{
%%   <<"Create">> => create_replica_action(),
%%   <<"Delete">> => delete_replica_action()
%% }
-type replica_update() :: #{binary() => any()}.

%% Example:
%% global_table_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type global_table_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% batch_statement_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Item">> => map(),
%%   <<"Message">> => string()
%% }
-type batch_statement_error() :: #{binary() => any()}.

%% Example:
%% auto_scaling_policy_description() :: #{
%%   <<"PolicyName">> => string(),
%%   <<"TargetTrackingScalingPolicyConfiguration">> => auto_scaling_target_tracking_scaling_policy_configuration_description()
%% }
-type auto_scaling_policy_description() :: #{binary() => any()}.

%% Example:
%% delete_request() :: #{
%%   <<"Key">> => map()
%% }
-type delete_request() :: #{binary() => any()}.

%% Example:
%% describe_continuous_backups_input() :: #{
%%   <<"TableName">> := string()
%% }
-type describe_continuous_backups_input() :: #{binary() => any()}.

%% Example:
%% batch_statement_response() :: #{
%%   <<"Error">> => batch_statement_error(),
%%   <<"Item">> => map(),
%%   <<"TableName">> => string()
%% }
-type batch_statement_response() :: #{binary() => any()}.

%% Example:
%% idempotent_parameter_mismatch_exception() :: #{
%%   <<"Message">> => string()
%% }
-type idempotent_parameter_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% auto_scaling_policy_update() :: #{
%%   <<"PolicyName">> => string(),
%%   <<"TargetTrackingScalingPolicyConfiguration">> => auto_scaling_target_tracking_scaling_policy_configuration_update()
%% }
-type auto_scaling_policy_update() :: #{binary() => any()}.

%% Example:
%% export_summary() :: #{
%%   <<"ExportArn">> => string(),
%%   <<"ExportStatus">> => list(any()),
%%   <<"ExportType">> => list(any())
%% }
-type export_summary() :: #{binary() => any()}.

%% Example:
%% warm_throughput() :: #{
%%   <<"ReadUnitsPerSecond">> => float(),
%%   <<"WriteUnitsPerSecond">> => float()
%% }
-type warm_throughput() :: #{binary() => any()}.

%% Example:
%% global_secondary_index_warm_throughput_description() :: #{
%%   <<"ReadUnitsPerSecond">> => float(),
%%   <<"Status">> => list(any()),
%%   <<"WriteUnitsPerSecond">> => float()
%% }
-type global_secondary_index_warm_throughput_description() :: #{binary() => any()}.

%% Example:
%% item_collection_metrics() :: #{
%%   <<"ItemCollectionKey">> => map(),
%%   <<"SizeEstimateRangeGB">> => list(float()())
%% }
-type item_collection_metrics() :: #{binary() => any()}.

%% Example:
%% describe_global_table_settings_output() :: #{
%%   <<"GlobalTableName">> => string(),
%%   <<"ReplicaSettings">> => list(replica_settings_description()())
%% }
-type describe_global_table_settings_output() :: #{binary() => any()}.

%% Example:
%% update_replication_group_member_action() :: #{
%%   <<"GlobalSecondaryIndexes">> => list(replica_global_secondary_index()()),
%%   <<"KMSMasterKeyId">> => string(),
%%   <<"OnDemandThroughputOverride">> => on_demand_throughput_override(),
%%   <<"ProvisionedThroughputOverride">> => provisioned_throughput_override(),
%%   <<"RegionName">> => string(),
%%   <<"TableClassOverride">> => list(any())
%% }
-type update_replication_group_member_action() :: #{binary() => any()}.

%% Example:
%% stream_specification() :: #{
%%   <<"StreamEnabled">> => boolean(),
%%   <<"StreamViewType">> => list(any())
%% }
-type stream_specification() :: #{binary() => any()}.

%% Example:
%% describe_export_input() :: #{
%%   <<"ExportArn">> := string()
%% }
-type describe_export_input() :: #{binary() => any()}.

%% Example:
%% provisioned_throughput_description() :: #{
%%   <<"LastDecreaseDateTime">> => non_neg_integer(),
%%   <<"LastIncreaseDateTime">> => non_neg_integer(),
%%   <<"NumberOfDecreasesToday">> => float(),
%%   <<"ReadCapacityUnits">> => float(),
%%   <<"WriteCapacityUnits">> => float()
%% }
-type provisioned_throughput_description() :: #{binary() => any()}.

%% Example:
%% create_backup_input() :: #{
%%   <<"BackupName">> := string(),
%%   <<"TableName">> := string()
%% }
-type create_backup_input() :: #{binary() => any()}.

%% Example:
%% duplicate_item_exception() :: #{
%%   <<"message">> => string()
%% }
-type duplicate_item_exception() :: #{binary() => any()}.

%% Example:
%% transact_get_items_output() :: #{
%%   <<"ConsumedCapacity">> => list(consumed_capacity()()),
%%   <<"Responses">> => list(item_response()())
%% }
-type transact_get_items_output() :: #{binary() => any()}.

%% Example:
%% describe_time_to_live_output() :: #{
%%   <<"TimeToLiveDescription">> => time_to_live_description()
%% }
-type describe_time_to_live_output() :: #{binary() => any()}.

%% Example:
%% list_contributor_insights_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TableName">> => string()
%% }
-type list_contributor_insights_input() :: #{binary() => any()}.

%% Example:
%% point_in_time_recovery_specification() :: #{
%%   <<"PointInTimeRecoveryEnabled">> => boolean(),
%%   <<"RecoveryPeriodInDays">> => integer()
%% }
-type point_in_time_recovery_specification() :: #{binary() => any()}.

%% Example:
%% time_to_live_description() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"TimeToLiveStatus">> => list(any())
%% }
-type time_to_live_description() :: #{binary() => any()}.

%% Example:
%% replica_global_secondary_index_auto_scaling_description() :: #{
%%   <<"IndexName">> => string(),
%%   <<"IndexStatus">> => list(any()),
%%   <<"ProvisionedReadCapacityAutoScalingSettings">> => auto_scaling_settings_description(),
%%   <<"ProvisionedWriteCapacityAutoScalingSettings">> => auto_scaling_settings_description()
%% }
-type replica_global_secondary_index_auto_scaling_description() :: #{binary() => any()}.

%% Example:
%% kinesis_streaming_destination_output() :: #{
%%   <<"DestinationStatus">> => list(any()),
%%   <<"EnableKinesisStreamingConfiguration">> => enable_kinesis_streaming_configuration(),
%%   <<"StreamArn">> => string(),
%%   <<"TableName">> => string()
%% }
-type kinesis_streaming_destination_output() :: #{binary() => any()}.

%% Example:
%% condition() :: #{
%%   <<"AttributeValueList">> => list(list()()),
%%   <<"ComparisonOperator">> => list(any())
%% }
-type condition() :: #{binary() => any()}.

%% Example:
%% transact_get_items_input() :: #{
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"TransactItems">> := list(transact_get_item()())
%% }
-type transact_get_items_input() :: #{binary() => any()}.

%% Example:
%% import_table_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"InputCompressionType">> => list(any()),
%%   <<"InputFormat">> := list(any()),
%%   <<"InputFormatOptions">> => input_format_options(),
%%   <<"S3BucketSource">> := s3_bucket_source(),
%%   <<"TableCreationParameters">> := table_creation_parameters()
%% }
-type import_table_input() :: #{binary() => any()}.

%% Example:
%% transaction_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type transaction_conflict_exception() :: #{binary() => any()}.

%% Example:
%% describe_global_table_input() :: #{
%%   <<"GlobalTableName">> := string()
%% }
-type describe_global_table_input() :: #{binary() => any()}.

%% Example:
%% replica_global_secondary_index_settings_update() :: #{
%%   <<"IndexName">> => string(),
%%   <<"ProvisionedReadCapacityAutoScalingSettingsUpdate">> => auto_scaling_settings_update(),
%%   <<"ProvisionedReadCapacityUnits">> => float()
%% }
-type replica_global_secondary_index_settings_update() :: #{binary() => any()}.

%% Example:
%% put_item_input() :: #{
%%   <<"ConditionExpression">> => string(),
%%   <<"ConditionalOperator">> => list(any()),
%%   <<"Expected">> => map(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"ExpressionAttributeValues">> => map(),
%%   <<"Item">> := map(),
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"ReturnItemCollectionMetrics">> => list(any()),
%%   <<"ReturnValues">> => list(any()),
%%   <<"ReturnValuesOnConditionCheckFailure">> => list(any()),
%%   <<"TableName">> := string()
%% }
-type put_item_input() :: #{binary() => any()}.

%% Example:
%% list_tags_of_resource_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_of_resource_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% describe_table_replica_auto_scaling_input() :: #{
%%   <<"TableName">> := string()
%% }
-type describe_table_replica_auto_scaling_input() :: #{binary() => any()}.

%% Example:
%% export_table_to_point_in_time_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ExportFormat">> => list(any()),
%%   <<"ExportTime">> => non_neg_integer(),
%%   <<"ExportType">> => list(any()),
%%   <<"IncrementalExportSpecification">> => incremental_export_specification(),
%%   <<"S3Bucket">> := string(),
%%   <<"S3BucketOwner">> => string(),
%%   <<"S3Prefix">> => string(),
%%   <<"S3SseAlgorithm">> => list(any()),
%%   <<"S3SseKmsKeyId">> => string(),
%%   <<"TableArn">> := string()
%% }
-type export_table_to_point_in_time_input() :: #{binary() => any()}.

%% Example:
%% execute_transaction_output() :: #{
%%   <<"ConsumedCapacity">> => list(consumed_capacity()()),
%%   <<"Responses">> => list(item_response()())
%% }
-type execute_transaction_output() :: #{binary() => any()}.

%% Example:
%% transact_get_item() :: #{
%%   <<"Get">> => get()
%% }
-type transact_get_item() :: #{binary() => any()}.

%% Example:
%% global_table_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type global_table_not_found_exception() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"CachePeriodInMinutes">> => float()
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% update_item_output() :: #{
%%   <<"Attributes">> => map(),
%%   <<"ConsumedCapacity">> => consumed_capacity(),
%%   <<"ItemCollectionMetrics">> => item_collection_metrics()
%% }
-type update_item_output() :: #{binary() => any()}.

%% Example:
%% describe_contributor_insights_input() :: #{
%%   <<"IndexName">> => string(),
%%   <<"TableName">> := string()
%% }
-type describe_contributor_insights_input() :: #{binary() => any()}.

%% Example:
%% backup_description() :: #{
%%   <<"BackupDetails">> => backup_details(),
%%   <<"SourceTableDetails">> => source_table_details(),
%%   <<"SourceTableFeatureDetails">> => source_table_feature_details()
%% }
-type backup_description() :: #{binary() => any()}.

%% Example:
%% describe_kinesis_streaming_destination_output() :: #{
%%   <<"KinesisDataStreamDestinations">> => list(kinesis_data_stream_destination()()),
%%   <<"TableName">> => string()
%% }
-type describe_kinesis_streaming_destination_output() :: #{binary() => any()}.

%% Example:
%% backup_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type backup_in_use_exception() :: #{binary() => any()}.

%% Example:
%% conditional_check_failed_exception() :: #{
%%   <<"Item">> => map(),
%%   <<"message">> => string()
%% }
-type conditional_check_failed_exception() :: #{binary() => any()}.

%% Example:
%% describe_limits_input() :: #{

%% }
-type describe_limits_input() :: #{binary() => any()}.

%% Example:
%% global_secondary_index_update() :: #{
%%   <<"Create">> => create_global_secondary_index_action(),
%%   <<"Delete">> => delete_global_secondary_index_action(),
%%   <<"Update">> => update_global_secondary_index_action()
%% }
-type global_secondary_index_update() :: #{binary() => any()}.

%% Example:
%% create_backup_output() :: #{
%%   <<"BackupDetails">> => backup_details()
%% }
-type create_backup_output() :: #{binary() => any()}.

%% Example:
%% list_exports_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TableArn">> => string()
%% }
-type list_exports_input() :: #{binary() => any()}.

%% Example:
%% backup_details() :: #{
%%   <<"BackupArn">> => string(),
%%   <<"BackupCreationDateTime">> => non_neg_integer(),
%%   <<"BackupExpiryDateTime">> => non_neg_integer(),
%%   <<"BackupName">> => string(),
%%   <<"BackupSizeBytes">> => float(),
%%   <<"BackupStatus">> => list(any()),
%%   <<"BackupType">> => list(any())
%% }
-type backup_details() :: #{binary() => any()}.

%% Example:
%% input_format_options() :: #{
%%   <<"Csv">> => csv_options()
%% }
-type input_format_options() :: #{binary() => any()}.

%% Example:
%% import_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type import_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_exports_output() :: #{
%%   <<"ExportSummaries">> => list(export_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_exports_output() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_output() :: #{
%%   <<"RevisionId">> => string()
%% }
-type delete_resource_policy_output() :: #{binary() => any()}.

%% Example:
%% auto_scaling_settings_update() :: #{
%%   <<"AutoScalingDisabled">> => boolean(),
%%   <<"AutoScalingRoleArn">> => string(),
%%   <<"MaximumUnits">> => float(),
%%   <<"MinimumUnits">> => float(),
%%   <<"ScalingPolicyUpdate">> => auto_scaling_policy_update()
%% }
-type auto_scaling_settings_update() :: #{binary() => any()}.

%% Example:
%% create_global_table_output() :: #{
%%   <<"GlobalTableDescription">> => global_table_description()
%% }
-type create_global_table_output() :: #{binary() => any()}.

%% Example:
%% list_global_tables_input() :: #{
%%   <<"ExclusiveStartGlobalTableName">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"RegionName">> => string()
%% }
-type list_global_tables_input() :: #{binary() => any()}.

%% Example:
%% provisioned_throughput() :: #{
%%   <<"ReadCapacityUnits">> => float(),
%%   <<"WriteCapacityUnits">> => float()
%% }
-type provisioned_throughput() :: #{binary() => any()}.

%% Example:
%% global_secondary_index_description() :: #{
%%   <<"Backfilling">> => boolean(),
%%   <<"IndexArn">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"IndexSizeBytes">> => float(),
%%   <<"IndexStatus">> => list(any()),
%%   <<"ItemCount">> => float(),
%%   <<"KeySchema">> => list(key_schema_element()()),
%%   <<"OnDemandThroughput">> => on_demand_throughput(),
%%   <<"Projection">> => projection(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput_description(),
%%   <<"WarmThroughput">> => global_secondary_index_warm_throughput_description()
%% }
-type global_secondary_index_description() :: #{binary() => any()}.

%% Example:
%% global_secondary_index_info() :: #{
%%   <<"IndexName">> => string(),
%%   <<"KeySchema">> => list(key_schema_element()()),
%%   <<"OnDemandThroughput">> => on_demand_throughput(),
%%   <<"Projection">> => projection(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput()
%% }
-type global_secondary_index_info() :: #{binary() => any()}.

%% Example:
%% put_request() :: #{
%%   <<"Item">> => map()
%% }
-type put_request() :: #{binary() => any()}.

%% Example:
%% delete_item_input() :: #{
%%   <<"ConditionExpression">> => string(),
%%   <<"ConditionalOperator">> => list(any()),
%%   <<"Expected">> => map(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"ExpressionAttributeValues">> => map(),
%%   <<"Key">> := map(),
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"ReturnItemCollectionMetrics">> => list(any()),
%%   <<"ReturnValues">> => list(any()),
%%   <<"ReturnValuesOnConditionCheckFailure">> => list(any()),
%%   <<"TableName">> := string()
%% }
-type delete_item_input() :: #{binary() => any()}.

%% Example:
%% replica_global_secondary_index_description() :: #{
%%   <<"IndexName">> => string(),
%%   <<"OnDemandThroughputOverride">> => on_demand_throughput_override(),
%%   <<"ProvisionedThroughputOverride">> => provisioned_throughput_override(),
%%   <<"WarmThroughput">> => global_secondary_index_warm_throughput_description()
%% }
-type replica_global_secondary_index_description() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% auto_scaling_target_tracking_scaling_policy_configuration_description() :: #{
%%   <<"DisableScaleIn">> => boolean(),
%%   <<"ScaleInCooldown">> => integer(),
%%   <<"ScaleOutCooldown">> => integer(),
%%   <<"TargetValue">> => float()
%% }
-type auto_scaling_target_tracking_scaling_policy_configuration_description() :: #{binary() => any()}.

%% Example:
%% query_input() :: #{
%%   <<"AttributesToGet">> => list(string()()),
%%   <<"ConditionalOperator">> => list(any()),
%%   <<"ConsistentRead">> => boolean(),
%%   <<"ExclusiveStartKey">> => map(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"ExpressionAttributeValues">> => map(),
%%   <<"FilterExpression">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"KeyConditionExpression">> => string(),
%%   <<"KeyConditions">> => map(),
%%   <<"Limit">> => integer(),
%%   <<"ProjectionExpression">> => string(),
%%   <<"QueryFilter">> => map(),
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"ScanIndexForward">> => boolean(),
%%   <<"Select">> => list(any()),
%%   <<"TableName">> := string()
%% }
-type query_input() :: #{binary() => any()}.

%% Example:
%% update_global_table_output() :: #{
%%   <<"GlobalTableDescription">> => global_table_description()
%% }
-type update_global_table_output() :: #{binary() => any()}.

%% Example:
%% invalid_restore_time_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_restore_time_exception() :: #{binary() => any()}.

%% Example:
%% sse_specification() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"KMSMasterKeyId">> => string(),
%%   <<"SSEType">> => list(any())
%% }
-type sse_specification() :: #{binary() => any()}.

%% Example:
%% describe_continuous_backups_output() :: #{
%%   <<"ContinuousBackupsDescription">> => continuous_backups_description()
%% }
-type describe_continuous_backups_output() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% update_item_input() :: #{
%%   <<"AttributeUpdates">> => map(),
%%   <<"ConditionExpression">> => string(),
%%   <<"ConditionalOperator">> => list(any()),
%%   <<"Expected">> => map(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"ExpressionAttributeValues">> => map(),
%%   <<"Key">> := map(),
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"ReturnItemCollectionMetrics">> => list(any()),
%%   <<"ReturnValues">> => list(any()),
%%   <<"ReturnValuesOnConditionCheckFailure">> => list(any()),
%%   <<"TableName">> := string(),
%%   <<"UpdateExpression">> => string()
%% }
-type update_item_input() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_input() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_resource_policy_input() :: #{binary() => any()}.

%% Example:
%% global_table_description() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"GlobalTableArn">> => string(),
%%   <<"GlobalTableName">> => string(),
%%   <<"GlobalTableStatus">> => list(any()),
%%   <<"ReplicationGroup">> => list(replica_description()())
%% }
-type global_table_description() :: #{binary() => any()}.

%% Example:
%% continuous_backups_description() :: #{
%%   <<"ContinuousBackupsStatus">> => list(any()),
%%   <<"PointInTimeRecoveryDescription">> => point_in_time_recovery_description()
%% }
-type continuous_backups_description() :: #{binary() => any()}.

%% Example:
%% global_secondary_index() :: #{
%%   <<"IndexName">> => string(),
%%   <<"KeySchema">> => list(key_schema_element()()),
%%   <<"OnDemandThroughput">> => on_demand_throughput(),
%%   <<"Projection">> => projection(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput(),
%%   <<"WarmThroughput">> => warm_throughput()
%% }
-type global_secondary_index() :: #{binary() => any()}.

%% Example:
%% restore_table_to_point_in_time_input() :: #{
%%   <<"BillingModeOverride">> => list(any()),
%%   <<"GlobalSecondaryIndexOverride">> => list(global_secondary_index()()),
%%   <<"LocalSecondaryIndexOverride">> => list(local_secondary_index()()),
%%   <<"OnDemandThroughputOverride">> => on_demand_throughput(),
%%   <<"ProvisionedThroughputOverride">> => provisioned_throughput(),
%%   <<"RestoreDateTime">> => non_neg_integer(),
%%   <<"SSESpecificationOverride">> => sse_specification(),
%%   <<"SourceTableArn">> => string(),
%%   <<"SourceTableName">> => string(),
%%   <<"TargetTableName">> := string(),
%%   <<"UseLatestRestorableTime">> => boolean()
%% }
-type restore_table_to_point_in_time_input() :: #{binary() => any()}.

%% Example:
%% request_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type request_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% restore_table_from_backup_input() :: #{
%%   <<"BackupArn">> := string(),
%%   <<"BillingModeOverride">> => list(any()),
%%   <<"GlobalSecondaryIndexOverride">> => list(global_secondary_index()()),
%%   <<"LocalSecondaryIndexOverride">> => list(local_secondary_index()()),
%%   <<"OnDemandThroughputOverride">> => on_demand_throughput(),
%%   <<"ProvisionedThroughputOverride">> => provisioned_throughput(),
%%   <<"SSESpecificationOverride">> => sse_specification(),
%%   <<"TargetTableName">> := string()
%% }
-type restore_table_from_backup_input() :: #{binary() => any()}.

%% Example:
%% cancellation_reason() :: #{
%%   <<"Code">> => string(),
%%   <<"Item">> => map(),
%%   <<"Message">> => string()
%% }
-type cancellation_reason() :: #{binary() => any()}.

%% Example:
%% source_table_feature_details() :: #{
%%   <<"GlobalSecondaryIndexes">> => list(global_secondary_index_info()()),
%%   <<"LocalSecondaryIndexes">> => list(local_secondary_index_info()()),
%%   <<"SSEDescription">> => sse_description(),
%%   <<"StreamDescription">> => stream_specification(),
%%   <<"TimeToLiveDescription">> => time_to_live_description()
%% }
-type source_table_feature_details() :: #{binary() => any()}.

%% Example:
%% import_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type import_conflict_exception() :: #{binary() => any()}.

%% Example:
%% item_response() :: #{
%%   <<"Item">> => map()
%% }
-type item_response() :: #{binary() => any()}.

%% Example:
%% restore_table_from_backup_output() :: #{
%%   <<"TableDescription">> => table_description()
%% }
-type restore_table_from_backup_output() :: #{binary() => any()}.

%% Example:
%% failure_exception() :: #{
%%   <<"ExceptionDescription">> => string(),
%%   <<"ExceptionName">> => string()
%% }
-type failure_exception() :: #{binary() => any()}.

%% Example:
%% replica_description() :: #{
%%   <<"GlobalSecondaryIndexes">> => list(replica_global_secondary_index_description()()),
%%   <<"KMSMasterKeyId">> => string(),
%%   <<"OnDemandThroughputOverride">> => on_demand_throughput_override(),
%%   <<"ProvisionedThroughputOverride">> => provisioned_throughput_override(),
%%   <<"RegionName">> => string(),
%%   <<"ReplicaInaccessibleDateTime">> => non_neg_integer(),
%%   <<"ReplicaStatus">> => list(any()),
%%   <<"ReplicaStatusDescription">> => string(),
%%   <<"ReplicaStatusPercentProgress">> => string(),
%%   <<"ReplicaTableClassSummary">> => table_class_summary(),
%%   <<"WarmThroughput">> => table_warm_throughput_description()
%% }
-type replica_description() :: #{binary() => any()}.

%% Example:
%% scan_output() :: #{
%%   <<"ConsumedCapacity">> => consumed_capacity(),
%%   <<"Count">> => integer(),
%%   <<"Items">> => list(map()()),
%%   <<"LastEvaluatedKey">> => map(),
%%   <<"ScannedCount">> => integer()
%% }
-type scan_output() :: #{binary() => any()}.

%% Example:
%% delete_replication_group_member_action() :: #{
%%   <<"RegionName">> => string()
%% }
-type delete_replication_group_member_action() :: #{binary() => any()}.

%% Example:
%% replication_group_update() :: #{
%%   <<"Create">> => create_replication_group_member_action(),
%%   <<"Delete">> => delete_replication_group_member_action(),
%%   <<"Update">> => update_replication_group_member_action()
%% }
-type replication_group_update() :: #{binary() => any()}.

%% Example:
%% transaction_in_progress_exception() :: #{
%%   <<"Message">> => string()
%% }
-type transaction_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% list_contributor_insights_output() :: #{
%%   <<"ContributorInsightsSummaries">> => list(contributor_insights_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_contributor_insights_output() :: #{binary() => any()}.

%% Example:
%% export_description() :: #{
%%   <<"BilledSizeBytes">> => float(),
%%   <<"ClientToken">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ExportArn">> => string(),
%%   <<"ExportFormat">> => list(any()),
%%   <<"ExportManifest">> => string(),
%%   <<"ExportStatus">> => list(any()),
%%   <<"ExportTime">> => non_neg_integer(),
%%   <<"ExportType">> => list(any()),
%%   <<"FailureCode">> => string(),
%%   <<"FailureMessage">> => string(),
%%   <<"IncrementalExportSpecification">> => incremental_export_specification(),
%%   <<"ItemCount">> => float(),
%%   <<"S3Bucket">> => string(),
%%   <<"S3BucketOwner">> => string(),
%%   <<"S3Prefix">> => string(),
%%   <<"S3SseAlgorithm">> => list(any()),
%%   <<"S3SseKmsKeyId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TableArn">> => string(),
%%   <<"TableId">> => string()
%% }
-type export_description() :: #{binary() => any()}.

%% Example:
%% update_global_secondary_index_action() :: #{
%%   <<"IndexName">> => string(),
%%   <<"OnDemandThroughput">> => on_demand_throughput(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput(),
%%   <<"WarmThroughput">> => warm_throughput()
%% }
-type update_global_secondary_index_action() :: #{binary() => any()}.

%% Example:
%% replica() :: #{
%%   <<"RegionName">> => string()
%% }
-type replica() :: #{binary() => any()}.

%% Example:
%% contributor_insights_summary() :: #{
%%   <<"ContributorInsightsStatus">> => list(any()),
%%   <<"IndexName">> => string(),
%%   <<"TableName">> => string()
%% }
-type contributor_insights_summary() :: #{binary() => any()}.

%% Example:
%% get_item_input() :: #{
%%   <<"AttributesToGet">> => list(string()()),
%%   <<"ConsistentRead">> => boolean(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"Key">> := map(),
%%   <<"ProjectionExpression">> => string(),
%%   <<"ReturnConsumedCapacity">> => list(any()),
%%   <<"TableName">> := string()
%% }
-type get_item_input() :: #{binary() => any()}.

%% Example:
%% describe_time_to_live_input() :: #{
%%   <<"TableName">> := string()
%% }
-type describe_time_to_live_input() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% auto_scaling_target_tracking_scaling_policy_configuration_update() :: #{
%%   <<"DisableScaleIn">> => boolean(),
%%   <<"ScaleInCooldown">> => integer(),
%%   <<"ScaleOutCooldown">> => integer(),
%%   <<"TargetValue">> => float()
%% }
-type auto_scaling_target_tracking_scaling_policy_configuration_update() :: #{binary() => any()}.

%% Example:
%% update_continuous_backups_input() :: #{
%%   <<"PointInTimeRecoverySpecification">> := point_in_time_recovery_specification(),
%%   <<"TableName">> := string()
%% }
-type update_continuous_backups_input() :: #{binary() => any()}.

%% Example:
%% archival_summary() :: #{
%%   <<"ArchivalBackupArn">> => string(),
%%   <<"ArchivalDateTime">> => non_neg_integer(),
%%   <<"ArchivalReason">> => string()
%% }
-type archival_summary() :: #{binary() => any()}.

%% Example:
%% list_tables_output() :: #{
%%   <<"LastEvaluatedTableName">> => string(),
%%   <<"TableNames">> => list(string()())
%% }
-type list_tables_output() :: #{binary() => any()}.

%% Example:
%% invalid_export_time_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_export_time_exception() :: #{binary() => any()}.

%% Example:
%% attribute_value_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Value">> => list()
%% }
-type attribute_value_update() :: #{binary() => any()}.

%% Example:
%% import_table_output() :: #{
%%   <<"ImportTableDescription">> => import_table_description()
%% }
-type import_table_output() :: #{binary() => any()}.

%% Example:
%% put_item_output() :: #{
%%   <<"Attributes">> => map(),
%%   <<"ConsumedCapacity">> => consumed_capacity(),
%%   <<"ItemCollectionMetrics">> => item_collection_metrics()
%% }
-type put_item_output() :: #{binary() => any()}.

%% Example:
%% update_global_table_settings_output() :: #{
%%   <<"GlobalTableName">> => string(),
%%   <<"ReplicaSettings">> => list(replica_settings_description()())
%% }
-type update_global_table_settings_output() :: #{binary() => any()}.

%% Example:
%% table_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type table_in_use_exception() :: #{binary() => any()}.

%% Example:
%% incremental_export_specification() :: #{
%%   <<"ExportFromTime">> => non_neg_integer(),
%%   <<"ExportToTime">> => non_neg_integer(),
%%   <<"ExportViewType">> => list(any())
%% }
-type incremental_export_specification() :: #{binary() => any()}.

%% Example:
%% import_table_description() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"CloudWatchLogGroupArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ErrorCount">> => float(),
%%   <<"FailureCode">> => string(),
%%   <<"FailureMessage">> => string(),
%%   <<"ImportArn">> => string(),
%%   <<"ImportStatus">> => list(any()),
%%   <<"ImportedItemCount">> => float(),
%%   <<"InputCompressionType">> => list(any()),
%%   <<"InputFormat">> => list(any()),
%%   <<"InputFormatOptions">> => input_format_options(),
%%   <<"ProcessedItemCount">> => float(),
%%   <<"ProcessedSizeBytes">> => float(),
%%   <<"S3BucketSource">> => s3_bucket_source(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TableArn">> => string(),
%%   <<"TableCreationParameters">> => table_creation_parameters(),
%%   <<"TableId">> => string()
%% }
-type import_table_description() :: #{binary() => any()}.

%% Example:
%% delete_table_output() :: #{
%%   <<"TableDescription">> => table_description()
%% }
-type delete_table_output() :: #{binary() => any()}.

%% Example:
%% index_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type index_not_found_exception() :: #{binary() => any()}.

%% Example:
%% update_table_input() :: #{
%%   <<"AttributeDefinitions">> => list(attribute_definition()()),
%%   <<"BillingMode">> => list(any()),
%%   <<"DeletionProtectionEnabled">> => boolean(),
%%   <<"GlobalSecondaryIndexUpdates">> => list(global_secondary_index_update()()),
%%   <<"MultiRegionConsistency">> => list(any()),
%%   <<"OnDemandThroughput">> => on_demand_throughput(),
%%   <<"ProvisionedThroughput">> => provisioned_throughput(),
%%   <<"ReplicaUpdates">> => list(replication_group_update()()),
%%   <<"SSESpecification">> => sse_specification(),
%%   <<"StreamSpecification">> => stream_specification(),
%%   <<"TableClass">> => list(any()),
%%   <<"TableName">> := string(),
%%   <<"WarmThroughput">> => warm_throughput()
%% }
-type update_table_input() :: #{binary() => any()}.

%% Example:
%% put() :: #{
%%   <<"ConditionExpression">> => string(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"ExpressionAttributeValues">> => map(),
%%   <<"Item">> => map(),
%%   <<"ReturnValuesOnConditionCheckFailure">> => list(any()),
%%   <<"TableName">> => string()
%% }
-type put() :: #{binary() => any()}.

%% Example:
%% batch_statement_request() :: #{
%%   <<"ConsistentRead">> => boolean(),
%%   <<"Parameters">> => list(list()()),
%%   <<"ReturnValuesOnConditionCheckFailure">> => list(any()),
%%   <<"Statement">> => string()
%% }
-type batch_statement_request() :: #{binary() => any()}.

%% Example:
%% replica_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type replica_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_backup_output() :: #{
%%   <<"BackupDescription">> => backup_description()
%% }
-type delete_backup_output() :: #{binary() => any()}.

%% Example:
%% update_kinesis_streaming_configuration() :: #{
%%   <<"ApproximateCreationDateTimePrecision">> => list(any())
%% }
-type update_kinesis_streaming_configuration() :: #{binary() => any()}.

%% Example:
%% update_table_output() :: #{
%%   <<"TableDescription">> => table_description()
%% }
-type update_table_output() :: #{binary() => any()}.

%% Example:
%% s3_bucket_source() :: #{
%%   <<"S3Bucket">> => string(),
%%   <<"S3BucketOwner">> => string(),
%%   <<"S3KeyPrefix">> => string()
%% }
-type s3_bucket_source() :: #{binary() => any()}.

%% Example:
%% list_backups_output() :: #{
%%   <<"BackupSummaries">> => list(backup_summary()()),
%%   <<"LastEvaluatedBackupArn">> => string()
%% }
-type list_backups_output() :: #{binary() => any()}.

%% Example:
%% update_contributor_insights_input() :: #{
%%   <<"ContributorInsightsAction">> := list(any()),
%%   <<"IndexName">> => string(),
%%   <<"TableName">> := string()
%% }
-type update_contributor_insights_input() :: #{binary() => any()}.

%% Example:
%% describe_table_replica_auto_scaling_output() :: #{
%%   <<"TableAutoScalingDescription">> => table_auto_scaling_description()
%% }
-type describe_table_replica_auto_scaling_output() :: #{binary() => any()}.

%% Example:
%% export_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type export_conflict_exception() :: #{binary() => any()}.

%% Example:
%% update_time_to_live_input() :: #{
%%   <<"TableName">> := string(),
%%   <<"TimeToLiveSpecification">> := time_to_live_specification()
%% }
-type update_time_to_live_input() :: #{binary() => any()}.

%% Example:
%% get() :: #{
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"Key">> => map(),
%%   <<"ProjectionExpression">> => string(),
%%   <<"TableName">> => string()
%% }
-type get() :: #{binary() => any()}.

%% Example:
%% export_table_to_point_in_time_output() :: #{
%%   <<"ExportDescription">> => export_description()
%% }
-type export_table_to_point_in_time_output() :: #{binary() => any()}.

%% Example:
%% update_kinesis_streaming_destination_input() :: #{
%%   <<"StreamArn">> := string(),
%%   <<"TableName">> := string(),
%%   <<"UpdateKinesisStreamingConfiguration">> => update_kinesis_streaming_configuration()
%% }
-type update_kinesis_streaming_destination_input() :: #{binary() => any()}.

%% Example:
%% export_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type export_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_global_secondary_index_action() :: #{
%%   <<"IndexName">> => string()
%% }
-type delete_global_secondary_index_action() :: #{binary() => any()}.

%% Example:
%% provisioned_throughput_override() :: #{
%%   <<"ReadCapacityUnits">> => float()
%% }
-type provisioned_throughput_override() :: #{binary() => any()}.

%% Example:
%% table_auto_scaling_description() :: #{
%%   <<"Replicas">> => list(replica_auto_scaling_description()()),
%%   <<"TableName">> => string(),
%%   <<"TableStatus">> => list(any())
%% }
-type table_auto_scaling_description() :: #{binary() => any()}.

%% Example:
%% list_imports_output() :: #{
%%   <<"ImportSummaryList">> => list(import_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_imports_output() :: #{binary() => any()}.

%% Example:
%% table_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type table_not_found_exception() :: #{binary() => any()}.

%% Example:
%% condition_check() :: #{
%%   <<"ConditionExpression">> => string(),
%%   <<"ExpressionAttributeNames">> => map(),
%%   <<"ExpressionAttributeValues">> => map(),
%%   <<"Key">> => map(),
%%   <<"ReturnValuesOnConditionCheckFailure">> => list(any()),
%%   <<"TableName">> => string()
%% }
-type condition_check() :: #{binary() => any()}.

-type batch_execute_statement_errors() ::
    request_limit_exceeded() | 
    internal_server_error().

-type batch_get_item_errors() ::
    request_limit_exceeded() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_endpoint_exception().

-type batch_write_item_errors() ::
    request_limit_exceeded() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_endpoint_exception() | 
    item_collection_size_limit_exceeded_exception().

-type create_backup_errors() ::
    table_not_found_exception() | 
    table_in_use_exception() | 
    limit_exceeded_exception() | 
    internal_server_error() | 
    backup_in_use_exception() | 
    continuous_backups_unavailable_exception() | 
    invalid_endpoint_exception().

-type create_global_table_errors() ::
    table_not_found_exception() | 
    limit_exceeded_exception() | 
    internal_server_error() | 
    global_table_already_exists_exception() | 
    invalid_endpoint_exception().

-type create_table_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type delete_backup_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    backup_in_use_exception() | 
    backup_not_found_exception() | 
    invalid_endpoint_exception().

-type delete_item_errors() ::
    request_limit_exceeded() | 
    internal_server_error() | 
    conditional_check_failed_exception() | 
    transaction_conflict_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    replicated_write_conflict_exception() | 
    invalid_endpoint_exception() | 
    item_collection_size_limit_exceeded_exception().

-type delete_resource_policy_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    policy_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type delete_table_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type describe_backup_errors() ::
    internal_server_error() | 
    backup_not_found_exception() | 
    invalid_endpoint_exception().

-type describe_continuous_backups_errors() ::
    table_not_found_exception() | 
    internal_server_error() | 
    invalid_endpoint_exception().

-type describe_contributor_insights_errors() ::
    internal_server_error() | 
    resource_not_found_exception().

-type describe_export_errors() ::
    export_not_found_exception() | 
    limit_exceeded_exception() | 
    internal_server_error().

-type describe_global_table_errors() ::
    internal_server_error() | 
    global_table_not_found_exception() | 
    invalid_endpoint_exception().

-type describe_global_table_settings_errors() ::
    internal_server_error() | 
    global_table_not_found_exception() | 
    invalid_endpoint_exception().

-type describe_import_errors() ::
    import_not_found_exception().

-type describe_kinesis_streaming_destination_errors() ::
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type describe_limits_errors() ::
    internal_server_error() | 
    invalid_endpoint_exception().

-type describe_table_errors() ::
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type describe_table_replica_auto_scaling_errors() ::
    internal_server_error() | 
    resource_not_found_exception().

-type describe_time_to_live_errors() ::
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type disable_kinesis_streaming_destination_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type enable_kinesis_streaming_destination_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type execute_statement_errors() ::
    request_limit_exceeded() | 
    internal_server_error() | 
    conditional_check_failed_exception() | 
    transaction_conflict_exception() | 
    duplicate_item_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    item_collection_size_limit_exceeded_exception().

-type execute_transaction_errors() ::
    transaction_in_progress_exception() | 
    request_limit_exceeded() | 
    internal_server_error() | 
    idempotent_parameter_mismatch_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    transaction_canceled_exception().

-type export_table_to_point_in_time_errors() ::
    table_not_found_exception() | 
    export_conflict_exception() | 
    invalid_export_time_exception() | 
    limit_exceeded_exception() | 
    internal_server_error() | 
    point_in_time_recovery_unavailable_exception().

-type get_item_errors() ::
    request_limit_exceeded() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_endpoint_exception().

-type get_resource_policy_errors() ::
    internal_server_error() | 
    resource_not_found_exception() | 
    policy_not_found_exception() | 
    invalid_endpoint_exception().

-type import_table_errors() ::
    limit_exceeded_exception() | 
    import_conflict_exception() | 
    resource_in_use_exception().

-type list_backups_errors() ::
    internal_server_error() | 
    invalid_endpoint_exception().

-type list_contributor_insights_errors() ::
    internal_server_error() | 
    resource_not_found_exception().

-type list_exports_errors() ::
    limit_exceeded_exception() | 
    internal_server_error().

-type list_global_tables_errors() ::
    internal_server_error() | 
    invalid_endpoint_exception().

-type list_imports_errors() ::
    limit_exceeded_exception().

-type list_tables_errors() ::
    internal_server_error() | 
    invalid_endpoint_exception().

-type list_tags_of_resource_errors() ::
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type put_item_errors() ::
    request_limit_exceeded() | 
    internal_server_error() | 
    conditional_check_failed_exception() | 
    transaction_conflict_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    replicated_write_conflict_exception() | 
    invalid_endpoint_exception() | 
    item_collection_size_limit_exceeded_exception().

-type put_resource_policy_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    policy_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type query_errors() ::
    request_limit_exceeded() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_endpoint_exception().

-type restore_table_from_backup_errors() ::
    table_in_use_exception() | 
    limit_exceeded_exception() | 
    internal_server_error() | 
    backup_in_use_exception() | 
    backup_not_found_exception() | 
    invalid_endpoint_exception() | 
    table_already_exists_exception().

-type restore_table_to_point_in_time_errors() ::
    table_not_found_exception() | 
    table_in_use_exception() | 
    limit_exceeded_exception() | 
    invalid_restore_time_exception() | 
    internal_server_error() | 
    invalid_endpoint_exception() | 
    point_in_time_recovery_unavailable_exception() | 
    table_already_exists_exception().

-type scan_errors() ::
    request_limit_exceeded() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_endpoint_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type transact_get_items_errors() ::
    request_limit_exceeded() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    transaction_canceled_exception() | 
    invalid_endpoint_exception().

-type transact_write_items_errors() ::
    transaction_in_progress_exception() | 
    request_limit_exceeded() | 
    internal_server_error() | 
    idempotent_parameter_mismatch_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    transaction_canceled_exception() | 
    invalid_endpoint_exception().

-type untag_resource_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type update_continuous_backups_errors() ::
    table_not_found_exception() | 
    internal_server_error() | 
    continuous_backups_unavailable_exception() | 
    invalid_endpoint_exception().

-type update_contributor_insights_errors() ::
    internal_server_error() | 
    resource_not_found_exception().

-type update_global_table_errors() ::
    table_not_found_exception() | 
    replica_not_found_exception() | 
    internal_server_error() | 
    global_table_not_found_exception() | 
    replica_already_exists_exception() | 
    invalid_endpoint_exception().

-type update_global_table_settings_errors() ::
    replica_not_found_exception() | 
    index_not_found_exception() | 
    limit_exceeded_exception() | 
    internal_server_error() | 
    global_table_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type update_item_errors() ::
    request_limit_exceeded() | 
    internal_server_error() | 
    conditional_check_failed_exception() | 
    transaction_conflict_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    replicated_write_conflict_exception() | 
    invalid_endpoint_exception() | 
    item_collection_size_limit_exceeded_exception().

-type update_kinesis_streaming_destination_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type update_table_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

-type update_table_replica_auto_scaling_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_time_to_live_errors() ::
    limit_exceeded_exception() | 
    internal_server_error() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception() | 
    resource_in_use_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This operation allows you to perform batch reads or writes on data
%% stored in DynamoDB,
%% using PartiQL.
%%
%% Each read statement in a `BatchExecuteStatement' must specify
%% an equality condition on all key attributes. This enforces that each
%% `SELECT'
%% statement in a batch returns at most a single item. For more information,
%% see Running batch operations with PartiQL for DynamoDB :
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ql-reference.multiplestatements.batching.html.
%%
%% The entire batch must consist of either read statements or write
%% statements, you
%% cannot mix both in one batch.
%%
%% A HTTP 200 response does not mean that all statements in the
%% BatchExecuteStatement
%% succeeded. Error details for individual statements can be found under the
%% Error:
%% https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_BatchStatementResponse.html#DDB-Type-BatchStatementResponse-Error
%% field of the `BatchStatementResponse' for each
%% statement.
-spec batch_execute_statement(aws_client:aws_client(), batch_execute_statement_input()) ->
    {ok, batch_execute_statement_output(), tuple()} |
    {error, any()} |
    {error, batch_execute_statement_errors(), tuple()}.
batch_execute_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_execute_statement(Client, Input, []).

-spec batch_execute_statement(aws_client:aws_client(), batch_execute_statement_input(), proplists:proplist()) ->
    {ok, batch_execute_statement_output(), tuple()} |
    {error, any()} |
    {error, batch_execute_statement_errors(), tuple()}.
batch_execute_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchExecuteStatement">>, Input, Options).

%% @doc The `BatchGetItem' operation returns the attributes of one or
%% more items
%% from one or more tables.
%%
%% You identify requested items by primary key.
%%
%% A single operation can retrieve up to 16 MB of data, which can contain as
%% many as 100
%% items. `BatchGetItem' returns a partial result if the response size
%% limit is
%% exceeded, the table's provisioned throughput is exceeded, more than
%% 1MB per partition is
%% requested, or an internal processing failure occurs. If a partial result
%% is returned,
%% the operation returns a value for `UnprocessedKeys'. You can use this
%% value
%% to retry the operation starting with the next item to get.
%%
%% If you request more than 100 items, `BatchGetItem' returns a
%% `ValidationException' with the message &quot;Too many items requested
%% for
%% the BatchGetItem call.&quot;
%%
%% For example, if you ask to retrieve 100 items, but each individual item is
%% 300 KB in
%% size, the system returns 52 items (so as not to exceed the 16 MB limit).
%% It also returns
%% an appropriate `UnprocessedKeys' value so you can get the next page of
%% results. If desired, your application can include its own logic to
%% assemble the pages of
%% results into one dataset.
%%
%% If none of the items can be processed due to insufficient
%% provisioned throughput on all of the tables in the request, then
%% `BatchGetItem' returns a
%% `ProvisionedThroughputExceededException'. If at least
%% one of the items is successfully processed, then
%% `BatchGetItem' completes successfully, while returning the keys of the
%% unread items in `UnprocessedKeys'.
%%
%% If DynamoDB returns any unprocessed items, you should retry the batch
%% operation on
%% those items. However, we strongly recommend that you use an exponential
%% backoff algorithm. If you retry the batch operation immediately, the
%% underlying read or write requests can still fail due to throttling on the
%% individual
%% tables. If you delay the batch operation using exponential backoff, the
%% individual
%% requests in the batch are much more likely to succeed.
%%
%% For more information, see Batch Operations and Error Handling:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations
%% in the Amazon DynamoDB
%% Developer Guide.
%%
%% By default, `BatchGetItem' performs eventually consistent reads on
%% every
%% table in the request. If you want strongly consistent reads instead, you
%% can set
%% `ConsistentRead' to `true' for any or all tables.
%%
%% In order to minimize response latency, `BatchGetItem' may retrieve
%% items in
%% parallel.
%%
%% When designing your application, keep in mind that DynamoDB does not
%% return items in
%% any particular order. To help parse the response by item, include the
%% primary key values
%% for the items in your request in the `ProjectionExpression' parameter.
%%
%% If a requested item does not exist, it is not returned in the result.
%% Requests for
%% nonexistent items consume the minimum read capacity units according to the
%% type of read.
%% For more information, see Working with Tables:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations
%% in the Amazon DynamoDB Developer
%% Guide.
%%
%% `BatchGetItem' will result in a `ValidationException' if the
%% same key is specified multiple times.
-spec batch_get_item(aws_client:aws_client(), batch_get_item_input()) ->
    {ok, batch_get_item_output(), tuple()} |
    {error, any()} |
    {error, batch_get_item_errors(), tuple()}.
batch_get_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_item(Client, Input, []).

-spec batch_get_item(aws_client:aws_client(), batch_get_item_input(), proplists:proplist()) ->
    {ok, batch_get_item_output(), tuple()} |
    {error, any()} |
    {error, batch_get_item_errors(), tuple()}.
batch_get_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetItem">>, Input, Options).

%% @doc The `BatchWriteItem' operation puts or deletes multiple items in
%% one or
%% more tables.
%%
%% A single call to `BatchWriteItem' can transmit up to 16MB of
%% data over the network, consisting of up to 25 item put or delete
%% operations. While
%% individual items can be up to 400 KB once stored, it's important to
%% note that an item's
%% representation might be greater than 400KB while being sent in
%% DynamoDB's JSON format
%% for the API call. For more details on this distinction, see Naming Rules
%% and Data Types:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html.
%%
%% `BatchWriteItem' cannot update items. If you perform a
%% `BatchWriteItem' operation on an existing item, that item's values
%% will be overwritten by the operation and it will appear like it was
%% updated. To
%% update items, we recommend you use the `UpdateItem' action.
%%
%% The individual `PutItem' and `DeleteItem' operations specified
%% in `BatchWriteItem' are atomic; however `BatchWriteItem' as a
%% whole is not. If any requested operations fail because the table's
%% provisioned
%% throughput is exceeded or an internal processing failure occurs, the
%% failed operations
%% are returned in the `UnprocessedItems' response parameter. You can
%% investigate and optionally resend the requests. Typically, you would call
%% `BatchWriteItem' in a loop. Each iteration would check for unprocessed
%% items and submit a new `BatchWriteItem' request with those unprocessed
%% items
%% until all items have been processed.
%%
%% For tables and indexes with provisioned capacity, if none of the items can
%% be
%% processed due to insufficient provisioned throughput on all of the tables
%% in the
%% request, then `BatchWriteItem' returns a
%% `ProvisionedThroughputExceededException'. For all tables and indexes,
%% if
%% none of the items can be processed due to other throttling scenarios (such
%% as exceeding
%% partition level limits), then `BatchWriteItem' returns a
%% `ThrottlingException'.
%%
%% If DynamoDB returns any unprocessed items, you should retry the batch
%% operation on
%% those items. However, we strongly recommend that you use an exponential
%% backoff algorithm. If you retry the batch operation immediately, the
%% underlying read or write requests can still fail due to throttling on the
%% individual
%% tables. If you delay the batch operation using exponential backoff, the
%% individual
%% requests in the batch are much more likely to succeed.
%%
%% For more information, see Batch Operations and Error Handling:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#Programming.Errors.BatchOperations
%% in the Amazon DynamoDB
%% Developer Guide.
%%
%% With `BatchWriteItem', you can efficiently write or delete large
%% amounts of
%% data, such as from Amazon EMR, or copy data from another database into
%% DynamoDB. In
%% order to improve performance with these large-scale operations,
%% `BatchWriteItem' does not behave in the same way as individual
%% `PutItem' and `DeleteItem' calls would. For example, you
%% cannot specify conditions on individual put and delete requests, and
%% `BatchWriteItem' does not return deleted items in the response.
%%
%% If you use a programming language that supports concurrency, you can use
%% threads to
%% write items in parallel. Your application must include the necessary logic
%% to manage the
%% threads. With languages that don't support threading, you must update
%% or delete the
%% specified items one at a time. In both situations, `BatchWriteItem'
%% performs
%% the specified put and delete operations in parallel, giving you the power
%% of the thread
%% pool approach without having to introduce complexity into your
%% application.
%%
%% Parallel processing reduces latency, but each specified put and delete
%% request
%% consumes the same number of write capacity units whether it is processed
%% in parallel or
%% not. Delete operations on nonexistent items consume one write capacity
%% unit.
%%
%% If one or more of the following is true, DynamoDB rejects the entire batch
%% write
%% operation:
%%
%% One or more tables specified in the `BatchWriteItem' request does
%% not exist.
%%
%% Primary key attributes specified on an item in the request do not match
%% those
%% in the corresponding table's primary key schema.
%%
%% You try to perform multiple operations on the same item in the same
%% `BatchWriteItem' request. For example, you cannot put and delete
%% the same item in the same `BatchWriteItem' request.
%%
%% Your request contains at least two items with identical hash and range
%% keys
%% (which essentially is two put operations).
%%
%% There are more than 25 requests in the batch.
%%
%% Any individual item in a batch exceeds 400 KB.
%%
%% The total request size exceeds 16 MB.
%%
%% Any individual items with keys exceeding the key length limits. For a
%% partition key, the limit is 2048 bytes and for a sort key, the limit is
%% 1024
%% bytes.
-spec batch_write_item(aws_client:aws_client(), batch_write_item_input()) ->
    {ok, batch_write_item_output(), tuple()} |
    {error, any()} |
    {error, batch_write_item_errors(), tuple()}.
batch_write_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_write_item(Client, Input, []).

-spec batch_write_item(aws_client:aws_client(), batch_write_item_input(), proplists:proplist()) ->
    {ok, batch_write_item_output(), tuple()} |
    {error, any()} |
    {error, batch_write_item_errors(), tuple()}.
batch_write_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchWriteItem">>, Input, Options).

%% @doc Creates a backup for an existing table.
%%
%% Each time you create an on-demand backup, the entire table data is backed
%% up. There
%% is no limit to the number of on-demand backups that can be taken.
%%
%% When you create an on-demand backup, a time marker of the request is
%% cataloged, and
%% the backup is created asynchronously, by applying all changes until the
%% time of the
%% request to the last full table snapshot. Backup requests are processed
%% instantaneously
%% and become available for restore within minutes.
%%
%% You can call `CreateBackup' at a maximum rate of 50 times per
%% second.
%%
%% All backups in DynamoDB work without consuming any provisioned throughput
%% on the
%% table.
%%
%% If you submit a backup request on 2018-12-14 at 14:25:00, the backup is
%% guaranteed to
%% contain all data committed to the table up to 14:24:00, and data committed
%% after
%% 14:26:00 will not be. The backup might contain data modifications made
%% between 14:24:00
%% and 14:26:00. On-demand backup does not support causal consistency.
%%
%% Along with data, the following are also included on the backups:
%%
%% Global secondary indexes (GSIs)
%%
%% Local secondary indexes (LSIs)
%%
%% Streams
%%
%% Provisioned read and write capacity
-spec create_backup(aws_client:aws_client(), create_backup_input()) ->
    {ok, create_backup_output(), tuple()} |
    {error, any()} |
    {error, create_backup_errors(), tuple()}.
create_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_backup(Client, Input, []).

-spec create_backup(aws_client:aws_client(), create_backup_input(), proplists:proplist()) ->
    {ok, create_backup_output(), tuple()} |
    {error, any()} |
    {error, create_backup_errors(), tuple()}.
create_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBackup">>, Input, Options).

%% @doc Creates a global table from an existing table.
%%
%% A global table creates a replication
%% relationship between two or more DynamoDB tables with the same table name
%% in the
%% provided Regions.
%%
%% This documentation is for version 2017.11.29 (Legacy) of global tables,
%% which should be avoided for new global tables. Customers should use Global
%% Tables version 2019.11.21 (Current):
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
%% when possible, because it provides greater flexibility, higher efficiency,
%% and consumes less write capacity than 2017.11.29 (Legacy).
%%
%% To determine which version you're using, see Determining the global
%% table version you are using:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html.
%% To update existing global tables from version 2017.11.29 (Legacy) to
%% version 2019.11.21 (Current), see Upgrading global tables:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html.
%%
%% If you want to add a new replica table to a global table, each of the
%% following
%% conditions must be true:
%%
%% The table must have the same primary key as all of the other replicas.
%%
%% The table must have the same name as all of the other replicas.
%%
%% The table must have DynamoDB Streams enabled, with the stream containing
%% both
%% the new and the old images of the item.
%%
%% None of the replica tables in the global table can contain any data.
%%
%% If global secondary indexes are specified, then the following conditions
%% must also be
%% met:
%%
%% The global secondary indexes must have the same name.
%%
%% The global secondary indexes must have the same hash key and sort key (if
%% present).
%%
%% If local secondary indexes are specified, then the following conditions
%% must also be
%% met:
%%
%% The local secondary indexes must have the same name.
%%
%% The local secondary indexes must have the same hash key and sort key (if
%% present).
%%
%% Write capacity settings should be set consistently across your replica
%% tables and
%% secondary indexes. DynamoDB strongly recommends enabling auto scaling to
%% manage the
%% write capacity settings for all of your global tables replicas and
%% indexes.
%%
%% If you prefer to manage write capacity settings manually, you should
%% provision
%% equal replicated write capacity units to your replica tables. You should
%% also
%% provision equal replicated write capacity units to matching secondary
%% indexes across
%% your global table.
-spec create_global_table(aws_client:aws_client(), create_global_table_input()) ->
    {ok, create_global_table_output(), tuple()} |
    {error, any()} |
    {error, create_global_table_errors(), tuple()}.
create_global_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_global_table(Client, Input, []).

-spec create_global_table(aws_client:aws_client(), create_global_table_input(), proplists:proplist()) ->
    {ok, create_global_table_output(), tuple()} |
    {error, any()} |
    {error, create_global_table_errors(), tuple()}.
create_global_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGlobalTable">>, Input, Options).

%% @doc The `CreateTable' operation adds a new table to your account.
%%
%% In an Amazon Web Services account, table names must be unique within each
%% Region. That is, you can
%% have two tables with same name if you create the tables in different
%% Regions.
%%
%% `CreateTable' is an asynchronous operation. Upon receiving a
%% `CreateTable' request, DynamoDB immediately returns a response with a
%% `TableStatus' of `CREATING'. After the table is created,
%% DynamoDB sets the `TableStatus' to `ACTIVE'. You can perform read
%% and write operations only on an `ACTIVE' table.
%%
%% You can optionally define secondary indexes on the new table, as part of
%% the
%% `CreateTable' operation. If you want to create multiple tables with
%% secondary indexes on them, you must create the tables sequentially. Only
%% one table with
%% secondary indexes can be in the `CREATING' state at any given time.
%%
%% You can use the `DescribeTable' action to check the table status.
-spec create_table(aws_client:aws_client(), create_table_input()) ->
    {ok, create_table_output(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_table(Client, Input, []).

-spec create_table(aws_client:aws_client(), create_table_input(), proplists:proplist()) ->
    {ok, create_table_output(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTable">>, Input, Options).

%% @doc Deletes an existing backup of a table.
%%
%% You can call `DeleteBackup' at a maximum rate of 10 times per
%% second.
-spec delete_backup(aws_client:aws_client(), delete_backup_input()) ->
    {ok, delete_backup_output(), tuple()} |
    {error, any()} |
    {error, delete_backup_errors(), tuple()}.
delete_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_backup(Client, Input, []).

-spec delete_backup(aws_client:aws_client(), delete_backup_input(), proplists:proplist()) ->
    {ok, delete_backup_output(), tuple()} |
    {error, any()} |
    {error, delete_backup_errors(), tuple()}.
delete_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBackup">>, Input, Options).

%% @doc Deletes a single item in a table by primary key.
%%
%% You can perform a conditional delete
%% operation that deletes the item if it exists, or if it has an expected
%% attribute
%% value.
%%
%% In addition to deleting an item, you can also return the item's
%% attribute values in
%% the same operation, using the `ReturnValues' parameter.
%%
%% Unless you specify conditions, the `DeleteItem' is an idempotent
%% operation;
%% running it multiple times on the same item or attribute does not
%% result in an error response.
%%
%% Conditional deletes are useful for deleting items only if specific
%% conditions are met.
%% If those conditions are met, DynamoDB performs the delete. Otherwise, the
%% item is not
%% deleted.
-spec delete_item(aws_client:aws_client(), delete_item_input()) ->
    {ok, delete_item_output(), tuple()} |
    {error, any()} |
    {error, delete_item_errors(), tuple()}.
delete_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_item(Client, Input, []).

-spec delete_item(aws_client:aws_client(), delete_item_input(), proplists:proplist()) ->
    {ok, delete_item_output(), tuple()} |
    {error, any()} |
    {error, delete_item_errors(), tuple()}.
delete_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteItem">>, Input, Options).

%% @doc Deletes the resource-based policy attached to the resource, which can
%% be a table or
%% stream.
%%
%% `DeleteResourcePolicy' is an idempotent operation; running it multiple
%% times on the same resource doesn't result in an error response,
%% unless you specify an `ExpectedRevisionId', which will then return a
%% `PolicyNotFoundException'.
%%
%% To make sure that you don't inadvertently lock yourself out of your
%% own resources,
%% the root principal in your Amazon Web Services account can perform
%% `DeleteResourcePolicy' requests, even if your resource-based policy
%% explicitly denies the root principal's access.
%%
%% `DeleteResourcePolicy' is an asynchronous operation. If you issue a
%% `GetResourcePolicy' request immediately after running the
%% `DeleteResourcePolicy' request, DynamoDB might still return
%% the deleted policy. This is because the policy for your resource might not
%% have been
%% deleted yet. Wait for a few seconds, and then try the
%% `GetResourcePolicy'
%% request again.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_input()) ->
    {ok, delete_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_input(), proplists:proplist()) ->
    {ok, delete_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc The `DeleteTable' operation deletes a table and all of its items.
%%
%% After a
%% `DeleteTable' request, the specified table is in the
%% `DELETING' state until DynamoDB completes the deletion. If the table
%% is
%% in the `ACTIVE' state, you can delete it. If a table is in
%% `CREATING' or `UPDATING' states, then DynamoDB returns a
%% `ResourceInUseException'. If the specified table does not exist,
%% DynamoDB
%% returns a `ResourceNotFoundException'. If table is already in the
%% `DELETING' state, no error is returned.
%%
%% For global tables, this operation only applies to
%% global tables using Version 2019.11.21 (Current version).
%%
%% DynamoDB might continue to accept data read and write operations, such as
%% `GetItem' and `PutItem', on a table in the
%% `DELETING' state until the table deletion is complete. For the full
%% list of table states, see TableStatus:
%% https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TableDescription.html#DDB-Type-TableDescription-TableStatus.
%%
%% When you delete a table, any indexes on that table are also deleted.
%%
%% If you have DynamoDB Streams enabled on the table, then the corresponding
%% stream on
%% that table goes into the `DISABLED' state, and the stream is
%% automatically
%% deleted after 24 hours.
%%
%% Use the `DescribeTable' action to check the status of the table.
-spec delete_table(aws_client:aws_client(), delete_table_input()) ->
    {ok, delete_table_output(), tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table(Client, Input, []).

-spec delete_table(aws_client:aws_client(), delete_table_input(), proplists:proplist()) ->
    {ok, delete_table_output(), tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTable">>, Input, Options).

%% @doc Describes an existing backup of a table.
%%
%% You can call `DescribeBackup' at a maximum rate of 10 times per
%% second.
-spec describe_backup(aws_client:aws_client(), describe_backup_input()) ->
    {ok, describe_backup_output(), tuple()} |
    {error, any()} |
    {error, describe_backup_errors(), tuple()}.
describe_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_backup(Client, Input, []).

-spec describe_backup(aws_client:aws_client(), describe_backup_input(), proplists:proplist()) ->
    {ok, describe_backup_output(), tuple()} |
    {error, any()} |
    {error, describe_backup_errors(), tuple()}.
describe_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBackup">>, Input, Options).

%% @doc Checks the status of continuous backups and point in time recovery on
%% the specified
%% table.
%%
%% Continuous backups are `ENABLED' on all tables at table creation. If
%% point in time recovery is enabled, `PointInTimeRecoveryStatus' will be
%% set to
%% ENABLED.
%%
%% After continuous backups and point in time recovery are enabled, you can
%% restore to
%% any point in time within `EarliestRestorableDateTime' and
%% `LatestRestorableDateTime'.
%%
%% `LatestRestorableDateTime' is typically 5 minutes before the current
%% time.
%% You can restore your table to any point in time in the last 35 days. You
%% can set the
%% recovery period to any value between 1 and 35 days.
%%
%% You can call `DescribeContinuousBackups' at a maximum rate of 10 times
%% per
%% second.
-spec describe_continuous_backups(aws_client:aws_client(), describe_continuous_backups_input()) ->
    {ok, describe_continuous_backups_output(), tuple()} |
    {error, any()} |
    {error, describe_continuous_backups_errors(), tuple()}.
describe_continuous_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_continuous_backups(Client, Input, []).

-spec describe_continuous_backups(aws_client:aws_client(), describe_continuous_backups_input(), proplists:proplist()) ->
    {ok, describe_continuous_backups_output(), tuple()} |
    {error, any()} |
    {error, describe_continuous_backups_errors(), tuple()}.
describe_continuous_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContinuousBackups">>, Input, Options).

%% @doc Returns information about contributor insights for a given table or
%% global secondary
%% index.
-spec describe_contributor_insights(aws_client:aws_client(), describe_contributor_insights_input()) ->
    {ok, describe_contributor_insights_output(), tuple()} |
    {error, any()} |
    {error, describe_contributor_insights_errors(), tuple()}.
describe_contributor_insights(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_contributor_insights(Client, Input, []).

-spec describe_contributor_insights(aws_client:aws_client(), describe_contributor_insights_input(), proplists:proplist()) ->
    {ok, describe_contributor_insights_output(), tuple()} |
    {error, any()} |
    {error, describe_contributor_insights_errors(), tuple()}.
describe_contributor_insights(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContributorInsights">>, Input, Options).

%% @doc Returns the regional endpoint information.
%%
%% For more information on policy permissions,
%% please see Internetwork traffic privacy:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/inter-network-traffic-privacy.html#inter-network-traffic-DescribeEndpoints.
-spec describe_endpoints(aws_client:aws_client(), describe_endpoints_request()) ->
    {ok, describe_endpoints_response(), tuple()} |
    {error, any()}.
describe_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoints(Client, Input, []).

-spec describe_endpoints(aws_client:aws_client(), describe_endpoints_request(), proplists:proplist()) ->
    {ok, describe_endpoints_response(), tuple()} |
    {error, any()}.
describe_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoints">>, Input, Options).

%% @doc Describes an existing table export.
-spec describe_export(aws_client:aws_client(), describe_export_input()) ->
    {ok, describe_export_output(), tuple()} |
    {error, any()} |
    {error, describe_export_errors(), tuple()}.
describe_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export(Client, Input, []).

-spec describe_export(aws_client:aws_client(), describe_export_input(), proplists:proplist()) ->
    {ok, describe_export_output(), tuple()} |
    {error, any()} |
    {error, describe_export_errors(), tuple()}.
describe_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExport">>, Input, Options).

%% @doc Returns information about the specified global table.
%%
%% This documentation is for version 2017.11.29 (Legacy) of global tables,
%% which should be avoided for new global tables. Customers should use Global
%% Tables version 2019.11.21 (Current):
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
%% when possible, because it provides greater flexibility, higher efficiency,
%% and consumes less write capacity than 2017.11.29 (Legacy).
%%
%% To determine which version you're using, see Determining the global
%% table version you are using:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html.
%% To update existing global tables from version 2017.11.29 (Legacy) to
%% version 2019.11.21 (Current), see Upgrading global tables:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html.
-spec describe_global_table(aws_client:aws_client(), describe_global_table_input()) ->
    {ok, describe_global_table_output(), tuple()} |
    {error, any()} |
    {error, describe_global_table_errors(), tuple()}.
describe_global_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_global_table(Client, Input, []).

-spec describe_global_table(aws_client:aws_client(), describe_global_table_input(), proplists:proplist()) ->
    {ok, describe_global_table_output(), tuple()} |
    {error, any()} |
    {error, describe_global_table_errors(), tuple()}.
describe_global_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGlobalTable">>, Input, Options).

%% @doc Describes Region-specific settings for a global table.
%%
%% This documentation is for version 2017.11.29 (Legacy) of global tables,
%% which should be avoided for new global tables. Customers should use Global
%% Tables version 2019.11.21 (Current):
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
%% when possible, because it provides greater flexibility, higher efficiency,
%% and consumes less write capacity than 2017.11.29 (Legacy).
%%
%% To determine which version you're using, see Determining the global
%% table version you are using:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html.
%% To update existing global tables from version 2017.11.29 (Legacy) to
%% version 2019.11.21 (Current), see Upgrading global tables:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html.
-spec describe_global_table_settings(aws_client:aws_client(), describe_global_table_settings_input()) ->
    {ok, describe_global_table_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_global_table_settings_errors(), tuple()}.
describe_global_table_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_global_table_settings(Client, Input, []).

-spec describe_global_table_settings(aws_client:aws_client(), describe_global_table_settings_input(), proplists:proplist()) ->
    {ok, describe_global_table_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_global_table_settings_errors(), tuple()}.
describe_global_table_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGlobalTableSettings">>, Input, Options).

%% @doc Represents the properties of the import.
-spec describe_import(aws_client:aws_client(), describe_import_input()) ->
    {ok, describe_import_output(), tuple()} |
    {error, any()} |
    {error, describe_import_errors(), tuple()}.
describe_import(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_import(Client, Input, []).

-spec describe_import(aws_client:aws_client(), describe_import_input(), proplists:proplist()) ->
    {ok, describe_import_output(), tuple()} |
    {error, any()} |
    {error, describe_import_errors(), tuple()}.
describe_import(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImport">>, Input, Options).

%% @doc Returns information about the status of Kinesis streaming.
-spec describe_kinesis_streaming_destination(aws_client:aws_client(), describe_kinesis_streaming_destination_input()) ->
    {ok, describe_kinesis_streaming_destination_output(), tuple()} |
    {error, any()} |
    {error, describe_kinesis_streaming_destination_errors(), tuple()}.
describe_kinesis_streaming_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_kinesis_streaming_destination(Client, Input, []).

-spec describe_kinesis_streaming_destination(aws_client:aws_client(), describe_kinesis_streaming_destination_input(), proplists:proplist()) ->
    {ok, describe_kinesis_streaming_destination_output(), tuple()} |
    {error, any()} |
    {error, describe_kinesis_streaming_destination_errors(), tuple()}.
describe_kinesis_streaming_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeKinesisStreamingDestination">>, Input, Options).

%% @doc Returns the current provisioned-capacity quotas for your Amazon Web
%% Services account in
%% a Region, both for the Region as a whole and for any one DynamoDB table
%% that you create
%% there.
%%
%% When you establish an Amazon Web Services account, the account has initial
%% quotas on
%% the maximum read capacity units and write capacity units that you can
%% provision across
%% all of your DynamoDB tables in a given Region. Also, there are per-table
%% quotas that apply when you create a table there. For more information, see
%% Service,
%% Account, and Table Quotas:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
%% page in the Amazon DynamoDB
%% Developer Guide.
%%
%% Although you can increase these quotas by filing a case at Amazon Web
%% Services Support Center: https://console.aws.amazon.com/support/home#/,
%% obtaining the
%% increase is not instantaneous. The `DescribeLimits' action lets you
%% write
%% code to compare the capacity you are currently using to those quotas
%% imposed by your
%% account so that you have enough time to apply for an increase before you
%% hit a
%% quota.
%%
%% For example, you could use one of the Amazon Web Services SDKs to do the
%% following:
%%
%% Call `DescribeLimits' for a particular Region to obtain your
%% current account quotas on provisioned capacity there.
%%
%% Create a variable to hold the aggregate read capacity units provisioned
%% for
%% all your tables in that Region, and one to hold the aggregate write
%% capacity
%% units. Zero them both.
%%
%% Call `ListTables' to obtain a list of all your DynamoDB
%% tables.
%%
%% For each table name listed by `ListTables', do the
%% following:
%%
%% Call `DescribeTable' with the table name.
%%
%% Use the data returned by `DescribeTable' to add the read
%% capacity units and write capacity units provisioned for the table itself
%% to your variables.
%%
%% If the table has one or more global secondary indexes (GSIs), loop
%% over these GSIs and add their provisioned capacity values to your
%% variables as well.
%%
%% Report the account quotas for that Region returned by
%% `DescribeLimits', along with the total current provisioned
%% capacity levels you have calculated.
%%
%% This will let you see whether you are getting close to your account-level
%% quotas.
%%
%% The per-table quotas apply only when you are creating a new table. They
%% restrict the
%% sum of the provisioned capacity of the new table itself and all its global
%% secondary
%% indexes.
%%
%% For existing tables and their GSIs, DynamoDB doesn't let you increase
%% provisioned
%% capacity extremely rapidly, but the only quota that applies is that the
%% aggregate
%% provisioned capacity over all your tables and GSIs cannot exceed either of
%% the
%% per-account quotas.
%%
%% `DescribeLimits' should only be called periodically. You can expect
%% throttling errors if you call it more than once in a minute.
%%
%% The `DescribeLimits' Request element has no content.
-spec describe_limits(aws_client:aws_client(), describe_limits_input()) ->
    {ok, describe_limits_output(), tuple()} |
    {error, any()} |
    {error, describe_limits_errors(), tuple()}.
describe_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_limits(Client, Input, []).

-spec describe_limits(aws_client:aws_client(), describe_limits_input(), proplists:proplist()) ->
    {ok, describe_limits_output(), tuple()} |
    {error, any()} |
    {error, describe_limits_errors(), tuple()}.
describe_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLimits">>, Input, Options).

%% @doc Returns information about the table, including the current status of
%% the table, when
%% it was created, the primary key schema, and any indexes on the table.
%%
%% For global tables, this operation only applies to global tables using
%% Version
%% 2019.11.21 (Current version).
%%
%% If you issue a `DescribeTable' request immediately after a
%% `CreateTable' request, DynamoDB might return a
%% `ResourceNotFoundException'. This is because
%% `DescribeTable' uses an eventually consistent query, and the metadata
%% for your table might not be available at that moment. Wait for a few
%% seconds, and
%% then try the `DescribeTable' request again.
-spec describe_table(aws_client:aws_client(), describe_table_input()) ->
    {ok, describe_table_output(), tuple()} |
    {error, any()} |
    {error, describe_table_errors(), tuple()}.
describe_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table(Client, Input, []).

-spec describe_table(aws_client:aws_client(), describe_table_input(), proplists:proplist()) ->
    {ok, describe_table_output(), tuple()} |
    {error, any()} |
    {error, describe_table_errors(), tuple()}.
describe_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTable">>, Input, Options).

%% @doc Describes auto scaling settings across replicas of the global table
%% at once.
%%
%% For global tables, this operation only applies to global tables using
%% Version
%% 2019.11.21 (Current version).
-spec describe_table_replica_auto_scaling(aws_client:aws_client(), describe_table_replica_auto_scaling_input()) ->
    {ok, describe_table_replica_auto_scaling_output(), tuple()} |
    {error, any()} |
    {error, describe_table_replica_auto_scaling_errors(), tuple()}.
describe_table_replica_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table_replica_auto_scaling(Client, Input, []).

-spec describe_table_replica_auto_scaling(aws_client:aws_client(), describe_table_replica_auto_scaling_input(), proplists:proplist()) ->
    {ok, describe_table_replica_auto_scaling_output(), tuple()} |
    {error, any()} |
    {error, describe_table_replica_auto_scaling_errors(), tuple()}.
describe_table_replica_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTableReplicaAutoScaling">>, Input, Options).

%% @doc Gives a description of the Time to Live (TTL) status on the specified
%% table.
-spec describe_time_to_live(aws_client:aws_client(), describe_time_to_live_input()) ->
    {ok, describe_time_to_live_output(), tuple()} |
    {error, any()} |
    {error, describe_time_to_live_errors(), tuple()}.
describe_time_to_live(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_time_to_live(Client, Input, []).

-spec describe_time_to_live(aws_client:aws_client(), describe_time_to_live_input(), proplists:proplist()) ->
    {ok, describe_time_to_live_output(), tuple()} |
    {error, any()} |
    {error, describe_time_to_live_errors(), tuple()}.
describe_time_to_live(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTimeToLive">>, Input, Options).

%% @doc Stops replication from the DynamoDB table to the Kinesis data stream.
%%
%% This
%% is done without deleting either of the resources.
-spec disable_kinesis_streaming_destination(aws_client:aws_client(), kinesis_streaming_destination_input()) ->
    {ok, kinesis_streaming_destination_output(), tuple()} |
    {error, any()} |
    {error, disable_kinesis_streaming_destination_errors(), tuple()}.
disable_kinesis_streaming_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_kinesis_streaming_destination(Client, Input, []).

-spec disable_kinesis_streaming_destination(aws_client:aws_client(), kinesis_streaming_destination_input(), proplists:proplist()) ->
    {ok, kinesis_streaming_destination_output(), tuple()} |
    {error, any()} |
    {error, disable_kinesis_streaming_destination_errors(), tuple()}.
disable_kinesis_streaming_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableKinesisStreamingDestination">>, Input, Options).

%% @doc Starts table data replication to the specified Kinesis data stream at
%% a timestamp
%% chosen during the enable workflow.
%%
%% If this operation doesn't return results immediately,
%% use DescribeKinesisStreamingDestination to check if streaming to the
%% Kinesis data stream
%% is ACTIVE.
-spec enable_kinesis_streaming_destination(aws_client:aws_client(), kinesis_streaming_destination_input()) ->
    {ok, kinesis_streaming_destination_output(), tuple()} |
    {error, any()} |
    {error, enable_kinesis_streaming_destination_errors(), tuple()}.
enable_kinesis_streaming_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_kinesis_streaming_destination(Client, Input, []).

-spec enable_kinesis_streaming_destination(aws_client:aws_client(), kinesis_streaming_destination_input(), proplists:proplist()) ->
    {ok, kinesis_streaming_destination_output(), tuple()} |
    {error, any()} |
    {error, enable_kinesis_streaming_destination_errors(), tuple()}.
enable_kinesis_streaming_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableKinesisStreamingDestination">>, Input, Options).

%% @doc This operation allows you to perform reads and singleton writes on
%% data stored in
%% DynamoDB, using PartiQL.
%%
%% For PartiQL reads (`SELECT' statement), if the total number of
%% processed
%% items exceeds the maximum dataset size limit of 1 MB, the read stops and
%% results are
%% returned to the user as a `LastEvaluatedKey' value to continue the
%% read in a
%% subsequent operation. If the filter criteria in `WHERE' clause does
%% not match
%% any data, the read will return an empty result set.
%%
%% A single `SELECT' statement response can return up to the maximum
%% number of
%% items (if using the Limit parameter) or a maximum of 1 MB of data (and
%% then apply any
%% filtering to the results using `WHERE' clause). If
%% `LastEvaluatedKey' is present in the response, you need to paginate
%% the
%% result set. If `NextToken' is present, you need to paginate the result
%% set
%% and include `NextToken'.
-spec execute_statement(aws_client:aws_client(), execute_statement_input()) ->
    {ok, execute_statement_output(), tuple()} |
    {error, any()} |
    {error, execute_statement_errors(), tuple()}.
execute_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_statement(Client, Input, []).

-spec execute_statement(aws_client:aws_client(), execute_statement_input(), proplists:proplist()) ->
    {ok, execute_statement_output(), tuple()} |
    {error, any()} |
    {error, execute_statement_errors(), tuple()}.
execute_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteStatement">>, Input, Options).

%% @doc This operation allows you to perform transactional reads or writes on
%% data stored in
%% DynamoDB, using PartiQL.
%%
%% The entire transaction must consist of either read statements or write
%% statements,
%% you cannot mix both in one transaction. The EXISTS function is an
%% exception and can
%% be used to check the condition of specific attributes of the item in a
%% similar
%% manner to `ConditionCheck' in the TransactWriteItems:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems
%% API.
-spec execute_transaction(aws_client:aws_client(), execute_transaction_input()) ->
    {ok, execute_transaction_output(), tuple()} |
    {error, any()} |
    {error, execute_transaction_errors(), tuple()}.
execute_transaction(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_transaction(Client, Input, []).

-spec execute_transaction(aws_client:aws_client(), execute_transaction_input(), proplists:proplist()) ->
    {ok, execute_transaction_output(), tuple()} |
    {error, any()} |
    {error, execute_transaction_errors(), tuple()}.
execute_transaction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteTransaction">>, Input, Options).

%% @doc Exports table data to an S3 bucket.
%%
%% The table must have point in time recovery
%% enabled, and you can export data from any time within the point in time
%% recovery
%% window.
-spec export_table_to_point_in_time(aws_client:aws_client(), export_table_to_point_in_time_input()) ->
    {ok, export_table_to_point_in_time_output(), tuple()} |
    {error, any()} |
    {error, export_table_to_point_in_time_errors(), tuple()}.
export_table_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_table_to_point_in_time(Client, Input, []).

-spec export_table_to_point_in_time(aws_client:aws_client(), export_table_to_point_in_time_input(), proplists:proplist()) ->
    {ok, export_table_to_point_in_time_output(), tuple()} |
    {error, any()} |
    {error, export_table_to_point_in_time_errors(), tuple()}.
export_table_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportTableToPointInTime">>, Input, Options).

%% @doc The `GetItem' operation returns a set of attributes for the item
%% with the
%% given primary key.
%%
%% If there is no matching item, `GetItem' does not return
%% any data and there will be no `Item' element in the response.
%%
%% `GetItem' provides an eventually consistent read by default. If your
%% application requires a strongly consistent read, set `ConsistentRead'
%% to
%% `true'. Although a strongly consistent read might take more time than
%% an
%% eventually consistent read, it always returns the last updated value.
-spec get_item(aws_client:aws_client(), get_item_input()) ->
    {ok, get_item_output(), tuple()} |
    {error, any()} |
    {error, get_item_errors(), tuple()}.
get_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_item(Client, Input, []).

-spec get_item(aws_client:aws_client(), get_item_input(), proplists:proplist()) ->
    {ok, get_item_output(), tuple()} |
    {error, any()} |
    {error, get_item_errors(), tuple()}.
get_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetItem">>, Input, Options).

%% @doc Returns the resource-based policy document attached to the resource,
%% which can be a
%% table or stream, in JSON format.
%%
%% `GetResourcePolicy' follows an
%% eventually consistent
%% :
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html
%% model. The following list
%% describes the outcomes when you issue the `GetResourcePolicy' request
%% immediately after issuing another request:
%%
%% If you issue a `GetResourcePolicy' request immediately after a
%% `PutResourcePolicy' request, DynamoDB might return a
%% `PolicyNotFoundException'.
%%
%% If you issue a `GetResourcePolicy'request immediately after a
%% `DeleteResourcePolicy' request, DynamoDB might return
%% the policy that was present before the deletion request.
%%
%% If you issue a `GetResourcePolicy' request immediately after a
%% `CreateTable' request, which includes a resource-based policy,
%% DynamoDB might return a `ResourceNotFoundException' or
%% a `PolicyNotFoundException'.
%%
%% Because `GetResourcePolicy' uses an eventually
%% consistent query, the metadata for your policy or table might not be
%% available at that moment. Wait for a few seconds, and then retry the
%% `GetResourcePolicy' request.
%%
%% After a `GetResourcePolicy' request returns a policy created using the
%% `PutResourcePolicy' request, the policy will be applied in the
%% authorization of requests to the resource. Because this process is
%% eventually
%% consistent, it will take some time to apply the policy to all requests to
%% a resource.
%% Policies that you attach while creating a table using the
%% `CreateTable'
%% request will always be applied to all requests for that table.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_input()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_input(), proplists:proplist()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Imports table data from an S3 bucket.
-spec import_table(aws_client:aws_client(), import_table_input()) ->
    {ok, import_table_output(), tuple()} |
    {error, any()} |
    {error, import_table_errors(), tuple()}.
import_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_table(Client, Input, []).

-spec import_table(aws_client:aws_client(), import_table_input(), proplists:proplist()) ->
    {ok, import_table_output(), tuple()} |
    {error, any()} |
    {error, import_table_errors(), tuple()}.
import_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportTable">>, Input, Options).

%% @doc List DynamoDB backups that are associated with an Amazon Web Services
%% account and
%% weren't made with Amazon Web Services Backup.
%%
%% To list these backups for a given table,
%% specify `TableName'. `ListBackups' returns a paginated list of
%% results with at most 1 MB worth of items in a page. You can also specify a
%% maximum
%% number of entries to be returned in a page.
%%
%% In the request, start time is inclusive, but end time is exclusive. Note
%% that these
%% boundaries are for the time at which the original backup was requested.
%%
%% You can call `ListBackups' a maximum of five times per second.
%%
%% If you want to retrieve the complete list of backups made with Amazon Web
%% Services
%% Backup, use the Amazon Web Services Backup
%% list API.:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/API_ListBackupJobs.html
-spec list_backups(aws_client:aws_client(), list_backups_input()) ->
    {ok, list_backups_output(), tuple()} |
    {error, any()} |
    {error, list_backups_errors(), tuple()}.
list_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_backups(Client, Input, []).

-spec list_backups(aws_client:aws_client(), list_backups_input(), proplists:proplist()) ->
    {ok, list_backups_output(), tuple()} |
    {error, any()} |
    {error, list_backups_errors(), tuple()}.
list_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBackups">>, Input, Options).

%% @doc Returns a list of ContributorInsightsSummary for a table and all its
%% global secondary
%% indexes.
-spec list_contributor_insights(aws_client:aws_client(), list_contributor_insights_input()) ->
    {ok, list_contributor_insights_output(), tuple()} |
    {error, any()} |
    {error, list_contributor_insights_errors(), tuple()}.
list_contributor_insights(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_contributor_insights(Client, Input, []).

-spec list_contributor_insights(aws_client:aws_client(), list_contributor_insights_input(), proplists:proplist()) ->
    {ok, list_contributor_insights_output(), tuple()} |
    {error, any()} |
    {error, list_contributor_insights_errors(), tuple()}.
list_contributor_insights(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContributorInsights">>, Input, Options).

%% @doc Lists completed exports within the past 90 days.
-spec list_exports(aws_client:aws_client(), list_exports_input()) ->
    {ok, list_exports_output(), tuple()} |
    {error, any()} |
    {error, list_exports_errors(), tuple()}.
list_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_exports(Client, Input, []).

-spec list_exports(aws_client:aws_client(), list_exports_input(), proplists:proplist()) ->
    {ok, list_exports_output(), tuple()} |
    {error, any()} |
    {error, list_exports_errors(), tuple()}.
list_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExports">>, Input, Options).

%% @doc Lists all global tables that have a replica in the specified Region.
%%
%% This documentation is for version 2017.11.29 (Legacy) of global tables,
%% which should be avoided for new global tables. Customers should use Global
%% Tables version 2019.11.21 (Current):
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
%% when possible, because it provides greater flexibility, higher efficiency,
%% and consumes less write capacity than 2017.11.29 (Legacy).
%%
%% To determine which version you're using, see Determining the global
%% table version you are using:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html.
%% To update existing global tables from version 2017.11.29 (Legacy) to
%% version 2019.11.21 (Current), see Upgrading global tables:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html.
-spec list_global_tables(aws_client:aws_client(), list_global_tables_input()) ->
    {ok, list_global_tables_output(), tuple()} |
    {error, any()} |
    {error, list_global_tables_errors(), tuple()}.
list_global_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_global_tables(Client, Input, []).

-spec list_global_tables(aws_client:aws_client(), list_global_tables_input(), proplists:proplist()) ->
    {ok, list_global_tables_output(), tuple()} |
    {error, any()} |
    {error, list_global_tables_errors(), tuple()}.
list_global_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGlobalTables">>, Input, Options).

%% @doc Lists completed imports within the past 90 days.
-spec list_imports(aws_client:aws_client(), list_imports_input()) ->
    {ok, list_imports_output(), tuple()} |
    {error, any()} |
    {error, list_imports_errors(), tuple()}.
list_imports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_imports(Client, Input, []).

-spec list_imports(aws_client:aws_client(), list_imports_input(), proplists:proplist()) ->
    {ok, list_imports_output(), tuple()} |
    {error, any()} |
    {error, list_imports_errors(), tuple()}.
list_imports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImports">>, Input, Options).

%% @doc Returns an array of table names associated with the current account
%% and endpoint.
%%
%% The
%% output from `ListTables' is paginated, with each page returning a
%% maximum of
%% 100 table names.
-spec list_tables(aws_client:aws_client(), list_tables_input()) ->
    {ok, list_tables_output(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tables(Client, Input, []).

-spec list_tables(aws_client:aws_client(), list_tables_input(), proplists:proplist()) ->
    {ok, list_tables_output(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTables">>, Input, Options).

%% @doc List all tags on an Amazon DynamoDB resource.
%%
%% You can call ListTagsOfResource up to 10
%% times per second, per account.
%%
%% For an overview on tagging DynamoDB resources, see Tagging for DynamoDB:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
%% in the Amazon DynamoDB Developer Guide.
-spec list_tags_of_resource(aws_client:aws_client(), list_tags_of_resource_input()) ->
    {ok, list_tags_of_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_of_resource_errors(), tuple()}.
list_tags_of_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_of_resource(Client, Input, []).

-spec list_tags_of_resource(aws_client:aws_client(), list_tags_of_resource_input(), proplists:proplist()) ->
    {ok, list_tags_of_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_of_resource_errors(), tuple()}.
list_tags_of_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsOfResource">>, Input, Options).

%% @doc Creates a new item, or replaces an old item with a new item.
%%
%% If an item that has the
%% same primary key as the new item already exists in the specified table,
%% the new item
%% completely replaces the existing item. You can perform a conditional put
%% operation (add
%% a new item if one with the specified primary key doesn't exist), or
%% replace an existing
%% item if it has certain attribute values. You can return the item's
%% attribute values in
%% the same operation, using the `ReturnValues' parameter.
%%
%% When you add an item, the primary key attributes are the only required
%% attributes.
%%
%% Empty String and Binary attribute values are allowed. Attribute values of
%% type String
%% and Binary must have a length greater than zero if the attribute is used
%% as a key
%% attribute for a table or index. Set type attributes cannot be empty.
%%
%% Invalid Requests with empty values will be rejected with a
%% `ValidationException' exception.
%%
%% To prevent a new item from replacing an existing item, use a conditional
%% expression that contains the `attribute_not_exists' function with the
%% name of the attribute being used as the partition key for the table. Since
%% every
%% record must contain that attribute, the `attribute_not_exists'
%% function
%% will only succeed if no matching item exists.
%%
%% For more information about `PutItem', see Working with
%% Items:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html
%% in the Amazon DynamoDB Developer Guide.
-spec put_item(aws_client:aws_client(), put_item_input()) ->
    {ok, put_item_output(), tuple()} |
    {error, any()} |
    {error, put_item_errors(), tuple()}.
put_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_item(Client, Input, []).

-spec put_item(aws_client:aws_client(), put_item_input(), proplists:proplist()) ->
    {ok, put_item_output(), tuple()} |
    {error, any()} |
    {error, put_item_errors(), tuple()}.
put_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutItem">>, Input, Options).

%% @doc Attaches a resource-based policy document to the resource, which can
%% be a table or
%% stream.
%%
%% When you attach a resource-based policy using this API, the policy
%% application
%% is
%% eventually consistent
%% :
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html.
%%
%% `PutResourcePolicy' is an idempotent operation; running it multiple
%% times
%% on the same resource using the same policy document will return the same
%% revision ID. If
%% you specify an `ExpectedRevisionId' that doesn't match the current
%% policy's
%% `RevisionId', the `PolicyNotFoundException' will be
%% returned.
%%
%% `PutResourcePolicy' is an asynchronous operation. If you issue a
%% `GetResourcePolicy' request immediately after a
%% `PutResourcePolicy' request, DynamoDB might return your
%% previous policy, if there was one, or return the
%% `PolicyNotFoundException'. This is because
%% `GetResourcePolicy' uses an eventually consistent query, and the
%% metadata for your policy or table might not be available at that moment.
%% Wait for a
%% few seconds, and then try the `GetResourcePolicy' request again.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_input()) ->
    {ok, put_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_input(), proplists:proplist()) ->
    {ok, put_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc You must provide the name of the partition key attribute and a single
%% value for that
%% attribute.
%%
%% `Query' returns all items with that partition key value.
%% Optionally, you can provide a sort key attribute and use a comparison
%% operator to refine
%% the search results.
%%
%% Use the `KeyConditionExpression' parameter to provide a specific value
%% for
%% the partition key. The `Query' operation will return all of the items
%% from
%% the table or index with that partition key value. You can optionally
%% narrow the scope of
%% the `Query' operation by specifying a sort key value and a comparison
%% operator in `KeyConditionExpression'. To further refine the
%% `Query' results, you can optionally provide a
%% `FilterExpression'. A `FilterExpression' determines which
%% items within the results should be returned to you. All of the other
%% results are
%% discarded.
%%
%% A `Query' operation always returns a result set. If no matching items
%% are
%% found, the result set will be empty. Queries that do not return results
%% consume the
%% minimum number of read capacity units for that type of read operation.
%%
%% DynamoDB calculates the number of read capacity units consumed based on
%% item
%% size, not on the amount of data that is returned to an application. The
%% number of
%% capacity units consumed will be the same whether you request all of the
%% attributes
%% (the default behavior) or just some of them (using a projection
%% expression). The
%% number will also be the same whether or not you use a
%% `FilterExpression'.
%%
%% `Query' results are always sorted by the sort key value. If the data
%% type of
%% the sort key is Number, the results are returned in numeric order;
%% otherwise, the
%% results are returned in order of UTF-8 bytes. By default, the sort order
%% is ascending.
%% To reverse the order, set the `ScanIndexForward' parameter to false.
%%
%% A single `Query' operation will read up to the maximum number of items
%% set
%% (if using the `Limit' parameter) or a maximum of 1 MB of data and then
%% apply
%% any filtering to the results using `FilterExpression'. If
%% `LastEvaluatedKey' is present in the response, you will need to
%% paginate
%% the result set. For more information, see Paginating
%% the Results:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination
%% in the Amazon DynamoDB Developer Guide.
%%
%% `FilterExpression' is applied after a `Query' finishes, but before
%% the results are returned. A `FilterExpression' cannot contain
%% partition key
%% or sort key attributes. You need to specify those attributes in the
%% `KeyConditionExpression'.
%%
%% A `Query' operation can return an empty result set and a
%% `LastEvaluatedKey' if all the items read for the page of results are
%% filtered out.
%%
%% You can query a table, a local secondary index, or a global secondary
%% index. For a
%% query on a table or on a local secondary index, you can set the
%% `ConsistentRead' parameter to `true' and obtain a strongly
%% consistent result. Global secondary indexes support eventually consistent
%% reads only, so
%% do not specify `ConsistentRead' when querying a global secondary
%% index.
-spec query(aws_client:aws_client(), query_input()) ->
    {ok, query_output(), tuple()} |
    {error, any()} |
    {error, query_errors(), tuple()}.
query(Client, Input)
  when is_map(Client), is_map(Input) ->
    query(Client, Input, []).

-spec query(aws_client:aws_client(), query_input(), proplists:proplist()) ->
    {ok, query_output(), tuple()} |
    {error, any()} |
    {error, query_errors(), tuple()}.
query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Query">>, Input, Options).

%% @doc Creates a new table from an existing backup.
%%
%% Any number of users can execute up to 50
%% concurrent restores (any type of restore) in a given account.
%%
%% You can call `RestoreTableFromBackup' at a maximum rate of 10 times
%% per
%% second.
%%
%% You must manually set up the following on the restored table:
%%
%% Auto scaling policies
%%
%% IAM policies
%%
%% Amazon CloudWatch metrics and alarms
%%
%% Tags
%%
%% Stream settings
%%
%% Time to Live (TTL) settings
-spec restore_table_from_backup(aws_client:aws_client(), restore_table_from_backup_input()) ->
    {ok, restore_table_from_backup_output(), tuple()} |
    {error, any()} |
    {error, restore_table_from_backup_errors(), tuple()}.
restore_table_from_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table_from_backup(Client, Input, []).

-spec restore_table_from_backup(aws_client:aws_client(), restore_table_from_backup_input(), proplists:proplist()) ->
    {ok, restore_table_from_backup_output(), tuple()} |
    {error, any()} |
    {error, restore_table_from_backup_errors(), tuple()}.
restore_table_from_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTableFromBackup">>, Input, Options).

%% @doc Restores the specified table to the specified point in time within
%% `EarliestRestorableDateTime' and `LatestRestorableDateTime'.
%%
%% You can restore your table to any point in time in the last 35 days. You
%% can set the
%% recovery period to any value between 1 and 35 days. Any number of users
%% can execute up
%% to 50 concurrent restores (any type of restore) in a given account.
%%
%% When you restore using point in time recovery, DynamoDB restores your
%% table data to
%% the state based on the selected date and time (day:hour:minute:second) to
%% a new table.
%%
%% Along with data, the following are also included on the new restored table
%% using point
%% in time recovery:
%%
%% Global secondary indexes (GSIs)
%%
%% Local secondary indexes (LSIs)
%%
%% Provisioned read and write capacity
%%
%% Encryption settings
%%
%% All these settings come from the current settings of the source table at
%% the time of restore.
%%
%% You must manually set up the following on the restored table:
%%
%% Auto scaling policies
%%
%% IAM policies
%%
%% Amazon CloudWatch metrics and alarms
%%
%% Tags
%%
%% Stream settings
%%
%% Time to Live (TTL) settings
%%
%% Point in time recovery settings
-spec restore_table_to_point_in_time(aws_client:aws_client(), restore_table_to_point_in_time_input()) ->
    {ok, restore_table_to_point_in_time_output(), tuple()} |
    {error, any()} |
    {error, restore_table_to_point_in_time_errors(), tuple()}.
restore_table_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table_to_point_in_time(Client, Input, []).

-spec restore_table_to_point_in_time(aws_client:aws_client(), restore_table_to_point_in_time_input(), proplists:proplist()) ->
    {ok, restore_table_to_point_in_time_output(), tuple()} |
    {error, any()} |
    {error, restore_table_to_point_in_time_errors(), tuple()}.
restore_table_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTableToPointInTime">>, Input, Options).

%% @doc The `Scan' operation returns one or more items and item
%% attributes by
%% accessing every item in a table or a secondary index.
%%
%% To have DynamoDB return fewer
%% items, you can provide a `FilterExpression' operation.
%%
%% If the total size of scanned items exceeds the maximum dataset size limit
%% of 1 MB, the
%% scan completes and results are returned to the user. The
%% `LastEvaluatedKey'
%% value is also returned and the requestor can use the
%% `LastEvaluatedKey' to
%% continue the scan in a subsequent operation. Each scan response also
%% includes number of
%% items that were scanned (ScannedCount) as part of the request. If using a
%% `FilterExpression', a scan result can result in no items meeting the
%% criteria and the `Count' will result in zero. If you did not use a
%% `FilterExpression' in the scan request, then `Count' is the
%% same as `ScannedCount'.
%%
%% `Count' and `ScannedCount' only return the count of items
%% specific to a single scan request and, unless the table is less than 1MB,
%% do not
%% represent the total number of items in the table.
%%
%% A single `Scan' operation first reads up to the maximum number of
%% items set
%% (if using the `Limit' parameter) or a maximum of 1 MB of data and then
%% applies any filtering to the results if a `FilterExpression' is
%% provided. If
%% `LastEvaluatedKey' is present in the response, pagination is required
%% to
%% complete the full table scan. For more information, see Paginating the
%% Results:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination
%% in the Amazon DynamoDB Developer Guide.
%%
%% `Scan' operations proceed sequentially; however, for faster
%% performance on
%% a large table or secondary index, applications can request a parallel
%% `Scan'
%% operation by providing the `Segment' and `TotalSegments'
%% parameters. For more information, see Parallel
%% Scan:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan
%% in the Amazon DynamoDB Developer Guide.
%%
%% By default, a `Scan' uses eventually consistent reads when accessing
%% the
%% items in a table. Therefore, the results from an eventually consistent
%% `Scan'
%% may not include the latest item changes at the time the scan iterates
%% through each item
%% in the table. If you require a strongly consistent read of each item as
%% the scan
%% iterates through the items in the table, you can set the
%% `ConsistentRead'
%% parameter to true. Strong consistency only relates to the consistency of
%% the read at the
%% item level.
%%
%% DynamoDB does not provide snapshot isolation for a scan operation when the
%% `ConsistentRead' parameter is set to true. Thus, a DynamoDB scan
%% operation does not guarantee that all reads in a scan see a consistent
%% snapshot of
%% the table when the scan operation was requested.
-spec scan(aws_client:aws_client(), scan_input()) ->
    {ok, scan_output(), tuple()} |
    {error, any()} |
    {error, scan_errors(), tuple()}.
scan(Client, Input)
  when is_map(Client), is_map(Input) ->
    scan(Client, Input, []).

-spec scan(aws_client:aws_client(), scan_input(), proplists:proplist()) ->
    {ok, scan_output(), tuple()} |
    {error, any()} |
    {error, scan_errors(), tuple()}.
scan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Scan">>, Input, Options).

%% @doc Associate a set of tags with an Amazon DynamoDB resource.
%%
%% You can then activate these
%% user-defined tags so that they appear on the Billing and Cost Management
%% console for
%% cost allocation tracking. You can call TagResource up to five times per
%% second, per
%% account.
%%
%% `TagResource' is an asynchronous operation. If you issue a
%% `ListTagsOfResource' request immediately after a
%% `TagResource' request, DynamoDB might return your
%% previous tag set, if there was one, or an empty tag set. This is because
%% `ListTagsOfResource' uses an eventually consistent query, and the
%% metadata for your tags or table might not be available at that moment.
%% Wait for
%% a few seconds, and then try the `ListTagsOfResource' request
%% again.
%%
%% The application or removal of tags using `TagResource' and
%% `UntagResource' APIs is eventually consistent.
%% `ListTagsOfResource' API will only reflect the changes after a
%% few seconds.
%%
%% For an overview on tagging DynamoDB resources, see Tagging for DynamoDB:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
%% in the Amazon DynamoDB Developer Guide.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc
%% `TransactGetItems' is a synchronous operation that atomically
%% retrieves
%% multiple items from one or more tables (but not from indexes) in a single
%% account and
%% Region.
%%
%% A `TransactGetItems' call can contain up to 100
%% `TransactGetItem' objects, each of which contains a `Get'
%% structure that specifies an item to retrieve from a table in the account
%% and Region. A
%% call to `TransactGetItems' cannot retrieve items from tables in more
%% than one
%% Amazon Web Services account or Region. The aggregate size of the items in
%% the
%% transaction cannot exceed 4 MB.
%%
%% DynamoDB rejects the entire `TransactGetItems' request if any of
%% the following is true:
%%
%% A conflicting operation is in the process of updating an item to be
%% read.
%%
%% There is insufficient provisioned capacity for the transaction to be
%% completed.
%%
%% There is a user error, such as an invalid data format.
%%
%% The aggregate size of the items in the transaction exceeded 4 MB.
-spec transact_get_items(aws_client:aws_client(), transact_get_items_input()) ->
    {ok, transact_get_items_output(), tuple()} |
    {error, any()} |
    {error, transact_get_items_errors(), tuple()}.
transact_get_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    transact_get_items(Client, Input, []).

-spec transact_get_items(aws_client:aws_client(), transact_get_items_input(), proplists:proplist()) ->
    {ok, transact_get_items_output(), tuple()} |
    {error, any()} |
    {error, transact_get_items_errors(), tuple()}.
transact_get_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TransactGetItems">>, Input, Options).

%% @doc
%% `TransactWriteItems' is a synchronous write operation that groups up
%% to 100
%% action requests.
%%
%% These actions can target items in different tables, but not in
%% different Amazon Web Services accounts or Regions, and no two actions can
%% target the same
%% item. For example, you cannot both `ConditionCheck' and `Update'
%% the same item. The aggregate size of the items in the transaction cannot
%% exceed 4
%% MB.
%%
%% The actions are completed atomically so that either all of them succeed,
%% or all of
%% them fail. They are defined by the following objects:
%%
%% `Put'  —   Initiates a `PutItem'
%% operation to write a new item. This structure specifies the primary key of
%% the
%% item to be written, the name of the table to write it in, an optional
%% condition
%% expression that must be satisfied for the write to succeed, a list of the
%% item's
%% attributes, and a field indicating whether to retrieve the item's
%% attributes if
%% the condition is not met.
%%
%% `Update'  —   Initiates an `UpdateItem'
%% operation to update an existing item. This structure specifies the primary
%% key
%% of the item to be updated, the name of the table where it resides, an
%% optional
%% condition expression that must be satisfied for the update to succeed, an
%% expression that defines one or more attributes to be updated, and a field
%% indicating whether to retrieve the item's attributes if the condition
%% is not
%% met.
%%
%% `Delete'  —   Initiates a `DeleteItem'
%% operation to delete an existing item. This structure specifies the primary
%% key
%% of the item to be deleted, the name of the table where it resides, an
%% optional
%% condition expression that must be satisfied for the deletion to succeed,
%% and a
%% field indicating whether to retrieve the item's attributes if the
%% condition is
%% not met.
%%
%% `ConditionCheck'  —   Applies a condition to an item
%% that is not being modified by the transaction. This structure specifies
%% the
%% primary key of the item to be checked, the name of the table where it
%% resides, a
%% condition expression that must be satisfied for the transaction to
%% succeed, and
%% a field indicating whether to retrieve the item's attributes if the
%% condition is
%% not met.
%%
%% DynamoDB rejects the entire `TransactWriteItems' request if any of the
%% following is true:
%%
%% A condition in one of the condition expressions is not met.
%%
%% An ongoing operation is in the process of updating the same item.
%%
%% There is insufficient provisioned capacity for the transaction to be
%% completed.
%%
%% An item size becomes too large (bigger than 400 KB), a local secondary
%% index
%% (LSI) becomes too large, or a similar validation error occurs because of
%% changes
%% made by the transaction.
%%
%% The aggregate size of the items in the transaction exceeds 4 MB.
%%
%% There is a user error, such as an invalid data format.
-spec transact_write_items(aws_client:aws_client(), transact_write_items_input()) ->
    {ok, transact_write_items_output(), tuple()} |
    {error, any()} |
    {error, transact_write_items_errors(), tuple()}.
transact_write_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    transact_write_items(Client, Input, []).

-spec transact_write_items(aws_client:aws_client(), transact_write_items_input(), proplists:proplist()) ->
    {ok, transact_write_items_output(), tuple()} |
    {error, any()} |
    {error, transact_write_items_errors(), tuple()}.
transact_write_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TransactWriteItems">>, Input, Options).

%% @doc Removes the association of tags from an Amazon DynamoDB resource.
%%
%% You can call
%% `UntagResource' up to five times per second, per account.
%%
%% `UntagResource' is an asynchronous operation. If you issue a
%% `ListTagsOfResource' request immediately after an
%% `UntagResource' request, DynamoDB might return your
%% previous tag set, if there was one, or an empty tag set. This is because
%% `ListTagsOfResource' uses an eventually consistent query, and the
%% metadata for your tags or table might not be available at that moment.
%% Wait for
%% a few seconds, and then try the `ListTagsOfResource' request
%% again.
%%
%% The application or removal of tags using `TagResource' and
%% `UntagResource' APIs is eventually consistent.
%% `ListTagsOfResource' API will only reflect the changes after a
%% few seconds.
%%
%% For an overview on tagging DynamoDB resources, see Tagging for DynamoDB:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
%% in the Amazon DynamoDB Developer Guide.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc
%% `UpdateContinuousBackups' enables or disables point in time recovery
%% for
%% the specified table.
%%
%% A successful `UpdateContinuousBackups' call returns the
%% current `ContinuousBackupsDescription'. Continuous backups are
%% `ENABLED' on all tables at table creation. If point in time recovery
%% is
%% enabled, `PointInTimeRecoveryStatus' will be set to ENABLED.
%%
%% Once continuous backups and point in time recovery are enabled, you can
%% restore to
%% any point in time within `EarliestRestorableDateTime' and
%% `LatestRestorableDateTime'.
%%
%% `LatestRestorableDateTime' is typically 5 minutes before the current
%% time.
%% You can restore your table to any point in time in the last 35 days. You
%% can set the
%% `RecoveryPeriodInDays' to any value between 1 and 35 days.
-spec update_continuous_backups(aws_client:aws_client(), update_continuous_backups_input()) ->
    {ok, update_continuous_backups_output(), tuple()} |
    {error, any()} |
    {error, update_continuous_backups_errors(), tuple()}.
update_continuous_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_continuous_backups(Client, Input, []).

-spec update_continuous_backups(aws_client:aws_client(), update_continuous_backups_input(), proplists:proplist()) ->
    {ok, update_continuous_backups_output(), tuple()} |
    {error, any()} |
    {error, update_continuous_backups_errors(), tuple()}.
update_continuous_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContinuousBackups">>, Input, Options).

%% @doc Updates the status for contributor insights for a specific table or
%% index.
%%
%% CloudWatch
%% Contributor Insights for DynamoDB graphs display the partition key and (if
%% applicable)
%% sort key of frequently accessed items and frequently throttled items in
%% plaintext. If
%% you require the use of Amazon Web Services Key Management Service (KMS) to
%% encrypt this
%% table’s partition key and sort key data with an Amazon Web Services
%% managed key or
%% customer managed key, you should not enable CloudWatch Contributor
%% Insights for DynamoDB
%% for this table.
-spec update_contributor_insights(aws_client:aws_client(), update_contributor_insights_input()) ->
    {ok, update_contributor_insights_output(), tuple()} |
    {error, any()} |
    {error, update_contributor_insights_errors(), tuple()}.
update_contributor_insights(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_contributor_insights(Client, Input, []).

-spec update_contributor_insights(aws_client:aws_client(), update_contributor_insights_input(), proplists:proplist()) ->
    {ok, update_contributor_insights_output(), tuple()} |
    {error, any()} |
    {error, update_contributor_insights_errors(), tuple()}.
update_contributor_insights(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContributorInsights">>, Input, Options).

%% @doc Adds or removes replicas in the specified global table.
%%
%% The global table must already
%% exist to be able to use this operation. Any replica to be added must be
%% empty, have the
%% same name as the global table, have the same key schema, have DynamoDB
%% Streams enabled,
%% and have the same provisioned and maximum write capacity units.
%%
%% This documentation is for version 2017.11.29 (Legacy) of global tables,
%% which should be avoided for new global tables. Customers should use Global
%% Tables version 2019.11.21 (Current):
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
%% when possible, because it provides greater flexibility, higher efficiency,
%% and consumes less write capacity than 2017.11.29 (Legacy).
%%
%% To determine which version you're using, see Determining the global
%% table version you are using:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html.
%% To update existing global tables from version 2017.11.29 (Legacy) to
%% version 2019.11.21 (Current), see Upgrading global tables:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html.
%%
%% For global tables, this operation only applies to global tables using
%% Version
%% 2019.11.21 (Current version). If you are using global tables Version
%% 2019.11.21:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
%% you can use UpdateTable:
%% https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_UpdateTable.html
%% instead.
%%
%% Although you can use `UpdateGlobalTable' to add replicas and remove
%% replicas in a single request, for simplicity we recommend that you issue
%% separate
%% requests for adding or removing replicas.
%%
%% If global secondary indexes are specified, then the following conditions
%% must also be
%% met:
%%
%% The global secondary indexes must have the same name.
%%
%% The global secondary indexes must have the same hash key and sort key (if
%% present).
%%
%% The global secondary indexes must have the same provisioned and maximum
%% write
%% capacity units.
-spec update_global_table(aws_client:aws_client(), update_global_table_input()) ->
    {ok, update_global_table_output(), tuple()} |
    {error, any()} |
    {error, update_global_table_errors(), tuple()}.
update_global_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_global_table(Client, Input, []).

-spec update_global_table(aws_client:aws_client(), update_global_table_input(), proplists:proplist()) ->
    {ok, update_global_table_output(), tuple()} |
    {error, any()} |
    {error, update_global_table_errors(), tuple()}.
update_global_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGlobalTable">>, Input, Options).

%% @doc Updates settings for a global table.
%%
%% This documentation is for version 2017.11.29 (Legacy) of global tables,
%% which should be avoided for new global tables. Customers should use Global
%% Tables version 2019.11.21 (Current):
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
%% when possible, because it provides greater flexibility, higher efficiency,
%% and consumes less write capacity than 2017.11.29 (Legacy).
%%
%% To determine which version you're using, see Determining the global
%% table version you are using:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html.
%% To update existing global tables from version 2017.11.29 (Legacy) to
%% version 2019.11.21 (Current), see Upgrading global tables:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html.
-spec update_global_table_settings(aws_client:aws_client(), update_global_table_settings_input()) ->
    {ok, update_global_table_settings_output(), tuple()} |
    {error, any()} |
    {error, update_global_table_settings_errors(), tuple()}.
update_global_table_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_global_table_settings(Client, Input, []).

-spec update_global_table_settings(aws_client:aws_client(), update_global_table_settings_input(), proplists:proplist()) ->
    {ok, update_global_table_settings_output(), tuple()} |
    {error, any()} |
    {error, update_global_table_settings_errors(), tuple()}.
update_global_table_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGlobalTableSettings">>, Input, Options).

%% @doc Edits an existing item's attributes, or adds a new item to the
%% table if it does not
%% already exist.
%%
%% You can put, delete, or add attribute values. You can also perform a
%% conditional update on an existing item (insert a new attribute name-value
%% pair if it
%% doesn't exist, or replace an existing name-value pair if it has
%% certain expected
%% attribute values).
%%
%% You can also return the item's attribute values in the same
%% `UpdateItem'
%% operation using the `ReturnValues' parameter.
-spec update_item(aws_client:aws_client(), update_item_input()) ->
    {ok, update_item_output(), tuple()} |
    {error, any()} |
    {error, update_item_errors(), tuple()}.
update_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_item(Client, Input, []).

-spec update_item(aws_client:aws_client(), update_item_input(), proplists:proplist()) ->
    {ok, update_item_output(), tuple()} |
    {error, any()} |
    {error, update_item_errors(), tuple()}.
update_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateItem">>, Input, Options).

%% @doc The command to update the Kinesis stream destination.
-spec update_kinesis_streaming_destination(aws_client:aws_client(), update_kinesis_streaming_destination_input()) ->
    {ok, update_kinesis_streaming_destination_output(), tuple()} |
    {error, any()} |
    {error, update_kinesis_streaming_destination_errors(), tuple()}.
update_kinesis_streaming_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_kinesis_streaming_destination(Client, Input, []).

-spec update_kinesis_streaming_destination(aws_client:aws_client(), update_kinesis_streaming_destination_input(), proplists:proplist()) ->
    {ok, update_kinesis_streaming_destination_output(), tuple()} |
    {error, any()} |
    {error, update_kinesis_streaming_destination_errors(), tuple()}.
update_kinesis_streaming_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateKinesisStreamingDestination">>, Input, Options).

%% @doc Modifies the provisioned throughput settings, global secondary
%% indexes, or DynamoDB
%% Streams settings for a given table.
%%
%% For global tables, this operation only applies to global tables using
%% Version
%% 2019.11.21 (Current version).
%%
%% You can only perform one of the following operations at once:
%%
%% Modify the provisioned throughput settings of the table.
%%
%% Remove a global secondary index from the table.
%%
%% Create a new global secondary index on the table. After the index begins
%% backfilling, you can use `UpdateTable' to perform other
%% operations.
%%
%% `UpdateTable' is an asynchronous operation; while it's executing,
%% the table
%% status changes from `ACTIVE' to `UPDATING'. While it's
%% `UPDATING', you can't issue another `UpdateTable' request.
%% When the table returns to the `ACTIVE' state, the `UpdateTable'
%% operation is complete.
-spec update_table(aws_client:aws_client(), update_table_input()) ->
    {ok, update_table_output(), tuple()} |
    {error, any()} |
    {error, update_table_errors(), tuple()}.
update_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table(Client, Input, []).

-spec update_table(aws_client:aws_client(), update_table_input(), proplists:proplist()) ->
    {ok, update_table_output(), tuple()} |
    {error, any()} |
    {error, update_table_errors(), tuple()}.
update_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTable">>, Input, Options).

%% @doc Updates auto scaling settings on your global tables at once.
%%
%% For global tables, this operation only applies to global tables using
%% Version
%% 2019.11.21 (Current version).
-spec update_table_replica_auto_scaling(aws_client:aws_client(), update_table_replica_auto_scaling_input()) ->
    {ok, update_table_replica_auto_scaling_output(), tuple()} |
    {error, any()} |
    {error, update_table_replica_auto_scaling_errors(), tuple()}.
update_table_replica_auto_scaling(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table_replica_auto_scaling(Client, Input, []).

-spec update_table_replica_auto_scaling(aws_client:aws_client(), update_table_replica_auto_scaling_input(), proplists:proplist()) ->
    {ok, update_table_replica_auto_scaling_output(), tuple()} |
    {error, any()} |
    {error, update_table_replica_auto_scaling_errors(), tuple()}.
update_table_replica_auto_scaling(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTableReplicaAutoScaling">>, Input, Options).

%% @doc The `UpdateTimeToLive' method enables or disables Time to Live
%% (TTL) for
%% the specified table.
%%
%% A successful `UpdateTimeToLive' call returns the current
%% `TimeToLiveSpecification'. It can take up to one hour for the change
%% to
%% fully process. Any additional `UpdateTimeToLive' calls for the same
%% table
%% during this one hour duration result in a `ValidationException'.
%%
%% TTL compares the current time in epoch time format to the time stored in
%% the TTL
%% attribute of an item. If the epoch time value stored in the attribute is
%% less than the
%% current time, the item is marked as expired and subsequently deleted.
%%
%% The epoch time format is the number of seconds elapsed since 12:00:00 AM
%% January
%% 1, 1970 UTC.
%%
%% DynamoDB deletes expired items on a best-effort basis to ensure
%% availability of
%% throughput for other data operations.
%%
%% DynamoDB typically deletes expired items within two days of expiration.
%% The exact
%% duration within which an item gets deleted after expiration is specific to
%% the
%% nature of the workload. Items that have expired and not been deleted will
%% still show
%% up in reads, queries, and scans.
%%
%% As items are deleted, they are removed from any local secondary index and
%% global
%% secondary index immediately in the same eventually consistent way as a
%% standard delete
%% operation.
%%
%% For more information, see Time To Live:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html
%% in the
%% Amazon DynamoDB Developer Guide.
-spec update_time_to_live(aws_client:aws_client(), update_time_to_live_input()) ->
    {ok, update_time_to_live_output(), tuple()} |
    {error, any()} |
    {error, update_time_to_live_errors(), tuple()}.
update_time_to_live(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_time_to_live(Client, Input, []).

-spec update_time_to_live(aws_client:aws_client(), update_time_to_live_input(), proplists:proplist()) ->
    {ok, update_time_to_live_output(), tuple()} |
    {error, any()} |
    {error, update_time_to_live_errors(), tuple()}.
update_time_to_live(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTimeToLive">>, Input, Options).

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
    Client1 = Client#{service => <<"dynamodb">>},
    Host = build_host(<<"dynamodb">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"DynamoDB_20120810.", Action/binary>>}
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
