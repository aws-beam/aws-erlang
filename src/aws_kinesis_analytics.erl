%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Kinesis Analytics
%%
%% Overview
%%
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% This is the Amazon Kinesis Analytics v1 API Reference.
%% The Amazon Kinesis Analytics Developer Guide provides additional
%% information.
-module(aws_kinesis_analytics).

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
         create_application/2,
         create_application/3,
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
         describe_application/2,
         describe_application/3,
         discover_input_schema/2,
         discover_input_schema/3,
         list_applications/2,
         list_applications/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         start_application/2,
         start_application/3,
         stop_application/2,
         stop_application/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_application/2,
         update_application/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% input_parallelism_update() :: #{
%%   <<"CountUpdate">> => integer()
%% }
-type input_parallelism_update() :: #{binary() => any()}.

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
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% application_detail() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationCode">> => string(),
%%   <<"ApplicationDescription">> => string(),
%%   <<"ApplicationName">> => string(),
%%   <<"ApplicationStatus">> => list(any()),
%%   <<"ApplicationVersionId">> => float(),
%%   <<"CloudWatchLoggingOptionDescriptions">> => list(cloud_watch_logging_option_description()),
%%   <<"CreateTimestamp">> => non_neg_integer(),
%%   <<"InputDescriptions">> => list(input_description()),
%%   <<"LastUpdateTimestamp">> => non_neg_integer(),
%%   <<"OutputDescriptions">> => list(output_description()),
%%   <<"ReferenceDataSourceDescriptions">> => list(reference_data_source_description())
%% }
-type application_detail() :: #{binary() => any()}.

%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% add_application_input_processing_configuration_response() :: #{

%% }
-type add_application_input_processing_configuration_response() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logging_option_description() :: #{
%%   <<"CloudWatchLoggingOptionId">> => string(),
%%   <<"LogStreamARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type cloud_watch_logging_option_description() :: #{binary() => any()}.

%% Example:
%% add_application_cloud_watch_logging_option_response() :: #{

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
%% resource_provisioned_throughput_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_provisioned_throughput_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_application_reference_data_source_response() :: #{

%% }
-type delete_application_reference_data_source_response() :: #{binary() => any()}.

%% Example:
%% input_starting_position_configuration() :: #{
%%   <<"InputStartingPosition">> => list(any())
%% }
-type input_starting_position_configuration() :: #{binary() => any()}.

%% Example:
%% add_application_input_response() :: #{

%% }
-type add_application_input_response() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_input_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_firehose_input_description() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_output_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_firehose_output_description() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_input_update() :: #{
%%   <<"ResourceARNUpdate">> => string(),
%%   <<"RoleARNUpdate">> => string()
%% }
-type kinesis_firehose_input_update() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logging_option_update() :: #{
%%   <<"CloudWatchLoggingOptionId">> => string(),
%%   <<"LogStreamARNUpdate">> => string(),
%%   <<"RoleARNUpdate">> => string()
%% }
-type cloud_watch_logging_option_update() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_input_update() :: #{
%%   <<"ResourceARNUpdate">> => string(),
%%   <<"RoleARNUpdate">> => string()
%% }
-type kinesis_streams_input_update() :: #{binary() => any()}.

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
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_application_cloud_watch_logging_option_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CloudWatchLoggingOptionId">> := string(),
%%   <<"CurrentApplicationVersionId">> := float()
%% }
-type delete_application_cloud_watch_logging_option_request() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_output() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_streams_output() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_output() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_firehose_output() :: #{binary() => any()}.

%% Example:
%% unable_to_detect_schema_exception() :: #{
%%   <<"ProcessedInputRecords">> => list(string()),
%%   <<"RawInputRecords">> => list(string()),
%%   <<"message">> => string()
%% }
-type unable_to_detect_schema_exception() :: #{binary() => any()}.

%% Example:
%% reference_data_source() :: #{
%%   <<"ReferenceSchema">> => source_schema(),
%%   <<"S3ReferenceDataSource">> => s3_reference_data_source(),
%%   <<"TableName">> => string()
%% }
-type reference_data_source() :: #{binary() => any()}.

%% Example:
%% application_update() :: #{
%%   <<"ApplicationCodeUpdate">> => string(),
%%   <<"CloudWatchLoggingOptionUpdates">> => list(cloud_watch_logging_option_update()),
%%   <<"InputUpdates">> => list(input_update()),
%%   <<"OutputUpdates">> => list(output_update()),
%%   <<"ReferenceDataSourceUpdates">> => list(reference_data_source_update())
%% }
-type application_update() :: #{binary() => any()}.

