%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc An Amazon S3 table represents a structured dataset consisting of
%% tabular data in Apache Parquet: https://parquet.apache.org/docs/ format
%% and related metadata.
%%
%% This data is stored inside an S3 table as a subresource. All tables in a
%% table bucket are stored in the Apache Iceberg:
%% https://iceberg.apache.org/docs/latest/ table format. Through integration
%% with the Amazon Web Services Glue Data Catalog:
%% https://docs.aws.amazon.com/glue/latest/dg/catalog-and-crawler.html you
%% can interact with your tables using Amazon Web Services analytics
%% services, such as Amazon Athena: https://docs.aws.amazon.com/athena/ and
%% Amazon Redshift: https://docs.aws.amazon.com/redshift/. Amazon S3 manages
%% maintenance of your tables through automatic file compaction and snapshot
%% management. For more information, see Amazon S3 table buckets:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html.
-module(aws_s3tables).

-export([complete_table_migration/2,
         complete_table_migration/3,
         create_namespace/3,
         create_namespace/4,
         create_table/4,
         create_table/5,
         create_table_bucket/2,
         create_table_bucket/3,
         delete_namespace/4,
         delete_namespace/5,
         delete_table/5,
         delete_table/6,
         delete_table_bucket/3,
         delete_table_bucket/4,
         delete_table_bucket_encryption/3,
         delete_table_bucket_encryption/4,
         delete_table_bucket_metrics_configuration/3,
         delete_table_bucket_metrics_configuration/4,
         delete_table_bucket_policy/3,
         delete_table_bucket_policy/4,
         delete_table_bucket_replication/2,
         delete_table_bucket_replication/3,
         delete_table_policy/5,
         delete_table_policy/6,
         delete_table_replication/2,
         delete_table_replication/3,
         get_namespace/3,
         get_namespace/5,
         get_namespace/6,
         get_table/1,
         get_table/3,
         get_table/4,
         get_table_bucket/2,
         get_table_bucket/4,
         get_table_bucket/5,
         get_table_bucket_encryption/2,
         get_table_bucket_encryption/4,
         get_table_bucket_encryption/5,
         get_table_bucket_logging/2,
         get_table_bucket_logging/4,
         get_table_bucket_logging/5,
         get_table_bucket_maintenance_configuration/2,
         get_table_bucket_maintenance_configuration/4,
         get_table_bucket_maintenance_configuration/5,
         get_table_bucket_metrics_configuration/2,
         get_table_bucket_metrics_configuration/4,
         get_table_bucket_metrics_configuration/5,
         get_table_bucket_policy/2,
         get_table_bucket_policy/4,
         get_table_bucket_policy/5,
         get_table_bucket_replication/2,
         get_table_bucket_replication/4,
         get_table_bucket_replication/5,
         get_table_bucket_storage_class/2,
         get_table_bucket_storage_class/4,
         get_table_bucket_storage_class/5,
         get_table_encryption/4,
         get_table_encryption/6,
         get_table_encryption/7,
         get_table_maintenance_configuration/4,
         get_table_maintenance_configuration/6,
         get_table_maintenance_configuration/7,
         get_table_maintenance_job_status/4,
         get_table_maintenance_job_status/6,
         get_table_maintenance_job_status/7,
         get_table_metadata_location/4,
         get_table_metadata_location/6,
         get_table_metadata_location/7,
         get_table_migration/1,
         get_table_migration/3,
         get_table_migration/4,
         get_table_policy/4,
         get_table_policy/6,
         get_table_policy/7,
         get_table_record_expiration_configuration/2,
         get_table_record_expiration_configuration/4,
         get_table_record_expiration_configuration/5,
         get_table_record_expiration_job_status/2,
         get_table_record_expiration_job_status/4,
         get_table_record_expiration_job_status/5,
         get_table_replication/2,
         get_table_replication/4,
         get_table_replication/5,
         get_table_replication_status/2,
         get_table_replication_status/4,
         get_table_replication_status/5,
         get_table_storage_class/4,
         get_table_storage_class/6,
         get_table_storage_class/7,
         list_namespaces/2,
         list_namespaces/4,
         list_namespaces/5,
         list_table_buckets/1,
         list_table_buckets/3,
         list_table_buckets/4,
         list_table_migrations/1,
         list_table_migrations/3,
         list_table_migrations/4,
         list_tables/2,
         list_tables/4,
         list_tables/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_table_bucket_encryption/3,
         put_table_bucket_encryption/4,
         put_table_bucket_logging/3,
         put_table_bucket_logging/4,
         put_table_bucket_maintenance_configuration/4,
         put_table_bucket_maintenance_configuration/5,
         put_table_bucket_metrics_configuration/3,
         put_table_bucket_metrics_configuration/4,
         put_table_bucket_policy/3,
         put_table_bucket_policy/4,
         put_table_bucket_replication/2,
         put_table_bucket_replication/3,
         put_table_bucket_storage_class/3,
         put_table_bucket_storage_class/4,
         put_table_maintenance_configuration/6,
         put_table_maintenance_configuration/7,
         put_table_policy/5,
         put_table_policy/6,
         put_table_record_expiration_configuration/2,
         put_table_record_expiration_configuration/3,
         put_table_replication/2,
         put_table_replication/3,
         rename_table/5,
         rename_table/6,
         start_table_migration/2,
         start_table_migration/3,
         sync_table_migration/2,
         sync_table_migration/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_table_metadata_location/5,
         update_table_metadata_location/6,
         update_table_migration/2,
         update_table_migration/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% complete_table_migration_request() :: #{
%%   <<"tableARN">> := string()
%% }
-type complete_table_migration_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_namespace_request() :: #{
%%   <<"namespace">> := list(string())
%% }
-type create_namespace_request() :: #{binary() => any()}.


%% Example:
%% create_namespace_response() :: #{
%%   <<"namespace">> => list(string()),
%%   <<"tableBucketARN">> => string()
%% }
-type create_namespace_response() :: #{binary() => any()}.


%% Example:
%% create_table_bucket_request() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"name">> := string(),
%%   <<"storageClassConfiguration">> => storage_class_configuration(),
%%   <<"tags">> => map()
%% }
-type create_table_bucket_request() :: #{binary() => any()}.


%% Example:
%% create_table_bucket_response() :: #{
%%   <<"arn">> => string()
%% }
-type create_table_bucket_response() :: #{binary() => any()}.


%% Example:
%% create_table_request() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"format">> := list(any()),
%%   <<"metadata">> => list(),
%%   <<"name">> := string(),
%%   <<"storageClassConfiguration">> => storage_class_configuration(),
%%   <<"tags">> => map()
%% }
-type create_table_request() :: #{binary() => any()}.


%% Example:
%% create_table_response() :: #{
%%   <<"tableARN">> => string(),
%%   <<"versionToken">> => string()
%% }
-type create_table_response() :: #{binary() => any()}.


%% Example:
%% data_migration_overview() :: #{
%%   <<"maintenanceSettings">> => maintenance_settings(),
%%   <<"migrationPolicies">> => migration_policies()
%% }
-type data_migration_overview() :: #{binary() => any()}.


%% Example:
%% data_migration_settings() :: #{
%%   <<"maintenanceSettings">> => maintenance_settings(),
%%   <<"migrationPolicies">> => migration_policies()
%% }
-type data_migration_settings() :: #{binary() => any()}.

%% Example:
%% delete_namespace_request() :: #{}
-type delete_namespace_request() :: #{}.

%% Example:
%% delete_table_bucket_encryption_request() :: #{}
-type delete_table_bucket_encryption_request() :: #{}.

%% Example:
%% delete_table_bucket_metrics_configuration_request() :: #{}
-type delete_table_bucket_metrics_configuration_request() :: #{}.

%% Example:
%% delete_table_bucket_policy_request() :: #{}
-type delete_table_bucket_policy_request() :: #{}.


%% Example:
%% delete_table_bucket_replication_request() :: #{
%%   <<"tableBucketARN">> := string(),
%%   <<"versionToken">> => string()
%% }
-type delete_table_bucket_replication_request() :: #{binary() => any()}.

%% Example:
%% delete_table_bucket_request() :: #{}
-type delete_table_bucket_request() :: #{}.

%% Example:
%% delete_table_policy_request() :: #{}
-type delete_table_policy_request() :: #{}.


%% Example:
%% delete_table_replication_request() :: #{
%%   <<"tableArn">> := string(),
%%   <<"versionToken">> := [string()]
%% }
-type delete_table_replication_request() :: #{binary() => any()}.


%% Example:
%% delete_table_request() :: #{
%%   <<"versionToken">> => string()
%% }
-type delete_table_request() :: #{binary() => any()}.


%% Example:
%% destination_table() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"icebergSortOrder">> => iceberg_sort_order(),
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"properties">> => migration_table_properties(),
%%   <<"schema">> => iceberg_schema_v2(),
%%   <<"storageClassConfiguration">> => storage_class_configuration(),
%%   <<"tableBucketARN">> => string(),
%%   <<"tags">> => map()
%% }
-type destination_table() :: #{binary() => any()}.


%% Example:
%% encryption_configuration() :: #{
%%   <<"kmsKeyArn">> => [string()],
%%   <<"sseAlgorithm">> => list(any())
%% }
-type encryption_configuration() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.

%% Example:
%% get_namespace_request() :: #{}
-type get_namespace_request() :: #{}.


%% Example:
%% get_namespace_response() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"namespace">> => list(string()),
%%   <<"namespaceId">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"tableBucketId">> => string()
%% }
-type get_namespace_response() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_encryption_request() :: #{}
-type get_table_bucket_encryption_request() :: #{}.


%% Example:
%% get_table_bucket_encryption_response() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration()
%% }
-type get_table_bucket_encryption_response() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_logging_request() :: #{}
-type get_table_bucket_logging_request() :: #{}.


%% Example:
%% get_table_bucket_logging_response() :: #{
%%   <<"tableBucketLoggingStatus">> => table_bucket_logging_status()
%% }
-type get_table_bucket_logging_response() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_maintenance_configuration_request() :: #{}
-type get_table_bucket_maintenance_configuration_request() :: #{}.


%% Example:
%% get_table_bucket_maintenance_configuration_response() :: #{
%%   <<"configuration">> => map(),
%%   <<"tableBucketARN">> => string()
%% }
-type get_table_bucket_maintenance_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_metrics_configuration_request() :: #{}
-type get_table_bucket_metrics_configuration_request() :: #{}.


%% Example:
%% get_table_bucket_metrics_configuration_response() :: #{
%%   <<"id">> => [string()],
%%   <<"tableBucketARN">> => string()
%% }
-type get_table_bucket_metrics_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_policy_request() :: #{}
-type get_table_bucket_policy_request() :: #{}.


%% Example:
%% get_table_bucket_policy_response() :: #{
%%   <<"resourcePolicy">> => string()
%% }
-type get_table_bucket_policy_response() :: #{binary() => any()}.


