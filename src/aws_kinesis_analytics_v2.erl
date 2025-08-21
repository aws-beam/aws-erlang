%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% Amazon Managed Service for Apache Flink was previously known as Amazon
%% Kinesis Data Analytics for Apache Flink.
%%
%% Amazon Managed Service for Apache Flink is a fully managed service that
%% you can use to process and analyze streaming data using Java, Python, SQL,
%% or Scala. The service
%% enables you to quickly author and run Java, SQL, or Scala code against
%% streaming sources to perform time
%% series analytics, feed real-time dashboards, and create real-time metrics.
-module(aws_kinesis_analytics_v2).

-export([add_application_cloud_watch_logging_option/2,
         add_application_cloud_watch_logging_option/3,
         add_application_input/2,
         add_application_input/3,
         add_application_input_processing_configuration/2,
         add_application_input_processing_configuration/3,
         add_application_output/2,
         add_application_output/3,
         add_application_reference_data_source/2,
         add_application_reference_data_source/3,
         add_application_vpc_configuration/2,
         add_application_vpc_configuration/3,
         create_application/2,
         create_application/3,
         create_application_presigned_url/2,
         create_application_presigned_url/3,
         create_application_snapshot/2,
         create_application_snapshot/3,
         delete_application/2,
         delete_application/3,
         delete_application_cloud_watch_logging_option/2,
         delete_application_cloud_watch_logging_option/3,
         delete_application_input_processing_configuration/2,
         delete_application_input_processing_configuration/3,
         delete_application_output/2,
         delete_application_output/3,
         delete_application_reference_data_source/2,
         delete_application_reference_data_source/3,
         delete_application_snapshot/2,
         delete_application_snapshot/3,
         delete_application_vpc_configuration/2,
         delete_application_vpc_configuration/3,
         describe_application/2,
         describe_application/3,
         describe_application_operation/2,
         describe_application_operation/3,
         describe_application_snapshot/2,
         describe_application_snapshot/3,
         describe_application_version/2,
         describe_application_version/3,
         discover_input_schema/2,
         discover_input_schema/3,
         list_application_operations/2,
         list_application_operations/3,
         list_application_snapshots/2,
         list_application_snapshots/3,
         list_application_versions/2,
         list_application_versions/3,
         list_applications/2,
         list_applications/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         rollback_application/2,
         rollback_application/3,
         start_application/2,
         start_application/3,
         stop_application/2,
         stop_application/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_application/2,
         update_application/3,
         update_application_maintenance_configuration/2,
         update_application_maintenance_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% monitoring_configuration_description() :: #{
%%   <<"ConfigurationType">> => list(any()),
%%   <<"LogLevel">> => list(any()),
%%   <<"MetricsLevel">> => list(any())
%% }
-type monitoring_configuration_description() :: #{binary() => any()}.

%% Example:
%% input_parallelism_update() :: #{
%%   <<"CountUpdate">> => integer()
%% }
-type input_parallelism_update() :: #{binary() => any()}.

%% Example:
%% add_application_vpc_configuration_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"OperationId">> => string(),
%%   <<"VpcConfigurationDescription">> => vpc_configuration_description()
%% }
-type add_application_vpc_configuration_response() :: #{binary() => any()}.

%% Example:
%% application_maintenance_configuration_update() :: #{
%%   <<"ApplicationMaintenanceWindowStartTimeUpdate">> => string()
%% }
-type application_maintenance_configuration_update() :: #{binary() => any()}.

%% Example:
%% input_update() :: #{
%%   <<"InputId">> => string(),
%%   <<"InputParallelismUpdate">> => input_parallelism_update(),
%%   <<"InputProcessingConfigurationUpdate">> => input_processing_configuration_update(),
%%   <<"InputSchemaUpdate">> => input_schema_update(),
%%   <<"KinesisFirehoseInputUpdate">> => kinesis_firehose_input_update(),
%%   <<"KinesisStreamsInputUpdate">> => kinesis_streams_input_update(),
%%   <<"NamePrefixUpdate">> => string()
%% }
-type input_update() :: #{binary() => any()}.

%% Example:
%% zeppelin_monitoring_configuration() :: #{
%%   <<"LogLevel">> => list(any())
%% }
-type zeppelin_monitoring_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% application_detail() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationConfigurationDescription">> => application_configuration_description(),
%%   <<"ApplicationDescription">> => string(),
%%   <<"ApplicationMaintenanceConfigurationDescription">> => application_maintenance_configuration_description(),
%%   <<"ApplicationMode">> => list(any()),
%%   <<"ApplicationName">> => string(),
%%   <<"ApplicationStatus">> => list(any()),
%%   <<"ApplicationVersionCreateTimestamp">> => non_neg_integer(),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"ApplicationVersionRolledBackFrom">> => float(),
%%   <<"ApplicationVersionRolledBackTo">> => float(),
%%   <<"ApplicationVersionUpdatedFrom">> => float(),
%%   <<"CloudWatchLoggingOptionDescriptions">> => list(cloud_watch_logging_option_description()),
%%   <<"ConditionalToken">> => string(),
%%   <<"CreateTimestamp">> => non_neg_integer(),
%%   <<"LastUpdateTimestamp">> => non_neg_integer(),
%%   <<"RuntimeEnvironment">> => list(any()),
%%   <<"ServiceExecutionRole">> => string()
%% }
-type application_detail() :: #{binary() => any()}.

%% Example:
%% application_snapshot_configuration() :: #{
%%   <<"SnapshotsEnabled">> => boolean()
%% }
-type application_snapshot_configuration() :: #{binary() => any()}.

%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% glue_data_catalog_configuration_description() :: #{
%%   <<"DatabaseARN">> => string()
%% }
-type glue_data_catalog_configuration_description() :: #{binary() => any()}.

%% Example:
%% parallelism_configuration_update() :: #{
%%   <<"AutoScalingEnabledUpdate">> => boolean(),
%%   <<"ConfigurationTypeUpdate">> => list(any()),
%%   <<"ParallelismPerKPUUpdate">> => integer(),
%%   <<"ParallelismUpdate">> => integer()
%% }
-type parallelism_configuration_update() :: #{binary() => any()}.

%% Example:
%% deploy_as_application_configuration_update() :: #{
%%   <<"S3ContentLocationUpdate">> => s3_content_base_location_update()
%% }
-type deploy_as_application_configuration_update() :: #{binary() => any()}.

%% Example:
%% glue_data_catalog_configuration() :: #{
%%   <<"DatabaseARN">> => string()
%% }
-type glue_data_catalog_configuration() :: #{binary() => any()}.

%% Example:
%% vpc_configuration() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type vpc_configuration() :: #{binary() => any()}.

%% Example:
%% custom_artifact_configuration() :: #{
%%   <<"ArtifactType">> => list(any()),
%%   <<"MavenReference">> => maven_reference(),
%%   <<"S3ContentLocation">> => s3_content_location()
%% }
-type custom_artifact_configuration() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% add_application_input_processing_configuration_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"InputId">> => string(),
%%   <<"InputProcessingConfigurationDescription">> => input_processing_configuration_description()
%% }
-type add_application_input_processing_configuration_response() :: #{binary() => any()}.

%% Example:
%% property_group() :: #{
%%   <<"PropertyGroupId">> => string(),
%%   <<"PropertyMap">> => map()
%% }
-type property_group() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% flink_run_configuration() :: #{
%%   <<"AllowNonRestoredState">> => boolean()
%% }
-type flink_run_configuration() :: #{binary() => any()}.

%% Example:
%% catalog_configuration_description() :: #{
%%   <<"GlueDataCatalogConfigurationDescription">> => glue_data_catalog_configuration_description()
%% }
-type catalog_configuration_description() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logging_option_description() :: #{
%%   <<"CloudWatchLoggingOptionId">> => string(),
%%   <<"LogStreamARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type cloud_watch_logging_option_description() :: #{binary() => any()}.

%% Example:
%% add_application_cloud_watch_logging_option_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"CloudWatchLoggingOptionDescriptions">> => list(cloud_watch_logging_option_description()),
%%   <<"OperationId">> => string()
%% }
-type add_application_cloud_watch_logging_option_response() :: #{binary() => any()}.

%% Example:
%% input_schema_update() :: #{
%%   <<"RecordColumnUpdates">> => list(record_column()),
%%   <<"RecordEncodingUpdate">> => string(),
%%   <<"RecordFormatUpdate">> => record_format()
%% }
-type input_schema_update() :: #{binary() => any()}.

%% Example:
%% discover_input_schema_response() :: #{
%%   <<"InputSchema">> => source_schema(),
%%   <<"ParsedInputRecords">> => list(list(string())()),
%%   <<"ProcessedInputRecords">> => list(string()),
%%   <<"RawInputRecords">> => list(string())
%% }
-type discover_input_schema_response() :: #{binary() => any()}.

%% Example:
%% sql_application_configuration_update() :: #{
%%   <<"InputUpdates">> => list(input_update()),
%%   <<"OutputUpdates">> => list(output_update()),
%%   <<"ReferenceDataSourceUpdates">> => list(reference_data_source_update())
%% }
-type sql_application_configuration_update() :: #{binary() => any()}.

%% Example:
%% application_encryption_configuration_update() :: #{
%%   <<"KeyIdUpdate">> => string(),
%%   <<"KeyTypeUpdate">> => list(any())
%% }
-type application_encryption_configuration_update() :: #{binary() => any()}.

%% Example:
%% add_application_vpc_configuration_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"ConditionalToken">> => string(),
%%   <<"CurrentApplicationVersionId">> => float(),
%%   <<"VpcConfiguration">> := vpc_configuration()
%% }
-type add_application_vpc_configuration_request() :: #{binary() => any()}.

