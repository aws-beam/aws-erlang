%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon DevOps Guru is a fully managed service that helps you identify
%% anomalous behavior in
%% business critical operational applications.
%%
%% You specify the Amazon Web Services resources that you
%% want DevOps Guru to cover, then the Amazon CloudWatch metrics and Amazon
%% Web Services CloudTrail events related to those
%% resources are analyzed. When anomalous behavior is detected, DevOps Guru
%% creates an
%% insight that includes recommendations, related events, and
%% related metrics that can help you improve your operational applications.
%% For more
%% information, see What is Amazon DevOps Guru:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html.
%%
%% You can specify 1 or 2 Amazon Simple Notification Service topics so you
%% are notified every time a new insight
%% is created. You can also enable DevOps Guru to generate an OpsItem in
%% Amazon Web Services Systems Manager for each
%% insight to help you manage and track your work addressing insights.
%%
%% To learn about the DevOps Guru workflow, see How DevOps Guru works:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html#how-it-works.
%% To
%% learn about DevOps Guru concepts, see Concepts in DevOps Guru:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/concepts.html.
-module(aws_devops_guru).

-export([add_notification_channel/2,
         add_notification_channel/3,
         delete_insight/3,
         delete_insight/4,
         describe_account_health/1,
         describe_account_health/3,
         describe_account_health/4,
         describe_account_overview/2,
         describe_account_overview/3,
         describe_anomaly/2,
         describe_anomaly/4,
         describe_anomaly/5,
         describe_event_sources_config/2,
         describe_event_sources_config/3,
         describe_feedback/2,
         describe_feedback/3,
         describe_insight/2,
         describe_insight/4,
         describe_insight/5,
         describe_organization_health/2,
         describe_organization_health/3,
         describe_organization_overview/2,
         describe_organization_overview/3,
         describe_organization_resource_collection_health/2,
         describe_organization_resource_collection_health/3,
         describe_resource_collection_health/2,
         describe_resource_collection_health/4,
         describe_resource_collection_health/5,
         describe_service_integration/1,
         describe_service_integration/3,
         describe_service_integration/4,
         get_cost_estimation/1,
         get_cost_estimation/3,
         get_cost_estimation/4,
         get_resource_collection/2,
         get_resource_collection/4,
         get_resource_collection/5,
         list_anomalies_for_insight/3,
         list_anomalies_for_insight/4,
         list_anomalous_log_groups/2,
         list_anomalous_log_groups/3,
         list_events/2,
         list_events/3,
         list_insights/2,
         list_insights/3,
         list_monitored_resources/2,
         list_monitored_resources/3,
         list_notification_channels/2,
         list_notification_channels/3,
         list_organization_insights/2,
         list_organization_insights/3,
         list_recommendations/2,
         list_recommendations/3,
         put_feedback/2,
         put_feedback/3,
         remove_notification_channel/3,
         remove_notification_channel/4,
         search_insights/2,
         search_insights/3,
         search_organization_insights/2,
         search_organization_insights/3,
         start_cost_estimation/2,
         start_cost_estimation/3,
         update_event_sources_config/2,
         update_event_sources_config/3,
         update_resource_collection/2,
         update_resource_collection/3,
         update_service_integration/2,
         update_service_integration/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% anomaly_source_metadata() :: #{
%%   <<"Source">> => string(),
%%   <<"SourceResourceName">> => string(),
%%   <<"SourceResourceType">> => string()
%% }
-type anomaly_source_metadata() :: #{binary() => any()}.


%% Example:
%% service_integration_config() :: #{
%%   <<"KMSServerSideEncryption">> => kms_server_side_encryption_integration(),
%%   <<"LogsAnomalyDetection">> => logs_anomaly_detection_integration(),
%%   <<"OpsCenter">> => ops_center_integration()
%% }
-type service_integration_config() :: #{binary() => any()}.

%% Example:
%% update_resource_collection_response() :: #{}
-type update_resource_collection_response() :: #{}.


%% Example:
%% list_organization_insights_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProactiveInsights">> => list(proactive_organization_insight_summary()),
%%   <<"ReactiveInsights">> => list(reactive_organization_insight_summary())
%% }
-type list_organization_insights_response() :: #{binary() => any()}.


%% Example:
%% performance_insights_stat() :: #{
%%   <<"Type">> => string(),
%%   <<"Value">> => float()
%% }
-type performance_insights_stat() :: #{binary() => any()}.


%% Example:
%% anomaly_time_range() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type anomaly_time_range() :: #{binary() => any()}.


%% Example:
%% put_feedback_request() :: #{
%%   <<"InsightFeedback">> => insight_feedback()
%% }
-type put_feedback_request() :: #{binary() => any()}.


%% Example:
%% service_insight_health() :: #{
%%   <<"OpenProactiveInsights">> => integer(),
%%   <<"OpenReactiveInsights">> => integer()
%% }
-type service_insight_health() :: #{binary() => any()}.


%% Example:
%% list_insights_any_status_filter() :: #{
%%   <<"StartTimeRange">> => start_time_range(),
%%   <<"Type">> => list(any())
%% }
-type list_insights_any_status_filter() :: #{binary() => any()}.


%% Example:
%% list_insights_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StatusFilter">> := list_insights_status_filter()
%% }
-type list_insights_request() :: #{binary() => any()}.


%% Example:
%% describe_insight_response() :: #{
%%   <<"ProactiveInsight">> => proactive_insight(),
%%   <<"ReactiveInsight">> => reactive_insight()
%% }
-type describe_insight_response() :: #{binary() => any()}.


%% Example:
%% performance_insights_metric_dimension_group() :: #{
%%   <<"Dimensions">> => list(string()),
%%   <<"Group">> => string(),
%%   <<"Limit">> => integer()
%% }
-type performance_insights_metric_dimension_group() :: #{binary() => any()}.


%% Example:
%% add_notification_channel_request() :: #{
%%   <<"Config">> := notification_channel_config()
%% }
-type add_notification_channel_request() :: #{binary() => any()}.


%% Example:
%% list_anomalies_for_insight_filters() :: #{
%%   <<"ServiceCollection">> => service_collection()
%% }
-type list_anomalies_for_insight_filters() :: #{binary() => any()}.


%% Example:
%% performance_insights_reference_scalar() :: #{
%%   <<"Value">> => float()
%% }
-type performance_insights_reference_scalar() :: #{binary() => any()}.


%% Example:
%% describe_organization_overview_request() :: #{
%%   <<"AccountIds">> => list(string()),
%%   <<"FromTime">> := non_neg_integer(),
%%   <<"OrganizationalUnitIds">> => list(string()),
%%   <<"ToTime">> => non_neg_integer()
%% }
-type describe_organization_overview_request() :: #{binary() => any()}.


%% Example:
%% account_insight_health() :: #{
%%   <<"OpenProactiveInsights">> => integer(),
%%   <<"OpenReactiveInsights">> => integer()
%% }
-type account_insight_health() :: #{binary() => any()}.


%% Example:
%% recommendation_related_event() :: #{
%%   <<"Name">> => string(),
%%   <<"Resources">> => list(recommendation_related_event_resource())
%% }
-type recommendation_related_event() :: #{binary() => any()}.


%% Example:
%% reactive_insight() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"InsightTimeRange">> => insight_time_range(),
%%   <<"Name">> => string(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"Severity">> => list(any()),
%%   <<"SsmOpsItemId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type reactive_insight() :: #{binary() => any()}.


%% Example:
%% proactive_organization_insight_summary() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Id">> => string(),
%%   <<"InsightTimeRange">> => insight_time_range(),
%%   <<"Name">> => string(),
%%   <<"OrganizationalUnitId">> => string(),
%%   <<"PredictionTimeRange">> => prediction_time_range(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"ServiceCollection">> => service_collection(),
%%   <<"Severity">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type proactive_organization_insight_summary() :: #{binary() => any()}.


%% Example:
%% get_resource_collection_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceCollection">> => resource_collection_filter()
%% }
-type get_resource_collection_response() :: #{binary() => any()}.


%% Example:
%% recommendation_related_cloud_watch_metrics_source_detail() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string()
%% }
-type recommendation_related_cloud_watch_metrics_source_detail() :: #{binary() => any()}.

%% Example:
%% update_event_sources_config_response() :: #{}
-type update_event_sources_config_response() :: #{}.


