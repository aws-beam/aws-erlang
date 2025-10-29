%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use CloudWatch Application Signals for comprehensive observability of
%% your cloud-based applications.
%%
%% It enables real-time service health dashboards and helps you track
%% long-term performance trends against your business goals. The
%% application-centric view provides you with unified visibility across your
%% applications, services, and dependencies, so you can proactively monitor
%% and efficiently triage any issues that may arise, ensuring optimal
%% customer experience.
%%
%% Application Signals provides the following benefits:
%%
%% Automatically collect metrics and traces from your applications, and
%% display key metrics such as call volume, availability, latency, faults,
%% and errors.
%%
%% Create and monitor service level objectives (SLOs).
%%
%% See a map of your application topology that Application Signals
%% automatically discovers, that gives you a visual representation of your
%% applications, dependencies, and their connectivity.
%%
%% Application Signals works with CloudWatch RUM, CloudWatch Synthetics
%% canaries, and Amazon Web Services Service Catalog AppRegistry, to display
%% your client pages, Synthetics canaries, and application names within
%% dashboards and maps.
-module(aws_application_signals).

-export([batch_get_service_level_objective_budget_report/2,
         batch_get_service_level_objective_budget_report/3,
         batch_update_exclusion_windows/2,
         batch_update_exclusion_windows/3,
         create_service_level_objective/2,
         create_service_level_objective/3,
         delete_grouping_configuration/2,
         delete_grouping_configuration/3,
         delete_service_level_objective/3,
         delete_service_level_objective/4,
         get_service/2,
         get_service/3,
         get_service_level_objective/2,
         get_service_level_objective/4,
         get_service_level_objective/5,
         list_audit_findings/2,
         list_audit_findings/3,
         list_grouping_attribute_definitions/2,
         list_grouping_attribute_definitions/3,
         list_service_dependencies/2,
         list_service_dependencies/3,
         list_service_dependents/2,
         list_service_dependents/3,
         list_service_level_objective_exclusion_windows/2,
         list_service_level_objective_exclusion_windows/4,
         list_service_level_objective_exclusion_windows/5,
         list_service_level_objectives/2,
         list_service_level_objectives/3,
         list_service_operations/2,
         list_service_operations/3,
         list_service_states/2,
         list_service_states/3,
         list_services/3,
         list_services/5,
         list_services/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_grouping_configuration/2,
         put_grouping_configuration/3,
         start_discovery/2,
         start_discovery/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_service_level_objective/3,
         update_service_level_objective/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_service_operations_input() :: #{
%%   <<"EndTime">> := [non_neg_integer()],
%%   <<"KeyAttributes">> := map(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> := [non_neg_integer()]
%% }
-type list_service_operations_input() :: #{binary() => any()}.


%% Example:
%% get_service_input() :: #{
%%   <<"EndTime">> := [non_neg_integer()],
%%   <<"KeyAttributes">> := map(),
%%   <<"StartTime">> := [non_neg_integer()]
%% }
-type get_service_input() :: #{binary() => any()}.


%% Example:
%% auditor_result() :: #{
%%   <<"Auditor">> => [string()],
%%   <<"Description">> => [string()],
%%   <<"Severity">> => list(any())
%% }
-type auditor_result() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_service_dependencies_input() :: #{
%%   <<"EndTime">> := [non_neg_integer()],
%%   <<"KeyAttributes">> := map(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> := [non_neg_integer()]
%% }
-type list_service_dependencies_input() :: #{binary() => any()}.


%% Example:
%% service_dependency() :: #{
%%   <<"DependencyKeyAttributes">> => map(),
%%   <<"DependencyOperationName">> => string(),
%%   <<"MetricReferences">> => list(metric_reference()),
%%   <<"OperationName">> => string()
%% }
-type service_dependency() :: #{binary() => any()}.


%% Example:
%% audit_finding() :: #{
%%   <<"AuditorResults">> => list(auditor_result()),
%%   <<"DependencyGraph">> => dependency_graph(),
%%   <<"KeyAttributes">> => map(),
%%   <<"MetricGraph">> => metric_graph(),
%%   <<"Operation">> => [string()],
%%   <<"Type">> => [string()]
%% }
-type audit_finding() :: #{binary() => any()}.


%% Example:
%% list_service_dependencies_output() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"NextToken">> => string(),
%%   <<"ServiceDependencies">> => list(service_dependency()),
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type list_service_dependencies_output() :: #{binary() => any()}.


%% Example:
%% service_operation() :: #{
%%   <<"MetricReferences">> => list(metric_reference()),
%%   <<"Name">> => string()
%% }
-type service_operation() :: #{binary() => any()}.


%% Example:
%% grouping_attribute_definition() :: #{
%%   <<"DefaultGroupingValue">> => string(),
%%   <<"GroupingName">> => string(),
%%   <<"GroupingSourceKeys">> => list(string())
%% }
-type grouping_attribute_definition() :: #{binary() => any()}.


%% Example:
%% calendar_interval() :: #{
%%   <<"Duration">> => integer(),
%%   <<"DurationUnit">> => list(any()),
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type calendar_interval() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_audit_findings_input() :: #{
%%   <<"AuditTargets">> := list(audit_target()),
%%   <<"Auditors">> => list([string()]()),
%%   <<"EndTime">> := [non_neg_integer()],
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> := [non_neg_integer()]
%% }
-type list_audit_findings_input() :: #{binary() => any()}.


%% Example:
%% metric() :: #{
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string()
%% }
-type metric() :: #{binary() => any()}.


%% Example:
%% batch_update_exclusion_windows_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"SloId">> => string()
%% }
-type batch_update_exclusion_windows_error() :: #{binary() => any()}.


%% Example:
%% service_level_objective_budget_report_error() :: #{
%%   <<"Arn">> => string(),
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"Name">> => string()
%% }
-type service_level_objective_budget_report_error() :: #{binary() => any()}.


%% Example:
%% service_entity() :: #{
%%   <<"AwsAccountId">> => [string()],
%%   <<"Environment">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"Type">> => [string()]
%% }
-type service_entity() :: #{binary() => any()}.