%% Example:
%% resource_provisioned_throughput_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_provisioned_throughput_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% custom_artifact_configuration_description() :: #{
%%   <<"ArtifactType">> => list(any()),
%%   <<"MavenReferenceDescription">> => maven_reference(),
%%   <<"S3ContentLocationDescription">> => s3_content_location()
%% }
-type custom_artifact_configuration_description() :: #{binary() => any()}.

%% Example:
%% describe_application_operation_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"OperationId">> := string()
%% }
-type describe_application_operation_request() :: #{binary() => any()}.

%% Example:
%% describe_application_version_response() :: #{
%%   <<"ApplicationVersionDetail">> => application_detail()
%% }
-type describe_application_version_response() :: #{binary() => any()}.

%% Example:
%% delete_application_reference_data_source_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float()
%% }
-type delete_application_reference_data_source_response() :: #{binary() => any()}.

%% Example:
%% input_starting_position_configuration() :: #{
%%   <<"InputStartingPosition">> => list(any())
%% }
-type input_starting_position_configuration() :: #{binary() => any()}.

%% Example:
%% vpc_configuration_description() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string()),
%%   <<"VpcConfigurationId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type vpc_configuration_description() :: #{binary() => any()}.

%% Example:
%% zeppelin_monitoring_configuration_description() :: #{
%%   <<"LogLevel">> => list(any())
%% }
-type zeppelin_monitoring_configuration_description() :: #{binary() => any()}.

%% Example:
%% add_application_input_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"InputDescriptions">> => list(input_description())
%% }
-type add_application_input_response() :: #{binary() => any()}.

%% Example:
%% zeppelin_application_configuration_description() :: #{
%%   <<"CatalogConfigurationDescription">> => catalog_configuration_description(),
%%   <<"CustomArtifactsConfigurationDescription">> => list(custom_artifact_configuration_description()),
%%   <<"DeployAsApplicationConfigurationDescription">> => deploy_as_application_configuration_description(),
%%   <<"MonitoringConfigurationDescription">> => zeppelin_monitoring_configuration_description()
%% }
-type zeppelin_application_configuration_description() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_input_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_firehose_input_description() :: #{binary() => any()}.

%% Example:
%% vpc_configuration_update() :: #{
%%   <<"SecurityGroupIdUpdates">> => list(string()),
%%   <<"SubnetIdUpdates">> => list(string()),
%%   <<"VpcConfigurationId">> => string()
%% }
-type vpc_configuration_update() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_output_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_firehose_output_description() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_input_update() :: #{
%%   <<"ResourceARNUpdate">> => string()
%% }
-type kinesis_firehose_input_update() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logging_option_update() :: #{
%%   <<"CloudWatchLoggingOptionId">> => string(),
%%   <<"LogStreamARNUpdate">> => string()
%% }
-type cloud_watch_logging_option_update() :: #{binary() => any()}.

%% Example:
%% code_content_description() :: #{
%%   <<"CodeMD5">> => string(),
%%   <<"CodeSize">> => float(),
%%   <<"S3ApplicationCodeLocationDescription">> => s3_application_code_location_description(),
%%   <<"TextContent">> => string()
%% }
-type code_content_description() :: #{binary() => any()}.

%% Example:
%% application_system_rollback_configuration() :: #{
%%   <<"RollbackEnabled">> => boolean()
%% }
-type application_system_rollback_configuration() :: #{binary() => any()}.

%% Example:
%% describe_application_operation_response() :: #{
%%   <<"ApplicationOperationInfoDetails">> => application_operation_info_details()
%% }
-type describe_application_operation_response() :: #{binary() => any()}.

%% Example:
%% application_version_summary() :: #{
%%   <<"ApplicationStatus">> => list(any()),
%%   <<"ApplicationVersionId">> => float()
%% }
-type application_version_summary() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_input_update() :: #{
%%   <<"ResourceARNUpdate">> => string()
%% }
-type kinesis_streams_input_update() :: #{binary() => any()}.

%% Example:
%% list_application_snapshots_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SnapshotSummaries">> => list(snapshot_details())
%% }
-type list_application_snapshots_response() :: #{binary() => any()}.

%% Example:
%% input_processing_configuration() :: #{
%%   <<"InputLambdaProcessor">> => input_lambda_processor()
%% }
-type input_processing_configuration() :: #{binary() => any()}.

%% Example:
%% delete_application_input_processing_configuration_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CurrentApplicationVersionId">> := float(),
%%   <<"InputId">> := string()
%% }
-type delete_application_input_processing_configuration_request() :: #{binary() => any()}.

%% Example:
%% output_description() :: #{
%%   <<"DestinationSchema">> => destination_schema(),
%%   <<"KinesisFirehoseOutputDescription">> => kinesis_firehose_output_description(),
%%   <<"KinesisStreamsOutputDescription">> => kinesis_streams_output_description(),
%%   <<"LambdaOutputDescription">> => lambda_output_description(),
%%   <<"Name">> => string(),
%%   <<"OutputId">> => string()
%% }
-type output_description() :: #{binary() => any()}.

%% Example:
%% monitoring_configuration() :: #{
%%   <<"ConfigurationType">> => list(any()),
%%   <<"LogLevel">> => list(any()),
%%   <<"MetricsLevel">> => list(any())
%% }
-type monitoring_configuration() :: #{binary() => any()}.

%% Example:
%% error_info() :: #{
%%   <<"ErrorString">> => string()
%% }
-type error_info() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_application_cloud_watch_logging_option_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CloudWatchLoggingOptionId">> := string(),
%%   <<"ConditionalToken">> => string(),
%%   <<"CurrentApplicationVersionId">> => float()
%% }
-type delete_application_cloud_watch_logging_option_request() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_output() :: #{
%%   <<"ResourceARN">> => string()
%% }
-type kinesis_streams_output() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_output() :: #{
%%   <<"ResourceARN">> => string()
%% }
-type kinesis_firehose_output() :: #{binary() => any()}.

%% Example:
%% unable_to_detect_schema_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ProcessedInputRecords">> => list(string()),
%%   <<"RawInputRecords">> => list(string())
%% }
-type unable_to_detect_schema_exception() :: #{binary() => any()}.

%% Example:
%% create_application_presigned_url_response() :: #{
%%   <<"AuthorizedUrl">> => string()
%% }
-type create_application_presigned_url_response() :: #{binary() => any()}.

%% Example:
%% describe_application_snapshot_response() :: #{
%%   <<"SnapshotDetails">> => snapshot_details()
%% }
-type describe_application_snapshot_response() :: #{binary() => any()}.

%% Example:
%% create_application_snapshot_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"SnapshotName">> := string()
%% }
-type create_application_snapshot_request() :: #{binary() => any()}.

%% Example:
%% reference_data_source() :: #{
%%   <<"ReferenceSchema">> => source_schema(),
%%   <<"S3ReferenceDataSource">> => s3_reference_data_source(),
%%   <<"TableName">> => string()
%% }
-type reference_data_source() :: #{binary() => any()}.

%% Example:
%% destination_schema() :: #{
%%   <<"RecordFormatType">> => list(any())
%% }
-type destination_schema() :: #{binary() => any()}.

%% Example:
%% lambda_output_update() :: #{
%%   <<"ResourceARNUpdate">> => string()
%% }
-type lambda_output_update() :: #{binary() => any()}.

%% Example:
%% discover_input_schema_request() :: #{
%%   <<"InputProcessingConfiguration">> => input_processing_configuration(),
%%   <<"InputStartingPositionConfiguration">> => input_starting_position_configuration(),
%%   <<"ResourceARN">> => string(),
%%   <<"S3Configuration">> => s3_configuration(),
%%   <<"ServiceExecutionRole">> := string()
%% }
-type discover_input_schema_request() :: #{binary() => any()}.

%% Example:
%% input_lambda_processor() :: #{
%%   <<"ResourceARN">> => string()
%% }
-type input_lambda_processor() :: #{binary() => any()}.

%% Example:
%% application_code_configuration_description() :: #{
%%   <<"CodeContentDescription">> => code_content_description(),
%%   <<"CodeContentType">> => list(any())
%% }
-type application_code_configuration_description() :: #{binary() => any()}.

%% Example:
%% input() :: #{
%%   <<"InputParallelism">> => input_parallelism(),
%%   <<"InputProcessingConfiguration">> => input_processing_configuration(),
%%   <<"InputSchema">> => source_schema(),
%%   <<"KinesisFirehoseInput">> => kinesis_firehose_input(),
%%   <<"KinesisStreamsInput">> => kinesis_streams_input(),
%%   <<"NamePrefix">> => string()
%% }
-type input() :: #{binary() => any()}.

%% Example:
%% application_restore_configuration() :: #{
%%   <<"ApplicationRestoreType">> => list(any()),
%%   <<"SnapshotName">> => string()
%% }
-type application_restore_configuration() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% application_snapshot_configuration_description() :: #{
%%   <<"SnapshotsEnabled">> => boolean()
%% }
-type application_snapshot_configuration_description() :: #{binary() => any()}.

%% Example:
%% create_application_presigned_url_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"SessionExpirationDurationInSeconds">> => float(),
%%   <<"UrlType">> := list(any())
%% }
-type create_application_presigned_url_request() :: #{binary() => any()}.

%% Example:
%% s3_reference_data_source() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"FileKey">> => string()
%% }
-type s3_reference_data_source() :: #{binary() => any()}.

%% Example:
%% flink_application_configuration_update() :: #{
%%   <<"CheckpointConfigurationUpdate">> => checkpoint_configuration_update(),
%%   <<"MonitoringConfigurationUpdate">> => monitoring_configuration_update(),
%%   <<"ParallelismConfigurationUpdate">> => parallelism_configuration_update()
%% }
-type flink_application_configuration_update() :: #{binary() => any()}.

