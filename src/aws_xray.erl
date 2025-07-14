%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services X-Ray provides APIs for managing debug traces and
%% retrieving service maps
%% and other data created by processing those traces.
-module(aws_xray).

-export([batch_get_traces/2,
         batch_get_traces/3,
         cancel_trace_retrieval/2,
         cancel_trace_retrieval/3,
         create_group/2,
         create_group/3,
         create_sampling_rule/2,
         create_sampling_rule/3,
         delete_group/2,
         delete_group/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_sampling_rule/2,
         delete_sampling_rule/3,
         get_encryption_config/2,
         get_encryption_config/3,
         get_group/2,
         get_group/3,
         get_groups/2,
         get_groups/3,
         get_indexing_rules/2,
         get_indexing_rules/3,
         get_insight/2,
         get_insight/3,
         get_insight_events/2,
         get_insight_events/3,
         get_insight_impact_graph/2,
         get_insight_impact_graph/3,
         get_insight_summaries/2,
         get_insight_summaries/3,
         get_retrieved_traces_graph/2,
         get_retrieved_traces_graph/3,
         get_sampling_rules/2,
         get_sampling_rules/3,
         get_sampling_statistic_summaries/2,
         get_sampling_statistic_summaries/3,
         get_sampling_targets/2,
         get_sampling_targets/3,
         get_service_graph/2,
         get_service_graph/3,
         get_time_series_service_statistics/2,
         get_time_series_service_statistics/3,
         get_trace_graph/2,
         get_trace_graph/3,
         get_trace_segment_destination/2,
         get_trace_segment_destination/3,
         get_trace_summaries/2,
         get_trace_summaries/3,
         list_resource_policies/2,
         list_resource_policies/3,
         list_retrieved_traces/2,
         list_retrieved_traces/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_encryption_config/2,
         put_encryption_config/3,
         put_resource_policy/2,
         put_resource_policy/3,
         put_telemetry_records/2,
         put_telemetry_records/3,
         put_trace_segments/2,
         put_trace_segments/3,
         start_trace_retrieval/2,
         start_trace_retrieval/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_group/2,
         update_group/3,
         update_indexing_rule/2,
         update_indexing_rule/3,
         update_sampling_rule/2,
         update_sampling_rule/3,
         update_trace_segment_destination/2,
         update_trace_segment_destination/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% put_encryption_config_result() :: #{
%%   <<"EncryptionConfig">> => encryption_config()
%% }
-type put_encryption_config_result() :: #{binary() => any()}.


%% Example:
%% get_service_graph_result() :: #{
%%   <<"ContainsOldGroupVersions">> => boolean(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"Services">> => list(service()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type get_service_graph_result() :: #{binary() => any()}.


%% Example:
%% insight_impact_graph_edge() :: #{
%%   <<"ReferenceId">> => integer()
%% }
-type insight_impact_graph_edge() :: #{binary() => any()}.


%% Example:
%% edge_statistics() :: #{
%%   <<"ErrorStatistics">> => error_statistics(),
%%   <<"FaultStatistics">> => fault_statistics(),
%%   <<"OkCount">> => float(),
%%   <<"TotalCount">> => float(),
%%   <<"TotalResponseTime">> => float()
%% }
-type edge_statistics() :: #{binary() => any()}.


%% Example:
%% insight_summary() :: #{
%%   <<"Categories">> => list(list(any())()),
%%   <<"ClientRequestImpactStatistics">> => request_impact_statistics(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"GroupARN">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"InsightId">> => string(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"RootCauseServiceId">> => service_id(),
%%   <<"RootCauseServiceRequestImpactStatistics">> => request_impact_statistics(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"Summary">> => string(),
%%   <<"TopAnomalousServices">> => list(anomalous_service())
%% }
-type insight_summary() :: #{binary() => any()}.


%% Example:
%% graph_link() :: #{
%%   <<"DestinationTraceIds">> => list(string()),
%%   <<"ReferenceType">> => string(),
%%   <<"SourceTraceId">> => string()
%% }
-type graph_link() :: #{binary() => any()}.


%% Example:
%% response_time_root_cause_service() :: #{
%%   <<"AccountId">> => string(),
%%   <<"EntityPath">> => list(response_time_root_cause_entity()),
%%   <<"Inferred">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Names">> => list(string()),
%%   <<"Type">> => string()
%% }
-type response_time_root_cause_service() :: #{binary() => any()}.


%% Example:
%% start_trace_retrieval_result() :: #{
%%   <<"RetrievalToken">> => string()
%% }
-type start_trace_retrieval_result() :: #{binary() => any()}.


%% Example:
%% insights_configuration() :: #{
%%   <<"InsightsEnabled">> => boolean(),
%%   <<"NotificationsEnabled">> => boolean()
%% }
-type insights_configuration() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% encryption_config() :: #{
%%   <<"KeyId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type encryption_config() :: #{binary() => any()}.


%% Example:
%% put_encryption_config_request() :: #{
%%   <<"KeyId">> => string(),
%%   <<"Type">> := list(any())
%% }
-type put_encryption_config_request() :: #{binary() => any()}.


%% Example:
%% create_group_result() :: #{
%%   <<"Group">> => group()
%% }
-type create_group_result() :: #{binary() => any()}.


%% Example:
%% instance_id_detail() :: #{
%%   <<"Id">> => string()
%% }
-type instance_id_detail() :: #{binary() => any()}.


%% Example:
%% get_indexing_rules_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_indexing_rules_request() :: #{binary() => any()}.


%% Example:
%% get_group_result() :: #{
%%   <<"Group">> => group()
%% }
-type get_group_result() :: #{binary() => any()}.


%% Example:
%% put_trace_segments_request() :: #{
%%   <<"TraceSegmentDocuments">> := list(string())
%% }
-type put_trace_segments_request() :: #{binary() => any()}.


%% Example:
%% get_groups_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_groups_request() :: #{binary() => any()}.


%% Example:
%% list_retrieved_traces_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RetrievalStatus">> => list(any()),
%%   <<"TraceFormat">> => list(any()),
%%   <<"Traces">> => list(retrieved_trace())
%% }
-type list_retrieved_traces_result() :: #{binary() => any()}.


%% Example:
%% sampling_rule_update() :: #{
%%   <<"Attributes">> => map(),
%%   <<"FixedRate">> => float(),
%%   <<"HTTPMethod">> => string(),
%%   <<"Host">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"ReservoirSize">> => integer(),
%%   <<"ResourceARN">> => string(),
%%   <<"RuleARN">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceType">> => string(),
%%   <<"URLPath">> => string()
%% }
-type sampling_rule_update() :: #{binary() => any()}.


%% Example:
%% get_insight_request() :: #{
%%   <<"InsightId">> := string()
%% }
-type get_insight_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% anomalous_service() :: #{
%%   <<"ServiceId">> => service_id()
%% }
-type anomalous_service() :: #{binary() => any()}.


%% Example:
%% get_trace_summaries_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"FilterExpression">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Sampling">> => boolean(),
%%   <<"SamplingStrategy">> => sampling_strategy(),
%%   <<"StartTime">> := non_neg_integer(),
%%   <<"TimeRangeType">> => list(any())
%% }
-type get_trace_summaries_request() :: #{binary() => any()}.


%% Example:
%% probabilistic_rule_value() :: #{
%%   <<"ActualSamplingPercentage">> => float(),
%%   <<"DesiredSamplingPercentage">> => float()
%% }
-type probabilistic_rule_value() :: #{binary() => any()}.


%% Example:
%% insight_impact_graph_service() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Edges">> => list(insight_impact_graph_edge()),
%%   <<"Name">> => string(),
%%   <<"Names">> => list(string()),
%%   <<"ReferenceId">> => integer(),
%%   <<"Type">> => string()
%% }
-type insight_impact_graph_service() :: #{binary() => any()}.


%% Example:
%% list_retrieved_traces_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RetrievalToken">> := string(),
%%   <<"TraceFormat">> => list(any())
%% }
-type list_retrieved_traces_request() :: #{binary() => any()}.


%% Example:
%% get_trace_summaries_result() :: #{
%%   <<"ApproximateTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"TraceSummaries">> => list(trace_summary()),
%%   <<"TracesProcessedCount">> => float()
%% }
-type get_trace_summaries_result() :: #{binary() => any()}.