%% Example:
%% service_level_objective_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => [non_neg_integer()],
%%   <<"DependencyConfig">> => dependency_config(),
%%   <<"EvaluationType">> => list(any()),
%%   <<"KeyAttributes">> => map(),
%%   <<"MetricSourceType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"OperationName">> => string()
%% }
-type service_level_objective_summary() :: #{binary() => any()}.

%% Example:
%% delete_service_level_objective_input() :: #{}
-type delete_service_level_objective_input() :: #{}.


%% Example:
%% service_level_indicator_metric_config() :: #{
%%   <<"DependencyConfig">> => dependency_config(),
%%   <<"KeyAttributes">> => map(),
%%   <<"MetricDataQueries">> => list(metric_data_query()),
%%   <<"MetricName">> => string(),
%%   <<"MetricType">> => list(any()),
%%   <<"OperationName">> => string(),
%%   <<"PeriodSeconds">> => integer(),
%%   <<"Statistic">> => string()
%% }
-type service_level_indicator_metric_config() :: #{binary() => any()}.


%% Example:
%% service_group() :: #{
%%   <<"GroupIdentifier">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"GroupSource">> => string(),
%%   <<"GroupValue">> => string()
%% }
-type service_group() :: #{binary() => any()}.


%% Example:
%% list_service_level_objectives_input() :: #{
%%   <<"DependencyConfig">> => dependency_config(),
%%   <<"IncludeLinkedAccounts">> => [boolean()],
%%   <<"KeyAttributes">> => map(),
%%   <<"MaxResults">> => integer(),
%%   <<"MetricSourceTypes">> => list(list(any())()),
%%   <<"NextToken">> => string(),
%%   <<"OperationName">> => string(),
%%   <<"SloOwnerAwsAccountId">> => string()
%% }
-type list_service_level_objectives_input() :: #{binary() => any()}.


%% Example:
%% metric_reference() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Dimensions">> => list(dimension()),
%%   <<"MetricName">> => string(),
%%   <<"MetricType">> => string(),
%%   <<"Namespace">> => string()
%% }
-type metric_reference() :: #{binary() => any()}.


%% Example:
%% list_grouping_attribute_definitions_input() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_grouping_attribute_definitions_input() :: #{binary() => any()}.


%% Example:
%% service() :: #{
%%   <<"AttributeMaps">> => list(map()),
%%   <<"KeyAttributes">> => map(),
%%   <<"LogGroupReferences">> => list(map()),
%%   <<"MetricReferences">> => list(metric_reference()),
%%   <<"ServiceGroups">> => list(service_group())
%% }
-type service() :: #{binary() => any()}.


%% Example:
%% create_service_level_objective_input() :: #{
%%   <<"BurnRateConfigurations">> => list(burn_rate_configuration()),
%%   <<"Description">> => string(),
%%   <<"Goal">> => goal(),
%%   <<"Name">> := string(),
%%   <<"RequestBasedSliConfig">> => request_based_service_level_indicator_config(),
%%   <<"SliConfig">> => service_level_indicator_config(),
%%   <<"Tags">> => list(tag())
%% }
-type create_service_level_objective_input() :: #{binary() => any()}.


%% Example:
%% dependency_graph() :: #{
%%   <<"Edges">> => list(edge()),
%%   <<"Nodes">> => list(node())
%% }
-type dependency_graph() :: #{binary() => any()}.


%% Example:
%% list_service_states_input() :: #{
%%   <<"AttributeFilters">> => list(attribute_filter()),
%%   <<"AwsAccountId">> => string(),
%%   <<"EndTime">> := [non_neg_integer()],
%%   <<"IncludeLinkedAccounts">> => [boolean()],
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> := [non_neg_integer()]
%% }
-type list_service_states_input() :: #{binary() => any()}.


%% Example:
%% service_level_objective() :: #{
%%   <<"Arn">> => string(),
%%   <<"BurnRateConfigurations">> => list(burn_rate_configuration()),
%%   <<"CreatedTime">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"EvaluationType">> => list(any()),
%%   <<"Goal">> => goal(),
%%   <<"LastUpdatedTime">> => [non_neg_integer()],
%%   <<"MetricSourceType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"RequestBasedSli">> => request_based_service_level_indicator(),
%%   <<"Sli">> => service_level_indicator()
%% }
-type service_level_objective() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% batch_update_exclusion_windows_output() :: #{
%%   <<"Errors">> => list(batch_update_exclusion_windows_error()),
%%   <<"SloIds">> => list([string()]())
%% }
-type batch_update_exclusion_windows_output() :: #{binary() => any()}.


%% Example:
%% goal() :: #{
%%   <<"AttainmentGoal">> => float(),
%%   <<"Interval">> => list(),
%%   <<"WarningThreshold">> => float()
%% }
-type goal() :: #{binary() => any()}.


%% Example:
%% batch_get_service_level_objective_budget_report_output() :: #{
%%   <<"Errors">> => list(service_level_objective_budget_report_error()),
%%   <<"Reports">> => list(service_level_objective_budget_report()),
%%   <<"Timestamp">> => [non_neg_integer()]
%% }
-type batch_get_service_level_objective_budget_report_output() :: #{binary() => any()}.


%% Example:
%% service_level_indicator_metric() :: #{
%%   <<"DependencyConfig">> => dependency_config(),
%%   <<"KeyAttributes">> => map(),
%%   <<"MetricDataQueries">> => list(metric_data_query()),
%%   <<"MetricType">> => list(any()),
%%   <<"OperationName">> => string()
%% }
-type service_level_indicator_metric() :: #{binary() => any()}.


%% Example:
%% request_based_service_level_indicator_metric_config() :: #{
%%   <<"DependencyConfig">> => dependency_config(),
%%   <<"KeyAttributes">> => map(),
%%   <<"MetricType">> => list(any()),
%%   <<"MonitoredRequestCountMetric">> => list(),
%%   <<"OperationName">> => string(),
%%   <<"TotalRequestCountMetric">> => list(metric_data_query())
%% }
-type request_based_service_level_indicator_metric_config() :: #{binary() => any()}.