%% Example:
%% run_configuration() :: #{
%%   <<"ApplicationRestoreConfiguration">> => application_restore_configuration(),
%%   <<"FlinkRunConfiguration">> => flink_run_configuration(),
%%   <<"SqlRunConfigurations">> => list(sql_run_configuration())
%% }
-type run_configuration() :: #{binary() => any()}.

%% Example:
%% environment_properties() :: #{
%%   <<"PropertyGroups">> => list(property_group())
%% }
-type environment_properties() :: #{binary() => any()}.

%% Example:
%% s3_application_code_location_description() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"FileKey">> => string(),
%%   <<"ObjectVersion">> => string()
%% }
-type s3_application_code_location_description() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% flink_application_configuration() :: #{
%%   <<"CheckpointConfiguration">> => checkpoint_configuration(),
%%   <<"MonitoringConfiguration">> => monitoring_configuration(),
%%   <<"ParallelismConfiguration">> => parallelism_configuration()
%% }
-type flink_application_configuration() :: #{binary() => any()}.

%% Example:
%% run_configuration_update() :: #{
%%   <<"ApplicationRestoreConfiguration">> => application_restore_configuration(),
%%   <<"FlinkRunConfiguration">> => flink_run_configuration()
%% }
-type run_configuration_update() :: #{binary() => any()}.

%% Example:
%% application_configuration() :: #{
%%   <<"ApplicationCodeConfiguration">> => application_code_configuration(),
%%   <<"ApplicationEncryptionConfiguration">> => application_encryption_configuration(),
%%   <<"ApplicationSnapshotConfiguration">> => application_snapshot_configuration(),
%%   <<"ApplicationSystemRollbackConfiguration">> => application_system_rollback_configuration(),
%%   <<"EnvironmentProperties">> => environment_properties(),
%%   <<"FlinkApplicationConfiguration">> => flink_application_configuration(),
%%   <<"SqlApplicationConfiguration">> => sql_application_configuration(),
%%   <<"VpcConfigurations">> => list(vpc_configuration()),
%%   <<"ZeppelinApplicationConfiguration">> => zeppelin_application_configuration()
%% }
-type application_configuration() :: #{binary() => any()}.

%% Example:
%% stop_application_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"Force">> => boolean()
%% }
-type stop_application_request() :: #{binary() => any()}.

%% Example:
%% input_lambda_processor_update() :: #{
%%   <<"ResourceARNUpdate">> => string()
%% }
-type input_lambda_processor_update() :: #{binary() => any()}.

%% Example:
%% checkpoint_configuration_update() :: #{
%%   <<"CheckpointIntervalUpdate">> => float(),
%%   <<"CheckpointingEnabledUpdate">> => boolean(),
%%   <<"ConfigurationTypeUpdate">> => list(any()),
%%   <<"MinPauseBetweenCheckpointsUpdate">> => float()
%% }
-type checkpoint_configuration_update() :: #{binary() => any()}.

%% Example:
%% rollback_application_response() :: #{
%%   <<"ApplicationDetail">> => application_detail(),
%%   <<"OperationId">> => string()
%% }
-type rollback_application_response() :: #{binary() => any()}.

%% Example:
%% csv_mapping_parameters() :: #{
%%   <<"RecordColumnDelimiter">> => string(),
%%   <<"RecordRowDelimiter">> => string()
%% }
-type csv_mapping_parameters() :: #{binary() => any()}.

%% Example:
%% application_operation_info_details() :: #{
%%   <<"ApplicationVersionChangeDetails">> => application_version_change_details(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Operation">> => string(),
%%   <<"OperationFailureDetails">> => operation_failure_details(),
%%   <<"OperationStatus">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type application_operation_info_details() :: #{binary() => any()}.

%% Example:
%% output_update() :: #{
%%   <<"DestinationSchemaUpdate">> => destination_schema(),
%%   <<"KinesisFirehoseOutputUpdate">> => kinesis_firehose_output_update(),
%%   <<"KinesisStreamsOutputUpdate">> => kinesis_streams_output_update(),
%%   <<"LambdaOutputUpdate">> => lambda_output_update(),
%%   <<"NameUpdate">> => string(),
%%   <<"OutputId">> => string()
%% }
-type output_update() :: #{binary() => any()}.

%% Example:
%% delete_application_snapshot_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"SnapshotCreationTimestamp">> := non_neg_integer(),
%%   <<"SnapshotName">> := string()
%% }
-type delete_application_snapshot_request() :: #{binary() => any()}.

%% Example:
%% json_mapping_parameters() :: #{
%%   <<"RecordRowPath">> => string()
%% }
-type json_mapping_parameters() :: #{binary() => any()}.

%% Example:
%% delete_application_cloud_watch_logging_option_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"CloudWatchLoggingOptionDescriptions">> => list(cloud_watch_logging_option_description()),
%%   <<"OperationId">> => string()
%% }
-type delete_application_cloud_watch_logging_option_response() :: #{binary() => any()}.

%% Example:
%% sql_run_configuration() :: #{
%%   <<"InputId">> => string(),
%%   <<"InputStartingPositionConfiguration">> => input_starting_position_configuration()
%% }
-type sql_run_configuration() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% create_application_request() :: #{
%%   <<"ApplicationConfiguration">> => application_configuration(),
%%   <<"ApplicationDescription">> => string(),
%%   <<"ApplicationMode">> => list(any()),
%%   <<"ApplicationName">> := string(),
%%   <<"CloudWatchLoggingOptions">> => list(cloud_watch_logging_option()),
%%   <<"RuntimeEnvironment">> := list(any()),
%%   <<"ServiceExecutionRole">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_application_request() :: #{binary() => any()}.

%% Example:
%% delete_application_vpc_configuration_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"OperationId">> => string()
%% }
-type delete_application_vpc_configuration_response() :: #{binary() => any()}.

%% Example:
%% add_application_reference_data_source_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CurrentApplicationVersionId">> := float(),
%%   <<"ReferenceDataSource">> := reference_data_source()
%% }
-type add_application_reference_data_source_request() :: #{binary() => any()}.

%% Example:
%% delete_application_reference_data_source_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CurrentApplicationVersionId">> := float(),
%%   <<"ReferenceId">> := string()
%% }
-type delete_application_reference_data_source_request() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% create_application_response() :: #{
%%   <<"ApplicationDetail">> => application_detail()
%% }
-type create_application_response() :: #{binary() => any()}.

%% Example:
%% add_application_output_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"OutputDescriptions">> => list(output_description())
%% }
-type add_application_output_response() :: #{binary() => any()}.

%% Example:
%% application_encryption_configuration_description() :: #{
%%   <<"KeyId">> => string(),
%%   <<"KeyType">> => list(any())
%% }
-type application_encryption_configuration_description() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_input_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_streams_input_description() :: #{binary() => any()}.

%% Example:
%% describe_application_snapshot_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"SnapshotName">> := string()
%% }
-type describe_application_snapshot_request() :: #{binary() => any()}.

%% Example:
%% application_encryption_configuration() :: #{
%%   <<"KeyId">> => string(),
%%   <<"KeyType">> => list(any())
%% }
-type application_encryption_configuration() :: #{binary() => any()}.

%% Example:
%% list_application_operations_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Operation">> => string(),
%%   <<"OperationStatus">> => list(any())
%% }
-type list_application_operations_request() :: #{binary() => any()}.

%% Example:
%% add_application_input_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CurrentApplicationVersionId">> := float(),
%%   <<"Input">> := input()
%% }
-type add_application_input_request() :: #{binary() => any()}.

%% Example:
%% delete_application_response() :: #{

%% }
-type delete_application_response() :: #{binary() => any()}.

%% Example:
%% application_system_rollback_configuration_update() :: #{
%%   <<"RollbackEnabledUpdate">> => boolean()
%% }
-type application_system_rollback_configuration_update() :: #{binary() => any()}.

%% Example:
%% start_application_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type start_application_response() :: #{binary() => any()}.

%% Example:
%% s3_content_base_location_description() :: #{
%%   <<"BasePath">> => string(),
%%   <<"BucketARN">> => string()
%% }
-type s3_content_base_location_description() :: #{binary() => any()}.

%% Example:
%% zeppelin_application_configuration() :: #{
%%   <<"CatalogConfiguration">> => catalog_configuration(),
%%   <<"CustomArtifactsConfiguration">> => list(custom_artifact_configuration()),
%%   <<"DeployAsApplicationConfiguration">> => deploy_as_application_configuration(),
%%   <<"MonitoringConfiguration">> => zeppelin_monitoring_configuration()
%% }
-type zeppelin_application_configuration() :: #{binary() => any()}.

%% Example:
%% s3_content_location_update() :: #{
%%   <<"BucketARNUpdate">> => string(),
%%   <<"FileKeyUpdate">> => string(),
%%   <<"ObjectVersionUpdate">> => string()
%% }
-type s3_content_location_update() :: #{binary() => any()}.

%% Example:
%% list_application_operations_response() :: #{
%%   <<"ApplicationOperationInfoList">> => list(application_operation_info()),
%%   <<"NextToken">> => string()
%% }
-type list_application_operations_response() :: #{binary() => any()}.

%% Example:
%% describe_application_version_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"ApplicationVersionId">> := float()
%% }
-type describe_application_version_request() :: #{binary() => any()}.