%% Example:
%% get_table_bucket_replication_request() :: #{
%%   <<"tableBucketARN">> := string()
%% }
-type get_table_bucket_replication_request() :: #{binary() => any()}.


%% Example:
%% get_table_bucket_replication_response() :: #{
%%   <<"configuration">> => table_bucket_replication_configuration(),
%%   <<"versionToken">> => string()
%% }
-type get_table_bucket_replication_response() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_request() :: #{}
-type get_table_bucket_request() :: #{}.


%% Example:
%% get_table_bucket_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"tableBucketId">> => string(),
%%   <<"type">> => list(any())
%% }
-type get_table_bucket_response() :: #{binary() => any()}.

%% Example:
%% get_table_bucket_storage_class_request() :: #{}
-type get_table_bucket_storage_class_request() :: #{}.


%% Example:
%% get_table_bucket_storage_class_response() :: #{
%%   <<"storageClassConfiguration">> => storage_class_configuration()
%% }
-type get_table_bucket_storage_class_response() :: #{binary() => any()}.

%% Example:
%% get_table_encryption_request() :: #{}
-type get_table_encryption_request() :: #{}.


%% Example:
%% get_table_encryption_response() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration()
%% }
-type get_table_encryption_response() :: #{binary() => any()}.

%% Example:
%% get_table_maintenance_configuration_request() :: #{}
-type get_table_maintenance_configuration_request() :: #{}.


%% Example:
%% get_table_maintenance_configuration_response() :: #{
%%   <<"configuration">> => map(),
%%   <<"tableARN">> => string()
%% }
-type get_table_maintenance_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_table_maintenance_job_status_request() :: #{}
-type get_table_maintenance_job_status_request() :: #{}.


%% Example:
%% get_table_maintenance_job_status_response() :: #{
%%   <<"status">> => map(),
%%   <<"tableARN">> => string()
%% }
-type get_table_maintenance_job_status_response() :: #{binary() => any()}.

%% Example:
%% get_table_metadata_location_request() :: #{}
-type get_table_metadata_location_request() :: #{}.


%% Example:
%% get_table_metadata_location_response() :: #{
%%   <<"metadataLocation">> => string(),
%%   <<"versionToken">> => string(),
%%   <<"warehouseLocation">> => string()
%% }
-type get_table_metadata_location_response() :: #{binary() => any()}.


%% Example:
%% get_table_migration_request() :: #{
%%   <<"migrationId">> => string(),
%%   <<"tableARN">> => string()
%% }
-type get_table_migration_request() :: #{binary() => any()}.


%% Example:
%% get_table_migration_response() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dataMigration">> => data_migration_overview(),
%%   <<"failureReason">> => migration_failure_reason(),
%%   <<"hasValidPlan">> => [boolean()],
%%   <<"migrationId">> => string(),
%%   <<"migrationOutput">> => migration_output_overview(),
%%   <<"migrationStats">> => migration_stats(),
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"planningStats">> => planning_stats(),
%%   <<"reviewMigrationPlan">> => [boolean()],
%%   <<"roleARN">> => string(),
%%   <<"source">> => list(),
%%   <<"sourceType">> => list(any()),
%%   <<"state">> => list(any()),
%%   <<"stateUpdatedAt">> => [non_neg_integer()],
%%   <<"tableARN">> => string(),
%%   <<"tableBucketARN">> => string(),
%%   <<"type">> => list(any())
%% }
-type get_table_migration_response() :: #{binary() => any()}.

%% Example:
%% get_table_policy_request() :: #{}
-type get_table_policy_request() :: #{}.


%% Example:
%% get_table_policy_response() :: #{
%%   <<"resourcePolicy">> => string()
%% }
-type get_table_policy_response() :: #{binary() => any()}.


%% Example:
%% get_table_record_expiration_configuration_request() :: #{
%%   <<"tableArn">> := string()
%% }
-type get_table_record_expiration_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_table_record_expiration_configuration_response() :: #{
%%   <<"configuration">> => table_record_expiration_configuration_value()
%% }
-type get_table_record_expiration_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_table_record_expiration_job_status_request() :: #{
%%   <<"tableArn">> := string()
%% }
-type get_table_record_expiration_job_status_request() :: #{binary() => any()}.


%% Example:
%% get_table_record_expiration_job_status_response() :: #{
%%   <<"failureMessage">> => [string()],
%%   <<"lastRunTimestamp">> => [non_neg_integer()],
%%   <<"metrics">> => table_record_expiration_job_metrics(),
%%   <<"status">> => list(any())
%% }
-type get_table_record_expiration_job_status_response() :: #{binary() => any()}.


%% Example:
%% get_table_replication_request() :: #{
%%   <<"tableArn">> := string()
%% }
-type get_table_replication_request() :: #{binary() => any()}.


%% Example:
%% get_table_replication_response() :: #{
%%   <<"configuration">> => table_replication_configuration(),
%%   <<"versionToken">> => [string()]
%% }
-type get_table_replication_response() :: #{binary() => any()}.


%% Example:
%% get_table_replication_status_request() :: #{
%%   <<"tableArn">> := string()
%% }
-type get_table_replication_status_request() :: #{binary() => any()}.


%% Example:
%% get_table_replication_status_response() :: #{
%%   <<"destinations">> => list(replication_destination_status_model()),
%%   <<"sourceTableArn">> => string()
%% }
-type get_table_replication_status_response() :: #{binary() => any()}.


%% Example:
%% get_table_request() :: #{
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"tableArn">> => string(),
%%   <<"tableBucketARN">> => string()
%% }
-type get_table_request() :: #{binary() => any()}.


%% Example:
%% get_table_response() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"format">> => list(any()),
%%   <<"managedByService">> => [string()],
%%   <<"managedTableInformation">> => managed_table_information(),
%%   <<"metadataLocation">> => string(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"modifiedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"namespace">> => list(string()),
%%   <<"namespaceId">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"tableARN">> => string(),
%%   <<"tableBucketId">> => string(),
%%   <<"type">> => list(any()),
%%   <<"versionToken">> => string(),
%%   <<"warehouseLocation">> => string()
%% }
-type get_table_response() :: #{binary() => any()}.

%% Example:
%% get_table_storage_class_request() :: #{}
-type get_table_storage_class_request() :: #{}.


%% Example:
%% get_table_storage_class_response() :: #{
%%   <<"storageClassConfiguration">> => storage_class_configuration()
%% }
-type get_table_storage_class_response() :: #{binary() => any()}.


%% Example:
%% glue_table_source() :: #{
%%   <<"catalogId">> => [string()],
%%   <<"databaseName">> => [string()],
%%   <<"tableName">> => [string()]
%% }
-type glue_table_source() :: #{binary() => any()}.


%% Example:
%% iceberg_compaction_settings() :: #{
%%   <<"strategy">> => list(any()),
%%   <<"targetFileSizeMB">> => integer()
%% }
-type iceberg_compaction_settings() :: #{binary() => any()}.


%% Example:
%% iceberg_metadata() :: #{
%%   <<"partitionSpec">> => iceberg_partition_spec(),
%%   <<"properties">> => map(),
%%   <<"schema">> => iceberg_schema(),
%%   <<"schemaV2">> => iceberg_schema_v2(),
%%   <<"writeOrder">> => iceberg_sort_order()
%% }
-type iceberg_metadata() :: #{binary() => any()}.


%% Example:
%% iceberg_partition_field() :: #{
%%   <<"fieldId">> => [integer()],
%%   <<"name">> => [string()],
%%   <<"sourceId">> => [integer()],
%%   <<"transform">> => [string()]
%% }
-type iceberg_partition_field() :: #{binary() => any()}.


%% Example:
%% iceberg_partition_spec() :: #{
%%   <<"fields">> => list(iceberg_partition_field()),
%%   <<"specId">> => [integer()]
%% }
-type iceberg_partition_spec() :: #{binary() => any()}.


%% Example:
%% iceberg_schema() :: #{
%%   <<"fields">> => list(schema_field())
%% }
-type iceberg_schema() :: #{binary() => any()}.


%% Example:
%% iceberg_schema_v2() :: #{
%%   <<"fields">> => list(schema_v2_field()),
%%   <<"identifierFieldIds">> => list([integer()]()),
%%   <<"schemaId">> => [integer()],
%%   <<"type">> => list(any())
%% }
-type iceberg_schema_v2() :: #{binary() => any()}.


%% Example:
%% iceberg_snapshot_management_settings() :: #{
%%   <<"maxSnapshotAgeHours">> => integer(),
%%   <<"minSnapshotsToKeep">> => integer()
%% }
-type iceberg_snapshot_management_settings() :: #{binary() => any()}.


%% Example:
%% iceberg_sort_field() :: #{
%%   <<"direction">> => list(any()),
%%   <<"nullOrder">> => list(any()),
%%   <<"sourceId">> => [integer()],
%%   <<"transform">> => [string()]
%% }
-type iceberg_sort_field() :: #{binary() => any()}.


%% Example:
%% iceberg_sort_order() :: #{
%%   <<"fields">> => list(iceberg_sort_field()),
%%   <<"orderId">> => [integer()]
%% }
-type iceberg_sort_order() :: #{binary() => any()}.


%% Example:
%% iceberg_unreferenced_file_removal_settings() :: #{
%%   <<"nonCurrentDays">> => integer(),
%%   <<"unreferencedDays">> => integer()
%% }
-type iceberg_unreferenced_file_removal_settings() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% last_successful_replicated_update() :: #{
%%   <<"metadataLocation">> => string(),
%%   <<"timestamp">> => [non_neg_integer()]
%% }
-type last_successful_replicated_update() :: #{binary() => any()}.


%% Example:
%% list_namespaces_request() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"maxNamespaces">> => integer(),
%%   <<"prefix">> => [string()]
%% }
-type list_namespaces_request() :: #{binary() => any()}.


%% Example:
%% list_namespaces_response() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"namespaces">> => list(namespace_summary())
%% }
-type list_namespaces_response() :: #{binary() => any()}.


%% Example:
%% list_table_buckets_request() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"maxBuckets">> => integer(),
%%   <<"prefix">> => [string()],
%%   <<"type">> => list(any())
%% }
-type list_table_buckets_request() :: #{binary() => any()}.


%% Example:
%% list_table_buckets_response() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"tableBuckets">> => list(table_bucket_summary())
%% }
-type list_table_buckets_response() :: #{binary() => any()}.


%% Example:
%% list_table_migrations_request() :: #{
%%   <<"hasValidPlan">> => [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tableARN">> => string(),
%%   <<"tableBucketARN">> => string()
%% }
-type list_table_migrations_request() :: #{binary() => any()}.


%% Example:
%% list_table_migrations_response() :: #{
%%   <<"migrations">> => list(migration_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_table_migrations_response() :: #{binary() => any()}.


%% Example:
%% list_tables_request() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"maxTables">> => integer(),
%%   <<"namespace">> => string(),
%%   <<"prefix">> => [string()]
%% }
-type list_tables_request() :: #{binary() => any()}.