%% Example:
%% recommendation_related_anomaly_source_detail() :: #{
%%   <<"CloudWatchMetrics">> => list(recommendation_related_cloud_watch_metrics_source_detail())
%% }
-type recommendation_related_anomaly_source_detail() :: #{binary() => any()}.


%% Example:
%% describe_account_overview_request() :: #{
%%   <<"FromTime">> := non_neg_integer(),
%%   <<"ToTime">> => non_neg_integer()
%% }
-type describe_account_overview_request() :: #{binary() => any()}.


%% Example:
%% proactive_anomaly() :: #{
%%   <<"AnomalyReportedTimeRange">> => anomaly_reported_time_range(),
%%   <<"AnomalyResources">> => list(anomaly_resource()),
%%   <<"AnomalyTimeRange">> => anomaly_time_range(),
%%   <<"AssociatedInsightId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Limit">> => float(),
%%   <<"PredictionTimeRange">> => prediction_time_range(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"Severity">> => list(any()),
%%   <<"SourceDetails">> => anomaly_source_details(),
%%   <<"SourceMetadata">> => anomaly_source_metadata(),
%%   <<"Status">> => list(any()),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type proactive_anomaly() :: #{binary() => any()}.

%% Example:
%% remove_notification_channel_request() :: #{}
-type remove_notification_channel_request() :: #{}.


%% Example:
%% list_insights_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProactiveInsights">> => list(proactive_insight_summary()),
%%   <<"ReactiveInsights">> => list(reactive_insight_summary())
%% }
-type list_insights_response() :: #{binary() => any()}.


%% Example:
%% service_health() :: #{
%%   <<"AnalyzedResourceCount">> => float(),
%%   <<"Insight">> => service_insight_health(),
%%   <<"ServiceName">> => list(any())
%% }
-type service_health() :: #{binary() => any()}.


%% Example:
%% kms_server_side_encryption_integration() :: #{
%%   <<"KMSKeyId">> => string(),
%%   <<"OptInStatus">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type kms_server_side_encryption_integration() :: #{binary() => any()}.


%% Example:
%% list_monitored_resources_request() :: #{
%%   <<"Filters">> => list_monitored_resources_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_monitored_resources_request() :: #{binary() => any()}.


%% Example:
%% proactive_insight() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"InsightTimeRange">> => insight_time_range(),
%%   <<"Name">> => string(),
%%   <<"PredictionTimeRange">> => prediction_time_range(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"Severity">> => list(any()),
%%   <<"SsmOpsItemId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type proactive_insight() :: #{binary() => any()}.


%% Example:
%% get_cost_estimation_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_cost_estimation_request() :: #{binary() => any()}.


%% Example:
%% anomalous_log_group() :: #{
%%   <<"ImpactEndTime">> => non_neg_integer(),
%%   <<"ImpactStartTime">> => non_neg_integer(),
%%   <<"LogAnomalyShowcases">> => list(log_anomaly_showcase()),
%%   <<"LogGroupName">> => string(),
%%   <<"NumberOfLogLinesScanned">> => integer()
%% }
-type anomalous_log_group() :: #{binary() => any()}.

%% Example:
%% put_feedback_response() :: #{}
-type put_feedback_response() :: #{}.


%% Example:
%% proactive_insight_summary() :: #{
%%   <<"AssociatedResourceArns">> => list(string()),
%%   <<"Id">> => string(),
%%   <<"InsightTimeRange">> => insight_time_range(),
%%   <<"Name">> => string(),
%%   <<"PredictionTimeRange">> => prediction_time_range(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"ServiceCollection">> => service_collection(),
%%   <<"Severity">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type proactive_insight_summary() :: #{binary() => any()}.


%% Example:
%% describe_anomaly_response() :: #{
%%   <<"ProactiveAnomaly">> => proactive_anomaly(),
%%   <<"ReactiveAnomaly">> => reactive_anomaly()
%% }
-type describe_anomaly_response() :: #{binary() => any()}.


%% Example:
%% update_resource_collection_filter() :: #{
%%   <<"CloudFormation">> => update_cloud_formation_collection_filter(),
%%   <<"Tags">> => list(update_tag_collection_filter())
%% }
-type update_resource_collection_filter() :: #{binary() => any()}.


%% Example:
%% cost_estimation_time_range() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type cost_estimation_time_range() :: #{binary() => any()}.


%% Example:
%% list_events_filters() :: #{
%%   <<"DataSource">> => list(any()),
%%   <<"EventClass">> => list(any()),
%%   <<"EventSource">> => string(),
%%   <<"EventTimeRange">> => event_time_range(),
%%   <<"InsightId">> => string(),
%%   <<"ResourceCollection">> => resource_collection()
%% }
-type list_events_filters() :: #{binary() => any()}.


%% Example:
%% kms_server_side_encryption_integration_config() :: #{
%%   <<"KMSKeyId">> => string(),
%%   <<"OptInStatus">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type kms_server_side_encryption_integration_config() :: #{binary() => any()}.


%% Example:
%% search_organization_insights_filters() :: #{
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"ServiceCollection">> => service_collection(),
%%   <<"Severities">> => list(list(any())()),
%%   <<"Statuses">> => list(list(any())())
%% }
-type search_organization_insights_filters() :: #{binary() => any()}.


%% Example:
%% performance_insights_reference_metric() :: #{
%%   <<"MetricQuery">> => performance_insights_metric_query()
%% }
-type performance_insights_reference_metric() :: #{binary() => any()}.


%% Example:
%% search_insights_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProactiveInsights">> => list(proactive_insight_summary()),
%%   <<"ReactiveInsights">> => list(reactive_insight_summary())
%% }
-type search_insights_response() :: #{binary() => any()}.


%% Example:
%% ops_center_integration_config() :: #{
%%   <<"OptInStatus">> => list(any())
%% }
-type ops_center_integration_config() :: #{binary() => any()}.


%% Example:
%% cloud_watch_metrics_data_summary() :: #{
%%   <<"StatusCode">> => list(any()),
%%   <<"TimestampMetricValuePairList">> => list(timestamp_metric_value_pair())
%% }
-type cloud_watch_metrics_data_summary() :: #{binary() => any()}.


%% Example:
%% update_tag_collection_filter() :: #{
%%   <<"AppBoundaryKey">> => string(),
%%   <<"TagValues">> => list(string())
%% }
-type update_tag_collection_filter() :: #{binary() => any()}.


%% Example:
%% list_events_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Filters">> := list_events_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_events_request() :: #{binary() => any()}.


%% Example:
%% notification_channel() :: #{
%%   <<"Config">> => notification_channel_config(),
%%   <<"Id">> => string()
%% }
-type notification_channel() :: #{binary() => any()}.


%% Example:
%% update_service_integration_request() :: #{
%%   <<"ServiceIntegration">> := update_service_integration_config()
%% }
-type update_service_integration_request() :: #{binary() => any()}.


%% Example:
%% tag_collection() :: #{
%%   <<"AppBoundaryKey">> => string(),
%%   <<"TagValues">> => list(string())
%% }
-type tag_collection() :: #{binary() => any()}.


%% Example:
%% get_cost_estimation_response() :: #{
%%   <<"Costs">> => list(service_resource_cost()),
%%   <<"NextToken">> => string(),
%%   <<"ResourceCollection">> => cost_estimation_resource_collection_filter(),
%%   <<"Status">> => list(any()),
%%   <<"TimeRange">> => cost_estimation_time_range(),
%%   <<"TotalCost">> => float()
%% }
-type get_cost_estimation_response() :: #{binary() => any()}.


%% Example:
%% list_insights_ongoing_status_filter() :: #{
%%   <<"Type">> => list(any())
%% }
-type list_insights_ongoing_status_filter() :: #{binary() => any()}.


%% Example:
%% anomaly_reported_time_range() :: #{
%%   <<"CloseTime">> => non_neg_integer(),
%%   <<"OpenTime">> => non_neg_integer()
%% }
-type anomaly_reported_time_range() :: #{binary() => any()}.


%% Example:
%% cloud_formation_health() :: #{
%%   <<"AnalyzedResourceCount">> => float(),
%%   <<"Insight">> => insight_health(),
%%   <<"StackName">> => string()
%% }
-type cloud_formation_health() :: #{binary() => any()}.


