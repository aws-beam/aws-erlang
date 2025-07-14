%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Timestream Write
%%
%% Amazon Timestream is a fast, scalable, fully managed time-series database
%% service
%% that makes it easy to store and analyze trillions of time-series data
%% points per day.
%%
%% With
%% Timestream, you can easily store and analyze IoT sensor data to derive
%% insights
%% from your IoT applications. You can analyze industrial telemetry to
%% streamline equipment
%% management and maintenance. You can also store and analyze log data and
%% metrics to improve
%% the performance and availability of your applications.
%%
%% Timestream is built from the ground up to effectively ingest, process, and
%% store time-series data. It organizes data to optimize query processing. It
%% automatically
%% scales based on the volume of data ingested and on the query volume to
%% ensure you receive
%% optimal performance while inserting and querying data. As your data grows
%% over time,
%% Timestream’s adaptive query processing engine spans across storage tiers
%% to
%% provide fast analysis while reducing costs.
-module(aws_timestream_write).

-export([create_batch_load_task/2,
         create_batch_load_task/3,
         create_database/2,
         create_database/3,
         create_table/2,
         create_table/3,
         delete_database/2,
         delete_database/3,
         delete_table/2,
         delete_table/3,
         describe_batch_load_task/2,
         describe_batch_load_task/3,
         describe_database/2,
         describe_database/3,
         describe_endpoints/2,
         describe_endpoints/3,
         describe_table/2,
         describe_table/3,
         list_batch_load_tasks/2,
         list_batch_load_tasks/3,
         list_databases/2,
         list_databases/3,
         list_tables/2,
         list_tables/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         resume_batch_load_task/2,
         resume_batch_load_task/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_database/2,
         update_database/3,
         update_table/2,
         update_table/3,
         write_records/2,
         write_records/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% partition_key() :: #{
%%   <<"EnforcementInRecord">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type partition_key() :: #{binary() => any()}.

%% Example:
%% create_batch_load_task_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DataModelConfiguration">> => data_model_configuration(),
%%   <<"DataSourceConfiguration">> := data_source_configuration(),
%%   <<"RecordVersion">> => float(),
%%   <<"ReportConfiguration">> := report_configuration(),
%%   <<"TargetDatabaseName">> := string(),
%%   <<"TargetTableName">> := string()
%% }
-type create_batch_load_task_request() :: #{binary() => any()}.

%% Example:
%% magnetic_store_rejected_data_location() :: #{
%%   <<"S3Configuration">> => s3_configuration()
%% }
-type magnetic_store_rejected_data_location() :: #{binary() => any()}.

%% Example:
%% record() :: #{
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MeasureName">> => string(),
%%   <<"MeasureValue">> => string(),
%%   <<"MeasureValueType">> => list(any()),
%%   <<"MeasureValues">> => list(measure_value()),
%%   <<"Time">> => string(),
%%   <<"TimeUnit">> => list(any()),
%%   <<"Version">> => float()
%% }
-type record() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% database() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatabaseName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"TableCount">> => float()
%% }
-type database() :: #{binary() => any()}.

%% Example:
%% update_table_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"MagneticStoreWriteProperties">> => magnetic_store_write_properties(),
%%   <<"RetentionProperties">> => retention_properties(),
%%   <<"Schema">> => schema(),
%%   <<"TableName">> := string()
%% }
-type update_table_request() :: #{binary() => any()}.

%% Example:
%% magnetic_store_write_properties() :: #{
%%   <<"EnableMagneticStoreWrites">> => boolean(),
%%   <<"MagneticStoreRejectedDataLocation">> => magnetic_store_rejected_data_location()
%% }
-type magnetic_store_write_properties() :: #{binary() => any()}.

%% Example:
%% data_source_configuration() :: #{
%%   <<"CsvConfiguration">> => csv_configuration(),
%%   <<"DataFormat">> => list(any()),
%%   <<"DataSourceS3Configuration">> => data_source_s3_configuration()
%% }
-type data_source_configuration() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% measure_value() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type measure_value() :: #{binary() => any()}.

%% Example:
%% records_ingested() :: #{
%%   <<"MagneticStore">> => integer(),
%%   <<"MemoryStore">> => integer(),
%%   <<"Total">> => integer()
%% }
-type records_ingested() :: #{binary() => any()}.

