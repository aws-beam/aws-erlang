%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudWatch Application Insights
%%
%% Amazon CloudWatch Application Insights is a service that helps you detect
%% common
%% problems with your applications.
%%
%% It enables you to pinpoint the source of issues in your
%% applications (built with technologies such as Microsoft IIS, .NET, and
%% Microsoft SQL
%% Server), by providing key insights into detected problems.
%%
%% After you onboard your application, CloudWatch Application Insights
%% identifies,
%% recommends, and sets up metrics and logs. It continuously analyzes and
%% correlates your
%% metrics and logs for unusual behavior to surface actionable problems with
%% your application.
%% For example, if your application is slow and unresponsive and leading to
%% HTTP 500 errors in
%% your Application Load Balancer (ALB), Application Insights informs you
%% that a memory
%% pressure problem with your SQL Server database is occurring. It bases this
%% analysis on
%% impactful metrics and log errors.
-module(aws_application_insights).

-export([add_workload/2,
         add_workload/3,
         create_application/2,
         create_application/3,
         create_component/2,
         create_component/3,
         create_log_pattern/2,
         create_log_pattern/3,
         delete_application/2,
         delete_application/3,
         delete_component/2,
         delete_component/3,
         delete_log_pattern/2,
         delete_log_pattern/3,
         describe_application/2,
         describe_application/3,
         describe_component/2,
         describe_component/3,
         describe_component_configuration/2,
         describe_component_configuration/3,
         describe_component_configuration_recommendation/2,
         describe_component_configuration_recommendation/3,
         describe_log_pattern/2,
         describe_log_pattern/3,
         describe_observation/2,
         describe_observation/3,
         describe_problem/2,
         describe_problem/3,
         describe_problem_observations/2,
         describe_problem_observations/3,
         describe_workload/2,
         describe_workload/3,
         list_applications/2,
         list_applications/3,
         list_components/2,
         list_components/3,
         list_configuration_history/2,
         list_configuration_history/3,
         list_log_pattern_sets/2,
         list_log_pattern_sets/3,
         list_log_patterns/2,
         list_log_patterns/3,
         list_problems/2,
         list_problems/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_workloads/2,
         list_workloads/3,
         remove_workload/2,
         remove_workload/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_application/2,
         update_application/3,
         update_component/2,
         update_component/3,
         update_component_configuration/2,
         update_component_configuration/3,
         update_log_pattern/2,
         update_log_pattern/3,
         update_problem/2,
         update_problem/3,
         update_workload/2,
         update_workload/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% update_problem_request() :: #{
%%   <<"ProblemId">> := string(),
%%   <<"UpdateStatus">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type update_problem_request() :: #{binary() => any()}.

%% Example:
%% list_log_patterns_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PatternSetName">> => string(),
%%   <<"ResourceGroupName">> := string()
%% }
-type list_log_patterns_request() :: #{binary() => any()}.

%% Example:
%% add_workload_response() :: #{
%%   <<"WorkloadConfiguration">> => workload_configuration(),
%%   <<"WorkloadId">> => string()
%% }
-type add_workload_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_workloads_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WorkloadList">> => list(workload())
%% }
-type list_workloads_response() :: #{binary() => any()}.

%% Example:
%% describe_log_pattern_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"PatternName">> := string(),
%%   <<"PatternSetName">> := string(),
%%   <<"ResourceGroupName">> := string()
%% }
-type describe_log_pattern_request() :: #{binary() => any()}.

%% Example:
%% list_workloads_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ComponentName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceGroupName">> := string()
%% }
-type list_workloads_request() :: #{binary() => any()}.

%% Example:
%% describe_problem_observations_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ProblemId">> := string()
%% }
-type describe_problem_observations_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% list_problems_response() :: #{
%%   <<"AccountId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"ProblemList">> => list(problem()),
%%   <<"ResourceGroupName">> => string()
%% }
-type list_problems_response() :: #{binary() => any()}.

%% Example:
%% describe_observation_response() :: #{
%%   <<"Observation">> => observation()
%% }
-type describe_observation_response() :: #{binary() => any()}.

%% Example:
%% describe_component_configuration_recommendation_request() :: #{
%%   <<"ComponentName">> := string(),
%%   <<"RecommendationType">> => list(any()),
%%   <<"ResourceGroupName">> := string(),
%%   <<"Tier">> := list(any()),
%%   <<"WorkloadName">> => string()
%% }
-type describe_component_configuration_recommendation_request() :: #{binary() => any()}.

%% Example:
%% log_pattern() :: #{
%%   <<"Pattern">> => string(),
%%   <<"PatternName">> => string(),
%%   <<"PatternSetName">> => string(),
%%   <<"Rank">> => integer()
%% }
-type log_pattern() :: #{binary() => any()}.

