%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Timestream Query
-module(aws_timestream_query).

-export([cancel_query/2,
         cancel_query/3,
         create_scheduled_query/2,
         create_scheduled_query/3,
         delete_scheduled_query/2,
         delete_scheduled_query/3,
         describe_account_settings/2,
         describe_account_settings/3,
         describe_endpoints/2,
         describe_endpoints/3,
         describe_scheduled_query/2,
         describe_scheduled_query/3,
         execute_scheduled_query/2,
         execute_scheduled_query/3,
         list_scheduled_queries/2,
         list_scheduled_queries/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         prepare_query/2,
         prepare_query/3,
         query/2,
         query/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_account_settings/2,
         update_account_settings/3,
         update_scheduled_query/2,
         update_scheduled_query/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_account_settings_request() :: #{

%% }
-type describe_account_settings_request() :: #{binary() => any()}.

%% Example:
%% scheduled_query_description() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ErrorReportConfiguration">> => error_report_configuration(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LastRunSummary">> => scheduled_query_run_summary(),
%%   <<"Name">> => string(),
%%   <<"NextInvocationTime">> => non_neg_integer(),
%%   <<"NotificationConfiguration">> => notification_configuration(),
%%   <<"PreviousInvocationTime">> => non_neg_integer(),
%%   <<"QueryString">> => string(),
%%   <<"RecentlyFailedRuns">> => list(scheduled_query_run_summary()),
%%   <<"ScheduleConfiguration">> => schedule_configuration(),
%%   <<"ScheduledQueryExecutionRoleArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"TargetConfiguration">> => target_configuration()
%% }
-type scheduled_query_description() :: #{binary() => any()}.

%% Example:
%% query_insights() :: #{
%%   <<"Mode">> => list(any())
%% }
-type query_insights() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_scheduled_query_request() :: #{
%%   <<"ScheduledQueryArn">> := string()
%% }
-type delete_scheduled_query_request() :: #{binary() => any()}.

%% Example:
%% query_compute_request() :: #{
%%   <<"ComputeMode">> => list(any()),
%%   <<"ProvisionedCapacity">> => provisioned_capacity_request()
%% }
-type query_compute_request() :: #{binary() => any()}.

%% Example:
%% query_status() :: #{
%%   <<"CumulativeBytesMetered">> => float(),
%%   <<"CumulativeBytesScanned">> => float(),
%%   <<"ProgressPercentage">> => float()
%% }
-type query_status() :: #{binary() => any()}.

%% Example:
%% select_column() :: #{
%%   <<"Aliased">> => boolean(),
%%   <<"DatabaseName">> => string(),
%%   <<"Name">> => string(),
%%   <<"TableName">> => string(),
%%   <<"Type">> => type()
%% }
-type select_column() :: #{binary() => any()}.

%% Example:
%% create_scheduled_query_response() :: #{
%%   <<"Arn">> => string()
%% }
-type create_scheduled_query_response() :: #{binary() => any()}.

%% Example:
%% multi_measure_attribute_mapping() :: #{
%%   <<"MeasureValueType">> => list(any()),
%%   <<"SourceColumn">> => string(),
%%   <<"TargetMultiMeasureAttributeName">> => string()
%% }
-type multi_measure_attribute_mapping() :: #{binary() => any()}.

%% Example:
%% update_account_settings_response() :: #{
%%   <<"MaxQueryTCU">> => integer(),
%%   <<"QueryCompute">> => query_compute_response(),
%%   <<"QueryPricingModel">> => list(any())
%% }
-type update_account_settings_response() :: #{binary() => any()}.

%% Example:
%% parameter_mapping() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => type()
%% }
-type parameter_mapping() :: #{binary() => any()}.

%% Example:
%% invalid_endpoint_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_endpoint_exception() :: #{binary() => any()}.

%% Example:
%% datum() :: #{
%%   <<"ArrayValue">> => list(datum()),
%%   <<"NullValue">> => boolean(),
%%   <<"RowValue">> => row(),
%%   <<"ScalarValue">> => string(),
%%   <<"TimeSeriesValue">> => list(time_series_data_point())
%% }
-type datum() :: #{binary() => any()}.

%% Example:
%% describe_endpoints_response() :: #{
%%   <<"Endpoints">> => list(endpoint())
%% }
-type describe_endpoints_response() :: #{binary() => any()}.