%% Example:
%% reactive_organization_insight_summary() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Id">> => string(),
%%   <<"InsightTimeRange">> => insight_time_range(),
%%   <<"Name">> => string(),
%%   <<"OrganizationalUnitId">> => string(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"ServiceCollection">> => service_collection(),
%%   <<"Severity">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type reactive_organization_insight_summary() :: #{binary() => any()}.


%% Example:
%% amazon_code_guru_profiler_integration() :: #{
%%   <<"Status">> => list(any())
%% }
-type amazon_code_guru_profiler_integration() :: #{binary() => any()}.


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
%% remove_notification_channel_response() :: #{}
-type remove_notification_channel_response() :: #{}.


%% Example:
%% list_notification_channels_response() :: #{
%%   <<"Channels">> => list(notification_channel()),
%%   <<"NextToken">> => string()
%% }
-type list_notification_channels_response() :: #{binary() => any()}.


%% Example:
%% reactive_insight_summary() :: #{
%%   <<"AssociatedResourceArns">> => list(string()),
%%   <<"Id">> => string(),
%%   <<"InsightTimeRange">> => insight_time_range(),
%%   <<"Name">> => string(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"ServiceCollection">> => service_collection(),
%%   <<"Severity">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type reactive_insight_summary() :: #{binary() => any()}.


%% Example:
%% event_sources_config() :: #{
%%   <<"AmazonCodeGuruProfiler">> => amazon_code_guru_profiler_integration()
%% }
-type event_sources_config() :: #{binary() => any()}.


%% Example:
%% cloud_formation_cost_estimation_resource_collection_filter() :: #{
%%   <<"StackNames">> => list(string())
%% }
-type cloud_formation_cost_estimation_resource_collection_filter() :: #{binary() => any()}.


%% Example:
%% prediction_time_range() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type prediction_time_range() :: #{binary() => any()}.

%% Example:
%% describe_service_integration_request() :: #{}
-type describe_service_integration_request() :: #{}.


%% Example:
%% log_anomaly_showcase() :: #{
%%   <<"LogAnomalyClasses">> => list(log_anomaly_class())
%% }
-type log_anomaly_showcase() :: #{binary() => any()}.


%% Example:
%% service_collection() :: #{
%%   <<"ServiceNames">> => list(list(any())())
%% }
-type service_collection() :: #{binary() => any()}.


%% Example:
%% add_notification_channel_response() :: #{
%%   <<"Id">> => string()
%% }
-type add_notification_channel_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% describe_resource_collection_health_response() :: #{
%%   <<"CloudFormation">> => list(cloud_formation_health()),
%%   <<"NextToken">> => string(),
%%   <<"Service">> => list(service_health()),
%%   <<"Tags">> => list(tag_health())
%% }
-type describe_resource_collection_health_response() :: #{binary() => any()}.


%% Example:
%% recommendation() :: #{
%%   <<"Category">> => string(),
%%   <<"Description">> => string(),
%%   <<"Link">> => string(),
%%   <<"Name">> => string(),
%%   <<"Reason">> => string(),
%%   <<"RelatedAnomalies">> => list(recommendation_related_anomaly()),
%%   <<"RelatedEvents">> => list(recommendation_related_event())
%% }
-type recommendation() :: #{binary() => any()}.


%% Example:
%% reactive_anomaly() :: #{
%%   <<"AnomalyReportedTimeRange">> => anomaly_reported_time_range(),
%%   <<"AnomalyResources">> => list(anomaly_resource()),
%%   <<"AnomalyTimeRange">> => anomaly_time_range(),
%%   <<"AssociatedInsightId">> => string(),
%%   <<"CausalAnomalyId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"Severity">> => list(any()),
%%   <<"SourceDetails">> => anomaly_source_details(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type reactive_anomaly() :: #{binary() => any()}.


%% Example:
%% search_organization_insights_request() :: #{
%%   <<"AccountIds">> := list(string()),
%%   <<"Filters">> => search_organization_insights_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTimeRange">> := start_time_range(),
%%   <<"Type">> := list(any())
%% }
-type search_organization_insights_request() :: #{binary() => any()}.


%% Example:
%% update_cloud_formation_collection_filter() :: #{
%%   <<"StackNames">> => list(string())
%% }
-type update_cloud_formation_collection_filter() :: #{binary() => any()}.


%% Example:
%% performance_insights_reference_comparison_values() :: #{
%%   <<"ReferenceMetric">> => performance_insights_reference_metric(),
%%   <<"ReferenceScalar">> => performance_insights_reference_scalar()
%% }
-type performance_insights_reference_comparison_values() :: #{binary() => any()}.


%% Example:
%% describe_account_health_response() :: #{
%%   <<"AnalyzedResourceCount">> => float(),
%%   <<"MetricsAnalyzed">> => integer(),
%%   <<"OpenProactiveInsights">> => integer(),
%%   <<"OpenReactiveInsights">> => integer(),
%%   <<"ResourceHours">> => float()
%% }
-type describe_account_health_response() :: #{binary() => any()}.


%% Example:
%% anomaly_source_details() :: #{
%%   <<"CloudWatchMetrics">> => list(cloud_watch_metrics_detail()),
%%   <<"PerformanceInsightsMetrics">> => list(performance_insights_metrics_detail())
%% }
-type anomaly_source_details() :: #{binary() => any()}.


%% Example:
%% timestamp_metric_value_pair() :: #{
%%   <<"MetricValue">> => float(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type timestamp_metric_value_pair() :: #{binary() => any()}.


%% Example:
%% describe_insight_request() :: #{
%%   <<"AccountId">> => string()
%% }
-type describe_insight_request() :: #{binary() => any()}.


%% Example:
%% list_monitored_resources_response() :: #{
%%   <<"MonitoredResourceIdentifiers">> => list(monitored_resource_identifier()),
%%   <<"NextToken">> => string()
%% }
-type list_monitored_resources_response() :: #{binary() => any()}.


%% Example:
%% search_insights_request() :: #{
%%   <<"Filters">> => search_insights_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTimeRange">> := start_time_range(),
%%   <<"Type">> := list(any())
%% }
-type search_insights_request() :: #{binary() => any()}.


%% Example:
%% tag_collection_filter() :: #{
%%   <<"AppBoundaryKey">> => string(),
%%   <<"TagValues">> => list(string())
%% }
-type tag_collection_filter() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% performance_insights_reference_data() :: #{
%%   <<"ComparisonValues">> => performance_insights_reference_comparison_values(),
%%   <<"Name">> => string()
%% }
-type performance_insights_reference_data() :: #{binary() => any()}.


%% Example:
%% describe_account_overview_response() :: #{
%%   <<"MeanTimeToRecoverInMilliseconds">> => float(),
%%   <<"ProactiveInsights">> => integer(),
%%   <<"ReactiveInsights">> => integer()
%% }
-type describe_account_overview_response() :: #{binary() => any()}.


%% Example:
%% reactive_anomaly_summary() :: #{
%%   <<"AnomalyReportedTimeRange">> => anomaly_reported_time_range(),
%%   <<"AnomalyResources">> => list(anomaly_resource()),
%%   <<"AnomalyTimeRange">> => anomaly_time_range(),
%%   <<"AssociatedInsightId">> => string(),
%%   <<"CausalAnomalyId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"Severity">> => list(any()),
%%   <<"SourceDetails">> => anomaly_source_details(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type reactive_anomaly_summary() :: #{binary() => any()}.


%% Example:
%% search_insights_filters() :: #{
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"ServiceCollection">> => service_collection(),
%%   <<"Severities">> => list(list(any())()),
%%   <<"Statuses">> => list(list(any())())
%% }
-type search_insights_filters() :: #{binary() => any()}.


%% Example:
%% describe_event_sources_config_response() :: #{
%%   <<"EventSources">> => event_sources_config()
%% }
-type describe_event_sources_config_response() :: #{binary() => any()}.


%% Example:
%% cloud_watch_metrics_detail() :: #{
%%   <<"Dimensions">> => list(cloud_watch_metrics_dimension()),
%%   <<"MetricDataSummary">> => cloud_watch_metrics_data_summary(),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"Period">> => integer(),
%%   <<"Stat">> => list(any()),
%%   <<"Unit">> => string()
%% }
-type cloud_watch_metrics_detail() :: #{binary() => any()}.


%% Example:
%% search_organization_insights_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProactiveInsights">> => list(proactive_insight_summary()),
%%   <<"ReactiveInsights">> => list(reactive_insight_summary())
%% }
-type search_organization_insights_response() :: #{binary() => any()}.


%% Example:
%% cloud_formation_collection_filter() :: #{
%%   <<"StackNames">> => list(string())
%% }
-type cloud_formation_collection_filter() :: #{binary() => any()}.