%% Example:
%% delete_table_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string()
%% }
-type delete_table_request() :: #{binary() => any()}.

%% Example:
%% describe_database_response() :: #{
%%   <<"Database">> => database()
%% }
-type describe_database_response() :: #{binary() => any()}.

%% Example:
%% batch_load_task_description() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataModelConfiguration">> => data_model_configuration(),
%%   <<"DataSourceConfiguration">> => data_source_configuration(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"ProgressReport">> => batch_load_progress_report(),
%%   <<"RecordVersion">> => float(),
%%   <<"ReportConfiguration">> => report_configuration(),
%%   <<"ResumableUntil">> => non_neg_integer(),
%%   <<"TargetDatabaseName">> => string(),
%%   <<"TargetTableName">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskStatus">> => list(any())
%% }
-type batch_load_task_description() :: #{binary() => any()}.

%% Example:
%% multi_measure_attribute_mapping() :: #{
%%   <<"MeasureValueType">> => list(any()),
%%   <<"SourceColumn">> => string(),
%%   <<"TargetMultiMeasureAttributeName">> => string()
%% }
-type multi_measure_attribute_mapping() :: #{binary() => any()}.

%% Example:
%% csv_configuration() :: #{
%%   <<"ColumnSeparator">> => string(),
%%   <<"EscapeChar">> => string(),
%%   <<"NullValue">> => string(),
%%   <<"QuoteChar">> => string(),
%%   <<"TrimWhiteSpace">> => boolean()
%% }
-type csv_configuration() :: #{binary() => any()}.

%% Example:
%% report_s3_configuration() :: #{
%%   <<"BucketName">> => string(),
%%   <<"EncryptionOption">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"ObjectKeyPrefix">> => string()
%% }
-type report_s3_configuration() :: #{binary() => any()}.

%% Example:
%% invalid_endpoint_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_endpoint_exception() :: #{binary() => any()}.

%% Example:
%% describe_database_request() :: #{
%%   <<"DatabaseName">> := string()
%% }
-type describe_database_request() :: #{binary() => any()}.

%% Example:
%% describe_endpoints_response() :: #{
%%   <<"Endpoints">> => list(endpoint())
%% }
-type describe_endpoints_response() :: #{binary() => any()}.

%% Example:
%% create_table_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"MagneticStoreWriteProperties">> => magnetic_store_write_properties(),
%%   <<"RetentionProperties">> => retention_properties(),
%%   <<"Schema">> => schema(),
%%   <<"TableName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_table_request() :: #{binary() => any()}.

%% Example:
%% describe_table_response() :: #{
%%   <<"Table">> => table()
%% }
-type describe_table_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_batch_load_task_response() :: #{
%%   <<"BatchLoadTaskDescription">> => batch_load_task_description()
%% }
-type describe_batch_load_task_response() :: #{binary() => any()}.

%% Example:
%% batch_load_task() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatabaseName">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"ResumableUntil">> => non_neg_integer(),
%%   <<"TableName">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskStatus">> => list(any())
%% }
-type batch_load_task() :: #{binary() => any()}.

%% Example:
%% data_model_configuration() :: #{
%%   <<"DataModel">> => data_model(),
%%   <<"DataModelS3Configuration">> => data_model_s3_configuration()
%% }
-type data_model_configuration() :: #{binary() => any()}.

%% Example:
%% describe_endpoints_request() :: #{

%% }
-type describe_endpoints_request() :: #{binary() => any()}.

%% Example:
%% list_databases_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_databases_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_tables_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tables">> => list(table())
%% }
-type list_tables_response() :: #{binary() => any()}.

%% Example:
%% resume_batch_load_task_response() :: #{

%% }
-type resume_batch_load_task_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% describe_batch_load_task_request() :: #{
%%   <<"TaskId">> := string()
%% }
-type describe_batch_load_task_request() :: #{binary() => any()}.

%% Example:
%% create_table_response() :: #{
%%   <<"Table">> => table()
%% }
-type create_table_response() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% resume_batch_load_task_request() :: #{
%%   <<"TaskId">> := string()
%% }
-type resume_batch_load_task_request() :: #{binary() => any()}.

%% Example:
%% report_configuration() :: #{
%%   <<"ReportS3Configuration">> => report_s3_configuration()
%% }
-type report_configuration() :: #{binary() => any()}.

