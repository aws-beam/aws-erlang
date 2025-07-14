%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% This section provides documentation for the Amazon CodeGuru Profiler API
%% operations.
%%
%% Amazon CodeGuru Profiler collects runtime performance data from your live
%% applications, and provides
%% recommendations that can help you fine-tune your application performance.
%% Using machine learning
%% algorithms, CodeGuru Profiler can help you find your most expensive lines
%% of code and suggest ways you can
%% improve efficiency and remove CPU bottlenecks.
%%
%% Amazon CodeGuru Profiler provides different visualizations of profiling
%% data to help you identify what code is
%% running on the CPU, see how much time is consumed, and suggest ways to
%% reduce CPU utilization.
%%
%% Amazon CodeGuru Profiler currently supports applications written in all
%% Java virtual machine (JVM)
%% languages and Python. While CodeGuru Profiler supports both visualizations
%% and recommendations for applications
%% written in Java, it can also generate visualizations and a subset of
%% recommendations for
%% applications written in other JVM languages and Python.
%%
%% For more information, see What is Amazon CodeGuru Profiler:
%% https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html
%% in
%% the Amazon CodeGuru Profiler User Guide.
-module(aws_codeguruprofiler).

-export([add_notification_channels/3,
         add_notification_channels/4,
         batch_get_frame_metric_data/3,
         batch_get_frame_metric_data/4,
         configure_agent/3,
         configure_agent/4,
         create_profiling_group/2,
         create_profiling_group/3,
         delete_profiling_group/3,
         delete_profiling_group/4,
         describe_profiling_group/2,
         describe_profiling_group/4,
         describe_profiling_group/5,
         get_findings_report_account_summary/1,
         get_findings_report_account_summary/3,
         get_findings_report_account_summary/4,
         get_notification_configuration/2,
         get_notification_configuration/4,
         get_notification_configuration/5,
         get_policy/2,
         get_policy/4,
         get_policy/5,
         get_profile/2,
         get_profile/4,
         get_profile/5,
         get_recommendations/4,
         get_recommendations/6,
         get_recommendations/7,
         list_findings_reports/4,
         list_findings_reports/6,
         list_findings_reports/7,
         list_profile_times/5,
         list_profile_times/7,
         list_profile_times/8,
         list_profiling_groups/1,
         list_profiling_groups/3,
         list_profiling_groups/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         post_agent_profile/3,
         post_agent_profile/4,
         put_permission/4,
         put_permission/5,
         remove_notification_channel/4,
         remove_notification_channel/5,
         remove_permission/4,
         remove_permission/5,
         submit_feedback/4,
         submit_feedback/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_profiling_group/3,
         update_profiling_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_profiling_group_request() :: #{
%%   <<"agentOrchestrationConfig">> => agent_orchestration_config()
%% }
-type update_profiling_group_request() :: #{binary() => any()}.


%% Example:
%% list_findings_reports_response() :: #{
%%   <<"findingsReportSummaries">> => list(findings_report_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_findings_reports_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_profile_times_request() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"orderBy">> => string(),
%%   <<"period">> => string(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type list_profile_times_request() :: #{binary() => any()}.


%% Example:
%% anomaly_instance() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"id">> => [string()],
%%   <<"startTime">> => non_neg_integer(),
%%   <<"userFeedback">> => user_feedback()
%% }
-type anomaly_instance() :: #{binary() => any()}.


%% Example:
%% timestamp_structure() :: #{
%%   <<"value">> => non_neg_integer()
%% }
-type timestamp_structure() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% aggregated_profile_time() :: #{
%%   <<"period">> => string(),
%%   <<"start">> => non_neg_integer()
%% }
-type aggregated_profile_time() :: #{binary() => any()}.


%% Example:
%% metric() :: #{
%%   <<"frameName">> => [string()],
%%   <<"threadStates">> => list([string()]()),
%%   <<"type">> => string()
%% }
-type metric() :: #{binary() => any()}.


%% Example:
%% profiling_status() :: #{
%%   <<"latestAgentOrchestratedAt">> => non_neg_integer(),
%%   <<"latestAgentProfileReportedAt">> => non_neg_integer(),
%%   <<"latestAggregatedProfile">> => aggregated_profile_time()
%% }
-type profiling_status() :: #{binary() => any()}.

%% Example:
%% get_policy_request() :: #{}
-type get_policy_request() :: #{}.

%% Example:
%% get_notification_configuration_request() :: #{}
-type get_notification_configuration_request() :: #{}.