%% Example:
%% destination_schema() :: #{
%%   <<"RecordFormatType">> => list(any())
%% }
-type destination_schema() :: #{binary() => any()}.

%% Example:
%% lambda_output_update() :: #{
%%   <<"ResourceARNUpdate">> => string(),
%%   <<"RoleARNUpdate">> => string()
%% }
-type lambda_output_update() :: #{binary() => any()}.

%% Example:
%% discover_input_schema_request() :: #{
%%   <<"InputProcessingConfiguration">> => input_processing_configuration(),
%%   <<"InputStartingPositionConfiguration">> => input_starting_position_configuration(),
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string(),
%%   <<"S3Configuration">> => s3_configuration()
%% }
-type discover_input_schema_request() :: #{binary() => any()}.

%% Example:
%% input_lambda_processor() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type input_lambda_processor() :: #{binary() => any()}.

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
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% s3_reference_data_source() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"FileKey">> => string(),
%%   <<"ReferenceRoleARN">> => string()
%% }
-type s3_reference_data_source() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% stop_application_request() :: #{
%%   <<"ApplicationName">> := string()
%% }
-type stop_application_request() :: #{binary() => any()}.

%% Example:
%% input_lambda_processor_update() :: #{
%%   <<"ResourceARNUpdate">> => string(),
%%   <<"RoleARNUpdate">> => string()
%% }
-type input_lambda_processor_update() :: #{binary() => any()}.

%% Example:
%% csv_mapping_parameters() :: #{
%%   <<"RecordColumnDelimiter">> => string(),
%%   <<"RecordRowDelimiter">> => string()
%% }
-type csv_mapping_parameters() :: #{binary() => any()}.

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
%% json_mapping_parameters() :: #{
%%   <<"RecordRowPath">> => string()
%% }
-type json_mapping_parameters() :: #{binary() => any()}.

%% Example:
%% delete_application_cloud_watch_logging_option_response() :: #{

%% }
-type delete_application_cloud_watch_logging_option_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% create_application_request() :: #{
%%   <<"ApplicationCode">> => string(),
%%   <<"ApplicationDescription">> => string(),
%%   <<"ApplicationName">> := string(),
%%   <<"CloudWatchLoggingOptions">> => list(cloud_watch_logging_option()),
%%   <<"Inputs">> => list(input()),
%%   <<"Outputs">> => list(output()),
%%   <<"Tags">> => list(tag())
%% }
-type create_application_request() :: #{binary() => any()}.

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
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% create_application_response() :: #{
%%   <<"ApplicationSummary">> => application_summary()
%% }
-type create_application_response() :: #{binary() => any()}.

%% Example:
%% add_application_output_response() :: #{

%% }
-type add_application_output_response() :: #{binary() => any()}.

%% Example:
%% input_configuration() :: #{
%%   <<"Id">> => string(),
%%   <<"InputStartingPositionConfiguration">> => input_starting_position_configuration()
%% }
-type input_configuration() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_input_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_streams_input_description() :: #{binary() => any()}.

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
%% start_application_response() :: #{

%% }
-type start_application_response() :: #{binary() => any()}.

%% Example:
%% update_application_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"ApplicationUpdate">> := application_update(),
%%   <<"CurrentApplicationVersionId">> := float()
%% }
-type update_application_request() :: #{binary() => any()}.

%% Example:
%% update_application_response() :: #{

%% }
-type update_application_response() :: #{binary() => any()}.

%% Example:
%% describe_application_request() :: #{
%%   <<"ApplicationName">> := string()
%% }
-type describe_application_request() :: #{binary() => any()}.

%% Example:
%% start_application_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"InputConfigurations">> := list(input_configuration())
%% }
-type start_application_request() :: #{binary() => any()}.

%% Example:
%% code_validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type code_validation_exception() :: #{binary() => any()}.

%% Example:
%% input_lambda_processor_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type input_lambda_processor_description() :: #{binary() => any()}.

%% Example:
%% input_parallelism() :: #{
%%   <<"Count">> => integer()
%% }
-type input_parallelism() :: #{binary() => any()}.

%% Example:
%% cloud_watch_logging_option() :: #{
%%   <<"LogStreamARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type cloud_watch_logging_option() :: #{binary() => any()}.