%% Example:
%% update_application_request() :: #{
%%   <<"ApplicationConfigurationUpdate">> => application_configuration_update(),
%%   <<"ApplicationName">> := string(),
%%   <<"CloudWatchLoggingOptionUpdates">> => list(cloud_watch_logging_option_update()),
%%   <<"ConditionalToken">> => string(),
%%   <<"CurrentApplicationVersionId">> => float(),
%%   <<"RunConfigurationUpdate">> => run_configuration_update(),
%%   <<"RuntimeEnvironmentUpdate">> => list(any()),
%%   <<"ServiceExecutionRoleUpdate">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.

%% Example:
%% update_application_response() :: #{
%%   <<"ApplicationDetail">> => application_detail(),
%%   <<"OperationId">> => string()
%% }
-type update_application_response() :: #{binary() => any()}.

%% Example:
%% parallelism_configuration() :: #{
%%   <<"AutoScalingEnabled">> => boolean(),
%%   <<"ConfigurationType">> => list(any()),
%%   <<"Parallelism">> => integer(),
%%   <<"ParallelismPerKPU">> => integer()
%% }
-type parallelism_configuration() :: #{binary() => any()}.

%% Example:
%% describe_application_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"IncludeAdditionalDetails">> => boolean()
%% }
-type describe_application_request() :: #{binary() => any()}.

%% Example:
%% zeppelin_monitoring_configuration_update() :: #{
%%   <<"LogLevelUpdate">> => list(any())
%% }
-type zeppelin_monitoring_configuration_update() :: #{binary() => any()}.

%% Example:
%% start_application_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"RunConfiguration">> => run_configuration()
%% }
-type start_application_request() :: #{binary() => any()}.

%% Example:
%% code_validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type code_validation_exception() :: #{binary() => any()}.

%% Example:
%% input_lambda_processor_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type input_lambda_processor_description() :: #{binary() => any()}.

%% Example:
%% checkpoint_configuration() :: #{
%%   <<"CheckpointInterval">> => float(),
%%   <<"CheckpointingEnabled">> => boolean(),
%%   <<"ConfigurationType">> => list(any()),
%%   <<"MinPauseBetweenCheckpoints">> => float()
%% }
-type checkpoint_configuration() :: #{binary() => any()}.

%% Example:
%% input_parallelism() :: #{
%%   <<"Count">> => integer()
%% }
-type input_parallelism() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logging_option() :: #{
%%   <<"LogStreamARN">> => string()
%% }
-type cloud_watch_logging_option() :: #{binary() => any()}.

%% Example:
%% list_applications_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.

%% Example:
%% code_content() :: #{
%%   <<"S3ContentLocation">> => s3_content_location(),
%%   <<"TextContent">> => string(),
%%   <<"ZipFileContent">> => binary()
%% }
-type code_content() :: #{binary() => any()}.

%% Example:
%% reference_data_source_update() :: #{
%%   <<"ReferenceId">> => string(),
%%   <<"ReferenceSchemaUpdate">> => source_schema(),
%%   <<"S3ReferenceDataSourceUpdate">> => s3_reference_data_source_update(),
%%   <<"TableNameUpdate">> => string()
%% }
-type reference_data_source_update() :: #{binary() => any()}.

%% Example:
%% s3_reference_data_source_description() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"FileKey">> => string(),
%%   <<"ReferenceRoleARN">> => string()
%% }
-type s3_reference_data_source_description() :: #{binary() => any()}.

%% Example:
%% environment_property_descriptions() :: #{
%%   <<"PropertyGroupDescriptions">> => list(property_group())
%% }
-type environment_property_descriptions() :: #{binary() => any()}.

%% Example:
%% zeppelin_application_configuration_update() :: #{
%%   <<"CatalogConfigurationUpdate">> => catalog_configuration_update(),
%%   <<"CustomArtifactsConfigurationUpdate">> => list(custom_artifact_configuration()),
%%   <<"DeployAsApplicationConfigurationUpdate">> => deploy_as_application_configuration_update(),
%%   <<"MonitoringConfigurationUpdate">> => zeppelin_monitoring_configuration_update()
%% }
-type zeppelin_application_configuration_update() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_output_update() :: #{
%%   <<"ResourceARNUpdate">> => string()
%% }
-type kinesis_streams_output_update() :: #{binary() => any()}.

%% Example:
%% stop_application_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type stop_application_response() :: #{binary() => any()}.

%% Example:
%% application_code_configuration() :: #{
%%   <<"CodeContent">> => code_content(),
%%   <<"CodeContentType">> => list(any())
%% }
-type application_code_configuration() :: #{binary() => any()}.

%% Example:
%% catalog_configuration() :: #{
%%   <<"GlueDataCatalogConfiguration">> => glue_data_catalog_configuration()
%% }
-type catalog_configuration() :: #{binary() => any()}.

%% Example:
%% deploy_as_application_configuration() :: #{
%%   <<"S3ContentLocation">> => s3_content_base_location()
%% }
-type deploy_as_application_configuration() :: #{binary() => any()}.

%% Example:
%% add_application_cloud_watch_logging_option_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CloudWatchLoggingOption">> := cloud_watch_logging_option(),
%%   <<"ConditionalToken">> => string(),
%%   <<"CurrentApplicationVersionId">> => float()
%% }
-type add_application_cloud_watch_logging_option_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_application_maintenance_configuration_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationMaintenanceConfigurationDescription">> => application_maintenance_configuration_description()
%% }
-type update_application_maintenance_configuration_response() :: #{binary() => any()}.

%% Example:
%% invalid_argument_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_argument_exception() :: #{binary() => any()}.

%% Example:
%% application_snapshot_configuration_update() :: #{
%%   <<"SnapshotsEnabledUpdate">> => boolean()
%% }
-type application_snapshot_configuration_update() :: #{binary() => any()}.

%% Example:
%% invalid_application_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_application_configuration_exception() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% delete_application_snapshot_response() :: #{

%% }
-type delete_application_snapshot_response() :: #{binary() => any()}.

%% Example:
%% operation_failure_details() :: #{
%%   <<"ErrorInfo">> => error_info(),
%%   <<"RollbackOperationId">> => string()
%% }
-type operation_failure_details() :: #{binary() => any()}.

%% Example:
%% application_maintenance_configuration_description() :: #{
%%   <<"ApplicationMaintenanceWindowEndTime">> => string(),
%%   <<"ApplicationMaintenanceWindowStartTime">> => string()
%% }
-type application_maintenance_configuration_description() :: #{binary() => any()}.

%% Example:
%% environment_property_updates() :: #{
%%   <<"PropertyGroups">> => list(property_group())
%% }
-type environment_property_updates() :: #{binary() => any()}.

%% Example:
%% input_processing_configuration_description() :: #{
%%   <<"InputLambdaProcessorDescription">> => input_lambda_processor_description()
%% }
-type input_processing_configuration_description() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% application_system_rollback_configuration_description() :: #{
%%   <<"RollbackEnabled">> => boolean()
%% }
-type application_system_rollback_configuration_description() :: #{binary() => any()}.

%% Example:
%% checkpoint_configuration_description() :: #{
%%   <<"CheckpointInterval">> => float(),
%%   <<"CheckpointingEnabled">> => boolean(),
%%   <<"ConfigurationType">> => list(any()),
%%   <<"MinPauseBetweenCheckpoints">> => float()
%% }
-type checkpoint_configuration_description() :: #{binary() => any()}.

%% Example:
%% rollback_application_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CurrentApplicationVersionId">> := float()
%% }
-type rollback_application_request() :: #{binary() => any()}.

%% Example:
%% source_schema() :: #{
%%   <<"RecordColumns">> => list(record_column()),
%%   <<"RecordEncoding">> => string(),
%%   <<"RecordFormat">> => record_format()
%% }
-type source_schema() :: #{binary() => any()}.

%% Example:
%% mapping_parameters() :: #{
%%   <<"CSVMappingParameters">> => csv_mapping_parameters(),
%%   <<"JSONMappingParameters">> => json_mapping_parameters()
%% }
-type mapping_parameters() :: #{binary() => any()}.

%% Example:
%% delete_application_input_processing_configuration_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float()
%% }
-type delete_application_input_processing_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_application_versions_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_versions_request() :: #{binary() => any()}.

%% Example:
%% input_description() :: #{
%%   <<"InAppStreamNames">> => list(string()),
%%   <<"InputId">> => string(),
%%   <<"InputParallelism">> => input_parallelism(),
%%   <<"InputProcessingConfigurationDescription">> => input_processing_configuration_description(),
%%   <<"InputSchema">> => source_schema(),
%%   <<"InputStartingPositionConfiguration">> => input_starting_position_configuration(),
%%   <<"KinesisFirehoseInputDescription">> => kinesis_firehose_input_description(),
%%   <<"KinesisStreamsInputDescription">> => kinesis_streams_input_description(),
%%   <<"NamePrefix">> => string()
%% }
-type input_description() :: #{binary() => any()}.

%% Example:
%% delete_application_vpc_configuration_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"ConditionalToken">> => string(),
%%   <<"CurrentApplicationVersionId">> => float(),
%%   <<"VpcConfigurationId">> := string()
%% }
-type delete_application_vpc_configuration_request() :: #{binary() => any()}.

%% Example:
%% lambda_output() :: #{
%%   <<"ResourceARN">> => string()
%% }
-type lambda_output() :: #{binary() => any()}.

%% Example:
%% s3_configuration() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"FileKey">> => string()
%% }
-type s3_configuration() :: #{binary() => any()}.

%% Example:
%% application_version_change_details() :: #{
%%   <<"ApplicationVersionUpdatedFrom">> => float(),
%%   <<"ApplicationVersionUpdatedTo">> => float()
%% }
-type application_version_change_details() :: #{binary() => any()}.