%% Example:
%% list_tables_response() :: #{
%%   <<"continuationToken">> => string(),
%%   <<"tables">> => list(table_summary())
%% }
-type list_tables_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% logging_enabled() :: #{
%%   <<"targetBucket">> => string(),
%%   <<"targetObjectKeyFormat">> => target_object_key_format(),
%%   <<"targetPrefix">> => string()
%% }
-type logging_enabled() :: #{binary() => any()}.


%% Example:
%% maintenance_settings() :: #{
%%   <<"icebergCompaction">> => migration_compaction_settings(),
%%   <<"icebergSnapshotManagement">> => migration_snapshot_management_settings()
%% }
-type maintenance_settings() :: #{binary() => any()}.


%% Example:
%% managed_table_information() :: #{
%%   <<"replicationInformation">> => replication_information()
%% }
-type managed_table_information() :: #{binary() => any()}.


%% Example:
%% method_not_allowed_exception() :: #{
%%   <<"message">> => string()
%% }
-type method_not_allowed_exception() :: #{binary() => any()}.


%% Example:
%% migration_compaction_settings() :: #{
%%   <<"strategy">> => list(any()),
%%   <<"targetFileSizeMB">> => integer()
%% }
-type migration_compaction_settings() :: #{binary() => any()}.


%% Example:
%% migration_failure_reason() :: #{
%%   <<"code">> => list(any()),
%%   <<"detail">> => string()
%% }
-type migration_failure_reason() :: #{binary() => any()}.


%% Example:
%% migration_output_configuration() :: #{
%%   <<"bucket">> => string(),
%%   <<"prefixes">> => migration_report_prefixes()
%% }
-type migration_output_configuration() :: #{binary() => any()}.


%% Example:
%% migration_output_overview() :: #{
%%   <<"bucket">> => string(),
%%   <<"objectCompatibilityReport">> => report_overview(),
%%   <<"objectMigrationReport">> => report_overview(),
%%   <<"tableCompatibilityReport">> => report_overview()
%% }
-type migration_output_overview() :: #{binary() => any()}.


%% Example:
%% migration_policies() :: #{
%%   <<"incompatibleValuesPolicy">> => list(any()),
%%   <<"unmatchedSourceFieldsPolicy">> => list(any())
%% }
-type migration_policies() :: #{binary() => any()}.


%% Example:
%% migration_report_prefixes() :: #{
%%   <<"objectCompatibilityReport">> => string(),
%%   <<"objectMigrationReport">> => string(),
%%   <<"tableCompatibilityReport">> => string()
%% }
-type migration_report_prefixes() :: #{binary() => any()}.


%% Example:
%% migration_snapshot_management_settings() :: #{
%%   <<"maxSnapshotAgeHours">> => integer(),
%%   <<"minSnapshotsToKeep">> => integer()
%% }
-type migration_snapshot_management_settings() :: #{binary() => any()}.


%% Example:
%% migration_stats() :: #{
%%   <<"objectsFailedMigration">> => [float()],
%%   <<"objectsMigrated">> => [float()],
%%   <<"objectsPendingMigration">> => [float()]
%% }
-type migration_stats() :: #{binary() => any()}.


%% Example:
%% migration_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"hasValidPlan">> => [boolean()],
%%   <<"migrationId">> => string(),
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"state">> => list(any()),
%%   <<"stateUpdatedAt">> => [non_neg_integer()],
%%   <<"tableARN">> => string(),
%%   <<"tableBucketARN">> => string(),
%%   <<"type">> => list(any())
%% }
-type migration_summary() :: #{binary() => any()}.


%% Example:
%% migration_table_properties() :: #{
%%   <<"compressionCodec">> => list(any()),
%%   <<"dictionaryEncoding">> => [boolean()],
%%   <<"icebergFormatVersion">> => [integer()],
%%   <<"writeFormat">> => list(any())
%% }
-type migration_table_properties() :: #{binary() => any()}.


%% Example:
%% namespace_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"namespace">> => list(string()),
%%   <<"namespaceId">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"tableBucketId">> => string()
%% }
-type namespace_summary() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% partitioned_prefix() :: #{
%%   <<"partitionDateSource">> => list(any())
%% }
-type partitioned_prefix() :: #{binary() => any()}.


%% Example:
%% planning_stats() :: #{
%%   <<"objectsPlanned">> => [float()],
%%   <<"objectsScanned">> => [float()],
%%   <<"partitionCount">> => [float()]
%% }
-type planning_stats() :: #{binary() => any()}.


%% Example:
%% put_table_bucket_encryption_request() :: #{
%%   <<"encryptionConfiguration">> := encryption_configuration()
%% }
-type put_table_bucket_encryption_request() :: #{binary() => any()}.


%% Example:
%% put_table_bucket_logging_request() :: #{
%%   <<"tableBucketLoggingStatus">> := table_bucket_logging_status()
%% }
-type put_table_bucket_logging_request() :: #{binary() => any()}.


%% Example:
%% put_table_bucket_maintenance_configuration_request() :: #{
%%   <<"value">> := table_bucket_maintenance_configuration_value()
%% }
-type put_table_bucket_maintenance_configuration_request() :: #{binary() => any()}.

%% Example:
%% put_table_bucket_metrics_configuration_request() :: #{}
-type put_table_bucket_metrics_configuration_request() :: #{}.


%% Example:
%% put_table_bucket_policy_request() :: #{
%%   <<"resourcePolicy">> := string()
%% }
-type put_table_bucket_policy_request() :: #{binary() => any()}.


%% Example:
%% put_table_bucket_replication_request() :: #{
%%   <<"configuration">> := table_bucket_replication_configuration(),
%%   <<"tableBucketARN">> := string(),
%%   <<"versionToken">> => string()
%% }
-type put_table_bucket_replication_request() :: #{binary() => any()}.


%% Example:
%% put_table_bucket_replication_response() :: #{
%%   <<"status">> => [string()],
%%   <<"versionToken">> => string()
%% }
-type put_table_bucket_replication_response() :: #{binary() => any()}.


%% Example:
%% put_table_bucket_storage_class_request() :: #{
%%   <<"storageClassConfiguration">> := storage_class_configuration()
%% }
-type put_table_bucket_storage_class_request() :: #{binary() => any()}.


%% Example:
%% put_table_maintenance_configuration_request() :: #{
%%   <<"value">> := table_maintenance_configuration_value()
%% }
-type put_table_maintenance_configuration_request() :: #{binary() => any()}.


%% Example:
%% put_table_policy_request() :: #{
%%   <<"resourcePolicy">> := string()
%% }
-type put_table_policy_request() :: #{binary() => any()}.


%% Example:
%% put_table_record_expiration_configuration_request() :: #{
%%   <<"tableArn">> := string(),
%%   <<"value">> := table_record_expiration_configuration_value()
%% }
-type put_table_record_expiration_configuration_request() :: #{binary() => any()}.


%% Example:
%% put_table_replication_request() :: #{
%%   <<"configuration">> := table_replication_configuration(),
%%   <<"tableArn">> := string(),
%%   <<"versionToken">> => [string()]
%% }
-type put_table_replication_request() :: #{binary() => any()}.


%% Example:
%% put_table_replication_response() :: #{
%%   <<"status">> => [string()],
%%   <<"versionToken">> => [string()]
%% }
-type put_table_replication_response() :: #{binary() => any()}.


%% Example:
%% rename_table_request() :: #{
%%   <<"newName">> => string(),
%%   <<"newNamespaceName">> => string(),
%%   <<"versionToken">> => string()
%% }
-type rename_table_request() :: #{binary() => any()}.


%% Example:
%% replication_destination() :: #{
%%   <<"destinationTableBucketARN">> => string()
%% }
-type replication_destination() :: #{binary() => any()}.


%% Example:
%% replication_destination_status_model() :: #{
%%   <<"destinationTableArn">> => string(),
%%   <<"destinationTableBucketArn">> => string(),
%%   <<"failureMessage">> => [string()],
%%   <<"lastSuccessfulReplicatedUpdate">> => last_successful_replicated_update(),
%%   <<"replicationStatus">> => list(any())
%% }
-type replication_destination_status_model() :: #{binary() => any()}.


%% Example:
%% replication_information() :: #{
%%   <<"sourceTableARN">> => string()
%% }
-type replication_information() :: #{binary() => any()}.


%% Example:
%% report_overview() :: #{
%%   <<"checksumCRC64NVME">> => string(),
%%   <<"invalidFindings">> => map(),
%%   <<"key">> => string(),
%%   <<"prefix">> => string()
%% }
-type report_overview() :: #{binary() => any()}.


%% Example:
%% schema_field() :: #{
%%   <<"id">> => [integer()],
%%   <<"name">> => [string()],
%%   <<"required">> => [boolean()],
%%   <<"type">> => [string()]
%% }
-type schema_field() :: #{binary() => any()}.


%% Example:
%% schema_v2_field() :: #{
%%   <<"doc">> => [string()],
%%   <<"id">> => [integer()],
%%   <<"name">> => [string()],
%%   <<"required">> => [boolean()],
%%   <<"type">> => [any()]
%% }
-type schema_v2_field() :: #{binary() => any()}.


%% Example:
%% start_table_migration_request() :: #{
%%   <<"dataMigration">> => data_migration_settings(),
%%   <<"destinationTable">> := destination_table(),
%%   <<"migrationOutput">> := migration_output_configuration(),
%%   <<"reviewMigrationPlan">> => [boolean()],
%%   <<"roleARN">> := string(),
%%   <<"source">> := list(),
%%   <<"sourceType">> := list(any())
%% }
-type start_table_migration_request() :: #{binary() => any()}.


%% Example:
%% start_table_migration_response() :: #{
%%   <<"migrationId">> => string(),
%%   <<"state">> => list(any())
%% }
-type start_table_migration_response() :: #{binary() => any()}.


%% Example:
%% storage_class_configuration() :: #{
%%   <<"storageClass">> => list(any())
%% }
-type storage_class_configuration() :: #{binary() => any()}.


%% Example:
%% sync_table_migration_request() :: #{
%%   <<"migrationOutput">> := migration_output_configuration(),
%%   <<"reviewMigrationPlan">> => [boolean()],
%%   <<"roleARN">> := string(),
%%   <<"tableARN">> := string()
%% }
-type sync_table_migration_request() :: #{binary() => any()}.


%% Example:
%% sync_table_migration_response() :: #{
%%   <<"migrationId">> => string(),
%%   <<"state">> => list(any())
%% }
-type sync_table_migration_response() :: #{binary() => any()}.


%% Example:
%% table_bucket_logging_status() :: #{
%%   <<"loggingEnabled">> => logging_enabled()
%% }
-type table_bucket_logging_status() :: #{binary() => any()}.