%% Example:
%% list_applications_request() :: #{
%%   <<"ExclusiveStartApplicationName">> => string(),
%%   <<"Limit">> => integer()
%% }
-type list_applications_request() :: #{binary() => any()}.

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
%% kinesis_streams_output_update() :: #{
%%   <<"ResourceARNUpdate">> => string(),
%%   <<"RoleARNUpdate">> => string()
%% }
-type kinesis_streams_output_update() :: #{binary() => any()}.

%% Example:
%% stop_application_response() :: #{

%% }
-type stop_application_response() :: #{binary() => any()}.

%% Example:
%% add_application_cloud_watch_logging_option_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CloudWatchLoggingOption">> := cloud_watch_logging_option(),
%%   <<"CurrentApplicationVersionId">> := float()
%% }
-type add_application_cloud_watch_logging_option_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% invalid_argument_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_argument_exception() :: #{binary() => any()}.

%% Example:
%% invalid_application_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_application_configuration_exception() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

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

%% }
-type delete_application_input_processing_configuration_response() :: #{binary() => any()}.

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
%% lambda_output() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type lambda_output() :: #{binary() => any()}.

%% Example:
%% s3_configuration() :: #{
%%   <<"BucketARN">> => string(),
%%   <<"FileKey">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type s3_configuration() :: #{binary() => any()}.

%% Example:
%% application_summary() :: #{
%%   <<"ApplicationARN">> => string(),
%%   <<"ApplicationName">> => string(),
%%   <<"ApplicationStatus">> => list(any())
%% }
-type application_summary() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_output_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_streams_output_description() :: #{binary() => any()}.

%% Example:
%% record_format() :: #{
%%   <<"MappingParameters">> => mapping_parameters(),
%%   <<"RecordFormatType">> => list(any())
%% }
-type record_format() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_applications_response() :: #{
%%   <<"ApplicationSummaries">> => list(application_summary()),
%%   <<"HasMoreApplications">> => boolean()
%% }
-type list_applications_response() :: #{binary() => any()}.

%% Example:
%% lambda_output_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type lambda_output_description() :: #{binary() => any()}.

%% Example:
%% delete_application_output_request() :: #{
%%   <<"ApplicationName">> := string(),
%%   <<"CurrentApplicationVersionId">> := float(),
%%   <<"OutputId">> := string()
%% }
-type delete_application_output_request() :: #{binary() => any()}.

%% Example:
%% kinesis_streams_input() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
%% }
-type kinesis_streams_input() :: #{binary() => any()}.

%% Example:
%% s3_reference_data_source_update() :: #{
%%   <<"BucketARNUpdate">> => string(),
%%   <<"FileKeyUpdate">> => string(),
%%   <<"ReferenceRoleARNUpdate">> => string()
%% }
-type s3_reference_data_source_update() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_input() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RoleARN">> => string()
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
%% input_processing_configuration_update() :: #{
%%   <<"InputLambdaProcessorUpdate">> => input_lambda_processor_update()
%% }
-type input_processing_configuration_update() :: #{binary() => any()}.

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
%% add_application_reference_data_source_response() :: #{

%% }
-type add_application_reference_data_source_response() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_output_update() :: #{
%%   <<"ResourceARNUpdate">> => string(),
%%   <<"RoleARNUpdate">> => string()
%% }
-type kinesis_firehose_output_update() :: #{binary() => any()}.

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

%% }
-type delete_application_output_response() :: #{binary() => any()}.

-type add_application_cloud_watch_logging_option_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type add_application_input_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    code_validation_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type add_application_input_processing_configuration_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type add_application_output_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type add_application_reference_data_source_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type create_application_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    code_validation_exception() | 
    resource_in_use_exception().

-type delete_application_errors() ::
    concurrent_modification_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type delete_application_cloud_watch_logging_option_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type delete_application_input_processing_configuration_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type delete_application_output_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type delete_application_reference_data_source_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type describe_application_errors() ::
    resource_not_found_exception() | 
    unsupported_operation_exception().

-type discover_input_schema_errors() ::
    invalid_argument_exception() | 
    service_unavailable_exception() | 
    unable_to_detect_schema_exception() | 
    resource_provisioned_throughput_exceeded_exception().

-type list_tags_for_resource_errors() ::
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception().

-type start_application_errors() ::
    invalid_application_configuration_exception() | 
    invalid_argument_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

