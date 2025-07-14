%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With Amazon CloudWatch RUM, you can perform real-user monitoring to
%% collect client-side data about
%% your web application performance from actual user sessions in real time.
%%
%% The data collected includes page load
%% times, client-side errors, and user behavior. When you view this data, you
%% can see it all aggregated together and
%% also see breakdowns by the browsers and devices that your customers use.
%%
%% You can use the collected data to quickly identify and debug client-side
%% performance issues. CloudWatch
%% RUM helps you visualize anomalies in your application performance and find
%% relevant debugging data such as error
%% messages, stack traces, and user sessions. You can also use RUM to
%% understand the range of end-user impact including the number of users,
%% geolocations, and browsers used.
-module(aws_rum).

-export([batch_create_rum_metric_definitions/3,
         batch_create_rum_metric_definitions/4,
         batch_delete_rum_metric_definitions/3,
         batch_delete_rum_metric_definitions/4,
         batch_get_rum_metric_definitions/3,
         batch_get_rum_metric_definitions/5,
         batch_get_rum_metric_definitions/6,
         create_app_monitor/2,
         create_app_monitor/3,
         delete_app_monitor/3,
         delete_app_monitor/4,
         delete_resource_policy/3,
         delete_resource_policy/4,
         delete_rum_metrics_destination/3,
         delete_rum_metrics_destination/4,
         get_app_monitor/2,
         get_app_monitor/4,
         get_app_monitor/5,
         get_app_monitor_data/3,
         get_app_monitor_data/4,
         get_resource_policy/2,
         get_resource_policy/4,
         get_resource_policy/5,
         list_app_monitors/2,
         list_app_monitors/3,
         list_rum_metrics_destinations/2,
         list_rum_metrics_destinations/4,
         list_rum_metrics_destinations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_resource_policy/3,
         put_resource_policy/4,
         put_rum_events/3,
         put_rum_events/4,
         put_rum_metrics_destination/3,
         put_rum_metrics_destination/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_app_monitor/3,
         update_app_monitor/4,
         update_rum_metric_definition/3,
         update_rum_metric_definition/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% put_rum_metrics_destination_response() :: #{}
-type put_rum_metrics_destination_response() :: #{}.


%% Example:
%% data_storage() :: #{
%%   <<"CwLog">> => cw_log()
%% }
-type data_storage() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% query_filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string())
%% }
-type query_filter() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_response() :: #{
%%   <<"PolicyRevisionId">> => string()
%% }
-type delete_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% put_rum_events_request() :: #{
%%   <<"Alias">> => string(),
%%   <<"AppMonitorDetails">> := app_monitor_details(),
%%   <<"BatchId">> := [string()],
%%   <<"RumEvents">> := list(rum_event()),
%%   <<"UserDetails">> := user_details()
%% }
-type put_rum_events_request() :: #{binary() => any()}.


%% Example:
%% app_monitor_summary() :: #{
%%   <<"Created">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => string()
%% }
-type app_monitor_summary() :: #{binary() => any()}.


%% Example:
%% get_app_monitor_response() :: #{
%%   <<"AppMonitor">> => app_monitor()
%% }
-type get_app_monitor_response() :: #{binary() => any()}.


%% Example:
%% app_monitor_details() :: #{
%%   <<"id">> => [string()],
%%   <<"name">> => [string()],
%%   <<"version">> => [string()]
%% }
-type app_monitor_details() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% metric_destination_summary() :: #{
%%   <<"Destination">> => string(),
%%   <<"DestinationArn">> => string(),
%%   <<"IamRoleArn">> => string()
%% }
-type metric_destination_summary() :: #{binary() => any()}.


%% Example:
%% cw_log() :: #{
%%   <<"CwLogEnabled">> => [boolean()],
%%   <<"CwLogGroup">> => [string()]
%% }
-type cw_log() :: #{binary() => any()}.


%% Example:
%% batch_delete_rum_metric_definitions_request() :: #{
%%   <<"Destination">> := string(),
%%   <<"DestinationArn">> => string(),
%%   <<"MetricDefinitionIds">> := list(string())
%% }
-type batch_delete_rum_metric_definitions_request() :: #{binary() => any()}.