%% Example:
%% error_report_location() :: #{
%%   <<"S3ReportLocation">> => s3_report_location()
%% }
-type error_report_location() :: #{binary() => any()}.

%% Example:
%% scheduled_query_run_summary() :: #{
%%   <<"ErrorReportLocation">> => error_report_location(),
%%   <<"ExecutionStats">> => execution_stats(),
%%   <<"FailureReason">> => string(),
%%   <<"InvocationTime">> => non_neg_integer(),
%%   <<"QueryInsightsResponse">> => scheduled_query_insights_response(),
%%   <<"RunStatus">> => list(any()),
%%   <<"TriggerTime">> => non_neg_integer()
%% }
-type scheduled_query_run_summary() :: #{binary() => any()}.

%% Example:
%% list_scheduled_queries_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_scheduled_queries_request() :: #{binary() => any()}.

%% Example:
%% create_scheduled_query_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ErrorReportConfiguration">> := error_report_configuration(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> := string(),
%%   <<"NotificationConfiguration">> := notification_configuration(),
%%   <<"QueryString">> := string(),
%%   <<"ScheduleConfiguration">> := schedule_configuration(),
%%   <<"ScheduledQueryExecutionRoleArn">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetConfiguration">> => target_configuration()
%% }
-type create_scheduled_query_request() :: #{binary() => any()}.

%% Example:
%% describe_scheduled_query_response() :: #{
%%   <<"ScheduledQuery">> => scheduled_query_description()
%% }
-type describe_scheduled_query_response() :: #{binary() => any()}.

%% Example:
%% cancel_query_response() :: #{
%%   <<"CancellationMessage">> => string()
%% }
-type cancel_query_response() :: #{binary() => any()}.

%% Example:
%% scheduled_query_insights_response() :: #{
%%   <<"OutputBytes">> => float(),
%%   <<"OutputRows">> => float(),
%%   <<"QuerySpatialCoverage">> => query_spatial_coverage(),
%%   <<"QueryTableCount">> => float(),
%%   <<"QueryTemporalRange">> => query_temporal_range()
%% }
-type scheduled_query_insights_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% query_temporal_range_max() :: #{
%%   <<"TableArn">> => string(),
%%   <<"Value">> => float()
%% }
-type query_temporal_range_max() :: #{binary() => any()}.

%% Example:
%% scheduled_query() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ErrorReportConfiguration">> => error_report_configuration(),
%%   <<"LastRunStatus">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"NextInvocationTime">> => non_neg_integer(),
%%   <<"PreviousInvocationTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"TargetDestination">> => target_destination()
%% }
-type scheduled_query() :: #{binary() => any()}.

%% Example:
%% account_settings_notification_configuration() :: #{
%%   <<"RoleArn">> => string(),
%%   <<"SnsConfiguration">> => sns_configuration()
%% }
-type account_settings_notification_configuration() :: #{binary() => any()}.

%% Example:
%% describe_endpoints_request() :: #{

%% }
-type describe_endpoints_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ScheduledQueryArn">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% cancel_query_request() :: #{
%%   <<"QueryId">> := string()
%% }
-type cancel_query_request() :: #{binary() => any()}.

%% Example:
%% last_update() :: #{
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"TargetQueryTCU">> => integer()
%% }
-type last_update() :: #{binary() => any()}.

%% Example:
%% query_response() :: #{
%%   <<"ColumnInfo">> => list(column_info()),
%%   <<"NextToken">> => string(),
%%   <<"QueryId">> => string(),
%%   <<"QueryInsightsResponse">> => query_insights_response(),
%%   <<"QueryStatus">> => query_status(),
%%   <<"Rows">> => list(row())
%% }
-type query_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% row() :: #{
%%   <<"Data">> => list(datum())
%% }
-type row() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% time_series_data_point() :: #{
%%   <<"Time">> => string(),
%%   <<"Value">> => datum()
%% }
-type time_series_data_point() :: #{binary() => any()}.

%% Example:
%% query_spatial_coverage_max() :: #{
%%   <<"PartitionKey">> => list(string()),
%%   <<"TableArn">> => string(),
%%   <<"Value">> => float()
%% }
-type query_spatial_coverage_max() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% prepare_query_request() :: #{
%%   <<"QueryString">> := string(),
%%   <<"ValidateOnly">> => boolean()
%% }
-type prepare_query_request() :: #{binary() => any()}.

