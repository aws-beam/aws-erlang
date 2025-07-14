%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Lookout for Metrics API Reference.
%%
%% For an introduction to the service
%% with tutorials for getting started, visit Amazon
%% Lookout for Metrics Developer Guide:
%% https://docs.aws.amazon.com/lookoutmetrics/latest/dev.
-module(aws_lookoutmetrics).

-export([activate_anomaly_detector/2,
         activate_anomaly_detector/3,
         back_test_anomaly_detector/2,
         back_test_anomaly_detector/3,
         create_alert/2,
         create_alert/3,
         create_anomaly_detector/2,
         create_anomaly_detector/3,
         create_metric_set/2,
         create_metric_set/3,
         deactivate_anomaly_detector/2,
         deactivate_anomaly_detector/3,
         delete_alert/2,
         delete_alert/3,
         delete_anomaly_detector/2,
         delete_anomaly_detector/3,
         describe_alert/2,
         describe_alert/3,
         describe_anomaly_detection_executions/2,
         describe_anomaly_detection_executions/3,
         describe_anomaly_detector/2,
         describe_anomaly_detector/3,
         describe_metric_set/2,
         describe_metric_set/3,
         detect_metric_set_config/2,
         detect_metric_set_config/3,
         get_anomaly_group/2,
         get_anomaly_group/3,
         get_data_quality_metrics/2,
         get_data_quality_metrics/3,
         get_feedback/2,
         get_feedback/3,
         get_sample_data/2,
         get_sample_data/3,
         list_alerts/2,
         list_alerts/3,
         list_anomaly_detectors/2,
         list_anomaly_detectors/3,
         list_anomaly_group_related_metrics/2,
         list_anomaly_group_related_metrics/3,
         list_anomaly_group_summaries/2,
         list_anomaly_group_summaries/3,
         list_anomaly_group_time_series/2,
         list_anomaly_group_time_series/3,
         list_metric_sets/2,
         list_metric_sets/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_feedback/2,
         put_feedback/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_alert/2,
         update_alert/3,
         update_anomaly_detector/2,
         update_anomaly_detector/3,
         update_metric_set/2,
         update_metric_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_data_quality_metrics_response() :: #{
%%   <<"AnomalyDetectorDataQualityMetricList">> => list(anomaly_detector_data_quality_metric())
%% }
-type get_data_quality_metrics_response() :: #{binary() => any()}.


%% Example:
%% anomaly_detector_config_summary() :: #{
%%   <<"AnomalyDetectorFrequency">> => list(any())
%% }
-type anomaly_detector_config_summary() :: #{binary() => any()}.


%% Example:
%% detected_csv_format_descriptor() :: #{
%%   <<"Charset">> => detected_field(),
%%   <<"ContainsHeader">> => detected_field(),
%%   <<"Delimiter">> => detected_field(),
%%   <<"FileCompression">> => detected_field(),
%%   <<"HeaderList">> => detected_field(),
%%   <<"QuoteSymbol">> => detected_field()
%% }
-type detected_csv_format_descriptor() :: #{binary() => any()}.

%% Example:
%% activate_anomaly_detector_response() :: #{}
-type activate_anomaly_detector_response() :: #{}.


%% Example:
%% put_feedback_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"AnomalyGroupTimeSeriesFeedback">> := anomaly_group_time_series_feedback()
%% }
-type put_feedback_request() :: #{binary() => any()}.


%% Example:
%% inter_metric_impact_details() :: #{
%%   <<"AnomalyGroupId">> => string(),
%%   <<"ContributionPercentage">> => float(),
%%   <<"MetricName">> => string(),
%%   <<"RelationshipType">> => list(any())
%% }
-type inter_metric_impact_details() :: #{binary() => any()}.


%% Example:
%% update_metric_set_request() :: #{
%%   <<"DimensionFilterList">> => list(metric_set_dimension_filter()),
%%   <<"DimensionList">> => list(string()),
%%   <<"MetricList">> => list(metric()),
%%   <<"MetricSetArn">> := string(),
%%   <<"MetricSetDescription">> => string(),
%%   <<"MetricSetFrequency">> => list(any()),
%%   <<"MetricSource">> => metric_source(),
%%   <<"Offset">> => integer(),
%%   <<"TimestampColumn">> => timestamp_column()
%% }
-type update_metric_set_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% dimension_contribution() :: #{
%%   <<"DimensionName">> => string(),
%%   <<"DimensionValueContributionList">> => list(dimension_value_contribution())
%% }
-type dimension_contribution() :: #{binary() => any()}.


%% Example:
%% list_anomaly_group_summaries_response() :: #{
%%   <<"AnomalyGroupStatistics">> => anomaly_group_statistics(),
%%   <<"AnomalyGroupSummaryList">> => list(anomaly_group_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_anomaly_group_summaries_response() :: #{binary() => any()}.


%% Example:
%% detected_field() :: #{
%%   <<"Confidence">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"Value">> => attribute_value()
%% }
-type detected_field() :: #{binary() => any()}.


%% Example:
%% anomaly_group() :: #{
%%   <<"AnomalyGroupId">> => string(),
%%   <<"AnomalyGroupScore">> => float(),
%%   <<"EndTime">> => string(),
%%   <<"MetricLevelImpactList">> => list(metric_level_impact()),
%%   <<"PrimaryMetricName">> => string(),
%%   <<"StartTime">> => string()
%% }
-type anomaly_group() :: #{binary() => any()}.


%% Example:
%% vpc_configuration() :: #{
%%   <<"SecurityGroupIdList">> => list(string()),
%%   <<"SubnetIdList">> => list(string())
%% }
-type vpc_configuration() :: #{binary() => any()}.


%% Example:
%% list_metric_sets_response() :: #{
%%   <<"MetricSetSummaryList">> => list(metric_set_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_metric_sets_response() :: #{binary() => any()}.


%% Example:
%% describe_alert_request() :: #{
%%   <<"AlertArn">> := string()
%% }
-type describe_alert_request() :: #{binary() => any()}.