%% Example:
%% rolling_interval() :: #{
%%   <<"Duration">> => integer(),
%%   <<"DurationUnit">> => list(any())
%% }
-type rolling_interval() :: #{binary() => any()}.

%% Example:
%% get_service_level_objective_input() :: #{}
-type get_service_level_objective_input() :: #{}.


%% Example:
%% list_service_states_output() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"NextToken">> => string(),
%%   <<"ServiceStates">> => list(service_state()),
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type list_service_states_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% metric_graph() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"MetricDataQueries">> => list(metric_data_query()),
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type metric_graph() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_service_level_objective_exclusion_windows_output() :: #{
%%   <<"ExclusionWindows">> => list(exclusion_window()),
%%   <<"NextToken">> => string()
%% }
-type list_service_level_objective_exclusion_windows_output() :: #{binary() => any()}.


%% Example:
%% get_service_output() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"LogGroupReferences">> => list(map()),
%%   <<"Service">> => service(),
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type get_service_output() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% service_summary() :: #{
%%   <<"AttributeMaps">> => list(map()),
%%   <<"KeyAttributes">> => map(),
%%   <<"MetricReferences">> => list(metric_reference()),
%%   <<"ServiceGroups">> => list(service_group())
%% }
-type service_summary() :: #{binary() => any()}.


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
%% service_level_objective_entity() :: #{
%%   <<"SloArn">> => [string()],
%%   <<"SloName">> => [string()]
%% }
-type service_level_objective_entity() :: #{binary() => any()}.


%% Example:
%% service_level_indicator() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"MetricThreshold">> => float(),
%%   <<"SliMetric">> => service_level_indicator_metric()
%% }
-type service_level_indicator() :: #{binary() => any()}.


%% Example:
%% get_service_level_objective_output() :: #{
%%   <<"Slo">> => service_level_objective()
%% }
-type get_service_level_objective_output() :: #{binary() => any()}.


%% Example:
%% burn_rate_configuration() :: #{
%%   <<"LookBackWindowMinutes">> => integer()
%% }
-type burn_rate_configuration() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_grouping_attribute_definitions_output() :: #{
%%   <<"GroupingAttributeDefinitions">> => list(grouping_attribute_definition()),
%%   <<"NextToken">> => string(),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type list_grouping_attribute_definitions_output() :: #{binary() => any()}.


%% Example:
%% service_dependent() :: #{
%%   <<"DependentKeyAttributes">> => map(),
%%   <<"DependentOperationName">> => string(),
%%   <<"MetricReferences">> => list(metric_reference()),
%%   <<"OperationName">> => string()
%% }
-type service_dependent() :: #{binary() => any()}.


%% Example:
%% service_level_objective_budget_report() :: #{
%%   <<"Arn">> => string(),
%%   <<"Attainment">> => float(),
%%   <<"BudgetRequestsRemaining">> => integer(),
%%   <<"BudgetSecondsRemaining">> => integer(),
%%   <<"BudgetStatus">> => list(any()),
%%   <<"EvaluationType">> => list(any()),
%%   <<"Goal">> => goal(),
%%   <<"Name">> => string(),
%%   <<"RequestBasedSli">> => request_based_service_level_indicator(),
%%   <<"Sli">> => service_level_indicator(),
%%   <<"TotalBudgetRequests">> => integer(),
%%   <<"TotalBudgetSeconds">> => integer()
%% }
-type service_level_objective_budget_report() :: #{binary() => any()}.


%% Example:
%% update_service_level_objective_output() :: #{
%%   <<"Slo">> => service_level_objective()
%% }
-type update_service_level_objective_output() :: #{binary() => any()}.


%% Example:
%% recurrence_rule() :: #{
%%   <<"Expression">> => string()
%% }
-type recurrence_rule() :: #{binary() => any()}.


%% Example:
%% list_service_dependents_input() :: #{
%%   <<"EndTime">> := [non_neg_integer()],
%%   <<"KeyAttributes">> := map(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> := [non_neg_integer()]
%% }
-type list_service_dependents_input() :: #{binary() => any()}.


%% Example:
%% batch_update_exclusion_windows_input() :: #{
%%   <<"AddExclusionWindows">> => list(exclusion_window()),
%%   <<"RemoveExclusionWindows">> => list(exclusion_window()),
%%   <<"SloIds">> := list([string()]())
%% }
-type batch_update_exclusion_windows_input() :: #{binary() => any()}.


%% Example:
%% list_service_level_objectives_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SloSummaries">> => list(service_level_objective_summary())
%% }
-type list_service_level_objectives_output() :: #{binary() => any()}.

%% Example:
%% delete_grouping_configuration_output() :: #{}
-type delete_grouping_configuration_output() :: #{}.


%% Example:
%% request_based_service_level_indicator() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"MetricThreshold">> => float(),
%%   <<"RequestBasedSliMetric">> => request_based_service_level_indicator_metric()
%% }
-type request_based_service_level_indicator() :: #{binary() => any()}.


%% Example:
%% service_operation_entity() :: #{
%%   <<"MetricType">> => [string()],
%%   <<"Operation">> => [string()],
%%   <<"Service">> => service_entity()
%% }
-type service_operation_entity() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% metric_stat() :: #{
%%   <<"Metric">> => metric(),
%%   <<"Period">> => integer(),
%%   <<"Stat">> => string(),
%%   <<"Unit">> => list(any())
%% }
-type metric_stat() :: #{binary() => any()}.


%% Example:
%% batch_get_service_level_objective_budget_report_input() :: #{
%%   <<"SloIds">> := list([string()]()),
%%   <<"Timestamp">> := [non_neg_integer()]
%% }
-type batch_get_service_level_objective_budget_report_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% request_based_service_level_indicator_metric() :: #{
%%   <<"DependencyConfig">> => dependency_config(),
%%   <<"KeyAttributes">> => map(),
%%   <<"MetricType">> => list(any()),
%%   <<"MonitoredRequestCountMetric">> => list(),
%%   <<"OperationName">> => string(),
%%   <<"TotalRequestCountMetric">> => list(metric_data_query())
%% }
-type request_based_service_level_indicator_metric() :: #{binary() => any()}.


