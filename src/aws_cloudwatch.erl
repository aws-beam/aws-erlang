%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudWatch monitors your Amazon Web Services (Amazon Web
%% Services)
%% resources and the applications you run on Amazon Web Services in real
%% time.
%%
%% You can use
%% CloudWatch to collect and track metrics, which are the variables you want
%% to
%% measure for your resources and applications.
%%
%% CloudWatch alarms send notifications or automatically change the resources
%% you are
%% monitoring based on rules that you define. For example, you can monitor
%% the CPU usage
%% and disk reads and writes of your Amazon EC2 instances. Then, use this
%% data to determine
%% whether you should launch additional instances to handle increased load.
%% You can also
%% use this data to stop under-used instances to save money.
%%
%% In addition to monitoring the built-in metrics that come with Amazon Web
%% Services,
%% you can monitor your own custom metrics. With CloudWatch, you gain
%% system-wide
%% visibility into resource utilization, application performance, and
%% operational
%% health.
-module(aws_cloudwatch).

-export([delete_alarms/2,
         delete_alarms/3,
         delete_anomaly_detector/2,
         delete_anomaly_detector/3,
         delete_dashboards/2,
         delete_dashboards/3,
         delete_insight_rules/2,
         delete_insight_rules/3,
         delete_metric_stream/2,
         delete_metric_stream/3,
         describe_alarm_contributors/2,
         describe_alarm_contributors/3,
         describe_alarm_history/2,
         describe_alarm_history/3,
         describe_alarms/2,
         describe_alarms/3,
         describe_alarms_for_metric/2,
         describe_alarms_for_metric/3,
         describe_anomaly_detectors/2,
         describe_anomaly_detectors/3,
         describe_insight_rules/2,
         describe_insight_rules/3,
         disable_alarm_actions/2,
         disable_alarm_actions/3,
         disable_insight_rules/2,
         disable_insight_rules/3,
         enable_alarm_actions/2,
         enable_alarm_actions/3,
         enable_insight_rules/2,
         enable_insight_rules/3,
         get_dashboard/2,
         get_dashboard/3,
         get_insight_rule_report/2,
         get_insight_rule_report/3,
         get_metric_data/2,
         get_metric_data/3,
         get_metric_statistics/2,
         get_metric_statistics/3,
         get_metric_stream/2,
         get_metric_stream/3,
         get_metric_widget_image/2,
         get_metric_widget_image/3,
         list_dashboards/2,
         list_dashboards/3,
         list_managed_insight_rules/2,
         list_managed_insight_rules/3,
         list_metric_streams/2,
         list_metric_streams/3,
         list_metrics/2,
         list_metrics/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_anomaly_detector/2,
         put_anomaly_detector/3,
         put_composite_alarm/2,
         put_composite_alarm/3,
         put_dashboard/2,
         put_dashboard/3,
         put_insight_rule/2,
         put_insight_rule/3,
         put_managed_insight_rules/2,
         put_managed_insight_rules/3,
         put_metric_alarm/2,
         put_metric_alarm/3,
         put_metric_data/2,
         put_metric_data/3,
         put_metric_stream/2,
         put_metric_stream/3,
         set_alarm_state/2,
         set_alarm_state/3,
         start_metric_streams/2,
         start_metric_streams/3,
         stop_metric_streams/2,
         stop_metric_streams/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% enable_insight_rules_input() :: #{
%%   <<"RuleNames">> := list(string())
%% }
-type enable_insight_rules_input() :: #{binary() => any()}.

%% Example:
%% delete_dashboards_output() :: #{

%% }
-type delete_dashboards_output() :: #{binary() => any()}.

%% Example:
%% metric_stream_filter() :: #{
%%   <<"MetricNames">> => list(string()),
%%   <<"Namespace">> => string()
%% }
-type metric_stream_filter() :: #{binary() => any()}.

%% Example:
%% resource_not_found() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found() :: #{binary() => any()}.

%% Example:
%% range() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type range() :: #{binary() => any()}.

%% Example:
%% managed_rule() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TemplateName">> => string()
%% }
-type managed_rule() :: #{binary() => any()}.

%% Example:
%% start_metric_streams_input() :: #{
%%   <<"Names">> := list(string())
%% }
-type start_metric_streams_input() :: #{binary() => any()}.

%% Example:
%% label_options() :: #{
%%   <<"Timezone">> => string()
%% }
-type label_options() :: #{binary() => any()}.

%% Example:
%% dashboard_not_found_error() :: #{
%%   <<"message">> => string()
%% }
-type dashboard_not_found_error() :: #{binary() => any()}.

%% Example:
%% put_insight_rule_input() :: #{
%%   <<"ApplyOnTransformedLogs">> => boolean(),
%%   <<"RuleDefinition">> := string(),
%%   <<"RuleName">> := string(),
%%   <<"RuleState">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type put_insight_rule_input() :: #{binary() => any()}.

%% Example:
%% put_composite_alarm_input() :: #{
%%   <<"ActionsEnabled">> => boolean(),
%%   <<"ActionsSuppressor">> => string(),
%%   <<"ActionsSuppressorExtensionPeriod">> => integer(),
%%   <<"ActionsSuppressorWaitPeriod">> => integer(),
%%   <<"AlarmActions">> => list(string()),
%%   <<"AlarmDescription">> => string(),
%%   <<"AlarmName">> := string(),
%%   <<"AlarmRule">> := string(),
%%   <<"InsufficientDataActions">> => list(string()),
%%   <<"OKActions">> => list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type put_composite_alarm_input() :: #{binary() => any()}.

%% Example:
%% delete_anomaly_detector_input() :: #{
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MetricMathAnomalyDetector">> => metric_math_anomaly_detector(),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"SingleMetricAnomalyDetector">> => single_metric_anomaly_detector(),
%%   <<"Stat">> => string()
%% }
-type delete_anomaly_detector_input() :: #{binary() => any()}.

%% Example:
%% get_insight_rule_report_output() :: #{
%%   <<"AggregateValue">> => float(),
%%   <<"AggregationStatistic">> => string(),
%%   <<"ApproximateUniqueCount">> => float(),
%%   <<"Contributors">> => list(insight_rule_contributor()),
%%   <<"KeyLabels">> => list(string()),
%%   <<"MetricDatapoints">> => list(insight_rule_metric_datapoint())
%% }
-type get_insight_rule_report_output() :: #{binary() => any()}.

%% Example:
%% alarm_history_item() :: #{
%%   <<"AlarmContributorAttributes">> => map(),
%%   <<"AlarmContributorId">> => string(),
%%   <<"AlarmName">> => string(),
%%   <<"AlarmType">> => list(any()),
%%   <<"HistoryData">> => string(),
%%   <<"HistoryItemType">> => list(any()),
%%   <<"HistorySummary">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type alarm_history_item() :: #{binary() => any()}.

%% Example:
%% entity() :: #{
%%   <<"Attributes">> => map(),
%%   <<"KeyAttributes">> => map()
%% }
-type entity() :: #{binary() => any()}.

%% Example:
%% delete_dashboards_input() :: #{
%%   <<"DashboardNames">> := list(string())
%% }
-type delete_dashboards_input() :: #{binary() => any()}.

%% Example:
%% enable_insight_rules_output() :: #{
%%   <<"Failures">> => list(partial_failure())
%% }
-type enable_insight_rules_output() :: #{binary() => any()}.

%% Example:
%% get_insight_rule_report_input() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"MaxContributorCount">> => integer(),
%%   <<"Metrics">> => list(string()),
%%   <<"OrderBy">> => string(),
%%   <<"Period">> := integer(),
%%   <<"RuleName">> := string(),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_insight_rule_report_input() :: #{binary() => any()}.

%% Example:
%% metric() :: #{
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string()
%% }
-type metric() :: #{binary() => any()}.

%% Example:
%% anomaly_detector_configuration() :: #{
%%   <<"ExcludedTimeRanges">> => list(range()),
%%   <<"MetricTimezone">> => string()
%% }
-type anomaly_detector_configuration() :: #{binary() => any()}.

%% Example:
%% delete_metric_stream_input() :: #{
%%   <<"Name">> := string()
%% }
-type delete_metric_stream_input() :: #{binary() => any()}.

%% Example:
%% put_metric_stream_output() :: #{
%%   <<"Arn">> => string()
%% }
-type put_metric_stream_output() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% disable_alarm_actions_input() :: #{
%%   <<"AlarmNames">> := list(string())
%% }
-type disable_alarm_actions_input() :: #{binary() => any()}.

%% Example:
%% missing_required_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type missing_required_parameter_exception() :: #{binary() => any()}.

%% Example:
%% list_managed_insight_rules_output() :: #{
%%   <<"ManagedRules">> => list(managed_rule_description()),
%%   <<"NextToken">> => string()
%% }
-type list_managed_insight_rules_output() :: #{binary() => any()}.

%% Example:
%% list_metrics_input() :: #{
%%   <<"Dimensions">> => list(dimension_filter()),
%%   <<"IncludeLinkedAccounts">> => boolean(),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"OwningAccount">> => string(),
%%   <<"RecentlyActive">> => list(any())
%% }
-type list_metrics_input() :: #{binary() => any()}.

%% Example:
%% get_metric_widget_image_output() :: #{
%%   <<"MetricWidgetImage">> => binary()
%% }
-type get_metric_widget_image_output() :: #{binary() => any()}.

%% Example:
%% get_metric_widget_image_input() :: #{
%%   <<"MetricWidget">> := string(),
%%   <<"OutputFormat">> => string()
%% }
-type get_metric_widget_image_input() :: #{binary() => any()}.

%% Example:
%% managed_rule_state() :: #{
%%   <<"RuleName">> => string(),
%%   <<"State">> => string()
%% }
-type managed_rule_state() :: #{binary() => any()}.

%% Example:
%% metric_stream_entry() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"FirehoseArn">> => string(),
%%   <<"LastUpdateDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OutputFormat">> => list(any()),
%%   <<"State">> => string()
%% }
-type metric_stream_entry() :: #{binary() => any()}.

%% Example:
%% metric_stream_statistics_configuration() :: #{
%%   <<"AdditionalStatistics">> => list(string()),
%%   <<"IncludeMetrics">> => list(metric_stream_statistics_metric())
%% }
-type metric_stream_statistics_configuration() :: #{binary() => any()}.