%% Example:
%% anomaly_group_time_series() :: #{
%%   <<"AnomalyGroupId">> => string(),
%%   <<"TimeSeriesId">> => string()
%% }
-type anomaly_group_time_series() :: #{binary() => any()}.


%% Example:
%% metric_set_summary() :: #{
%%   <<"AnomalyDetectorArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"MetricSetArn">> => string(),
%%   <<"MetricSetDescription">> => string(),
%%   <<"MetricSetName">> => string(),
%%   <<"Tags">> => map()
%% }
-type metric_set_summary() :: #{binary() => any()}.


%% Example:
%% list_metric_sets_request() :: #{
%%   <<"AnomalyDetectorArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_metric_sets_request() :: #{binary() => any()}.


%% Example:
%% deactivate_anomaly_detector_request() :: #{
%%   <<"AnomalyDetectorArn">> := string()
%% }
-type deactivate_anomaly_detector_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% metric() :: #{
%%   <<"AggregationFunction">> => list(any()),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string()
%% }
-type metric() :: #{binary() => any()}.


%% Example:
%% detected_file_format_descriptor() :: #{
%%   <<"CsvFormatDescriptor">> => detected_csv_format_descriptor(),
%%   <<"JsonFormatDescriptor">> => detected_json_format_descriptor()
%% }
-type detected_file_format_descriptor() :: #{binary() => any()}.


%% Example:
%% detected_json_format_descriptor() :: #{
%%   <<"Charset">> => detected_field(),
%%   <<"FileCompression">> => detected_field()
%% }
-type detected_json_format_descriptor() :: #{binary() => any()}.


%% Example:
%% list_alerts_request() :: #{
%%   <<"AnomalyDetectorArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_alerts_request() :: #{binary() => any()}.


%% Example:
%% metric_set_dimension_filter() :: #{
%%   <<"FilterList">> => list(filter()),
%%   <<"Name">> => string()
%% }
-type metric_set_dimension_filter() :: #{binary() => any()}.


%% Example:
%% dimension_name_value() :: #{
%%   <<"DimensionName">> => string(),
%%   <<"DimensionValue">> => string()
%% }
-type dimension_name_value() :: #{binary() => any()}.


%% Example:
%% detect_metric_set_config_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"AutoDetectionMetricSource">> := auto_detection_metric_source()
%% }
-type detect_metric_set_config_request() :: #{binary() => any()}.


%% Example:
%% cloud_watch_config() :: #{
%%   <<"BackTestConfiguration">> => back_test_configuration(),
%%   <<"RoleArn">> => string()
%% }
-type cloud_watch_config() :: #{binary() => any()}.

%% Example:
%% put_feedback_response() :: #{}
-type put_feedback_response() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% execution_status() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Timestamp">> => string()
%% }
-type execution_status() :: #{binary() => any()}.


%% Example:
%% list_anomaly_group_time_series_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"AnomalyGroupId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MetricName">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_anomaly_group_time_series_request() :: #{binary() => any()}.


%% Example:
%% auto_detection_s3_source_config() :: #{
%%   <<"HistoricalDataPathList">> => list(string()),
%%   <<"TemplatedPathList">> => list(string())
%% }
-type auto_detection_s3_source_config() :: #{binary() => any()}.


%% Example:
%% json_format_descriptor() :: #{
%%   <<"Charset">> => string(),
%%   <<"FileCompression">> => list(any())
%% }
-type json_format_descriptor() :: #{binary() => any()}.


%% Example:
%% anomaly_group_time_series_feedback() :: #{
%%   <<"AnomalyGroupId">> => string(),
%%   <<"IsAnomaly">> => boolean(),
%%   <<"TimeSeriesId">> => string()
%% }
-type anomaly_group_time_series_feedback() :: #{binary() => any()}.


%% Example:
%% get_sample_data_response() :: #{
%%   <<"HeaderValues">> => list(string()),
%%   <<"SampleRows">> => list(list(string())())
%% }
-type get_sample_data_response() :: #{binary() => any()}.


%% Example:
%% get_sample_data_request() :: #{
%%   <<"S3SourceConfig">> => sample_data_s3_source_config()
%% }
-type get_sample_data_request() :: #{binary() => any()}.


%% Example:
%% redshift_source_config() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"DatabaseHost">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"DatabasePort">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"SecretManagerArn">> => string(),
%%   <<"TableName">> => string(),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type redshift_source_config() :: #{binary() => any()}.


%% Example:
%% describe_metric_set_request() :: #{
%%   <<"MetricSetArn">> := string()
%% }
-type describe_metric_set_request() :: #{binary() => any()}.


%% Example:
%% list_anomaly_group_related_metrics_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"AnomalyGroupId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RelationshipTypeFilter">> => list(any())
%% }
-type list_anomaly_group_related_metrics_request() :: #{binary() => any()}.


%% Example:
%% anomaly_detector_data_quality_metric() :: #{
%%   <<"MetricSetDataQualityMetricList">> => list(metric_set_data_quality_metric()),
%%   <<"StartTimestamp">> => non_neg_integer()
%% }
-type anomaly_detector_data_quality_metric() :: #{binary() => any()}.


%% Example:
%% timestamp_column() :: #{
%%   <<"ColumnFormat">> => string(),
%%   <<"ColumnName">> => string()
%% }
-type timestamp_column() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% back_test_configuration() :: #{
%%   <<"RunBackTestMode">> => boolean()
%% }
-type back_test_configuration() :: #{binary() => any()}.

%% Example:
%% back_test_anomaly_detector_response() :: #{}
-type back_test_anomaly_detector_response() :: #{}.


%% Example:
%% describe_alert_response() :: #{
%%   <<"Alert">> => alert()
%% }
-type describe_alert_response() :: #{binary() => any()}.


%% Example:
%% metric_set_data_quality_metric() :: #{
%%   <<"DataQualityMetricList">> => list(data_quality_metric()),
%%   <<"MetricSetArn">> => string()
%% }
-type metric_set_data_quality_metric() :: #{binary() => any()}.