%% Example:
%% recommendation_related_anomaly() :: #{
%%   <<"AnomalyId">> => string(),
%%   <<"Resources">> => list(recommendation_related_anomaly_resource()),
%%   <<"SourceDetails">> => list(recommendation_related_anomaly_source_detail())
%% }
-type recommendation_related_anomaly() :: #{binary() => any()}.


%% Example:
%% tag_cost_estimation_resource_collection_filter() :: #{
%%   <<"AppBoundaryKey">> => string(),
%%   <<"TagValues">> => list(string())
%% }
-type tag_cost_estimation_resource_collection_filter() :: #{binary() => any()}.


%% Example:
%% list_anomalous_log_groups_request() :: #{
%%   <<"InsightId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_anomalous_log_groups_request() :: #{binary() => any()}.


%% Example:
%% list_events_response() :: #{
%%   <<"Events">> => list(event()),
%%   <<"NextToken">> => string()
%% }
-type list_events_response() :: #{binary() => any()}.


%% Example:
%% list_insights_closed_status_filter() :: #{
%%   <<"EndTimeRange">> => end_time_range(),
%%   <<"Type">> => list(any())
%% }
-type list_insights_closed_status_filter() :: #{binary() => any()}.


%% Example:
%% anomaly_resource() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type anomaly_resource() :: #{binary() => any()}.


%% Example:
%% recommendation_related_anomaly_resource() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type recommendation_related_anomaly_resource() :: #{binary() => any()}.


%% Example:
%% log_anomaly_class() :: #{
%%   <<"Explanation">> => string(),
%%   <<"LogAnomalyToken">> => string(),
%%   <<"LogAnomalyType">> => list(any()),
%%   <<"LogEventId">> => string(),
%%   <<"LogEventTimestamp">> => non_neg_integer(),
%%   <<"LogStreamName">> => string(),
%%   <<"NumberOfLogLinesOccurrences">> => integer()
%% }
-type log_anomaly_class() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% insight_time_range() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type insight_time_range() :: #{binary() => any()}.


%% Example:
%% end_time_range() :: #{
%%   <<"FromTime">> => non_neg_integer(),
%%   <<"ToTime">> => non_neg_integer()
%% }
-type end_time_range() :: #{binary() => any()}.


%% Example:
%% describe_organization_resource_collection_health_response() :: #{
%%   <<"Account">> => list(account_health()),
%%   <<"CloudFormation">> => list(cloud_formation_health()),
%%   <<"NextToken">> => string(),
%%   <<"Service">> => list(service_health()),
%%   <<"Tags">> => list(tag_health())
%% }
-type describe_organization_resource_collection_health_response() :: #{binary() => any()}.

%% Example:
%% describe_event_sources_config_request() :: #{}
-type describe_event_sources_config_request() :: #{}.


%% Example:
%% event_resource() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type event_resource() :: #{binary() => any()}.


%% Example:
%% logs_anomaly_detection_integration() :: #{
%%   <<"OptInStatus">> => list(any())
%% }
-type logs_anomaly_detection_integration() :: #{binary() => any()}.


%% Example:
%% describe_organization_overview_response() :: #{
%%   <<"ProactiveInsights">> => integer(),
%%   <<"ReactiveInsights">> => integer()
%% }
-type describe_organization_overview_response() :: #{binary() => any()}.


%% Example:
%% event() :: #{
%%   <<"DataSource">> => list(any()),
%%   <<"EventClass">> => list(any()),
%%   <<"EventSource">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"Resources">> => list(event_resource()),
%%   <<"Time">> => non_neg_integer()
%% }
-type event() :: #{binary() => any()}.


%% Example:
%% performance_insights_metric_query() :: #{
%%   <<"Filter">> => map(),
%%   <<"GroupBy">> => performance_insights_metric_dimension_group(),
%%   <<"Metric">> => string()
%% }
-type performance_insights_metric_query() :: #{binary() => any()}.


%% Example:
%% resource_collection_filter() :: #{
%%   <<"CloudFormation">> => cloud_formation_collection_filter(),
%%   <<"Tags">> => list(tag_collection_filter())
%% }
-type resource_collection_filter() :: #{binary() => any()}.


%% Example:
%% describe_organization_resource_collection_health_request() :: #{
%%   <<"AccountIds">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationResourceCollectionType">> := list(any()),
%%   <<"OrganizationalUnitIds">> => list(string())
%% }
-type describe_organization_resource_collection_health_request() :: #{binary() => any()}.


%% Example:
%% list_anomalies_for_insight_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProactiveAnomalies">> => list(proactive_anomaly_summary()),
%%   <<"ReactiveAnomalies">> => list(reactive_anomaly_summary())
%% }
-type list_anomalies_for_insight_response() :: #{binary() => any()}.


%% Example:
%% tag_health() :: #{
%%   <<"AnalyzedResourceCount">> => float(),
%%   <<"AppBoundaryKey">> => string(),
%%   <<"Insight">> => insight_health(),
%%   <<"TagValue">> => string()
%% }
-type tag_health() :: #{binary() => any()}.


%% Example:
%% cost_estimation_resource_collection_filter() :: #{
%%   <<"CloudFormation">> => cloud_formation_cost_estimation_resource_collection_filter(),
%%   <<"Tags">> => list(tag_cost_estimation_resource_collection_filter())
%% }
-type cost_estimation_resource_collection_filter() :: #{binary() => any()}.

%% Example:
%% describe_account_health_request() :: #{}
-type describe_account_health_request() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% delete_insight_response() :: #{}
-type delete_insight_response() :: #{}.


%% Example:
%% update_resource_collection_request() :: #{
%%   <<"Action">> := list(any()),
%%   <<"ResourceCollection">> := update_resource_collection_filter()
%% }
-type update_resource_collection_request() :: #{binary() => any()}.

%% Example:
%% start_cost_estimation_response() :: #{}
-type start_cost_estimation_response() :: #{}.


%% Example:
%% list_notification_channels_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_notification_channels_request() :: #{binary() => any()}.


%% Example:
%% update_event_sources_config_request() :: #{
%%   <<"EventSources">> => event_sources_config()
%% }
-type update_event_sources_config_request() :: #{binary() => any()}.


%% Example:
%% recommendation_related_event_resource() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type recommendation_related_event_resource() :: #{binary() => any()}.


%% Example:
%% cloud_formation_collection() :: #{
%%   <<"StackNames">> => list(string())
%% }
-type cloud_formation_collection() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Fields">> => list(validation_exception_field()),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% delete_insight_request() :: #{}
-type delete_insight_request() :: #{}.


%% Example:
%% list_anomalous_log_groups_response() :: #{
%%   <<"AnomalousLogGroups">> => list(anomalous_log_group()),
%%   <<"InsightId">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_anomalous_log_groups_response() :: #{binary() => any()}.


%% Example:
%% sns_channel_config() :: #{
%%   <<"TopicArn">> => string()
%% }
-type sns_channel_config() :: #{binary() => any()}.


%% Example:
%% logs_anomaly_detection_integration_config() :: #{
%%   <<"OptInStatus">> => list(any())
%% }
-type logs_anomaly_detection_integration_config() :: #{binary() => any()}.


%% Example:
%% cloud_watch_metrics_dimension() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type cloud_watch_metrics_dimension() :: #{binary() => any()}.


%% Example:
%% describe_service_integration_response() :: #{
%%   <<"ServiceIntegration">> => service_integration_config()
%% }
-type describe_service_integration_response() :: #{binary() => any()}.


%% Example:
%% performance_insights_metrics_detail() :: #{
%%   <<"MetricDisplayName">> => string(),
%%   <<"MetricQuery">> => performance_insights_metric_query(),
%%   <<"ReferenceData">> => list(performance_insights_reference_data()),
%%   <<"StatsAtAnomaly">> => list(performance_insights_stat()),
%%   <<"StatsAtBaseline">> => list(performance_insights_stat()),
%%   <<"Unit">> => string()
%% }
-type performance_insights_metrics_detail() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"RetryAfterSeconds">> => integer(),
%%   <<"ServiceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% describe_feedback_response() :: #{
%%   <<"InsightFeedback">> => insight_feedback()
%% }
-type describe_feedback_response() :: #{binary() => any()}.


%% Example:
%% start_cost_estimation_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ResourceCollection">> := cost_estimation_resource_collection_filter()
%% }
-type start_cost_estimation_request() :: #{binary() => any()}.