%% Example:
%% delete_component_request() :: #{
%%   <<"ComponentName">> := string(),
%%   <<"ResourceGroupName">> := string()
%% }
-type delete_component_request() :: #{binary() => any()}.

%% Example:
%% list_configuration_history_response() :: #{
%%   <<"EventList">> => list(configuration_event()),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_history_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_component_configuration_response() :: #{
%%   <<"ComponentConfiguration">> => string(),
%%   <<"Monitor">> => boolean(),
%%   <<"Tier">> => list(any())
%% }
-type describe_component_configuration_response() :: #{binary() => any()}.

%% Example:
%% update_component_response() :: #{

%% }
-type update_component_response() :: #{binary() => any()}.

%% Example:
%% update_log_pattern_response() :: #{
%%   <<"LogPattern">> => log_pattern(),
%%   <<"ResourceGroupName">> => string()
%% }
-type update_log_pattern_response() :: #{binary() => any()}.

%% Example:
%% describe_problem_observations_response() :: #{
%%   <<"RelatedObservations">> => related_observations()
%% }
-type describe_problem_observations_response() :: #{binary() => any()}.

%% Example:
%% observation() :: #{
%%   <<"CodeDeployInstanceGroupId">> => string(),
%%   <<"XRayRequestCount">> => integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"MetricNamespace">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"XRayThrottlePercent">> => integer(),
%%   <<"LogFilter">> => list(any()),
%%   <<"Ec2State">> => string(),
%%   <<"Id">> => string(),
%%   <<"StatesInput">> => string(),
%%   <<"S3EventName">> => string(),
%%   <<"XRayNodeName">> => string(),
%%   <<"EbsEvent">> => string(),
%%   <<"XRayRequestAverageLatency">> => float(),
%%   <<"LogGroup">> => string(),
%%   <<"SourceType">> => string(),
%%   <<"XRayErrorPercent">> => integer(),
%%   <<"RdsEventCategories">> => string(),
%%   <<"EbsCause">> => string(),
%%   <<"SourceARN">> => string(),
%%   <<"StatesExecutionArn">> => string(),
%%   <<"HealthService">> => string(),
%%   <<"RdsEventMessage">> => string(),
%%   <<"MetricName">> => string(),
%%   <<"Unit">> => string(),
%%   <<"HealthEventTypeCode">> => string(),
%%   <<"CodeDeployDeploymentId">> => string(),
%%   <<"EbsResult">> => string(),
%%   <<"XRayNodeType">> => string(),
%%   <<"CodeDeployApplication">> => string(),
%%   <<"CloudWatchEventDetailType">> => string(),
%%   <<"LogText">> => string(),
%%   <<"HealthEventArn">> => string(),
%%   <<"CodeDeployDeploymentGroup">> => string(),
%%   <<"StatesArn">> => string(),
%%   <<"LineTime">> => non_neg_integer(),
%%   <<"CloudWatchEventId">> => string(),
%%   <<"XRayFaultPercent">> => integer(),
%%   <<"StatesStatus">> => string(),
%%   <<"CloudWatchEventSource">> => list(any()),
%%   <<"CodeDeployState">> => string(),
%%   <<"EbsRequestId">> => string(),
%%   <<"HealthEventTypeCategory">> => string(),
%%   <<"Value">> => float(),
%%   <<"HealthEventDescription">> => string()
%% }
-type observation() :: #{binary() => any()}.

%% Example:
%% create_component_response() :: #{

%% }
-type create_component_response() :: #{binary() => any()}.

%% Example:
%% update_component_configuration_response() :: #{

%% }
-type update_component_configuration_response() :: #{binary() => any()}.

%% Example:
%% describe_problem_response() :: #{
%%   <<"Problem">> => problem(),
%%   <<"SNSNotificationArn">> => string()
%% }
-type describe_problem_response() :: #{binary() => any()}.

%% Example:
%% application_info() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AttachMissingPermission">> => boolean(),
%%   <<"AutoConfigEnabled">> => boolean(),
%%   <<"CWEMonitorEnabled">> => boolean(),
%%   <<"DiscoveryType">> => list(any()),
%%   <<"LifeCycle">> => string(),
%%   <<"OpsCenterEnabled">> => boolean(),
%%   <<"OpsItemSNSTopicArn">> => string(),
%%   <<"Remarks">> => string(),
%%   <<"ResourceGroupName">> => string(),
%%   <<"SNSNotificationArn">> => string()
%% }
-type application_info() :: #{binary() => any()}.

%% Example:
%% update_component_request() :: #{
%%   <<"ComponentName">> := string(),
%%   <<"NewComponentName">> => string(),
%%   <<"ResourceGroupName">> := string(),
%%   <<"ResourceList">> => list(string())
%% }
-type update_component_request() :: #{binary() => any()}.