-type stop_application_errors() ::
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

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
    concurrent_modification_exception() | 
    invalid_argument_exception() | 
    code_validation_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    unsupported_operation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Adds a CloudWatch log stream to monitor application configuration errors.
%% For more
%% information about using CloudWatch log streams with Amazon Kinesis
%% Analytics
%% applications, see Working with Amazon
%% CloudWatch Logs:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html.
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
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Adds a streaming source to your Amazon Kinesis application.
%% For conceptual information,
%% see Configuring Application Input:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html.
%%
%% You can add a streaming source either when you create an application or
%% you can use
%% this operation to add a streaming source after you create an application.
%% For more information, see
%% CreateApplication:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_CreateApplication.html.
%%
%% Any configuration update, including adding a streaming source using this
%% operation,
%% results in a new version of the application. You can use the
%% DescribeApplication:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html
%% operation
%% to find the current application version.
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics:AddApplicationInput' action.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Adds an InputProcessingConfiguration:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html
%% to an application. An input processor preprocesses records on the input
%% stream
%% before the application's SQL code executes. Currently, the only input
%% processor available is
%% AWS Lambda: https://docs.aws.amazon.com/lambda/.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Adds an external destination to your Amazon Kinesis Analytics application.
%%
%% If you want Amazon Kinesis Analytics to deliver data from an
%% in-application stream
%% within your application to an external destination (such as an Amazon
%% Kinesis stream, an
%% Amazon Kinesis Firehose delivery stream, or an AWS Lambda function), you
%% add the
%% relevant configuration to your application using this operation. You can
%% configure one
%% or more outputs for your application. Each output configuration maps an
%% in-application
%% stream and an external destination.
%%
%% You can use one of the output configurations to deliver data from your
%% in-application error stream to an external destination so that you can
%% analyze the
%% errors. For more information, see Understanding Application
%% Output (Destination):
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html.
%%
%% Any configuration update, including adding a streaming source using this
%% operation, results in a new version of the application. You can use the
%% DescribeApplication:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html
%% operation to find the current application
%% version.
%%
%% For the limits on the number of application inputs and outputs
%% you can configure, see Limits:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html.
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics:AddApplicationOutput' action.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Adds a reference data source to an existing application.
%%
%% Amazon Kinesis Analytics reads reference data (that is, an Amazon S3
%% object) and creates an in-application table within your application. In
%% the request, you provide the source (S3 bucket name and object key name),
%% name of the in-application table to create, and the necessary mapping
%% information that describes how data in Amazon S3 object maps to columns in
%% the resulting in-application table.
%%
%% For conceptual information,
%% see Configuring Application Input:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html.
%% For the limits on data sources you can add to your application, see
%% Limits:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html.
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics:AddApplicationOutput' action.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Creates an Amazon Kinesis Analytics application.
%% You can configure each application with one streaming source as input,
%% application code to process the input, and up to
%% three destinations where
%% you want Amazon Kinesis Analytics to write the output data from your
%% application.
%% For an overview, see
%% How it Works:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html.
%%
%% In the input configuration, you map the streaming source to an
%% in-application stream, which you can think of as a constantly updating
%% table. In the mapping, you must provide a schema for the in-application
%% stream and map each data column in the in-application stream to a
%% data element in the streaming source.
%%
%% Your application code is one or more SQL statements that read input data,
%% transform it, and generate output. Your application code can create one or
%% more SQL artifacts like SQL streams or pumps.
%%
%% In the output configuration, you can configure the application to write
%% data from in-application streams created in your applications to up to
%% three destinations.
%%
%% To read data from your source stream or write data to destination streams,
%% Amazon Kinesis Analytics
%% needs your permissions. You grant these permissions by creating IAM roles.
%% This operation requires permissions to perform the
%% `kinesisanalytics:CreateApplication' action.
%%
%% For introductory exercises to create an Amazon Kinesis Analytics
%% application, see
%% Getting Started:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Deletes the specified application. Amazon Kinesis Analytics halts
%% application execution and deletes the application, including any
%% application artifacts (such as in-application streams, reference table,
%% and application code).
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics:DeleteApplication' action.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Deletes a CloudWatch log stream from an application. For more information
%% about
%% using CloudWatch log streams with Amazon Kinesis Analytics applications,
%% see
%% Working with Amazon CloudWatch Logs:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Deletes an InputProcessingConfiguration:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html
%% from an input.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Deletes output destination configuration from your application
%% configuration. Amazon Kinesis Analytics will no longer write data from the
%% corresponding in-application stream to the external output destination.
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics:DeleteApplicationOutput' action.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Deletes a reference data source configuration from the specified
%% application configuration.
%%
%% If the application is running, Amazon Kinesis Analytics immediately
%% removes the in-application table
%% that you created using the AddApplicationReferenceDataSource:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html
%% operation.
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics.DeleteApplicationReferenceDataSource'
%% action.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Returns information about a specific Amazon Kinesis Analytics application.
%%
%% If you want to retrieve a list of all applications in your account,
%% use the ListApplications:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_ListApplications.html
%% operation.
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics:DescribeApplication'
%% action. You can use `DescribeApplication' to get the current
%% application versionId, which you need to call other
%% operations such as `Update'.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Infers a schema by evaluating sample records on the specified streaming
%% source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream)
%% or S3 object. In the response, the operation returns the inferred schema
%% and also the sample records that the operation used to infer the schema.
%%
%% You can use the inferred schema when configuring a streaming source
%% for your application. For conceptual information,
%% see Configuring Application Input:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html.
%% Note that when you create an application using the Amazon Kinesis
%% Analytics console,
%% the console uses this operation to infer a schema and show it in the
%% console user interface.
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics:DiscoverInputSchema' action.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Returns a list of Amazon Kinesis Analytics applications in your account.
%% For each application, the response includes the application name,
%% Amazon Resource Name (ARN), and status.
%%
%% If the response returns the `HasMoreApplications' value as true,
%% you can send another request by adding the
%% `ExclusiveStartApplicationName' in the request body, and
%% set the value of this to the last application name from
%% the previous response.
%%
%% If you want detailed information about a specific application, use
%% DescribeApplication:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html.
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics:ListApplications' action.
-spec list_applications(aws_client:aws_client(), list_applications_request()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()}.
list_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_applications(Client, Input, []).

-spec list_applications(aws_client:aws_client(), list_applications_request(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()}.
list_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplications">>, Input, Options).

%% @doc Retrieves the list of key-value tags assigned to the application.
%%
%% For more information, see Using Tagging:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html.
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
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Starts the specified Amazon Kinesis Analytics application. After creating
%% an application, you must exclusively call this operation to start your
%% application.
%%
%% After the application starts, it begins consuming the input data,
%% processes it, and writes the output to the configured destination.
%%
%% The application status must be `READY' for you to start an
%% application. You can
%% get the application status in the console or using the
%% DescribeApplication:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html
%% operation.
%%
%% After you start the application, you can stop the application from
%% processing
%% the input by calling the StopApplication:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_StopApplication.html
%% operation.
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics:StartApplication' action.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Stops the application from processing input data. You can stop
%% an application only if it is in the running state.
%% You can use the DescribeApplication:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html
%% operation to find the application state.
%% After the application is stopped,
%% Amazon Kinesis Analytics stops reading data from the input, the
%% application stops processing data, and there is no output written to the
%% destination.
%%
%% This operation requires permissions to perform the
%% `kinesisanalytics:StopApplication' action.
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

%% @doc Adds one or more key-value tags to a Kinesis Analytics application.
%%
%% Note that the maximum number of application tags includes system tags. The
%% maximum number of user-defined application tags is 50.
%% For more information, see Using Tagging:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html.
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

%% @doc Removes one or more tags from a Kinesis Analytics application.
%%
%% For more information, see Using Tagging:
%% https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html.
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

%% @doc
%% This documentation is for version 1 of the Amazon Kinesis Data Analytics
%% API, which only supports SQL applications.
%%
%% Version 2 of the API supports SQL and Java applications. For more
%% information about version 2, see Amazon Kinesis Data Analytics API V2
%% Documentation: /kinesisanalytics/latest/apiv2/Welcome.html.
%%
%% Updates an existing Amazon Kinesis Analytics application. Using this API,
%% you can update application code, input configuration, and
%% output configuration.
%%
%% Note that Amazon Kinesis Analytics updates the
%% `CurrentApplicationVersionId'
%% each time you update your application.
%%
%% This operation requires permission for the
%% `kinesisanalytics:UpdateApplication' action.
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
        {<<"X-Amz-Target">>, <<"KinesisAnalytics_20150814.", Action/binary>>}
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