%% Example:
%% put_managed_insight_rules_input() :: #{
%%   <<"ManagedRules">> := list(managed_rule())
%% }
-type put_managed_insight_rules_input() :: #{binary() => any()}.

%% Example:
%% put_managed_insight_rules_output() :: #{
%%   <<"Failures">> => list(partial_failure())
%% }
-type put_managed_insight_rules_output() :: #{binary() => any()}.

%% Example:
%% list_dashboards_input() :: #{
%%   <<"DashboardNamePrefix">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_dashboards_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% describe_alarms_input() :: #{
%%   <<"ActionPrefix">> => string(),
%%   <<"AlarmNamePrefix">> => string(),
%%   <<"AlarmNames">> => list(string()),
%%   <<"AlarmTypes">> => list(list(any())()),
%%   <<"ChildrenOfAlarmName">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ParentsOfAlarmName">> => string(),
%%   <<"StateValue">> => list(any())
%% }
-type describe_alarms_input() :: #{binary() => any()}.

%% Example:
%% describe_alarms_output() :: #{
%%   <<"CompositeAlarms">> => list(composite_alarm()),
%%   <<"MetricAlarms">> => list(metric_alarm()),
%%   <<"NextToken">> => string()
%% }
-type describe_alarms_output() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_combination_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_combination_exception() :: #{binary() => any()}.

%% Example:
%% describe_alarm_history_input() :: #{
%%   <<"AlarmContributorId">> => string(),
%%   <<"AlarmName">> => string(),
%%   <<"AlarmTypes">> => list(list(any())()),
%%   <<"EndDate">> => non_neg_integer(),
%%   <<"HistoryItemType">> => list(any()),
%%   <<"MaxRecords">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ScanBy">> => list(any()),
%%   <<"StartDate">> => non_neg_integer()
%% }
-type describe_alarm_history_input() :: #{binary() => any()}.

%% Example:
%% put_insight_rule_output() :: #{

%% }
-type put_insight_rule_output() :: #{binary() => any()}.

%% Example:
%% put_anomaly_detector_input() :: #{
%%   <<"Configuration">> => anomaly_detector_configuration(),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MetricCharacteristics">> => metric_characteristics(),
%%   <<"MetricMathAnomalyDetector">> => metric_math_anomaly_detector(),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"SingleMetricAnomalyDetector">> => single_metric_anomaly_detector(),
%%   <<"Stat">> => string()
%% }
-type put_anomaly_detector_input() :: #{binary() => any()}.

%% Example:
%% disable_insight_rules_output() :: #{
%%   <<"Failures">> => list(partial_failure())
%% }
-type disable_insight_rules_output() :: #{binary() => any()}.

%% Example:
%% metric_stream_statistics_metric() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string()
%% }
-type metric_stream_statistics_metric() :: #{binary() => any()}.

%% Example:
%% message_data() :: #{
%%   <<"Code">> => string(),
%%   <<"Value">> => string()
%% }
-type message_data() :: #{binary() => any()}.

%% Example:
%% alarm_contributor() :: #{
%%   <<"ContributorAttributes">> => map(),
%%   <<"ContributorId">> => string(),
%%   <<"StateReason">> => string(),
%%   <<"StateTransitionedTimestamp">> => non_neg_integer()
%% }
-type alarm_contributor() :: #{binary() => any()}.

%% Example:
%% stop_metric_streams_output() :: #{

%% }
-type stop_metric_streams_output() :: #{binary() => any()}.

%% Example:
%% dashboard_invalid_input_error() :: #{
%%   <<"dashboardValidationMessages">> => list(dashboard_validation_message()),
%%   <<"message">> => string()
%% }
-type dashboard_invalid_input_error() :: #{binary() => any()}.

%% Example:
%% set_alarm_state_input() :: #{
%%   <<"AlarmName">> := string(),
%%   <<"StateReason">> := string(),
%%   <<"StateReasonData">> => string(),
%%   <<"StateValue">> := list(any())
%% }
-type set_alarm_state_input() :: #{binary() => any()}.

%% Example:
%% disable_insight_rules_input() :: #{
%%   <<"RuleNames">> := list(string())
%% }
-type disable_insight_rules_input() :: #{binary() => any()}.

%% Example:
%% metric_datum() :: #{
%%   <<"Counts">> => list(float()),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MetricName">> => string(),
%%   <<"StatisticValues">> => statistic_set(),
%%   <<"StorageResolution">> => integer(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => float(),
%%   <<"Values">> => list(float())
%% }
-type metric_datum() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
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
%% put_metric_alarm_input() :: #{
%%   <<"ActionsEnabled">> => boolean(),
%%   <<"AlarmActions">> => list(string()),
%%   <<"AlarmDescription">> => string(),
%%   <<"AlarmName">> := string(),
%%   <<"ComparisonOperator">> := list(any()),
%%   <<"DatapointsToAlarm">> => integer(),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"EvaluateLowSampleCountPercentile">> => string(),
%%   <<"EvaluationPeriods">> := integer(),
%%   <<"ExtendedStatistic">> => string(),
%%   <<"InsufficientDataActions">> => list(string()),
%%   <<"MetricName">> => string(),
%%   <<"Metrics">> => list(metric_data_query()),
%%   <<"Namespace">> => string(),
%%   <<"OKActions">> => list(string()),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"Threshold">> => float(),
%%   <<"ThresholdMetricId">> => string(),
%%   <<"TreatMissingData">> => string(),
%%   <<"Unit">> => list(any())
%% }
-type put_metric_alarm_input() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% insight_rule_metric_datapoint() :: #{
%%   <<"Average">> => float(),
%%   <<"MaxContributorValue">> => float(),
%%   <<"Maximum">> => float(),
%%   <<"Minimum">> => float(),
%%   <<"SampleCount">> => float(),
%%   <<"Sum">> => float(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"UniqueContributors">> => float()
%% }
-type insight_rule_metric_datapoint() :: #{binary() => any()}.

%% Example:
%% datapoint() :: #{
%%   <<"Average">> => float(),
%%   <<"ExtendedStatistics">> => map(),
%%   <<"Maximum">> => float(),
%%   <<"Minimum">> => float(),
%%   <<"SampleCount">> => float(),
%%   <<"Sum">> => float(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Unit">> => list(any())
%% }
-type datapoint() :: #{binary() => any()}.

%% Example:
%% metric_data_query() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Expression">> => string(),
%%   <<"Id">> => string(),
%%   <<"Label">> => string(),
%%   <<"MetricStat">> => metric_stat(),
%%   <<"Period">> => integer(),
%%   <<"ReturnData">> => boolean()
%% }
-type metric_data_query() :: #{binary() => any()}.

%% Example:
%% dashboard_entry() :: #{
%%   <<"DashboardArn">> => string(),
%%   <<"DashboardName">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"Size">> => float()
%% }
-type dashboard_entry() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% single_metric_anomaly_detector() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"Stat">> => string()
%% }
-type single_metric_anomaly_detector() :: #{binary() => any()}.

%% Example:
%% metric_characteristics() :: #{
%%   <<"PeriodicSpikes">> => boolean()
%% }
-type metric_characteristics() :: #{binary() => any()}.

%% Example:
%% describe_anomaly_detectors_output() :: #{
%%   <<"AnomalyDetectors">> => list(anomaly_detector()),
%%   <<"NextToken">> => string()
%% }
-type describe_anomaly_detectors_output() :: #{binary() => any()}.

%% Example:
%% insight_rule_contributor_datapoint() :: #{
%%   <<"ApproximateValue">> => float(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type insight_rule_contributor_datapoint() :: #{binary() => any()}.

%% Example:
%% describe_anomaly_detectors_input() :: #{
%%   <<"AnomalyDetectorTypes">> => list(list(any())()),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MaxResults">> => integer(),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"NextToken">> => string()
%% }
-type describe_anomaly_detectors_input() :: #{binary() => any()}.

%% Example:
%% enable_alarm_actions_input() :: #{
%%   <<"AlarmNames">> := list(string())
%% }
-type enable_alarm_actions_input() :: #{binary() => any()}.

%% Example:
%% invalid_format_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_format_fault() :: #{binary() => any()}.

%% Example:
%% insight_rule_contributor() :: #{
%%   <<"ApproximateAggregateValue">> => float(),
%%   <<"Datapoints">> => list(insight_rule_contributor_datapoint()),
%%   <<"Keys">> => list(string())
%% }
-type insight_rule_contributor() :: #{binary() => any()}.

%% Example:
%% metric_math_anomaly_detector() :: #{
%%   <<"MetricDataQueries">> => list(metric_data_query())
%% }
-type metric_math_anomaly_detector() :: #{binary() => any()}.

%% Example:
%% get_metric_data_output() :: #{
%%   <<"Messages">> => list(message_data()),
%%   <<"MetricDataResults">> => list(metric_data_result()),
%%   <<"NextToken">> => string()
%% }
-type get_metric_data_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% list_metrics_output() :: #{
%%   <<"Metrics">> => list(metric()),
%%   <<"NextToken">> => string(),
%%   <<"OwningAccounts">> => list(string())
%% }
-type list_metrics_output() :: #{binary() => any()}.

%% Example:
%% put_metric_data_input() :: #{
%%   <<"EntityMetricData">> => list(entity_metric_data()),
%%   <<"MetricData">> => list(metric_datum()),
%%   <<"Namespace">> := string(),
%%   <<"StrictEntityValidation">> => boolean()
%% }
-type put_metric_data_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{

%% }
-type tag_resource_output() :: #{binary() => any()}.

%% Example:
%% get_metric_stream_input() :: #{
%%   <<"Name">> := string()
%% }
-type get_metric_stream_input() :: #{binary() => any()}.

%% Example:
%% list_metric_streams_output() :: #{
%%   <<"Entries">> => list(metric_stream_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_metric_streams_output() :: #{binary() => any()}.

%% Example:
%% get_metric_stream_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"ExcludeFilters">> => list(metric_stream_filter()),
%%   <<"FirehoseArn">> => string(),
%%   <<"IncludeFilters">> => list(metric_stream_filter()),
%%   <<"IncludeLinkedAccountsMetrics">> => boolean(),
%%   <<"LastUpdateDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OutputFormat">> => list(any()),
%%   <<"RoleArn">> => string(),
%%   <<"State">> => string(),
%%   <<"StatisticsConfigurations">> => list(metric_stream_statistics_configuration())
%% }
-type get_metric_stream_output() :: #{binary() => any()}.