%% Example:
%% application_summary() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationMode">> => list(any()),
%%   <<"ApplicationName">> => string(),
%%   <<"ApplicationStatus">> => list(any()),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"RuntimeEnvironment">> => list(any())
%% }
-type application_summary() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_output_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_streams_output_description() :: #{binary() => any()}.

%% Example:
%% application_operation_info() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Operation">> => string(),
%%   <<"OperationId">> => string(),
%%   <<"OperationStatus">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type application_operation_info() :: #{binary() => any()}.

%% Example:
%% application_configuration_description() :: #{
%%   <<"ApplicationCodeConfigurationDescription">> => application_code_configuration_description(),
%%   <<"ApplicationEncryptionConfigurationDescription">> => application_encryption_configuration_description(),
%%   <<"ApplicationSnapshotConfigurationDescription">> => application_snapshot_configuration_description(),
%%   <<"ApplicationSystemRollbackConfigurationDescription">> => application_system_rollback_configuration_description(),
%%   <<"EnvironmentPropertyDescriptions">> => environment_property_descriptions(),
%%   <<"FlinkApplicationConfigurationDescription">> => flink_application_configuration_description(),
%%   <<"RunConfigurationDescription">> => run_configuration_description(),
%%   <<"SqlApplicationConfigurationDescription">> => sql_application_configuration_description(),
%%   <<"VpcConfigurationDescriptions">> => list(vpc_configuration_description()),
%%   <<"ZeppelinApplicationConfigurationDescription">> => zeppelin_application_configuration_description()
%% }
-type application_configuration_description() :: #{binary() => any()}.

%% Example:
%% application_code_configuration_update() :: #{
%%   <<"CodeContentTypeUpdate">> => list(any()),
%%   <<"CodeContentUpdate">> => code_content_update()
%% }
-type application_code_configuration_update() :: #{binary() => any()}.

%% Example:
%% record_format() :: #{
%%   <<"MappingParameters">> => mapping_parameters(),
%%   <<"RecordFormatType">> => list(any())
%% }
-type record_format() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% maven_reference() :: #{
%%   <<"ArtifactId">> => string(),
%%   <<"GroupId">> => string(),
%%   <<"Version">> => string()
%% }
-type maven_reference() :: #{binary() => any()}.

%% Example:
%% list_applications_response() :: #{
%%   <<"ApplicationSummaries">> => list(application_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.

%% Example:
%% lambda_output_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type lambda_output_description() :: #{binary() => any()}.

%% Example:
%% parallelism_configuration_description() :: #{
%%   <<"AutoScalingEnabled">> => boolean(),
%%   <<"ConfigurationType">> => list(any()),
%%   <<"CurrentParallelism">> => integer(),
%%   <<"Parallelism">> => integer(),
%%   <<"ParallelismPerKPU">> => integer()
%% }
-type parallelism_configuration_description() :: #{binary() => any()}.

%% Example:
%% list_application_versions_response() :: #{
%%   <<"ApplicationVersionSummaries">> => list(application_version_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_application_versions_response() :: #{binary() => any()}.

%% Example:
%% create_application_snapshot_response() :: #{

%% }
-type create_application_snapshot_response() :: #{binary() => any()}.

%% Example:
%% glue_data_catalog_configuration_update() :: #{
%%   <<"DatabaseARNUpdate">> => string()
%% }
-type glue_data_catalog_configuration_update() :: #{binary() => any()}.

%% Example:
%% delete_application_output_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CurrentApplicationVersionId">> := float(),
%%   <<"OutputId">> := string()
%% }
-type delete_application_output_request() :: #{binary() => any()}.

%% Example:
%% monitoring_configuration_update() :: #{
%%   <<"ConfigurationTypeUpdate">> => list(any()),
%%   <<"LogLevelUpdate">> => list(any()),
%%   <<"MetricsLevelUpdate">> => list(any())
%% }
-type monitoring_configuration_update() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_input() :: #{
%%   <<"ResourceARN">> => string()
%% }
-type kinesis_streams_input() :: #{binary() => any()}.

%% Example:
%% s3_reference_data_source_update() :: #{
%%   <<"BucketARNUpdate">> => string(),
%%   <<"FileKeyUpdate">> => string()
%% }
-type s3_reference_data_source_update() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_input() :: #{
%%   <<"ResourceARN">> => string()
%% }
-type kinesis_firehose_input() :: #{binary() => any()}.

%% Example:
%% add_application_output_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CurrentApplicationVersionId">> := float(),
%%   <<"Output">> := output()
%% }
-type add_application_output_request() :: #{binary() => any()}.

%% Example:
%% sql_application_configuration() :: #{
%%   <<"Inputs">> => list(input()),
%%   <<"Outputs">> => list(output()),
%%   <<"ReferenceDataSources">> => list(reference_data_source())
%% }
-type sql_application_configuration() :: #{binary() => any()}.

%% Example:
%% input_processing_configuration_update() :: #{
%%   <<"InputLambdaProcessorUpdate">> => input_lambda_processor_update()
%% }
-type input_processing_configuration_update() :: #{binary() => any()}.

%% Example:
%% snapshot_details() :: #{
%%   <<"ApplicationEncryptionConfigurationDescription">> => application_encryption_configuration_description(),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"RuntimeEnvironment">> => list(any()),
%%   <<"SnapshotCreationTimestamp">> => non_neg_integer(),
%%   <<"SnapshotName">> => string(),
%%   <<"SnapshotStatus">> => list(any())
%% }
-type snapshot_details() :: #{binary() => any()}.

%% Example:
%% s3_content_location() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"FileKey">> => string(),
%%   <<"ObjectVersion">> => string()
%% }
-type s3_content_location() :: #{binary() => any()}.

%% Example:
%% record_column() :: #{
%%   <<"Mapping">> => string(),
%%   <<"Name">> => string(),
%%   <<"SqlType">> => string()
%% }
-type record_column() :: #{binary() => any()}.

%% Example:
%% add_application_input_processing_configuration_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CurrentApplicationVersionId">> := float(),
%%   <<"InputId">> := string(),
%%   <<"InputProcessingConfiguration">> := input_processing_configuration()
%% }
-type add_application_input_processing_configuration_request() :: #{binary() => any()}.

%% Example:
%% deploy_as_application_configuration_description() :: #{
%%   <<"S3ContentLocationDescription">> => s3_content_base_location_description()
%% }
-type deploy_as_application_configuration_description() :: #{binary() => any()}.

%% Example:
%% s3_content_base_location() :: #{
%%   <<"BasePath">> => string(),
%%   <<"BucketARN">> => string()
%% }
-type s3_content_base_location() :: #{binary() => any()}.

%% Example:
%% run_configuration_description() :: #{
%%   <<"ApplicationRestoreConfigurationDescription">> => application_restore_configuration(),
%%   <<"FlinkRunConfigurationDescription">> => flink_run_configuration()
%% }
-type run_configuration_description() :: #{binary() => any()}.

%% Example:
%% code_content_update() :: #{
%%   <<"S3ContentLocationUpdate">> => s3_content_location_update(),
%%   <<"TextContentUpdate">> => string(),
%%   <<"ZipFileContentUpdate">> => binary()
%% }
-type code_content_update() :: #{binary() => any()}.

%% Example:
%% add_application_reference_data_source_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"ReferenceDataSourceDescriptions">> => list(reference_data_source_description())
%% }
-type add_application_reference_data_source_response() :: #{binary() => any()}.

%% Example:
%% sql_application_configuration_description() :: #{
%%   <<"InputDescriptions">> => list(input_description()),
%%   <<"OutputDescriptions">> => list(output_description()),
%%   <<"ReferenceDataSourceDescriptions">> => list(reference_data_source_description())
%% }
-type sql_application_configuration_description() :: #{binary() => any()}.

%% Example:
%% list_application_snapshots_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_snapshots_request() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_output_update() :: #{
%%   <<"ResourceARNUpdate">> => string()
%% }
-type kinesis_firehose_output_update() :: #{binary() => any()}.

%% Example:
%% flink_application_configuration_description() :: #{
%%   <<"CheckpointConfigurationDescription">> => checkpoint_configuration_description(),
%%   <<"JobPlanDescription">> => string(),
%%   <<"MonitoringConfigurationDescription">> => monitoring_configuration_description(),
%%   <<"ParallelismConfigurationDescription">> => parallelism_configuration_description()
%% }
-type flink_application_configuration_description() :: #{binary() => any()}.

%% Example:
%% catalog_configuration_update() :: #{
%%   <<"GlueDataCatalogConfigurationUpdate">> => glue_data_catalog_configuration_update()
%% }
-type catalog_configuration_update() :: #{binary() => any()}.

%% Example:
%% application_configuration_update() :: #{
%%   <<"ApplicationCodeConfigurationUpdate">> => application_code_configuration_update(),
%%   <<"ApplicationEncryptionConfigurationUpdate">> => application_encryption_configuration_update(),
%%   <<"ApplicationSnapshotConfigurationUpdate">> => application_snapshot_configuration_update(),
%%   <<"ApplicationSystemRollbackConfigurationUpdate">> => application_system_rollback_configuration_update(),
%%   <<"EnvironmentPropertyUpdates">> => environment_property_updates(),
%%   <<"FlinkApplicationConfigurationUpdate">> => flink_application_configuration_update(),
%%   <<"SqlApplicationConfigurationUpdate">> => sql_application_configuration_update(),
%%   <<"VpcConfigurationUpdates">> => list(vpc_configuration_update()),
%%   <<"ZeppelinApplicationConfigurationUpdate">> => zeppelin_application_configuration_update()
%% }
-type application_configuration_update() :: #{binary() => any()}.