%% Example:
%% create_sampling_rule_result() :: #{
%%   <<"SamplingRuleRecord">> => sampling_rule_record()
%% }
-type create_sampling_rule_result() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_result() :: #{
%%   <<"ResourcePolicy">> => resource_policy()
%% }
-type put_resource_policy_result() :: #{binary() => any()}.


%% Example:
%% availability_zone_detail() :: #{
%%   <<"Name">> => string()
%% }
-type availability_zone_detail() :: #{binary() => any()}.


%% Example:
%% delete_sampling_rule_request() :: #{
%%   <<"RuleARN">> => string(),
%%   <<"RuleName">> => string()
%% }
-type delete_sampling_rule_request() :: #{binary() => any()}.


%% Example:
%% put_telemetry_records_request() :: #{
%%   <<"EC2InstanceId">> => string(),
%%   <<"Hostname">> => string(),
%%   <<"ResourceARN">> => string(),
%%   <<"TelemetryRecords">> := list(telemetry_record())
%% }
-type put_telemetry_records_request() :: #{binary() => any()}.


%% Example:
%% sampling_statistic_summary() :: #{
%%   <<"BorrowCount">> => integer(),
%%   <<"RequestCount">> => integer(),
%%   <<"RuleName">> => string(),
%%   <<"SampledCount">> => integer(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type sampling_statistic_summary() :: #{binary() => any()}.


%% Example:
%% error_root_cause() :: #{
%%   <<"ClientImpacting">> => boolean(),
%%   <<"Services">> => list(error_root_cause_service())
%% }
-type error_root_cause() :: #{binary() => any()}.


%% Example:
%% get_trace_graph_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Services">> => list(service())
%% }
-type get_trace_graph_result() :: #{binary() => any()}.


%% Example:
%% get_sampling_rules_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_sampling_rules_request() :: #{binary() => any()}.


%% Example:
%% service() :: #{
%%   <<"AccountId">> => string(),
%%   <<"DurationHistogram">> => list(histogram_entry()),
%%   <<"Edges">> => list(edge()),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Names">> => list(string()),
%%   <<"ReferenceId">> => integer(),
%%   <<"ResponseTimeHistogram">> => list(histogram_entry()),
%%   <<"Root">> => boolean(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => string(),
%%   <<"SummaryStatistics">> => service_statistics(),
%%   <<"Type">> => string()
%% }
-type service() :: #{binary() => any()}.


%% Example:
%% policy_size_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type policy_size_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% probabilistic_rule_value_update() :: #{
%%   <<"DesiredSamplingPercentage">> => float()
%% }
-type probabilistic_rule_value_update() :: #{binary() => any()}.


%% Example:
%% sampling_target_document() :: #{
%%   <<"FixedRate">> => float(),
%%   <<"Interval">> => integer(),
%%   <<"ReservoirQuota">> => integer(),
%%   <<"ReservoirQuotaTTL">> => non_neg_integer(),
%%   <<"RuleName">> => string()
%% }
-type sampling_target_document() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% retrieved_trace() :: #{
%%   <<"Duration">> => float(),
%%   <<"Id">> => string(),
%%   <<"Spans">> => list(span())
%% }
-type retrieved_trace() :: #{binary() => any()}.


%% Example:
%% batch_get_traces_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Traces">> => list(trace()),
%%   <<"UnprocessedTraceIds">> => list(string())
%% }
-type batch_get_traces_result() :: #{binary() => any()}.


%% Example:
%% indexing_rule() :: #{
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Rule">> => list()
%% }
-type indexing_rule() :: #{binary() => any()}.


%% Example:
%% update_group_request() :: #{
%%   <<"FilterExpression">> => string(),
%%   <<"GroupARN">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"InsightsConfiguration">> => insights_configuration()
%% }
-type update_group_request() :: #{binary() => any()}.


%% Example:
%% segment() :: #{
%%   <<"Document">> => string(),
%%   <<"Id">> => string()
%% }
-type segment() :: #{binary() => any()}.


%% Example:
%% update_trace_segment_destination_result() :: #{
%%   <<"Destination">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type update_trace_segment_destination_result() :: #{binary() => any()}.


%% Example:
%% get_insight_events_request() :: #{
%%   <<"InsightId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_insight_events_request() :: #{binary() => any()}.


%% Example:
%% retrieved_service() :: #{
%%   <<"Links">> => list(graph_link()),
%%   <<"Service">> => service()
%% }
-type retrieved_service() :: #{binary() => any()}.


%% Example:
%% batch_get_traces_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TraceIds">> := list(string())
%% }
-type batch_get_traces_request() :: #{binary() => any()}.


%% Example:
%% error_statistics() :: #{
%%   <<"OtherCount">> => float(),
%%   <<"ThrottleCount">> => float(),
%%   <<"TotalCount">> => float()
%% }
-type error_statistics() :: #{binary() => any()}.


%% Example:
%% value_with_service_ids() :: #{
%%   <<"AnnotationValue">> => list(),
%%   <<"ServiceIds">> => list(service_id())
%% }
-type value_with_service_ids() :: #{binary() => any()}.


%% Example:
%% start_trace_retrieval_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"StartTime">> := non_neg_integer(),
%%   <<"TraceIds">> := list(string())
%% }
-type start_trace_retrieval_request() :: #{binary() => any()}.


%% Example:
%% span() :: #{
%%   <<"Document">> => string(),
%%   <<"Id">> => string()
%% }
-type span() :: #{binary() => any()}.


%% Example:
%% unprocessed_statistics() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string(),
%%   <<"RuleName">> => string()
%% }
-type unprocessed_statistics() :: #{binary() => any()}.


%% Example:
%% invalid_policy_revision_id_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_policy_revision_id_exception() :: #{binary() => any()}.


%% Example:
%% throttled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttled_exception() :: #{binary() => any()}.


%% Example:
%% update_sampling_rule_result() :: #{
%%   <<"SamplingRuleRecord">> => sampling_rule_record()
%% }
-type update_sampling_rule_result() :: #{binary() => any()}.


%% Example:
%% update_sampling_rule_request() :: #{
%%   <<"SamplingRuleUpdate">> := sampling_rule_update()
%% }
-type update_sampling_rule_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% put_telemetry_records_result() :: #{}
-type put_telemetry_records_result() :: #{}.


%% Example:
%% insight_event() :: #{
%%   <<"ClientRequestImpactStatistics">> => request_impact_statistics(),
%%   <<"EventTime">> => non_neg_integer(),
%%   <<"RootCauseServiceRequestImpactStatistics">> => request_impact_statistics(),
%%   <<"Summary">> => string(),
%%   <<"TopAnomalousServices">> => list(anomalous_service())
%% }
-type insight_event() :: #{binary() => any()}.


%% Example:
%% response_time_root_cause() :: #{
%%   <<"ClientImpacting">> => boolean(),
%%   <<"Services">> => list(response_time_root_cause_service())
%% }
-type response_time_root_cause() :: #{binary() => any()}.


%% Example:
%% sampling_rule() :: #{
%%   <<"Attributes">> => map(),
%%   <<"FixedRate">> => float(),
%%   <<"HTTPMethod">> => string(),
%%   <<"Host">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"ReservoirSize">> => integer(),
%%   <<"ResourceARN">> => string(),
%%   <<"RuleARN">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceType">> => string(),
%%   <<"URLPath">> => string(),
%%   <<"Version">> => integer()
%% }
-type sampling_rule() :: #{binary() => any()}.


%% Example:
%% unprocessed_trace_segment() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Id">> => string(),
%%   <<"Message">> => string()
%% }
-type unprocessed_trace_segment() :: #{binary() => any()}.


%% Example:
%% get_service_graph_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"GroupARN">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_service_graph_request() :: #{binary() => any()}.


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
%% get_insight_events_result() :: #{
%%   <<"InsightEvents">> => list(insight_event()),
%%   <<"NextToken">> => string()
%% }
-type get_insight_events_result() :: #{binary() => any()}.