%% Example:
%% metric_source() :: #{
%%   <<"AppFlowConfig">> => app_flow_config(),
%%   <<"AthenaSourceConfig">> => athena_source_config(),
%%   <<"CloudWatchConfig">> => cloud_watch_config(),
%%   <<"RDSSourceConfig">> => rds_source_config(),
%%   <<"RedshiftSourceConfig">> => redshift_source_config(),
%%   <<"S3SourceConfig">> => s3_source_config()
%% }
-type metric_source() :: #{binary() => any()}.


%% Example:
%% describe_anomaly_detector_response() :: #{
%%   <<"AnomalyDetectorArn">> => string(),
%%   <<"AnomalyDetectorConfig">> => anomaly_detector_config_summary(),
%%   <<"AnomalyDetectorDescription">> => string(),
%%   <<"AnomalyDetectorName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"FailureType">> => list(any()),
%%   <<"KmsKeyArn">> => string(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type describe_anomaly_detector_response() :: #{binary() => any()}.


%% Example:
%% csv_format_descriptor() :: #{
%%   <<"Charset">> => string(),
%%   <<"ContainsHeader">> => boolean(),
%%   <<"Delimiter">> => string(),
%%   <<"FileCompression">> => list(any()),
%%   <<"HeaderList">> => list(string()),
%%   <<"QuoteSymbol">> => string()
%% }
-type csv_format_descriptor() :: #{binary() => any()}.


%% Example:
%% file_format_descriptor() :: #{
%%   <<"CsvFormatDescriptor">> => csv_format_descriptor(),
%%   <<"JsonFormatDescriptor">> => json_format_descriptor()
%% }
-type file_format_descriptor() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_anomaly_detector_response() :: #{}
-type delete_anomaly_detector_response() :: #{}.


%% Example:
%% sample_data_s3_source_config() :: #{
%%   <<"FileFormatDescriptor">> => file_format_descriptor(),
%%   <<"HistoricalDataPathList">> => list(string()),
%%   <<"RoleArn">> => string(),
%%   <<"TemplatedPathList">> => list(string())
%% }
-type sample_data_s3_source_config() :: #{binary() => any()}.


%% Example:
%% app_flow_config() :: #{
%%   <<"FlowName">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type app_flow_config() :: #{binary() => any()}.


%% Example:
%% time_series() :: #{
%%   <<"DimensionList">> => list(dimension_name_value()),
%%   <<"MetricValueList">> => list(float()),
%%   <<"TimeSeriesId">> => string()
%% }
-type time_series() :: #{binary() => any()}.


%% Example:
%% activate_anomaly_detector_request() :: #{
%%   <<"AnomalyDetectorArn">> := string()
%% }
-type activate_anomaly_detector_request() :: #{binary() => any()}.


%% Example:
%% alert_summary() :: #{
%%   <<"AlertArn">> => string(),
%%   <<"AlertName">> => string(),
%%   <<"AlertSensitivityThreshold">> => integer(),
%%   <<"AlertStatus">> => list(any()),
%%   <<"AlertType">> => list(any()),
%%   <<"AnomalyDetectorArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Tags">> => map()
%% }
-type alert_summary() :: #{binary() => any()}.


%% Example:
%% detected_s3_source_config() :: #{
%%   <<"FileFormatDescriptor">> => detected_file_format_descriptor()
%% }
-type detected_s3_source_config() :: #{binary() => any()}.


%% Example:
%% delete_alert_request() :: #{
%%   <<"AlertArn">> := string()
%% }
-type delete_alert_request() :: #{binary() => any()}.


%% Example:
%% create_alert_response() :: #{
%%   <<"AlertArn">> => string()
%% }
-type create_alert_response() :: #{binary() => any()}.


%% Example:
%% list_anomaly_group_summaries_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SensitivityThreshold">> := integer()
%% }
-type list_anomaly_group_summaries_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% itemized_metric_stats() :: #{
%%   <<"MetricName">> => string(),
%%   <<"OccurrenceCount">> => integer()
%% }
-type itemized_metric_stats() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% create_anomaly_detector_response() :: #{
%%   <<"AnomalyDetectorArn">> => string()
%% }
-type create_anomaly_detector_response() :: #{binary() => any()}.


%% Example:
%% attribute_value() :: #{
%%   <<"B">> => string(),
%%   <<"BS">> => list(string()),
%%   <<"N">> => string(),
%%   <<"NS">> => list(string()),
%%   <<"S">> => string(),
%%   <<"SS">> => list(string())
%% }
-type attribute_value() :: #{binary() => any()}.


%% Example:
%% create_alert_request() :: #{
%%   <<"Action">> := action(),
%%   <<"AlertDescription">> => string(),
%%   <<"AlertFilters">> => alert_filters(),
%%   <<"AlertName">> := string(),
%%   <<"AlertSensitivityThreshold">> => integer(),
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_alert_request() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"DimensionValue">> => string(),
%%   <<"FilterOperation">> => list(any())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% dimension_value_contribution() :: #{
%%   <<"ContributionScore">> => float(),
%%   <<"DimensionValue">> => string()
%% }
-type dimension_value_contribution() :: #{binary() => any()}.


%% Example:
%% s3_source_config() :: #{
%%   <<"FileFormatDescriptor">> => file_format_descriptor(),
%%   <<"HistoricalDataPathList">> => list(string()),
%%   <<"RoleArn">> => string(),
%%   <<"TemplatedPathList">> => list(string())
%% }
-type s3_source_config() :: #{binary() => any()}.


%% Example:
%% get_anomaly_group_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"AnomalyGroupId">> := string()
%% }
-type get_anomaly_group_request() :: #{binary() => any()}.


%% Example:
%% get_feedback_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"AnomalyGroupTimeSeriesFeedback">> := anomaly_group_time_series(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_feedback_request() :: #{binary() => any()}.


%% Example:
%% list_anomaly_group_related_metrics_response() :: #{
%%   <<"InterMetricImpactList">> => list(inter_metric_impact_details()),
%%   <<"NextToken">> => string()
%% }
-type list_anomaly_group_related_metrics_response() :: #{binary() => any()}.