%% Example:
%% workload() :: #{
%%   <<"ComponentName">> => string(),
%%   <<"MissingWorkloadConfig">> => boolean(),
%%   <<"Tier">> => list(any()),
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadName">> => string(),
%%   <<"WorkloadRemarks">> => string()
%% }
-type workload() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_components_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceGroupName">> := string()
%% }
-type list_components_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% list_log_pattern_sets_response() :: #{
%%   <<"AccountId">> => string(),
%%   <<"LogPatternSets">> => list(string()),
%%   <<"NextToken">> => string(),
%%   <<"ResourceGroupName">> => string()
%% }
-type list_log_pattern_sets_response() :: #{binary() => any()}.

%% Example:
%% delete_log_pattern_response() :: #{

%% }
-type delete_log_pattern_response() :: #{binary() => any()}.

%% Example:
%% workload_configuration() :: #{
%%   <<"Configuration">> => string(),
%%   <<"Tier">> => list(any()),
%%   <<"WorkloadName">> => string()
%% }
-type workload_configuration() :: #{binary() => any()}.

%% Example:
%% describe_workload_response() :: #{
%%   <<"WorkloadConfiguration">> => workload_configuration(),
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadRemarks">> => string()
%% }
-type describe_workload_response() :: #{binary() => any()}.

%% Example:
%% create_component_request() :: #{
%%   <<"ComponentName">> := string(),
%%   <<"ResourceGroupName">> := string(),
%%   <<"ResourceList">> := list(string())
%% }
-type create_component_request() :: #{binary() => any()}.

%% Example:
%% create_log_pattern_request() :: #{
%%   <<"Pattern">> := string(),
%%   <<"PatternName">> := string(),
%%   <<"PatternSetName">> := string(),
%%   <<"Rank">> := integer(),
%%   <<"ResourceGroupName">> := string()
%% }
-type create_log_pattern_request() :: #{binary() => any()}.

%% Example:
%% remove_workload_response() :: #{

%% }
-type remove_workload_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% create_application_request() :: #{
%%   <<"AttachMissingPermission">> => boolean(),
%%   <<"AutoConfigEnabled">> => boolean(),
%%   <<"AutoCreate">> => boolean(),
%%   <<"CWEMonitorEnabled">> => boolean(),
%%   <<"GroupingType">> => list(any()),
%%   <<"OpsCenterEnabled">> => boolean(),
%%   <<"OpsItemSNSTopicArn">> => string(),
%%   <<"ResourceGroupName">> => string(),
%%   <<"SNSNotificationArn">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_application_request() :: #{binary() => any()}.

%% Example:
%% list_log_patterns_response() :: #{
%%   <<"AccountId">> => string(),
%%   <<"LogPatterns">> => list(log_pattern()),
%%   <<"NextToken">> => string(),
%%   <<"ResourceGroupName">> => string()
%% }
-type list_log_patterns_response() :: #{binary() => any()}.

%% Example:
%% create_application_response() :: #{
%%   <<"ApplicationInfo">> => application_info()
%% }
-type create_application_response() :: #{binary() => any()}.

%% Example:
%% update_log_pattern_request() :: #{
%%   <<"Pattern">> => string(),
%%   <<"PatternName">> := string(),
%%   <<"PatternSetName">> := string(),
%%   <<"Rank">> => integer(),
%%   <<"ResourceGroupName">> := string()
%% }
-type update_log_pattern_request() :: #{binary() => any()}.

%% Example:
%% update_workload_response() :: #{
%%   <<"WorkloadConfiguration">> => workload_configuration(),
%%   <<"WorkloadId">> => string()
%% }
-type update_workload_response() :: #{binary() => any()}.

%% Example:
%% delete_application_response() :: #{

%% }
-type delete_application_response() :: #{binary() => any()}.

%% Example:
%% create_log_pattern_response() :: #{
%%   <<"LogPattern">> => log_pattern(),
%%   <<"ResourceGroupName">> => string()
%% }
-type create_log_pattern_response() :: #{binary() => any()}.

%% Example:
%% delete_component_response() :: #{

%% }
-type delete_component_response() :: #{binary() => any()}.

%% Example:
%% update_application_request() :: #{
%%   <<"AttachMissingPermission">> => boolean(),
%%   <<"AutoConfigEnabled">> => boolean(),
%%   <<"CWEMonitorEnabled">> => boolean(),
%%   <<"OpsCenterEnabled">> => boolean(),
%%   <<"OpsItemSNSTopicArn">> => string(),
%%   <<"RemoveSNSTopic">> => boolean(),
%%   <<"ResourceGroupName">> := string(),
%%   <<"SNSNotificationArn">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.