%% Example:
%% update_service_integration_response() :: #{}
-type update_service_integration_response() :: #{}.


%% Example:
%% get_resource_collection_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_resource_collection_request() :: #{binary() => any()}.


%% Example:
%% insight_health() :: #{
%%   <<"MeanTimeToRecoverInMilliseconds">> => float(),
%%   <<"OpenProactiveInsights">> => integer(),
%%   <<"OpenReactiveInsights">> => integer()
%% }
-type insight_health() :: #{binary() => any()}.


%% Example:
%% describe_anomaly_request() :: #{
%%   <<"AccountId">> => string()
%% }
-type describe_anomaly_request() :: #{binary() => any()}.


%% Example:
%% update_service_integration_config() :: #{
%%   <<"KMSServerSideEncryption">> => kms_server_side_encryption_integration_config(),
%%   <<"LogsAnomalyDetection">> => logs_anomaly_detection_integration_config(),
%%   <<"OpsCenter">> => ops_center_integration_config()
%% }
-type update_service_integration_config() :: #{binary() => any()}.


%% Example:
%% describe_feedback_request() :: #{
%%   <<"InsightId">> => string()
%% }
-type describe_feedback_request() :: #{binary() => any()}.


%% Example:
%% start_time_range() :: #{
%%   <<"FromTime">> => non_neg_integer(),
%%   <<"ToTime">> => non_neg_integer()
%% }
-type start_time_range() :: #{binary() => any()}.


%% Example:
%% notification_channel_config() :: #{
%%   <<"Filters">> => notification_filter_config(),
%%   <<"Sns">> => sns_channel_config()
%% }
-type notification_channel_config() :: #{binary() => any()}.


%% Example:
%% event_time_range() :: #{
%%   <<"FromTime">> => non_neg_integer(),
%%   <<"ToTime">> => non_neg_integer()
%% }
-type event_time_range() :: #{binary() => any()}.


%% Example:
%% list_monitored_resources_filters() :: #{
%%   <<"ResourcePermission">> => list(any()),
%%   <<"ResourceTypeFilters">> => list(list(any())())
%% }
-type list_monitored_resources_filters() :: #{binary() => any()}.


%% Example:
%% list_organization_insights_request() :: #{
%%   <<"AccountIds">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationalUnitIds">> => list(string()),
%%   <<"StatusFilter">> := list_insights_status_filter()
%% }
-type list_organization_insights_request() :: #{binary() => any()}.


%% Example:
%% notification_filter_config() :: #{
%%   <<"MessageTypes">> => list(list(any())()),
%%   <<"Severities">> => list(list(any())())
%% }
-type notification_filter_config() :: #{binary() => any()}.


%% Example:
%% describe_organization_health_response() :: #{
%%   <<"MetricsAnalyzed">> => integer(),
%%   <<"OpenProactiveInsights">> => integer(),
%%   <<"OpenReactiveInsights">> => integer(),
%%   <<"ResourceHours">> => float()
%% }
-type describe_organization_health_response() :: #{binary() => any()}.


%% Example:
%% list_recommendations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Recommendations">> => list(recommendation())
%% }
-type list_recommendations_response() :: #{binary() => any()}.


%% Example:
%% list_insights_status_filter() :: #{
%%   <<"Any">> => list_insights_any_status_filter(),
%%   <<"Closed">> => list_insights_closed_status_filter(),
%%   <<"Ongoing">> => list_insights_ongoing_status_filter()
%% }
-type list_insights_status_filter() :: #{binary() => any()}.


%% Example:
%% insight_feedback() :: #{
%%   <<"Feedback">> => list(any()),
%%   <<"Id">> => string()
%% }
-type insight_feedback() :: #{binary() => any()}.


%% Example:
%% ops_center_integration() :: #{
%%   <<"OptInStatus">> => list(any())
%% }
-type ops_center_integration() :: #{binary() => any()}.


%% Example:
%% service_resource_cost() :: #{
%%   <<"Cost">> => float(),
%%   <<"Count">> => integer(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => string(),
%%   <<"UnitCost">> => float()
%% }
-type service_resource_cost() :: #{binary() => any()}.


%% Example:
%% resource_collection() :: #{
%%   <<"CloudFormation">> => cloud_formation_collection(),
%%   <<"Tags">> => list(tag_collection())
%% }
-type resource_collection() :: #{binary() => any()}.


%% Example:
%% proactive_anomaly_summary() :: #{
%%   <<"AnomalyReportedTimeRange">> => anomaly_reported_time_range(),
%%   <<"AnomalyResources">> => list(anomaly_resource()),
%%   <<"AnomalyTimeRange">> => anomaly_time_range(),
%%   <<"AssociatedInsightId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Limit">> => float(),
%%   <<"PredictionTimeRange">> => prediction_time_range(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"Severity">> => list(any()),
%%   <<"SourceDetails">> => anomaly_source_details(),
%%   <<"SourceMetadata">> => anomaly_source_metadata(),
%%   <<"Status">> => list(any()),
%%   <<"UpdateTime">> => non_neg_integer()
%% }
-type proactive_anomaly_summary() :: #{binary() => any()}.


%% Example:
%% list_anomalies_for_insight_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Filters">> => list_anomalies_for_insight_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTimeRange">> => start_time_range()
%% }
-type list_anomalies_for_insight_request() :: #{binary() => any()}.


%% Example:
%% account_health() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Insight">> => account_insight_health()
%% }
-type account_health() :: #{binary() => any()}.


%% Example:
%% describe_organization_health_request() :: #{
%%   <<"AccountIds">> => list(string()),
%%   <<"OrganizationalUnitIds">> => list(string())
%% }
-type describe_organization_health_request() :: #{binary() => any()}.


%% Example:
%% list_recommendations_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"InsightId">> := string(),
%%   <<"Locale">> => list(any()),
%%   <<"NextToken">> => string()
%% }
-type list_recommendations_request() :: #{binary() => any()}.


%% Example:
%% describe_resource_collection_health_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type describe_resource_collection_health_request() :: #{binary() => any()}.


%% Example:
%% monitored_resource_identifier() :: #{
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"MonitoredResourceName">> => string(),
%%   <<"ResourceCollection">> => resource_collection(),
%%   <<"ResourcePermission">> => list(any()),
%%   <<"Type">> => string()
%% }
-type monitored_resource_identifier() :: #{binary() => any()}.

-type add_notification_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_insight_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_account_health_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_account_overview_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_anomaly_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_event_sources_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_feedback_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_insight_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_organization_health_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_organization_overview_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_organization_resource_collection_health_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_resource_collection_health_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_service_integration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_cost_estimation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_collection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_anomalies_for_insight_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_anomalous_log_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_insights_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_monitored_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_notification_channels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_organization_insights_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_feedback_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type remove_notification_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type search_insights_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type search_organization_insights_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type start_cost_estimation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_event_sources_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_resource_collection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type update_service_integration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a notification channel to DevOps Guru.
%%
%% A notification channel is used to notify you
%% about important DevOps Guru events, such as when an insight is generated.
%%
%% If you use an Amazon SNS topic in another account, you must attach a
%% policy to it that grants DevOps Guru permission
%% to send it notifications. DevOps Guru adds the required policy on your
%% behalf to send notifications using Amazon SNS in your account. DevOps Guru
%% only supports standard SNS topics.
%% For more information, see Permissions
%% for Amazon SNS topics:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html.
%%
%% If you use an Amazon SNS topic that is encrypted by an Amazon Web Services
%% Key Management Service customer-managed key (CMK), then you must add
%% permissions
%% to the CMK. For more information, see Permissions for
%% Amazon Web Services KMS–encrypted Amazon SNS topics:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html.
-spec add_notification_channel(aws_client:aws_client(), add_notification_channel_request()) ->
    {ok, add_notification_channel_response(), tuple()} |
    {error, any()} |
    {error, add_notification_channel_errors(), tuple()}.
add_notification_channel(Client, Input) ->
    add_notification_channel(Client, Input, []).

-spec add_notification_channel(aws_client:aws_client(), add_notification_channel_request(), proplists:proplist()) ->
    {ok, add_notification_channel_response(), tuple()} |
    {error, any()} |
    {error, add_notification_channel_errors(), tuple()}.
add_notification_channel(Client, Input0, Options0) ->
    Method = put,
    Path = ["/channels"],
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