%% Example:
%% app_monitor_configuration() :: #{
%%   <<"AllowCookies">> => [boolean()],
%%   <<"EnableXRay">> => [boolean()],
%%   <<"ExcludedPages">> => list(string()),
%%   <<"FavoritePages">> => list([string()]()),
%%   <<"GuestRoleArn">> => string(),
%%   <<"IdentityPoolId">> => string(),
%%   <<"IncludedPages">> => list(string()),
%%   <<"SessionSampleRate">> => float(),
%%   <<"Telemetries">> => list(string())
%% }
-type app_monitor_configuration() :: #{binary() => any()}.


%% Example:
%% user_details() :: #{
%%   <<"sessionId">> => [string()],
%%   <<"userId">> => [string()]
%% }
-type user_details() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_response() :: #{
%%   <<"PolicyDocument">> => [string()],
%%   <<"PolicyRevisionId">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% update_app_monitor_request() :: #{
%%   <<"AppMonitorConfiguration">> => app_monitor_configuration(),
%%   <<"CustomEvents">> => custom_events(),
%%   <<"CwLogEnabled">> => [boolean()],
%%   <<"DeobfuscationConfiguration">> => deobfuscation_configuration(),
%%   <<"Domain">> => string(),
%%   <<"DomainList">> => list(string())
%% }
-type update_app_monitor_request() :: #{binary() => any()}.


%% Example:
%% get_app_monitor_data_request() :: #{
%%   <<"Filters">> => list(query_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TimeRange">> := time_range()
%% }
-type get_app_monitor_data_request() :: #{binary() => any()}.


%% Example:
%% metric_definition() :: #{
%%   <<"DimensionKeys">> => map(),
%%   <<"EventPattern">> => string(),
%%   <<"MetricDefinitionId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"UnitLabel">> => string(),
%%   <<"ValueKey">> => string()
%% }
-type metric_definition() :: #{binary() => any()}.


%% Example:
%% policy_size_limit_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type policy_size_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_app_monitors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_app_monitors_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% rum_event() :: #{
%%   <<"details">> => string(),
%%   <<"id">> => [string()],
%%   <<"metadata">> => string(),
%%   <<"timestamp">> => [non_neg_integer()],
%%   <<"type">> => [string()]
%% }
-type rum_event() :: #{binary() => any()}.

%% Example:
%% get_app_monitor_request() :: #{}
-type get_app_monitor_request() :: #{}.


%% Example:
%% create_app_monitor_response() :: #{
%%   <<"Id">> => string()
%% }
-type create_app_monitor_response() :: #{binary() => any()}.


%% Example:
%% java_script_source_maps() :: #{
%%   <<"S3Uri">> => string(),
%%   <<"Status">> => string()
%% }
-type java_script_source_maps() :: #{binary() => any()}.


%% Example:
%% app_monitor() :: #{
%%   <<"AppMonitorConfiguration">> => app_monitor_configuration(),
%%   <<"Created">> => string(),
%%   <<"CustomEvents">> => custom_events(),
%%   <<"DataStorage">> => data_storage(),
%%   <<"DeobfuscationConfiguration">> => deobfuscation_configuration(),
%%   <<"Domain">> => string(),
%%   <<"DomainList">> => list(string()),
%%   <<"Id">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => string(),
%%   <<"Tags">> => map()
%% }
-type app_monitor() :: #{binary() => any()}.

%% Example:
%% delete_app_monitor_response() :: #{}
-type delete_app_monitor_response() :: #{}.


%% Example:
%% create_app_monitor_request() :: #{
%%   <<"AppMonitorConfiguration">> => app_monitor_configuration(),
%%   <<"CustomEvents">> => custom_events(),
%%   <<"CwLogEnabled">> => [boolean()],
%%   <<"DeobfuscationConfiguration">> => deobfuscation_configuration(),
%%   <<"Domain">> => string(),
%%   <<"DomainList">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_app_monitor_request() :: #{binary() => any()}.


%% Example:
%% delete_rum_metrics_destination_request() :: #{
%%   <<"Destination">> := string(),
%%   <<"DestinationArn">> => string()
%% }
-type delete_rum_metrics_destination_request() :: #{binary() => any()}.