%% Example:
%% athena_source_config() :: #{
%%   <<"BackTestConfiguration">> => back_test_configuration(),
%%   <<"DataCatalog">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"S3ResultsPath">> => string(),
%%   <<"TableName">> => string(),
%%   <<"WorkGroupName">> => string()
%% }
-type athena_source_config() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% anomaly_detector_summary() :: #{
%%   <<"AnomalyDetectorArn">> => string(),
%%   <<"AnomalyDetectorDescription">> => string(),
%%   <<"AnomalyDetectorName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type anomaly_detector_summary() :: #{binary() => any()}.


%% Example:
%% rds_source_config() :: #{
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DatabaseHost">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"DatabasePort">> => integer(),
%%   <<"RoleArn">> => string(),
%%   <<"SecretManagerArn">> => string(),
%%   <<"TableName">> => string(),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type rds_source_config() :: #{binary() => any()}.


%% Example:
%% auto_detection_metric_source() :: #{
%%   <<"S3SourceConfig">> => auto_detection_s3_source_config()
%% }
-type auto_detection_metric_source() :: #{binary() => any()}.


%% Example:
%% action() :: #{
%%   <<"LambdaConfiguration">> => lambda_configuration(),
%%   <<"SNSConfiguration">> => s_n_s_configuration()
%% }
-type action() :: #{binary() => any()}.


%% Example:
%% list_anomaly_group_time_series_response() :: #{
%%   <<"AnomalyGroupId">> => string(),
%%   <<"MetricName">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"TimeSeriesList">> => list(time_series()),
%%   <<"TimestampList">> => list(string())
%% }
-type list_anomaly_group_time_series_response() :: #{binary() => any()}.


%% Example:
%% describe_anomaly_detection_executions_response() :: #{
%%   <<"ExecutionList">> => list(execution_status()),
%%   <<"NextToken">> => string()
%% }
-type describe_anomaly_detection_executions_response() :: #{binary() => any()}.


%% Example:
%% update_metric_set_response() :: #{
%%   <<"MetricSetArn">> => string()
%% }
-type update_metric_set_response() :: #{binary() => any()}.


%% Example:
%% lambda_configuration() :: #{
%%   <<"LambdaArn">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type lambda_configuration() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% s_n_s_configuration() :: #{
%%   <<"RoleArn">> => string(),
%%   <<"SnsFormat">> => list(any()),
%%   <<"SnsTopicArn">> => string()
%% }
-type s_n_s_configuration() :: #{binary() => any()}.


%% Example:
%% get_feedback_response() :: #{
%%   <<"AnomalyGroupTimeSeriesFeedback">> => list(time_series_feedback()),
%%   <<"NextToken">> => string()
%% }
-type get_feedback_response() :: #{binary() => any()}.


%% Example:
%% get_anomaly_group_response() :: #{
%%   <<"AnomalyGroup">> => anomaly_group()
%% }
-type get_anomaly_group_response() :: #{binary() => any()}.

%% Example:
%% delete_alert_response() :: #{}
-type delete_alert_response() :: #{}.


%% Example:
%% describe_metric_set_response() :: #{
%%   <<"AnomalyDetectorArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DimensionFilterList">> => list(metric_set_dimension_filter()),
%%   <<"DimensionList">> => list(string()),
%%   <<"LastModificationTime">> => non_neg_integer(),
%%   <<"MetricList">> => list(metric()),
%%   <<"MetricSetArn">> => string(),
%%   <<"MetricSetDescription">> => string(),
%%   <<"MetricSetFrequency">> => list(any()),
%%   <<"MetricSetName">> => string(),
%%   <<"MetricSource">> => metric_source(),
%%   <<"Offset">> => integer(),
%%   <<"TimestampColumn">> => timestamp_column(),
%%   <<"Timezone">> => string()
%% }
-type describe_metric_set_response() :: #{binary() => any()}.


%% Example:
%% contribution_matrix() :: #{
%%   <<"DimensionContributionList">> => list(dimension_contribution())
%% }
-type contribution_matrix() :: #{binary() => any()}.


%% Example:
%% detected_metric_set_config() :: #{
%%   <<"MetricSetFrequency">> => detected_field(),
%%   <<"MetricSource">> => detected_metric_source(),
%%   <<"Offset">> => detected_field()
%% }
-type detected_metric_set_config() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Fields">> => list(validation_exception_field()),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_anomaly_detectors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_anomaly_detectors_request() :: #{binary() => any()}.


%% Example:
%% delete_anomaly_detector_request() :: #{
%%   <<"AnomalyDetectorArn">> := string()
%% }
-type delete_anomaly_detector_request() :: #{binary() => any()}.


%% Example:
%% alert() :: #{
%%   <<"Action">> => action(),
%%   <<"AlertArn">> => string(),
%%   <<"AlertDescription">> => string(),
%%   <<"AlertFilters">> => alert_filters(),
%%   <<"AlertName">> => string(),
%%   <<"AlertSensitivityThreshold">> => integer(),
%%   <<"AlertStatus">> => list(any()),
%%   <<"AlertType">> => list(any()),
%%   <<"AnomalyDetectorArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModificationTime">> => non_neg_integer()
%% }
-type alert() :: #{binary() => any()}.


%% Example:
%% create_metric_set_response() :: #{
%%   <<"MetricSetArn">> => string()
%% }
-type create_metric_set_response() :: #{binary() => any()}.


%% Example:
%% get_data_quality_metrics_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"MetricSetArn">> => string()
%% }
-type get_data_quality_metrics_request() :: #{binary() => any()}.


%% Example:
%% alert_filters() :: #{
%%   <<"DimensionFilterList">> => list(dimension_filter()),
%%   <<"MetricList">> => list(string())
%% }
-type alert_filters() :: #{binary() => any()}.


%% Example:
%% detected_metric_source() :: #{
%%   <<"S3SourceConfig">> => detected_s3_source_config()
%% }
-type detected_metric_source() :: #{binary() => any()}.