%% Example:
%% table_bucket_maintenance_configuration_value() :: #{
%%   <<"settings">> => list(),
%%   <<"status">> => list(any())
%% }
-type table_bucket_maintenance_configuration_value() :: #{binary() => any()}.


%% Example:
%% table_bucket_replication_configuration() :: #{
%%   <<"role">> => string(),
%%   <<"rules">> => list(table_bucket_replication_rule())
%% }
-type table_bucket_replication_configuration() :: #{binary() => any()}.


%% Example:
%% table_bucket_replication_rule() :: #{
%%   <<"destinations">> => list(replication_destination())
%% }
-type table_bucket_replication_rule() :: #{binary() => any()}.


%% Example:
%% table_bucket_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"tableBucketId">> => string(),
%%   <<"type">> => list(any())
%% }
-type table_bucket_summary() :: #{binary() => any()}.


%% Example:
%% table_maintenance_configuration_value() :: #{
%%   <<"settings">> => list(),
%%   <<"status">> => list(any())
%% }
-type table_maintenance_configuration_value() :: #{binary() => any()}.


%% Example:
%% table_maintenance_job_status_value() :: #{
%%   <<"failureMessage">> => [string()],
%%   <<"lastRunTimestamp">> => [non_neg_integer()],
%%   <<"status">> => list(any())
%% }
-type table_maintenance_job_status_value() :: #{binary() => any()}.


%% Example:
%% table_record_expiration_configuration_value() :: #{
%%   <<"settings">> => table_record_expiration_settings(),
%%   <<"status">> => list(any())
%% }
-type table_record_expiration_configuration_value() :: #{binary() => any()}.


%% Example:
%% table_record_expiration_job_metrics() :: #{
%%   <<"deletedDataFiles">> => [float()],
%%   <<"deletedRecords">> => [float()],
%%   <<"removedFilesSize">> => [float()]
%% }
-type table_record_expiration_job_metrics() :: #{binary() => any()}.


%% Example:
%% table_record_expiration_settings() :: #{
%%   <<"days">> => integer()
%% }
-type table_record_expiration_settings() :: #{binary() => any()}.


%% Example:
%% table_replication_configuration() :: #{
%%   <<"role">> => string(),
%%   <<"rules">> => list(table_replication_rule())
%% }
-type table_replication_configuration() :: #{binary() => any()}.


%% Example:
%% table_replication_rule() :: #{
%%   <<"destinations">> => list(replication_destination())
%% }
-type table_replication_rule() :: #{binary() => any()}.


%% Example:
%% table_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"managedByService">> => [string()],
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"namespace">> => list(string()),
%%   <<"namespaceId">> => string(),
%%   <<"tableARN">> => string(),
%%   <<"tableBucketId">> => string(),
%%   <<"type">> => list(any())
%% }
-type table_summary() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% target_object_key_format() :: #{
%%   <<"partitionedPrefix">> => partitioned_prefix()
%% }
-type target_object_key_format() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_table_metadata_location_request() :: #{
%%   <<"metadataLocation">> := string(),
%%   <<"versionToken">> := string()
%% }
-type update_table_metadata_location_request() :: #{binary() => any()}.


%% Example:
%% update_table_metadata_location_response() :: #{
%%   <<"metadataLocation">> => string(),
%%   <<"name">> => string(),
%%   <<"namespace">> => list(string()),
%%   <<"tableARN">> => string(),
%%   <<"versionToken">> => string()
%% }
-type update_table_metadata_location_response() :: #{binary() => any()}.


%% Example:
%% update_table_migration_request() :: #{
%%   <<"migrationId">> => string(),
%%   <<"requestedState">> := list(any()),
%%   <<"tableARN">> => string(),
%%   <<"updateDescription">> => [string()]
%% }
-type update_table_migration_request() :: #{binary() => any()}.


%% Example:
%% update_table_migration_response() :: #{
%%   <<"migrationId">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tableARN">> => string()
%% }
-type update_table_migration_response() :: #{binary() => any()}.

-type complete_table_migration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type create_namespace_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type create_table_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type create_table_bucket_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type delete_namespace_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type delete_table_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type delete_table_bucket_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type delete_table_bucket_encryption_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type delete_table_bucket_metrics_configuration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type delete_table_bucket_policy_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type delete_table_bucket_replication_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type delete_table_policy_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type delete_table_replication_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_namespace_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_table_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_table_bucket_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_table_bucket_encryption_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_table_bucket_logging_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type get_table_bucket_maintenance_configuration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type get_table_bucket_metrics_configuration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type get_table_bucket_policy_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type get_table_bucket_replication_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_table_bucket_storage_class_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_table_encryption_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_table_maintenance_configuration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type get_table_maintenance_job_status_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type get_table_metadata_location_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type get_table_migration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_table_policy_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type get_table_record_expiration_configuration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    method_not_allowed_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    bad_request_exception().

-type get_table_record_expiration_job_status_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    method_not_allowed_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    bad_request_exception().

-type get_table_replication_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_table_replication_status_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type get_table_storage_class_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_namespaces_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_table_buckets_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_table_migrations_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_tables_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type list_tags_for_resource_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type put_table_bucket_encryption_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type put_table_bucket_logging_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type put_table_bucket_maintenance_configuration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type put_table_bucket_metrics_configuration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type put_table_bucket_policy_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type put_table_bucket_replication_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type put_table_bucket_storage_class_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type put_table_maintenance_configuration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type put_table_policy_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type put_table_record_expiration_configuration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    method_not_allowed_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    bad_request_exception().

-type put_table_replication_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type rename_table_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type start_table_migration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type sync_table_migration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type untag_resource_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type update_table_metadata_location_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type update_table_migration_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_server_error_exception() | 
    forbidden_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Completes the migration of a table.
%%
%% The table's most recent migration must be in the `succeeded',
%% `failed' or `cancelled' state. After you complete the migration,
%% you can't sync the table again, and you can write to and maintain the
%% table as you do any other table: compaction starts, and unreferenced file
%% removal follows the table bucket's configuration. You can't undo
%% this operation. Calling it again for the same table returns a
%% `ConflictException'.
%%
%% Permissions You must have the `s3tables:CompleteTableMigration'
%% permission to use this operation.
-spec complete_table_migration(aws_client:aws_client(), complete_table_migration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, complete_table_migration_errors(), tuple()}.
complete_table_migration(Client, Input) ->
    complete_table_migration(Client, Input, []).

-spec complete_table_migration(aws_client:aws_client(), complete_table_migration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, complete_table_migration_errors(), tuple()}.
complete_table_migration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/complete-table-migration"],
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
                     {<<"tableARN">>, <<"tableARN">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a namespace.
%%
%% A namespace is a logical grouping of tables within your table bucket,
%% which you can use to organize tables. For more information, see Create a
%% namespace:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-create.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:CreateNamespace' permission to
%% use this operation.
-spec create_namespace(aws_client:aws_client(), binary() | list(), create_namespace_request()) ->
    {ok, create_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_namespace_errors(), tuple()}.
create_namespace(Client, TableBucketARN, Input) ->
    create_namespace(Client, TableBucketARN, Input, []).

-spec create_namespace(aws_client:aws_client(), binary() | list(), create_namespace_request(), proplists:proplist()) ->
    {ok, create_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_namespace_errors(), tuple()}.
create_namespace(Client, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/namespaces/", aws_util:encode_uri(TableBucketARN), ""],
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

%% @doc Creates a new table associated with the given namespace in a table
%% bucket.
%%
%% For more information, see Creating an Amazon S3 table:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-create.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:CreateTable' permission to use
%% this operation.
%%
%% If you use this operation with the optional `metadata' request
%% parameter you must have the `s3tables:PutTableData' permission.
%%
%% If you use this operation with the optional `encryptionConfiguration'
%% request parameter you must have the `s3tables:PutTableEncryption'
%% permission.
%%
%% If you use this operation with the `storageClassConfiguration' request
%% parameter, you must have the `s3tables:PutTableStorageClass'
%% permission.
%%
%% To create a table with tags, you must have the `s3tables:TagResource'
%% permission in addition to `s3tables:CreateTable' permission.
%%
%% Additionally, If you choose SSE-KMS encryption you must grant the S3
%% Tables maintenance principal access to your KMS key. For more information,
%% see Permissions requirements for S3 Tables SSE-KMS encryption:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html.
-spec create_table(aws_client:aws_client(), binary() | list(), binary() | list(), create_table_request()) ->
    {ok, create_table_response(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Namespace, TableBucketARN, Input) ->
    create_table(Client, Namespace, TableBucketARN, Input, []).

-spec create_table(aws_client:aws_client(), binary() | list(), binary() | list(), create_table_request(), proplists:proplist()) ->
    {ok, create_table_response(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Namespace, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), ""],
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

%% @doc Creates a table bucket.
%%
%% For more information, see Creating a table bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-create.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:CreateTableBucket' permission
%% to use this operation.
%%
%% If you use this operation with the optional `encryptionConfiguration'
%% parameter you must have the `s3tables:PutTableBucketEncryption'
%% permission.
%%
%% If you use this operation with the `storageClassConfiguration' request
%% parameter, you must have the `s3tables:PutTableBucketStorageClass'
%% permission.
%%
%% To create a table bucket with tags, you must have the
%% `s3tables:TagResource' permission in addition to
%% `s3tables:CreateTableBucket' permission.
-spec create_table_bucket(aws_client:aws_client(), create_table_bucket_request()) ->
    {ok, create_table_bucket_response(), tuple()} |
    {error, any()} |
    {error, create_table_bucket_errors(), tuple()}.
create_table_bucket(Client, Input) ->
    create_table_bucket(Client, Input, []).

-spec create_table_bucket(aws_client:aws_client(), create_table_bucket_request(), proplists:proplist()) ->
    {ok, create_table_bucket_response(), tuple()} |
    {error, any()} |
    {error, create_table_bucket_errors(), tuple()}.
create_table_bucket(Client, Input0, Options0) ->
    Method = put,
    Path = ["/buckets"],
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

%% @doc Deletes a namespace.
%%
%% For more information, see Delete a namespace:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-delete.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:DeleteNamespace' permission to
%% use this operation.
-spec delete_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), delete_namespace_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_namespace_errors(), tuple()}.
delete_namespace(Client, Namespace, TableBucketARN, Input) ->
    delete_namespace(Client, Namespace, TableBucketARN, Input, []).

-spec delete_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), delete_namespace_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_namespace_errors(), tuple()}.
delete_namespace(Client, Namespace, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/namespaces/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), ""],
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

%% @doc Deletes a table.
%%
%% For more information, see Deleting an Amazon S3 table:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-delete.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:DeleteTable' permission to use
%% this operation.
-spec delete_table(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_table_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Name, Namespace, TableBucketARN, Input) ->
    delete_table(Client, Name, Namespace, TableBucketARN, Input, []).