%% Example:
%% get_sampling_targets_request() :: #{
%%   <<"SamplingStatisticsDocuments">> := list(sampling_statistics_document())
%% }
-type get_sampling_targets_request() :: #{binary() => any()}.


%% Example:
%% sampling_strategy() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => float()
%% }
-type sampling_strategy() :: #{binary() => any()}.


%% Example:
%% get_insight_summaries_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"GroupARN">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> := non_neg_integer(),
%%   <<"States">> => list(list(any())())
%% }
-type get_insight_summaries_request() :: #{binary() => any()}.


%% Example:
%% time_series_service_statistics() :: #{
%%   <<"EdgeSummaryStatistics">> => edge_statistics(),
%%   <<"ResponseTimeHistogram">> => list(histogram_entry()),
%%   <<"ServiceForecastStatistics">> => forecast_statistics(),
%%   <<"ServiceSummaryStatistics">> => service_statistics(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type time_series_service_statistics() :: #{binary() => any()}.


%% Example:
%% get_sampling_targets_result() :: #{
%%   <<"LastRuleModification">> => non_neg_integer(),
%%   <<"SamplingTargetDocuments">> => list(sampling_target_document()),
%%   <<"UnprocessedStatistics">> => list(unprocessed_statistics())
%% }
-type get_sampling_targets_result() :: #{binary() => any()}.

%% Example:
%% delete_group_result() :: #{}
-type delete_group_result() :: #{}.


%% Example:
%% fault_root_cause_service() :: #{
%%   <<"AccountId">> => string(),
%%   <<"EntityPath">> => list(fault_root_cause_entity()),
%%   <<"Inferred">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Names">> => list(string()),
%%   <<"Type">> => string()
%% }
-type fault_root_cause_service() :: #{binary() => any()}.


%% Example:
%% list_resource_policies_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_resource_policies_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% fault_statistics() :: #{
%%   <<"OtherCount">> => float(),
%%   <<"TotalCount">> => float()
%% }
-type fault_statistics() :: #{binary() => any()}.


%% Example:
%% create_group_request() :: #{
%%   <<"FilterExpression">> => string(),
%%   <<"GroupName">> := string(),
%%   <<"InsightsConfiguration">> => insights_configuration(),
%%   <<"Tags">> => list(tag())
%% }
-type create_group_request() :: #{binary() => any()}.


%% Example:
%% get_time_series_service_statistics_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"EntitySelectorExpression">> => string(),
%%   <<"ForecastStatistics">> => boolean(),
%%   <<"GroupARN">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Period">> => integer(),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_time_series_service_statistics_request() :: #{binary() => any()}.


%% Example:
%% get_sampling_statistic_summaries_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SamplingStatisticSummaries">> => list(sampling_statistic_summary())
%% }
-type get_sampling_statistic_summaries_result() :: #{binary() => any()}.


%% Example:
%% get_groups_result() :: #{
%%   <<"Groups">> => list(group_summary()),
%%   <<"NextToken">> => string()
%% }
-type get_groups_result() :: #{binary() => any()}.


%% Example:
%% get_trace_graph_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TraceIds">> := list(string())
%% }
-type get_trace_graph_request() :: #{binary() => any()}.


%% Example:
%% error_root_cause_service() :: #{
%%   <<"AccountId">> => string(),
%%   <<"EntityPath">> => list(error_root_cause_entity()),
%%   <<"Inferred">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Names">> => list(string()),
%%   <<"Type">> => string()
%% }
-type error_root_cause_service() :: #{binary() => any()}.


%% Example:
%% trace() :: #{
%%   <<"Duration">> => float(),
%%   <<"Id">> => string(),
%%   <<"LimitExceeded">> => boolean(),
%%   <<"Segments">> => list(segment())
%% }
-type trace() :: #{binary() => any()}.

%% Example:
%% get_encryption_config_request() :: #{}
-type get_encryption_config_request() :: #{}.


%% Example:
%% resource_policy() :: #{
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"PolicyDocument">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyRevisionId">> => string()
%% }
-type resource_policy() :: #{binary() => any()}.


%% Example:
%% fault_root_cause_entity() :: #{
%%   <<"Exceptions">> => list(root_cause_exception()),
%%   <<"Name">> => string(),
%%   <<"Remote">> => boolean()
%% }
-type fault_root_cause_entity() :: #{binary() => any()}.


%% Example:
%% error_root_cause_entity() :: #{
%%   <<"Exceptions">> => list(root_cause_exception()),
%%   <<"Name">> => string(),
%%   <<"Remote">> => boolean()
%% }
-type error_root_cause_entity() :: #{binary() => any()}.


%% Example:
%% update_trace_segment_destination_request() :: #{
%%   <<"Destination">> => list(any())
%% }
-type update_trace_segment_destination_request() :: #{binary() => any()}.


%% Example:
%% get_retrieved_traces_graph_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RetrievalToken">> := string()
%% }
-type get_retrieved_traces_graph_request() :: #{binary() => any()}.


%% Example:
%% delete_sampling_rule_result() :: #{
%%   <<"SamplingRuleRecord">> => sampling_rule_record()
%% }
-type delete_sampling_rule_result() :: #{binary() => any()}.


%% Example:
%% create_sampling_rule_request() :: #{
%%   <<"SamplingRule">> := sampling_rule(),
%%   <<"Tags">> => list(tag())
%% }
-type create_sampling_rule_request() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_request() :: #{
%%   <<"BypassPolicyLockoutCheck">> => boolean(),
%%   <<"PolicyDocument">> := string(),
%%   <<"PolicyName">> := string(),
%%   <<"PolicyRevisionId">> => string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% lockout_prevention_exception() :: #{
%%   <<"Message">> => string()
%% }
-type lockout_prevention_exception() :: #{binary() => any()}.


%% Example:
%% alias() :: #{
%%   <<"Name">> => string(),
%%   <<"Names">> => list(string()),
%%   <<"Type">> => string()
%% }
-type alias() :: #{binary() => any()}.

%% Example:
%% cancel_trace_retrieval_result() :: #{}
-type cancel_trace_retrieval_result() :: #{}.


%% Example:
%% put_trace_segments_result() :: #{
%%   <<"UnprocessedTraceSegments">> => list(unprocessed_trace_segment())
%% }
-type put_trace_segments_result() :: #{binary() => any()}.


%% Example:
%% forecast_statistics() :: #{
%%   <<"FaultCountHigh">> => float(),
%%   <<"FaultCountLow">> => float()
%% }
-type forecast_statistics() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% sampling_rule_record() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"SamplingRule">> => sampling_rule()
%% }
-type sampling_rule_record() :: #{binary() => any()}.


%% Example:
%% rule_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type rule_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_sampling_statistic_summaries_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type get_sampling_statistic_summaries_request() :: #{binary() => any()}.


%% Example:
%% backend_connection_errors() :: #{
%%   <<"ConnectionRefusedCount">> => integer(),
%%   <<"HTTPCode4XXCount">> => integer(),
%%   <<"HTTPCode5XXCount">> => integer(),
%%   <<"OtherCount">> => integer(),
%%   <<"TimeoutCount">> => integer(),
%%   <<"UnknownHostCount">> => integer()
%% }
-type backend_connection_errors() :: #{binary() => any()}.


%% Example:
%% telemetry_record() :: #{
%%   <<"BackendConnectionErrors">> => backend_connection_errors(),
%%   <<"SegmentsReceivedCount">> => integer(),
%%   <<"SegmentsRejectedCount">> => integer(),
%%   <<"SegmentsSentCount">> => integer(),
%%   <<"SegmentsSpilloverCount">> => integer(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type telemetry_record() :: #{binary() => any()}.


%% Example:
%% get_indexing_rules_result() :: #{
%%   <<"IndexingRules">> => list(indexing_rule()),
%%   <<"NextToken">> => string()
%% }
-type get_indexing_rules_result() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% get_trace_segment_destination_request() :: #{}
-type get_trace_segment_destination_request() :: #{}.


%% Example:
%% service_id() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Names">> => list(string()),
%%   <<"Type">> => string()
%% }
-type service_id() :: #{binary() => any()}.