%% Example:
%% update_anomaly_detector_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"AnomalyDetectorConfig">> => anomaly_detector_config(),
%%   <<"AnomalyDetectorDescription">> => string(),
%%   <<"KmsKeyArn">> => string()
%% }
-type update_anomaly_detector_request() :: #{binary() => any()}.


%% Example:
%% describe_anomaly_detection_executions_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Timestamp">> => string()
%% }
-type describe_anomaly_detection_executions_request() :: #{binary() => any()}.


%% Example:
%% list_alerts_response() :: #{
%%   <<"AlertSummaryList">> => list(alert_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_alerts_response() :: #{binary() => any()}.


%% Example:
%% anomaly_group_summary() :: #{
%%   <<"AnomalyGroupId">> => string(),
%%   <<"AnomalyGroupScore">> => float(),
%%   <<"EndTime">> => string(),
%%   <<"PrimaryMetricName">> => string(),
%%   <<"StartTime">> => string()
%% }
-type anomaly_group_summary() :: #{binary() => any()}.


%% Example:
%% list_anomaly_detectors_response() :: #{
%%   <<"AnomalyDetectorSummaryList">> => list(anomaly_detector_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_anomaly_detectors_response() :: #{binary() => any()}.


%% Example:
%% time_series_feedback() :: #{
%%   <<"IsAnomaly">> => boolean(),
%%   <<"TimeSeriesId">> => string()
%% }
-type time_series_feedback() :: #{binary() => any()}.


%% Example:
%% anomaly_group_statistics() :: #{
%%   <<"EvaluationStartDate">> => string(),
%%   <<"ItemizedMetricStatsList">> => list(itemized_metric_stats()),
%%   <<"TotalCount">> => integer()
%% }
-type anomaly_group_statistics() :: #{binary() => any()}.


%% Example:
%% update_alert_response() :: #{
%%   <<"AlertArn">> => string()
%% }
-type update_alert_response() :: #{binary() => any()}.


%% Example:
%% update_alert_request() :: #{
%%   <<"Action">> => action(),
%%   <<"AlertArn">> := string(),
%%   <<"AlertDescription">> => string(),
%%   <<"AlertFilters">> => alert_filters(),
%%   <<"AlertSensitivityThreshold">> => integer()
%% }
-type update_alert_request() :: #{binary() => any()}.


%% Example:
%% back_test_anomaly_detector_request() :: #{
%%   <<"AnomalyDetectorArn">> := string()
%% }
-type back_test_anomaly_detector_request() :: #{binary() => any()}.


%% Example:
%% metric_level_impact() :: #{
%%   <<"ContributionMatrix">> => contribution_matrix(),
%%   <<"MetricName">> => string(),
%%   <<"NumTimeSeries">> => integer()
%% }
-type metric_level_impact() :: #{binary() => any()}.


%% Example:
%% dimension_filter() :: #{
%%   <<"DimensionName">> => string(),
%%   <<"DimensionValueList">> => list(string())
%% }
-type dimension_filter() :: #{binary() => any()}.


%% Example:
%% create_anomaly_detector_request() :: #{
%%   <<"AnomalyDetectorConfig">> := anomaly_detector_config(),
%%   <<"AnomalyDetectorDescription">> => string(),
%%   <<"AnomalyDetectorName">> := string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_anomaly_detector_request() :: #{binary() => any()}.

%% Example:
%% deactivate_anomaly_detector_response() :: #{}
-type deactivate_anomaly_detector_response() :: #{}.


%% Example:
%% anomaly_detector_config() :: #{
%%   <<"AnomalyDetectorFrequency">> => list(any())
%% }
-type anomaly_detector_config() :: #{binary() => any()}.


%% Example:
%% create_metric_set_request() :: #{
%%   <<"AnomalyDetectorArn">> := string(),
%%   <<"DimensionFilterList">> => list(metric_set_dimension_filter()),
%%   <<"DimensionList">> => list(string()),
%%   <<"MetricList">> := list(metric()),
%%   <<"MetricSetDescription">> => string(),
%%   <<"MetricSetFrequency">> => list(any()),
%%   <<"MetricSetName">> := string(),
%%   <<"MetricSource">> := metric_source(),
%%   <<"Offset">> => integer(),
%%   <<"Tags">> => map(),
%%   <<"TimestampColumn">> => timestamp_column(),
%%   <<"Timezone">> => string()
%% }
-type create_metric_set_request() :: #{binary() => any()}.


%% Example:
%% detect_metric_set_config_response() :: #{
%%   <<"DetectedMetricSetConfig">> => detected_metric_set_config()
%% }
-type detect_metric_set_config_response() :: #{binary() => any()}.


%% Example:
%% describe_anomaly_detector_request() :: #{
%%   <<"AnomalyDetectorArn">> := string()
%% }
-type describe_anomaly_detector_request() :: #{binary() => any()}.


%% Example:
%% update_anomaly_detector_response() :: #{
%%   <<"AnomalyDetectorArn">> => string()
%% }
-type update_anomaly_detector_response() :: #{binary() => any()}.


%% Example:
%% data_quality_metric() :: #{
%%   <<"MetricDescription">> => string(),
%%   <<"MetricType">> => list(any()),
%%   <<"MetricValue">> => float(),
%%   <<"RelatedColumnName">> => string()
%% }
-type data_quality_metric() :: #{binary() => any()}.

-type activate_anomaly_detector_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type back_test_anomaly_detector_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type create_alert_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_anomaly_detector_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_metric_set_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type deactivate_anomaly_detector_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type delete_alert_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_anomaly_detector_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type describe_alert_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_anomaly_detection_executions_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_anomaly_detector_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_metric_set_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type detect_metric_set_config_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_anomaly_group_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_data_quality_metrics_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_feedback_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_sample_data_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_alerts_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_anomaly_detectors_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_anomaly_group_related_metrics_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_anomaly_group_summaries_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_anomaly_group_time_series_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_metric_sets_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_feedback_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_alert_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_anomaly_detector_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_metric_set_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Activates an anomaly detector.
-spec activate_anomaly_detector(aws_client:aws_client(), activate_anomaly_detector_request()) ->
    {ok, activate_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, activate_anomaly_detector_errors(), tuple()}.