-spec delete_table(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_table_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Name, Namespace, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), ""],
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
                     {<<"versionToken">>, <<"versionToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a table bucket.
%%
%% For more information, see Deleting a table bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-delete.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:DeleteTableBucket' permission
%% to use this operation.
-spec delete_table_bucket(aws_client:aws_client(), binary() | list(), delete_table_bucket_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_errors(), tuple()}.
delete_table_bucket(Client, TableBucketARN, Input) ->
    delete_table_bucket(Client, TableBucketARN, Input, []).

-spec delete_table_bucket(aws_client:aws_client(), binary() | list(), delete_table_bucket_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_errors(), tuple()}.
delete_table_bucket(Client, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), ""],
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

%% @doc Deletes the encryption configuration for a table bucket.
%%
%% Permissions You must have the `s3tables:DeleteTableBucketEncryption'
%% permission to use this operation.
-spec delete_table_bucket_encryption(aws_client:aws_client(), binary() | list(), delete_table_bucket_encryption_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_encryption_errors(), tuple()}.
delete_table_bucket_encryption(Client, TableBucketARN, Input) ->
    delete_table_bucket_encryption(Client, TableBucketARN, Input, []).

-spec delete_table_bucket_encryption(aws_client:aws_client(), binary() | list(), delete_table_bucket_encryption_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_encryption_errors(), tuple()}.
delete_table_bucket_encryption(Client, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/encryption"],
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

%% @doc Deletes the metrics configuration for a table bucket.
%%
%% Permissions You must have the
%% `s3tables:DeleteTableBucketMetricsConfiguration' permission to use
%% this operation.
-spec delete_table_bucket_metrics_configuration(aws_client:aws_client(), binary() | list(), delete_table_bucket_metrics_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_metrics_configuration_errors(), tuple()}.
delete_table_bucket_metrics_configuration(Client, TableBucketARN, Input) ->
    delete_table_bucket_metrics_configuration(Client, TableBucketARN, Input, []).