%% Example:
%% schema() :: #{
%%   <<"CompositePartitionKey">> => list(partition_key())
%% }
-type schema() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% create_batch_load_task_response() :: #{
%%   <<"TaskId">> => string()
%% }
-type create_batch_load_task_response() :: #{binary() => any()}.

%% Example:
%% describe_table_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string()
%% }
-type describe_table_request() :: #{binary() => any()}.

%% Example:
%% list_batch_load_tasks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TaskStatus">> => list(any())
%% }
-type list_batch_load_tasks_request() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"CachePeriodInMinutes">> => float()
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_batch_load_tasks_response() :: #{
%%   <<"BatchLoadTasks">> => list(batch_load_task()),
%%   <<"NextToken">> => string()
%% }
-type list_batch_load_tasks_response() :: #{binary() => any()}.

%% Example:
%% write_records_request() :: #{
%%   <<"CommonAttributes">> => record(),
%%   <<"DatabaseName">> := string(),
%%   <<"Records">> := list(record()),
%%   <<"TableName">> := string()
%% }
-type write_records_request() :: #{binary() => any()}.

%% Example:
%% multi_measure_mappings() :: #{
%%   <<"MultiMeasureAttributeMappings">> => list(multi_measure_attribute_mapping()),
%%   <<"TargetMultiMeasureName">> => string()
%% }
-type multi_measure_mappings() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% data_source_s3_configuration() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ObjectKeyPrefix">> => string()
%% }
-type data_source_s3_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% retention_properties() :: #{
%%   <<"MagneticStoreRetentionPeriodInDays">> => float(),
%%   <<"MemoryStoreRetentionPeriodInHours">> => float()
%% }
-type retention_properties() :: #{binary() => any()}.

%% Example:
%% data_model_s3_configuration() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ObjectKey">> => string()
%% }
-type data_model_s3_configuration() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% s3_configuration() :: #{
%%   <<"BucketName">> => string(),
%%   <<"EncryptionOption">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"ObjectKeyPrefix">> => string()
%% }
-type s3_configuration() :: #{binary() => any()}.

%% Example:
%% data_model() :: #{
%%   <<"DimensionMappings">> => list(dimension_mapping()),
%%   <<"MeasureNameColumn">> => string(),
%%   <<"MixedMeasureMappings">> => list(mixed_measure_mapping()),
%%   <<"MultiMeasureMappings">> => multi_measure_mappings(),
%%   <<"TimeColumn">> => string(),
%%   <<"TimeUnit">> => list(any())
%% }
-type data_model() :: #{binary() => any()}.

%% Example:
%% mixed_measure_mapping() :: #{
%%   <<"MeasureName">> => string(),
%%   <<"MeasureValueType">> => list(any()),
%%   <<"MultiMeasureAttributeMappings">> => list(multi_measure_attribute_mapping()),
%%   <<"SourceColumn">> => string(),
%%   <<"TargetMeasureName">> => string()
%% }
-type mixed_measure_mapping() :: #{binary() => any()}.

%% Example:
%% update_database_response() :: #{
%%   <<"Database">> => database()
%% }
-type update_database_response() :: #{binary() => any()}.

%% Example:
%% dimension() :: #{
%%   <<"DimensionValueType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type dimension() :: #{binary() => any()}.

%% Example:
%% write_records_response() :: #{
%%   <<"RecordsIngested">> => records_ingested()
%% }
-type write_records_response() :: #{binary() => any()}.

%% Example:
%% update_table_response() :: #{
%%   <<"Table">> => table()
%% }
-type update_table_response() :: #{binary() => any()}.

%% Example:
%% table() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatabaseName">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"MagneticStoreWriteProperties">> => magnetic_store_write_properties(),
%%   <<"RetentionProperties">> => retention_properties(),
%%   <<"Schema">> => schema(),
%%   <<"TableName">> => string(),
%%   <<"TableStatus">> => list(any())
%% }
-type table() :: #{binary() => any()}.

%% Example:
%% dimension_mapping() :: #{
%%   <<"DestinationColumn">> => string(),
%%   <<"SourceColumn">> => string()
%% }
-type dimension_mapping() :: #{binary() => any()}.