activate_anomaly_detector(Client, Input) ->
    activate_anomaly_detector(Client, Input, []).

-spec activate_anomaly_detector(aws_client:aws_client(), activate_anomaly_detector_request(), proplists:proplist()) ->
    {ok, activate_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, activate_anomaly_detector_errors(), tuple()}.
activate_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ActivateAnomalyDetector"],
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

%% @doc Runs a backtest for anomaly detection for the specified resource.
-spec back_test_anomaly_detector(aws_client:aws_client(), back_test_anomaly_detector_request()) ->
    {ok, back_test_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, back_test_anomaly_detector_errors(), tuple()}.
back_test_anomaly_detector(Client, Input) ->
    back_test_anomaly_detector(Client, Input, []).

-spec back_test_anomaly_detector(aws_client:aws_client(), back_test_anomaly_detector_request(), proplists:proplist()) ->
    {ok, back_test_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, back_test_anomaly_detector_errors(), tuple()}.
back_test_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BackTestAnomalyDetector"],
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

%% @doc Creates an alert for an anomaly detector.
-spec create_alert(aws_client:aws_client(), create_alert_request()) ->
    {ok, create_alert_response(), tuple()} |
    {error, any()} |
    {error, create_alert_errors(), tuple()}.
create_alert(Client, Input) ->
    create_alert(Client, Input, []).

-spec create_alert(aws_client:aws_client(), create_alert_request(), proplists:proplist()) ->
    {ok, create_alert_response(), tuple()} |
    {error, any()} |
    {error, create_alert_errors(), tuple()}.