%% Example:
%% delete_profiling_group_response() :: #{}
-type delete_profiling_group_response() :: #{}.


%% Example:
%% agent_orchestration_config() :: #{
%%   <<"profilingEnabled">> => [boolean()]
%% }
-type agent_orchestration_config() :: #{binary() => any()}.


%% Example:
%% frame_metric() :: #{
%%   <<"frameName">> => [string()],
%%   <<"threadStates">> => list([string()]()),
%%   <<"type">> => string()
%% }
-type frame_metric() :: #{binary() => any()}.


%% Example:
%% post_agent_profile_request() :: #{
%%   <<"agentProfile">> => binary(),
%%   <<"contentType">> => [string()],
%%   <<"profileToken">> => string()
%% }
-type post_agent_profile_request() :: #{binary() => any()}.

%% Example:
%% remove_notification_channel_request() :: #{}
-type remove_notification_channel_request() :: #{}.


%% Example:
%% list_profile_times_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"profileTimes">> => list(profile_time())
%% }
-type list_profile_times_response() :: #{binary() => any()}.

%% Example:
%% describe_profiling_group_request() :: #{}
-type describe_profiling_group_request() :: #{}.


%% Example:
%% get_recommendations_response() :: #{
%%   <<"anomalies">> => list(anomaly()),
%%   <<"profileEndTime">> => non_neg_integer(),
%%   <<"profileStartTime">> => non_neg_integer(),
%%   <<"profilingGroupName">> => string(),
%%   <<"recommendations">> => list(recommendation())
%% }
-type get_recommendations_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_notification_configuration_response() :: #{
%%   <<"notificationConfiguration">> => notification_configuration()
%% }
-type get_notification_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_findings_report_account_summary_request() :: #{
%%   <<"dailyReportsOnly">> => [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_findings_report_account_summary_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% submit_feedback_response() :: #{}
-type submit_feedback_response() :: #{}.


%% Example:
%% remove_notification_channel_response() :: #{
%%   <<"notificationConfiguration">> => notification_configuration()
%% }
-type remove_notification_channel_response() :: #{binary() => any()}.


%% Example:
%% list_profiling_groups_request() :: #{
%%   <<"includeDescription">> => [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_profiling_groups_request() :: #{binary() => any()}.

%% Example:
%% post_agent_profile_response() :: #{}
-type post_agent_profile_response() :: #{}.


%% Example:
%% pattern() :: #{
%%   <<"countersToAggregate">> => list([string()]()),
%%   <<"description">> => [string()],
%%   <<"id">> => [string()],
%%   <<"name">> => [string()],
%%   <<"resolutionSteps">> => [string()],
%%   <<"targetFrames">> => list(list([string()]())()),
%%   <<"thresholdPercent">> => float()
%% }
-type pattern() :: #{binary() => any()}.


%% Example:
%% get_findings_report_account_summary_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reportSummaries">> => list(findings_report_summary())
%% }
-type get_findings_report_account_summary_response() :: #{binary() => any()}.


%% Example:
%% configure_agent_request() :: #{
%%   <<"fleetInstanceId">> => string(),
%%   <<"metadata">> => map()
%% }
-type configure_agent_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_profile_response() :: #{
%%   <<"contentEncoding">> => [string()],
%%   <<"contentType">> => [string()],
%%   <<"profile">> => binary()
%% }
-type get_profile_response() :: #{binary() => any()}.


%% Example:
%% recommendation() :: #{
%%   <<"allMatchesCount">> => [integer()],
%%   <<"allMatchesSum">> => [float()],
%%   <<"endTime">> => non_neg_integer(),
%%   <<"pattern">> => pattern(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"topMatches">> => list(match())
%% }
-type recommendation() :: #{binary() => any()}.


%% Example:
%% get_recommendations_request() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"locale">> => string(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type get_recommendations_request() :: #{binary() => any()}.


%% Example:
%% remove_permission_request() :: #{
%%   <<"revisionId">> => string()
%% }
-type remove_permission_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_findings_reports_request() :: #{
%%   <<"dailyReportsOnly">> => [boolean()],
%%   <<"endTime">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type list_findings_reports_request() :: #{binary() => any()}.


%% Example:
%% put_permission_request() :: #{
%%   <<"principals">> => list(string()),
%%   <<"revisionId">> => string()
%% }
-type put_permission_request() :: #{binary() => any()}.


%% Example:
%% describe_profiling_group_response() :: #{
%%   <<"profilingGroup">> => profiling_group_description()
%% }
-type describe_profiling_group_response() :: #{binary() => any()}.