%% Example:
%% update_account_settings_request() :: #{
%%   <<"MaxQueryTCU">> => integer(),
%%   <<"QueryCompute">> => query_compute_request(),
%%   <<"QueryPricingModel">> => list(any())
%% }
-type update_account_settings_request() :: #{binary() => any()}.

%% Example:
%% execute_scheduled_query_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"InvocationTime">> := non_neg_integer(),
%%   <<"QueryInsights">> => scheduled_query_insights(),
%%   <<"ScheduledQueryArn">> := string()
%% }
-type execute_scheduled_query_request() :: #{binary() => any()}.

%% Example:
%% timestream_configuration() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"DimensionMappings">> => list(dimension_mapping()),
%%   <<"MeasureNameColumn">> => string(),
%%   <<"MixedMeasureMappings">> => list(mixed_measure_mapping()),
%%   <<"MultiMeasureMappings">> => multi_measure_mappings(),
%%   <<"TableName">> => string(),
%%   <<"TimeColumn">> => string()
%% }
-type timestream_configuration() :: #{binary() => any()}.

%% Example:
%% target_destination() :: #{
%%   <<"TimestreamDestination">> => timestream_destination()
%% }
-type target_destination() :: #{binary() => any()}.

%% Example:
%% notification_configuration() :: #{
%%   <<"SnsConfiguration">> => sns_configuration()
%% }
-type notification_configuration() :: #{binary() => any()}.

%% Example:
%% error_report_configuration() :: #{
%%   <<"S3Configuration">> => s3_configuration()
%% }
-type error_report_configuration() :: #{binary() => any()}.

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
%% query_temporal_range() :: #{
%%   <<"Max">> => query_temporal_range_max()
%% }
-type query_temporal_range() :: #{binary() => any()}.

%% Example:
%% update_scheduled_query_request() :: #{
%%   <<"ScheduledQueryArn">> := string(),
%%   <<"State">> := list(any())
%% }
-type update_scheduled_query_request() :: #{binary() => any()}.

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
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% timestream_destination() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"TableName">> => string()
%% }
-type timestream_destination() :: #{binary() => any()}.

%% Example:
%% list_scheduled_queries_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScheduledQueries">> => list(scheduled_query())
%% }
-type list_scheduled_queries_response() :: #{binary() => any()}.

%% Example:
%% describe_scheduled_query_request() :: #{
%%   <<"ScheduledQueryArn">> := string()
%% }
-type describe_scheduled_query_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% schedule_configuration() :: #{
%%   <<"ScheduleExpression">> => string()
%% }
-type schedule_configuration() :: #{binary() => any()}.

%% Example:
%% query_insights_response() :: #{
%%   <<"OutputBytes">> => float(),
%%   <<"OutputRows">> => float(),
%%   <<"QuerySpatialCoverage">> => query_spatial_coverage(),
%%   <<"QueryTableCount">> => float(),
%%   <<"QueryTemporalRange">> => query_temporal_range(),
%%   <<"UnloadPartitionCount">> => float(),
%%   <<"UnloadWrittenBytes">> => float(),
%%   <<"UnloadWrittenRows">> => float()
%% }
-type query_insights_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% describe_account_settings_response() :: #{
%%   <<"MaxQueryTCU">> => integer(),
%%   <<"QueryCompute">> => query_compute_response(),
%%   <<"QueryPricingModel">> => list(any())
%% }
-type describe_account_settings_response() :: #{binary() => any()}.

%% Example:
%% type() :: #{
%%   <<"ArrayColumnInfo">> => column_info(),
%%   <<"RowColumnInfo">> => list(column_info()),
%%   <<"ScalarType">> => list(any()),
%%   <<"TimeSeriesMeasureValueColumnInfo">> => column_info()
%% }
-type type() :: #{binary() => any()}.

%% Example:
%% s3_configuration() :: #{
%%   <<"BucketName">> => string(),
%%   <<"EncryptionOption">> => list(any()),
%%   <<"ObjectKeyPrefix">> => string()
%% }
-type s3_configuration() :: #{binary() => any()}.

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
%% prepare_query_response() :: #{
%%   <<"Columns">> => list(select_column()),
%%   <<"Parameters">> => list(parameter_mapping()),
%%   <<"QueryString">> => string()
%% }
-type prepare_query_response() :: #{binary() => any()}.

%% Example:
%% target_configuration() :: #{
%%   <<"TimestreamConfiguration">> => timestream_configuration()
%% }
-type target_configuration() :: #{binary() => any()}.