create_alert(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateAlert"],
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

%% @doc Creates an anomaly detector.
-spec create_anomaly_detector(aws_client:aws_client(), create_anomaly_detector_request()) ->
    {ok, create_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, create_anomaly_detector_errors(), tuple()}.
create_anomaly_detector(Client, Input) ->
    create_anomaly_detector(Client, Input, []).

-spec create_anomaly_detector(aws_client:aws_client(), create_anomaly_detector_request(), proplists:proplist()) ->
    {ok, create_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, create_anomaly_detector_errors(), tuple()}.
create_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateAnomalyDetector"],
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

%% @doc Creates a dataset.
-spec create_metric_set(aws_client:aws_client(), create_metric_set_request()) ->
    {ok, create_metric_set_response(), tuple()} |
    {error, any()} |
    {error, create_metric_set_errors(), tuple()}.
create_metric_set(Client, Input) ->
    create_metric_set(Client, Input, []).

-spec create_metric_set(aws_client:aws_client(), create_metric_set_request(), proplists:proplist()) ->
    {ok, create_metric_set_response(), tuple()} |
    {error, any()} |
    {error, create_metric_set_errors(), tuple()}.
create_metric_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateMetricSet"],
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

%% @doc Deactivates an anomaly detector.
-spec deactivate_anomaly_detector(aws_client:aws_client(), deactivate_anomaly_detector_request()) ->
    {ok, deactivate_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, deactivate_anomaly_detector_errors(), tuple()}.
deactivate_anomaly_detector(Client, Input) ->
    deactivate_anomaly_detector(Client, Input, []).

-spec deactivate_anomaly_detector(aws_client:aws_client(), deactivate_anomaly_detector_request(), proplists:proplist()) ->
    {ok, deactivate_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, deactivate_anomaly_detector_errors(), tuple()}.
deactivate_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeactivateAnomalyDetector"],
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

%% @doc Deletes an alert.
-spec delete_alert(aws_client:aws_client(), delete_alert_request()) ->
    {ok, delete_alert_response(), tuple()} |
    {error, any()} |
    {error, delete_alert_errors(), tuple()}.
delete_alert(Client, Input) ->
    delete_alert(Client, Input, []).

-spec delete_alert(aws_client:aws_client(), delete_alert_request(), proplists:proplist()) ->
    {ok, delete_alert_response(), tuple()} |
    {error, any()} |
    {error, delete_alert_errors(), tuple()}.
delete_alert(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteAlert"],
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

%% @doc Deletes a detector.
%%
%% Deleting an anomaly detector will delete all of its corresponding
%% resources including any
%% configured datasets and alerts.
-spec delete_anomaly_detector(aws_client:aws_client(), delete_anomaly_detector_request()) ->
    {ok, delete_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, delete_anomaly_detector_errors(), tuple()}.
delete_anomaly_detector(Client, Input) ->
    delete_anomaly_detector(Client, Input, []).

-spec delete_anomaly_detector(aws_client:aws_client(), delete_anomaly_detector_request(), proplists:proplist()) ->
    {ok, delete_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, delete_anomaly_detector_errors(), tuple()}.
delete_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteAnomalyDetector"],
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

%% @doc Describes an alert.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource
%% immediately after creating or modifying it, use retries to allow time for
%% the write operation to complete.
-spec describe_alert(aws_client:aws_client(), describe_alert_request()) ->
    {ok, describe_alert_response(), tuple()} |
    {error, any()} |
    {error, describe_alert_errors(), tuple()}.
describe_alert(Client, Input) ->
    describe_alert(Client, Input, []).

-spec describe_alert(aws_client:aws_client(), describe_alert_request(), proplists:proplist()) ->
    {ok, describe_alert_response(), tuple()} |
    {error, any()} |
    {error, describe_alert_errors(), tuple()}.
describe_alert(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeAlert"],
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

%% @doc Returns information about the status of the specified anomaly
%% detection jobs.
-spec describe_anomaly_detection_executions(aws_client:aws_client(), describe_anomaly_detection_executions_request()) ->
    {ok, describe_anomaly_detection_executions_response(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_detection_executions_errors(), tuple()}.
describe_anomaly_detection_executions(Client, Input) ->
    describe_anomaly_detection_executions(Client, Input, []).

-spec describe_anomaly_detection_executions(aws_client:aws_client(), describe_anomaly_detection_executions_request(), proplists:proplist()) ->
    {ok, describe_anomaly_detection_executions_response(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_detection_executions_errors(), tuple()}.
describe_anomaly_detection_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeAnomalyDetectionExecutions"],
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

%% @doc Describes a detector.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource
%% immediately after creating or modifying it, use retries to allow time for
%% the write operation to complete.
-spec describe_anomaly_detector(aws_client:aws_client(), describe_anomaly_detector_request()) ->
    {ok, describe_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_detector_errors(), tuple()}.
describe_anomaly_detector(Client, Input) ->
    describe_anomaly_detector(Client, Input, []).

-spec describe_anomaly_detector(aws_client:aws_client(), describe_anomaly_detector_request(), proplists:proplist()) ->
    {ok, describe_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_detector_errors(), tuple()}.
describe_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeAnomalyDetector"],
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

%% @doc Describes a dataset.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource
%% immediately after creating or modifying it, use retries to allow time for
%% the write operation to complete.
-spec describe_metric_set(aws_client:aws_client(), describe_metric_set_request()) ->
    {ok, describe_metric_set_response(), tuple()} |
    {error, any()} |
    {error, describe_metric_set_errors(), tuple()}.
describe_metric_set(Client, Input) ->
    describe_metric_set(Client, Input, []).

-spec describe_metric_set(aws_client:aws_client(), describe_metric_set_request(), proplists:proplist()) ->
    {ok, describe_metric_set_response(), tuple()} |
    {error, any()} |
    {error, describe_metric_set_errors(), tuple()}.
describe_metric_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeMetricSet"],
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

%% @doc Detects an Amazon S3 dataset's file format, interval, and offset.
-spec detect_metric_set_config(aws_client:aws_client(), detect_metric_set_config_request()) ->
    {ok, detect_metric_set_config_response(), tuple()} |
    {error, any()} |
    {error, detect_metric_set_config_errors(), tuple()}.
detect_metric_set_config(Client, Input) ->
    detect_metric_set_config(Client, Input, []).

-spec detect_metric_set_config(aws_client:aws_client(), detect_metric_set_config_request(), proplists:proplist()) ->
    {ok, detect_metric_set_config_response(), tuple()} |
    {error, any()} |
    {error, detect_metric_set_config_errors(), tuple()}.
detect_metric_set_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DetectMetricSetConfig"],
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

%% @doc Returns details about a group of anomalous metrics.
-spec get_anomaly_group(aws_client:aws_client(), get_anomaly_group_request()) ->
    {ok, get_anomaly_group_response(), tuple()} |
    {error, any()} |
    {error, get_anomaly_group_errors(), tuple()}.
get_anomaly_group(Client, Input) ->
    get_anomaly_group(Client, Input, []).

-spec get_anomaly_group(aws_client:aws_client(), get_anomaly_group_request(), proplists:proplist()) ->
    {ok, get_anomaly_group_response(), tuple()} |
    {error, any()} |
    {error, get_anomaly_group_errors(), tuple()}.
get_anomaly_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetAnomalyGroup"],
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

%% @doc Returns details about the requested data quality metrics.
-spec get_data_quality_metrics(aws_client:aws_client(), get_data_quality_metrics_request()) ->
    {ok, get_data_quality_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_metrics_errors(), tuple()}.
get_data_quality_metrics(Client, Input) ->
    get_data_quality_metrics(Client, Input, []).

-spec get_data_quality_metrics(aws_client:aws_client(), get_data_quality_metrics_request(), proplists:proplist()) ->
    {ok, get_data_quality_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_data_quality_metrics_errors(), tuple()}.
get_data_quality_metrics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetDataQualityMetrics"],
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

%% @doc Get feedback for an anomaly group.
-spec get_feedback(aws_client:aws_client(), get_feedback_request()) ->
    {ok, get_feedback_response(), tuple()} |
    {error, any()} |
    {error, get_feedback_errors(), tuple()}.
get_feedback(Client, Input) ->
    get_feedback(Client, Input, []).

-spec get_feedback(aws_client:aws_client(), get_feedback_request(), proplists:proplist()) ->
    {ok, get_feedback_response(), tuple()} |
    {error, any()} |
    {error, get_feedback_errors(), tuple()}.
get_feedback(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetFeedback"],
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

%% @doc Returns a selection of sample records from an Amazon S3 datasource.
-spec get_sample_data(aws_client:aws_client(), get_sample_data_request()) ->
    {ok, get_sample_data_response(), tuple()} |
    {error, any()} |
    {error, get_sample_data_errors(), tuple()}.
get_sample_data(Client, Input) ->
    get_sample_data(Client, Input, []).

-spec get_sample_data(aws_client:aws_client(), get_sample_data_request(), proplists:proplist()) ->
    {ok, get_sample_data_response(), tuple()} |
    {error, any()} |
    {error, get_sample_data_errors(), tuple()}.
get_sample_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetSampleData"],
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

%% @doc Lists the alerts attached to a detector.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource
%% immediately after creating or modifying it, use retries to allow time for
%% the write operation to complete.
-spec list_alerts(aws_client:aws_client(), list_alerts_request()) ->
    {ok, list_alerts_response(), tuple()} |
    {error, any()} |
    {error, list_alerts_errors(), tuple()}.
list_alerts(Client, Input) ->
    list_alerts(Client, Input, []).

-spec list_alerts(aws_client:aws_client(), list_alerts_request(), proplists:proplist()) ->
    {ok, list_alerts_response(), tuple()} |
    {error, any()} |
    {error, list_alerts_errors(), tuple()}.
list_alerts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAlerts"],
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

%% @doc Lists the detectors in the current AWS Region.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource
%% immediately after creating or modifying it, use retries to allow time for
%% the write operation to complete.
-spec list_anomaly_detectors(aws_client:aws_client(), list_anomaly_detectors_request()) ->
    {ok, list_anomaly_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_detectors_errors(), tuple()}.
list_anomaly_detectors(Client, Input) ->
    list_anomaly_detectors(Client, Input, []).

-spec list_anomaly_detectors(aws_client:aws_client(), list_anomaly_detectors_request(), proplists:proplist()) ->
    {ok, list_anomaly_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_detectors_errors(), tuple()}.
list_anomaly_detectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAnomalyDetectors"],
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

%% @doc Returns a list of measures that are potential causes or effects of an
%% anomaly group.
-spec list_anomaly_group_related_metrics(aws_client:aws_client(), list_anomaly_group_related_metrics_request()) ->
    {ok, list_anomaly_group_related_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_group_related_metrics_errors(), tuple()}.
list_anomaly_group_related_metrics(Client, Input) ->
    list_anomaly_group_related_metrics(Client, Input, []).

-spec list_anomaly_group_related_metrics(aws_client:aws_client(), list_anomaly_group_related_metrics_request(), proplists:proplist()) ->
    {ok, list_anomaly_group_related_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_group_related_metrics_errors(), tuple()}.
list_anomaly_group_related_metrics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAnomalyGroupRelatedMetrics"],
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

%% @doc Returns a list of anomaly groups.
-spec list_anomaly_group_summaries(aws_client:aws_client(), list_anomaly_group_summaries_request()) ->
    {ok, list_anomaly_group_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_group_summaries_errors(), tuple()}.
list_anomaly_group_summaries(Client, Input) ->
    list_anomaly_group_summaries(Client, Input, []).

-spec list_anomaly_group_summaries(aws_client:aws_client(), list_anomaly_group_summaries_request(), proplists:proplist()) ->
    {ok, list_anomaly_group_summaries_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_group_summaries_errors(), tuple()}.
list_anomaly_group_summaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAnomalyGroupSummaries"],
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

%% @doc Gets a list of anomalous metrics for a measure in an anomaly group.
-spec list_anomaly_group_time_series(aws_client:aws_client(), list_anomaly_group_time_series_request()) ->
    {ok, list_anomaly_group_time_series_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_group_time_series_errors(), tuple()}.
list_anomaly_group_time_series(Client, Input) ->
    list_anomaly_group_time_series(Client, Input, []).

-spec list_anomaly_group_time_series(aws_client:aws_client(), list_anomaly_group_time_series_request(), proplists:proplist()) ->
    {ok, list_anomaly_group_time_series_response(), tuple()} |
    {error, any()} |
    {error, list_anomaly_group_time_series_errors(), tuple()}.
list_anomaly_group_time_series(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAnomalyGroupTimeSeries"],
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

%% @doc Lists the datasets in the current AWS Region.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource
%% immediately after creating or modifying it, use retries to allow time for
%% the write operation to complete.
-spec list_metric_sets(aws_client:aws_client(), list_metric_sets_request()) ->
    {ok, list_metric_sets_response(), tuple()} |
    {error, any()} |
    {error, list_metric_sets_errors(), tuple()}.
list_metric_sets(Client, Input) ->
    list_metric_sets(Client, Input, []).

-spec list_metric_sets(aws_client:aws_client(), list_metric_sets_request(), proplists:proplist()) ->
    {ok, list_metric_sets_response(), tuple()} |
    {error, any()} |
    {error, list_metric_sets_errors(), tuple()}.
list_metric_sets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListMetricSets"],
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

%% @doc Gets a list of tags:
%% https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
%% for a detector, dataset, or alert.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Add feedback for an anomalous metric.
-spec put_feedback(aws_client:aws_client(), put_feedback_request()) ->
    {ok, put_feedback_response(), tuple()} |
    {error, any()} |
    {error, put_feedback_errors(), tuple()}.
put_feedback(Client, Input) ->
    put_feedback(Client, Input, []).

-spec put_feedback(aws_client:aws_client(), put_feedback_request(), proplists:proplist()) ->
    {ok, put_feedback_response(), tuple()} |
    {error, any()} |
    {error, put_feedback_errors(), tuple()}.
put_feedback(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutFeedback"],
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

%% @doc Adds tags:
%% https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
%% to a detector, dataset, or alert.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes tags:
%% https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
%% from a detector, dataset, or alert.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Make changes to an existing alert.
-spec update_alert(aws_client:aws_client(), update_alert_request()) ->
    {ok, update_alert_response(), tuple()} |
    {error, any()} |
    {error, update_alert_errors(), tuple()}.
update_alert(Client, Input) ->
    update_alert(Client, Input, []).

-spec update_alert(aws_client:aws_client(), update_alert_request(), proplists:proplist()) ->
    {ok, update_alert_response(), tuple()} |
    {error, any()} |
    {error, update_alert_errors(), tuple()}.
update_alert(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateAlert"],
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

%% @doc Updates a detector.
%%
%% After activation, you can only change a detector's ingestion delay and
%% description.
-spec update_anomaly_detector(aws_client:aws_client(), update_anomaly_detector_request()) ->
    {ok, update_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, update_anomaly_detector_errors(), tuple()}.
update_anomaly_detector(Client, Input) ->
    update_anomaly_detector(Client, Input, []).

-spec update_anomaly_detector(aws_client:aws_client(), update_anomaly_detector_request(), proplists:proplist()) ->
    {ok, update_anomaly_detector_response(), tuple()} |
    {error, any()} |
    {error, update_anomaly_detector_errors(), tuple()}.
update_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateAnomalyDetector"],
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

%% @doc Updates a dataset.
-spec update_metric_set(aws_client:aws_client(), update_metric_set_request()) ->
    {ok, update_metric_set_response(), tuple()} |
    {error, any()} |
    {error, update_metric_set_errors(), tuple()}.
update_metric_set(Client, Input) ->
    update_metric_set(Client, Input, []).

-spec update_metric_set(aws_client:aws_client(), update_metric_set_request(), proplists:proplist()) ->
    {ok, update_metric_set_response(), tuple()} |
    {error, any()} |
    {error, update_metric_set_errors(), tuple()}.
update_metric_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateMetricSet"],
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
    Client1 = Client#{service => <<"lookoutmetrics">>},
    Host = build_host(<<"lookoutmetrics">>, Client1),
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