-spec delete_table_bucket_metrics_configuration(aws_client:aws_client(), binary() | list(), delete_table_bucket_metrics_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_metrics_configuration_errors(), tuple()}.
delete_table_bucket_metrics_configuration(Client, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/metrics"],
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

%% @doc Deletes a table bucket policy.
%%
%% For more information, see Deleting a table bucket policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-delete
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:DeleteTableBucketPolicy'
%% permission to use this operation.
-spec delete_table_bucket_policy(aws_client:aws_client(), binary() | list(), delete_table_bucket_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_policy_errors(), tuple()}.
delete_table_bucket_policy(Client, TableBucketARN, Input) ->
    delete_table_bucket_policy(Client, TableBucketARN, Input, []).

-spec delete_table_bucket_policy(aws_client:aws_client(), binary() | list(), delete_table_bucket_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_policy_errors(), tuple()}.
delete_table_bucket_policy(Client, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/policy"],
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

%% @doc Deletes the replication configuration for a table bucket.
%%
%% After deletion, new table updates will no longer be replicated to
%% destination buckets, though existing replicated tables will remain in
%% destination buckets.
%%
%% Permissions You must have the `s3tables:DeleteTableBucketReplication'
%% permission to use this operation.
-spec delete_table_bucket_replication(aws_client:aws_client(), delete_table_bucket_replication_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_replication_errors(), tuple()}.
delete_table_bucket_replication(Client, Input) ->
    delete_table_bucket_replication(Client, Input, []).

-spec delete_table_bucket_replication(aws_client:aws_client(), delete_table_bucket_replication_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_bucket_replication_errors(), tuple()}.
delete_table_bucket_replication(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/table-bucket-replication"],
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
                     {<<"tableBucketARN">>, <<"tableBucketARN">>},
                     {<<"versionToken">>, <<"versionToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a table policy.
%%
%% For more information, see Deleting a table policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-delete
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:DeleteTablePolicy' permission
%% to use this operation.
-spec delete_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_table_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_policy_errors(), tuple()}.
delete_table_policy(Client, Name, Namespace, TableBucketARN, Input) ->
    delete_table_policy(Client, Name, Namespace, TableBucketARN, Input, []).

-spec delete_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_table_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_policy_errors(), tuple()}.
delete_table_policy(Client, Name, Namespace, TableBucketARN, Input0, Options0) ->
    Method = delete,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/policy"],
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

%% @doc Deletes the replication configuration for a specific table.
%%
%% After deletion, new updates to this table will no longer be replicated to
%% destination tables, though existing replicated copies will remain in
%% destination buckets.
%%
%% Permissions You must have the `s3tables:DeleteTableReplication'
%% permission to use this operation.
-spec delete_table_replication(aws_client:aws_client(), delete_table_replication_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_replication_errors(), tuple()}.
delete_table_replication(Client, Input) ->
    delete_table_replication(Client, Input, []).

-spec delete_table_replication(aws_client:aws_client(), delete_table_replication_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_replication_errors(), tuple()}.
delete_table_replication(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/table-replication"],
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
                     {<<"tableArn">>, <<"tableArn">>},
                     {<<"versionToken">>, <<"versionToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets details about a namespace.
%%
%% For more information, see Table namespaces:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetNamespace' permission to
%% use this operation.
-spec get_namespace(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_errors(), tuple()}.
get_namespace(Client, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_namespace(Client, Namespace, TableBucketARN, #{}, #{}).

-spec get_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_errors(), tuple()}.
get_namespace(Client, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_namespace(Client, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_errors(), tuple()}.
get_namespace(Client, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/namespaces/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a table.
%%
%% For more information, see S3 Tables:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTable' permission to use
%% this operation.
-spec get_table(aws_client:aws_client()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client)
  when is_map(Client) ->
    get_table(Client, #{}, #{}).

-spec get_table(aws_client:aws_client(), map(), map()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table(Client, QueryMap, HeadersMap, []).

-spec get_table(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-table"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"tableArn">>, maps:get(<<"tableArn">>, QueryMap, undefined)},
        {<<"tableBucketARN">>, maps:get(<<"tableBucketARN">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details on a table bucket.
%%
%% For more information, see Viewing details about an Amazon S3 table bucket:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-details.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTableBucket' permission to
%% use this operation.
-spec get_table_bucket(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_errors(), tuple()}.
get_table_bucket(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_errors(), tuple()}.
get_table_bucket(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_errors(), tuple()}.
get_table_bucket(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the encryption configuration for a table bucket.
%%
%% Permissions You must have the `s3tables:GetTableBucketEncryption'
%% permission to use this operation.
-spec get_table_bucket_encryption(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_encryption_errors(), tuple()}.
get_table_bucket_encryption(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket_encryption(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket_encryption(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_encryption_errors(), tuple()}.
get_table_bucket_encryption(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket_encryption(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket_encryption(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_encryption_errors(), tuple()}.
get_table_bucket_encryption(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/encryption"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the server access logging configuration for a table bucket.
%%
%% For more information, see Server access logging for table buckets:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-server-logs.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTableBucketLogging'
%% permission to use this operation.
-spec get_table_bucket_logging(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_logging_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_logging_errors(), tuple()}.
get_table_bucket_logging(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket_logging(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket_logging(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_logging_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_logging_errors(), tuple()}.
get_table_bucket_logging(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket_logging(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket_logging(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_logging_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_logging_errors(), tuple()}.
get_table_bucket_logging(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/logging"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a maintenance configuration for a given table
%% bucket.
%%
%% For more information, see Amazon S3 table bucket maintenance:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the
%% `s3tables:GetTableBucketMaintenanceConfiguration' permission to use
%% this operation.
-spec get_table_bucket_maintenance_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_maintenance_configuration_errors(), tuple()}.
get_table_bucket_maintenance_configuration(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket_maintenance_configuration(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket_maintenance_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_maintenance_configuration_errors(), tuple()}.
get_table_bucket_maintenance_configuration(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket_maintenance_configuration(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket_maintenance_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_maintenance_configuration_errors(), tuple()}.
get_table_bucket_maintenance_configuration(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/maintenance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the metrics configuration for a table bucket.
%%
%% Permissions You must have the
%% `s3tables:GetTableBucketMetricsConfiguration' permission to use this
%% operation.
-spec get_table_bucket_metrics_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_metrics_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_metrics_configuration_errors(), tuple()}.
get_table_bucket_metrics_configuration(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket_metrics_configuration(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket_metrics_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_metrics_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_metrics_configuration_errors(), tuple()}.
get_table_bucket_metrics_configuration(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket_metrics_configuration(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket_metrics_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_metrics_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_metrics_configuration_errors(), tuple()}.
get_table_bucket_metrics_configuration(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/metrics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a table bucket policy.
%%
%% For more information, see Viewing a table bucket policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-get
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTableBucketPolicy'
%% permission to use this operation.
-spec get_table_bucket_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_policy_errors(), tuple()}.
get_table_bucket_policy(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket_policy(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_policy_errors(), tuple()}.
get_table_bucket_policy(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket_policy(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_policy_errors(), tuple()}.
get_table_bucket_policy(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the replication configuration for a table bucket.This
%% operation returns the IAM role, `versionToken', and replication rules
%% that define how tables in this bucket are replicated to other buckets.
%%
%% Permissions You must have the `s3tables:GetTableBucketReplication'
%% permission to use this operation.
-spec get_table_bucket_replication(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_replication_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_replication_errors(), tuple()}.
get_table_bucket_replication(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket_replication(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket_replication(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_replication_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_replication_errors(), tuple()}.
get_table_bucket_replication(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket_replication(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket_replication(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_replication_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_replication_errors(), tuple()}.
get_table_bucket_replication(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/table-bucket-replication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"tableBucketARN">>, TableBucketARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the storage class configuration for a specific table.
%%
%% This allows you to view the storage class settings that apply to an
%% individual table, which may differ from the table bucket's default
%% configuration.
%%
%% Permissions You must have the `s3tables:GetTableBucketStorageClass'
%% permission to use this operation.
-spec get_table_bucket_storage_class(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_bucket_storage_class_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_storage_class_errors(), tuple()}.
get_table_bucket_storage_class(Client, TableBucketARN)
  when is_map(Client) ->
    get_table_bucket_storage_class(Client, TableBucketARN, #{}, #{}).

-spec get_table_bucket_storage_class(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_bucket_storage_class_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_storage_class_errors(), tuple()}.
get_table_bucket_storage_class(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_bucket_storage_class(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_bucket_storage_class(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_bucket_storage_class_response(), tuple()} |
    {error, any()} |
    {error, get_table_bucket_storage_class_errors(), tuple()}.
get_table_bucket_storage_class(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/storage-class"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the encryption configuration for a table.
%%
%% Permissions You must have the `s3tables:GetTableEncryption' permission
%% to use this operation.
-spec get_table_encryption(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_encryption_errors(), tuple()}.
get_table_encryption(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_encryption(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_encryption(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_encryption_errors(), tuple()}.
get_table_encryption(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_encryption(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_encryption(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_encryption_response(), tuple()} |
    {error, any()} |
    {error, get_table_encryption_errors(), tuple()}.
get_table_encryption(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/encryption"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about the maintenance configuration of a table.
%%
%% For more information, see S3 Tables maintenance:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the
%% `s3tables:GetTableMaintenanceConfiguration' permission to use this
%% operation.
%%
%% You must have the `s3tables:GetTableData' permission to use set the
%% compaction strategy to `sort' or `zorder'.
-spec get_table_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_configuration_errors(), tuple()}.
get_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_configuration_errors(), tuple()}.
get_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_configuration_errors(), tuple()}.
get_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/maintenance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the status of a maintenance job for a table.
%%
%% For more information, see S3 Tables maintenance:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTableMaintenanceJobStatus'
%% permission to use this operation.
-spec get_table_maintenance_job_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_maintenance_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_job_status_errors(), tuple()}.
get_table_maintenance_job_status(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_maintenance_job_status(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_maintenance_job_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_maintenance_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_job_status_errors(), tuple()}.
get_table_maintenance_job_status(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_maintenance_job_status(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_maintenance_job_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_maintenance_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_maintenance_job_status_errors(), tuple()}.
get_table_maintenance_job_status(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/maintenance-job-status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the location of the table metadata.
%%
%% Permissions You must have the `s3tables:GetTableMetadataLocation'
%% permission to use this operation.
-spec get_table_metadata_location(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_metadata_location_response(), tuple()} |
    {error, any()} |
    {error, get_table_metadata_location_errors(), tuple()}.
get_table_metadata_location(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_metadata_location(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_metadata_location(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_metadata_location_response(), tuple()} |
    {error, any()} |
    {error, get_table_metadata_location_errors(), tuple()}.
get_table_metadata_location(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_metadata_location(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_metadata_location(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_metadata_location_response(), tuple()} |
    {error, any()} |
    {error, get_table_metadata_location_errors(), tuple()}.
get_table_metadata_location(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/metadata-location"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of a migration, including its state, the reason it
%% failed, its statistics and the location of its reports.
%%
%% Identify the migration by its `migrationId', or specify the
%% `tableARN' of a destination table to get that table's most recent
%% migration.
%%
%% Permissions You must have the `s3tables:GetTableMigration' permission
%% to use this operation.
-spec get_table_migration(aws_client:aws_client()) ->
    {ok, get_table_migration_response(), tuple()} |
    {error, any()} |
    {error, get_table_migration_errors(), tuple()}.
get_table_migration(Client)
  when is_map(Client) ->
    get_table_migration(Client, #{}, #{}).

-spec get_table_migration(aws_client:aws_client(), map(), map()) ->
    {ok, get_table_migration_response(), tuple()} |
    {error, any()} |
    {error, get_table_migration_errors(), tuple()}.
get_table_migration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_migration(Client, QueryMap, HeadersMap, []).

-spec get_table_migration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_table_migration_response(), tuple()} |
    {error, any()} |
    {error, get_table_migration_errors(), tuple()}.
get_table_migration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-table-migration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"migrationId">>, maps:get(<<"migrationId">>, QueryMap, undefined)},
        {<<"tableARN">>, maps:get(<<"tableARN">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a table policy.
%%
%% For more information, see Viewing a table policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-get
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:GetTablePolicy' permission to
%% use this operation.
-spec get_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_policy_errors(), tuple()}.
get_table_policy(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_policy(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_policy_errors(), tuple()}.
get_table_policy(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_policy(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_policy_response(), tuple()} |
    {error, any()} |
    {error, get_table_policy_errors(), tuple()}.
get_table_policy(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the expiration configuration settings for records in a
%% table, and the status of the configuration.
%%
%% If the status of the configuration is `enabled', records expire and
%% are automatically removed from the table after the specified number of
%% days.
%%
%% Permissions You must have the
%% `s3tables:GetTableRecordExpirationConfiguration' permission to use
%% this operation.
-spec get_table_record_expiration_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_record_expiration_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_record_expiration_configuration_errors(), tuple()}.
get_table_record_expiration_configuration(Client, TableArn)
  when is_map(Client) ->
    get_table_record_expiration_configuration(Client, TableArn, #{}, #{}).

-spec get_table_record_expiration_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_record_expiration_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_record_expiration_configuration_errors(), tuple()}.
get_table_record_expiration_configuration(Client, TableArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_record_expiration_configuration(Client, TableArn, QueryMap, HeadersMap, []).

-spec get_table_record_expiration_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_record_expiration_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_table_record_expiration_configuration_errors(), tuple()}.
get_table_record_expiration_configuration(Client, TableArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/table-record-expiration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"tableArn">>, TableArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the status, metrics, and details of the latest record
%% expiration job for a table.
%%
%% This includes when the job ran, and whether it succeeded or failed. If the
%% job ran successfully, this also includes statistics about the records that
%% were removed.
%%
%% Permissions You must have the
%% `s3tables:GetTableRecordExpirationJobStatus' permission to use this
%% operation.
-spec get_table_record_expiration_job_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_record_expiration_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_record_expiration_job_status_errors(), tuple()}.
get_table_record_expiration_job_status(Client, TableArn)
  when is_map(Client) ->
    get_table_record_expiration_job_status(Client, TableArn, #{}, #{}).

-spec get_table_record_expiration_job_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_record_expiration_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_record_expiration_job_status_errors(), tuple()}.
get_table_record_expiration_job_status(Client, TableArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_record_expiration_job_status(Client, TableArn, QueryMap, HeadersMap, []).

-spec get_table_record_expiration_job_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_record_expiration_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_record_expiration_job_status_errors(), tuple()}.
get_table_record_expiration_job_status(Client, TableArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/table-record-expiration-job-status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"tableArn">>, TableArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the replication configuration for a specific table.
%%
%% Permissions You must have the `s3tables:GetTableReplication'
%% permission to use this operation.
-spec get_table_replication(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_replication_response(), tuple()} |
    {error, any()} |
    {error, get_table_replication_errors(), tuple()}.
get_table_replication(Client, TableArn)
  when is_map(Client) ->
    get_table_replication(Client, TableArn, #{}, #{}).

-spec get_table_replication(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_replication_response(), tuple()} |
    {error, any()} |
    {error, get_table_replication_errors(), tuple()}.
get_table_replication(Client, TableArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_replication(Client, TableArn, QueryMap, HeadersMap, []).

-spec get_table_replication(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_replication_response(), tuple()} |
    {error, any()} |
    {error, get_table_replication_errors(), tuple()}.
get_table_replication(Client, TableArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/table-replication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"tableArn">>, TableArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the replication status for a table, including the status of
%% replication to each destination.
%%
%% This operation provides visibility into replication health and progress.
%%
%% Permissions You must have the `s3tables:GetTableReplicationStatus'
%% permission to use this operation.
-spec get_table_replication_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_table_replication_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_replication_status_errors(), tuple()}.
get_table_replication_status(Client, TableArn)
  when is_map(Client) ->
    get_table_replication_status(Client, TableArn, #{}, #{}).

-spec get_table_replication_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_table_replication_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_replication_status_errors(), tuple()}.
get_table_replication_status(Client, TableArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_replication_status(Client, TableArn, QueryMap, HeadersMap, []).

-spec get_table_replication_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_replication_status_response(), tuple()} |
    {error, any()} |
    {error, get_table_replication_status_errors(), tuple()}.
get_table_replication_status(Client, TableArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/replication-status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"tableArn">>, TableArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the storage class configuration for a specific table.
%%
%% This allows you to view the storage class settings that apply to an
%% individual table, which may differ from the table bucket's default
%% configuration.
%%
%% Permissions You must have the `s3tables:GetTableStorageClass'
%% permission to use this operation.
-spec get_table_storage_class(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_table_storage_class_response(), tuple()} |
    {error, any()} |
    {error, get_table_storage_class_errors(), tuple()}.
get_table_storage_class(Client, Name, Namespace, TableBucketARN)
  when is_map(Client) ->
    get_table_storage_class(Client, Name, Namespace, TableBucketARN, #{}, #{}).

-spec get_table_storage_class(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_table_storage_class_response(), tuple()} |
    {error, any()} |
    {error, get_table_storage_class_errors(), tuple()}.
get_table_storage_class(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_table_storage_class(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, []).

-spec get_table_storage_class(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_table_storage_class_response(), tuple()} |
    {error, any()} |
    {error, get_table_storage_class_errors(), tuple()}.
get_table_storage_class(Client, Name, Namespace, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/storage-class"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the namespaces within a table bucket.
%%
%% For more information, see Table namespaces:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:ListNamespaces' permission to
%% use this operation.
-spec list_namespaces(aws_client:aws_client(), binary() | list()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, TableBucketARN)
  when is_map(Client) ->
    list_namespaces(Client, TableBucketARN, #{}, #{}).

-spec list_namespaces(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_namespaces(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec list_namespaces(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/namespaces/", aws_util:encode_uri(TableBucketARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"continuationToken">>, maps:get(<<"continuationToken">>, QueryMap, undefined)},
        {<<"maxNamespaces">>, maps:get(<<"maxNamespaces">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists table buckets for your account.
%%
%% For more information, see S3 Table buckets:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:ListTableBuckets' permission
%% to use this operation.
-spec list_table_buckets(aws_client:aws_client()) ->
    {ok, list_table_buckets_response(), tuple()} |
    {error, any()} |
    {error, list_table_buckets_errors(), tuple()}.
list_table_buckets(Client)
  when is_map(Client) ->
    list_table_buckets(Client, #{}, #{}).

-spec list_table_buckets(aws_client:aws_client(), map(), map()) ->
    {ok, list_table_buckets_response(), tuple()} |
    {error, any()} |
    {error, list_table_buckets_errors(), tuple()}.
list_table_buckets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_table_buckets(Client, QueryMap, HeadersMap, []).

-spec list_table_buckets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_table_buckets_response(), tuple()} |
    {error, any()} |
    {error, list_table_buckets_errors(), tuple()}.
list_table_buckets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/buckets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"continuationToken">>, maps:get(<<"continuationToken">>, QueryMap, undefined)},
        {<<"maxBuckets">>, maps:get(<<"maxBuckets">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the migrations whose destination is in a table bucket, a
%% namespace or a table.
%%
%% Specify a `tableBucketARN' to list the migrations into a table bucket,
%% and add a `namespace', or a `namespace' and a `name', to
%% narrow the list. Or specify a `tableARN' to list the migrations into a
%% table.
%%
%% Migrations are listed newest first. Results are paginated: use
%% `maxResults' to set the page size, and pass the `nextToken' from a
%% response to retrieve the next page of results. A page can contain fewer
%% migrations than `maxResults', or none, and still return a
%% `nextToken'. Continue until a response has no `nextToken'.
%%
%% Permissions You must have the `s3tables:ListTableMigrations'
%% permission to use this operation.
-spec list_table_migrations(aws_client:aws_client()) ->
    {ok, list_table_migrations_response(), tuple()} |
    {error, any()} |
    {error, list_table_migrations_errors(), tuple()}.
list_table_migrations(Client)
  when is_map(Client) ->
    list_table_migrations(Client, #{}, #{}).

-spec list_table_migrations(aws_client:aws_client(), map(), map()) ->
    {ok, list_table_migrations_response(), tuple()} |
    {error, any()} |
    {error, list_table_migrations_errors(), tuple()}.
list_table_migrations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_table_migrations(Client, QueryMap, HeadersMap, []).

-spec list_table_migrations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_table_migrations_response(), tuple()} |
    {error, any()} |
    {error, list_table_migrations_errors(), tuple()}.
list_table_migrations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-table-migrations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"hasValidPlan">>, maps:get(<<"hasValidPlan">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)},
        {<<"tableARN">>, maps:get(<<"tableARN">>, QueryMap, undefined)},
        {<<"tableBucketARN">>, maps:get(<<"tableBucketARN">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List tables in the given table bucket.
%%
%% For more information, see S3 Tables:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:ListTables' permission to use
%% this operation.
-spec list_tables(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, TableBucketARN)
  when is_map(Client) ->
    list_tables(Client, TableBucketARN, #{}, #{}).

-spec list_tables(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, TableBucketARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tables(Client, TableBucketARN, QueryMap, HeadersMap, []).

-spec list_tables(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, TableBucketARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"continuationToken">>, maps:get(<<"continuationToken">>, QueryMap, undefined)},
        {<<"maxTables">>, maps:get(<<"maxTables">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the tags applied to a specified Amazon S3 Tables
%% resource.
%%
%% Each tag is a label consisting of a key and value pair. Tags can help you
%% organize, track costs for, and control access to resources.
%%
%% For a list of S3 resources that support tagging, see Managing tags for
%% Amazon S3 resources:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#manage-tags.
%%
%% Permissions For tables and table buckets, you must have the
%% `s3tables:ListTagsForResource' permission to use this operation.
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
    Path = ["/tag/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the encryption configuration for a table bucket.
%%
%% Permissions You must have the `s3tables:PutTableBucketEncryption'
%% permission to use this operation.
%%
%% If you choose SSE-KMS encryption you must grant the S3 Tables maintenance
%% principal access to your KMS key. For more information, see Permissions
%% requirements for S3 Tables SSE-KMS encryption:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html
%% in the Amazon Simple Storage Service User Guide.
-spec put_table_bucket_encryption(aws_client:aws_client(), binary() | list(), put_table_bucket_encryption_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_encryption_errors(), tuple()}.
put_table_bucket_encryption(Client, TableBucketARN, Input) ->
    put_table_bucket_encryption(Client, TableBucketARN, Input, []).

-spec put_table_bucket_encryption(aws_client:aws_client(), binary() | list(), put_table_bucket_encryption_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_encryption_errors(), tuple()}.
put_table_bucket_encryption(Client, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/encryption"],
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

%% @doc Sets, updates, or removes the server access logging configuration for
%% a table bucket.
%%
%% When logging is enabled, Amazon S3 delivers a record of the requests made
%% to the table bucket and its tables to the target general purpose bucket
%% that you specify. To disable logging, call this operation with an empty
%% `tableBucketLoggingStatus'. For more information, see Server access
%% logging for table buckets:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-server-logs.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:PutTableBucketLogging'
%% permission to use this operation.
-spec put_table_bucket_logging(aws_client:aws_client(), binary() | list(), put_table_bucket_logging_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_logging_errors(), tuple()}.
put_table_bucket_logging(Client, TableBucketARN, Input) ->
    put_table_bucket_logging(Client, TableBucketARN, Input, []).

-spec put_table_bucket_logging(aws_client:aws_client(), binary() | list(), put_table_bucket_logging_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_logging_errors(), tuple()}.
put_table_bucket_logging(Client, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/logging"],
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

%% @doc Creates a new maintenance configuration or replaces an existing
%% maintenance configuration for a table bucket.
%%
%% For more information, see Amazon S3 table bucket maintenance:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the
%% `s3tables:PutTableBucketMaintenanceConfiguration' permission to use
%% this operation.
-spec put_table_bucket_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), put_table_bucket_maintenance_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_maintenance_configuration_errors(), tuple()}.
put_table_bucket_maintenance_configuration(Client, TableBucketARN, Type, Input) ->
    put_table_bucket_maintenance_configuration(Client, TableBucketARN, Type, Input, []).

-spec put_table_bucket_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), put_table_bucket_maintenance_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_maintenance_configuration_errors(), tuple()}.
put_table_bucket_maintenance_configuration(Client, TableBucketARN, Type, Input0, Options0) ->
    Method = put,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/maintenance/", aws_util:encode_uri(Type), ""],
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

%% @doc Sets the metrics configuration for a table bucket.
%%
%% Permissions You must have the
%% `s3tables:PutTableBucketMetricsConfiguration' permission to use this
%% operation.
-spec put_table_bucket_metrics_configuration(aws_client:aws_client(), binary() | list(), put_table_bucket_metrics_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_metrics_configuration_errors(), tuple()}.
put_table_bucket_metrics_configuration(Client, TableBucketARN, Input) ->
    put_table_bucket_metrics_configuration(Client, TableBucketARN, Input, []).

-spec put_table_bucket_metrics_configuration(aws_client:aws_client(), binary() | list(), put_table_bucket_metrics_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_metrics_configuration_errors(), tuple()}.
put_table_bucket_metrics_configuration(Client, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/metrics"],
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

%% @doc Creates a new table bucket policy or replaces an existing table
%% bucket policy for a table bucket.
%%
%% For more information, see Adding a table bucket policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-add
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:PutTableBucketPolicy'
%% permission to use this operation.
-spec put_table_bucket_policy(aws_client:aws_client(), binary() | list(), put_table_bucket_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_policy_errors(), tuple()}.
put_table_bucket_policy(Client, TableBucketARN, Input) ->
    put_table_bucket_policy(Client, TableBucketARN, Input, []).

-spec put_table_bucket_policy(aws_client:aws_client(), binary() | list(), put_table_bucket_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_policy_errors(), tuple()}.
put_table_bucket_policy(Client, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/policy"],
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

%% @doc Creates or updates the replication configuration for a table bucket.
%%
%% This operation defines how tables in the source bucket are replicated to
%% destination buckets. Replication helps ensure data availability and
%% disaster recovery across regions or accounts.
%%
%% Permissions You must have the `s3tables:PutTableBucketReplication'
%% permission to use this operation. The IAM role specified in the
%% configuration must have permissions to read from the source bucket and
%% write permissions to all destination buckets.
%%
%% You must also have the following permissions:
%%
%% `s3tables:GetTable' permission on the source table.
%%
%% `s3tables:ListTables' permission on the bucket containing the table.
%%
%% `s3tables:CreateTable' permission for the destination.
%%
%% `s3tables:CreateNamespace' permission for the destination.
%%
%% `s3tables:GetTableMaintenanceConfig' permission for the source bucket.
%%
%% `s3tables:PutTableMaintenanceConfig' permission for the destination
%% bucket.
%%
%% You must have `iam:PassRole' permission with condition allowing roles
%% to be passed to `replication.s3tables.amazonaws.com'.
-spec put_table_bucket_replication(aws_client:aws_client(), put_table_bucket_replication_request()) ->
    {ok, put_table_bucket_replication_response(), tuple()} |
    {error, any()} |
    {error, put_table_bucket_replication_errors(), tuple()}.
put_table_bucket_replication(Client, Input) ->
    put_table_bucket_replication(Client, Input, []).

-spec put_table_bucket_replication(aws_client:aws_client(), put_table_bucket_replication_request(), proplists:proplist()) ->
    {ok, put_table_bucket_replication_response(), tuple()} |
    {error, any()} |
    {error, put_table_bucket_replication_errors(), tuple()}.
put_table_bucket_replication(Client, Input0, Options0) ->
    Method = put,
    Path = ["/table-bucket-replication"],
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
                     {<<"tableBucketARN">>, <<"tableBucketARN">>},
                     {<<"versionToken">>, <<"versionToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets or updates the storage class configuration for a table bucket.
%%
%% This configuration serves as the default storage class for all new tables
%% created in the bucket, allowing you to optimize storage costs at the
%% bucket level.
%%
%% Permissions You must have the `s3tables:PutTableBucketStorageClass'
%% permission to use this operation.
-spec put_table_bucket_storage_class(aws_client:aws_client(), binary() | list(), put_table_bucket_storage_class_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_storage_class_errors(), tuple()}.
put_table_bucket_storage_class(Client, TableBucketARN, Input) ->
    put_table_bucket_storage_class(Client, TableBucketARN, Input, []).

-spec put_table_bucket_storage_class(aws_client:aws_client(), binary() | list(), put_table_bucket_storage_class_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_bucket_storage_class_errors(), tuple()}.
put_table_bucket_storage_class(Client, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/buckets/", aws_util:encode_uri(TableBucketARN), "/storage-class"],
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

%% @doc Creates a new maintenance configuration or replaces an existing
%% maintenance configuration for a table.
%%
%% For more information, see S3 Tables maintenance:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the
%% `s3tables:PutTableMaintenanceConfiguration' permission to use this
%% operation.
-spec put_table_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), put_table_maintenance_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_maintenance_configuration_errors(), tuple()}.
put_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, Type, Input) ->
    put_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, Type, Input, []).

-spec put_table_maintenance_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), put_table_maintenance_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_maintenance_configuration_errors(), tuple()}.
put_table_maintenance_configuration(Client, Name, Namespace, TableBucketARN, Type, Input0, Options0) ->
    Method = put,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/maintenance/", aws_util:encode_uri(Type), ""],
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

%% @doc Creates a new table policy or replaces an existing table policy for a
%% table.
%%
%% For more information, see Adding a table policy:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-add
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:PutTablePolicy' permission to
%% use this operation.
-spec put_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_table_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_policy_errors(), tuple()}.
put_table_policy(Client, Name, Namespace, TableBucketARN, Input) ->
    put_table_policy(Client, Name, Namespace, TableBucketARN, Input, []).

-spec put_table_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_table_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_policy_errors(), tuple()}.
put_table_policy(Client, Name, Namespace, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/policy"],
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

%% @doc Creates or updates the expiration configuration settings for records
%% in a table, including the status of the configuration.
%%
%% If you enable record expiration for a table, records expire and are
%% automatically removed from the table after the number of days that you
%% specify.
%%
%% Permissions You must have the
%% `s3tables:PutTableRecordExpirationConfiguration' permission to use
%% this operation.
-spec put_table_record_expiration_configuration(aws_client:aws_client(), put_table_record_expiration_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_record_expiration_configuration_errors(), tuple()}.
put_table_record_expiration_configuration(Client, Input) ->
    put_table_record_expiration_configuration(Client, Input, []).

-spec put_table_record_expiration_configuration(aws_client:aws_client(), put_table_record_expiration_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_table_record_expiration_configuration_errors(), tuple()}.
put_table_record_expiration_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/table-record-expiration"],
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
                     {<<"tableArn">>, <<"tableArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or updates the replication configuration for a specific
%% table.
%%
%% This operation allows you to define table-level replication independently
%% of bucket-level replication, providing granular control over which tables
%% are replicated and where.
%%
%% Permissions You must have the `s3tables:PutTableReplication'
%% permission to use this operation. The IAM role specified in the
%% configuration must have permissions to read from the source table and
%% write to all destination tables.
%%
%% You must also have the following permissions:
%%
%% `s3tables:GetTable' permission on the source table being replicated.
%%
%% `s3tables:CreateTable' permission for the destination.
%%
%% `s3tables:CreateNamespace' permission for the destination.
%%
%% `s3tables:GetTableMaintenanceConfig' permission for the source table.
%%
%% `s3tables:PutTableMaintenanceConfig' permission for the destination
%% table.
%%
%% You must have `iam:PassRole' permission with condition allowing roles
%% to be passed to `replication.s3tables.amazonaws.com'.
-spec put_table_replication(aws_client:aws_client(), put_table_replication_request()) ->
    {ok, put_table_replication_response(), tuple()} |
    {error, any()} |
    {error, put_table_replication_errors(), tuple()}.
put_table_replication(Client, Input) ->
    put_table_replication(Client, Input, []).

-spec put_table_replication(aws_client:aws_client(), put_table_replication_request(), proplists:proplist()) ->
    {ok, put_table_replication_response(), tuple()} |
    {error, any()} |
    {error, put_table_replication_errors(), tuple()}.
put_table_replication(Client, Input0, Options0) ->
    Method = put,
    Path = ["/table-replication"],
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
                     {<<"tableArn">>, <<"tableArn">>},
                     {<<"versionToken">>, <<"versionToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Renames a table or a namespace.
%%
%% For more information, see S3 Tables:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html
%% in the Amazon Simple Storage Service User Guide.
%%
%% Permissions You must have the `s3tables:RenameTable' permission to use
%% this operation.
-spec rename_table(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), rename_table_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, rename_table_errors(), tuple()}.
rename_table(Client, Name, Namespace, TableBucketARN, Input) ->
    rename_table(Client, Name, Namespace, TableBucketARN, Input, []).

-spec rename_table(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), rename_table_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, rename_table_errors(), tuple()}.
rename_table(Client, Name, Namespace, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/rename"],
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

%% @doc Starts migrating an Amazon Web Services Glue Data Catalog table into
%% a new table in a table bucket.
%%
%% The migration runs asynchronously: this operation returns the migration ID
%% and its initial state, and you track progress with
%% `GetTableMigration'.
%%
%% The namespace must already exist, and a table with the specified name must
%% not. The migration creates the table during planning and commits data to
%% it as it runs. Until you call `CompleteTableMigration', you can read
%% the table but you can't write to it. If the migration fails or is
%% cancelled, the table and the data already committed to it remain.
%%
%% The migration first checks the source and the destination, and writes the
%% table compatibility and object compatibility reports to the bucket that
%% you specify in `migrationOutput'. If you set `reviewMigrationPlan'
%% to `true', the migration waits in the `pendingReview' state so
%% that you can review the reports, and continues only when you call
%% `UpdateTableMigration' with `requestedState' set to `queued'.
%% If you don't continue or cancel the migration within 30 days, the
%% migration fails. Otherwise it continues to migrate the data, and writes
%% the object migration report when the migration ends. If planning fails,
%% the migration writes no object migration report.
%%
%% Permissions You must have the `s3tables:StartTableMigration'
%% permission to use this operation.
%%
%% You must have the `iam:PassRole' permission on the role that you
%% specify in `roleARN', with a condition that allows passing it to
%% `migration.s3tables.amazonaws.com'. The associated resource is the
%% table bucket.
%%
%% If `destinationTable' specifies SSE-KMS encryption, you must have the
%% `kms:DescribeKey' and `kms:GenerateDataKey' permissions on the KMS
%% key. You must also grant the S3 Tables maintenance principal access to the
%% key. For more information, see Permissions requirements for S3 Tables
%% SSE-KMS encryption:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html.
-spec start_table_migration(aws_client:aws_client(), start_table_migration_request()) ->
    {ok, start_table_migration_response(), tuple()} |
    {error, any()} |
    {error, start_table_migration_errors(), tuple()}.
start_table_migration(Client, Input) ->
    start_table_migration(Client, Input, []).

-spec start_table_migration(aws_client:aws_client(), start_table_migration_request(), proplists:proplist()) ->
    {ok, start_table_migration_response(), tuple()} |
    {error, any()} |
    {error, start_table_migration_errors(), tuple()}.
start_table_migration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-table-migration"],
    SuccessStatusCode = 202,
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

%% @doc Migrates the changes in the source table since the previous start or
%% sync, such as added and deleted source objects, into the destination
%% table.
%%
%% The sync runs asynchronously: this operation returns the migration ID of
%% the sync and its initial state, and you track progress with
%% `GetTableMigration'.
%%
%% A sync uses the source, destination and data migration settings of the
%% table's migration, and plans the work and writes its reports in the
%% same way as `StartTableMigration'. You can sync after a start or sync
%% that succeeded, failed or was cancelled, if an earlier start or sync of
%% the table has a valid plan (`hasValidPlan'). You can't sync a
%% table while a start or sync is in progress for it, and you can sync a
%% table until you call `CompleteTableMigration' for it. If a source
%% object that an earlier migration migrated has since been overwritten, the
%% sync fails.
%%
%% Permissions You must have the `s3tables:SyncTableMigration' permission
%% to use this operation.
%%
%% You must have the `iam:PassRole' permission on the role that you
%% specify in `roleARN', with a condition that allows passing it to
%% `migration.s3tables.amazonaws.com'. The associated resource is the
%% table.
-spec sync_table_migration(aws_client:aws_client(), sync_table_migration_request()) ->
    {ok, sync_table_migration_response(), tuple()} |
    {error, any()} |
    {error, sync_table_migration_errors(), tuple()}.
sync_table_migration(Client, Input) ->
    sync_table_migration(Client, Input, []).

-spec sync_table_migration(aws_client:aws_client(), sync_table_migration_request(), proplists:proplist()) ->
    {ok, sync_table_migration_response(), tuple()} |
    {error, any()} |
    {error, sync_table_migration_errors(), tuple()}.
sync_table_migration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sync-table-migration"],
    SuccessStatusCode = 202,
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

%% @doc Applies one or more user-defined tags to an Amazon S3 Tables resource
%% or updates existing tags.
%%
%% Each tag is a label consisting of a key and value pair. Tags can help you
%% organize, track costs for, and control access to your resources. You can
%% add up to 50 tags for each S3 resource.
%%
%% For a list of S3 resources that support tagging, see Managing tags for
%% Amazon S3 resources:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#manage-tags.
%%
%% Permissions For tables and table buckets, you must have the
%% `s3tables:TagResource' permission to use this operation.
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
    Path = ["/tag/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes the specified user-defined tags from an Amazon S3 Tables
%% resource.
%%
%% You can pass one or more tag keys.
%%
%% For a list of S3 resources that support tagging, see Managing tags for
%% Amazon S3 resources:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#manage-tags.
%%
%% Permissions For tables and table buckets, you must have the
%% `s3tables:UntagResource' permission to use this operation.
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
    Path = ["/tag/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the metadata location for a table.
%%
%% The metadata location of a table must be an S3 URI that begins with the
%% table's warehouse location. The metadata location for an Apache
%% Iceberg table must end with `.metadata.json', or if the metadata file
%% is Gzip-compressed, `.metadata.json.gz'.
%%
%% Permissions You must have the `s3tables:UpdateTableMetadataLocation'
%% permission to use this operation.
-spec update_table_metadata_location(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_table_metadata_location_request()) ->
    {ok, update_table_metadata_location_response(), tuple()} |
    {error, any()} |
    {error, update_table_metadata_location_errors(), tuple()}.
update_table_metadata_location(Client, Name, Namespace, TableBucketARN, Input) ->
    update_table_metadata_location(Client, Name, Namespace, TableBucketARN, Input, []).

-spec update_table_metadata_location(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_table_metadata_location_request(), proplists:proplist()) ->
    {ok, update_table_metadata_location_response(), tuple()} |
    {error, any()} |
    {error, update_table_metadata_location_errors(), tuple()}.
update_table_metadata_location(Client, Name, Namespace, TableBucketARN, Input0, Options0) ->
    Method = put,
    Path = ["/tables/", aws_util:encode_uri(TableBucketARN), "/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/metadata-location"],
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

%% @doc Requests a state change for a migration.
%%
%% Identify the migration by its `migrationId' or by the `tableARN'
%% of its destination table.
%%
%% Set `requestedState' to `queued' to continue a migration in the
%% `pendingReview' state; the migration moves to `queued' or
%% `migrating'. Set it to `cancelled' to cancel a migration in the
%% `new', `planning', `pendingReview', `queued' or
%% `migrating' state; the migration moves to `cancelling', finishes
%% the work in progress, and then ends in the `cancelled' state, or in
%% the `failed' state if any objects failed to migrate. Data that the
%% migration already committed stays in the destination table.
%%
%% Permissions You must have the `s3tables:UpdateTableMigration'
%% permission to use this operation.
-spec update_table_migration(aws_client:aws_client(), update_table_migration_request()) ->
    {ok, update_table_migration_response(), tuple()} |
    {error, any()} |
    {error, update_table_migration_errors(), tuple()}.
update_table_migration(Client, Input) ->
    update_table_migration(Client, Input, []).

-spec update_table_migration(aws_client:aws_client(), update_table_migration_request(), proplists:proplist()) ->
    {ok, update_table_migration_response(), tuple()} |
    {error, any()} |
    {error, update_table_migration_errors(), tuple()}.
update_table_migration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-table-migration"],
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
                     {<<"migrationId">>, <<"migrationId">>},
                     {<<"tableARN">>, <<"tableARN">>}
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
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"s3tables">>},
    DefaultHost = build_host(<<"s3tables">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_S3TABLES">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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
    case response_body(Client) of
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
    {ok, Body} = response_body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

%% hackney 1.x and 2.x return a client reference that is read with
%% hackney:body/1. hackney 3.0 removed hackney:body/1 and returns the body in
%% the response tuple, so a binary is already the body.
response_body(Body) when is_binary(Body) ->
    {ok, Body};
response_body(Client) ->
    apply(hackney, body, [Client]).

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