%% Example:
%% put_permission_response() :: #{
%%   <<"policy">> => [string()],
%%   <<"revisionId">> => string()
%% }
-type put_permission_response() :: #{binary() => any()}.


%% Example:
%% update_profiling_group_response() :: #{
%%   <<"profilingGroup">> => profiling_group_description()
%% }
-type update_profiling_group_response() :: #{binary() => any()}.


%% Example:
%% profile_time() :: #{
%%   <<"start">> => non_neg_integer()
%% }
-type profile_time() :: #{binary() => any()}.


%% Example:
%% notification_configuration() :: #{
%%   <<"channels">> => list(channel())
%% }
-type notification_configuration() :: #{binary() => any()}.


%% Example:
%% get_policy_response() :: #{
%%   <<"policy">> => [string()],
%%   <<"revisionId">> => string()
%% }
-type get_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_profiling_group_request() :: #{}
-type delete_profiling_group_request() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% profiling_group_description() :: #{
%%   <<"agentOrchestrationConfig">> => agent_orchestration_config(),
%%   <<"arn">> => string(),
%%   <<"computePlatform">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"profilingStatus">> => profiling_status(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type profiling_group_description() :: #{binary() => any()}.


%% Example:
%% anomaly() :: #{
%%   <<"instances">> => list(anomaly_instance()),
%%   <<"metric">> => metric(),
%%   <<"reason">> => [string()]
%% }
-type anomaly() :: #{binary() => any()}.


%% Example:
%% create_profiling_group_response() :: #{
%%   <<"profilingGroup">> => profiling_group_description()
%% }
-type create_profiling_group_response() :: #{binary() => any()}.


%% Example:
%% create_profiling_group_request() :: #{
%%   <<"agentOrchestrationConfig">> => agent_orchestration_config(),
%%   <<"clientToken">> => string(),
%%   <<"computePlatform">> => string(),
%%   <<"profilingGroupName">> => string(),
%%   <<"tags">> => map()
%% }
-type create_profiling_group_request() :: #{binary() => any()}.


%% Example:
%% agent_configuration() :: #{
%%   <<"agentParameters">> => map(),
%%   <<"periodInSeconds">> => [integer()],
%%   <<"shouldProfile">> => [boolean()]
%% }
-type agent_configuration() :: #{binary() => any()}.


%% Example:
%% list_profiling_groups_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"profilingGroupNames">> => list(string()),
%%   <<"profilingGroups">> => list(profiling_group_description())
%% }
-type list_profiling_groups_response() :: #{binary() => any()}.


%% Example:
%% add_notification_channels_request() :: #{
%%   <<"channels">> => list(channel())
%% }
-type add_notification_channels_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% get_profile_request() :: #{
%%   <<"accept">> => [string()],
%%   <<"endTime">> => non_neg_integer(),
%%   <<"maxDepth">> => integer(),
%%   <<"period">> => string(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type get_profile_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_frame_metric_data_request() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"frameMetrics">> => list(frame_metric()),
%%   <<"period">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"targetResolution">> => string()
%% }
-type batch_get_frame_metric_data_request() :: #{binary() => any()}.


%% Example:
%% channel() :: #{
%%   <<"eventPublishers">> => list(string()),
%%   <<"id">> => string(),
%%   <<"uri">> => string()
%% }
-type channel() :: #{binary() => any()}.


%% Example:
%% batch_get_frame_metric_data_response() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"endTimes">> => list(timestamp_structure()),
%%   <<"frameMetricData">> => list(frame_metric_datum()),
%%   <<"resolution">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"unprocessedEndTimes">> => map()
%% }
-type batch_get_frame_metric_data_response() :: #{binary() => any()}.


%% Example:
%% match() :: #{
%%   <<"frameAddress">> => [string()],
%%   <<"targetFramesIndex">> => [integer()],
%%   <<"thresholdBreachValue">> => [float()]
%% }
-type match() :: #{binary() => any()}.


%% Example:
%% submit_feedback_request() :: #{
%%   <<"comment">> => [string()],
%%   <<"type">> => string()
%% }
-type submit_feedback_request() :: #{binary() => any()}.


%% Example:
%% frame_metric_datum() :: #{
%%   <<"frameMetric">> => frame_metric(),
%%   <<"values">> => list(float())
%% }
-type frame_metric_datum() :: #{binary() => any()}.