%% Example:
%% update_application_response() :: #{
%%   <<"ApplicationInfo">> => application_info()
%% }
-type update_application_response() :: #{binary() => any()}.

%% Example:
%% remove_workload_request() :: #{
%%   <<"ComponentName">> := string(),
%%   <<"ResourceGroupName">> := string(),
%%   <<"WorkloadId">> := string()
%% }
-type remove_workload_request() :: #{binary() => any()}.

%% Example:
%% list_configuration_history_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EventStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceGroupName">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type list_configuration_history_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% describe_application_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ResourceGroupName">> := string()
%% }
-type describe_application_request() :: #{binary() => any()}.

%% Example:
%% update_problem_response() :: #{

%% }
-type update_problem_response() :: #{binary() => any()}.

%% Example:
%% list_applications_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.

%% Example:
%% problem() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AffectedResource">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Feedback">> => map(),
%%   <<"Id">> => string(),
%%   <<"Insights">> => string(),
%%   <<"LastRecurrenceTime">> => non_neg_integer(),
%%   <<"RecurringCount">> => float(),
%%   <<"ResolutionMethod">> => list(any()),
%%   <<"ResourceGroupName">> => string(),
%%   <<"SeverityLevel">> => list(any()),
%%   <<"ShortName">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Title">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type problem() :: #{binary() => any()}.

%% Example:
%% describe_observation_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ObservationId">> := string()
%% }
-type describe_observation_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% configuration_event() :: #{
%%   <<"AccountId">> => string(),
%%   <<"EventDetail">> => string(),
%%   <<"EventResourceName">> => string(),
%%   <<"EventResourceType">> => list(any()),
%%   <<"EventStatus">> => list(any()),
%%   <<"EventTime">> => non_neg_integer(),
%%   <<"MonitoredResourceARN">> => string(),
%%   <<"ResourceGroupName">> => string()
%% }
-type configuration_event() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_log_pattern_request() :: #{
%%   <<"PatternName">> := string(),
%%   <<"PatternSetName">> := string(),
%%   <<"ResourceGroupName">> := string()
%% }
-type delete_log_pattern_request() :: #{binary() => any()}.

%% Example:
%% tags_already_exist_exception() :: #{
%%   <<"Message">> => string()
%% }
-type tags_already_exist_exception() :: #{binary() => any()}.

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
%% describe_component_configuration_recommendation_response() :: #{
%%   <<"ComponentConfiguration">> => string()
%% }
-type describe_component_configuration_recommendation_response() :: #{binary() => any()}.

%% Example:
%% describe_log_pattern_response() :: #{
%%   <<"AccountId">> => string(),
%%   <<"LogPattern">> => log_pattern(),
%%   <<"ResourceGroupName">> => string()
%% }
-type describe_log_pattern_response() :: #{binary() => any()}.

%% Example:
%% describe_component_response() :: #{
%%   <<"ApplicationComponent">> => application_component(),
%%   <<"ResourceList">> => list(string())
%% }
-type describe_component_response() :: #{binary() => any()}.

%% Example:
%% list_problems_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ComponentName">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceGroupName">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Visibility">> => list(any())
%% }
-type list_problems_request() :: #{binary() => any()}.

%% Example:
%% related_observations() :: #{
%%   <<"ObservationList">> => list(observation())
%% }
-type related_observations() :: #{binary() => any()}.

%% Example:
%% list_components_response() :: #{
%%   <<"ApplicationComponentList">> => list(application_component()),
%%   <<"NextToken">> => string()
%% }
-type list_components_response() :: #{binary() => any()}.

%% Example:
%% list_applications_response() :: #{
%%   <<"ApplicationInfoList">> => list(application_info()),
%%   <<"NextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.

%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.

%% Example:
%% add_workload_request() :: #{
%%   <<"ComponentName">> := string(),
%%   <<"ResourceGroupName">> := string(),
%%   <<"WorkloadConfiguration">> := workload_configuration()
%% }
-type add_workload_request() :: #{binary() => any()}.

%% Example:
%% describe_component_configuration_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ComponentName">> := string(),
%%   <<"ResourceGroupName">> := string()
%% }
-type describe_component_configuration_request() :: #{binary() => any()}.

%% Example:
%% describe_component_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ComponentName">> := string(),
%%   <<"ResourceGroupName">> := string()
%% }
-type describe_component_request() :: #{binary() => any()}.

%% Example:
%% application_component() :: #{
%%   <<"ComponentName">> => string(),
%%   <<"ComponentRemarks">> => string(),
%%   <<"DetectedWorkload">> => map(),
%%   <<"Monitor">> => boolean(),
%%   <<"OsType">> => list(any()),
%%   <<"ResourceType">> => string(),
%%   <<"Tier">> => list(any())
%% }
-type application_component() :: #{binary() => any()}.