%% Example:
%% query_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"MaxRows">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QueryInsights">> => query_insights(),
%%   <<"QueryString">> := string()
%% }
-type query_request() :: #{binary() => any()}.

%% Example:
%% query_compute_response() :: #{
%%   <<"ComputeMode">> => list(any()),
%%   <<"ProvisionedCapacity">> => provisioned_capacity_response()
%% }
-type query_compute_response() :: #{binary() => any()}.

%% Example:
%% query_execution_exception() :: #{
%%   <<"Message">> => string()
%% }
-type query_execution_exception() :: #{binary() => any()}.

%% Example:
%% column_info() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => type()
%% }
-type column_info() :: #{binary() => any()}.

%% Example:
%% provisioned_capacity_request() :: #{
%%   <<"NotificationConfiguration">> => account_settings_notification_configuration(),
%%   <<"TargetQueryTCU">> => integer()
%% }
-type provisioned_capacity_request() :: #{binary() => any()}.

%% Example:
%% query_spatial_coverage() :: #{
%%   <<"Max">> => query_spatial_coverage_max()
%% }
-type query_spatial_coverage() :: #{binary() => any()}.

%% Example:
%% s3_report_location() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ObjectKey">> => string()
%% }
-type s3_report_location() :: #{binary() => any()}.

%% Example:
%% sns_configuration() :: #{
%%   <<"TopicArn">> => string()
%% }
-type sns_configuration() :: #{binary() => any()}.

%% Example:
%% dimension_mapping() :: #{
%%   <<"DimensionValueType">> => list(any()),
%%   <<"Name">> => string()
%% }
-type dimension_mapping() :: #{binary() => any()}.

%% Example:
%% scheduled_query_insights() :: #{
%%   <<"Mode">> => list(any())
%% }
-type scheduled_query_insights() :: #{binary() => any()}.

%% Example:
%% execution_stats() :: #{
%%   <<"BytesMetered">> => float(),
%%   <<"CumulativeBytesScanned">> => float(),
%%   <<"DataWrites">> => float(),
%%   <<"ExecutionTimeInMillis">> => float(),
%%   <<"QueryResultRows">> => float(),
%%   <<"RecordsIngested">> => float()
%% }
-type execution_stats() :: #{binary() => any()}.

%% Example:
%% provisioned_capacity_response() :: #{
%%   <<"ActiveQueryTCU">> => integer(),
%%   <<"LastUpdate">> => last_update(),
%%   <<"NotificationConfiguration">> => account_settings_notification_configuration()
%% }
-type provisioned_capacity_response() :: #{binary() => any()}.

-type cancel_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_endpoint_exception().

-type create_scheduled_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    invalid_endpoint_exception().

-type delete_scheduled_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type describe_account_settings_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_endpoint_exception().

-type describe_endpoints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type describe_scheduled_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type execute_scheduled_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type list_scheduled_queries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_endpoint_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type prepare_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_endpoint_exception().

-type query_errors() ::
    query_execution_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
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
    resource_not_found_exception() | 
    invalid_endpoint_exception().

-type update_account_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_endpoint_exception().