%% Example:
%% s3_content_base_location_update() :: #{
%%   <<"BasePathUpdate">> => string(),
%%   <<"BucketARNUpdate">> => string()
%% }
-type s3_content_base_location_update() :: #{binary() => any()}.

%% Example:
%% reference_data_source_description() :: #{
%%   <<"ReferenceId">> => string(),
%%   <<"ReferenceSchema">> => source_schema(),
%%   <<"S3ReferenceDataSourceDescription">> => s3_reference_data_source_description(),
%%   <<"TableName">> => string()
%% }
-type reference_data_source_description() :: #{binary() => any()}.

%% Example:
%% describe_application_response() :: #{
%%   <<"ApplicationDetail">> => application_detail()
%% }
-type describe_application_response() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% update_application_maintenance_configuration_request() :: #{
%%   <<"ApplicationMaintenanceConfigurationUpdate">> := application_maintenance_configuration_update(),
%%   <<"ApplicationName">> := string()
%% }
-type update_application_maintenance_configuration_request() :: #{binary() => any()}.

%% Example:
%% output() :: #{
%%   <<"DestinationSchema">> => destination_schema(),
%%   <<"KinesisFirehoseOutput">> => kinesis_firehose_output(),
%%   <<"KinesisStreamsOutput">> => kinesis_streams_output(),
%%   <<"LambdaOutput">> => lambda_output(),
%%   <<"Name">> => string()
%% }
-type output() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CreateTimestamp">> := non_neg_integer()
%% }
-type delete_application_request() :: #{binary() => any()}.

%% Example:
%% delete_application_output_response() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationVersionId">> => float()
%% }
-type delete_application_output_response() :: #{binary() => any()}.

-type add_application_cloud_watch_logging_option_errors() ::
    concurrent_modification_exception() | 
    invalid_application_configuration_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type add_application_input_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    code_validation_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type add_application_input_processing_configuration_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type add_application_output_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type add_application_reference_data_source_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type add_application_vpc_configuration_errors() ::
    concurrent_modification_exception() | 
    invalid_application_configuration_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_application_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    code_validation_exception() | 
    invalid_request_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type create_application_presigned_url_errors() ::
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_application_snapshot_errors() ::
    limit_exceeded_exception() | 
    invalid_application_configuration_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type delete_application_errors() ::
    concurrent_modification_exception() | 
    invalid_application_configuration_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_application_cloud_watch_logging_option_errors() ::
    concurrent_modification_exception() | 
    invalid_application_configuration_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_application_input_processing_configuration_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_application_output_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_application_reference_data_source_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_application_snapshot_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type delete_application_vpc_configuration_errors() ::
    concurrent_modification_exception() | 
    invalid_application_configuration_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type describe_application_errors() ::
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_application_operation_errors() ::
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    unsupported_operation_exception().

-type describe_application_snapshot_errors() ::
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    unsupported_operation_exception().

-type describe_application_version_errors() ::
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    unsupported_operation_exception().

-type discover_input_schema_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unable_to_detect_schema_exception() | 
    resource_provisioned_throughput_exceeded_exception() | 
    unsupported_operation_exception().

-type list_application_operations_errors() ::
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    unsupported_operation_exception().

-type list_application_snapshots_errors() ::
    invalid_argument_exception() | 
    unsupported_operation_exception().

-type list_application_versions_errors() ::
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    unsupported_operation_exception().

-type list_applications_errors() ::
    invalid_request_exception().

-type list_tags_for_resource_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception().

-type rollback_application_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type start_application_errors() ::
    invalid_application_configuration_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type stop_application_errors() ::
    concurrent_modification_exception() | 
    invalid_application_configuration_exception() | 
    invalid_argument_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type untag_resource_errors() ::
    too_many_tags_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_application_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_application_configuration_exception() | 
    invalid_argument_exception() | 
    code_validation_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_application_maintenance_configuration_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds an Amazon CloudWatch log stream to monitor application
%% configuration errors.
-spec add_application_cloud_watch_logging_option(aws_client:aws_client(), add_application_cloud_watch_logging_option_request()) ->
    {ok, add_application_cloud_watch_logging_option_response(), tuple()} |
    {error, any()} |
    {error, add_application_cloud_watch_logging_option_errors(), tuple()}.
add_application_cloud_watch_logging_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_cloud_watch_logging_option(Client, Input, []).

-spec add_application_cloud_watch_logging_option(aws_client:aws_client(), add_application_cloud_watch_logging_option_request(), proplists:proplist()) ->
    {ok, add_application_cloud_watch_logging_option_response(), tuple()} |
    {error, any()} |
    {error, add_application_cloud_watch_logging_option_errors(), tuple()}.
add_application_cloud_watch_logging_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationCloudWatchLoggingOption">>, Input, Options).

%% @doc
%% Adds a streaming source to your SQL-based Kinesis Data Analytics
%% application.
%%
%% You can add a streaming source when you create an application, or you can
%% use this
%% operation to add a streaming source after you create an application. For
%% more information, see
%% `CreateApplication'.
%%
%% Any configuration update, including adding a streaming source using this
%% operation,
%% results in a new version of the application. You can use the
%% `DescribeApplication' operation
%% to find the current application version.
-spec add_application_input(aws_client:aws_client(), add_application_input_request()) ->
    {ok, add_application_input_response(), tuple()} |
    {error, any()} |
    {error, add_application_input_errors(), tuple()}.