%% Example:
%% add_notification_channels_response() :: #{
%%   <<"notificationConfiguration">> => notification_configuration()
%% }
-type add_notification_channels_response() :: #{binary() => any()}.


%% Example:
%% configure_agent_response() :: #{
%%   <<"configuration">> => agent_configuration()
%% }
-type configure_agent_response() :: #{binary() => any()}.


%% Example:
%% findings_report_summary() :: #{
%%   <<"id">> => string(),
%%   <<"profileEndTime">> => non_neg_integer(),
%%   <<"profileStartTime">> => non_neg_integer(),
%%   <<"profilingGroupName">> => [string()],
%%   <<"totalNumberOfFindings">> => [integer()]
%% }
-type findings_report_summary() :: #{binary() => any()}.


%% Example:
%% remove_permission_response() :: #{
%%   <<"policy">> => [string()],
%%   <<"revisionId">> => string()
%% }
-type remove_permission_response() :: #{binary() => any()}.


%% Example:
%% user_feedback() :: #{
%%   <<"type">> => string()
%% }
-type user_feedback() :: #{binary() => any()}.

-type add_notification_channels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_get_frame_metric_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type configure_agent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_profiling_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_profiling_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_profiling_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_findings_report_account_summary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type get_notification_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_policy_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_findings_reports_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_profile_times_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_profiling_groups_errors() ::
    throttling_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type post_agent_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_permission_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type remove_notification_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type remove_permission_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type submit_feedback_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_profiling_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Add up to 2 anomaly notifications channels for a profiling group.
-spec add_notification_channels(aws_client:aws_client(), binary() | list(), add_notification_channels_request()) ->
    {ok, add_notification_channels_response(), tuple()} |
    {error, any()} |
    {error, add_notification_channels_errors(), tuple()}.
add_notification_channels(Client, ProfilingGroupName, Input) ->
    add_notification_channels(Client, ProfilingGroupName, Input, []).

-spec add_notification_channels(aws_client:aws_client(), binary() | list(), add_notification_channels_request(), proplists:proplist()) ->
    {ok, add_notification_channels_response(), tuple()} |
    {error, any()} |
    {error, add_notification_channels_errors(), tuple()}.