-type update_scheduled_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_endpoint_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a query that has been issued.
%%
%% Cancellation is provided only if the query has
%% not completed running before the cancellation request was issued. Because
%% cancellation
%% is an idempotent operation, subsequent cancellation requests will return a
%% `CancellationMessage', indicating that the query has already been
%% canceled. See code
%% sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.cancel-query.html
%% for details.
-spec cancel_query(aws_client:aws_client(), cancel_query_request()) ->
    {ok, cancel_query_response(), tuple()} |
    {error, any()} |
    {error, cancel_query_errors(), tuple()}.
cancel_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_query(Client, Input, []).

-spec cancel_query(aws_client:aws_client(), cancel_query_request(), proplists:proplist()) ->
    {ok, cancel_query_response(), tuple()} |
    {error, any()} |
    {error, cancel_query_errors(), tuple()}.
cancel_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelQuery">>, Input, Options).

%% @doc Create a scheduled query that will be run on your behalf at the
%% configured schedule.
%%
%% Timestream assumes the execution role provided as part of the
%% `ScheduledQueryExecutionRoleArn' parameter to run the query. You can
%% use
%% the `NotificationConfiguration' parameter to configure notification
%% for your
%% scheduled query operations.
-spec create_scheduled_query(aws_client:aws_client(), create_scheduled_query_request()) ->
    {ok, create_scheduled_query_response(), tuple()} |
    {error, any()} |
    {error, create_scheduled_query_errors(), tuple()}.
create_scheduled_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_scheduled_query(Client, Input, []).

-spec create_scheduled_query(aws_client:aws_client(), create_scheduled_query_request(), proplists:proplist()) ->
    {ok, create_scheduled_query_response(), tuple()} |
    {error, any()} |
    {error, create_scheduled_query_errors(), tuple()}.
create_scheduled_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScheduledQuery">>, Input, Options).

%% @doc Deletes a given scheduled query.
%%
%% This is an irreversible operation.
-spec delete_scheduled_query(aws_client:aws_client(), delete_scheduled_query_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_scheduled_query_errors(), tuple()}.
delete_scheduled_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_query(Client, Input, []).

-spec delete_scheduled_query(aws_client:aws_client(), delete_scheduled_query_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_scheduled_query_errors(), tuple()}.
delete_scheduled_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledQuery">>, Input, Options).

%% @doc Describes the settings for your account that include the query
%% pricing model and the configured maximum TCUs the service can use for your
%% query workload.
%%
%% You're charged only for the duration of compute units used for your
%% workloads.
-spec describe_account_settings(aws_client:aws_client(), describe_account_settings_request()) ->
    {ok, describe_account_settings_response(), tuple()} |
    {error, any()} |
    {error, describe_account_settings_errors(), tuple()}.
describe_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_settings(Client, Input, []).

-spec describe_account_settings(aws_client:aws_client(), describe_account_settings_request(), proplists:proplist()) ->
    {ok, describe_account_settings_response(), tuple()} |
    {error, any()} |
    {error, describe_account_settings_errors(), tuple()}.
describe_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountSettings">>, Input, Options).

%% @doc DescribeEndpoints returns a list of available endpoints to make
%% Timestream
%% API calls against.
%%
%% This API is available through both Write and Query.
%%
%% Because the Timestream SDKs are designed to transparently work with the
%% service’s architecture, including the management and mapping of the
%% service endpoints,
%% it is not recommended that you use this API unless:
%%
%% You are using VPC endpoints (Amazon Web Services PrivateLink) with
%% Timestream
%% :
%% https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints
%%
%% Your application uses a programming language that does not yet have SDK
%% support
%%
%% You require better control over the client-side implementation
%%
%% For detailed information on how and when to use and implement
%% DescribeEndpoints, see
%% The Endpoint Discovery Pattern:
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

%% @doc Provides detailed information about a scheduled query.
-spec describe_scheduled_query(aws_client:aws_client(), describe_scheduled_query_request()) ->
    {ok, describe_scheduled_query_response(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_query_errors(), tuple()}.
describe_scheduled_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_query(Client, Input, []).

-spec describe_scheduled_query(aws_client:aws_client(), describe_scheduled_query_request(), proplists:proplist()) ->
    {ok, describe_scheduled_query_response(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_query_errors(), tuple()}.
describe_scheduled_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledQuery">>, Input, Options).

%% @doc You can use this API to run a scheduled query manually.
%%
%% If you enabled `QueryInsights', this API also returns insights and
%% metrics related to the query that you executed as part of an Amazon SNS
%% notification. `QueryInsights' helps with performance tuning of your
%% query. For more information about `QueryInsights', see Using query
%% insights to optimize queries in Amazon Timestream:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/using-query-insights.html.
-spec execute_scheduled_query(aws_client:aws_client(), execute_scheduled_query_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, execute_scheduled_query_errors(), tuple()}.
execute_scheduled_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_scheduled_query(Client, Input, []).

-spec execute_scheduled_query(aws_client:aws_client(), execute_scheduled_query_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, execute_scheduled_query_errors(), tuple()}.
execute_scheduled_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteScheduledQuery">>, Input, Options).