add_application_input(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_input(Client, Input, []).

-spec add_application_input(aws_client:aws_client(), add_application_input_request(), proplists:proplist()) ->
    {ok, add_application_input_response(), tuple()} |
    {error, any()} |
    {error, add_application_input_errors(), tuple()}.
add_application_input(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationInput">>, Input, Options).

%% @doc Adds an `InputProcessingConfiguration' to a SQL-based Kinesis
%% Data Analytics application.
%%
%% An input processor pre-processes records
%% on the input stream before the
%% application's SQL code executes. Currently, the only input processor
%% available is Amazon Lambda: https://docs.aws.amazon.com/lambda/.
-spec add_application_input_processing_configuration(aws_client:aws_client(), add_application_input_processing_configuration_request()) ->
    {ok, add_application_input_processing_configuration_response(), tuple()} |
    {error, any()} |
    {error, add_application_input_processing_configuration_errors(), tuple()}.
add_application_input_processing_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_input_processing_configuration(Client, Input, []).

-spec add_application_input_processing_configuration(aws_client:aws_client(), add_application_input_processing_configuration_request(), proplists:proplist()) ->
    {ok, add_application_input_processing_configuration_response(), tuple()} |
    {error, any()} |
    {error, add_application_input_processing_configuration_errors(), tuple()}.
add_application_input_processing_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationInputProcessingConfiguration">>, Input, Options).

%% @doc Adds an external destination to your SQL-based Kinesis Data Analytics
%% application.
%%
%% If you want Kinesis Data Analytics to deliver data from an in-application
%% stream within
%% your application to an external destination (such as an Kinesis data
%% stream, a Kinesis Data
%% Firehose delivery stream, or an Amazon Lambda function), you add the
%% relevant configuration to
%% your application using this operation. You can configure one or more
%% outputs for your
%% application. Each output configuration maps an in-application stream and
%% an external
%% destination.
%%
%% You can use one of the output configurations to deliver data from your
%% in-application error stream to an external destination so that you can
%% analyze the
%% errors.
%%
%% Any configuration update, including adding a streaming source using this
%% operation, results in a new version of the application. You can use the
%% `DescribeApplication' operation to find the current application
%% version.
-spec add_application_output(aws_client:aws_client(), add_application_output_request()) ->
    {ok, add_application_output_response(), tuple()} |
    {error, any()} |
    {error, add_application_output_errors(), tuple()}.
add_application_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_output(Client, Input, []).

-spec add_application_output(aws_client:aws_client(), add_application_output_request(), proplists:proplist()) ->
    {ok, add_application_output_response(), tuple()} |
    {error, any()} |
    {error, add_application_output_errors(), tuple()}.
add_application_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationOutput">>, Input, Options).

%% @doc Adds a reference data source to an existing SQL-based Kinesis Data
%% Analytics application.
%%
%% Kinesis Data Analytics reads reference data (that is, an Amazon S3 object)
%% and creates an
%% in-application table within your application. In the request, you provide
%% the source (S3
%% bucket name and object key name), name of the in-application table to
%% create, and the
%% necessary mapping information that describes how data in an Amazon S3
%% object maps to columns
%% in the resulting in-application table.
-spec add_application_reference_data_source(aws_client:aws_client(), add_application_reference_data_source_request()) ->
    {ok, add_application_reference_data_source_response(), tuple()} |
    {error, any()} |
    {error, add_application_reference_data_source_errors(), tuple()}.
add_application_reference_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_reference_data_source(Client, Input, []).

-spec add_application_reference_data_source(aws_client:aws_client(), add_application_reference_data_source_request(), proplists:proplist()) ->
    {ok, add_application_reference_data_source_response(), tuple()} |
    {error, any()} |
    {error, add_application_reference_data_source_errors(), tuple()}.
add_application_reference_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationReferenceDataSource">>, Input, Options).

%% @doc Adds a Virtual Private Cloud (VPC) configuration to the application.
%%
%% Applications can use VPCs to store
%% and access resources securely.
%%
%% Note the following about VPC configurations for Managed Service for Apache
%% Flink applications:
%%
%% VPC configurations are not supported for SQL applications.
%%
%% When a VPC is added to a Managed Service for Apache Flink application, the
%% application can no longer be accessed from the
%% Internet directly. To enable Internet access to the application, add an
%% Internet gateway to your VPC.
-spec add_application_vpc_configuration(aws_client:aws_client(), add_application_vpc_configuration_request()) ->
    {ok, add_application_vpc_configuration_response(), tuple()} |
    {error, any()} |
    {error, add_application_vpc_configuration_errors(), tuple()}.
add_application_vpc_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_vpc_configuration(Client, Input, []).

-spec add_application_vpc_configuration(aws_client:aws_client(), add_application_vpc_configuration_request(), proplists:proplist()) ->
    {ok, add_application_vpc_configuration_response(), tuple()} |
    {error, any()} |
    {error, add_application_vpc_configuration_errors(), tuple()}.
add_application_vpc_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationVpcConfiguration">>, Input, Options).

%% @doc Creates a Managed Service for Apache Flink application.
%%
%% For information about creating a
%% Managed Service for Apache Flink application, see Creating an
%% Application:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Creates and returns a URL that you can use to connect to
%% an application's extension.
%%
%% The IAM role or user used to call this API defines the permissions to
%% access the
%% extension. After the presigned URL is created, no additional permission is
%% required to access
%% this URL. IAM authorization policies for this API are also enforced for
%% every HTTP request
%% that attempts to connect to the extension.
%%
%% You control the amount of time that the URL will be valid using the
%% `SessionExpirationDurationInSeconds'
%% parameter. If you do not provide this parameter, the returned URL is valid
%% for twelve hours.
%%
%% The URL that you get from a call to CreateApplicationPresignedUrl must be
%% used within 3 minutes
%% to be valid.
%% If you first try to use the URL after the 3-minute limit expires, the
%% service returns an HTTP 403 Forbidden error.
-spec create_application_presigned_url(aws_client:aws_client(), create_application_presigned_url_request()) ->
    {ok, create_application_presigned_url_response(), tuple()} |
    {error, any()} |
    {error, create_application_presigned_url_errors(), tuple()}.
create_application_presigned_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application_presigned_url(Client, Input, []).

-spec create_application_presigned_url(aws_client:aws_client(), create_application_presigned_url_request(), proplists:proplist()) ->
    {ok, create_application_presigned_url_response(), tuple()} |
    {error, any()} |
    {error, create_application_presigned_url_errors(), tuple()}.
create_application_presigned_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplicationPresignedUrl">>, Input, Options).

%% @doc Creates a snapshot of the application's state data.
-spec create_application_snapshot(aws_client:aws_client(), create_application_snapshot_request()) ->
    {ok, create_application_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_application_snapshot_errors(), tuple()}.
create_application_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application_snapshot(Client, Input, []).

-spec create_application_snapshot(aws_client:aws_client(), create_application_snapshot_request(), proplists:proplist()) ->
    {ok, create_application_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_application_snapshot_errors(), tuple()}.
create_application_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplicationSnapshot">>, Input, Options).

%% @doc Deletes the specified application.
%%
%% Managed Service for Apache Flink halts application execution and deletes
%% the application.
-spec delete_application(aws_client:aws_client(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).

-spec delete_application(aws_client:aws_client(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes an Amazon CloudWatch log stream from an SQL-based Kinesis
%% Data Analytics application.
-spec delete_application_cloud_watch_logging_option(aws_client:aws_client(), delete_application_cloud_watch_logging_option_request()) ->
    {ok, delete_application_cloud_watch_logging_option_response(), tuple()} |
    {error, any()} |
    {error, delete_application_cloud_watch_logging_option_errors(), tuple()}.
delete_application_cloud_watch_logging_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_cloud_watch_logging_option(Client, Input, []).

-spec delete_application_cloud_watch_logging_option(aws_client:aws_client(), delete_application_cloud_watch_logging_option_request(), proplists:proplist()) ->
    {ok, delete_application_cloud_watch_logging_option_response(), tuple()} |
    {error, any()} |
    {error, delete_application_cloud_watch_logging_option_errors(), tuple()}.
delete_application_cloud_watch_logging_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationCloudWatchLoggingOption">>, Input, Options).

%% @doc Deletes an `InputProcessingConfiguration' from an input.
-spec delete_application_input_processing_configuration(aws_client:aws_client(), delete_application_input_processing_configuration_request()) ->
    {ok, delete_application_input_processing_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_application_input_processing_configuration_errors(), tuple()}.
delete_application_input_processing_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_input_processing_configuration(Client, Input, []).

-spec delete_application_input_processing_configuration(aws_client:aws_client(), delete_application_input_processing_configuration_request(), proplists:proplist()) ->
    {ok, delete_application_input_processing_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_application_input_processing_configuration_errors(), tuple()}.
delete_application_input_processing_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationInputProcessingConfiguration">>, Input, Options).

%% @doc Deletes the output destination configuration from your SQL-based
%% Kinesis Data Analytics application's configuration.
%%
%% Kinesis Data Analytics will no longer write data from
%% the corresponding in-application stream to the external output
%% destination.
-spec delete_application_output(aws_client:aws_client(), delete_application_output_request()) ->
    {ok, delete_application_output_response(), tuple()} |
    {error, any()} |
    {error, delete_application_output_errors(), tuple()}.
delete_application_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_output(Client, Input, []).

-spec delete_application_output(aws_client:aws_client(), delete_application_output_request(), proplists:proplist()) ->
    {ok, delete_application_output_response(), tuple()} |
    {error, any()} |
    {error, delete_application_output_errors(), tuple()}.
delete_application_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationOutput">>, Input, Options).

%% @doc Deletes a reference data source configuration from the specified
%% SQL-based Kinesis Data Analytics application's configuration.
%%
%% If the application is running, Kinesis Data Analytics immediately removes
%% the in-application table
%% that you created using the `AddApplicationReferenceDataSource'
%% operation.
-spec delete_application_reference_data_source(aws_client:aws_client(), delete_application_reference_data_source_request()) ->
    {ok, delete_application_reference_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_application_reference_data_source_errors(), tuple()}.
delete_application_reference_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_reference_data_source(Client, Input, []).

-spec delete_application_reference_data_source(aws_client:aws_client(), delete_application_reference_data_source_request(), proplists:proplist()) ->
    {ok, delete_application_reference_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_application_reference_data_source_errors(), tuple()}.
delete_application_reference_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationReferenceDataSource">>, Input, Options).

%% @doc Deletes a snapshot of application state.
-spec delete_application_snapshot(aws_client:aws_client(), delete_application_snapshot_request()) ->
    {ok, delete_application_snapshot_response(), tuple()} |
    {error, any()} |
    {error, delete_application_snapshot_errors(), tuple()}.
delete_application_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_snapshot(Client, Input, []).

-spec delete_application_snapshot(aws_client:aws_client(), delete_application_snapshot_request(), proplists:proplist()) ->
    {ok, delete_application_snapshot_response(), tuple()} |
    {error, any()} |
    {error, delete_application_snapshot_errors(), tuple()}.
delete_application_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationSnapshot">>, Input, Options).

%% @doc Removes a VPC configuration from a Managed Service for Apache Flink
%% application.
-spec delete_application_vpc_configuration(aws_client:aws_client(), delete_application_vpc_configuration_request()) ->
    {ok, delete_application_vpc_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_application_vpc_configuration_errors(), tuple()}.
delete_application_vpc_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_vpc_configuration(Client, Input, []).

-spec delete_application_vpc_configuration(aws_client:aws_client(), delete_application_vpc_configuration_request(), proplists:proplist()) ->
    {ok, delete_application_vpc_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_application_vpc_configuration_errors(), tuple()}.
delete_application_vpc_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationVpcConfiguration">>, Input, Options).

%% @doc Returns information about a specific Managed Service for Apache Flink
%% application.
%%
%% If you want to retrieve a list of all applications in your account,
%% use the `ListApplications' operation.
-spec describe_application(aws_client:aws_client(), describe_application_request()) ->
    {ok, describe_application_response(), tuple()} |
    {error, any()} |
    {error, describe_application_errors(), tuple()}.
describe_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application(Client, Input, []).

-spec describe_application(aws_client:aws_client(), describe_application_request(), proplists:proplist()) ->
    {ok, describe_application_response(), tuple()} |
    {error, any()} |
    {error, describe_application_errors(), tuple()}.
describe_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplication">>, Input, Options).

%% @doc Provides a detailed description of a specified application operation.
%%
%% To see a list of all the operations of an application, invoke the
%% `ListApplicationOperations' operation.
%%
%% This operation is supported only for Managed Service for Apache Flink.
-spec describe_application_operation(aws_client:aws_client(), describe_application_operation_request()) ->
    {ok, describe_application_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_application_operation_errors(), tuple()}.
describe_application_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_operation(Client, Input, []).

-spec describe_application_operation(aws_client:aws_client(), describe_application_operation_request(), proplists:proplist()) ->
    {ok, describe_application_operation_response(), tuple()} |
    {error, any()} |
    {error, describe_application_operation_errors(), tuple()}.
describe_application_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationOperation">>, Input, Options).

%% @doc Returns information about a snapshot of application state data.
-spec describe_application_snapshot(aws_client:aws_client(), describe_application_snapshot_request()) ->
    {ok, describe_application_snapshot_response(), tuple()} |
    {error, any()} |
    {error, describe_application_snapshot_errors(), tuple()}.
describe_application_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_snapshot(Client, Input, []).

-spec describe_application_snapshot(aws_client:aws_client(), describe_application_snapshot_request(), proplists:proplist()) ->
    {ok, describe_application_snapshot_response(), tuple()} |
    {error, any()} |
    {error, describe_application_snapshot_errors(), tuple()}.
describe_application_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationSnapshot">>, Input, Options).

%% @doc Provides a detailed description of a specified version of the
%% application.
%%
%% To see a list of all the versions of an application, invoke the
%% `ListApplicationVersions' operation.
%%
%% This operation is supported only for Managed Service for Apache Flink.
-spec describe_application_version(aws_client:aws_client(), describe_application_version_request()) ->
    {ok, describe_application_version_response(), tuple()} |
    {error, any()} |
    {error, describe_application_version_errors(), tuple()}.
describe_application_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_version(Client, Input, []).

-spec describe_application_version(aws_client:aws_client(), describe_application_version_request(), proplists:proplist()) ->
    {ok, describe_application_version_response(), tuple()} |
    {error, any()} |
    {error, describe_application_version_errors(), tuple()}.
describe_application_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationVersion">>, Input, Options).

%% @doc Infers a schema for a SQL-based Kinesis Data Analytics application by
%% evaluating
%% sample records on the specified streaming source (Kinesis data stream or
%% Kinesis Data Firehose
%% delivery stream) or Amazon S3 object.
%%
%% In the response, the operation returns the inferred
%% schema and also the sample records that the operation used to infer the
%% schema.
%%
%% You can use the inferred schema when configuring a streaming source for
%% your application.
%% When you create an application using the Kinesis Data Analytics console,
%% the console uses this
%% operation to infer a schema and show it in the console user interface.
-spec discover_input_schema(aws_client:aws_client(), discover_input_schema_request()) ->
    {ok, discover_input_schema_response(), tuple()} |
    {error, any()} |
    {error, discover_input_schema_errors(), tuple()}.
discover_input_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_input_schema(Client, Input, []).

-spec discover_input_schema(aws_client:aws_client(), discover_input_schema_request(), proplists:proplist()) ->
    {ok, discover_input_schema_response(), tuple()} |
    {error, any()} |
    {error, discover_input_schema_errors(), tuple()}.
discover_input_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverInputSchema">>, Input, Options).

%% @doc Lists all the operations performed for the specified application such
%% as UpdateApplication, StartApplication etc.
%%
%% The response also includes a summary of the operation.
%%
%% To get the complete description of a specific operation, invoke the
%% `DescribeApplicationOperation' operation.
%%
%% This operation is supported only for Managed Service for Apache Flink.
-spec list_application_operations(aws_client:aws_client(), list_application_operations_request()) ->
    {ok, list_application_operations_response(), tuple()} |
    {error, any()} |
    {error, list_application_operations_errors(), tuple()}.
list_application_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_operations(Client, Input, []).

-spec list_application_operations(aws_client:aws_client(), list_application_operations_request(), proplists:proplist()) ->
    {ok, list_application_operations_response(), tuple()} |
    {error, any()} |
    {error, list_application_operations_errors(), tuple()}.
list_application_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationOperations">>, Input, Options).

%% @doc Lists information about the current application snapshots.
-spec list_application_snapshots(aws_client:aws_client(), list_application_snapshots_request()) ->
    {ok, list_application_snapshots_response(), tuple()} |
    {error, any()} |
    {error, list_application_snapshots_errors(), tuple()}.
list_application_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_snapshots(Client, Input, []).

-spec list_application_snapshots(aws_client:aws_client(), list_application_snapshots_request(), proplists:proplist()) ->
    {ok, list_application_snapshots_response(), tuple()} |
    {error, any()} |
    {error, list_application_snapshots_errors(), tuple()}.
list_application_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationSnapshots">>, Input, Options).

%% @doc Lists all the versions for the specified application, including
%% versions that were rolled back.
%%
%% The response also includes a summary of the configuration
%% associated with each version.
%%
%% To get the complete description of a specific application version, invoke
%% the `DescribeApplicationVersion' operation.
%%
%% This operation is supported only for Managed Service for Apache Flink.
-spec list_application_versions(aws_client:aws_client(), list_application_versions_request()) ->
    {ok, list_application_versions_response(), tuple()} |
    {error, any()} |
    {error, list_application_versions_errors(), tuple()}.
list_application_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_versions(Client, Input, []).

-spec list_application_versions(aws_client:aws_client(), list_application_versions_request(), proplists:proplist()) ->
    {ok, list_application_versions_response(), tuple()} |
    {error, any()} |
    {error, list_application_versions_errors(), tuple()}.
list_application_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationVersions">>, Input, Options).

%% @doc Returns a list of Managed Service for Apache Flink applications in
%% your account.
%%
%% For each
%% application, the response includes the application name, Amazon Resource
%% Name (ARN), and
%% status.
%%
%% If you want detailed information about a specific application, use
%% `DescribeApplication'.
-spec list_applications(aws_client:aws_client(), list_applications_request()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_applications(Client, Input, []).

-spec list_applications(aws_client:aws_client(), list_applications_request(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplications">>, Input, Options).

%% @doc Retrieves the list of key-value tags assigned to the application.
%%
%% For more information, see
%% Using Tagging:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html.
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

%% @doc Reverts the application to the previous running version.
%%
%% You can roll back an
%% application if you suspect it is stuck in a transient status or in the
%% running status.
%%
%% You can roll back an application only if it is in the `UPDATING',
%% `AUTOSCALING', or `RUNNING' statuses.
%%
%% When you rollback an application, it loads state data from the last
%% successful snapshot.
%% If the application has no snapshots, Managed Service for Apache Flink
%% rejects the rollback request.
-spec rollback_application(aws_client:aws_client(), rollback_application_request()) ->
    {ok, rollback_application_response(), tuple()} |
    {error, any()} |
    {error, rollback_application_errors(), tuple()}.
rollback_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    rollback_application(Client, Input, []).

-spec rollback_application(aws_client:aws_client(), rollback_application_request(), proplists:proplist()) ->
    {ok, rollback_application_response(), tuple()} |
    {error, any()} |
    {error, rollback_application_errors(), tuple()}.
rollback_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RollbackApplication">>, Input, Options).

%% @doc Starts the specified Managed Service for Apache Flink application.
%%
%% After creating an application, you must exclusively call this operation to
%% start your application.
-spec start_application(aws_client:aws_client(), start_application_request()) ->
    {ok, start_application_response(), tuple()} |
    {error, any()} |
    {error, start_application_errors(), tuple()}.
start_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_application(Client, Input, []).

-spec start_application(aws_client:aws_client(), start_application_request(), proplists:proplist()) ->
    {ok, start_application_response(), tuple()} |
    {error, any()} |
    {error, start_application_errors(), tuple()}.
start_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartApplication">>, Input, Options).

%% @doc Stops the application from processing data.
%%
%% You can stop
%% an application only if it is in the running status, unless you set the
%% `Force'
%% parameter to `true'.
%%
%% You can use the `DescribeApplication' operation to find the
%% application status.
%%
%% Managed Service for Apache Flink takes a snapshot when the application is
%% stopped, unless `Force' is set
%% to `true'.
-spec stop_application(aws_client:aws_client(), stop_application_request()) ->
    {ok, stop_application_response(), tuple()} |
    {error, any()} |
    {error, stop_application_errors(), tuple()}.
stop_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_application(Client, Input, []).

-spec stop_application(aws_client:aws_client(), stop_application_request(), proplists:proplist()) ->
    {ok, stop_application_response(), tuple()} |
    {error, any()} |
    {error, stop_application_errors(), tuple()}.
stop_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopApplication">>, Input, Options).

%% @doc Adds one or more key-value tags to a Managed Service for Apache Flink
%% application.
%%
%% Note that the maximum number of application
%% tags includes system tags. The maximum number of user-defined application
%% tags is 50.
%% For more information, see Using Tagging:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html.
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

%% @doc Removes one or more tags from a Managed Service for Apache Flink
%% application.
%%
%% For more information, see
%% Using Tagging:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html.
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

%% @doc Updates an existing Managed Service for Apache Flink application.
%%
%% Using this operation, you
%% can update application code, input configuration, and output
%% configuration.
%%
%% Managed Service for Apache Flink updates the `ApplicationVersionId'
%% each time you update
%% your application.
-spec update_application(aws_client:aws_client(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).

-spec update_application(aws_client:aws_client(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Updates the maintenance configuration of the Managed Service for
%% Apache Flink application.
%%
%% You can invoke this operation on an application that is in one of the two
%% following
%% states: `READY' or `RUNNING'. If you invoke it when the
%% application is
%% in a state other than these two states, it throws a
%% `ResourceInUseException'. The
%% service makes use of the updated configuration the next time it schedules
%% maintenance for the
%% application. If you invoke this operation after the service schedules
%% maintenance, the service
%% will apply the configuration update the next time it schedules maintenance
%% for the
%% application. This means that you might not see the maintenance
%% configuration update applied to
%% the maintenance process that follows a successful invocation of this
%% operation, but to the
%% following maintenance process instead.
%%
%% To see the current maintenance configuration of your application, invoke
%% the
%% `DescribeApplication' operation.
%%
%% For information about application maintenance, see Managed Service for
%% Apache Flink for Apache Flink Maintenance:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/java/maintenance.html.
%%
%% This operation is supported only for Managed Service for Apache Flink.
-spec update_application_maintenance_configuration(aws_client:aws_client(), update_application_maintenance_configuration_request()) ->
    {ok, update_application_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_application_maintenance_configuration_errors(), tuple()}.
update_application_maintenance_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application_maintenance_configuration(Client, Input, []).

-spec update_application_maintenance_configuration(aws_client:aws_client(), update_application_maintenance_configuration_request(), proplists:proplist()) ->
    {ok, update_application_maintenance_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_application_maintenance_configuration_errors(), tuple()}.
update_application_maintenance_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplicationMaintenanceConfiguration">>, Input, Options).

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
    Client1 = Client#{service => <<"kinesisanalytics">>},
    Host = build_host(<<"kinesisanalytics">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"KinesisAnalytics_20180523.", Action/binary>>}
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