%% Example:
%% describe_workload_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ComponentName">> := string(),
%%   <<"ResourceGroupName">> := string(),
%%   <<"WorkloadId">> := string()
%% }
-type describe_workload_request() :: #{binary() => any()}.

%% Example:
%% list_log_pattern_sets_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceGroupName">> := string()
%% }
-type list_log_pattern_sets_request() :: #{binary() => any()}.

%% Example:
%% describe_problem_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ProblemId">> := string()
%% }
-type describe_problem_request() :: #{binary() => any()}.

%% Example:
%% update_workload_request() :: #{
%%   <<"ComponentName">> := string(),
%%   <<"ResourceGroupName">> := string(),
%%   <<"WorkloadConfiguration">> := workload_configuration(),
%%   <<"WorkloadId">> => string()
%% }
-type update_workload_request() :: #{binary() => any()}.

%% Example:
%% describe_application_response() :: #{
%%   <<"ApplicationInfo">> => application_info()
%% }
-type describe_application_response() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% update_component_configuration_request() :: #{
%%   <<"AutoConfigEnabled">> => boolean(),
%%   <<"ComponentConfiguration">> => string(),
%%   <<"ComponentName">> := string(),
%%   <<"Monitor">> => boolean(),
%%   <<"ResourceGroupName">> := string(),
%%   <<"Tier">> => list(any())
%% }
-type update_component_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{
%%   <<"ResourceGroupName">> := string()
%% }
-type delete_application_request() :: #{binary() => any()}.

-type add_workload_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_application_errors() ::
    validation_exception() | 
    tags_already_exist_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_component_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_log_pattern_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_application_errors() ::
    bad_request_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_component_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_log_pattern_errors() ::
    bad_request_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_component_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_component_configuration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_component_configuration_recommendation_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_log_pattern_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_observation_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_problem_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_problem_observations_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_workload_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_applications_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_components_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_configuration_history_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_log_pattern_sets_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_log_patterns_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_problems_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_workloads_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type remove_workload_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_component_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_component_configuration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_log_pattern_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_problem_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_workload_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a workload to a component.
%%
%% Each component can have at most five workloads.
-spec add_workload(aws_client:aws_client(), add_workload_request()) ->
    {ok, add_workload_response(), tuple()} |
    {error, any()} |
    {error, add_workload_errors(), tuple()}.