%% Example:
%% rejected_records_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RejectedRecords">> => list(rejected_record())
%% }
-type rejected_records_exception() :: #{binary() => any()}.

%% Example:
%% list_databases_response() :: #{
%%   <<"Databases">> => list(database()),
%%   <<"NextToken">> => string()
%% }
-type list_databases_response() :: #{binary() => any()}.

%% Example:
%% create_database_response() :: #{
%%   <<"Database">> => database()
%% }
-type create_database_response() :: #{binary() => any()}.

%% Example:
%% create_database_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_database_request() :: #{binary() => any()}.

%% Example:
%% update_database_request() :: #{
%%   <<"DatabaseName">> := string(),
%%   <<"KmsKeyId">> := string()
%% }
-type update_database_request() :: #{binary() => any()}.

%% Example:
%% batch_load_progress_report() :: #{
%%   <<"BytesMetered">> => float(),
%%   <<"FileFailures">> => float(),
%%   <<"ParseFailures">> => float(),
%%   <<"RecordIngestionFailures">> => float(),
%%   <<"RecordsIngested">> => float(),
%%   <<"RecordsProcessed">> => float()
%% }
-type batch_load_progress_report() :: #{binary() => any()}.

%% Example:
%% rejected_record() :: #{
%%   <<"ExistingVersion">> => float(),
%%   <<"Reason">> => string(),
%%   <<"RecordIndex">> => integer()
%% }
-type rejected_record() :: #{binary() => any()}.

%% Example:
%% list_tables_request() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_tables_request() :: #{binary() => any()}.

%% Example:
%% delete_database_request() :: #{
%%   <<"DatabaseName">> := string()
%% }
-type delete_database_request() :: #{binary() => any()}.

-type create_batch_load_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_endpoint_exception().

-type create_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    invalid_endpoint_exception().

-type create_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_endpoint_exception().

-type delete_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type delete_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type describe_batch_load_task_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type describe_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type describe_endpoints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type describe_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type list_batch_load_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_endpoint_exception().

-type list_databases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_endpoint_exception().

-type list_tables_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type resume_batch_load_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type update_database_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type update_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type write_records_errors() ::
    rejected_records_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Timestream batch load task.