%% Example:
%% list_service_operations_output() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"NextToken">> => string(),
%%   <<"ServiceOperations">> => list(service_operation()),
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type list_service_operations_output() :: #{binary() => any()}.


%% Example:
%% update_service_level_objective_input() :: #{
%%   <<"BurnRateConfigurations">> => list(burn_rate_configuration()),
%%   <<"Description">> => string(),
%%   <<"Goal">> => goal(),
%%   <<"RequestBasedSliConfig">> => request_based_service_level_indicator_config(),
%%   <<"SliConfig">> => service_level_indicator_config()
%% }
-type update_service_level_objective_input() :: #{binary() => any()}.


%% Example:
%% dependency_config() :: #{
%%   <<"DependencyKeyAttributes">> => map(),
%%   <<"DependencyOperationName">> => string()
%% }
-type dependency_config() :: #{binary() => any()}.

%% Example:
%% start_discovery_input() :: #{}
-type start_discovery_input() :: #{}.


%% Example:
%% put_grouping_configuration_output() :: #{
%%   <<"GroupingConfiguration">> => grouping_configuration()
%% }
-type put_grouping_configuration_output() :: #{binary() => any()}.


%% Example:
%% list_service_level_objective_exclusion_windows_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_service_level_objective_exclusion_windows_input() :: #{binary() => any()}.


%% Example:
%% window() :: #{
%%   <<"Duration">> => integer(),
%%   <<"DurationUnit">> => list(any())
%% }
-type window() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% canary_entity() :: #{
%%   <<"CanaryName">> => [string()]
%% }
-type canary_entity() :: #{binary() => any()}.


%% Example:
%% list_audit_findings_output() :: #{
%%   <<"AuditFindings">> => list(audit_finding()),
%%   <<"NextToken">> => string()
%% }
-type list_audit_findings_output() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% attribute_filter() :: #{
%%   <<"AttributeFilterName">> => string(),
%%   <<"AttributeFilterValues">> => list(string())
%% }
-type attribute_filter() :: #{binary() => any()}.


%% Example:
%% dimension() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type dimension() :: #{binary() => any()}.


%% Example:
%% service_level_indicator_config() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"MetricThreshold">> => float(),
%%   <<"SliMetricConfig">> => service_level_indicator_metric_config()
%% }
-type service_level_indicator_config() :: #{binary() => any()}.


%% Example:
%% audit_target() :: #{
%%   <<"Data">> => list(),
%%   <<"Type">> => [string()]
%% }
-type audit_target() :: #{binary() => any()}.


%% Example:
%% change_event() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ChangeEventType">> => list(any()),
%%   <<"Entity">> => map(),
%%   <<"EventId">> => [string()],
%%   <<"EventName">> => [string()],
%%   <<"Region">> => [string()],
%%   <<"Timestamp">> => [non_neg_integer()],
%%   <<"UserName">> => [string()]
%% }
-type change_event() :: #{binary() => any()}.


%% Example:
%% edge() :: #{
%%   <<"ConnectionType">> => list(any()),
%%   <<"DestinationNodeId">> => [string()],
%%   <<"Duration">> => [float()],
%%   <<"SourceNodeId">> => [string()]
%% }
-type edge() :: #{binary() => any()}.


%% Example:
%% create_service_level_objective_output() :: #{
%%   <<"Slo">> => service_level_objective()
%% }
-type create_service_level_objective_output() :: #{binary() => any()}.


%% Example:
%% grouping_configuration() :: #{
%%   <<"GroupingAttributeDefinitions">> => list(grouping_attribute_definition()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type grouping_configuration() :: #{binary() => any()}.


%% Example:
%% application_signals_node() :: #{
%%   <<"Duration">> => [float()],
%%   <<"KeyAttributes">> => map(),
%%   <<"Name">> => [string()],
%%   <<"NodeId">> => [string()],
%%   <<"Operation">> => [string()],
%%   <<"Status">> => [string()],
%%   <<"Type">> => [string()]
%% }
-type application_signals_node() :: #{binary() => any()}.

%% Example:
%% delete_service_level_objective_output() :: #{}
-type delete_service_level_objective_output() :: #{}.


%% Example:
%% list_service_dependents_output() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"NextToken">> => string(),
%%   <<"ServiceDependents">> => list(service_dependent()),
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type list_service_dependents_output() :: #{binary() => any()}.

%% Example:
%% start_discovery_output() :: #{}
-type start_discovery_output() :: #{}.


%% Example:
%% list_services_output() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"NextToken">> => string(),
%%   <<"ServiceSummaries">> => list(service_summary()),
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type list_services_output() :: #{binary() => any()}.


%% Example:
%% exclusion_window() :: #{
%%   <<"Reason">> => string(),
%%   <<"RecurrenceRule">> => recurrence_rule(),
%%   <<"StartTime">> => [non_neg_integer()],
%%   <<"Window">> => window()
%% }
-type exclusion_window() :: #{binary() => any()}.


%% Example:
%% list_services_input() :: #{
%%   <<"AwsAccountId">> => string(),
%%   <<"EndTime">> := [non_neg_integer()],
%%   <<"IncludeLinkedAccounts">> => [boolean()],
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> := [non_neg_integer()]
%% }
-type list_services_input() :: #{binary() => any()}.


%% Example:
%% put_grouping_configuration_input() :: #{
%%   <<"GroupingAttributeDefinitions">> := list(grouping_attribute_definition())
%% }
-type put_grouping_configuration_input() :: #{binary() => any()}.


%% Example:
%% request_based_service_level_indicator_config() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"MetricThreshold">> => float(),
%%   <<"RequestBasedSliMetricConfig">> => request_based_service_level_indicator_metric_config()
%% }
-type request_based_service_level_indicator_config() :: #{binary() => any()}.