%% @doc Deletes the insight along with the associated anomalies, events and
%% recommendations.
-spec delete_insight(aws_client:aws_client(), binary() | list(), delete_insight_request()) ->
    {ok, delete_insight_response(), tuple()} |
    {error, any()} |
    {error, delete_insight_errors(), tuple()}.
delete_insight(Client, Id, Input) ->
    delete_insight(Client, Id, Input, []).

-spec delete_insight(aws_client:aws_client(), binary() | list(), delete_insight_request(), proplists:proplist()) ->
    {ok, delete_insight_response(), tuple()} |
    {error, any()} |
    {error, delete_insight_errors(), tuple()}.
delete_insight(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/insights/", aws_util:encode_uri(Id), ""],
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

%% @doc Returns the number of open reactive insights, the number of open
%% proactive insights,
%% and the number of metrics analyzed in your Amazon Web Services account.
%%
%% Use these numbers to gauge the
%% health of operations in your Amazon Web Services account.
-spec describe_account_health(aws_client:aws_client()) ->
    {ok, describe_account_health_response(), tuple()} |
    {error, any()} |
    {error, describe_account_health_errors(), tuple()}.
describe_account_health(Client)
  when is_map(Client) ->
    describe_account_health(Client, #{}, #{}).

-spec describe_account_health(aws_client:aws_client(), map(), map()) ->
    {ok, describe_account_health_response(), tuple()} |
    {error, any()} |
    {error, describe_account_health_errors(), tuple()}.
describe_account_health(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_health(Client, QueryMap, HeadersMap, []).

-spec describe_account_health(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_account_health_response(), tuple()} |
    {error, any()} |
    {error, describe_account_health_errors(), tuple()}.
describe_account_health(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/health"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc For the time range passed in, returns the number of open reactive
%% insight that were
%% created, the number of open proactive insights that were created, and the
%% Mean Time to Recover (MTTR) for all
%% closed reactive insights.
-spec describe_account_overview(aws_client:aws_client(), describe_account_overview_request()) ->
    {ok, describe_account_overview_response(), tuple()} |
    {error, any()} |
    {error, describe_account_overview_errors(), tuple()}.
describe_account_overview(Client, Input) ->
    describe_account_overview(Client, Input, []).

-spec describe_account_overview(aws_client:aws_client(), describe_account_overview_request(), proplists:proplist()) ->
    {ok, describe_account_overview_response(), tuple()} |
    {error, any()} |
    {error, describe_account_overview_errors(), tuple()}.
describe_account_overview(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/overview"],
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

%% @doc Returns details about an anomaly that you specify using its ID.
-spec describe_anomaly(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_anomaly_response(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_errors(), tuple()}.
describe_anomaly(Client, Id)
  when is_map(Client) ->
    describe_anomaly(Client, Id, #{}, #{}).

-spec describe_anomaly(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_anomaly_response(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_errors(), tuple()}.
describe_anomaly(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_anomaly(Client, Id, QueryMap, HeadersMap, []).

-spec describe_anomaly(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_anomaly_response(), tuple()} |
    {error, any()} |
    {error, describe_anomaly_errors(), tuple()}.
describe_anomaly(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/anomalies/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AccountId">>, maps:get(<<"AccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the integration status of services that are integrated with
%% DevOps Guru as Consumer
%% via EventBridge.
%%
%% The one service that can be integrated with DevOps Guru is Amazon CodeGuru
%% Profiler, which can produce proactive recommendations which can be stored
%% and viewed in
%% DevOps Guru.
-spec describe_event_sources_config(aws_client:aws_client(), describe_event_sources_config_request()) ->
    {ok, describe_event_sources_config_response(), tuple()} |
    {error, any()} |
    {error, describe_event_sources_config_errors(), tuple()}.
describe_event_sources_config(Client, Input) ->
    describe_event_sources_config(Client, Input, []).

-spec describe_event_sources_config(aws_client:aws_client(), describe_event_sources_config_request(), proplists:proplist()) ->
    {ok, describe_event_sources_config_response(), tuple()} |
    {error, any()} |
    {error, describe_event_sources_config_errors(), tuple()}.
describe_event_sources_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/event-sources"],
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

%% @doc Returns the most recent feedback submitted in the current Amazon Web
%% Services account and Region.
-spec describe_feedback(aws_client:aws_client(), describe_feedback_request()) ->
    {ok, describe_feedback_response(), tuple()} |
    {error, any()} |
    {error, describe_feedback_errors(), tuple()}.
describe_feedback(Client, Input) ->
    describe_feedback(Client, Input, []).

-spec describe_feedback(aws_client:aws_client(), describe_feedback_request(), proplists:proplist()) ->
    {ok, describe_feedback_response(), tuple()} |
    {error, any()} |
    {error, describe_feedback_errors(), tuple()}.
describe_feedback(Client, Input0, Options0) ->
    Method = post,
    Path = ["/feedback"],
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

%% @doc Returns details about an insight that you specify using its ID.
-spec describe_insight(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_insight_response(), tuple()} |
    {error, any()} |
    {error, describe_insight_errors(), tuple()}.
describe_insight(Client, Id)
  when is_map(Client) ->
    describe_insight(Client, Id, #{}, #{}).

-spec describe_insight(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_insight_response(), tuple()} |
    {error, any()} |
    {error, describe_insight_errors(), tuple()}.
describe_insight(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_insight(Client, Id, QueryMap, HeadersMap, []).

-spec describe_insight(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_insight_response(), tuple()} |
    {error, any()} |
    {error, describe_insight_errors(), tuple()}.
describe_insight(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/insights/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AccountId">>, maps:get(<<"AccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns active insights, predictive insights, and resource hours
%% analyzed in last
%% hour.
-spec describe_organization_health(aws_client:aws_client(), describe_organization_health_request()) ->
    {ok, describe_organization_health_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_health_errors(), tuple()}.
describe_organization_health(Client, Input) ->
    describe_organization_health(Client, Input, []).

-spec describe_organization_health(aws_client:aws_client(), describe_organization_health_request(), proplists:proplist()) ->
    {ok, describe_organization_health_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_health_errors(), tuple()}.
describe_organization_health(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/health"],
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

%% @doc Returns an overview of your organization's history based on the
%% specified time range.
%%
%% The overview includes the total reactive and proactive insights.
-spec describe_organization_overview(aws_client:aws_client(), describe_organization_overview_request()) ->
    {ok, describe_organization_overview_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_overview_errors(), tuple()}.
describe_organization_overview(Client, Input) ->
    describe_organization_overview(Client, Input, []).

-spec describe_organization_overview(aws_client:aws_client(), describe_organization_overview_request(), proplists:proplist()) ->
    {ok, describe_organization_overview_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_overview_errors(), tuple()}.
describe_organization_overview(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/overview"],
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

%% @doc Provides an overview of your system's health.
%%
%% If additional member accounts are part
%% of your organization, you can filter those accounts using the
%% `AccountIds'
%% field.
-spec describe_organization_resource_collection_health(aws_client:aws_client(), describe_organization_resource_collection_health_request()) ->
    {ok, describe_organization_resource_collection_health_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_resource_collection_health_errors(), tuple()}.
describe_organization_resource_collection_health(Client, Input) ->
    describe_organization_resource_collection_health(Client, Input, []).

-spec describe_organization_resource_collection_health(aws_client:aws_client(), describe_organization_resource_collection_health_request(), proplists:proplist()) ->
    {ok, describe_organization_resource_collection_health_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_resource_collection_health_errors(), tuple()}.
describe_organization_resource_collection_health(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/health/resource-collection"],
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

%% @doc Returns the number of open proactive insights, open reactive
%% insights, and the Mean Time to Recover (MTTR)
%% for all closed insights in resource collections in your account.
%%
%% You specify the type of
%% Amazon Web Services resources collection. The two types of Amazon Web
%% Services resource collections supported are Amazon Web Services
%% CloudFormation stacks and
%% Amazon Web Services resources that contain the same Amazon Web Services
%% tag. DevOps Guru can be configured to analyze
%% the Amazon Web Services resources that are defined in the stacks or that
%% are tagged using the same tag key. You can specify up to 500 Amazon Web
%% Services CloudFormation stacks.
-spec describe_resource_collection_health(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_resource_collection_health_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_collection_health_errors(), tuple()}.
describe_resource_collection_health(Client, ResourceCollectionType)
  when is_map(Client) ->
    describe_resource_collection_health(Client, ResourceCollectionType, #{}, #{}).

-spec describe_resource_collection_health(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_resource_collection_health_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_collection_health_errors(), tuple()}.
describe_resource_collection_health(Client, ResourceCollectionType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_resource_collection_health(Client, ResourceCollectionType, QueryMap, HeadersMap, []).

-spec describe_resource_collection_health(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_resource_collection_health_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_collection_health_errors(), tuple()}.
describe_resource_collection_health(Client, ResourceCollectionType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/health/resource-collection/", aws_util:encode_uri(ResourceCollectionType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the integration status of services that are integrated with
%% DevOps Guru.
%%
%% The one service that can be integrated with DevOps Guru
%% is Amazon Web Services Systems Manager, which can be used to create an
%% OpsItem for each generated insight.
-spec describe_service_integration(aws_client:aws_client()) ->
    {ok, describe_service_integration_response(), tuple()} |
    {error, any()} |
    {error, describe_service_integration_errors(), tuple()}.
describe_service_integration(Client)
  when is_map(Client) ->
    describe_service_integration(Client, #{}, #{}).

-spec describe_service_integration(aws_client:aws_client(), map(), map()) ->
    {ok, describe_service_integration_response(), tuple()} |
    {error, any()} |
    {error, describe_service_integration_errors(), tuple()}.
describe_service_integration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_service_integration(Client, QueryMap, HeadersMap, []).

-spec describe_service_integration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_service_integration_response(), tuple()} |
    {error, any()} |
    {error, describe_service_integration_errors(), tuple()}.
describe_service_integration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/service-integrations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an estimate of the monthly cost for DevOps Guru to analyze
%% your Amazon Web Services resources.
%%
%% For more information,
%% see Estimate your
%% Amazon DevOps Guru costs:
%% https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html
%% and
%% Amazon DevOps Guru pricing: http://aws.amazon.com/devops-guru/pricing/.
-spec get_cost_estimation(aws_client:aws_client()) ->
    {ok, get_cost_estimation_response(), tuple()} |
    {error, any()} |
    {error, get_cost_estimation_errors(), tuple()}.
get_cost_estimation(Client)
  when is_map(Client) ->
    get_cost_estimation(Client, #{}, #{}).

-spec get_cost_estimation(aws_client:aws_client(), map(), map()) ->
    {ok, get_cost_estimation_response(), tuple()} |
    {error, any()} |
    {error, get_cost_estimation_errors(), tuple()}.
get_cost_estimation(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cost_estimation(Client, QueryMap, HeadersMap, []).

-spec get_cost_estimation(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_cost_estimation_response(), tuple()} |
    {error, any()} |
    {error, get_cost_estimation_errors(), tuple()}.
get_cost_estimation(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cost-estimation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns lists Amazon Web Services resources that are of the specified
%% resource collection type.
%%
%% The two types of Amazon Web Services resource collections supported are
%% Amazon Web Services CloudFormation stacks and
%% Amazon Web Services resources that contain the same Amazon Web Services
%% tag. DevOps Guru can be configured to analyze
%% the Amazon Web Services resources that are defined in the stacks or that
%% are tagged using the same tag key. You can specify up to 500 Amazon Web
%% Services CloudFormation stacks.
-spec get_resource_collection(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_collection_response(), tuple()} |
    {error, any()} |
    {error, get_resource_collection_errors(), tuple()}.
get_resource_collection(Client, ResourceCollectionType)
  when is_map(Client) ->
    get_resource_collection(Client, ResourceCollectionType, #{}, #{}).

-spec get_resource_collection(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_collection_response(), tuple()} |
    {error, any()} |
    {error, get_resource_collection_errors(), tuple()}.
get_resource_collection(Client, ResourceCollectionType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_collection(Client, ResourceCollectionType, QueryMap, HeadersMap, []).

-spec get_resource_collection(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_collection_response(), tuple()} |
    {error, any()} |
    {error, get_resource_collection_errors(), tuple()}.
get_resource_collection(Client, ResourceCollectionType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resource-collections/", aws_util:encode_uri(ResourceCollectionType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the anomalies that belong to an insight that you
%% specify using its
%% ID.
-spec list_anomalies_for_insight(aws_client:aws_client(), binary() | list(), list_anomalies_for_insight_request()) ->
    {ok, list_anomalies_for_insight_response(), tuple()} |
    {error, any()} |
    {error, list_anomalies_for_insight_errors(), tuple()}.
list_anomalies_for_insight(Client, InsightId, Input) ->
    list_anomalies_for_insight(Client, InsightId, Input, []).

-spec list_anomalies_for_insight(aws_client:aws_client(), binary() | list(), list_anomalies_for_insight_request(), proplists:proplist()) ->
    {ok, list_anomalies_for_insight_response(), tuple()} |
    {error, any()} |
    {error, list_anomalies_for_insight_errors(), tuple()}.
list_anomalies_for_insight(Client, InsightId, Input0, Options0) ->
    Method = post,
    Path = ["/anomalies/insight/", aws_util:encode_uri(InsightId), ""],
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

%% @doc
%% Returns the list of log groups that contain log anomalies.
-spec list_anomalous_log_groups(aws_client:aws_client(), list_anomalous_log_groups_request()) ->
    {ok, list_anomalous_log_groups_response(), tuple()} |
    {error, any()} |
    {error, list_anomalous_log_groups_errors(), tuple()}.
list_anomalous_log_groups(Client, Input) ->
    list_anomalous_log_groups(Client, Input, []).

-spec list_anomalous_log_groups(aws_client:aws_client(), list_anomalous_log_groups_request(), proplists:proplist()) ->
    {ok, list_anomalous_log_groups_response(), tuple()} |
    {error, any()} |
    {error, list_anomalous_log_groups_errors(), tuple()}.
list_anomalous_log_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-log-anomalies"],
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

%% @doc Returns a list of the events emitted by the resources that are
%% evaluated by DevOps Guru.
%%
%% You can use filters to specify which events are returned.
-spec list_events(aws_client:aws_client(), list_events_request()) ->
    {ok, list_events_response(), tuple()} |
    {error, any()} |
    {error, list_events_errors(), tuple()}.
list_events(Client, Input) ->
    list_events(Client, Input, []).

-spec list_events(aws_client:aws_client(), list_events_request(), proplists:proplist()) ->
    {ok, list_events_response(), tuple()} |
    {error, any()} |
    {error, list_events_errors(), tuple()}.
list_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/events"],
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

%% @doc Returns a list of insights in your Amazon Web Services account.
%%
%% You can specify which insights are
%% returned by their start time and status (`ONGOING', `CLOSED', or
%% `ANY').
-spec list_insights(aws_client:aws_client(), list_insights_request()) ->
    {ok, list_insights_response(), tuple()} |
    {error, any()} |
    {error, list_insights_errors(), tuple()}.
list_insights(Client, Input) ->
    list_insights(Client, Input, []).

-spec list_insights(aws_client:aws_client(), list_insights_request(), proplists:proplist()) ->
    {ok, list_insights_response(), tuple()} |
    {error, any()} |
    {error, list_insights_errors(), tuple()}.
list_insights(Client, Input0, Options0) ->
    Method = post,
    Path = ["/insights"],
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

%% @doc
%% Returns the list of all log groups that are being monitored and tagged by
%% DevOps Guru.
-spec list_monitored_resources(aws_client:aws_client(), list_monitored_resources_request()) ->
    {ok, list_monitored_resources_response(), tuple()} |
    {error, any()} |
    {error, list_monitored_resources_errors(), tuple()}.
list_monitored_resources(Client, Input) ->
    list_monitored_resources(Client, Input, []).

-spec list_monitored_resources(aws_client:aws_client(), list_monitored_resources_request(), proplists:proplist()) ->
    {ok, list_monitored_resources_response(), tuple()} |
    {error, any()} |
    {error, list_monitored_resources_errors(), tuple()}.
list_monitored_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/monitoredResources"],
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

%% @doc Returns a list of notification channels configured for DevOps Guru.
%%
%% Each notification
%% channel is used to notify you when DevOps Guru generates an insight that
%% contains information
%% about how to improve your operations. The one
%% supported notification channel is Amazon Simple Notification Service
%% (Amazon SNS).
-spec list_notification_channels(aws_client:aws_client(), list_notification_channels_request()) ->
    {ok, list_notification_channels_response(), tuple()} |
    {error, any()} |
    {error, list_notification_channels_errors(), tuple()}.
list_notification_channels(Client, Input) ->
    list_notification_channels(Client, Input, []).

-spec list_notification_channels(aws_client:aws_client(), list_notification_channels_request(), proplists:proplist()) ->
    {ok, list_notification_channels_response(), tuple()} |
    {error, any()} |
    {error, list_notification_channels_errors(), tuple()}.
list_notification_channels(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channels"],
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

%% @doc Returns a list of insights associated with the account or OU Id.
-spec list_organization_insights(aws_client:aws_client(), list_organization_insights_request()) ->
    {ok, list_organization_insights_response(), tuple()} |
    {error, any()} |
    {error, list_organization_insights_errors(), tuple()}.
list_organization_insights(Client, Input) ->
    list_organization_insights(Client, Input, []).

-spec list_organization_insights(aws_client:aws_client(), list_organization_insights_request(), proplists:proplist()) ->
    {ok, list_organization_insights_response(), tuple()} |
    {error, any()} |
    {error, list_organization_insights_errors(), tuple()}.
list_organization_insights(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/insights"],
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

%% @doc Returns a list of a specified insight's recommendations.
%%
%% Each recommendation includes
%% a list of related metrics and a list of related events.
-spec list_recommendations(aws_client:aws_client(), list_recommendations_request()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, Input) ->
    list_recommendations(Client, Input, []).

-spec list_recommendations(aws_client:aws_client(), list_recommendations_request(), proplists:proplist()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/recommendations"],
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

%% @doc Collects customer feedback about the specified insight.
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
    Method = put,
    Path = ["/feedback"],
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

%% @doc Removes a notification channel from DevOps Guru.
%%
%% A notification channel is used to notify
%% you when DevOps Guru generates an insight that contains information about
%% how to improve your
%% operations.
-spec remove_notification_channel(aws_client:aws_client(), binary() | list(), remove_notification_channel_request()) ->
    {ok, remove_notification_channel_response(), tuple()} |
    {error, any()} |
    {error, remove_notification_channel_errors(), tuple()}.
remove_notification_channel(Client, Id, Input) ->
    remove_notification_channel(Client, Id, Input, []).

-spec remove_notification_channel(aws_client:aws_client(), binary() | list(), remove_notification_channel_request(), proplists:proplist()) ->
    {ok, remove_notification_channel_response(), tuple()} |
    {error, any()} |
    {error, remove_notification_channel_errors(), tuple()}.
remove_notification_channel(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(Id), ""],
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

%% @doc Returns a list of insights in your Amazon Web Services account.
%%
%% You can specify which insights are
%% returned by their start time, one or more statuses (`ONGOING' or
%% `CLOSED'), one or more severities
%% (`LOW', `MEDIUM', and `HIGH'), and type
%% (`REACTIVE' or `PROACTIVE').
%%
%% Use the `Filters' parameter to specify status and severity search
%% parameters. Use the `Type' parameter to specify `REACTIVE' or
%% `PROACTIVE' in your search.
-spec search_insights(aws_client:aws_client(), search_insights_request()) ->
    {ok, search_insights_response(), tuple()} |
    {error, any()} |
    {error, search_insights_errors(), tuple()}.
search_insights(Client, Input) ->
    search_insights(Client, Input, []).

-spec search_insights(aws_client:aws_client(), search_insights_request(), proplists:proplist()) ->
    {ok, search_insights_response(), tuple()} |
    {error, any()} |
    {error, search_insights_errors(), tuple()}.
search_insights(Client, Input0, Options0) ->
    Method = post,
    Path = ["/insights/search"],
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

%% @doc Returns a list of insights in your organization.
%%
%% You can specify which insights are
%% returned by their start time, one or more statuses (`ONGOING',
%% `CLOSED', and `CLOSED'), one or more severities
%% (`LOW', `MEDIUM', and `HIGH'), and type
%% (`REACTIVE' or `PROACTIVE').
%%
%% Use the `Filters' parameter to specify status and severity search
%% parameters. Use the `Type' parameter to specify `REACTIVE' or
%% `PROACTIVE' in your search.
-spec search_organization_insights(aws_client:aws_client(), search_organization_insights_request()) ->
    {ok, search_organization_insights_response(), tuple()} |
    {error, any()} |
    {error, search_organization_insights_errors(), tuple()}.
search_organization_insights(Client, Input) ->
    search_organization_insights(Client, Input, []).

-spec search_organization_insights(aws_client:aws_client(), search_organization_insights_request(), proplists:proplist()) ->
    {ok, search_organization_insights_response(), tuple()} |
    {error, any()} |
    {error, search_organization_insights_errors(), tuple()}.
search_organization_insights(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/insights/search"],
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

%% @doc Starts the creation of an estimate of the monthly cost to analyze
%% your Amazon Web Services
%% resources.
-spec start_cost_estimation(aws_client:aws_client(), start_cost_estimation_request()) ->
    {ok, start_cost_estimation_response(), tuple()} |
    {error, any()} |
    {error, start_cost_estimation_errors(), tuple()}.
start_cost_estimation(Client, Input) ->
    start_cost_estimation(Client, Input, []).

-spec start_cost_estimation(aws_client:aws_client(), start_cost_estimation_request(), proplists:proplist()) ->
    {ok, start_cost_estimation_response(), tuple()} |
    {error, any()} |
    {error, start_cost_estimation_errors(), tuple()}.
start_cost_estimation(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cost-estimation"],
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

%% @doc Enables or disables integration with a service that can be integrated
%% with DevOps Guru.
%%
%% The
%% one service that can be integrated with DevOps Guru is Amazon CodeGuru
%% Profiler, which
%% can produce proactive recommendations which can be stored and viewed in
%% DevOps Guru.
-spec update_event_sources_config(aws_client:aws_client(), update_event_sources_config_request()) ->
    {ok, update_event_sources_config_response(), tuple()} |
    {error, any()} |
    {error, update_event_sources_config_errors(), tuple()}.
update_event_sources_config(Client, Input) ->
    update_event_sources_config(Client, Input, []).

-spec update_event_sources_config(aws_client:aws_client(), update_event_sources_config_request(), proplists:proplist()) ->
    {ok, update_event_sources_config_response(), tuple()} |
    {error, any()} |
    {error, update_event_sources_config_errors(), tuple()}.
update_event_sources_config(Client, Input0, Options0) ->
    Method = put,
    Path = ["/event-sources"],
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

%% @doc Updates the collection of resources that DevOps Guru analyzes.
%%
%% The two types of Amazon Web Services resource collections supported are
%% Amazon Web Services CloudFormation stacks and
%% Amazon Web Services resources that contain the same Amazon Web Services
%% tag. DevOps Guru can be configured to analyze
%% the Amazon Web Services resources that are defined in the stacks or that
%% are tagged using the same tag key. You can specify up to 500 Amazon Web
%% Services CloudFormation stacks. This method also creates the IAM role
%% required for
%% you to use DevOps Guru.
-spec update_resource_collection(aws_client:aws_client(), update_resource_collection_request()) ->
    {ok, update_resource_collection_response(), tuple()} |
    {error, any()} |
    {error, update_resource_collection_errors(), tuple()}.
update_resource_collection(Client, Input) ->
    update_resource_collection(Client, Input, []).

-spec update_resource_collection(aws_client:aws_client(), update_resource_collection_request(), proplists:proplist()) ->
    {ok, update_resource_collection_response(), tuple()} |
    {error, any()} |
    {error, update_resource_collection_errors(), tuple()}.
update_resource_collection(Client, Input0, Options0) ->
    Method = put,
    Path = ["/resource-collections"],
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

%% @doc Enables or disables integration with a service that can be integrated
%% with DevOps Guru.
%%
%% The
%% one service that can be integrated with DevOps Guru is Amazon Web Services
%% Systems Manager, which can be used to create
%% an OpsItem for each generated insight.
-spec update_service_integration(aws_client:aws_client(), update_service_integration_request()) ->
    {ok, update_service_integration_response(), tuple()} |
    {error, any()} |
    {error, update_service_integration_errors(), tuple()}.
update_service_integration(Client, Input) ->
    update_service_integration(Client, Input, []).

-spec update_service_integration(aws_client:aws_client(), update_service_integration_request(), proplists:proplist()) ->
    {ok, update_service_integration_response(), tuple()} |
    {error, any()} |
    {error, update_service_integration_errors(), tuple()}.
update_service_integration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/service-integrations"],
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
    Client1 = Client#{service => <<"devops-guru">>},
    Host = build_host(<<"devops-guru">>, Client1),
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