%% Example:
%% policy_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type policy_not_found_exception() :: #{binary() => any()}.


%% Example:
%% batch_create_rum_metric_definitions_error() :: #{
%%   <<"ErrorCode">> => [string()],
%%   <<"ErrorMessage">> => [string()],
%%   <<"MetricDefinition">> => metric_definition_request()
%% }
-type batch_create_rum_metric_definitions_error() :: #{binary() => any()}.


%% Example:
%% batch_create_rum_metric_definitions_request() :: #{
%%   <<"Destination">> := string(),
%%   <<"DestinationArn">> => string(),
%%   <<"MetricDefinitions">> := list(metric_definition_request())
%% }
-type batch_create_rum_metric_definitions_request() :: #{binary() => any()}.


%% Example:
%% invalid_policy_revision_id_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_policy_revision_id_exception() :: #{binary() => any()}.


%% Example:
%% update_rum_metric_definition_request() :: #{
%%   <<"Destination">> := string(),
%%   <<"DestinationArn">> => string(),
%%   <<"MetricDefinition">> := metric_definition_request(),
%%   <<"MetricDefinitionId">> := string()
%% }
-type update_rum_metric_definition_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceName">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceName">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% batch_delete_rum_metric_definitions_response() :: #{
%%   <<"Errors">> := list(batch_delete_rum_metric_definitions_error()),
%%   <<"MetricDefinitionIds">> => list(string())
%% }
-type batch_delete_rum_metric_definitions_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% deobfuscation_configuration() :: #{
%%   <<"JavaScriptSourceMaps">> => java_script_source_maps()
%% }
-type deobfuscation_configuration() :: #{binary() => any()}.


%% Example:
%% batch_delete_rum_metric_definitions_error() :: #{
%%   <<"ErrorCode">> => [string()],
%%   <<"ErrorMessage">> => [string()],
%%   <<"MetricDefinitionId">> => string()
%% }
-type batch_delete_rum_metric_definitions_error() :: #{binary() => any()}.


%% Example:
%% get_app_monitor_data_response() :: #{
%%   <<"Events">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type get_app_monitor_data_response() :: #{binary() => any()}.

%% Example:
%% put_rum_events_response() :: #{}
-type put_rum_events_response() :: #{}.


%% Example:
%% put_rum_metrics_destination_request() :: #{
%%   <<"Destination">> := string(),
%%   <<"DestinationArn">> => string(),
%%   <<"IamRoleArn">> => string()
%% }
-type put_rum_metrics_destination_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_app_monitor_request() :: #{}
-type delete_app_monitor_request() :: #{}.


%% Example:
%% list_rum_metrics_destinations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_rum_metrics_destinations_request() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{}
-type get_resource_policy_request() :: #{}.

%% Example:
%% delete_rum_metrics_destination_response() :: #{}
-type delete_rum_metrics_destination_response() :: #{}.


%% Example:
%% batch_get_rum_metric_definitions_response() :: #{
%%   <<"MetricDefinitions">> => list(metric_definition()),
%%   <<"NextToken">> => [string()]
%% }
-type batch_get_rum_metric_definitions_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_rum_metric_definitions_request() :: #{
%%   <<"Destination">> := string(),
%%   <<"DestinationArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type batch_get_rum_metric_definitions_request() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_request() :: #{
%%   <<"PolicyDocument">> := [string()],
%%   <<"PolicyRevisionId">> => string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% time_range() :: #{
%%   <<"After">> => float(),
%%   <<"Before">> => float()
%% }
-type time_range() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% batch_create_rum_metric_definitions_response() :: #{
%%   <<"Errors">> := list(batch_create_rum_metric_definitions_error()),
%%   <<"MetricDefinitions">> => list(metric_definition())
%% }
-type batch_create_rum_metric_definitions_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.

%% Example:
%% update_app_monitor_response() :: #{}
-type update_app_monitor_response() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% malformed_policy_document_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type malformed_policy_document_exception() :: #{binary() => any()}.


%% Example:
%% metric_definition_request() :: #{
%%   <<"DimensionKeys">> => map(),
%%   <<"EventPattern">> => string(),
%%   <<"Name">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"UnitLabel">> => string(),
%%   <<"ValueKey">> => string()
%% }
-type metric_definition_request() :: #{binary() => any()}.