%% Example:
%% describe_alarms_for_metric_input() :: #{
%%   <<"Dimensions">> => list(dimension()),
%%   <<"ExtendedStatistic">> => string(),
%%   <<"MetricName">> := string(),
%%   <<"Namespace">> := string(),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Unit">> => list(any())
%% }
-type describe_alarms_for_metric_input() :: #{binary() => any()}.

%% Example:
%% delete_alarms_input() :: #{
%%   <<"AlarmNames">> := list(string())
%% }
-type delete_alarms_input() :: #{binary() => any()}.

%% Example:
%% put_metric_stream_input() :: #{
%%   <<"ExcludeFilters">> => list(metric_stream_filter()),
%%   <<"FirehoseArn">> := string(),
%%   <<"IncludeFilters">> => list(metric_stream_filter()),
%%   <<"IncludeLinkedAccountsMetrics">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"OutputFormat">> := list(any()),
%%   <<"RoleArn">> := string(),
%%   <<"StatisticsConfigurations">> => list(metric_stream_statistics_configuration()),
%%   <<"Tags">> => list(tag())
%% }
-type put_metric_stream_input() :: #{binary() => any()}.

%% Example:
%% put_dashboard_output() :: #{
%%   <<"DashboardValidationMessages">> => list(dashboard_validation_message())
%% }
-type put_dashboard_output() :: #{binary() => any()}.

%% Example:
%% start_metric_streams_output() :: #{

%% }
-type start_metric_streams_output() :: #{binary() => any()}.

%% Example:
%% dashboard_validation_message() :: #{
%%   <<"DataPath">> => string(),
%%   <<"Message">> => string()
%% }
-type dashboard_validation_message() :: #{binary() => any()}.

%% Example:
%% delete_anomaly_detector_output() :: #{

%% }
-type delete_anomaly_detector_output() :: #{binary() => any()}.

%% Example:
%% managed_rule_description() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"RuleState">> => managed_rule_state(),
%%   <<"TemplateName">> => string()
%% }
-type managed_rule_description() :: #{binary() => any()}.

%% Example:
%% describe_alarm_contributors_output() :: #{
%%   <<"AlarmContributors">> => list(alarm_contributor()),
%%   <<"NextToken">> => string()
%% }
-type describe_alarm_contributors_output() :: #{binary() => any()}.

%% Example:
%% get_metric_statistics_output() :: #{
%%   <<"Datapoints">> => list(datapoint()),
%%   <<"Label">> => string()
%% }
-type get_metric_statistics_output() :: #{binary() => any()}.

%% Example:
%% list_metric_streams_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_metric_streams_input() :: #{binary() => any()}.

%% Example:
%% delete_insight_rules_input() :: #{
%%   <<"RuleNames">> := list(string())
%% }
-type delete_insight_rules_input() :: #{binary() => any()}.

%% Example:
%% delete_metric_stream_output() :: #{

%% }
-type delete_metric_stream_output() :: #{binary() => any()}.

%% Example:
%% metric_stat() :: #{
%%   <<"Metric">> => metric(),
%%   <<"Period">> => integer(),
%%   <<"Stat">> => string(),
%%   <<"Unit">> => list(any())
%% }
-type metric_stat() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% insight_rule() :: #{
%%   <<"ApplyOnTransformedLogs">> => boolean(),
%%   <<"Definition">> => string(),
%%   <<"ManagedRule">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Schema">> => string(),
%%   <<"State">> => string()
%% }
-type insight_rule() :: #{binary() => any()}.

%% Example:
%% list_dashboards_output() :: #{
%%   <<"DashboardEntries">> => list(dashboard_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_dashboards_output() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{

%% }
-type untag_resource_output() :: #{binary() => any()}.

%% Example:
%% get_metric_data_input() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"LabelOptions">> => label_options(),
%%   <<"MaxDatapoints">> => integer(),
%%   <<"MetricDataQueries">> := list(metric_data_query()),
%%   <<"NextToken">> => string(),
%%   <<"ScanBy">> => list(any()),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_metric_data_input() :: #{binary() => any()}.

%% Example:
%% describe_alarm_history_output() :: #{
%%   <<"AlarmHistoryItems">> => list(alarm_history_item()),
%%   <<"NextToken">> => string()
%% }
-type describe_alarm_history_output() :: #{binary() => any()}.

%% Example:
%% composite_alarm() :: #{
%%   <<"ActionsEnabled">> => boolean(),
%%   <<"ActionsSuppressedBy">> => list(any()),
%%   <<"ActionsSuppressedReason">> => string(),
%%   <<"ActionsSuppressor">> => string(),
%%   <<"ActionsSuppressorExtensionPeriod">> => integer(),
%%   <<"ActionsSuppressorWaitPeriod">> => integer(),
%%   <<"AlarmActions">> => list(string()),
%%   <<"AlarmArn">> => string(),
%%   <<"AlarmConfigurationUpdatedTimestamp">> => non_neg_integer(),
%%   <<"AlarmDescription">> => string(),
%%   <<"AlarmName">> => string(),
%%   <<"AlarmRule">> => string(),
%%   <<"InsufficientDataActions">> => list(string()),
%%   <<"OKActions">> => list(string()),
%%   <<"StateReason">> => string(),
%%   <<"StateReasonData">> => string(),
%%   <<"StateTransitionedTimestamp">> => non_neg_integer(),
%%   <<"StateUpdatedTimestamp">> => non_neg_integer(),
%%   <<"StateValue">> => list(any())
%% }
-type composite_alarm() :: #{binary() => any()}.

%% Example:
%% describe_alarm_contributors_input() :: #{
%%   <<"AlarmName">> := string(),
%%   <<"NextToken">> => string()
%% }
-type describe_alarm_contributors_input() :: #{binary() => any()}.

%% Example:
%% get_dashboard_output() :: #{
%%   <<"DashboardArn">> => string(),
%%   <<"DashboardBody">> => string(),
%%   <<"DashboardName">> => string()
%% }
-type get_dashboard_output() :: #{binary() => any()}.

%% Example:
%% metric_alarm() :: #{
%%   <<"ActionsEnabled">> => boolean(),
%%   <<"AlarmActions">> => list(string()),
%%   <<"AlarmArn">> => string(),
%%   <<"AlarmConfigurationUpdatedTimestamp">> => non_neg_integer(),
%%   <<"AlarmDescription">> => string(),
%%   <<"AlarmName">> => string(),
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"DatapointsToAlarm">> => integer(),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"EvaluateLowSampleCountPercentile">> => string(),
%%   <<"EvaluationPeriods">> => integer(),
%%   <<"EvaluationState">> => list(any()),
%%   <<"ExtendedStatistic">> => string(),
%%   <<"InsufficientDataActions">> => list(string()),
%%   <<"MetricName">> => string(),
%%   <<"Metrics">> => list(metric_data_query()),
%%   <<"Namespace">> => string(),
%%   <<"OKActions">> => list(string()),
%%   <<"Period">> => integer(),
%%   <<"StateReason">> => string(),
%%   <<"StateReasonData">> => string(),
%%   <<"StateTransitionedTimestamp">> => non_neg_integer(),
%%   <<"StateUpdatedTimestamp">> => non_neg_integer(),
%%   <<"StateValue">> => list(any()),
%%   <<"Statistic">> => list(any()),
%%   <<"Threshold">> => float(),
%%   <<"ThresholdMetricId">> => string(),
%%   <<"TreatMissingData">> => string(),
%%   <<"Unit">> => list(any())
%% }
-type metric_alarm() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% dimension() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type dimension() :: #{binary() => any()}.

%% Example:
%% internal_service_fault() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_fault() :: #{binary() => any()}.

%% Example:
%% anomaly_detector() :: #{
%%   <<"Configuration">> => anomaly_detector_configuration(),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MetricCharacteristics">> => metric_characteristics(),
%%   <<"MetricMathAnomalyDetector">> => metric_math_anomaly_detector(),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"SingleMetricAnomalyDetector">> => single_metric_anomaly_detector(),
%%   <<"Stat">> => string(),
%%   <<"StateValue">> => list(any())
%% }
-type anomaly_detector() :: #{binary() => any()}.

%% Example:
%% put_anomaly_detector_output() :: #{

%% }
-type put_anomaly_detector_output() :: #{binary() => any()}.

%% Example:
%% describe_alarms_for_metric_output() :: #{
%%   <<"MetricAlarms">> => list(metric_alarm())
%% }
-type describe_alarms_for_metric_output() :: #{binary() => any()}.

%% Example:
%% dimension_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type dimension_filter() :: #{binary() => any()}.

%% Example:
%% list_managed_insight_rules_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceARN">> := string()
%% }
-type list_managed_insight_rules_input() :: #{binary() => any()}.

%% Example:
%% put_dashboard_input() :: #{
%%   <<"DashboardBody">> := string(),
%%   <<"DashboardName">> := string()
%% }
-type put_dashboard_input() :: #{binary() => any()}.

%% Example:
%% describe_insight_rules_output() :: #{
%%   <<"InsightRules">> => list(insight_rule()),
%%   <<"NextToken">> => string()
%% }
-type describe_insight_rules_output() :: #{binary() => any()}.

%% Example:
%% stop_metric_streams_input() :: #{
%%   <<"Names">> := list(string())
%% }
-type stop_metric_streams_input() :: #{binary() => any()}.

%% Example:
%% invalid_next_token() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token() :: #{binary() => any()}.

%% Example:
%% metric_data_result() :: #{
%%   <<"Id">> => string(),
%%   <<"Label">> => string(),
%%   <<"Messages">> => list(message_data()),
%%   <<"StatusCode">> => list(any()),
%%   <<"Timestamps">> => list(non_neg_integer()),
%%   <<"Values">> => list(float())
%% }
-type metric_data_result() :: #{binary() => any()}.

%% Example:
%% partial_failure() :: #{
%%   <<"ExceptionType">> => string(),
%%   <<"FailureCode">> => string(),
%%   <<"FailureDescription">> => string(),
%%   <<"FailureResource">> => string()
%% }
-type partial_failure() :: #{binary() => any()}.