%% Example:
%% trace_summary() :: #{
%%   <<"Annotations">> => map(),
%%   <<"AvailabilityZones">> => list(availability_zone_detail()),
%%   <<"Duration">> => float(),
%%   <<"EntryPoint">> => service_id(),
%%   <<"ErrorRootCauses">> => list(error_root_cause()),
%%   <<"FaultRootCauses">> => list(fault_root_cause()),
%%   <<"HasError">> => boolean(),
%%   <<"HasFault">> => boolean(),
%%   <<"HasThrottle">> => boolean(),
%%   <<"Http">> => http(),
%%   <<"Id">> => string(),
%%   <<"InstanceIds">> => list(instance_id_detail()),
%%   <<"IsPartial">> => boolean(),
%%   <<"MatchedEventTime">> => non_neg_integer(),
%%   <<"ResourceARNs">> => list(resource_arn_detail()),
%%   <<"ResponseTime">> => float(),
%%   <<"ResponseTimeRootCauses">> => list(response_time_root_cause()),
%%   <<"Revision">> => integer(),
%%   <<"ServiceIds">> => list(service_id()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Users">> => list(trace_user())
%% }
-type trace_summary() :: #{binary() => any()}.


%% Example:
%% update_group_result() :: #{
%%   <<"Group">> => group()
%% }
-type update_group_result() :: #{binary() => any()}.


%% Example:
%% group() :: #{
%%   <<"FilterExpression">> => string(),
%%   <<"GroupARN">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"InsightsConfiguration">> => insights_configuration()
%% }
-type group() :: #{binary() => any()}.


%% Example:
%% request_impact_statistics() :: #{
%%   <<"FaultCount">> => float(),
%%   <<"OkCount">> => float(),
%%   <<"TotalCount">> => float()
%% }
-type request_impact_statistics() :: #{binary() => any()}.


%% Example:
%% fault_root_cause() :: #{
%%   <<"ClientImpacting">> => boolean(),
%%   <<"Services">> => list(fault_root_cause_service())
%% }
-type fault_root_cause() :: #{binary() => any()}.


%% Example:
%% malformed_policy_document_exception() :: #{
%%   <<"Message">> => string()
%% }
-type malformed_policy_document_exception() :: #{binary() => any()}.


%% Example:
%% delete_group_request() :: #{
%%   <<"GroupARN">> => string(),
%%   <<"GroupName">> => string()
%% }
-type delete_group_request() :: #{binary() => any()}.


%% Example:
%% service_statistics() :: #{
%%   <<"ErrorStatistics">> => error_statistics(),
%%   <<"FaultStatistics">> => fault_statistics(),
%%   <<"OkCount">> => float(),
%%   <<"TotalCount">> => float(),
%%   <<"TotalResponseTime">> => float()
%% }
-type service_statistics() :: #{binary() => any()}.


%% Example:
%% get_sampling_rules_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SamplingRuleRecords">> => list(sampling_rule_record())
%% }
-type get_sampling_rules_result() :: #{binary() => any()}.


%% Example:
%% trace_user() :: #{
%%   <<"ServiceIds">> => list(service_id()),
%%   <<"UserName">> => string()
%% }
-type trace_user() :: #{binary() => any()}.


%% Example:
%% response_time_root_cause_entity() :: #{
%%   <<"Coverage">> => float(),
%%   <<"Name">> => string(),
%%   <<"Remote">> => boolean()
%% }
-type response_time_root_cause_entity() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"PolicyName">> := string(),
%%   <<"PolicyRevisionId">> => string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% group_summary() :: #{
%%   <<"FilterExpression">> => string(),
%%   <<"GroupARN">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"InsightsConfiguration">> => insights_configuration()
%% }
-type group_summary() :: #{binary() => any()}.


%% Example:
%% get_insight_impact_graph_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"InsightId">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_insight_impact_graph_request() :: #{binary() => any()}.


%% Example:
%% get_trace_segment_destination_result() :: #{
%%   <<"Destination">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type get_trace_segment_destination_result() :: #{binary() => any()}.


%% Example:
%% resource_arn_detail() :: #{
%%   <<"ARN">> => string()
%% }
-type resource_arn_detail() :: #{binary() => any()}.


%% Example:
%% root_cause_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => string()
%% }
-type root_cause_exception() :: #{binary() => any()}.


%% Example:
%% insight() :: #{
%%   <<"Categories">> => list(list(any())()),
%%   <<"ClientRequestImpactStatistics">> => request_impact_statistics(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"GroupARN">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"InsightId">> => string(),
%%   <<"RootCauseServiceId">> => service_id(),
%%   <<"RootCauseServiceRequestImpactStatistics">> => request_impact_statistics(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"Summary">> => string(),
%%   <<"TopAnomalousServices">> => list(anomalous_service())
%% }
-type insight() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_result() :: #{}
-type delete_resource_policy_result() :: #{}.


%% Example:
%% edge() :: #{
%%   <<"Aliases">> => list(alias()),
%%   <<"EdgeType">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ReceivedEventAgeHistogram">> => list(histogram_entry()),
%%   <<"ReferenceId">> => integer(),
%%   <<"ResponseTimeHistogram">> => list(histogram_entry()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"SummaryStatistics">> => edge_statistics()
%% }
-type edge() :: #{binary() => any()}.


%% Example:
%% get_group_request() :: #{
%%   <<"GroupARN">> => string(),
%%   <<"GroupName">> => string()
%% }
-type get_group_request() :: #{binary() => any()}.


%% Example:
%% cancel_trace_retrieval_request() :: #{
%%   <<"RetrievalToken">> := string()
%% }
-type cancel_trace_retrieval_request() :: #{binary() => any()}.


%% Example:
%% get_retrieved_traces_graph_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RetrievalStatus">> => list(any()),
%%   <<"Services">> => list(retrieved_service())
%% }
-type get_retrieved_traces_graph_result() :: #{binary() => any()}.


%% Example:
%% histogram_entry() :: #{
%%   <<"Count">> => integer(),
%%   <<"Value">> => float()
%% }
-type histogram_entry() :: #{binary() => any()}.


%% Example:
%% get_time_series_service_statistics_result() :: #{
%%   <<"ContainsOldGroupVersions">> => boolean(),
%%   <<"NextToken">> => string(),
%%   <<"TimeSeriesServiceStatistics">> => list(time_series_service_statistics())
%% }
-type get_time_series_service_statistics_result() :: #{binary() => any()}.


%% Example:
%% get_insight_summaries_result() :: #{
%%   <<"InsightSummaries">> => list(insight_summary()),
%%   <<"NextToken">> => string()
%% }
-type get_insight_summaries_result() :: #{binary() => any()}.


%% Example:
%% get_encryption_config_result() :: #{
%%   <<"EncryptionConfig">> => encryption_config()
%% }
-type get_encryption_config_result() :: #{binary() => any()}.


%% Example:
%% sampling_statistics_document() :: #{
%%   <<"BorrowCount">> => integer(),
%%   <<"ClientID">> => string(),
%%   <<"RequestCount">> => integer(),
%%   <<"RuleName">> => string(),
%%   <<"SampledCount">> => integer(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type sampling_statistics_document() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% get_insight_impact_graph_result() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InsightId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceGraphEndTime">> => non_neg_integer(),
%%   <<"ServiceGraphStartTime">> => non_neg_integer(),
%%   <<"Services">> => list(insight_impact_graph_service()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type get_insight_impact_graph_result() :: #{binary() => any()}.


%% Example:
%% update_indexing_rule_result() :: #{
%%   <<"IndexingRule">> => indexing_rule()
%% }
-type update_indexing_rule_result() :: #{binary() => any()}.


%% Example:
%% get_insight_result() :: #{
%%   <<"Insight">> => insight()
%% }
-type get_insight_result() :: #{binary() => any()}.


%% Example:
%% http() :: #{
%%   <<"ClientIp">> => string(),
%%   <<"HttpMethod">> => string(),
%%   <<"HttpStatus">> => integer(),
%%   <<"HttpURL">> => string(),
%%   <<"UserAgent">> => string()
%% }
-type http() :: #{binary() => any()}.


%% Example:
%% policy_count_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type policy_count_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_indexing_rule_request() :: #{
%%   <<"Name">> := string(),
%%   <<"Rule">> := list()
%% }
-type update_indexing_rule_request() :: #{binary() => any()}.