add_workload(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_workload(Client, Input, []).

-spec add_workload(aws_client:aws_client(), add_workload_request(), proplists:proplist()) ->
    {ok, add_workload_response(), tuple()} |
    {error, any()} |
    {error, add_workload_errors(), tuple()}.
add_workload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddWorkload">>, Input, Options).

%% @doc Adds an application that is created from a resource group.
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

%% @doc Creates a custom component by grouping similar standalone instances
%% to monitor.
-spec create_component(aws_client:aws_client(), create_component_request()) ->
    {ok, create_component_response(), tuple()} |
    {error, any()} |
    {error, create_component_errors(), tuple()}.
create_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_component(Client, Input, []).

-spec create_component(aws_client:aws_client(), create_component_request(), proplists:proplist()) ->
    {ok, create_component_response(), tuple()} |
    {error, any()} |
    {error, create_component_errors(), tuple()}.
create_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateComponent">>, Input, Options).

%% @doc Adds an log pattern to a `LogPatternSet'.
-spec create_log_pattern(aws_client:aws_client(), create_log_pattern_request()) ->
    {ok, create_log_pattern_response(), tuple()} |
    {error, any()} |
    {error, create_log_pattern_errors(), tuple()}.
create_log_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_pattern(Client, Input, []).

-spec create_log_pattern(aws_client:aws_client(), create_log_pattern_request(), proplists:proplist()) ->
    {ok, create_log_pattern_response(), tuple()} |
    {error, any()} |
    {error, create_log_pattern_errors(), tuple()}.
create_log_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogPattern">>, Input, Options).

%% @doc Removes the specified application from monitoring.
%%
%% Does not delete the
%% application.
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

%% @doc Ungroups a custom component.
%%
%% When you ungroup custom components, all applicable monitors
%% that are set up for the component are removed and the instances revert to
%% their standalone
%% status.
-spec delete_component(aws_client:aws_client(), delete_component_request()) ->
    {ok, delete_component_response(), tuple()} |
    {error, any()} |
    {error, delete_component_errors(), tuple()}.
delete_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_component(Client, Input, []).

-spec delete_component(aws_client:aws_client(), delete_component_request(), proplists:proplist()) ->
    {ok, delete_component_response(), tuple()} |
    {error, any()} |
    {error, delete_component_errors(), tuple()}.
delete_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteComponent">>, Input, Options).

%% @doc Removes the specified log pattern from a `LogPatternSet'.
-spec delete_log_pattern(aws_client:aws_client(), delete_log_pattern_request()) ->
    {ok, delete_log_pattern_response(), tuple()} |
    {error, any()} |
    {error, delete_log_pattern_errors(), tuple()}.
delete_log_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_pattern(Client, Input, []).

-spec delete_log_pattern(aws_client:aws_client(), delete_log_pattern_request(), proplists:proplist()) ->
    {ok, delete_log_pattern_response(), tuple()} |
    {error, any()} |
    {error, delete_log_pattern_errors(), tuple()}.
delete_log_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogPattern">>, Input, Options).

%% @doc Describes the application.
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

%% @doc Describes a component and lists the resources that are grouped
%% together in a
%% component.
-spec describe_component(aws_client:aws_client(), describe_component_request()) ->
    {ok, describe_component_response(), tuple()} |
    {error, any()} |
    {error, describe_component_errors(), tuple()}.
describe_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_component(Client, Input, []).

-spec describe_component(aws_client:aws_client(), describe_component_request(), proplists:proplist()) ->
    {ok, describe_component_response(), tuple()} |
    {error, any()} |
    {error, describe_component_errors(), tuple()}.
describe_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComponent">>, Input, Options).

%% @doc Describes the monitoring configuration of the component.
-spec describe_component_configuration(aws_client:aws_client(), describe_component_configuration_request()) ->
    {ok, describe_component_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_component_configuration_errors(), tuple()}.
describe_component_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_component_configuration(Client, Input, []).

-spec describe_component_configuration(aws_client:aws_client(), describe_component_configuration_request(), proplists:proplist()) ->
    {ok, describe_component_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_component_configuration_errors(), tuple()}.
describe_component_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComponentConfiguration">>, Input, Options).

%% @doc Describes the recommended monitoring configuration of the component.
-spec describe_component_configuration_recommendation(aws_client:aws_client(), describe_component_configuration_recommendation_request()) ->
    {ok, describe_component_configuration_recommendation_response(), tuple()} |
    {error, any()} |
    {error, describe_component_configuration_recommendation_errors(), tuple()}.
describe_component_configuration_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_component_configuration_recommendation(Client, Input, []).

-spec describe_component_configuration_recommendation(aws_client:aws_client(), describe_component_configuration_recommendation_request(), proplists:proplist()) ->
    {ok, describe_component_configuration_recommendation_response(), tuple()} |
    {error, any()} |
    {error, describe_component_configuration_recommendation_errors(), tuple()}.
describe_component_configuration_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComponentConfigurationRecommendation">>, Input, Options).

%% @doc Describe a specific log pattern from a `LogPatternSet'.
-spec describe_log_pattern(aws_client:aws_client(), describe_log_pattern_request()) ->
    {ok, describe_log_pattern_response(), tuple()} |
    {error, any()} |
    {error, describe_log_pattern_errors(), tuple()}.
describe_log_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_log_pattern(Client, Input, []).

-spec describe_log_pattern(aws_client:aws_client(), describe_log_pattern_request(), proplists:proplist()) ->
    {ok, describe_log_pattern_response(), tuple()} |
    {error, any()} |
    {error, describe_log_pattern_errors(), tuple()}.
describe_log_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLogPattern">>, Input, Options).

%% @doc Describes an anomaly or error with the application.
-spec describe_observation(aws_client:aws_client(), describe_observation_request()) ->
    {ok, describe_observation_response(), tuple()} |
    {error, any()} |
    {error, describe_observation_errors(), tuple()}.
describe_observation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_observation(Client, Input, []).

-spec describe_observation(aws_client:aws_client(), describe_observation_request(), proplists:proplist()) ->
    {ok, describe_observation_response(), tuple()} |
    {error, any()} |
    {error, describe_observation_errors(), tuple()}.
describe_observation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeObservation">>, Input, Options).

%% @doc Describes an application problem.
-spec describe_problem(aws_client:aws_client(), describe_problem_request()) ->
    {ok, describe_problem_response(), tuple()} |
    {error, any()} |
    {error, describe_problem_errors(), tuple()}.
describe_problem(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_problem(Client, Input, []).

-spec describe_problem(aws_client:aws_client(), describe_problem_request(), proplists:proplist()) ->
    {ok, describe_problem_response(), tuple()} |
    {error, any()} |
    {error, describe_problem_errors(), tuple()}.
describe_problem(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProblem">>, Input, Options).

%% @doc Describes the anomalies or errors associated with the problem.
-spec describe_problem_observations(aws_client:aws_client(), describe_problem_observations_request()) ->
    {ok, describe_problem_observations_response(), tuple()} |
    {error, any()} |
    {error, describe_problem_observations_errors(), tuple()}.
describe_problem_observations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_problem_observations(Client, Input, []).

-spec describe_problem_observations(aws_client:aws_client(), describe_problem_observations_request(), proplists:proplist()) ->
    {ok, describe_problem_observations_response(), tuple()} |
    {error, any()} |
    {error, describe_problem_observations_errors(), tuple()}.
describe_problem_observations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProblemObservations">>, Input, Options).

%% @doc Describes a workload and its configuration.
-spec describe_workload(aws_client:aws_client(), describe_workload_request()) ->
    {ok, describe_workload_response(), tuple()} |
    {error, any()} |
    {error, describe_workload_errors(), tuple()}.
describe_workload(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workload(Client, Input, []).

-spec describe_workload(aws_client:aws_client(), describe_workload_request(), proplists:proplist()) ->
    {ok, describe_workload_response(), tuple()} |
    {error, any()} |
    {error, describe_workload_errors(), tuple()}.
describe_workload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkload">>, Input, Options).

%% @doc Lists the IDs of the applications that you are monitoring.
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

%% @doc Lists the auto-grouped, standalone, and custom components of the
%% application.
-spec list_components(aws_client:aws_client(), list_components_request()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_components(Client, Input, []).

-spec list_components(aws_client:aws_client(), list_components_request(), proplists:proplist()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComponents">>, Input, Options).

%% @doc Lists the INFO, WARN, and ERROR events for periodic configuration
%% updates performed by
%% Application Insights.
%%
%% Examples of events represented are:
%%
%% INFO: creating a new alarm or updating an alarm threshold.
%%
%% WARN: alarm not created due to insufficient data points used to predict
%% thresholds.
%%
%% ERROR: alarm not created due to permission errors or exceeding quotas.
-spec list_configuration_history(aws_client:aws_client(), list_configuration_history_request()) ->
    {ok, list_configuration_history_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_history_errors(), tuple()}.
list_configuration_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_configuration_history(Client, Input, []).

-spec list_configuration_history(aws_client:aws_client(), list_configuration_history_request(), proplists:proplist()) ->
    {ok, list_configuration_history_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_history_errors(), tuple()}.
list_configuration_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConfigurationHistory">>, Input, Options).

%% @doc Lists the log pattern sets in the specific application.
-spec list_log_pattern_sets(aws_client:aws_client(), list_log_pattern_sets_request()) ->
    {ok, list_log_pattern_sets_response(), tuple()} |
    {error, any()} |
    {error, list_log_pattern_sets_errors(), tuple()}.
list_log_pattern_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_log_pattern_sets(Client, Input, []).

-spec list_log_pattern_sets(aws_client:aws_client(), list_log_pattern_sets_request(), proplists:proplist()) ->
    {ok, list_log_pattern_sets_response(), tuple()} |
    {error, any()} |
    {error, list_log_pattern_sets_errors(), tuple()}.
list_log_pattern_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLogPatternSets">>, Input, Options).

%% @doc Lists the log patterns in the specific log `LogPatternSet'.
-spec list_log_patterns(aws_client:aws_client(), list_log_patterns_request()) ->
    {ok, list_log_patterns_response(), tuple()} |
    {error, any()} |
    {error, list_log_patterns_errors(), tuple()}.
list_log_patterns(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_log_patterns(Client, Input, []).

-spec list_log_patterns(aws_client:aws_client(), list_log_patterns_request(), proplists:proplist()) ->
    {ok, list_log_patterns_response(), tuple()} |
    {error, any()} |
    {error, list_log_patterns_errors(), tuple()}.
list_log_patterns(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLogPatterns">>, Input, Options).

%% @doc Lists the problems with your application.
-spec list_problems(aws_client:aws_client(), list_problems_request()) ->
    {ok, list_problems_response(), tuple()} |
    {error, any()} |
    {error, list_problems_errors(), tuple()}.
list_problems(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_problems(Client, Input, []).

-spec list_problems(aws_client:aws_client(), list_problems_request(), proplists:proplist()) ->
    {ok, list_problems_response(), tuple()} |
    {error, any()} |
    {error, list_problems_errors(), tuple()}.
list_problems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProblems">>, Input, Options).

%% @doc Retrieve a list of the tags (keys and values) that are associated
%% with a specified
%% application.
%%
%% A tag is a label that you optionally define and associate
%% with an application. Each tag consists of a required tag key and an
%% optional associated tag value. A tag key is a general label that acts
%% as a category for more specific tag values. A tag value acts as a
%% descriptor within a tag
%% key.
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

%% @doc Lists the workloads that are configured on a given component.
-spec list_workloads(aws_client:aws_client(), list_workloads_request()) ->
    {ok, list_workloads_response(), tuple()} |
    {error, any()} |
    {error, list_workloads_errors(), tuple()}.
list_workloads(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workloads(Client, Input, []).

-spec list_workloads(aws_client:aws_client(), list_workloads_request(), proplists:proplist()) ->
    {ok, list_workloads_response(), tuple()} |
    {error, any()} |
    {error, list_workloads_errors(), tuple()}.
list_workloads(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkloads">>, Input, Options).

%% @doc Remove workload from a component.
-spec remove_workload(aws_client:aws_client(), remove_workload_request()) ->
    {ok, remove_workload_response(), tuple()} |
    {error, any()} |
    {error, remove_workload_errors(), tuple()}.
remove_workload(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_workload(Client, Input, []).

-spec remove_workload(aws_client:aws_client(), remove_workload_request(), proplists:proplist()) ->
    {ok, remove_workload_response(), tuple()} |
    {error, any()} |
    {error, remove_workload_errors(), tuple()}.
remove_workload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveWorkload">>, Input, Options).

%% @doc Add one or more tags (keys and values) to a specified application.
%%
%% A
%% tag is a label that you optionally define and associate with an
%% application. Tags can help you categorize and manage application in
%% different ways, such as
%% by purpose, owner, environment, or other criteria.
%%
%% Each tag consists of a required tag key and an associated
%% tag value, both of which you define. A tag key is a general label
%% that acts as a category for more specific tag values. A tag value acts as
%% a descriptor
%% within a tag key.
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

%% @doc Remove one or more tags (keys and values) from a specified
%% application.
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

%% @doc Updates the application.
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

%% @doc Updates the custom component name and/or the list of resources that
%% make up the
%% component.
-spec update_component(aws_client:aws_client(), update_component_request()) ->
    {ok, update_component_response(), tuple()} |
    {error, any()} |
    {error, update_component_errors(), tuple()}.
update_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_component(Client, Input, []).

-spec update_component(aws_client:aws_client(), update_component_request(), proplists:proplist()) ->
    {ok, update_component_response(), tuple()} |
    {error, any()} |
    {error, update_component_errors(), tuple()}.
update_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateComponent">>, Input, Options).

%% @doc Updates the monitoring configurations for the component.
%%
%% The configuration input
%% parameter is an escaped JSON of the configuration and should match the
%% schema of what is
%% returned by `DescribeComponentConfigurationRecommendation'.
-spec update_component_configuration(aws_client:aws_client(), update_component_configuration_request()) ->
    {ok, update_component_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_component_configuration_errors(), tuple()}.
update_component_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_component_configuration(Client, Input, []).

-spec update_component_configuration(aws_client:aws_client(), update_component_configuration_request(), proplists:proplist()) ->
    {ok, update_component_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_component_configuration_errors(), tuple()}.
update_component_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateComponentConfiguration">>, Input, Options).

%% @doc Adds a log pattern to a `LogPatternSet'.
-spec update_log_pattern(aws_client:aws_client(), update_log_pattern_request()) ->
    {ok, update_log_pattern_response(), tuple()} |
    {error, any()} |
    {error, update_log_pattern_errors(), tuple()}.
update_log_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_log_pattern(Client, Input, []).

-spec update_log_pattern(aws_client:aws_client(), update_log_pattern_request(), proplists:proplist()) ->
    {ok, update_log_pattern_response(), tuple()} |
    {error, any()} |
    {error, update_log_pattern_errors(), tuple()}.
update_log_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLogPattern">>, Input, Options).

%% @doc Updates the visibility of the problem or specifies the problem as
%% `RESOLVED'.
-spec update_problem(aws_client:aws_client(), update_problem_request()) ->
    {ok, update_problem_response(), tuple()} |
    {error, any()} |
    {error, update_problem_errors(), tuple()}.
update_problem(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_problem(Client, Input, []).

-spec update_problem(aws_client:aws_client(), update_problem_request(), proplists:proplist()) ->
    {ok, update_problem_response(), tuple()} |
    {error, any()} |
    {error, update_problem_errors(), tuple()}.
update_problem(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProblem">>, Input, Options).

%% @doc Adds a workload to a component.
%%
%% Each component can have at most five workloads.
-spec update_workload(aws_client:aws_client(), update_workload_request()) ->
    {ok, update_workload_response(), tuple()} |
    {error, any()} |
    {error, update_workload_errors(), tuple()}.
update_workload(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workload(Client, Input, []).

-spec update_workload(aws_client:aws_client(), update_workload_request(), proplists:proplist()) ->
    {ok, update_workload_response(), tuple()} |
    {error, any()} |
    {error, update_workload_errors(), tuple()}.
update_workload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkload">>, Input, Options).

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
    Client1 = Client#{service => <<"applicationinsights">>},
    Host = build_host(<<"applicationinsights">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"EC2WindowsBarleyService.", Action/binary>>}
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