%% Example:
%% update_rum_metric_definition_response() :: #{}
-type update_rum_metric_definition_response() :: #{}.


%% Example:
%% put_resource_policy_response() :: #{
%%   <<"PolicyDocument">> => [string()],
%%   <<"PolicyRevisionId">> => string()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"PolicyRevisionId">> => string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% list_app_monitors_response() :: #{
%%   <<"AppMonitorSummaries">> => list(app_monitor_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_app_monitors_response() :: #{binary() => any()}.


%% Example:
%% list_rum_metrics_destinations_response() :: #{
%%   <<"Destinations">> => list(metric_destination_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_rum_metrics_destinations_response() :: #{binary() => any()}.


%% Example:
%% custom_events() :: #{
%%   <<"Status">> => string()
%% }
-type custom_events() :: #{binary() => any()}.

-type batch_create_rum_metric_definitions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_delete_rum_metric_definitions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_get_rum_metric_definitions_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_app_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_app_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_policy_revision_id_exception() | 
    policy_not_found_exception().

-type delete_rum_metrics_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_app_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_app_monitor_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    policy_not_found_exception().

-type list_app_monitors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_rum_metrics_destinations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_resource_policy_errors() ::
    malformed_policy_document_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_policy_revision_id_exception() | 
    policy_size_limit_exceeded_exception().

-type put_rum_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_rum_metrics_destination_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_app_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_rum_metric_definition_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Specifies the extended metrics and custom metrics that you want a
%% CloudWatch RUM app monitor to send to a destination.
%%
%% Valid
%% destinations include CloudWatch and Evidently.
%%
%% By default, RUM app monitors send some metrics to CloudWatch. These
%% default metrics
%% are listed in CloudWatch metrics that you can collect
%% with CloudWatch RUM:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-metrics.html.
%%
%% In addition to these default metrics, you can choose to send extended
%% metrics, custom
%% metrics, or both.
%%
%% Extended metrics let you send metrics with additional dimensions that
%% aren't included in the
%% default metrics. You can also send extended metrics to both Evidently and
%% CloudWatch. The valid dimension names for the additional dimensions for
%% extended
%% metrics are `BrowserName', `CountryCode',
%% `DeviceType', `FileType', `OSName', and
%% `PageId'. For more information, see
%% Extended metrics that you can send to CloudWatch and CloudWatch
%% Evidently:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-vended-metrics.html.
%%
%% Custom metrics are metrics that you define. You can send custom metrics to
%% CloudWatch.
%% CloudWatch Evidently, or both. With custom metrics, you can use any metric
%% name and namespace. To derive the metrics, you can use any custom events,
%% built-in
%% events, custom attributes, or default attributes.
%%
%% You can't send custom metrics to the `AWS/RUM' namespace. You must
%% send custom metrics to a
%% custom namespace that you define. The namespace that you use can't
%% start with `AWS/'.
%% CloudWatch RUM prepends `RUM/CustomMetrics/' to the custom namespace
%% that you define,
%% so the final namespace for your metrics in CloudWatch is
%%
%% ```
%% RUM/CustomMetrics/your-custom-namespace '''.
%%
%% The maximum number of metric definitions that you can specify in one
%% `BatchCreateRumMetricDefinitions' operation is 200.
%%
%% The maximum number of metric definitions that one destination can contain
%% is 2000.
%%
%% Extended metrics sent to CloudWatch and RUM custom metrics are charged as
%% CloudWatch custom metrics. Each combination of additional dimension name
%% and dimension
%% value counts as a custom metric. For more information, see
%% Amazon CloudWatch Pricing: https://aws.amazon.com/cloudwatch/pricing/.
%%
%% You must have
%% already created a destination for the metrics before you send them. For
%% more information, see
%% PutRumMetricsDestination:
%% https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html.
%%
%% If some metric definitions specified in a
%% `BatchCreateRumMetricDefinitions' operations are not valid,
%% those metric definitions fail and return errors, but all valid metric
%% definitions in the same operation still succeed.
-spec batch_create_rum_metric_definitions(aws_client:aws_client(), binary() | list(), batch_create_rum_metric_definitions_request()) ->
    {ok, batch_create_rum_metric_definitions_response(), tuple()} |
    {error, any()} |
    {error, batch_create_rum_metric_definitions_errors(), tuple()}.
batch_create_rum_metric_definitions(Client, AppMonitorName, Input) ->
    batch_create_rum_metric_definitions(Client, AppMonitorName, Input, []).

-spec batch_create_rum_metric_definitions(aws_client:aws_client(), binary() | list(), batch_create_rum_metric_definitions_request(), proplists:proplist()) ->
    {ok, batch_create_rum_metric_definitions_response(), tuple()} |
    {error, any()} |
    {error, batch_create_rum_metric_definitions_errors(), tuple()}.
batch_create_rum_metric_definitions(Client, AppMonitorName, Input0, Options0) ->
    Method = post,
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metrics"],
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

%% @doc Removes the specified metrics from being sent to an extended metrics
%% destination.
%%
%% If some metric definition IDs specified in a
%% `BatchDeleteRumMetricDefinitions' operations are not valid,
%% those metric definitions fail and return errors, but all valid metric
%% definition IDs in the same operation are still
%% deleted.
%%
%% The maximum number of metric definitions that you can specify in one
%% `BatchDeleteRumMetricDefinitions' operation is 200.
-spec batch_delete_rum_metric_definitions(aws_client:aws_client(), binary() | list(), batch_delete_rum_metric_definitions_request()) ->
    {ok, batch_delete_rum_metric_definitions_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_rum_metric_definitions_errors(), tuple()}.
batch_delete_rum_metric_definitions(Client, AppMonitorName, Input) ->
    batch_delete_rum_metric_definitions(Client, AppMonitorName, Input, []).

-spec batch_delete_rum_metric_definitions(aws_client:aws_client(), binary() | list(), batch_delete_rum_metric_definitions_request(), proplists:proplist()) ->
    {ok, batch_delete_rum_metric_definitions_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_rum_metric_definitions_errors(), tuple()}.
batch_delete_rum_metric_definitions(Client, AppMonitorName, Input0, Options0) ->
    Method = delete,
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metrics"],
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
                     {<<"destination">>, <<"Destination">>},
                     {<<"destinationArn">>, <<"DestinationArn">>},
                     {<<"metricDefinitionIds">>, <<"MetricDefinitionIds">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the list of metrics and dimensions that a RUM app monitor
%% is sending to a single destination.
-spec batch_get_rum_metric_definitions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, batch_get_rum_metric_definitions_response(), tuple()} |
    {error, any()} |
    {error, batch_get_rum_metric_definitions_errors(), tuple()}.
batch_get_rum_metric_definitions(Client, AppMonitorName, Destination)
  when is_map(Client) ->
    batch_get_rum_metric_definitions(Client, AppMonitorName, Destination, #{}, #{}).

-spec batch_get_rum_metric_definitions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, batch_get_rum_metric_definitions_response(), tuple()} |
    {error, any()} |
    {error, batch_get_rum_metric_definitions_errors(), tuple()}.
batch_get_rum_metric_definitions(Client, AppMonitorName, Destination, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    batch_get_rum_metric_definitions(Client, AppMonitorName, Destination, QueryMap, HeadersMap, []).

-spec batch_get_rum_metric_definitions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, batch_get_rum_metric_definitions_response(), tuple()} |
    {error, any()} |
    {error, batch_get_rum_metric_definitions_errors(), tuple()}.
batch_get_rum_metric_definitions(Client, AppMonitorName, Destination, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metrics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"destination">>, Destination},
        {<<"destinationArn">>, maps:get(<<"destinationArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a Amazon CloudWatch RUM app monitor, which collects telemetry
%% data from your application and sends that
%% data to RUM.
%%
%% The data includes performance and reliability information such as page
%% load time, client-side errors,
%% and user behavior.
%%
%% You use this operation only to create a new app monitor. To update an
%% existing app monitor, use UpdateAppMonitor:
%% https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html
%% instead.
%%
%% After you create an app monitor, sign in to the CloudWatch RUM console to
%% get
%% the JavaScript code snippet to add to your web application. For more
%% information, see
%% How do I find a code snippet
%% that I've already generated?:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html
-spec create_app_monitor(aws_client:aws_client(), create_app_monitor_request()) ->
    {ok, create_app_monitor_response(), tuple()} |
    {error, any()} |
    {error, create_app_monitor_errors(), tuple()}.
create_app_monitor(Client, Input) ->
    create_app_monitor(Client, Input, []).

-spec create_app_monitor(aws_client:aws_client(), create_app_monitor_request(), proplists:proplist()) ->
    {ok, create_app_monitor_response(), tuple()} |
    {error, any()} |
    {error, create_app_monitor_errors(), tuple()}.
create_app_monitor(Client, Input0, Options0) ->
    Method = post,
    Path = ["/appmonitor"],
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

%% @doc Deletes an existing app monitor.
%%
%% This immediately stops the collection of data.
-spec delete_app_monitor(aws_client:aws_client(), binary() | list(), delete_app_monitor_request()) ->
    {ok, delete_app_monitor_response(), tuple()} |
    {error, any()} |
    {error, delete_app_monitor_errors(), tuple()}.
delete_app_monitor(Client, Name, Input) ->
    delete_app_monitor(Client, Name, Input, []).

-spec delete_app_monitor(aws_client:aws_client(), binary() | list(), delete_app_monitor_request(), proplists:proplist()) ->
    {ok, delete_app_monitor_response(), tuple()} |
    {error, any()} |
    {error, delete_app_monitor_errors(), tuple()}.
delete_app_monitor(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/appmonitor/", aws_util:encode_uri(Name), ""],
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

%% @doc Removes the association of a resource-based policy from an app
%% monitor.
-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Name, Input) ->
    delete_resource_policy(Client, Name, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), binary() | list(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/appmonitor/", aws_util:encode_uri(Name), "/policy"],
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
                     {<<"policyRevisionId">>, <<"PolicyRevisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a destination for CloudWatch RUM extended metrics, so that
%% the specified app monitor stops
%% sending extended metrics to that destination.
-spec delete_rum_metrics_destination(aws_client:aws_client(), binary() | list(), delete_rum_metrics_destination_request()) ->
    {ok, delete_rum_metrics_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_rum_metrics_destination_errors(), tuple()}.
delete_rum_metrics_destination(Client, AppMonitorName, Input) ->
    delete_rum_metrics_destination(Client, AppMonitorName, Input, []).

-spec delete_rum_metrics_destination(aws_client:aws_client(), binary() | list(), delete_rum_metrics_destination_request(), proplists:proplist()) ->
    {ok, delete_rum_metrics_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_rum_metrics_destination_errors(), tuple()}.
delete_rum_metrics_destination(Client, AppMonitorName, Input0, Options0) ->
    Method = delete,
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metricsdestination"],
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
                     {<<"destination">>, <<"Destination">>},
                     {<<"destinationArn">>, <<"DestinationArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the complete configuration information for one app monitor.
-spec get_app_monitor(aws_client:aws_client(), binary() | list()) ->
    {ok, get_app_monitor_response(), tuple()} |
    {error, any()} |
    {error, get_app_monitor_errors(), tuple()}.
get_app_monitor(Client, Name)
  when is_map(Client) ->
    get_app_monitor(Client, Name, #{}, #{}).

-spec get_app_monitor(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_app_monitor_response(), tuple()} |
    {error, any()} |
    {error, get_app_monitor_errors(), tuple()}.
get_app_monitor(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app_monitor(Client, Name, QueryMap, HeadersMap, []).

-spec get_app_monitor(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_app_monitor_response(), tuple()} |
    {error, any()} |
    {error, get_app_monitor_errors(), tuple()}.
get_app_monitor(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appmonitor/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the raw performance events that RUM has collected from your
%% web application,
%% so that you can do your own processing or analysis of this data.
-spec get_app_monitor_data(aws_client:aws_client(), binary() | list(), get_app_monitor_data_request()) ->
    {ok, get_app_monitor_data_response(), tuple()} |
    {error, any()} |
    {error, get_app_monitor_data_errors(), tuple()}.
get_app_monitor_data(Client, Name, Input) ->
    get_app_monitor_data(Client, Name, Input, []).

-spec get_app_monitor_data(aws_client:aws_client(), binary() | list(), get_app_monitor_data_request(), proplists:proplist()) ->
    {ok, get_app_monitor_data_response(), tuple()} |
    {error, any()} |
    {error, get_app_monitor_data_errors(), tuple()}.
get_app_monitor_data(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/appmonitor/", aws_util:encode_uri(Name), "/data"],
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

%% @doc Use this operation to retrieve information about a resource-based
%% policy that is attached to an app monitor.
-spec get_resource_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Name)
  when is_map(Client) ->
    get_resource_policy(Client, Name, #{}, #{}).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, Name, QueryMap, HeadersMap, []).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/appmonitor/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the Amazon CloudWatch RUM app monitors in the
%% account.
-spec list_app_monitors(aws_client:aws_client(), list_app_monitors_request()) ->
    {ok, list_app_monitors_response(), tuple()} |
    {error, any()} |
    {error, list_app_monitors_errors(), tuple()}.
list_app_monitors(Client, Input) ->
    list_app_monitors(Client, Input, []).

-spec list_app_monitors(aws_client:aws_client(), list_app_monitors_request(), proplists:proplist()) ->
    {ok, list_app_monitors_response(), tuple()} |
    {error, any()} |
    {error, list_app_monitors_errors(), tuple()}.
list_app_monitors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/appmonitors"],
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
                     {<<"maxResults">>, <<"MaxResults">>},
                     {<<"nextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of destinations that you have created to receive RUM
%% extended metrics,
%% for the specified app monitor.
%%
%% For more information about extended metrics, see AddRumMetrics:
%% https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_AddRumMetrcs.html.
-spec list_rum_metrics_destinations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_rum_metrics_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_rum_metrics_destinations_errors(), tuple()}.
list_rum_metrics_destinations(Client, AppMonitorName)
  when is_map(Client) ->
    list_rum_metrics_destinations(Client, AppMonitorName, #{}, #{}).

-spec list_rum_metrics_destinations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_rum_metrics_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_rum_metrics_destinations_errors(), tuple()}.
list_rum_metrics_destinations(Client, AppMonitorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rum_metrics_destinations(Client, AppMonitorName, QueryMap, HeadersMap, []).

-spec list_rum_metrics_destinations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_rum_metrics_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_rum_metrics_destinations_errors(), tuple()}.
list_rum_metrics_destinations(Client, AppMonitorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metricsdestination"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the tags associated with a CloudWatch RUM resource.
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

%% @doc Use this operation to assign a resource-based policy to a CloudWatch
%% RUM app monitor to control access to it.
%%
%% Each app monitor can
%% have one resource-based policy. The maximum size of the policy is 4 KB. To
%% learn more about using resource policies with RUM, see Using
%% resource-based policies with CloudWatch RUM:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html.
-spec put_resource_policy(aws_client:aws_client(), binary() | list(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Name, Input) ->
    put_resource_policy(Client, Name, Input, []).

-spec put_resource_policy(aws_client:aws_client(), binary() | list(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/appmonitor/", aws_util:encode_uri(Name), "/policy"],
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

%% @doc Sends telemetry events about your application performance and user
%% behavior to CloudWatch RUM.
%%
%% The code
%% snippet that RUM generates for you to add to your application includes
%% `PutRumEvents' operations to
%% send this data to RUM.
%%
%% Each `PutRumEvents' operation can send a batch of events from one user
%% session.
-spec put_rum_events(aws_client:aws_client(), binary() | list(), put_rum_events_request()) ->
    {ok, put_rum_events_response(), tuple()} |
    {error, any()} |
    {error, put_rum_events_errors(), tuple()}.
put_rum_events(Client, Id, Input) ->
    put_rum_events(Client, Id, Input, []).

-spec put_rum_events(aws_client:aws_client(), binary() | list(), put_rum_events_request(), proplists:proplist()) ->
    {ok, put_rum_events_response(), tuple()} |
    {error, any()} |
    {error, put_rum_events_errors(), tuple()}.
put_rum_events(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/appmonitors/", aws_util:encode_uri(Id), "/"],
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

%% @doc Creates or updates a destination to receive extended metrics from
%% CloudWatch RUM.
%%
%% You can send
%% extended metrics to CloudWatch or to a CloudWatch Evidently experiment.
%%
%% For more information about extended metrics, see
%% BatchCreateRumMetricDefinitions:
%% https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricDefinitions.html.
-spec put_rum_metrics_destination(aws_client:aws_client(), binary() | list(), put_rum_metrics_destination_request()) ->
    {ok, put_rum_metrics_destination_response(), tuple()} |
    {error, any()} |
    {error, put_rum_metrics_destination_errors(), tuple()}.
put_rum_metrics_destination(Client, AppMonitorName, Input) ->
    put_rum_metrics_destination(Client, AppMonitorName, Input, []).

-spec put_rum_metrics_destination(aws_client:aws_client(), binary() | list(), put_rum_metrics_destination_request(), proplists:proplist()) ->
    {ok, put_rum_metrics_destination_response(), tuple()} |
    {error, any()} |
    {error, put_rum_metrics_destination_errors(), tuple()}.
put_rum_metrics_destination(Client, AppMonitorName, Input0, Options0) ->
    Method = post,
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metricsdestination"],
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
%% CloudWatch RUM resource.
%%
%% Currently,
%% the only resources that
%% can be tagged app monitors.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user
%% permissions by granting a user
%% permission to access or change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags.
%% If you specify a new tag key for the resource,
%% this tag is appended to the list of tags associated
%% with the alarm. If you specify a tag key that is already associated with
%% the resource, the new tag value that you specify replaces
%% the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource.
%%
%% For more information, see Tagging Amazon Web Services resources:
%% https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration of an existing app monitor.
%%
%% When you use this operation, only the parts of the app monitor
%% configuration that you specify in this operation are changed. For any
%% parameters that you omit, the existing
%% values are kept.
%%
%% You can't use this operation to change the tags of an existing app
%% monitor. To change the tags of an existing app monitor, use
%% TagResource:
%% https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_TagResource.html.
%%
%% To create a new app monitor, use CreateAppMonitor:
%% https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_CreateAppMonitor.html.
%%
%% After you update an app monitor, sign in to the CloudWatch RUM console to
%% get
%% the updated JavaScript code snippet to add to your web application. For
%% more information, see
%% How do I find a code snippet
%% that I've already generated?:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html
-spec update_app_monitor(aws_client:aws_client(), binary() | list(), update_app_monitor_request()) ->
    {ok, update_app_monitor_response(), tuple()} |
    {error, any()} |
    {error, update_app_monitor_errors(), tuple()}.
update_app_monitor(Client, Name, Input) ->
    update_app_monitor(Client, Name, Input, []).

-spec update_app_monitor(aws_client:aws_client(), binary() | list(), update_app_monitor_request(), proplists:proplist()) ->
    {ok, update_app_monitor_response(), tuple()} |
    {error, any()} |
    {error, update_app_monitor_errors(), tuple()}.
update_app_monitor(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/appmonitor/", aws_util:encode_uri(Name), ""],
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

%% @doc Modifies one existing metric definition for CloudWatch RUM extended
%% metrics.
%%
%% For
%% more information about extended metrics, see
%% BatchCreateRumMetricsDefinitions:
%% https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricsDefinitions.html.
-spec update_rum_metric_definition(aws_client:aws_client(), binary() | list(), update_rum_metric_definition_request()) ->
    {ok, update_rum_metric_definition_response(), tuple()} |
    {error, any()} |
    {error, update_rum_metric_definition_errors(), tuple()}.
update_rum_metric_definition(Client, AppMonitorName, Input) ->
    update_rum_metric_definition(Client, AppMonitorName, Input, []).

-spec update_rum_metric_definition(aws_client:aws_client(), binary() | list(), update_rum_metric_definition_request(), proplists:proplist()) ->
    {ok, update_rum_metric_definition_response(), tuple()} |
    {error, any()} |
    {error, update_rum_metric_definition_errors(), tuple()}.
update_rum_metric_definition(Client, AppMonitorName, Input0, Options0) ->
    Method = patch,
    Path = ["/rummetrics/", aws_util:encode_uri(AppMonitorName), "/metrics"],
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
    Client1 = Client#{service => <<"rum">>},
    Host = build_host(<<"rum">>, Client1),
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