%% @doc Gets a list of all scheduled queries in the caller's Amazon
%% account and Region.
%%
%% `ListScheduledQueries' is eventually consistent.
-spec list_scheduled_queries(aws_client:aws_client(), list_scheduled_queries_request()) ->
    {ok, list_scheduled_queries_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_queries_errors(), tuple()}.
list_scheduled_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_scheduled_queries(Client, Input, []).

-spec list_scheduled_queries(aws_client:aws_client(), list_scheduled_queries_request(), proplists:proplist()) ->
    {ok, list_scheduled_queries_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_queries_errors(), tuple()}.
list_scheduled_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListScheduledQueries">>, Input, Options).

%% @doc List all tags on a Timestream query resource.
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

%% @doc A synchronous operation that allows you to submit a query with
%% parameters to be stored
%% by Timestream for later running.
%%
%% Timestream only supports using this operation with
%% `ValidateOnly' set to `true'.
-spec prepare_query(aws_client:aws_client(), prepare_query_request()) ->
    {ok, prepare_query_response(), tuple()} |
    {error, any()} |
    {error, prepare_query_errors(), tuple()}.
prepare_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    prepare_query(Client, Input, []).

-spec prepare_query(aws_client:aws_client(), prepare_query_request(), proplists:proplist()) ->
    {ok, prepare_query_response(), tuple()} |
    {error, any()} |
    {error, prepare_query_errors(), tuple()}.
prepare_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PrepareQuery">>, Input, Options).

%% @doc
%% `Query' is a synchronous operation that enables you to run a query
%% against
%% your Amazon Timestream data.
%%
%% If you enabled `QueryInsights', this API also returns insights and
%% metrics related to the query that you executed. `QueryInsights' helps
%% with performance tuning of your query. For more information about
%% `QueryInsights', see Using query insights to optimize queries in
%% Amazon Timestream:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/using-query-insights.html.
%%
%% The maximum number of `Query' API requests you're allowed to make
%% with `QueryInsights' enabled is 1 query per second (QPS). If you
%% exceed this query rate, it might result in throttling.
%%
%% `Query' will time out after 60 seconds.
%% You must update the default timeout in the SDK to support a timeout of 60
%% seconds. See
%% the code
%% sample:
%% https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.run-query.html
%% for details.
%%
%% Your query request will fail in the following cases:
%%
%% If you submit a `Query' request with the same client token outside
%% of the 5-minute idempotency window.
%%
%% If you submit a `Query' request with the same client token, but
%% change other parameters, within the 5-minute idempotency window.
%%
%% If the size of the row (including the query metadata) exceeds 1 MB, then
%% the
%% query will fail with the following error message:
%%
%% ```
%% Query aborted as max page response size has been exceeded by the output
%% result row'''
%%
%% If the IAM principal of the query initiator and the result reader are not
%% the
%% same and/or the query initiator and the result reader do not have the same
%% query
%% string in the query requests, the query will fail with an
%% ```
%% Invalid pagination token''' error.
-spec query(aws_client:aws_client(), query_request()) ->
    {ok, query_response(), tuple()} |
    {error, any()} |
    {error, query_errors(), tuple()}.
query(Client, Input)
  when is_map(Client), is_map(Input) ->
    query(Client, Input, []).

-spec query(aws_client:aws_client(), query_request(), proplists:proplist()) ->
    {ok, query_response(), tuple()} |
    {error, any()} |
    {error, query_errors(), tuple()}.
query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Query">>, Input, Options).

%% @doc Associate a set of tags with a Timestream resource.
%%
%% You can then activate these
%% user-defined tags so that they appear on the Billing and Cost Management
%% console for
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

%% @doc Removes the association of tags from a Timestream query resource.
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

%% @doc Transitions your account to use TCUs for query pricing and modifies
%% the maximum query compute units that you've configured.
%%
%% If you reduce the value of `MaxQueryTCU' to a desired configuration,
%% the new value can take up to 24 hours to be effective.
%%
%% After you've transitioned your account to use TCUs for query pricing,
%% you can't transition to using bytes scanned for query pricing.
-spec update_account_settings(aws_client:aws_client(), update_account_settings_request()) ->
    {ok, update_account_settings_response(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_account_settings(Client, Input, []).

-spec update_account_settings(aws_client:aws_client(), update_account_settings_request(), proplists:proplist()) ->
    {ok, update_account_settings_response(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccountSettings">>, Input, Options).

%% @doc Update a scheduled query.
-spec update_scheduled_query(aws_client:aws_client(), update_scheduled_query_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_scheduled_query_errors(), tuple()}.
update_scheduled_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_scheduled_query(Client, Input, []).

-spec update_scheduled_query(aws_client:aws_client(), update_scheduled_query_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_scheduled_query_errors(), tuple()}.
update_scheduled_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateScheduledQuery">>, Input, Options).

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
    Host = build_host(<<"query.timestream">>, Client1),
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