%%
%% A batch load task processes data from
%% a CSV source in an S3 location and writes to a Timestream table. A mapping
%% from
%% source to target is defined in a batch load task. Errors and events are
%% written to a report
%% at an S3 location. For the report, if the KMS key is not specified, the
%% report will be encrypted with an S3 managed key when `SSE_S3' is the
%% option.
%% Otherwise an error is thrown. For more information, see Amazon Web
%% Services managed
%% keys:
%% https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk.
%% Service quotas apply:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html.
%% For
%% details, see code
%% sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-batch-load.html.
-spec create_batch_load_task(aws_client:aws_client(), create_batch_load_task_request()) ->
    {ok, create_batch_load_task_response(), tuple()} |
    {error, any()} |
    {error, create_batch_load_task_errors(), tuple()}.
create_batch_load_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_load_task(Client, Input, []).

-spec create_batch_load_task(aws_client:aws_client(), create_batch_load_task_request(), proplists:proplist()) ->
    {ok, create_batch_load_task_response(), tuple()} |
    {error, any()} |
    {error, create_batch_load_task_errors(), tuple()}.
create_batch_load_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchLoadTask">>, Input, Options).

%% @doc Creates a new Timestream database.
%%
%% If the KMS key is not
%% specified, the database will be encrypted with a Timestream managed KMS
%% key located in your account. For more information, see Amazon Web Services
%% managed keys:
%% https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk.
%% Service quotas apply:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html.
%% For
%% details, see code sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-db.html.
-spec create_database(aws_client:aws_client(), create_database_request()) ->
    {ok, create_database_response(), tuple()} |
    {error, any()} |
    {error, create_database_errors(), tuple()}.
create_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_database(Client, Input, []).

-spec create_database(aws_client:aws_client(), create_database_request(), proplists:proplist()) ->
    {ok, create_database_response(), tuple()} |
    {error, any()} |
    {error, create_database_errors(), tuple()}.
create_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatabase">>, Input, Options).

%% @doc Adds a new table to an existing database in your account.
%%
%% In an Amazon Web Services account, table names must be at least unique
%% within each Region if they are in the same
%% database. You might have identical table names in the same Region if the
%% tables are in
%% separate databases. While creating the table, you must specify the table
%% name, database
%% name, and the retention properties. Service quotas apply:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html.
%% See
%% code
%% sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-table.html
%% for details.
-spec create_table(aws_client:aws_client(), create_table_request()) ->
    {ok, create_table_response(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_table(Client, Input, []).

-spec create_table(aws_client:aws_client(), create_table_request(), proplists:proplist()) ->
    {ok, create_table_response(), tuple()} |
    {error, any()} |
    {error, create_table_errors(), tuple()}.
create_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTable">>, Input, Options).

%% @doc Deletes a given Timestream database.
%%
%% This is an irreversible
%% operation. After a database is deleted, the time-series data from its
%% tables cannot be
%% recovered.
%%
%% All tables in the database must be deleted first, or a ValidationException
%% error will
%% be thrown.
%%
%% Due to the nature of distributed retries, the operation can return either
%% success or
%% a ResourceNotFoundException. Clients should consider them equivalent.
%%
%% See code sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-db.html
%% for details.
-spec delete_database(aws_client:aws_client(), delete_database_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_database_errors(), tuple()}.
delete_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_database(Client, Input, []).

-spec delete_database(aws_client:aws_client(), delete_database_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_database_errors(), tuple()}.
delete_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatabase">>, Input, Options).

%% @doc Deletes a given Timestream table.
%%
%% This is an irreversible operation. After a
%% Timestream database table is deleted, the time-series data stored in the
%% table
%% cannot be recovered.
%%
%% Due to the nature of distributed retries, the operation can return either
%% success or
%% a ResourceNotFoundException. Clients should consider them equivalent.
%%
%% See code
%% sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-table.html
%% for details.
-spec delete_table(aws_client:aws_client(), delete_table_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table(Client, Input, []).

-spec delete_table(aws_client:aws_client(), delete_table_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_table_errors(), tuple()}.
delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTable">>, Input, Options).

%% @doc Returns information about the batch load task, including
%% configurations, mappings,
%% progress, and other details.
%%
%% Service quotas apply:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html.
%% See
%% code
%% sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-batch-load.html
%% for details.
-spec describe_batch_load_task(aws_client:aws_client(), describe_batch_load_task_request()) ->
    {ok, describe_batch_load_task_response(), tuple()} |
    {error, any()} |
    {error, describe_batch_load_task_errors(), tuple()}.
describe_batch_load_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_batch_load_task(Client, Input, []).

-spec describe_batch_load_task(aws_client:aws_client(), describe_batch_load_task_request(), proplists:proplist()) ->
    {ok, describe_batch_load_task_response(), tuple()} |
    {error, any()} |
    {error, describe_batch_load_task_errors(), tuple()}.
describe_batch_load_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBatchLoadTask">>, Input, Options).

%% @doc Returns information about the database, including the database name,
%% time that the
%% database was created, and the total number of tables found within the
%% database.
%%
%% Service
%% quotas apply:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html.
%% See code sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-db.html
%% for details.
-spec describe_database(aws_client:aws_client(), describe_database_request()) ->
    {ok, describe_database_response(), tuple()} |
    {error, any()} |
    {error, describe_database_errors(), tuple()}.
describe_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_database(Client, Input, []).

-spec describe_database(aws_client:aws_client(), describe_database_request(), proplists:proplist()) ->
    {ok, describe_database_response(), tuple()} |
    {error, any()} |
    {error, describe_database_errors(), tuple()}.
describe_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatabase">>, Input, Options).

%% @doc Returns a list of available endpoints to make Timestream API calls
%% against.
%%
%% This API operation is available through both the Write and Query APIs.
%%
%% Because the Timestream SDKs are designed to transparently work with the
%% service’s architecture, including the management and mapping of the
%% service endpoints,
%% we don't recommend that you use this API operation unless:
%%
%% You are using VPC endpoints (Amazon Web Services PrivateLink) with
%% Timestream:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints
%%
%% Your application uses a programming language that does not yet have SDK
%% support
%%
%% You require better control over the client-side implementation
%%
%% For detailed information on how and when to use and implement
%% DescribeEndpoints, see
%% The
%% Endpoint Discovery Pattern:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery.
-spec describe_endpoints(aws_client:aws_client(), describe_endpoints_request()) ->
    {ok, describe_endpoints_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoints_errors(), tuple()}.
describe_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoints(Client, Input, []).

-spec describe_endpoints(aws_client:aws_client(), describe_endpoints_request(), proplists:proplist()) ->
    {ok, describe_endpoints_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoints_errors(), tuple()}.
describe_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoints">>, Input, Options).

%% @doc Returns information about the table, including the table name,
%% database name, retention
%% duration of the memory store and the magnetic store.
%%
%% Service quotas apply:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html.
%% See
%% code
%% sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-table.html
%% for details.
-spec describe_table(aws_client:aws_client(), describe_table_request()) ->
    {ok, describe_table_response(), tuple()} |
    {error, any()} |
    {error, describe_table_errors(), tuple()}.
describe_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table(Client, Input, []).

-spec describe_table(aws_client:aws_client(), describe_table_request(), proplists:proplist()) ->
    {ok, describe_table_response(), tuple()} |
    {error, any()} |
    {error, describe_table_errors(), tuple()}.
describe_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTable">>, Input, Options).

%% @doc Provides a list of batch load tasks, along with the name, status,
%% when the task is
%% resumable until, and other details.
%%
%% See code
%% sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-batch-load-tasks.html
%% for details.
-spec list_batch_load_tasks(aws_client:aws_client(), list_batch_load_tasks_request()) ->
    {ok, list_batch_load_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_batch_load_tasks_errors(), tuple()}.
list_batch_load_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_batch_load_tasks(Client, Input, []).

-spec list_batch_load_tasks(aws_client:aws_client(), list_batch_load_tasks_request(), proplists:proplist()) ->
    {ok, list_batch_load_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_batch_load_tasks_errors(), tuple()}.
list_batch_load_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBatchLoadTasks">>, Input, Options).

%% @doc Returns a list of your Timestream databases.
%%
%% Service quotas apply:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html.
%% See
%% code sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-db.html
%% for
%% details.
-spec list_databases(aws_client:aws_client(), list_databases_request()) ->
    {ok, list_databases_response(), tuple()} |
    {error, any()} |
    {error, list_databases_errors(), tuple()}.
list_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_databases(Client, Input, []).

-spec list_databases(aws_client:aws_client(), list_databases_request(), proplists:proplist()) ->
    {ok, list_databases_response(), tuple()} |
    {error, any()} |
    {error, list_databases_errors(), tuple()}.
list_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatabases">>, Input, Options).

%% @doc Provides a list of tables, along with the name, status, and retention
%% properties of each
%% table.
%%
%% See code sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-table.html
%% for details.
-spec list_tables(aws_client:aws_client(), list_tables_request()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tables(Client, Input, []).

-spec list_tables(aws_client:aws_client(), list_tables_request(), proplists:proplist()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTables">>, Input, Options).

%% @doc Lists all tags on a Timestream resource.
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
-spec resume_batch_load_task(aws_client:aws_client(), resume_batch_load_task_request()) ->
    {ok, resume_batch_load_task_response(), tuple()} |
    {error, any()} |
    {error, resume_batch_load_task_errors(), tuple()}.
resume_batch_load_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_batch_load_task(Client, Input, []).

-spec resume_batch_load_task(aws_client:aws_client(), resume_batch_load_task_request(), proplists:proplist()) ->
    {ok, resume_batch_load_task_response(), tuple()} |
    {error, any()} |
    {error, resume_batch_load_task_errors(), tuple()}.
resume_batch_load_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeBatchLoadTask">>, Input, Options).

%% @doc Associates a set of tags with a Timestream resource.
%%
%% You can then activate
%% these user-defined tags so that they appear on the Billing and Cost
%% Management console for
%% cost allocation tracking.
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

%% @doc Removes the association of tags from a Timestream resource.
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

%% @doc Modifies the KMS key for an existing database.
%%
%% While updating the
%% database, you must specify the database name and the identifier of the new
%% KMS key to be used (`KmsKeyId'). If there are any concurrent
%% `UpdateDatabase' requests, first writer wins.
%%
%% See code sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-db.html
%% for details.
-spec update_database(aws_client:aws_client(), update_database_request()) ->
    {ok, update_database_response(), tuple()} |
    {error, any()} |
    {error, update_database_errors(), tuple()}.
update_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_database(Client, Input, []).

-spec update_database(aws_client:aws_client(), update_database_request(), proplists:proplist()) ->
    {ok, update_database_response(), tuple()} |
    {error, any()} |
    {error, update_database_errors(), tuple()}.
update_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDatabase">>, Input, Options).

%% @doc Modifies the retention duration of the memory store and magnetic
%% store for your Timestream table.
%%
%% Note that the change in retention duration takes effect immediately.
%% For example, if the retention period of the memory store was initially set
%% to 2 hours and
%% then changed to 24 hours, the memory store will be capable of holding 24
%% hours of data, but
%% will be populated with 24 hours of data 22 hours after this change was
%% made. Timestream does not retrieve data from the magnetic store to
%% populate the memory store.
%%
%% See code
%% sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-table.html
%% for details.
-spec update_table(aws_client:aws_client(), update_table_request()) ->
    {ok, update_table_response(), tuple()} |
    {error, any()} |
    {error, update_table_errors(), tuple()}.
update_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table(Client, Input, []).

-spec update_table(aws_client:aws_client(), update_table_request(), proplists:proplist()) ->
    {ok, update_table_response(), tuple()} |
    {error, any()} |
    {error, update_table_errors(), tuple()}.
update_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTable">>, Input, Options).

%% @doc Enables you to write your time-series data into Timestream.
%%
%% You can specify a
%% single data point or a batch of data points to be inserted into the
%% system. Timestream offers you a flexible schema that auto detects the
%% column names and data
%% types for your Timestream tables based on the dimension names and data
%% types of
%% the data points you specify when invoking writes into the database.
%%
%% Timestream supports eventual consistency read semantics. This means that
%% when
%% you query data immediately after writing a batch of data into Timestream,
%% the
%% query results might not reflect the results of a recently completed write
%% operation. The
%% results may also include some stale data. If you repeat the query request
%% after a short
%% time, the results should return the latest data. Service quotas apply:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html.
%%
%% See code sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.write.html
%% for
%% details.
%%
%% Upserts
%%
%% You can use the `Version' parameter in a `WriteRecords' request to
%% update data points. Timestream tracks a version number with each record.
%% `Version' defaults to `1' when it's not specified for the
%% record
%% in the request. Timestream updates an existing record’s measure value
%% along with
%% its `Version' when it receives a write request with a higher
%% `Version' number for that record. When it receives an update request
%% where
%% the measure value is the same as that of the existing record, Timestream
%% still
%% updates `Version', if it is greater than the existing value of
%% `Version'. You can update a data point as many times as desired, as
%% long as
%% the value of `Version' continuously increases.
%%
%% For example, suppose you write a new record without indicating
%% `Version' in
%% the request. Timestream stores this record, and set `Version' to
%% `1'. Now, suppose you try to update this record with a
%% `WriteRecords' request of the same record with a different measure
%% value but,
%% like before, do not provide `Version'. In this case, Timestream will
%% reject this update with a `RejectedRecordsException' since the updated
%% record’s
%% version is not greater than the existing value of Version.
%%
%% However, if you were to resend the update request with `Version' set
%% to
%% `2', Timestream would then succeed in updating the record’s value,
%% and the `Version' would be set to `2'. Next, suppose you sent a
%% `WriteRecords' request with this same record and an identical measure
%% value,
%% but with `Version' set to `3'. In this case, Timestream
%% would only update `Version' to `3'. Any further updates would need
%% to
%% send a version number greater than `3', or the update requests would
%% receive a
%% `RejectedRecordsException'.
-spec write_records(aws_client:aws_client(), write_records_request()) ->
    {ok, write_records_response(), tuple()} |
    {error, any()} |
    {error, write_records_errors(), tuple()}.
write_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    write_records(Client, Input, []).

-spec write_records(aws_client:aws_client(), write_records_request(), proplists:proplist()) ->
    {ok, write_records_response(), tuple()} |
    {error, any()} |
    {error, write_records_errors(), tuple()}.
write_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"WriteRecords">>, Input, Options).

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
    Client1 = Client#{service => <<"timestream">>},
    Host = build_host(<<"ingest.timestream">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"Timestream_20181101.", Action/binary>>}
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