%% Example:
%% list_resource_policies_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourcePolicies">> => list(resource_policy())
%% }
-type list_resource_policies_result() :: #{binary() => any()}.

-type batch_get_traces_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type cancel_trace_retrieval_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type create_group_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type create_sampling_rule_errors() ::
    rule_limit_exceeded_exception() | 
    invalid_request_exception() | 
    throttled_exception().

-type delete_group_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type delete_resource_policy_errors() ::
    invalid_request_exception() | 
    throttled_exception() | 
    invalid_policy_revision_id_exception().

-type delete_sampling_rule_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_encryption_config_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_group_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_groups_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_indexing_rules_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_insight_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_insight_events_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_insight_impact_graph_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_insight_summaries_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_retrieved_traces_graph_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type get_sampling_rules_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_sampling_statistic_summaries_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_sampling_targets_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_service_graph_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_time_series_service_statistics_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_trace_graph_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_trace_segment_destination_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type get_trace_summaries_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type list_resource_policies_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type list_retrieved_traces_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type list_tags_for_resource_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type put_encryption_config_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type put_resource_policy_errors() ::
    policy_count_limit_exceeded_exception() | 
    malformed_policy_document_exception() | 
    lockout_prevention_exception() | 
    throttled_exception() | 
    invalid_policy_revision_id_exception() | 
    policy_size_limit_exceeded_exception().

-type put_telemetry_records_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type put_trace_segments_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type start_trace_retrieval_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type untag_resource_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type update_group_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type update_indexing_rule_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type update_sampling_rule_errors() ::
    invalid_request_exception() | 
    throttled_exception().

-type update_trace_segment_destination_errors() ::
    invalid_request_exception() | 
    throttled_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% You cannot find traces through this API if Transaction Search is enabled
%% since trace is not indexed in X-Ray.
%%
%% Retrieves a list of traces specified by ID. Each trace is a collection of
%% segment
%% documents that originates from a single request. Use
%% `GetTraceSummaries' to get a
%% list of trace IDs.
-spec batch_get_traces(aws_client:aws_client(), batch_get_traces_request()) ->
    {ok, batch_get_traces_result(), tuple()} |
    {error, any()} |
    {error, batch_get_traces_errors(), tuple()}.
batch_get_traces(Client, Input) ->
    batch_get_traces(Client, Input, []).

-spec batch_get_traces(aws_client:aws_client(), batch_get_traces_request(), proplists:proplist()) ->
    {ok, batch_get_traces_result(), tuple()} |
    {error, any()} |
    {error, batch_get_traces_errors(), tuple()}.
batch_get_traces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Traces"],
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
%% Cancels an ongoing trace retrieval job initiated by
%% `StartTraceRetrieval' using the provided `RetrievalToken'.
%%
%% A successful cancellation will return an HTTP 200 response.
-spec cancel_trace_retrieval(aws_client:aws_client(), cancel_trace_retrieval_request()) ->
    {ok, cancel_trace_retrieval_result(), tuple()} |
    {error, any()} |
    {error, cancel_trace_retrieval_errors(), tuple()}.
cancel_trace_retrieval(Client, Input) ->
    cancel_trace_retrieval(Client, Input, []).

-spec cancel_trace_retrieval(aws_client:aws_client(), cancel_trace_retrieval_request(), proplists:proplist()) ->
    {ok, cancel_trace_retrieval_result(), tuple()} |
    {error, any()} |
    {error, cancel_trace_retrieval_errors(), tuple()}.