add_notification_channels(Client, ProfilingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/notificationConfiguration"],
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
%% Returns the time series of values for a requested list
%% of frame metrics from a time period.
-spec batch_get_frame_metric_data(aws_client:aws_client(), binary() | list(), batch_get_frame_metric_data_request()) ->
    {ok, batch_get_frame_metric_data_response(), tuple()} |
    {error, any()} |
    {error, batch_get_frame_metric_data_errors(), tuple()}.
batch_get_frame_metric_data(Client, ProfilingGroupName, Input) ->
    batch_get_frame_metric_data(Client, ProfilingGroupName, Input, []).

-spec batch_get_frame_metric_data(aws_client:aws_client(), binary() | list(), batch_get_frame_metric_data_request(), proplists:proplist()) ->
    {ok, batch_get_frame_metric_data_response(), tuple()} |
    {error, any()} |
    {error, batch_get_frame_metric_data_errors(), tuple()}.
batch_get_frame_metric_data(Client, ProfilingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/frames/-/metrics"],
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
                     {<<"endTime">>, <<"endTime">>},
                     {<<"period">>, <<"period">>},
                     {<<"startTime">>, <<"startTime">>},
                     {<<"targetResolution">>, <<"targetResolution">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Used by profiler agents to report their current state and to receive
%% remote
%% configuration updates.
%%
%% For example, `ConfigureAgent' can be used
%% to tell an agent whether to profile or not and for how long to return
%% profiling data.
-spec configure_agent(aws_client:aws_client(), binary() | list(), configure_agent_request()) ->
    {ok, configure_agent_response(), tuple()} |
    {error, any()} |
    {error, configure_agent_errors(), tuple()}.
configure_agent(Client, ProfilingGroupName, Input) ->
    configure_agent(Client, ProfilingGroupName, Input, []).

-spec configure_agent(aws_client:aws_client(), binary() | list(), configure_agent_request(), proplists:proplist()) ->
    {ok, configure_agent_response(), tuple()} |
    {error, any()} |
    {error, configure_agent_errors(), tuple()}.
configure_agent(Client, ProfilingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/configureAgent"],
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

%% @doc Creates a profiling group.
-spec create_profiling_group(aws_client:aws_client(), create_profiling_group_request()) ->
    {ok, create_profiling_group_response(), tuple()} |
    {error, any()} |
    {error, create_profiling_group_errors(), tuple()}.
create_profiling_group(Client, Input) ->
    create_profiling_group(Client, Input, []).

-spec create_profiling_group(aws_client:aws_client(), create_profiling_group_request(), proplists:proplist()) ->
    {ok, create_profiling_group_response(), tuple()} |
    {error, any()} |
    {error, create_profiling_group_errors(), tuple()}.
create_profiling_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/profilingGroups"],
    SuccessStatusCode = 201,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a profiling group.
-spec delete_profiling_group(aws_client:aws_client(), binary() | list(), delete_profiling_group_request()) ->
    {ok, delete_profiling_group_response(), tuple()} |
    {error, any()} |
    {error, delete_profiling_group_errors(), tuple()}.
delete_profiling_group(Client, ProfilingGroupName, Input) ->
    delete_profiling_group(Client, ProfilingGroupName, Input, []).

-spec delete_profiling_group(aws_client:aws_client(), binary() | list(), delete_profiling_group_request(), proplists:proplist()) ->
    {ok, delete_profiling_group_response(), tuple()} |
    {error, any()} |
    {error, delete_profiling_group_errors(), tuple()}.
delete_profiling_group(Client, ProfilingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), ""],
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

%% @doc
%% Returns a
%% `ProfilingGroupDescription'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
%% object that contains information about the requested profiling group.
-spec describe_profiling_group(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_profiling_group_response(), tuple()} |
    {error, any()} |
    {error, describe_profiling_group_errors(), tuple()}.
describe_profiling_group(Client, ProfilingGroupName)
  when is_map(Client) ->
    describe_profiling_group(Client, ProfilingGroupName, #{}, #{}).

-spec describe_profiling_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_profiling_group_response(), tuple()} |
    {error, any()} |
    {error, describe_profiling_group_errors(), tuple()}.
describe_profiling_group(Client, ProfilingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_profiling_group(Client, ProfilingGroupName, QueryMap, HeadersMap, []).

-spec describe_profiling_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_profiling_group_response(), tuple()} |
    {error, any()} |
    {error, describe_profiling_group_errors(), tuple()}.
describe_profiling_group(Client, ProfilingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns a list of
%%
%% `FindingsReportSummary'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html
%% objects that contain analysis results for all profiling groups in your AWS
%% account.
-spec get_findings_report_account_summary(aws_client:aws_client()) ->
    {ok, get_findings_report_account_summary_response(), tuple()} |
    {error, any()} |
    {error, get_findings_report_account_summary_errors(), tuple()}.
get_findings_report_account_summary(Client)
  when is_map(Client) ->
    get_findings_report_account_summary(Client, #{}, #{}).

-spec get_findings_report_account_summary(aws_client:aws_client(), map(), map()) ->
    {ok, get_findings_report_account_summary_response(), tuple()} |
    {error, any()} |
    {error, get_findings_report_account_summary_errors(), tuple()}.
get_findings_report_account_summary(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_findings_report_account_summary(Client, QueryMap, HeadersMap, []).

-spec get_findings_report_account_summary(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_findings_report_account_summary_response(), tuple()} |
    {error, any()} |
    {error, get_findings_report_account_summary_errors(), tuple()}.
get_findings_report_account_summary(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/internal/findingsReports"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dailyReportsOnly">>, maps:get(<<"dailyReportsOnly">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the current configuration for anomaly notifications for a
%% profiling group.
-spec get_notification_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_notification_configuration_errors(), tuple()}.
get_notification_configuration(Client, ProfilingGroupName)
  when is_map(Client) ->
    get_notification_configuration(Client, ProfilingGroupName, #{}, #{}).

-spec get_notification_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_notification_configuration_errors(), tuple()}.
get_notification_configuration(Client, ProfilingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_notification_configuration(Client, ProfilingGroupName, QueryMap, HeadersMap, []).

-spec get_notification_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_notification_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_notification_configuration_errors(), tuple()}.
get_notification_configuration(Client, ProfilingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/notificationConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns the JSON-formatted resource-based policy on a profiling group.
-spec get_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, ProfilingGroupName)
  when is_map(Client) ->
    get_policy(Client, ProfilingGroupName, #{}, #{}).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, ProfilingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, ProfilingGroupName, QueryMap, HeadersMap, []).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, ProfilingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Gets the aggregated profile of a profiling group for a specified time
%% range.
%%
%% Amazon CodeGuru Profiler collects posted agent profiles for a profiling
%% group
%% into aggregated profiles.
%%
%% Because aggregated profiles expire over time `GetProfile' is not
%% idempotent.
%%
%% Specify the time range for the requested aggregated profile using 1 or 2
%% of the following parameters: `startTime',
%% `endTime', `period'. The maximum time range allowed is 7 days. If
%% you specify all 3 parameters,
%% an exception is thrown. If you specify only `period', the latest
%% aggregated profile is returned.
%%
%% Aggregated profiles are available with aggregation periods of 5 minutes, 1
%% hour, and 1 day, aligned to
%% UTC. The aggregation period of an aggregated profile determines how long
%% it is retained. For more
%% information, see
%% `AggregatedProfileTime'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html.
%% The aggregated profile's aggregation period determines how long
%% it is retained by CodeGuru Profiler.
%%
%% If the aggregation period is 5 minutes, the aggregated profile is retained
%% for 15 days.
%%
%% If the aggregation period is 1 hour, the aggregated profile is retained
%% for 60 days.
%%
%% If the aggregation period is 1 day, the aggregated profile is retained for
%% 3 years.
%%
%% There are two use cases for calling `GetProfile'.
%%
%% If you want to return an aggregated profile that already exists, use
%%
%% `ListProfileTimes'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html
%% to
%% view the time ranges of existing aggregated profiles. Use them in a
%% `GetProfile' request to return a specific,
%% existing aggregated profile.
%%
%% If you want to return an aggregated profile for a time range that
%% doesn't align with an existing aggregated profile,
%% then CodeGuru Profiler makes a best effort to combine existing aggregated
%% profiles from the requested time
%% range and return them as one aggregated profile.
%%
%% If aggregated profiles do not exist for the full time range requested,
%% then
%% aggregated profiles for a smaller time range are returned. For example, if
%% the
%% requested time range is from 00:00 to 00:20, and the existing aggregated
%% profiles are
%% from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are
%% returned.
-spec get_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_profile_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfilingGroupName)
  when is_map(Client) ->
    get_profile(Client, ProfilingGroupName, #{}, #{}).

-spec get_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_profile_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfilingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile(Client, ProfilingGroupName, QueryMap, HeadersMap, []).

-spec get_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_profile_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfilingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/profile"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Accept">>, maps:get(<<"Accept">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"maxDepth">>, maps:get(<<"maxDepth">>, QueryMap, undefined)},
        {<<"period">>, maps:get(<<"period">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Encoding">>, <<"contentEncoding">>},
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc
%% Returns a list of
%%
%% `Recommendation'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html
%% objects that contain recommendations for a profiling group for a given
%% time period.
%%
%% A list of
%%
%% `Anomaly'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html
%% objects that contains details about anomalies detected in the profiling
%% group for the same time period is also
%% returned.
-spec get_recommendations(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_recommendations_errors(), tuple()}.
get_recommendations(Client, ProfilingGroupName, EndTime, StartTime)
  when is_map(Client) ->
    get_recommendations(Client, ProfilingGroupName, EndTime, StartTime, #{}, #{}).

-spec get_recommendations(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_recommendations_errors(), tuple()}.
get_recommendations(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommendations(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap, []).

-spec get_recommendations(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_recommendations_errors(), tuple()}.
get_recommendations(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/internal/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/recommendations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, EndTime},
        {<<"locale">>, maps:get(<<"locale">>, QueryMap, undefined)},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the available reports for a given profiling group and time
%% range.
-spec list_findings_reports(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_findings_reports_response(), tuple()} |
    {error, any()} |
    {error, list_findings_reports_errors(), tuple()}.
list_findings_reports(Client, ProfilingGroupName, EndTime, StartTime)
  when is_map(Client) ->
    list_findings_reports(Client, ProfilingGroupName, EndTime, StartTime, #{}, #{}).

-spec list_findings_reports(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_findings_reports_response(), tuple()} |
    {error, any()} |
    {error, list_findings_reports_errors(), tuple()}.
list_findings_reports(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_findings_reports(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap, []).

-spec list_findings_reports(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_findings_reports_response(), tuple()} |
    {error, any()} |
    {error, list_findings_reports_errors(), tuple()}.
list_findings_reports(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/internal/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/findingsReports"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dailyReportsOnly">>, maps:get(<<"dailyReportsOnly">>, QueryMap, undefined)},
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the start times of the available aggregated profiles of a
%% profiling group
%% for an aggregation period within the specified time range.
-spec list_profile_times(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_profile_times_response(), tuple()} |
    {error, any()} |
    {error, list_profile_times_errors(), tuple()}.
list_profile_times(Client, ProfilingGroupName, EndTime, Period, StartTime)
  when is_map(Client) ->
    list_profile_times(Client, ProfilingGroupName, EndTime, Period, StartTime, #{}, #{}).

-spec list_profile_times(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_profile_times_response(), tuple()} |
    {error, any()} |
    {error, list_profile_times_errors(), tuple()}.
list_profile_times(Client, ProfilingGroupName, EndTime, Period, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_times(Client, ProfilingGroupName, EndTime, Period, StartTime, QueryMap, HeadersMap, []).

-spec list_profile_times(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_profile_times_response(), tuple()} |
    {error, any()} |
    {error, list_profile_times_errors(), tuple()}.
list_profile_times(Client, ProfilingGroupName, EndTime, Period, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/profileTimes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"orderBy">>, maps:get(<<"orderBy">>, QueryMap, undefined)},
        {<<"period">>, Period},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns a list of profiling groups.
%%
%% The profiling groups are returned as
%%
%% `ProfilingGroupDescription'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
%% objects.
-spec list_profiling_groups(aws_client:aws_client()) ->
    {ok, list_profiling_groups_response(), tuple()} |
    {error, any()} |
    {error, list_profiling_groups_errors(), tuple()}.
list_profiling_groups(Client)
  when is_map(Client) ->
    list_profiling_groups(Client, #{}, #{}).

-spec list_profiling_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_profiling_groups_response(), tuple()} |
    {error, any()} |
    {error, list_profiling_groups_errors(), tuple()}.
list_profiling_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profiling_groups(Client, QueryMap, HeadersMap, []).

-spec list_profiling_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_profiling_groups_response(), tuple()} |
    {error, any()} |
    {error, list_profiling_groups_errors(), tuple()}.
list_profiling_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeDescription">>, maps:get(<<"includeDescription">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns a list of the tags that are assigned to a specified resource.
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

%% @doc
%% Submits profiling data to an aggregated profile of a profiling group.
%%
%% To get an
%% aggregated profile that is created with this profiling data, use
%%
%% `GetProfile'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html.
-spec post_agent_profile(aws_client:aws_client(), binary() | list(), post_agent_profile_request()) ->
    {ok, post_agent_profile_response(), tuple()} |
    {error, any()} |
    {error, post_agent_profile_errors(), tuple()}.
post_agent_profile(Client, ProfilingGroupName, Input) ->
    post_agent_profile(Client, ProfilingGroupName, Input, []).

-spec post_agent_profile(aws_client:aws_client(), binary() | list(), post_agent_profile_request(), proplists:proplist()) ->
    {ok, post_agent_profile_response(), tuple()} |
    {error, any()} |
    {error, post_agent_profile_errors(), tuple()}.
post_agent_profile(Client, ProfilingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/agentProfile"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"profileToken">>, <<"profileToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Adds permissions to a profiling group's resource-based policy
%% that are provided using an action group.
%%
%% If a profiling group doesn't have
%% a resource-based policy, one is created for it using the permissions in
%% the action group and
%% the roles and users in the `principals' parameter.
%%
%% The one supported action group that can be added is `agentPermission'
%% which grants `ConfigureAgent' and `PostAgent' permissions. For
%% more information, see Resource-based
%% policies in CodeGuru Profiler:
%% https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html
%% in the Amazon CodeGuru Profiler User
%% Guide,
%% `ConfigureAgent'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html,
%% and
%% `PostAgentProfile'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html.
%%
%% The first time you call `PutPermission' on a profiling group, do not
%% specify a `revisionId' because
%% it doesn't have a resource-based policy. Subsequent calls must provide
%% a `revisionId' to specify
%% which revision of the resource-based policy to add the permissions to.
%%
%% The response contains the profiling group's JSON-formatted resource
%% policy.
-spec put_permission(aws_client:aws_client(), binary() | list(), binary() | list(), put_permission_request()) ->
    {ok, put_permission_response(), tuple()} |
    {error, any()} |
    {error, put_permission_errors(), tuple()}.
put_permission(Client, ActionGroup, ProfilingGroupName, Input) ->
    put_permission(Client, ActionGroup, ProfilingGroupName, Input, []).

-spec put_permission(aws_client:aws_client(), binary() | list(), binary() | list(), put_permission_request(), proplists:proplist()) ->
    {ok, put_permission_response(), tuple()} |
    {error, any()} |
    {error, put_permission_errors(), tuple()}.
put_permission(Client, ActionGroup, ProfilingGroupName, Input0, Options0) ->
    Method = put,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/policy/", aws_util:encode_uri(ActionGroup), ""],
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

%% @doc Remove one anomaly notifications channel for a profiling group.
-spec remove_notification_channel(aws_client:aws_client(), binary() | list(), binary() | list(), remove_notification_channel_request()) ->
    {ok, remove_notification_channel_response(), tuple()} |
    {error, any()} |
    {error, remove_notification_channel_errors(), tuple()}.
remove_notification_channel(Client, ChannelId, ProfilingGroupName, Input) ->
    remove_notification_channel(Client, ChannelId, ProfilingGroupName, Input, []).

-spec remove_notification_channel(aws_client:aws_client(), binary() | list(), binary() | list(), remove_notification_channel_request(), proplists:proplist()) ->
    {ok, remove_notification_channel_response(), tuple()} |
    {error, any()} |
    {error, remove_notification_channel_errors(), tuple()}.
remove_notification_channel(Client, ChannelId, ProfilingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/notificationConfiguration/", aws_util:encode_uri(ChannelId), ""],
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

%% @doc Removes permissions from a profiling group's resource-based
%% policy that are provided
%% using an action group.
%%
%% The one supported action group that can be removed is
%% `agentPermission' which grants `ConfigureAgent' and
%% `PostAgent' permissions. For more information, see Resource-based
%% policies in CodeGuru Profiler:
%% https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html
%% in the Amazon
%% CodeGuru Profiler User Guide,
%% `ConfigureAgent'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html,
%% and
%% `PostAgentProfile'
%% :
%% https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html.
-spec remove_permission(aws_client:aws_client(), binary() | list(), binary() | list(), remove_permission_request()) ->
    {ok, remove_permission_response(), tuple()} |
    {error, any()} |
    {error, remove_permission_errors(), tuple()}.
remove_permission(Client, ActionGroup, ProfilingGroupName, Input) ->
    remove_permission(Client, ActionGroup, ProfilingGroupName, Input, []).

-spec remove_permission(aws_client:aws_client(), binary() | list(), binary() | list(), remove_permission_request(), proplists:proplist()) ->
    {ok, remove_permission_response(), tuple()} |
    {error, any()} |
    {error, remove_permission_errors(), tuple()}.
remove_permission(Client, ActionGroup, ProfilingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/policy/", aws_util:encode_uri(ActionGroup), ""],
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
                     {<<"revisionId">>, <<"revisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends feedback to CodeGuru Profiler about whether the anomaly
%% detected by the analysis is
%% useful or not.
-spec submit_feedback(aws_client:aws_client(), binary() | list(), binary() | list(), submit_feedback_request()) ->
    {ok, submit_feedback_response(), tuple()} |
    {error, any()} |
    {error, submit_feedback_errors(), tuple()}.
submit_feedback(Client, AnomalyInstanceId, ProfilingGroupName, Input) ->
    submit_feedback(Client, AnomalyInstanceId, ProfilingGroupName, Input, []).

-spec submit_feedback(aws_client:aws_client(), binary() | list(), binary() | list(), submit_feedback_request(), proplists:proplist()) ->
    {ok, submit_feedback_response(), tuple()} |
    {error, any()} |
    {error, submit_feedback_errors(), tuple()}.
submit_feedback(Client, AnomalyInstanceId, ProfilingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/internal/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/anomalies/", aws_util:encode_uri(AnomalyInstanceId), "/feedback"],
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

%% @doc
%% Use to assign one or more tags to a resource.
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

%% @doc
%% Use to remove one or more tags from a resource.
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a profiling group.
-spec update_profiling_group(aws_client:aws_client(), binary() | list(), update_profiling_group_request()) ->
    {ok, update_profiling_group_response(), tuple()} |
    {error, any()} |
    {error, update_profiling_group_errors(), tuple()}.
update_profiling_group(Client, ProfilingGroupName, Input) ->
    update_profiling_group(Client, ProfilingGroupName, Input, []).

-spec update_profiling_group(aws_client:aws_client(), binary() | list(), update_profiling_group_request(), proplists:proplist()) ->
    {ok, update_profiling_group_response(), tuple()} |
    {error, any()} |
    {error, update_profiling_group_errors(), tuple()}.
update_profiling_group(Client, ProfilingGroupName, Input0, Options0) ->
    Method = put,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), ""],
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
    Client1 = Client#{service => <<"codeguru-profiler">>},
    Host = build_host(<<"codeguru-profiler">>, Client1),
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