%% Example:
%% describe_insight_rules_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_insight_rules_input() :: #{binary() => any()}.

%% Example:
%% entity_metric_data() :: #{
%%   <<"Entity">> => entity(),
%%   <<"MetricData">> => list(metric_datum())
%% }
-type entity_metric_data() :: #{binary() => any()}.

%% Example:
%% get_dashboard_input() :: #{
%%   <<"DashboardName">> := string()
%% }
-type get_dashboard_input() :: #{binary() => any()}.

%% Example:
%% statistic_set() :: #{
%%   <<"Maximum">> => float(),
%%   <<"Minimum">> => float(),
%%   <<"SampleCount">> => float(),
%%   <<"Sum">> => float()
%% }
-type statistic_set() :: #{binary() => any()}.

%% Example:
%% get_metric_statistics_input() :: #{
%%   <<"Dimensions">> => list(dimension()),
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"ExtendedStatistics">> => list(string()),
%%   <<"MetricName">> := string(),
%%   <<"Namespace">> := string(),
%%   <<"Period">> := integer(),
%%   <<"StartTime">> := non_neg_integer(),
%%   <<"Statistics">> => list(list(any())()),
%%   <<"Unit">> => list(any())
%% }
-type get_metric_statistics_input() :: #{binary() => any()}.

%% Example:
%% delete_insight_rules_output() :: #{
%%   <<"Failures">> => list(partial_failure())
%% }
-type delete_insight_rules_output() :: #{binary() => any()}.

-type delete_alarms_errors() ::
    resource_not_found().

-type delete_anomaly_detector_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception() | 
    missing_required_parameter_exception().

-type delete_dashboards_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    conflict_exception() | 
    dashboard_not_found_error().

-type delete_insight_rules_errors() ::
    invalid_parameter_value_exception() | 
    missing_required_parameter_exception().

-type delete_metric_stream_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    missing_required_parameter_exception().

-type describe_alarm_contributors_errors() ::
    invalid_next_token() | 
    resource_not_found_exception().

-type describe_alarm_history_errors() ::
    invalid_next_token().

-type describe_alarms_errors() ::
    invalid_next_token().

-type describe_anomaly_detectors_errors() ::
    invalid_next_token() | 
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception().

-type describe_insight_rules_errors() ::
    invalid_next_token().

-type disable_insight_rules_errors() ::
    invalid_parameter_value_exception() | 
    missing_required_parameter_exception().

-type enable_insight_rules_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    missing_required_parameter_exception().

-type get_dashboard_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    dashboard_not_found_error().

-type get_insight_rule_report_errors() ::
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_required_parameter_exception().

-type get_metric_data_errors() ::
    invalid_next_token().

-type get_metric_statistics_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    missing_required_parameter_exception().

-type get_metric_stream_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception() | 
    missing_required_parameter_exception().

-type list_dashboards_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception().

-type list_managed_insight_rules_errors() ::
    invalid_next_token() | 
    invalid_parameter_value_exception() | 
    missing_required_parameter_exception().

-type list_metric_streams_errors() ::
    invalid_next_token() | 
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    missing_required_parameter_exception().

-type list_metrics_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception().

-type list_tags_for_resource_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type put_anomaly_detector_errors() ::
    internal_service_fault() | 
    limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    missing_required_parameter_exception().

-type put_composite_alarm_errors() ::
    limit_exceeded_fault().

-type put_dashboard_errors() ::
    internal_service_fault() | 
    conflict_exception() | 
    dashboard_invalid_input_error().

-type put_insight_rule_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    missing_required_parameter_exception().

-type put_managed_insight_rules_errors() ::
    invalid_parameter_value_exception() | 
    missing_required_parameter_exception().

-type put_metric_alarm_errors() ::
    limit_exceeded_fault().

-type put_metric_data_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    missing_required_parameter_exception().

-type put_metric_stream_errors() ::
    internal_service_fault() | 
    concurrent_modification_exception() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    missing_required_parameter_exception().

-type set_alarm_state_errors() ::
    invalid_format_fault() | 
    resource_not_found().

-type start_metric_streams_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    missing_required_parameter_exception().

-type stop_metric_streams_errors() ::
    internal_service_fault() | 
    invalid_parameter_value_exception() | 
    missing_required_parameter_exception().

-type tag_resource_errors() ::
    internal_service_fault() | 
    concurrent_modification_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    internal_service_fault() | 
    concurrent_modification_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified alarms.