cancel_trace_retrieval(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CancelTraceRetrieval"],
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

%% @doc Creates a group resource with a name and a filter expression.
-spec create_group(aws_client:aws_client(), create_group_request()) ->
    {ok, create_group_result(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input) ->
    create_group(Client, Input, []).

-spec create_group(aws_client:aws_client(), create_group_request(), proplists:proplist()) ->
    {ok, create_group_result(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateGroup"],
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

%% @doc Creates a rule to control sampling behavior for instrumented
%% applications.
%%
%% Services
%% retrieve rules with GetSamplingRules:
%% https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingRules.html, and
%% evaluate each rule in ascending
%% order of priority for each request. If a rule matches, the service
%% records a trace, borrowing it from the reservoir size. After 10 seconds,
%% the service
%% reports back to X-Ray with GetSamplingTargets:
%% https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html to
%% get updated versions of
%% each in-use rule. The updated rule contains a trace quota that the service
%% can use instead
%% of borrowing from the reservoir.
-spec create_sampling_rule(aws_client:aws_client(), create_sampling_rule_request()) ->
    {ok, create_sampling_rule_result(), tuple()} |
    {error, any()} |
    {error, create_sampling_rule_errors(), tuple()}.
create_sampling_rule(Client, Input) ->
    create_sampling_rule(Client, Input, []).

-spec create_sampling_rule(aws_client:aws_client(), create_sampling_rule_request(), proplists:proplist()) ->
    {ok, create_sampling_rule_result(), tuple()} |
    {error, any()} |
    {error, create_sampling_rule_errors(), tuple()}.
create_sampling_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateSamplingRule"],
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

%% @doc Deletes a group resource.
-spec delete_group(aws_client:aws_client(), delete_group_request()) ->
    {ok, delete_group_result(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input) ->
    delete_group(Client, Input, []).

-spec delete_group(aws_client:aws_client(), delete_group_request(), proplists:proplist()) ->
    {ok, delete_group_result(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteGroup"],
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

%% @doc Deletes a resource policy from the target Amazon Web Services
%% account.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteResourcePolicy"],
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

%% @doc Deletes a sampling rule.
-spec delete_sampling_rule(aws_client:aws_client(), delete_sampling_rule_request()) ->
    {ok, delete_sampling_rule_result(), tuple()} |
    {error, any()} |
    {error, delete_sampling_rule_errors(), tuple()}.
delete_sampling_rule(Client, Input) ->
    delete_sampling_rule(Client, Input, []).

-spec delete_sampling_rule(aws_client:aws_client(), delete_sampling_rule_request(), proplists:proplist()) ->
    {ok, delete_sampling_rule_result(), tuple()} |
    {error, any()} |
    {error, delete_sampling_rule_errors(), tuple()}.
delete_sampling_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteSamplingRule"],
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

%% @doc Retrieves the current encryption configuration for X-Ray data.
-spec get_encryption_config(aws_client:aws_client(), get_encryption_config_request()) ->
    {ok, get_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, get_encryption_config_errors(), tuple()}.
get_encryption_config(Client, Input) ->
    get_encryption_config(Client, Input, []).

-spec get_encryption_config(aws_client:aws_client(), get_encryption_config_request(), proplists:proplist()) ->
    {ok, get_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, get_encryption_config_errors(), tuple()}.
get_encryption_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/EncryptionConfig"],
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

%% @doc Retrieves group resource details.
-spec get_group(aws_client:aws_client(), get_group_request()) ->
    {ok, get_group_result(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, Input) ->
    get_group(Client, Input, []).

-spec get_group(aws_client:aws_client(), get_group_request(), proplists:proplist()) ->
    {ok, get_group_result(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetGroup"],
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

%% @doc Retrieves all active group details.
-spec get_groups(aws_client:aws_client(), get_groups_request()) ->
    {ok, get_groups_result(), tuple()} |
    {error, any()} |
    {error, get_groups_errors(), tuple()}.
get_groups(Client, Input) ->
    get_groups(Client, Input, []).

-spec get_groups(aws_client:aws_client(), get_groups_request(), proplists:proplist()) ->
    {ok, get_groups_result(), tuple()} |
    {error, any()} |
    {error, get_groups_errors(), tuple()}.
get_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Groups"],
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
%% Retrieves all indexing rules.
%%
%% Indexing rules are used to determine the server-side sampling rate for
%% spans ingested through the CloudWatchLogs destination and indexed by
%% X-Ray. For more information, see Transaction Search:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html.
-spec get_indexing_rules(aws_client:aws_client(), get_indexing_rules_request()) ->
    {ok, get_indexing_rules_result(), tuple()} |
    {error, any()} |
    {error, get_indexing_rules_errors(), tuple()}.
get_indexing_rules(Client, Input) ->
    get_indexing_rules(Client, Input, []).

-spec get_indexing_rules(aws_client:aws_client(), get_indexing_rules_request(), proplists:proplist()) ->
    {ok, get_indexing_rules_result(), tuple()} |
    {error, any()} |
    {error, get_indexing_rules_errors(), tuple()}.
get_indexing_rules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetIndexingRules"],
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

%% @doc Retrieves the summary information of an insight.
%%
%% This includes impact to clients and
%% root cause services, the top anomalous services, the category, the state
%% of the insight,
%% and the start and end time of the insight.
-spec get_insight(aws_client:aws_client(), get_insight_request()) ->
    {ok, get_insight_result(), tuple()} |
    {error, any()} |
    {error, get_insight_errors(), tuple()}.
get_insight(Client, Input) ->
    get_insight(Client, Input, []).

-spec get_insight(aws_client:aws_client(), get_insight_request(), proplists:proplist()) ->
    {ok, get_insight_result(), tuple()} |
    {error, any()} |
    {error, get_insight_errors(), tuple()}.
get_insight(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Insight"],
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

%% @doc X-Ray reevaluates insights periodically until they're resolved,
%% and records each intermediate state as an
%% event.
%%
%% You can review an insight's events in the Impact Timeline on the
%% Inspect page in the X-Ray
%% console.
-spec get_insight_events(aws_client:aws_client(), get_insight_events_request()) ->
    {ok, get_insight_events_result(), tuple()} |
    {error, any()} |
    {error, get_insight_events_errors(), tuple()}.
get_insight_events(Client, Input) ->
    get_insight_events(Client, Input, []).

-spec get_insight_events(aws_client:aws_client(), get_insight_events_request(), proplists:proplist()) ->
    {ok, get_insight_events_result(), tuple()} |
    {error, any()} |
    {error, get_insight_events_errors(), tuple()}.
get_insight_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/InsightEvents"],
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

%% @doc Retrieves a service graph structure filtered by the specified
%% insight.
%%
%% The service graph is limited to only
%% structural information. For a complete service graph, use this API with
%% the GetServiceGraph API.
-spec get_insight_impact_graph(aws_client:aws_client(), get_insight_impact_graph_request()) ->
    {ok, get_insight_impact_graph_result(), tuple()} |
    {error, any()} |
    {error, get_insight_impact_graph_errors(), tuple()}.
get_insight_impact_graph(Client, Input) ->
    get_insight_impact_graph(Client, Input, []).

-spec get_insight_impact_graph(aws_client:aws_client(), get_insight_impact_graph_request(), proplists:proplist()) ->
    {ok, get_insight_impact_graph_result(), tuple()} |
    {error, any()} |
    {error, get_insight_impact_graph_errors(), tuple()}.
get_insight_impact_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/InsightImpactGraph"],
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

%% @doc Retrieves the summaries of all insights in the specified group
%% matching the provided filter values.
-spec get_insight_summaries(aws_client:aws_client(), get_insight_summaries_request()) ->
    {ok, get_insight_summaries_result(), tuple()} |
    {error, any()} |
    {error, get_insight_summaries_errors(), tuple()}.
get_insight_summaries(Client, Input) ->
    get_insight_summaries(Client, Input, []).

-spec get_insight_summaries(aws_client:aws_client(), get_insight_summaries_request(), proplists:proplist()) ->
    {ok, get_insight_summaries_result(), tuple()} |
    {error, any()} |
    {error, get_insight_summaries_errors(), tuple()}.
get_insight_summaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/InsightSummaries"],
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
%% Retrieves a service graph for traces based on the specified
%% `RetrievalToken' from the CloudWatch log group generated by
%% Transaction Search.
%%
%% This API does not initiate a retrieval job. You must first execute
%% `StartTraceRetrieval' to obtain the required `RetrievalToken'.
%%
%% The trace graph describes services that process incoming requests and any
%% downstream services they call, which may include Amazon Web Services
%% resources, external APIs, or databases.
%%
%% The response is empty until the `RetrievalStatus' is COMPLETE. Retry
%% the request after the status changes from RUNNING or SCHEDULED to COMPLETE
%% to access the full service graph.
%%
%% When CloudWatch log is the destination, this API can support cross-account
%% observability and service graph retrieval across linked accounts.
%%
%% For retrieving graphs from X-Ray directly as opposed to the
%% Transaction-Search Log group, see GetTraceGraph:
%% https://docs.aws.amazon.com/xray/latest/api/API_GetTraceGraph.html.
-spec get_retrieved_traces_graph(aws_client:aws_client(), get_retrieved_traces_graph_request()) ->
    {ok, get_retrieved_traces_graph_result(), tuple()} |
    {error, any()} |
    {error, get_retrieved_traces_graph_errors(), tuple()}.
get_retrieved_traces_graph(Client, Input) ->
    get_retrieved_traces_graph(Client, Input, []).

-spec get_retrieved_traces_graph(aws_client:aws_client(), get_retrieved_traces_graph_request(), proplists:proplist()) ->
    {ok, get_retrieved_traces_graph_result(), tuple()} |
    {error, any()} |
    {error, get_retrieved_traces_graph_errors(), tuple()}.
get_retrieved_traces_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetRetrievedTracesGraph"],
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

%% @doc Retrieves all sampling rules.
-spec get_sampling_rules(aws_client:aws_client(), get_sampling_rules_request()) ->
    {ok, get_sampling_rules_result(), tuple()} |
    {error, any()} |
    {error, get_sampling_rules_errors(), tuple()}.
get_sampling_rules(Client, Input) ->
    get_sampling_rules(Client, Input, []).

-spec get_sampling_rules(aws_client:aws_client(), get_sampling_rules_request(), proplists:proplist()) ->
    {ok, get_sampling_rules_result(), tuple()} |
    {error, any()} |
    {error, get_sampling_rules_errors(), tuple()}.
get_sampling_rules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetSamplingRules"],
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

%% @doc Retrieves information about recent sampling results for all sampling
%% rules.
-spec get_sampling_statistic_summaries(aws_client:aws_client(), get_sampling_statistic_summaries_request()) ->
    {ok, get_sampling_statistic_summaries_result(), tuple()} |
    {error, any()} |
    {error, get_sampling_statistic_summaries_errors(), tuple()}.
get_sampling_statistic_summaries(Client, Input) ->
    get_sampling_statistic_summaries(Client, Input, []).

-spec get_sampling_statistic_summaries(aws_client:aws_client(), get_sampling_statistic_summaries_request(), proplists:proplist()) ->
    {ok, get_sampling_statistic_summaries_result(), tuple()} |
    {error, any()} |
    {error, get_sampling_statistic_summaries_errors(), tuple()}.
get_sampling_statistic_summaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SamplingStatisticSummaries"],
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

%% @doc Requests a sampling quota for rules that the service is using to
%% sample requests.
-spec get_sampling_targets(aws_client:aws_client(), get_sampling_targets_request()) ->
    {ok, get_sampling_targets_result(), tuple()} |
    {error, any()} |
    {error, get_sampling_targets_errors(), tuple()}.
get_sampling_targets(Client, Input) ->
    get_sampling_targets(Client, Input, []).

-spec get_sampling_targets(aws_client:aws_client(), get_sampling_targets_request(), proplists:proplist()) ->
    {ok, get_sampling_targets_result(), tuple()} |
    {error, any()} |
    {error, get_sampling_targets_errors(), tuple()}.
get_sampling_targets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SamplingTargets"],
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

%% @doc Retrieves a document that describes services that process incoming
%% requests, and
%% downstream services that they call as a result.
%%
%% Root services process incoming requests and
%% make calls to downstream services. Root services are applications that use
%% the Amazon Web Services X-Ray SDK:
%% https://docs.aws.amazon.com/xray/index.html.
%% Downstream services can be other applications, Amazon Web Services
%% resources, HTTP web APIs, or SQL
%% databases.
-spec get_service_graph(aws_client:aws_client(), get_service_graph_request()) ->
    {ok, get_service_graph_result(), tuple()} |
    {error, any()} |
    {error, get_service_graph_errors(), tuple()}.
get_service_graph(Client, Input) ->
    get_service_graph(Client, Input, []).

-spec get_service_graph(aws_client:aws_client(), get_service_graph_request(), proplists:proplist()) ->
    {ok, get_service_graph_result(), tuple()} |
    {error, any()} |
    {error, get_service_graph_errors(), tuple()}.
get_service_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ServiceGraph"],
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

%% @doc Get an aggregation of service statistics defined by a specific time
%% range.
-spec get_time_series_service_statistics(aws_client:aws_client(), get_time_series_service_statistics_request()) ->
    {ok, get_time_series_service_statistics_result(), tuple()} |
    {error, any()} |
    {error, get_time_series_service_statistics_errors(), tuple()}.
get_time_series_service_statistics(Client, Input) ->
    get_time_series_service_statistics(Client, Input, []).

-spec get_time_series_service_statistics(aws_client:aws_client(), get_time_series_service_statistics_request(), proplists:proplist()) ->
    {ok, get_time_series_service_statistics_result(), tuple()} |
    {error, any()} |
    {error, get_time_series_service_statistics_errors(), tuple()}.
get_time_series_service_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TimeSeriesServiceStatistics"],
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

%% @doc Retrieves a service graph for one or more specific trace IDs.
-spec get_trace_graph(aws_client:aws_client(), get_trace_graph_request()) ->
    {ok, get_trace_graph_result(), tuple()} |
    {error, any()} |
    {error, get_trace_graph_errors(), tuple()}.
get_trace_graph(Client, Input) ->
    get_trace_graph(Client, Input, []).

-spec get_trace_graph(aws_client:aws_client(), get_trace_graph_request(), proplists:proplist()) ->
    {ok, get_trace_graph_result(), tuple()} |
    {error, any()} |
    {error, get_trace_graph_errors(), tuple()}.
get_trace_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TraceGraph"],
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
%% Retrieves the current destination of data sent to `PutTraceSegments'
%% and OpenTelemetry API.
%%
%% The Transaction Search feature requires a CloudWatchLogs destination. For
%% more information, see Transaction Search:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html
%% and OpenTelemetry:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-OpenTelemetry-Sections.html.
-spec get_trace_segment_destination(aws_client:aws_client(), get_trace_segment_destination_request()) ->
    {ok, get_trace_segment_destination_result(), tuple()} |
    {error, any()} |
    {error, get_trace_segment_destination_errors(), tuple()}.
get_trace_segment_destination(Client, Input) ->
    get_trace_segment_destination(Client, Input, []).

-spec get_trace_segment_destination(aws_client:aws_client(), get_trace_segment_destination_request(), proplists:proplist()) ->
    {ok, get_trace_segment_destination_result(), tuple()} |
    {error, any()} |
    {error, get_trace_segment_destination_errors(), tuple()}.
get_trace_segment_destination(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTraceSegmentDestination"],
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

%% @doc Retrieves IDs and annotations for traces available for a specified
%% time frame using an
%% optional filter.
%%
%% To get the full traces, pass the trace IDs to
%% `BatchGetTraces'.
%%
%% A filter expression can target traced requests that hit specific service
%% nodes or
%% edges, have errors, or come from a known user. For example, the following
%% filter expression
%% targets traces that pass through `api.example.com':
%%
%% `service(&quot;api.example.com&quot;)'
%%
%% This filter expression finds traces that have an annotation named
%% `account'
%% with the value `12345':
%%
%% `annotation.account = &quot;12345&quot;'
%%
%% For a full list of indexed fields and keywords that you can use in filter
%% expressions,
%% see Use filter
%% expressions:
%% https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-console.html#xray-console-filters
%% in the Amazon Web Services X-Ray Developer Guide.
-spec get_trace_summaries(aws_client:aws_client(), get_trace_summaries_request()) ->
    {ok, get_trace_summaries_result(), tuple()} |
    {error, any()} |
    {error, get_trace_summaries_errors(), tuple()}.
get_trace_summaries(Client, Input) ->
    get_trace_summaries(Client, Input, []).

-spec get_trace_summaries(aws_client:aws_client(), get_trace_summaries_request(), proplists:proplist()) ->
    {ok, get_trace_summaries_result(), tuple()} |
    {error, any()} |
    {error, get_trace_summaries_errors(), tuple()}.
get_trace_summaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TraceSummaries"],
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

%% @doc Returns the list of resource policies in the target Amazon Web
%% Services account.
-spec list_resource_policies(aws_client:aws_client(), list_resource_policies_request()) ->
    {ok, list_resource_policies_result(), tuple()} |
    {error, any()} |
    {error, list_resource_policies_errors(), tuple()}.
list_resource_policies(Client, Input) ->
    list_resource_policies(Client, Input, []).

-spec list_resource_policies(aws_client:aws_client(), list_resource_policies_request(), proplists:proplist()) ->
    {ok, list_resource_policies_result(), tuple()} |
    {error, any()} |
    {error, list_resource_policies_errors(), tuple()}.
list_resource_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListResourcePolicies"],
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
%% Retrieves a list of traces for a given `RetrievalToken' from the
%% CloudWatch log group generated by Transaction Search.
%%
%% For information on what each trace returns, see BatchGetTraces:
%% https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html.
%%
%% This API does not initiate a retrieval job. To start a trace retrieval,
%% use `StartTraceRetrieval', which generates the required
%% `RetrievalToken'.
%%
%% When the `RetrievalStatus' is not COMPLETE, the API will return an
%% empty response. Retry the request once the retrieval has completed to
%% access the full list of traces.
%%
%% For cross-account observability, this API can retrieve traces from linked
%% accounts when CloudWatch log is the destination across relevant accounts.
%% For more details, see CloudWatch cross-account observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html.
%%
%% For retrieving data from X-Ray directly as opposed to the
%% Transaction-Search Log group, see BatchGetTraces:
%% https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html.
-spec list_retrieved_traces(aws_client:aws_client(), list_retrieved_traces_request()) ->
    {ok, list_retrieved_traces_result(), tuple()} |
    {error, any()} |
    {error, list_retrieved_traces_errors(), tuple()}.
list_retrieved_traces(Client, Input) ->
    list_retrieved_traces(Client, Input, []).

-spec list_retrieved_traces(aws_client:aws_client(), list_retrieved_traces_request(), proplists:proplist()) ->
    {ok, list_retrieved_traces_result(), tuple()} |
    {error, any()} |
    {error, list_retrieved_traces_errors(), tuple()}.
list_retrieved_traces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListRetrievedTraces"],
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

%% @doc Returns a list of tags that are applied to the specified Amazon Web
%% Services X-Ray group or sampling rule.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTagsForResource"],
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

%% @doc Updates the encryption configuration for X-Ray data.
-spec put_encryption_config(aws_client:aws_client(), put_encryption_config_request()) ->
    {ok, put_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, put_encryption_config_errors(), tuple()}.
put_encryption_config(Client, Input) ->
    put_encryption_config(Client, Input, []).

-spec put_encryption_config(aws_client:aws_client(), put_encryption_config_request(), proplists:proplist()) ->
    {ok, put_encryption_config_result(), tuple()} |
    {error, any()} |
    {error, put_encryption_config_errors(), tuple()}.
put_encryption_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutEncryptionConfig"],
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
%% Sets the resource policy to grant one or more Amazon Web Services services
%% and accounts permissions to
%% access X-Ray.
%%
%% Each resource policy will be associated with a specific Amazon Web
%% Services account.
%% Each Amazon Web Services account can have a maximum of 5 resource
%% policies, and each policy name must be
%% unique within that account. The maximum size of each resource policy is
%% 5KB.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutResourcePolicy"],
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

%% @doc Used by the Amazon Web Services X-Ray daemon to upload telemetry.
-spec put_telemetry_records(aws_client:aws_client(), put_telemetry_records_request()) ->
    {ok, put_telemetry_records_result(), tuple()} |
    {error, any()} |
    {error, put_telemetry_records_errors(), tuple()}.
put_telemetry_records(Client, Input) ->
    put_telemetry_records(Client, Input, []).

-spec put_telemetry_records(aws_client:aws_client(), put_telemetry_records_request(), proplists:proplist()) ->
    {ok, put_telemetry_records_result(), tuple()} |
    {error, any()} |
    {error, put_telemetry_records_errors(), tuple()}.
put_telemetry_records(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TelemetryRecords"],
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

%% @doc Uploads segment documents to Amazon Web Services X-Ray.
%%
%% A segment document can be a completed segment, an in-progress segment, or
%% an array of
%% subsegments.
%%
%% Segments must include the following fields. For the full segment document
%% schema, see
%% Amazon Web Services X-Ray
%% Segment Documents:
%% https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-api.html#xray-api-segmentdocuments.html
%% in the Amazon Web Services X-Ray Developer Guide.
%%
%% == Required segment document fields ==
%%
%% `name' - The name of the service that handled the request.
%%
%% `id' - A 64-bit identifier for the segment, unique among segments in
%% the same trace, in 16
%% hexadecimal digits.
%%
%% `trace_id' - A unique identifier that connects all segments and
%% subsegments originating from
%% a single client request.
%%
%% `start_time' - Time the segment or subsegment was created, in floating
%% point seconds in
%% epoch time, accurate to milliseconds. For example, `1480615200.010' or
%% `1.480615200010E9'.
%%
%% `end_time' - Time the segment or subsegment was closed. For example,
%% `1480615200.090' or `1.480615200090E9'. Specify either an
%% `end_time' or
%% `in_progress'.
%%
%% `in_progress' - Set to `true' instead of specifying an
%% `end_time' to
%% record that a segment has been started, but is not complete. Send an
%% in-progress segment when your application
%% receives a request that will take a long time to serve, to trace that the
%% request was received. When the
%% response is sent, send the complete segment to overwrite the in-progress
%% segment.
%%
%% A `trace_id' consists of three numbers separated by hyphens. For
%% example,
%% 1-58406520-a006649127e371903a2de979. For trace IDs created by an X-Ray
%% SDK, or by Amazon Web Services services
%% integrated with X-Ray, a trace ID includes:
%%
%% == Trace ID Format ==
%%
%% The version number, for instance, `1'.
%%
%% The time of the original request, in Unix epoch time, in 8 hexadecimal
%% digits. For
%% example, 10:00AM December 2nd, 2016 PST in epoch time is `1480615200'
%% seconds,
%% or `58406520' in hexadecimal.
%%
%% A 96-bit identifier for the trace, globally unique, in 24 hexadecimal
%% digits.
%%
%% Trace IDs created via OpenTelemetry have a different format based on the
%% W3C Trace Context specification: https://www.w3.org/TR/trace-context/.
%% A W3C trace ID must be formatted in the X-Ray trace ID format when sending
%% to X-Ray. For example, a W3C
%% trace ID `4efaaf4d1e8720b39541901950019ee5' should be formatted as
%% `1-4efaaf4d-1e8720b39541901950019ee5' when sending to X-Ray. While
%% X-Ray trace IDs include
%% the original request timestamp in Unix epoch time, this is not required or
%% validated.
-spec put_trace_segments(aws_client:aws_client(), put_trace_segments_request()) ->
    {ok, put_trace_segments_result(), tuple()} |
    {error, any()} |
    {error, put_trace_segments_errors(), tuple()}.
put_trace_segments(Client, Input) ->
    put_trace_segments(Client, Input, []).

-spec put_trace_segments(aws_client:aws_client(), put_trace_segments_request(), proplists:proplist()) ->
    {ok, put_trace_segments_result(), tuple()} |
    {error, any()} |
    {error, put_trace_segments_errors(), tuple()}.
put_trace_segments(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TraceSegments"],
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
%% Initiates a trace retrieval process using the specified time range and for
%% the give trace IDs on Transaction Search generated by the CloudWatch log
%% group.
%%
%% For more information, see Transaction Search:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html.
%%
%% API returns a `RetrievalToken', which can be used with
%% `ListRetrievedTraces' or `GetRetrievedTracesGraph' to fetch
%% results. Retrievals will time out after 60 minutes. To execute long time
%% ranges, consider segmenting into multiple retrievals.
%%
%% If you are using CloudWatch cross-account observability:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html,
%% you can use this operation in a monitoring account to retrieve data from a
%% linked source account, as long as both accounts have transaction search
%% enabled.
%%
%% For retrieving data from X-Ray directly as opposed to the
%% Transaction-Search Log group, see BatchGetTraces:
%% https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html.
-spec start_trace_retrieval(aws_client:aws_client(), start_trace_retrieval_request()) ->
    {ok, start_trace_retrieval_result(), tuple()} |
    {error, any()} |
    {error, start_trace_retrieval_errors(), tuple()}.
start_trace_retrieval(Client, Input) ->
    start_trace_retrieval(Client, Input, []).

-spec start_trace_retrieval(aws_client:aws_client(), start_trace_retrieval_request(), proplists:proplist()) ->
    {ok, start_trace_retrieval_result(), tuple()} |
    {error, any()} |
    {error, start_trace_retrieval_errors(), tuple()}.
start_trace_retrieval(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartTraceRetrieval"],
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

%% @doc Applies tags to an existing Amazon Web Services X-Ray group or
%% sampling rule.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TagResource"],
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

%% @doc Removes tags from an Amazon Web Services X-Ray group or sampling
%% rule.
%%
%% You cannot edit or delete system
%% tags (those with an `aws:' prefix).
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UntagResource"],
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

%% @doc Updates a group resource.
-spec update_group(aws_client:aws_client(), update_group_request()) ->
    {ok, update_group_result(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input) ->
    update_group(Client, Input, []).

-spec update_group(aws_client:aws_client(), update_group_request(), proplists:proplist()) ->
    {ok, update_group_result(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateGroup"],
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
%% Modifies an indexing rule’s configuration.
%%
%% Indexing rules are used for determining the sampling rate for spans
%% indexed from CloudWatch Logs. For more information, see Transaction
%% Search:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html.
-spec update_indexing_rule(aws_client:aws_client(), update_indexing_rule_request()) ->
    {ok, update_indexing_rule_result(), tuple()} |
    {error, any()} |
    {error, update_indexing_rule_errors(), tuple()}.
update_indexing_rule(Client, Input) ->
    update_indexing_rule(Client, Input, []).

-spec update_indexing_rule(aws_client:aws_client(), update_indexing_rule_request(), proplists:proplist()) ->
    {ok, update_indexing_rule_result(), tuple()} |
    {error, any()} |
    {error, update_indexing_rule_errors(), tuple()}.
update_indexing_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateIndexingRule"],
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

%% @doc Modifies a sampling rule's configuration.
-spec update_sampling_rule(aws_client:aws_client(), update_sampling_rule_request()) ->
    {ok, update_sampling_rule_result(), tuple()} |
    {error, any()} |
    {error, update_sampling_rule_errors(), tuple()}.
update_sampling_rule(Client, Input) ->
    update_sampling_rule(Client, Input, []).

-spec update_sampling_rule(aws_client:aws_client(), update_sampling_rule_request(), proplists:proplist()) ->
    {ok, update_sampling_rule_result(), tuple()} |
    {error, any()} |
    {error, update_sampling_rule_errors(), tuple()}.
update_sampling_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateSamplingRule"],
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
%% Modifies the destination of data sent to `PutTraceSegments'.
%%
%% The Transaction Search feature requires the CloudWatchLogs destination.
%% For more information, see Transaction Search:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html.
-spec update_trace_segment_destination(aws_client:aws_client(), update_trace_segment_destination_request()) ->
    {ok, update_trace_segment_destination_result(), tuple()} |
    {error, any()} |
    {error, update_trace_segment_destination_errors(), tuple()}.
update_trace_segment_destination(Client, Input) ->
    update_trace_segment_destination(Client, Input, []).

-spec update_trace_segment_destination(aws_client:aws_client(), update_trace_segment_destination_request(), proplists:proplist()) ->
    {ok, update_trace_segment_destination_result(), tuple()} |
    {error, any()} |
    {error, update_trace_segment_destination_errors(), tuple()}.
update_trace_segment_destination(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateTraceSegmentDestination"],
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
    Client1 = Client#{service => <<"xray">>},
    Host = build_host(<<"xray">>, Client1),
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