%% Example:
%% service_state() :: #{
%%   <<"AttributeFilters">> => list(attribute_filter()),
%%   <<"LatestChangeEvents">> => list(change_event()),
%%   <<"Service">> => map()
%% }
-type service_state() :: #{binary() => any()}.

-type batch_get_service_level_objective_budget_report_errors() ::
    throttling_exception() | 
    validation_exception().

-type batch_update_exclusion_windows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    resource_not_found_exception().

-type create_service_level_objective_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_grouping_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type delete_service_level_objective_errors() ::
    throttling_exception() | 
    validation_exception() | 
    resource_not_found_exception().

-type get_service_errors() ::
    throttling_exception() | 
    validation_exception().

-type get_service_level_objective_errors() ::
    throttling_exception() | 
    validation_exception() | 
    resource_not_found_exception().

-type list_audit_findings_errors() ::
    throttling_exception() | 
    validation_exception().

-type list_grouping_attribute_definitions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_service_dependencies_errors() ::
    throttling_exception() | 
    validation_exception().

-type list_service_dependents_errors() ::
    throttling_exception() | 
    validation_exception().

-type list_service_level_objective_exclusion_windows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    resource_not_found_exception().

-type list_service_level_objectives_errors() ::
    throttling_exception() | 
    validation_exception().

-type list_service_operations_errors() ::
    throttling_exception() | 
    validation_exception().

-type list_service_states_errors() ::
    throttling_exception() | 
    validation_exception().

-type list_services_errors() ::
    throttling_exception() | 
    validation_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    resource_not_found_exception().

-type put_grouping_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type start_discovery_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    resource_not_found_exception().

-type update_service_level_objective_errors() ::
    throttling_exception() | 
    validation_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Use this operation to retrieve one or more service level objective
%% (SLO) budget reports.
%%
%% An error budget is the amount of time or requests in an unhealthy state
%% that your service can accumulate during an interval before your overall
%% SLO budget health is breached and the SLO is considered to be unmet. For
%% example, an SLO with a threshold of 99.95% and a monthly interval
%% translates to an error budget of 21.9 minutes of downtime in a 30-day
%% month.
%%
%% Budget reports include a health indicator, the attainment value, and
%% remaining budget.
%%
%% For more information about SLO error budgets, see SLO concepts:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html#CloudWatch-ServiceLevelObjectives-concepts.
-spec batch_get_service_level_objective_budget_report(aws_client:aws_client(), batch_get_service_level_objective_budget_report_input()) ->
    {ok, batch_get_service_level_objective_budget_report_output(), tuple()} |
    {error, any()} |
    {error, batch_get_service_level_objective_budget_report_errors(), tuple()}.
batch_get_service_level_objective_budget_report(Client, Input) ->
    batch_get_service_level_objective_budget_report(Client, Input, []).

-spec batch_get_service_level_objective_budget_report(aws_client:aws_client(), batch_get_service_level_objective_budget_report_input(), proplists:proplist()) ->
    {ok, batch_get_service_level_objective_budget_report_output(), tuple()} |
    {error, any()} |
    {error, batch_get_service_level_objective_budget_report_errors(), tuple()}.
batch_get_service_level_objective_budget_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/budget-report"],
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

%% @doc Add or remove time window exclusions for one or more Service Level
%% Objectives (SLOs).
-spec batch_update_exclusion_windows(aws_client:aws_client(), batch_update_exclusion_windows_input()) ->
    {ok, batch_update_exclusion_windows_output(), tuple()} |
    {error, any()} |
    {error, batch_update_exclusion_windows_errors(), tuple()}.
batch_update_exclusion_windows(Client, Input) ->
    batch_update_exclusion_windows(Client, Input, []).

-spec batch_update_exclusion_windows(aws_client:aws_client(), batch_update_exclusion_windows_input(), proplists:proplist()) ->
    {ok, batch_update_exclusion_windows_output(), tuple()} |
    {error, any()} |
    {error, batch_update_exclusion_windows_errors(), tuple()}.