%%
%% You can delete up to 100 alarms in one operation.
%% However, this total can include no more than one composite alarm. For
%% example, you could
%% delete 99 metric alarms and one composite alarms with one operation, but
%% you can't
%% delete two composite alarms with one operation.
%%
%% If you specify any incorrect alarm names, the alarms you specify with
%% correct names are still deleted. Other syntax errors might result
%% in no alarms being deleted. To confirm that alarms were deleted
%% successfully, you can use the
%% DescribeAlarms:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html
%% operation after using `DeleteAlarms'.
%%
%% It is possible to create a loop or cycle of composite alarms, where
%% composite
%% alarm A depends on composite alarm B, and composite alarm B also depends
%% on
%% composite alarm A. In this scenario, you can't delete any composite
%% alarm that is
%% part of the cycle because there is always still a composite alarm that
%% depends on
%% that alarm that you want to delete.
%%
%% To get out of such a situation, you must break the cycle by changing the
%% rule of
%% one of the composite alarms in the cycle to remove a dependency that
%% creates the
%% cycle. The simplest change to make to break a cycle is to change the
%% `AlarmRule' of one of the alarms to `false'.
%%
%% Additionally, the evaluation of composite alarms stops if CloudWatch
%% detects a cycle in the evaluation path.
-spec delete_alarms(aws_client:aws_client(), delete_alarms_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_alarms_errors(), tuple()}.
delete_alarms(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alarms(Client, Input, []).

-spec delete_alarms(aws_client:aws_client(), delete_alarms_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_alarms_errors(), tuple()}.
delete_alarms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlarms">>, Input, Options).

%% @doc Deletes the specified anomaly detection model from your account.
%%
%% For more information
%% about how to delete an anomaly detection model, see Deleting an anomaly
%% detection model:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Anomaly_Detection_Alarm.html#Delete_Anomaly_Detection_Model
%% in the CloudWatch User
%% Guide.
-spec delete_anomaly_detector(aws_client:aws_client(), delete_anomaly_detector_input()) ->
    {ok, delete_anomaly_detector_output(), tuple()} |
    {error, any()} |
    {error, delete_anomaly_detector_errors(), tuple()}.
delete_anomaly_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_anomaly_detector(Client, Input, []).

-spec delete_anomaly_detector(aws_client:aws_client(), delete_anomaly_detector_input(), proplists:proplist()) ->
    {ok, delete_anomaly_detector_output(), tuple()} |
    {error, any()} |
    {error, delete_anomaly_detector_errors(), tuple()}.
delete_anomaly_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAnomalyDetector">>, Input, Options).

%% @doc Deletes all dashboards that you specify.
%%
%% You can specify up to 100 dashboards to
%% delete. If there is an error during this call, no dashboards are deleted.
-spec delete_dashboards(aws_client:aws_client(), delete_dashboards_input()) ->
    {ok, delete_dashboards_output(), tuple()} |
    {error, any()} |
    {error, delete_dashboards_errors(), tuple()}.
delete_dashboards(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dashboards(Client, Input, []).

-spec delete_dashboards(aws_client:aws_client(), delete_dashboards_input(), proplists:proplist()) ->
    {ok, delete_dashboards_output(), tuple()} |
    {error, any()} |
    {error, delete_dashboards_errors(), tuple()}.
delete_dashboards(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDashboards">>, Input, Options).

%% @doc Permanently deletes the specified Contributor Insights rules.
%%
%% If you create a rule, delete it, and then re-create it with the same name,
%% historical
%% data from the first time the rule was created might not be available.
-spec delete_insight_rules(aws_client:aws_client(), delete_insight_rules_input()) ->
    {ok, delete_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, delete_insight_rules_errors(), tuple()}.
delete_insight_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_insight_rules(Client, Input, []).

-spec delete_insight_rules(aws_client:aws_client(), delete_insight_rules_input(), proplists:proplist()) ->
    {ok, delete_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, delete_insight_rules_errors(), tuple()}.
delete_insight_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInsightRules">>, Input, Options).

%% @doc Permanently deletes the metric stream that you specify.
-spec delete_metric_stream(aws_client:aws_client(), delete_metric_stream_input()) ->
    {ok, delete_metric_stream_output(), tuple()} |
    {error, any()} |
    {error, delete_metric_stream_errors(), tuple()}.
delete_metric_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_metric_stream(Client, Input, []).

-spec delete_metric_stream(aws_client:aws_client(), delete_metric_stream_input(), proplists:proplist()) ->
    {ok, delete_metric_stream_output(), tuple()} |
    {error, any()} |
    {error, delete_metric_stream_errors(), tuple()}.
delete_metric_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMetricStream">>, Input, Options).

%% @doc Returns the information of the current alarm contributors that are in
%% `ALARM' state.
%%
%% This operation returns details about the individual time series that
%% contribute to the alarm's state.
-spec describe_alarm_contributors(aws_client:aws_client(), describe_alarm_contributors_input()) ->
    {ok, describe_alarm_contributors_output(), tuple()} |
    {error, any()} |
    {error, describe_alarm_contributors_errors(), tuple()}.
describe_alarm_contributors(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_alarm_contributors(Client, Input, []).

-spec describe_alarm_contributors(aws_client:aws_client(), describe_alarm_contributors_input(), proplists:proplist()) ->
    {ok, describe_alarm_contributors_output(), tuple()} |
    {error, any()} |
    {error, describe_alarm_contributors_errors(), tuple()}.
describe_alarm_contributors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlarmContributors">>, Input, Options).

%% @doc Retrieves the history for the specified alarm.
%%
%% You can filter the results by date
%% range or item type. If an alarm name is not specified, the histories for
%% either all
%% metric alarms or all composite alarms are returned.
%%
%% CloudWatch retains the history of an alarm even if you delete the alarm.
%%
%% To use this operation and return information about a composite alarm, you
%% must be
%% signed on with the `cloudwatch:DescribeAlarmHistory' permission that
%% is
%% scoped to `*'. You can't return information about composite alarms
%% if your
%% `cloudwatch:DescribeAlarmHistory' permission has a narrower scope.
-spec describe_alarm_history(aws_client:aws_client(), describe_alarm_history_input()) ->
    {ok, describe_alarm_history_output(), tuple()} |
    {error, any()} |
    {error, describe_alarm_history_errors(), tuple()}.
describe_alarm_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_alarm_history(Client, Input, []).

-spec describe_alarm_history(aws_client:aws_client(), describe_alarm_history_input(), proplists:proplist()) ->
    {ok, describe_alarm_history_output(), tuple()} |
    {error, any()} |
    {error, describe_alarm_history_errors(), tuple()}.
describe_alarm_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlarmHistory">>, Input, Options).

%% @doc Retrieves the specified alarms.
%%
%% You can filter the results by specifying a prefix
%% for the alarm name, the alarm state, or a prefix for any action.
%%
%% To use this operation and return information about composite alarms, you
%% must be
%% signed on with the `cloudwatch:DescribeAlarms' permission that is
%% scoped to
%% `*'. You can't return information about composite alarms if your
%% `cloudwatch:DescribeAlarms' permission has a narrower scope.
-spec describe_alarms(aws_client:aws_client(), describe_alarms_input()) ->
    {ok, describe_alarms_output(), tuple()} |
    {error, any()} |
    {error, describe_alarms_errors(), tuple()}.
describe_alarms(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_alarms(Client, Input, []).

-spec describe_alarms(aws_client:aws_client(), describe_alarms_input(), proplists:proplist()) ->
    {ok, describe_alarms_output(), tuple()} |
    {error, any()} |
    {error, describe_alarms_errors(), tuple()}.
describe_alarms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlarms">>, Input, Options).

%% @doc Retrieves the alarms for the specified metric.
%%
%% To filter the results, specify a
%% statistic, period, or unit.
%%
%% This operation retrieves only standard alarms that are based on the
%% specified
%% metric. It does not return alarms based on math expressions that use the
%% specified
%% metric, or composite alarms that use the specified metric.
-spec describe_alarms_for_metric(aws_client:aws_client(), describe_alarms_for_metric_input()) ->
    {ok, describe_alarms_for_metric_output(), tuple()} |
    {error, any()}.
describe_alarms_for_metric(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_alarms_for_metric(Client, Input, []).

-spec describe_alarms_for_metric(aws_client:aws_client(), describe_alarms_for_metric_input(), proplists:proplist()) ->
    {ok, describe_alarms_for_metric_output(), tuple()} |
    {error, any()}.
describe_alarms_for_metric(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlarmsForMetric">>, Input, Options).

%% @doc Lists the anomaly detection models that you have created in your
%% account.
%%
%% For single
%% metric anomaly detectors, you can list all of the models in your account
%% or filter the
%% results to only the models that are related to a certain namespace, metric
%% name, or
%% metric dimension. For metric math anomaly detectors, you can list them by
%% adding
%% `METRIC_MATH' to the `AnomalyDetectorTypes' array. This will
%% return all metric math anomaly detectors in your account.
-spec describe_anomaly_detectors(aws_client:aws_client(), describe_anomaly_detectors_input()) ->
    {ok, describe_anomaly_detectors_output(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_detectors_errors(), tuple()}.
describe_anomaly_detectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_anomaly_detectors(Client, Input, []).

-spec describe_anomaly_detectors(aws_client:aws_client(), describe_anomaly_detectors_input(), proplists:proplist()) ->
    {ok, describe_anomaly_detectors_output(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_detectors_errors(), tuple()}.
describe_anomaly_detectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAnomalyDetectors">>, Input, Options).

%% @doc Returns a list of all the Contributor Insights rules in your account.
%%
%% For more information about Contributor Insights, see Using Contributor
%% Insights to Analyze High-Cardinality Data:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html.
-spec describe_insight_rules(aws_client:aws_client(), describe_insight_rules_input()) ->
    {ok, describe_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, describe_insight_rules_errors(), tuple()}.
describe_insight_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_insight_rules(Client, Input, []).

-spec describe_insight_rules(aws_client:aws_client(), describe_insight_rules_input(), proplists:proplist()) ->
    {ok, describe_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, describe_insight_rules_errors(), tuple()}.
describe_insight_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInsightRules">>, Input, Options).

%% @doc Disables the actions for the specified alarms.
%%
%% When an alarm's actions are
%% disabled, the alarm actions do not execute when the alarm state changes.
-spec disable_alarm_actions(aws_client:aws_client(), disable_alarm_actions_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
disable_alarm_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_alarm_actions(Client, Input, []).

-spec disable_alarm_actions(aws_client:aws_client(), disable_alarm_actions_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
disable_alarm_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAlarmActions">>, Input, Options).

%% @doc Disables the specified Contributor Insights rules.
%%
%% When rules are disabled, they do
%% not analyze log groups and do not incur costs.
-spec disable_insight_rules(aws_client:aws_client(), disable_insight_rules_input()) ->
    {ok, disable_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, disable_insight_rules_errors(), tuple()}.
disable_insight_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_insight_rules(Client, Input, []).

-spec disable_insight_rules(aws_client:aws_client(), disable_insight_rules_input(), proplists:proplist()) ->
    {ok, disable_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, disable_insight_rules_errors(), tuple()}.
disable_insight_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableInsightRules">>, Input, Options).

%% @doc Enables the actions for the specified alarms.
-spec enable_alarm_actions(aws_client:aws_client(), enable_alarm_actions_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
enable_alarm_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_alarm_actions(Client, Input, []).

-spec enable_alarm_actions(aws_client:aws_client(), enable_alarm_actions_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
enable_alarm_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAlarmActions">>, Input, Options).

%% @doc Enables the specified Contributor Insights rules.
%%
%% When rules are enabled, they
%% immediately begin analyzing log data.
-spec enable_insight_rules(aws_client:aws_client(), enable_insight_rules_input()) ->
    {ok, enable_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, enable_insight_rules_errors(), tuple()}.
enable_insight_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_insight_rules(Client, Input, []).

-spec enable_insight_rules(aws_client:aws_client(), enable_insight_rules_input(), proplists:proplist()) ->
    {ok, enable_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, enable_insight_rules_errors(), tuple()}.
enable_insight_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableInsightRules">>, Input, Options).

%% @doc Displays the details of the dashboard that you specify.
%%
%% To copy an existing dashboard, use `GetDashboard', and then use the
%% data
%% returned within `DashboardBody' as the template for the new dashboard
%% when
%% you call `PutDashboard' to create the copy.
-spec get_dashboard(aws_client:aws_client(), get_dashboard_input()) ->
    {ok, get_dashboard_output(), tuple()} |
    {error, any()} |
    {error, get_dashboard_errors(), tuple()}.
get_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dashboard(Client, Input, []).

-spec get_dashboard(aws_client:aws_client(), get_dashboard_input(), proplists:proplist()) ->
    {ok, get_dashboard_output(), tuple()} |
    {error, any()} |
    {error, get_dashboard_errors(), tuple()}.
get_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDashboard">>, Input, Options).

%% @doc This operation returns the time series data collected by a
%% Contributor Insights rule.
%%
%% The data includes the identity and number of contributors to the log
%% group.
%%
%% You can also optionally return one or more statistics about each data
%% point in the
%% time series. These statistics can include the following:
%%
%% `UniqueContributors' -- the number of unique contributors for each
%% data point.
%%
%% `MaxContributorValue' -- the value of the top contributor for each
%% data point. The identity of the contributor might change for each data
%% point in
%% the graph.
%%
%% If this rule aggregates by COUNT, the top contributor for each data point
%% is
%% the contributor with the most occurrences in that period. If the rule
%% aggregates
%% by SUM, the top contributor is the contributor with the highest sum in the
%% log
%% field specified by the rule's `Value', during that period.
%%
%% `SampleCount' -- the number of data points matched by the
%% rule.
%%
%% `Sum' -- the sum of the values from all contributors during the
%% time period represented by that data point.
%%
%% `Minimum' -- the minimum value from a single observation during the
%% time period represented by that data point.
%%
%% `Maximum' -- the maximum value from a single observation during the
%% time period represented by that data point.
%%
%% `Average' -- the average value from all contributors during the
%% time period represented by that data point.
-spec get_insight_rule_report(aws_client:aws_client(), get_insight_rule_report_input()) ->
    {ok, get_insight_rule_report_output(), tuple()} |
    {error, any()} |
    {error, get_insight_rule_report_errors(), tuple()}.
get_insight_rule_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_insight_rule_report(Client, Input, []).

-spec get_insight_rule_report(aws_client:aws_client(), get_insight_rule_report_input(), proplists:proplist()) ->
    {ok, get_insight_rule_report_output(), tuple()} |
    {error, any()} |
    {error, get_insight_rule_report_errors(), tuple()}.
get_insight_rule_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInsightRuleReport">>, Input, Options).

%% @doc You can use the `GetMetricData' API to retrieve CloudWatch metric
%% values.
%%
%% The operation can also include a CloudWatch Metrics Insights query, and
%% one or more metric math functions.
%%
%% A `GetMetricData' operation that does not include a query can retrieve
%% as many as 500 different metrics in a single request, with a total of as
%% many as 100,800
%% data points. You can also optionally perform metric math expressions on
%% the values of
%% the returned statistics, to create new time series that represent new
%% insights into your
%% data. For example, using Lambda metrics, you could divide the Errors
%% metric by the
%% Invocations metric to get an error rate time series. For more information
%% about metric
%% math expressions, see Metric Math Syntax and Functions:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax
%% in the Amazon CloudWatch User
%% Guide.
%%
%% If you include a Metrics Insights query, each `GetMetricData'
%% operation can
%% include only one query. But the same `GetMetricData' operation can
%% also
%% retrieve other metrics. Metrics Insights queries can query only the most
%% recent three
%% hours of metric data. For more information about Metrics Insights, see
%% Query your metrics with CloudWatch Metrics Insights:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/query_with_cloudwatch-metrics-insights.html.
%%
%% Calls to the `GetMetricData' API have a different pricing structure
%% than
%% calls to `GetMetricStatistics'. For more information about pricing,
%% see
%% Amazon CloudWatch
%% Pricing: https://aws.amazon.com/cloudwatch/pricing/.
%%
%% Amazon CloudWatch retains metric data as follows:
%%
%% Data points with a period of less than 60 seconds are available for 3
%% hours. These data points are high-resolution metrics and are available
%% only for
%% custom metrics that have been defined with a `StorageResolution' of
%% 1.
%%
%% Data points with a period of 60 seconds (1-minute) are available for 15
%% days.
%%
%% Data points with a period of 300 seconds (5-minute) are available for 63
%% days.
%%
%% Data points with a period of 3600 seconds (1 hour) are available for 455
%% days (15 months).
%%
%% Data points that are initially published with a shorter period are
%% aggregated
%% together for long-term storage. For example, if you collect data using a
%% period of 1
%% minute, the data remains available for 15 days with 1-minute resolution.
%% After 15 days,
%% this data is still available, but is aggregated and retrievable only with
%% a resolution
%% of 5 minutes. After 63 days, the data is further aggregated and is
%% available with a
%% resolution of 1 hour.
%%
%% If you omit `Unit' in your request, all data that was collected with
%% any
%% unit is returned, along with the corresponding units that were specified
%% when the data
%% was reported to CloudWatch. If you specify a unit, the operation returns
%% only data that
%% was collected with that unit specified. If you specify a unit that does
%% not match the
%% data collected, the results of the operation are null. CloudWatch does not
%% perform unit
%% conversions.
%%
%% Using Metrics Insights queries with metric
%% math
%%
%% You can't mix a Metric Insights query and metric math syntax in the
%% same expression,
%% but you can reference results from a Metrics Insights query within other
%% Metric math
%% expressions. A Metrics Insights query without a GROUP
%% BY clause returns a single time-series (TS), and can be used as input for
%% a metric math expression that expects a single time series. A Metrics
%% Insights query
%% with a GROUP BY clause returns an array of time-series
%% (TS[]), and can be used as input for a metric math expression that expects
%% an array of
%% time series.
-spec get_metric_data(aws_client:aws_client(), get_metric_data_input()) ->
    {ok, get_metric_data_output(), tuple()} |
    {error, any()} |
    {error, get_metric_data_errors(), tuple()}.
get_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_metric_data(Client, Input, []).

-spec get_metric_data(aws_client:aws_client(), get_metric_data_input(), proplists:proplist()) ->
    {ok, get_metric_data_output(), tuple()} |
    {error, any()} |
    {error, get_metric_data_errors(), tuple()}.
get_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMetricData">>, Input, Options).

%% @doc Gets statistics for the specified metric.
%%
%% The maximum number of data points returned from a single call is 1,440. If
%% you
%% request more than 1,440 data points, CloudWatch returns an error. To
%% reduce the number
%% of data points, you can narrow the specified time range and make multiple
%% requests
%% across adjacent time ranges, or you can increase the specified period.
%% Data points are
%% not returned in chronological order.
%%
%% CloudWatch aggregates data points based on the length of the period that
%% you
%% specify. For example, if you request statistics with a one-hour period,
%% CloudWatch
%% aggregates all data points with time stamps that fall within each one-hour
%% period.
%% Therefore, the number of values aggregated by CloudWatch is larger than
%% the number of
%% data points returned.
%%
%% CloudWatch needs raw data points to calculate percentile statistics. If
%% you publish
%% data using a statistic set instead, you can only retrieve percentile
%% statistics for this
%% data if one of the following conditions is true:
%%
%% The SampleCount value of the statistic set is 1.
%%
%% The Min and the Max values of the statistic set are equal.
%%
%% Percentile statistics are not available for metrics when any of the metric
%% values
%% are negative numbers.
%%
%% Amazon CloudWatch retains metric data as follows:
%%
%% Data points with a period of less than 60 seconds are available for 3
%% hours. These data points are high-resolution metrics and are available
%% only for
%% custom metrics that have been defined with a `StorageResolution' of
%% 1.
%%
%% Data points with a period of 60 seconds (1-minute) are available for 15
%% days.
%%
%% Data points with a period of 300 seconds (5-minute) are available for 63
%% days.
%%
%% Data points with a period of 3600 seconds (1 hour) are available for 455
%% days (15 months).
%%
%% Data points that are initially published with a shorter period are
%% aggregated
%% together for long-term storage. For example, if you collect data using a
%% period of 1
%% minute, the data remains available for 15 days with 1-minute resolution.
%% After 15 days,
%% this data is still available, but is aggregated and retrievable only with
%% a resolution
%% of 5 minutes. After 63 days, the data is further aggregated and is
%% available with a
%% resolution of 1 hour.
%%
%% CloudWatch started retaining 5-minute and 1-hour metric data as of July 9,
%% 2016.
%%
%% For information about metrics and dimensions supported by Amazon Web
%% Services
%% services, see the Amazon CloudWatch
%% Metrics and Dimensions Reference:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html
%% in the Amazon CloudWatch User
%% Guide.
-spec get_metric_statistics(aws_client:aws_client(), get_metric_statistics_input()) ->
    {ok, get_metric_statistics_output(), tuple()} |
    {error, any()} |
    {error, get_metric_statistics_errors(), tuple()}.
get_metric_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_metric_statistics(Client, Input, []).

-spec get_metric_statistics(aws_client:aws_client(), get_metric_statistics_input(), proplists:proplist()) ->
    {ok, get_metric_statistics_output(), tuple()} |
    {error, any()} |
    {error, get_metric_statistics_errors(), tuple()}.
get_metric_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMetricStatistics">>, Input, Options).

%% @doc Returns information about the metric stream that you specify.
-spec get_metric_stream(aws_client:aws_client(), get_metric_stream_input()) ->
    {ok, get_metric_stream_output(), tuple()} |
    {error, any()} |
    {error, get_metric_stream_errors(), tuple()}.
get_metric_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_metric_stream(Client, Input, []).

-spec get_metric_stream(aws_client:aws_client(), get_metric_stream_input(), proplists:proplist()) ->
    {ok, get_metric_stream_output(), tuple()} |
    {error, any()} |
    {error, get_metric_stream_errors(), tuple()}.
get_metric_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMetricStream">>, Input, Options).

%% @doc You can use the `GetMetricWidgetImage' API to retrieve a snapshot
%% graph
%% of one or more Amazon CloudWatch metrics as a bitmap image.
%%
%% You can then embed this
%% image into your services and products, such as wiki pages, reports, and
%% documents. You
%% could also retrieve images regularly, such as every minute, and create
%% your own custom
%% live dashboard.
%%
%% The graph you retrieve can include all CloudWatch metric graph features,
%% including
%% metric math and horizontal and vertical annotations.
%%
%% There is a limit of 20 transactions per second for this API. Each
%% `GetMetricWidgetImage' action has the following limits:
%%
%% As many as 100 metrics in the graph.
%%
%% Up to 100 KB uncompressed payload.
-spec get_metric_widget_image(aws_client:aws_client(), get_metric_widget_image_input()) ->
    {ok, get_metric_widget_image_output(), tuple()} |
    {error, any()}.
get_metric_widget_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_metric_widget_image(Client, Input, []).

-spec get_metric_widget_image(aws_client:aws_client(), get_metric_widget_image_input(), proplists:proplist()) ->
    {ok, get_metric_widget_image_output(), tuple()} |
    {error, any()}.
get_metric_widget_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMetricWidgetImage">>, Input, Options).

%% @doc Returns a list of the dashboards for your account.
%%
%% If you include
%% `DashboardNamePrefix', only those dashboards with names starting with
%% the
%% prefix are listed. Otherwise, all dashboards in your account are listed.
%%
%% `ListDashboards' returns up to 1000 results on one page. If there are
%% more than 1000 dashboards, you can call `ListDashboards' again and
%% include
%% the value you received for `NextToken' in the first call, to receive
%% the next
%% 1000 results.
-spec list_dashboards(aws_client:aws_client(), list_dashboards_input()) ->
    {ok, list_dashboards_output(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dashboards(Client, Input, []).

-spec list_dashboards(aws_client:aws_client(), list_dashboards_input(), proplists:proplist()) ->
    {ok, list_dashboards_output(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDashboards">>, Input, Options).

%% @doc Returns a list that contains the number of managed Contributor
%% Insights rules in your
%% account.
-spec list_managed_insight_rules(aws_client:aws_client(), list_managed_insight_rules_input()) ->
    {ok, list_managed_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, list_managed_insight_rules_errors(), tuple()}.
list_managed_insight_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_managed_insight_rules(Client, Input, []).

-spec list_managed_insight_rules(aws_client:aws_client(), list_managed_insight_rules_input(), proplists:proplist()) ->
    {ok, list_managed_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, list_managed_insight_rules_errors(), tuple()}.
list_managed_insight_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListManagedInsightRules">>, Input, Options).

%% @doc Returns a list of metric streams in this account.
-spec list_metric_streams(aws_client:aws_client(), list_metric_streams_input()) ->
    {ok, list_metric_streams_output(), tuple()} |
    {error, any()} |
    {error, list_metric_streams_errors(), tuple()}.
list_metric_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_metric_streams(Client, Input, []).

-spec list_metric_streams(aws_client:aws_client(), list_metric_streams_input(), proplists:proplist()) ->
    {ok, list_metric_streams_output(), tuple()} |
    {error, any()} |
    {error, list_metric_streams_errors(), tuple()}.
list_metric_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMetricStreams">>, Input, Options).

%% @doc List the specified metrics.
%%
%% You can use the returned metrics with GetMetricData:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html
%% or GetMetricStatistics:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html
%% to get statistical data.
%%
%% Up to 500 results are returned for any one call. To retrieve additional
%% results,
%% use the returned token with subsequent calls.
%%
%% After you create a metric, allow up to 15 minutes for the metric to
%% appear. To see
%% metric statistics sooner, use GetMetricData:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html
%% or GetMetricStatistics:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and view metrics from the linked source
%% accounts. For
%% more information, see CloudWatch cross-account observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html.
%%
%% `ListMetrics' doesn't return information about metrics if those
%% metrics
%% haven't reported data in the past two weeks. To retrieve those
%% metrics, use GetMetricData:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html
%% or GetMetricStatistics:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html.
-spec list_metrics(aws_client:aws_client(), list_metrics_input()) ->
    {ok, list_metrics_output(), tuple()} |
    {error, any()} |
    {error, list_metrics_errors(), tuple()}.
list_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_metrics(Client, Input, []).

-spec list_metrics(aws_client:aws_client(), list_metrics_input(), proplists:proplist()) ->
    {ok, list_metrics_output(), tuple()} |
    {error, any()} |
    {error, list_metrics_errors(), tuple()}.
list_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMetrics">>, Input, Options).

%% @doc Displays the tags associated with a CloudWatch resource.
%%
%% Currently, alarms and
%% Contributor Insights rules support tagging.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates an anomaly detection model for a CloudWatch metric.
%%
%% You can use the model to
%% display a band of expected normal values when the metric is graphed.
%%
%% If you have enabled unified cross-account observability, and this account
%% is a
%% monitoring account, the metric can be in the same account or a source
%% account. You can
%% specify the account ID in the object you specify in the
%% `SingleMetricAnomalyDetector' parameter.
%%
%% For more information, see CloudWatch Anomaly Detection:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Anomaly_Detection.html.
-spec put_anomaly_detector(aws_client:aws_client(), put_anomaly_detector_input()) ->
    {ok, put_anomaly_detector_output(), tuple()} |
    {error, any()} |
    {error, put_anomaly_detector_errors(), tuple()}.
put_anomaly_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_anomaly_detector(Client, Input, []).

-spec put_anomaly_detector(aws_client:aws_client(), put_anomaly_detector_input(), proplists:proplist()) ->
    {ok, put_anomaly_detector_output(), tuple()} |
    {error, any()} |
    {error, put_anomaly_detector_errors(), tuple()}.
put_anomaly_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAnomalyDetector">>, Input, Options).

%% @doc Creates or updates a composite alarm.
%%
%% When you create a composite
%% alarm, you specify a rule expression for the alarm that takes into account
%% the alarm
%% states of other alarms that you have created. The composite alarm goes
%% into ALARM state
%% only if all conditions of the rule are met.
%%
%% The alarms specified in a composite alarm's rule expression can
%% include metric alarms
%% and other composite alarms. The rule expression of a composite alarm can
%% include as many
%% as 100 underlying alarms. Any single alarm can be included in the rule
%% expressions of as
%% many as 150 composite alarms.
%%
%% Using composite alarms can reduce alarm noise. You can create multiple
%% metric alarms,
%% and also create a composite alarm and set up alerts only for the composite
%% alarm. For
%% example, you could create a composite alarm that goes into ALARM state
%% only when more
%% than one of the underlying metric alarms are in ALARM state.
%%
%% Composite alarms can take the following actions:
%%
%% Notify Amazon SNS topics.
%%
%% Invoke Lambda functions.
%%
%% Create OpsItems in Systems Manager Ops Center.
%%
%% Create incidents in Systems Manager Incident Manager.
%%
%% It is possible to create a loop or cycle of composite alarms, where
%% composite
%% alarm A depends on composite alarm B, and composite alarm B also depends
%% on
%% composite alarm A. In this scenario, you can't delete any composite
%% alarm that is
%% part of the cycle because there is always still a composite alarm that
%% depends on
%% that alarm that you want to delete.
%%
%% To get out of such a situation, you must break the cycle by changing the
%% rule of
%% one of the composite alarms in the cycle to remove a dependency that
%% creates the
%% cycle. The simplest change to make to break a cycle is to change the
%% `AlarmRule' of one of the alarms to `false'.
%%
%% Additionally, the evaluation of composite alarms stops if CloudWatch
%% detects a
%% cycle in the evaluation path.
%%
%% When this operation creates an alarm, the alarm state is immediately set
%% to
%% `INSUFFICIENT_DATA'. The alarm is then evaluated and its state is set
%% appropriately. Any actions associated with the new state are then
%% executed. For a
%% composite alarm, this initial time after creation is the only time that
%% the alarm can be
%% in `INSUFFICIENT_DATA' state.
%%
%% When you update an existing alarm, its state is left unchanged, but the
%% update
%% completely overwrites the previous configuration of the alarm.
%%
%% To use this operation, you must be signed on with the
%% `cloudwatch:PutCompositeAlarm' permission that is scoped to
%% `*'. You can't create a composite alarms if your
%% `cloudwatch:PutCompositeAlarm' permission has a narrower scope.
%%
%% If you are an IAM user, you must have
%% `iam:CreateServiceLinkedRole' to create a composite alarm that has
%% Systems Manager OpsItem actions.
-spec put_composite_alarm(aws_client:aws_client(), put_composite_alarm_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_composite_alarm_errors(), tuple()}.
put_composite_alarm(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_composite_alarm(Client, Input, []).

-spec put_composite_alarm(aws_client:aws_client(), put_composite_alarm_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_composite_alarm_errors(), tuple()}.
put_composite_alarm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutCompositeAlarm">>, Input, Options).

%% @doc Creates a dashboard if it does not already exist, or updates an
%% existing dashboard.
%%
%% If you update a dashboard, the entire contents are replaced with what you
%% specify
%% here.
%%
%% All dashboards in your account are global, not region-specific.
%%
%% A simple way to create a dashboard using `PutDashboard' is to copy an
%% existing dashboard. To copy an existing dashboard using the console, you
%% can load the
%% dashboard and then use the View/edit source command in the Actions menu to
%% display the
%% JSON block for that dashboard. Another way to copy a dashboard is to use
%% `GetDashboard', and then use the data returned within
%% `DashboardBody' as the template for the new dashboard when you call
%% `PutDashboard'.
%%
%% When you create a dashboard with `PutDashboard', a good practice is to
%% add a text widget at the top of the dashboard with a message that the
%% dashboard was
%% created by script and should not be changed in the console. This message
%% could also
%% point console users to the location of the `DashboardBody' script or
%% the
%% CloudFormation template used to create the dashboard.
-spec put_dashboard(aws_client:aws_client(), put_dashboard_input()) ->
    {ok, put_dashboard_output(), tuple()} |
    {error, any()} |
    {error, put_dashboard_errors(), tuple()}.
put_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_dashboard(Client, Input, []).

-spec put_dashboard(aws_client:aws_client(), put_dashboard_input(), proplists:proplist()) ->
    {ok, put_dashboard_output(), tuple()} |
    {error, any()} |
    {error, put_dashboard_errors(), tuple()}.
put_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDashboard">>, Input, Options).

%% @doc Creates a Contributor Insights rule.
%%
%% Rules evaluate log events in a CloudWatch Logs
%% log group, enabling you to find contributor data for the log events in
%% that log group.
%% For more information, see Using Contributor
%% Insights to Analyze High-Cardinality Data:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html.
%%
%% If you create a rule, delete it, and then re-create it with the same name,
%% historical
%% data from the first time the rule was created might not be available.
-spec put_insight_rule(aws_client:aws_client(), put_insight_rule_input()) ->
    {ok, put_insight_rule_output(), tuple()} |
    {error, any()} |
    {error, put_insight_rule_errors(), tuple()}.
put_insight_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_insight_rule(Client, Input, []).

-spec put_insight_rule(aws_client:aws_client(), put_insight_rule_input(), proplists:proplist()) ->
    {ok, put_insight_rule_output(), tuple()} |
    {error, any()} |
    {error, put_insight_rule_errors(), tuple()}.
put_insight_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInsightRule">>, Input, Options).

%% @doc Creates a managed Contributor Insights rule for a specified Amazon
%% Web Services
%% resource.
%%
%% When you enable a managed rule, you create a Contributor Insights rule
%% that
%% collects data from Amazon Web Services services. You cannot edit these
%% rules with
%% `PutInsightRule'. The rules can be enabled, disabled, and deleted
%% using
%% `EnableInsightRules', `DisableInsightRules', and
%% `DeleteInsightRules'. If a previously created managed rule is
%% currently
%% disabled, a subsequent call to this API will re-enable it. Use
%% `ListManagedInsightRules' to describe all available rules.
-spec put_managed_insight_rules(aws_client:aws_client(), put_managed_insight_rules_input()) ->
    {ok, put_managed_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, put_managed_insight_rules_errors(), tuple()}.
put_managed_insight_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_managed_insight_rules(Client, Input, []).

-spec put_managed_insight_rules(aws_client:aws_client(), put_managed_insight_rules_input(), proplists:proplist()) ->
    {ok, put_managed_insight_rules_output(), tuple()} |
    {error, any()} |
    {error, put_managed_insight_rules_errors(), tuple()}.
put_managed_insight_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutManagedInsightRules">>, Input, Options).

%% @doc Creates or updates an alarm and associates it with the specified
%% metric, metric
%% math expression, anomaly detection model, or Metrics Insights query.
%%
%% For more
%% information about using a Metrics Insights query for an alarm, see Create
%% alarms on Metrics Insights queries:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Metrics_Insights_Alarm.html.
%%
%% Alarms based on anomaly detection models cannot have Auto Scaling actions.
%%
%% When this operation creates an alarm, the alarm state is immediately set
%% to
%% `INSUFFICIENT_DATA'. The alarm is then evaluated and its state is set
%% appropriately. Any actions associated with the new state are then
%% executed.
%%
%% When you update an existing alarm, its state is left unchanged, but the
%% update
%% completely overwrites the previous configuration of the alarm.
%%
%% If you are an IAM user, you must have Amazon EC2 permissions for
%% some alarm operations:
%%
%% The `iam:CreateServiceLinkedRole' permission for all alarms with
%% EC2 actions
%%
%% The `iam:CreateServiceLinkedRole' permissions to create an alarm
%% with Systems Manager OpsItem or response plan actions.
%%
%% The first time you create an alarm in the Amazon Web Services Management
%% Console, the CLI, or by using the PutMetricAlarm API, CloudWatch creates
%% the necessary
%% service-linked role for you. The service-linked roles are called
%% `AWSServiceRoleForCloudWatchEvents' and
%% `AWSServiceRoleForCloudWatchAlarms_ActionSSM'. For more information,
%% see
%% Amazon Web Services service-linked role:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role.
%%
%% Each `PutMetricAlarm' action has a maximum uncompressed payload of 120
%% KB.
%%
%% Cross-account alarms
%%
%% You can set an alarm on metrics in the current account, or in another
%% account. To
%% create a cross-account alarm that watches a metric in a different account,
%% you must have
%% completed the following pre-requisites:
%%
%% The account where the metrics are located (the sharing
%% account) must already have a sharing role named
%% CloudWatch-CrossAccountSharingRole. If it does not
%% already have this role, you must create it using the instructions in Set
%% up a sharing account in Cross-account cross-Region CloudWatch console:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#enable-cross-account-cross-Region.
%% The policy
%% for that role must grant access to the ID of the account where you are
%% creating
%% the alarm.
%%
%% The account where you are creating the alarm (the monitoring
%% account) must already have a service-linked role named
%% AWSServiceRoleForCloudWatchCrossAccount to allow
%% CloudWatch to assume the sharing role in the sharing account. If it
%% does not, you must create it following the directions in Set up a
%% monitoring account in Cross-account cross-Region CloudWatch console:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#enable-cross-account-cross-Region.
-spec put_metric_alarm(aws_client:aws_client(), put_metric_alarm_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_metric_alarm_errors(), tuple()}.
put_metric_alarm(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_metric_alarm(Client, Input, []).

-spec put_metric_alarm(aws_client:aws_client(), put_metric_alarm_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_metric_alarm_errors(), tuple()}.
put_metric_alarm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMetricAlarm">>, Input, Options).

%% @doc Publishes metric data to Amazon CloudWatch.
%%
%% CloudWatch associates the data with the
%% specified metric. If the specified metric does not exist, CloudWatch
%% creates the metric.
%% When CloudWatch creates a metric, it can take up to fifteen minutes for
%% the metric to
%% appear in calls to ListMetrics:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html.
%%
%% You can publish metrics with associated entity data (so that related
%% telemetry can be
%% found and viewed together), or publish metric data by itself. To send
%% entity data with
%% your metrics, use the `EntityMetricData' parameter. To send metrics
%% without
%% entity data, use the `MetricData' parameter. The
%% `EntityMetricData' structure includes `MetricData' structures
%% for the metric data.
%%
%% You can publish either individual values in the `Value' field, or
%% arrays of
%% values and the number of times each value occurred during the period by
%% using the
%% `Values' and `Counts' fields in the `MetricData'
%% structure. Using the `Values' and `Counts' method enables you to
%% publish up to 150 values per metric with one `PutMetricData' request,
%% and
%% supports retrieving percentile statistics on this data.
%%
%% Each `PutMetricData' request is limited to 1 MB in size for HTTP POST
%% requests. You can send a payload compressed by gzip. Each request is also
%% limited to no
%% more than 1000 different metrics (across both the `MetricData' and
%% `EntityMetricData' properties).
%%
%% Although the `Value' parameter accepts numbers of type `Double',
%% CloudWatch rejects values that are either too small or too large. Values
%% must be in the
%% range of -2^360 to 2^360. In addition, special values (for example, NaN,
%% +Infinity,
%% -Infinity) are not supported.
%%
%% You can use up to 30 dimensions per metric to further clarify what data
%% the metric
%% collects. Each dimension consists of a Name and Value pair. For more
%% information about
%% specifying dimensions, see Publishing
%% Metrics:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
%% in the Amazon CloudWatch User Guide.
%%
%% You specify the time stamp to be associated with each data point. You can
%% specify time
%% stamps that are as much as two weeks before the current date, and as much
%% as 2 hours
%% after the current day and time.
%%
%% Data points with time stamps from 24 hours ago or longer can take at least
%% 48 hours to
%% become available for GetMetricData:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html
%% or GetMetricStatistics:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html
%% from the time they are submitted. Data points with time
%% stamps between 3 and 24 hours ago can take as much as 2 hours to become
%% available for
%% GetMetricData:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html
%% or GetMetricStatistics:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html.
%%
%% CloudWatch needs raw data points to calculate percentile statistics. If
%% you publish
%% data using a statistic set instead, you can only retrieve percentile
%% statistics for this
%% data if one of the following conditions is true:
%%
%% The `SampleCount' value of the statistic set is 1 and
%% `Min', `Max', and `Sum' are all
%% equal.
%%
%% The `Min' and `Max' are equal, and `Sum'
%% is equal to `Min' multiplied by `SampleCount'.
-spec put_metric_data(aws_client:aws_client(), put_metric_data_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_metric_data_errors(), tuple()}.
put_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_metric_data(Client, Input, []).

-spec put_metric_data(aws_client:aws_client(), put_metric_data_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_metric_data_errors(), tuple()}.
put_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMetricData">>, Input, Options).

%% @doc Creates or updates a metric stream.
%%
%% Metric streams can automatically stream CloudWatch
%% metrics to Amazon Web Services destinations, including Amazon S3, and to
%% many third-party
%% solutions.
%%
%% For more information, see Using
%% Metric Streams:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Metric-Streams.html.
%%
%% To create a metric stream, you must be signed in to an account that has
%% the
%% `iam:PassRole' permission and either the
%% `CloudWatchFullAccess' policy or the
%% `cloudwatch:PutMetricStream' permission.
%%
%% When you create or update a metric stream, you choose one of the
%% following:
%%
%% Stream metrics from all metric namespaces in the account.
%%
%% Stream metrics from all metric namespaces in the account, except for the
%% namespaces that you list in `ExcludeFilters'.
%%
%% Stream metrics from only the metric namespaces that you list in
%% `IncludeFilters'.
%%
%% By default, a metric stream always sends the `MAX', `MIN',
%% `SUM', and `SAMPLECOUNT' statistics for each metric that is
%% streamed. You can use the `StatisticsConfigurations' parameter to have
%% the
%% metric stream send additional statistics in the stream. Streaming
%% additional statistics
%% incurs additional costs. For more information, see Amazon CloudWatch
%% Pricing: https://aws.amazon.com/cloudwatch/pricing/.
%%
%% When you use `PutMetricStream' to create a new metric stream, the
%% stream is
%% created in the `running' state. If you use it to update an existing
%% stream,
%% the state of the stream is not changed.
%%
%% If you are using CloudWatch cross-account observability and you create a
%% metric
%% stream in a monitoring account, you can choose whether to include metrics
%% from source
%% accounts in the stream. For more information, see CloudWatch cross-account
%% observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html.
-spec put_metric_stream(aws_client:aws_client(), put_metric_stream_input()) ->
    {ok, put_metric_stream_output(), tuple()} |
    {error, any()} |
    {error, put_metric_stream_errors(), tuple()}.
put_metric_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_metric_stream(Client, Input, []).

-spec put_metric_stream(aws_client:aws_client(), put_metric_stream_input(), proplists:proplist()) ->
    {ok, put_metric_stream_output(), tuple()} |
    {error, any()} |
    {error, put_metric_stream_errors(), tuple()}.
put_metric_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMetricStream">>, Input, Options).

%% @doc Temporarily sets the state of an alarm for testing purposes.
%%
%% When the updated state
%% differs from the previous value, the action configured for the appropriate
%% state is
%% invoked. For example, if your alarm is configured to send an Amazon SNS
%% message when an
%% alarm is triggered, temporarily changing the alarm state to `ALARM'
%% sends an
%% SNS message.
%%
%% Metric alarms returns to their actual state quickly, often within seconds.
%% Because
%% the metric alarm state change happens quickly, it is typically only
%% visible in the
%% alarm's History tab in the Amazon CloudWatch console or
%% through DescribeAlarmHistory:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarmHistory.html.
%%
%% If you use `SetAlarmState' on a composite alarm, the composite alarm
%% is
%% not guaranteed to return to its actual state. It returns to its actual
%% state only once
%% any of its children alarms change state. It is also reevaluated if you
%% update its
%% configuration.
%%
%% If an alarm triggers EC2 Auto Scaling policies or application Auto Scaling
%% policies, you must include information in the `StateReasonData'
%% parameter to
%% enable the policy to take the correct action.
-spec set_alarm_state(aws_client:aws_client(), set_alarm_state_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_alarm_state_errors(), tuple()}.
set_alarm_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_alarm_state(Client, Input, []).

-spec set_alarm_state(aws_client:aws_client(), set_alarm_state_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_alarm_state_errors(), tuple()}.
set_alarm_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetAlarmState">>, Input, Options).

%% @doc Starts the streaming of metrics for one or more of your metric
%% streams.
-spec start_metric_streams(aws_client:aws_client(), start_metric_streams_input()) ->
    {ok, start_metric_streams_output(), tuple()} |
    {error, any()} |
    {error, start_metric_streams_errors(), tuple()}.
start_metric_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_metric_streams(Client, Input, []).

-spec start_metric_streams(aws_client:aws_client(), start_metric_streams_input(), proplists:proplist()) ->
    {ok, start_metric_streams_output(), tuple()} |
    {error, any()} |
    {error, start_metric_streams_errors(), tuple()}.
start_metric_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMetricStreams">>, Input, Options).

%% @doc Stops the streaming of metrics for one or more of your metric
%% streams.
-spec stop_metric_streams(aws_client:aws_client(), stop_metric_streams_input()) ->
    {ok, stop_metric_streams_output(), tuple()} |
    {error, any()} |
    {error, stop_metric_streams_errors(), tuple()}.
stop_metric_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_metric_streams(Client, Input, []).

-spec stop_metric_streams(aws_client:aws_client(), stop_metric_streams_input(), proplists:proplist()) ->
    {ok, stop_metric_streams_output(), tuple()} |
    {error, any()} |
    {error, stop_metric_streams_errors(), tuple()}.
stop_metric_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopMetricStreams">>, Input, Options).

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% CloudWatch resource.
%%
%% Currently, the only CloudWatch resources that can be tagged are alarms and
%% Contributor
%% Insights rules.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to
%% scope user permissions by granting a user permission to access or change
%% only resources
%% with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted
%% strictly as strings of characters.
%%
%% You can use the `TagResource' action with an alarm that already has
%% tags.
%% If you specify a new tag key for the alarm, this tag is appended to the
%% list of tags
%% associated with the alarm. If you specify a tag key that is already
%% associated with the
%% alarm, the new tag value that you specify replaces the previous value for
%% that
%% tag.
%%
%% You can associate as many as 50 tags with a CloudWatch resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"monitoring">>},
    Host = build_host(<<"monitoring">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2010-08-01">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