batch_update_exclusion_windows(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/exclusion-windows"],
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

%% @doc Creates a service level objective (SLO), which can help you ensure
%% that your critical business operations are meeting customer expectations.
%%
%% Use SLOs to set and track specific target levels for the reliability and
%% availability of your applications and services. SLOs use service level
%% indicators (SLIs) to calculate whether the application is performing at
%% the level that you want.
%%
%% Create an SLO to set a target for a service or operation’s availability or
%% latency. CloudWatch measures this target frequently you can find whether
%% it has been breached.
%%
%% The target performance quality that is defined for an SLO is the
%% attainment goal.
%%
%% You can set SLO targets for your applications that are discovered by
%% Application Signals, using critical metrics such as latency and
%% availability. You can also set SLOs against any CloudWatch metric or math
%% expression that produces a time series.
%%
%% You can't create an SLO for a service operation that was discovered by
%% Application Signals until after that operation has reported standard
%% metrics to Application Signals.
%%
%% When you create an SLO, you specify whether it is a period-based SLO or a
%% request-based SLO. Each type of SLO has a different way of evaluating your
%% application's performance against its attainment goal.
%%
%% A period-based SLO uses defined periods of time within a specified total
%% time interval. For each period of time, Application Signals determines
%% whether the application met its goal. The attainment rate is calculated as
%% the `number of good periods/number of total periods'.
%%
%% For example, for a period-based SLO, meeting an attainment goal of 99.9%
%% means that within your interval, your application must meet its
%% performance goal during at least 99.9% of the time periods.
%%
%% A request-based SLO doesn't use pre-defined periods of time. Instead,
%% the SLO measures `number of good requests/number of total requests'
%% during the interval. At any time, you can find the ratio of good requests
%% to total requests for the interval up to the time stamp that you specify,
%% and measure that ratio against the goal set in your SLO.
%%
%% After you have created an SLO, you can retrieve error budget reports for
%% it. An error budget is the amount of time or amount of requests that your
%% application can be non-compliant with the SLO's goal, and still have
%% your application meet the goal.
%%
%% For a period-based SLO, the error budget starts at a number defined by the
%% highest number of periods that can fail to meet the threshold, while still
%% meeting the overall goal. The remaining error budget decreases with every
%% failed period that is recorded. The error budget within one interval can
%% never increase.
%%
%% For example, an SLO with a threshold that 99.95% of requests must be
%% completed under 2000ms every month translates to an error budget of 21.9
%% minutes of downtime per month.
%%
%% For a request-based SLO, the remaining error budget is dynamic and can
%% increase or decrease, depending on the ratio of good requests to total
%% requests.
%%
%% For more information about SLOs, see Service level objectives (SLOs):
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html.
%%
%% When you perform a `CreateServiceLevelObjective' operation,
%% Application Signals creates the
%% AWSServiceRoleForCloudWatchApplicationSignals service-linked role, if it
%% doesn't already exist in your account. This service- linked role has
%% the following permissions:
%%
%% `xray:GetServiceGraph'
%%
%% `logs:StartQuery'
%%
%% `logs:GetQueryResults'
%%
%% `cloudwatch:GetMetricData'
%%
%% `cloudwatch:ListMetrics'
%%
%% `tag:GetResources'
%%
%% `autoscaling:DescribeAutoScalingGroups'
-spec create_service_level_objective(aws_client:aws_client(), create_service_level_objective_input()) ->
    {ok, create_service_level_objective_output(), tuple()} |
    {error, any()} |
    {error, create_service_level_objective_errors(), tuple()}.
create_service_level_objective(Client, Input) ->
    create_service_level_objective(Client, Input, []).

-spec create_service_level_objective(aws_client:aws_client(), create_service_level_objective_input(), proplists:proplist()) ->
    {ok, create_service_level_objective_output(), tuple()} |
    {error, any()} |
    {error, create_service_level_objective_errors(), tuple()}.
create_service_level_objective(Client, Input0, Options0) ->
    Method = post,
    Path = ["/slo"],
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

%% @doc Deletes a grouping configuration that defines how services are
%% grouped and organized in Application Signals.
%%
%% Once deleted, services will no longer be grouped according to the
%% specified configuration rules.
%%
%% This operation is irreversible. After deletion, you must recreate the
%% grouping configuration if you want to restore the same grouping behavior.
-spec delete_grouping_configuration(aws_client:aws_client(), #{}) ->
    {ok, delete_grouping_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_grouping_configuration_errors(), tuple()}.
delete_grouping_configuration(Client, Input) ->
    delete_grouping_configuration(Client, Input, []).

-spec delete_grouping_configuration(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, delete_grouping_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_grouping_configuration_errors(), tuple()}.
delete_grouping_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/grouping-configuration"],
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

%% @doc Deletes the specified service level objective.
-spec delete_service_level_objective(aws_client:aws_client(), binary() | list(), delete_service_level_objective_input()) ->
    {ok, delete_service_level_objective_output(), tuple()} |
    {error, any()} |
    {error, delete_service_level_objective_errors(), tuple()}.
delete_service_level_objective(Client, Id, Input) ->
    delete_service_level_objective(Client, Id, Input, []).

-spec delete_service_level_objective(aws_client:aws_client(), binary() | list(), delete_service_level_objective_input(), proplists:proplist()) ->
    {ok, delete_service_level_objective_output(), tuple()} |
    {error, any()} |
    {error, delete_service_level_objective_errors(), tuple()}.
delete_service_level_objective(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/slo/", aws_util:encode_uri(Id), ""],
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

%% @doc Returns information about a service discovered by Application
%% Signals.
-spec get_service(aws_client:aws_client(), get_service_input()) ->
    {ok, get_service_output(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, Input) ->
    get_service(Client, Input, []).

-spec get_service(aws_client:aws_client(), get_service_input(), proplists:proplist()) ->
    {ok, get_service_output(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/service"],
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
                     {<<"EndTime">>, <<"EndTime">>},
                     {<<"StartTime">>, <<"StartTime">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about one SLO created in the account.
-spec get_service_level_objective(aws_client:aws_client(), binary() | list()) ->
    {ok, get_service_level_objective_output(), tuple()} |
    {error, any()} |
    {error, get_service_level_objective_errors(), tuple()}.
get_service_level_objective(Client, Id)
  when is_map(Client) ->
    get_service_level_objective(Client, Id, #{}, #{}).

-spec get_service_level_objective(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_service_level_objective_output(), tuple()} |
    {error, any()} |
    {error, get_service_level_objective_errors(), tuple()}.
get_service_level_objective(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_level_objective(Client, Id, QueryMap, HeadersMap, []).

-spec get_service_level_objective(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_level_objective_output(), tuple()} |
    {error, any()} |
    {error, get_service_level_objective_errors(), tuple()}.
get_service_level_objective(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/slo/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of audit findings for Application Signals resources.
%%
%% Audit findings identify potential issues, misconfigurations, or compliance
%% violations in your observability setup.
%%
%% You can filter findings by time range, auditor type, and target resources
%% to focus on specific areas of concern. This operation supports pagination
%% for large result sets.
-spec list_audit_findings(aws_client:aws_client(), list_audit_findings_input()) ->
    {ok, list_audit_findings_output(), tuple()} |
    {error, any()} |
    {error, list_audit_findings_errors(), tuple()}.
list_audit_findings(Client, Input) ->
    list_audit_findings(Client, Input, []).

-spec list_audit_findings(aws_client:aws_client(), list_audit_findings_input(), proplists:proplist()) ->
    {ok, list_audit_findings_output(), tuple()} |
    {error, any()} |
    {error, list_audit_findings_errors(), tuple()}.
list_audit_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/auditFindings"],
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
                     {<<"EndTime">>, <<"EndTime">>},
                     {<<"StartTime">>, <<"StartTime">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the available grouping attribute definitions that can be
%% used to create grouping configurations.
%%
%% These definitions specify the attributes and rules available for
%% organizing services.
%%
%% Use this operation to discover what grouping options are available before
%% creating or updating grouping configurations.
-spec list_grouping_attribute_definitions(aws_client:aws_client(), list_grouping_attribute_definitions_input()) ->
    {ok, list_grouping_attribute_definitions_output(), tuple()} |
    {error, any()} |
    {error, list_grouping_attribute_definitions_errors(), tuple()}.
list_grouping_attribute_definitions(Client, Input) ->
    list_grouping_attribute_definitions(Client, Input, []).

-spec list_grouping_attribute_definitions(aws_client:aws_client(), list_grouping_attribute_definitions_input(), proplists:proplist()) ->
    {ok, list_grouping_attribute_definitions_output(), tuple()} |
    {error, any()} |
    {error, list_grouping_attribute_definitions_errors(), tuple()}.
list_grouping_attribute_definitions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/grouping-attribute-definitions"],
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
                     {<<"NextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of service dependencies of the service that you
%% specify.
%%
%% A dependency is an infrastructure component that an operation of this
%% service connects with. Dependencies can include Amazon Web Services
%% services, Amazon Web Services resources, and third-party services.
-spec list_service_dependencies(aws_client:aws_client(), list_service_dependencies_input()) ->
    {ok, list_service_dependencies_output(), tuple()} |
    {error, any()} |
    {error, list_service_dependencies_errors(), tuple()}.
list_service_dependencies(Client, Input) ->
    list_service_dependencies(Client, Input, []).

-spec list_service_dependencies(aws_client:aws_client(), list_service_dependencies_input(), proplists:proplist()) ->
    {ok, list_service_dependencies_output(), tuple()} |
    {error, any()} |
    {error, list_service_dependencies_errors(), tuple()}.
list_service_dependencies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/service-dependencies"],
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
                     {<<"EndTime">>, <<"EndTime">>},
                     {<<"MaxResults">>, <<"MaxResults">>},
                     {<<"NextToken">>, <<"NextToken">>},
                     {<<"StartTime">>, <<"StartTime">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the list of dependents that invoked the specified service
%% during the provided time range.
%%
%% Dependents include other services, CloudWatch Synthetics canaries, and
%% clients that are instrumented with CloudWatch RUM app monitors.
-spec list_service_dependents(aws_client:aws_client(), list_service_dependents_input()) ->
    {ok, list_service_dependents_output(), tuple()} |
    {error, any()} |
    {error, list_service_dependents_errors(), tuple()}.
list_service_dependents(Client, Input) ->
    list_service_dependents(Client, Input, []).

-spec list_service_dependents(aws_client:aws_client(), list_service_dependents_input(), proplists:proplist()) ->
    {ok, list_service_dependents_output(), tuple()} |
    {error, any()} |
    {error, list_service_dependents_errors(), tuple()}.
list_service_dependents(Client, Input0, Options0) ->
    Method = post,
    Path = ["/service-dependents"],
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
                     {<<"EndTime">>, <<"EndTime">>},
                     {<<"MaxResults">>, <<"MaxResults">>},
                     {<<"NextToken">>, <<"NextToken">>},
                     {<<"StartTime">>, <<"StartTime">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves all exclusion windows configured for a specific SLO.
-spec list_service_level_objective_exclusion_windows(aws_client:aws_client(), binary() | list()) ->
    {ok, list_service_level_objective_exclusion_windows_output(), tuple()} |
    {error, any()} |
    {error, list_service_level_objective_exclusion_windows_errors(), tuple()}.
list_service_level_objective_exclusion_windows(Client, Id)
  when is_map(Client) ->
    list_service_level_objective_exclusion_windows(Client, Id, #{}, #{}).

-spec list_service_level_objective_exclusion_windows(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_service_level_objective_exclusion_windows_output(), tuple()} |
    {error, any()} |
    {error, list_service_level_objective_exclusion_windows_errors(), tuple()}.
list_service_level_objective_exclusion_windows(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_level_objective_exclusion_windows(Client, Id, QueryMap, HeadersMap, []).

-spec list_service_level_objective_exclusion_windows(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_service_level_objective_exclusion_windows_output(), tuple()} |
    {error, any()} |
    {error, list_service_level_objective_exclusion_windows_errors(), tuple()}.
list_service_level_objective_exclusion_windows(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/slo/", aws_util:encode_uri(Id), "/exclusion-windows"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of SLOs created in this account.
-spec list_service_level_objectives(aws_client:aws_client(), list_service_level_objectives_input()) ->
    {ok, list_service_level_objectives_output(), tuple()} |
    {error, any()} |
    {error, list_service_level_objectives_errors(), tuple()}.
list_service_level_objectives(Client, Input) ->
    list_service_level_objectives(Client, Input, []).

-spec list_service_level_objectives(aws_client:aws_client(), list_service_level_objectives_input(), proplists:proplist()) ->
    {ok, list_service_level_objectives_output(), tuple()} |
    {error, any()} |
    {error, list_service_level_objectives_errors(), tuple()}.
list_service_level_objectives(Client, Input0, Options0) ->
    Method = post,
    Path = ["/slos"],
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
                     {<<"IncludeLinkedAccounts">>, <<"IncludeLinkedAccounts">>},
                     {<<"MaxResults">>, <<"MaxResults">>},
                     {<<"NextToken">>, <<"NextToken">>},
                     {<<"OperationName">>, <<"OperationName">>},
                     {<<"SloOwnerAwsAccountId">>, <<"SloOwnerAwsAccountId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of the operations of this service that have been
%% discovered by Application Signals.
%%
%% Only the operations that were invoked during the specified time range are
%% returned.
-spec list_service_operations(aws_client:aws_client(), list_service_operations_input()) ->
    {ok, list_service_operations_output(), tuple()} |
    {error, any()} |
    {error, list_service_operations_errors(), tuple()}.
list_service_operations(Client, Input) ->
    list_service_operations(Client, Input, []).

-spec list_service_operations(aws_client:aws_client(), list_service_operations_input(), proplists:proplist()) ->
    {ok, list_service_operations_output(), tuple()} |
    {error, any()} |
    {error, list_service_operations_errors(), tuple()}.
list_service_operations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/service-operations"],
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
                     {<<"EndTime">>, <<"EndTime">>},
                     {<<"MaxResults">>, <<"MaxResults">>},
                     {<<"NextToken">>, <<"NextToken">>},
                     {<<"StartTime">>, <<"StartTime">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the current state information for services monitored by
%% Application Signals.
%%
%% Service states include health status, recent change events, and other
%% operational metadata.
%%
%% You can filter results by time range, AWS account, and service attributes
%% to focus on specific services or time periods. This operation supports
%% pagination and can include data from linked accounts.
-spec list_service_states(aws_client:aws_client(), list_service_states_input()) ->
    {ok, list_service_states_output(), tuple()} |
    {error, any()} |
    {error, list_service_states_errors(), tuple()}.
list_service_states(Client, Input) ->
    list_service_states(Client, Input, []).

-spec list_service_states(aws_client:aws_client(), list_service_states_input(), proplists:proplist()) ->
    {ok, list_service_states_output(), tuple()} |
    {error, any()} |
    {error, list_service_states_errors(), tuple()}.
list_service_states(Client, Input0, Options0) ->
    Method = post,
    Path = ["/service/states"],
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

%% @doc Returns a list of services that have been discovered by Application
%% Signals.
%%
%% A service represents a minimum logical and transactional unit that
%% completes a business function. Services are discovered through Application
%% Signals instrumentation.
-spec list_services(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_services_output(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, EndTime, StartTime)
  when is_map(Client) ->
    list_services(Client, EndTime, StartTime, #{}, #{}).

-spec list_services(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_services_output(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_services(Client, EndTime, StartTime, QueryMap, HeadersMap, []).

-spec list_services(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_services_output(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AwsAccountId">>, maps:get(<<"AwsAccountId">>, QueryMap, undefined)},
        {<<"EndTime">>, EndTime},
        {<<"IncludeLinkedAccounts">>, maps:get(<<"IncludeLinkedAccounts">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"StartTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the tags associated with a CloudWatch resource.
%%
%% Tags can be assigned to service level objectives.
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
    Path = ["/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"ResourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates or updates a grouping configuration that defines how services
%% are organized and grouped in Application Signals dashboards and service
%% maps.
%%
%% Grouping configurations allow you to logically organize services based on
%% attributes such as environment, team ownership, or business function,
%% making it easier to monitor and manage related services together.
-spec put_grouping_configuration(aws_client:aws_client(), put_grouping_configuration_input()) ->
    {ok, put_grouping_configuration_output(), tuple()} |
    {error, any()} |
    {error, put_grouping_configuration_errors(), tuple()}.
put_grouping_configuration(Client, Input) ->
    put_grouping_configuration(Client, Input, []).

-spec put_grouping_configuration(aws_client:aws_client(), put_grouping_configuration_input(), proplists:proplist()) ->
    {ok, put_grouping_configuration_output(), tuple()} |
    {error, any()} |
    {error, put_grouping_configuration_errors(), tuple()}.
put_grouping_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/grouping-configuration"],
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

%% @doc Enables this Amazon Web Services account to be able to use CloudWatch
%% Application Signals by creating the
%% AWSServiceRoleForCloudWatchApplicationSignals service-linked role.
%%
%% This service- linked role has the following permissions:
%%
%% `xray:GetServiceGraph'
%%
%% `logs:StartQuery'
%%
%% `logs:GetQueryResults'
%%
%% `cloudwatch:GetMetricData'
%%
%% `cloudwatch:ListMetrics'
%%
%% `tag:GetResources'
%%
%% `autoscaling:DescribeAutoScalingGroups'
%%
%% After completing this step, you still need to instrument your Java and
%% Python applications to send data to Application Signals. For more
%% information, see Enabling Application Signals:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Application-Signals-Enable.html.
-spec start_discovery(aws_client:aws_client(), start_discovery_input()) ->
    {ok, start_discovery_output(), tuple()} |
    {error, any()} |
    {error, start_discovery_errors(), tuple()}.
start_discovery(Client, Input) ->
    start_discovery(Client, Input, []).

-spec start_discovery(aws_client:aws_client(), start_discovery_input(), proplists:proplist()) ->
    {ok, start_discovery_output(), tuple()} |
    {error, any()} |
    {error, start_discovery_errors(), tuple()}.
start_discovery(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-discovery"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% CloudWatch resource, such as a service level objective.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with an alarm that already has
%% tags. If you specify a new tag key for the alarm, this tag is appended to
%% the list of tags associated with the alarm. If you specify a tag key that
%% is already associated with the alarm, the new tag value that you specify
%% replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a CloudWatch resource.
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
    Path = ["/tag-resource"],
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

%% @doc Removes one or more tags from the specified resource.
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
    Path = ["/untag-resource"],
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

%% @doc Updates an existing service level objective (SLO).
%%
%% If you omit parameters, the previous values of those parameters are
%% retained.
%%
%% You cannot change from a period-based SLO to a request-based SLO, or
%% change from a request-based SLO to a period-based SLO.
-spec update_service_level_objective(aws_client:aws_client(), binary() | list(), update_service_level_objective_input()) ->
    {ok, update_service_level_objective_output(), tuple()} |
    {error, any()} |
    {error, update_service_level_objective_errors(), tuple()}.
update_service_level_objective(Client, Id, Input) ->
    update_service_level_objective(Client, Id, Input, []).

-spec update_service_level_objective(aws_client:aws_client(), binary() | list(), update_service_level_objective_input(), proplists:proplist()) ->
    {ok, update_service_level_objective_output(), tuple()} |
    {error, any()} |
    {error, update_service_level_objective_errors(), tuple()}.
update_service_level_objective(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/slo/", aws_util:encode_uri(Id), ""],
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
    Client1 = Client#{service => <<"application-signals">>},
    Host = build_host(<<"application-signals">>, Client1),
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
