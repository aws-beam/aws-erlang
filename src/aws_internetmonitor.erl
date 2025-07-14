%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudWatch Internet Monitor provides visibility into how
%% internet issues impact the performance and availability
%% between your applications hosted on Amazon Web Services and your end
%% users.
%%
%% It can reduce the time it takes for you to diagnose
%% internet issues from days to minutes. Internet Monitor uses the
%% connectivity data that Amazon Web Services captures from its global
%% networking footprint to calculate a baseline of performance and
%% availability for internet traffic. This
%% is the same data that Amazon Web Services uses to monitor internet uptime
%% and availability. With those measurements
%% as a baseline, Internet Monitor raises awareness for you when there are
%% significant problems for your
%% end users in the different geographic locations where your application
%% runs.
%%
%% Internet Monitor publishes internet measurements to CloudWatch Logs and
%% CloudWatch Metrics,
%% to easily support using CloudWatch tools with health information for
%% geographies and networks specific to your application.
%% Internet Monitor sends health events to Amazon EventBridge so that you can
%% set up notifications. If an issue is caused by the Amazon Web Services
%% network,
%% you also automatically receive an Amazon Web Services Health Dashboard
%% notification with the steps that Amazon Web Services is taking to mitigate
%% the problem.
%%
%% To use Internet Monitor, you create a monitor and associate your
%% application's resources
%% with it - VPCs, NLBs, CloudFront distributions, or WorkSpaces directories
%% - so Internet Monitor can determine
%% where your application's internet traffic is. Internet Monitor then
%% provides internet measurements from Amazon Web Services that are specific
%% to
%% the locations and ASNs (typically, internet service providers or ISPs)
%% that communicate with your application.
%%
%% For more information, see Using Amazon CloudWatch Internet Monitor:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html
%% in the Amazon CloudWatch User Guide.
-module(aws_internetmonitor).

-export([create_monitor/2,
         create_monitor/3,
         delete_monitor/3,
         delete_monitor/4,
         get_health_event/3,
         get_health_event/5,
         get_health_event/6,
         get_internet_event/2,
         get_internet_event/4,
         get_internet_event/5,
         get_monitor/2,
         get_monitor/4,
         get_monitor/5,
         get_query_results/3,
         get_query_results/5,
         get_query_results/6,
         get_query_status/3,
         get_query_status/5,
         get_query_status/6,
         list_health_events/2,
         list_health_events/4,
         list_health_events/5,
         list_internet_events/1,
         list_internet_events/3,
         list_internet_events/4,
         list_monitors/1,
         list_monitors/3,
         list_monitors/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_query/3,
         start_query/4,
         stop_query/4,
         stop_query/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_monitor/3,
         update_monitor/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_health_event_output() :: #{
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"EndedAt">> => [non_neg_integer()],
%%   <<"EventArn">> := string(),
%%   <<"EventId">> := string(),
%%   <<"HealthScoreThreshold">> => float(),
%%   <<"ImpactType">> := string(),
%%   <<"ImpactedLocations">> := list(impacted_location()),
%%   <<"LastUpdatedAt">> := [non_neg_integer()],
%%   <<"PercentOfTotalTrafficImpacted">> => [float()],
%%   <<"StartedAt">> := [non_neg_integer()],
%%   <<"Status">> := string()
%% }
-type get_health_event_output() :: #{binary() => any()}.


%% Example:
%% health_events_config() :: #{
%%   <<"AvailabilityLocalHealthEventsConfig">> => local_health_events_config(),
%%   <<"AvailabilityScoreThreshold">> => float(),
%%   <<"PerformanceLocalHealthEventsConfig">> => local_health_events_config(),
%%   <<"PerformanceScoreThreshold">> => float()
%% }
-type health_events_config() :: #{binary() => any()}.


%% Example:
%% list_monitors_input() :: #{
%%   <<"IncludeLinkedAccounts">> => [boolean()],
%%   <<"MaxResults">> => integer(),
%%   <<"MonitorStatus">> => [string()],
%%   <<"NextToken">> => [string()]
%% }
-type list_monitors_input() :: #{binary() => any()}.


%% Example:
%% get_query_results_output() :: #{
%%   <<"Data">> => list(list([string()]())()),
%%   <<"Fields">> => list(query_field()),
%%   <<"NextToken">> => [string()]
%% }
-type get_query_results_output() :: #{binary() => any()}.


%% Example:
%% get_monitor_output() :: #{
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"HealthEventsConfig">> => health_events_config(),
%%   <<"InternetMeasurementsLogDelivery">> => internet_measurements_log_delivery(),
%%   <<"MaxCityNetworksToMonitor">> => integer(),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"MonitorArn">> => string(),
%%   <<"MonitorName">> => string(),
%%   <<"ProcessingStatus">> => string(),
%%   <<"ProcessingStatusInfo">> => [string()],
%%   <<"Resources">> => list(string()),
%%   <<"Status">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TrafficPercentageToMonitor">> => integer()
%% }
-type get_monitor_output() :: #{binary() => any()}.


%% Example:
%% start_query_output() :: #{
%%   <<"QueryId">> => [string()]
%% }
-type start_query_output() :: #{binary() => any()}.


%% Example:
%% list_monitors_output() :: #{
%%   <<"Monitors">> => list(monitor()),
%%   <<"NextToken">> => [string()]
%% }
-type list_monitors_output() :: #{binary() => any()}.


%% Example:
%% filter_parameter() :: #{
%%   <<"Field">> => [string()],
%%   <<"Operator">> => string(),
%%   <<"Values">> => list([string()]())
%% }
-type filter_parameter() :: #{binary() => any()}.

%% Example:
%% stop_query_input() :: #{}
-type stop_query_input() :: #{}.


%% Example:
%% network_impairment() :: #{
%%   <<"AsPath">> => list(network()),
%%   <<"NetworkEventType">> => string(),
%%   <<"Networks">> => list(network())
%% }
-type network_impairment() :: #{binary() => any()}.

%% Example:
%% delete_monitor_output() :: #{}
-type delete_monitor_output() :: #{}.


%% Example:
%% client_location() :: #{
%%   <<"ASName">> => [string()],
%%   <<"ASNumber">> => [float()],
%%   <<"City">> => [string()],
%%   <<"Country">> => [string()],
%%   <<"Latitude">> => [float()],
%%   <<"Longitude">> => [float()],
%%   <<"Metro">> => [string()],
%%   <<"Subdivision">> => [string()]
%% }
-type client_location() :: #{binary() => any()}.


%% Example:
%% list_internet_events_input() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"EventStatus">> => [string()],
%%   <<"EventType">> => [string()],
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type list_internet_events_input() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% monitor() :: #{
%%   <<"MonitorArn">> => string(),
%%   <<"MonitorName">> => string(),
%%   <<"ProcessingStatus">> => string(),
%%   <<"Status">> => string()
%% }
-type monitor() :: #{binary() => any()}.


%% Example:
%% impacted_location() :: #{
%%   <<"ASName">> => [string()],
%%   <<"ASNumber">> => [float()],
%%   <<"CausedBy">> => network_impairment(),
%%   <<"City">> => [string()],
%%   <<"Country">> => [string()],
%%   <<"CountryCode">> => [string()],
%%   <<"InternetHealth">> => internet_health(),
%%   <<"Ipv4Prefixes">> => list([string()]()),
%%   <<"Latitude">> => [float()],
%%   <<"Longitude">> => [float()],
%%   <<"Metro">> => [string()],
%%   <<"ServiceLocation">> => [string()],
%%   <<"Status">> => string(),
%%   <<"Subdivision">> => [string()],
%%   <<"SubdivisionCode">> => [string()]
%% }
-type impacted_location() :: #{binary() => any()}.


%% Example:
%% get_query_status_output() :: #{
%%   <<"Status">> => string()
%% }
-type get_query_status_output() :: #{binary() => any()}.

%% Example:
%% delete_monitor_input() :: #{}
-type delete_monitor_input() :: #{}.


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
%% get_internet_event_input() :: #{}
-type get_internet_event_input() :: #{}.


%% Example:
%% internet_measurements_log_delivery() :: #{
%%   <<"S3Config">> => s3_config()
%% }
-type internet_measurements_log_delivery() :: #{binary() => any()}.


%% Example:
%% local_health_events_config() :: #{
%%   <<"HealthScoreThreshold">> => float(),
%%   <<"MinTrafficImpact">> => float(),
%%   <<"Status">> => string()
%% }
-type local_health_events_config() :: #{binary() => any()}.


%% Example:
%% s3_config() :: #{
%%   <<"BucketName">> => [string()],
%%   <<"BucketPrefix">> => [string()],
%%   <<"LogDeliveryStatus">> => string()
%% }
-type s3_config() :: #{binary() => any()}.


%% Example:
%% get_internet_event_output() :: #{
%%   <<"ClientLocation">> => client_location(),
%%   <<"EndedAt">> => [non_neg_integer()],
%%   <<"EventArn">> => string(),
%%   <<"EventId">> => string(),
%%   <<"EventStatus">> => string(),
%%   <<"EventType">> => string(),
%%   <<"StartedAt">> => [non_neg_integer()]
%% }
-type get_internet_event_output() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% performance_measurement() :: #{
%%   <<"ExperienceScore">> => [float()],
%%   <<"PercentOfClientLocationImpacted">> => [float()],
%%   <<"PercentOfTotalTrafficImpacted">> => [float()],
%%   <<"RoundTripTime">> => round_trip_time()
%% }
-type performance_measurement() :: #{binary() => any()}.

%% Example:
%% get_query_status_input() :: #{}
-type get_query_status_input() :: #{}.


%% Example:
%% get_monitor_input() :: #{
%%   <<"LinkedAccountId">> => string()
%% }
-type get_monitor_input() :: #{binary() => any()}.

%% Example:
%% stop_query_output() :: #{}
-type stop_query_output() :: #{}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"Tags">> => map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% list_health_events_output() :: #{
%%   <<"HealthEvents">> := list(health_event()),
%%   <<"NextToken">> => [string()]
%% }
-type list_health_events_output() :: #{binary() => any()}.


%% Example:
%% get_health_event_input() :: #{
%%   <<"LinkedAccountId">> => string()
%% }
-type get_health_event_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% availability_measurement() :: #{
%%   <<"ExperienceScore">> => [float()],
%%   <<"PercentOfClientLocationImpacted">> => [float()],
%%   <<"PercentOfTotalTrafficImpacted">> => [float()]
%% }
-type availability_measurement() :: #{binary() => any()}.


%% Example:
%% list_health_events_input() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"EventStatus">> => string(),
%%   <<"LinkedAccountId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type list_health_events_input() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% query_field() :: #{
%%   <<"Name">> => [string()],
%%   <<"Type">> => [string()]
%% }
-type query_field() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"TagKeys">> => list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% update_monitor_input() :: #{
%%   <<"ClientToken">> => [string()],
%%   <<"HealthEventsConfig">> => health_events_config(),
%%   <<"InternetMeasurementsLogDelivery">> => internet_measurements_log_delivery(),
%%   <<"MaxCityNetworksToMonitor">> => integer(),
%%   <<"ResourcesToAdd">> => list(string()),
%%   <<"ResourcesToRemove">> => list(string()),
%%   <<"Status">> => string(),
%%   <<"TrafficPercentageToMonitor">> => integer()
%% }
-type update_monitor_input() :: #{binary() => any()}.


%% Example:
%% health_event() :: #{
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"EndedAt">> => [non_neg_integer()],
%%   <<"EventArn">> => string(),
%%   <<"EventId">> => string(),
%%   <<"HealthScoreThreshold">> => float(),
%%   <<"ImpactType">> => string(),
%%   <<"ImpactedLocations">> => list(impacted_location()),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"PercentOfTotalTrafficImpacted">> => [float()],
%%   <<"StartedAt">> => [non_neg_integer()],
%%   <<"Status">> => string()
%% }
-type health_event() :: #{binary() => any()}.


%% Example:
%% get_query_results_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type get_query_results_input() :: #{binary() => any()}.


%% Example:
%% network() :: #{
%%   <<"ASName">> => [string()],
%%   <<"ASNumber">> => [float()]
%% }
-type network() :: #{binary() => any()}.


%% Example:
%% round_trip_time() :: #{
%%   <<"P50">> => [float()],
%%   <<"P90">> => [float()],
%%   <<"P95">> => [float()]
%% }
-type round_trip_time() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_monitor_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"Status">> => string()
%% }
-type create_monitor_output() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% internet_health() :: #{
%%   <<"Availability">> => availability_measurement(),
%%   <<"Performance">> => performance_measurement()
%% }
-type internet_health() :: #{binary() => any()}.


%% Example:
%% list_internet_events_output() :: #{
%%   <<"InternetEvents">> => list(internet_event_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_internet_events_output() :: #{binary() => any()}.


%% Example:
%% internet_event_summary() :: #{
%%   <<"ClientLocation">> => client_location(),
%%   <<"EndedAt">> => [non_neg_integer()],
%%   <<"EventArn">> => string(),
%%   <<"EventId">> => string(),
%%   <<"EventStatus">> => string(),
%%   <<"EventType">> => string(),
%%   <<"StartedAt">> => [non_neg_integer()]
%% }
-type internet_event_summary() :: #{binary() => any()}.


%% Example:
%% start_query_input() :: #{
%%   <<"EndTime">> := [non_neg_integer()],
%%   <<"FilterParameters">> => list(filter_parameter()),
%%   <<"LinkedAccountId">> => string(),
%%   <<"QueryType">> := string(),
%%   <<"StartTime">> := [non_neg_integer()]
%% }
-type start_query_input() :: #{binary() => any()}.


%% Example:
%% update_monitor_output() :: #{
%%   <<"MonitorArn">> => string(),
%%   <<"Status">> => string()
%% }
-type update_monitor_output() :: #{binary() => any()}.


%% Example:
%% create_monitor_input() :: #{
%%   <<"ClientToken">> => [string()],
%%   <<"HealthEventsConfig">> => health_events_config(),
%%   <<"InternetMeasurementsLogDelivery">> => internet_measurements_log_delivery(),
%%   <<"MaxCityNetworksToMonitor">> => integer(),
%%   <<"MonitorName">> := string(),
%%   <<"Resources">> => list(string()),
%%   <<"Tags">> => map(),
%%   <<"TrafficPercentageToMonitor">> => integer()
%% }
-type create_monitor_input() :: #{binary() => any()}.

-type create_monitor_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_health_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_internet_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_query_results_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_query_status_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_health_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_internet_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_monitors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type start_query_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type stop_query_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_monitor_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a monitor in Amazon CloudWatch Internet Monitor.
%%
%% A monitor is built based on information from the application resources
%% that you add: VPCs,
%% Network Load Balancers (NLBs), Amazon CloudFront distributions, and Amazon
%% WorkSpaces directories. Internet Monitor then publishes internet
%% measurements from Amazon Web Services
%% that are specific to the city-networks. That is, the locations and ASNs
%% (typically internet service providers or ISPs),
%% where clients access your application. For more information, see Using
%% Amazon CloudWatch Internet Monitor:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html
%% in the Amazon CloudWatch User
%% Guide.
%%
%% When you create a monitor, you choose the percentage of traffic that you
%% want to monitor. You can also set a maximum limit for the
%% number of city-networks where client traffic is monitored, that caps the
%% total traffic that Internet Monitor monitors. A city-network
%% maximum is the limit of city-networks, but you only pay for the number of
%% city-networks that are actually monitored. You can update your monitor
%% at any time to change the percentage of traffic to monitor or the
%% city-networks maximum. For more information, see Choosing a city-network
%% maximum value:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html
%% in the Amazon CloudWatch User Guide.
-spec create_monitor(aws_client:aws_client(), create_monitor_input()) ->
    {ok, create_monitor_output(), tuple()} |
    {error, any()} |
    {error, create_monitor_errors(), tuple()}.
create_monitor(Client, Input) ->
    create_monitor(Client, Input, []).

-spec create_monitor(aws_client:aws_client(), create_monitor_input(), proplists:proplist()) ->
    {ok, create_monitor_output(), tuple()} |
    {error, any()} |
    {error, create_monitor_errors(), tuple()}.
create_monitor(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20210603/Monitors"],
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

%% @doc Deletes a monitor in Amazon CloudWatch Internet Monitor.
-spec delete_monitor(aws_client:aws_client(), binary() | list(), delete_monitor_input()) ->
    {ok, delete_monitor_output(), tuple()} |
    {error, any()} |
    {error, delete_monitor_errors(), tuple()}.
delete_monitor(Client, MonitorName, Input) ->
    delete_monitor(Client, MonitorName, Input, []).

-spec delete_monitor(aws_client:aws_client(), binary() | list(), delete_monitor_input(), proplists:proplist()) ->
    {ok, delete_monitor_output(), tuple()} |
    {error, any()} |
    {error, delete_monitor_errors(), tuple()}.
delete_monitor(Client, MonitorName, Input0, Options0) ->
    Method = delete,
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), ""],
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

%% @doc Gets information that Amazon CloudWatch Internet Monitor has created
%% and stored about a health event for a specified monitor.
%%
%% This information includes the impacted locations,
%% and all the information related to the event, by location.
%%
%% The information returned includes the impact on performance, availability,
%% and round-trip time, information about the network providers (ASNs),
%% the event type, and so on.
%%
%% Information rolled up at the global traffic level is also returned,
%% including the impact type and total traffic impact.
-spec get_health_event(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_health_event_output(), tuple()} |
    {error, any()} |
    {error, get_health_event_errors(), tuple()}.
get_health_event(Client, EventId, MonitorName)
  when is_map(Client) ->
    get_health_event(Client, EventId, MonitorName, #{}, #{}).

-spec get_health_event(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_health_event_output(), tuple()} |
    {error, any()} |
    {error, get_health_event_errors(), tuple()}.
get_health_event(Client, EventId, MonitorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_health_event(Client, EventId, MonitorName, QueryMap, HeadersMap, []).

-spec get_health_event(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_health_event_output(), tuple()} |
    {error, any()} |
    {error, get_health_event_errors(), tuple()}.
get_health_event(Client, EventId, MonitorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/HealthEvents/", aws_util:encode_uri(EventId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"LinkedAccountId">>, maps:get(<<"LinkedAccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information that Amazon CloudWatch Internet Monitor has
%% generated about an internet event.
%%
%% Internet Monitor displays information about
%% recent global health events, called internet events, on a global outages
%% map that is available to all Amazon Web Services
%% customers.
%%
%% The information returned here includes the impacted location,
%% when the event started and (if the event is over) ended, the type of event
%% (`PERFORMANCE' or `AVAILABILITY'),
%% and the status (`ACTIVE' or `RESOLVED').
-spec get_internet_event(aws_client:aws_client(), binary() | list()) ->
    {ok, get_internet_event_output(), tuple()} |
    {error, any()} |
    {error, get_internet_event_errors(), tuple()}.
get_internet_event(Client, EventId)
  when is_map(Client) ->
    get_internet_event(Client, EventId, #{}, #{}).

-spec get_internet_event(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_internet_event_output(), tuple()} |
    {error, any()} |
    {error, get_internet_event_errors(), tuple()}.
get_internet_event(Client, EventId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_internet_event(Client, EventId, QueryMap, HeadersMap, []).

-spec get_internet_event(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_internet_event_output(), tuple()} |
    {error, any()} |
    {error, get_internet_event_errors(), tuple()}.
get_internet_event(Client, EventId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/InternetEvents/", aws_util:encode_uri(EventId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a monitor in Amazon CloudWatch Internet
%% Monitor based on a monitor name.
%%
%% The information returned includes the Amazon Resource Name (ARN), create
%% time,
%% modified time, resources included in the monitor, and status information.
-spec get_monitor(aws_client:aws_client(), binary() | list()) ->
    {ok, get_monitor_output(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorName)
  when is_map(Client) ->
    get_monitor(Client, MonitorName, #{}, #{}).

-spec get_monitor(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_monitor_output(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_monitor(Client, MonitorName, QueryMap, HeadersMap, []).

-spec get_monitor(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_monitor_output(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"LinkedAccountId">>, maps:get(<<"LinkedAccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Return the data for a query with the Amazon CloudWatch Internet
%% Monitor query interface.
%%
%% Specify the query that you want to return results for by providing
%% a `QueryId' and a monitor name.
%%
%% For more information about using the query interface, including examples,
%% see
%% Using the Amazon CloudWatch Internet Monitor query interface:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
%% in the Amazon CloudWatch Internet Monitor User Guide.
-spec get_query_results(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_query_results_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_errors(), tuple()}.
get_query_results(Client, MonitorName, QueryId)
  when is_map(Client) ->
    get_query_results(Client, MonitorName, QueryId, #{}, #{}).

-spec get_query_results(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_query_results_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_errors(), tuple()}.
get_query_results(Client, MonitorName, QueryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_results(Client, MonitorName, QueryId, QueryMap, HeadersMap, []).

-spec get_query_results(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_query_results_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_errors(), tuple()}.
get_query_results(Client, MonitorName, QueryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/Queries/", aws_util:encode_uri(QueryId), "/Results"],
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

%% @doc Returns the current status of a query for the Amazon CloudWatch
%% Internet Monitor query interface, for a specified query ID and monitor.
%%
%% When you run a query, check the status to make sure that the query has
%% `SUCCEEDED' before you review the results.
%%
%% `QUEUED': The query is scheduled to run.
%%
%% `RUNNING': The query is in progress but not complete.
%%
%% `SUCCEEDED': The query completed sucessfully.
%%
%% `FAILED': The query failed due to an error.
%%
%% `CANCELED': The query was canceled.
-spec get_query_status(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_query_status_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_errors(), tuple()}.
get_query_status(Client, MonitorName, QueryId)
  when is_map(Client) ->
    get_query_status(Client, MonitorName, QueryId, #{}, #{}).

-spec get_query_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_query_status_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_errors(), tuple()}.
get_query_status(Client, MonitorName, QueryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_status(Client, MonitorName, QueryId, QueryMap, HeadersMap, []).

-spec get_query_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_query_status_output(), tuple()} |
    {error, any()} |
    {error, get_query_status_errors(), tuple()}.
get_query_status(Client, MonitorName, QueryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/Queries/", aws_util:encode_uri(QueryId), "/Status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all health events for a monitor in Amazon CloudWatch Internet
%% Monitor.
%%
%% Returns information for health events including the event start and end
%% times, and
%% the status.
%%
%% Health events that have start times during the time frame that is
%% requested are not included in the list of health events.
-spec list_health_events(aws_client:aws_client(), binary() | list()) ->
    {ok, list_health_events_output(), tuple()} |
    {error, any()} |
    {error, list_health_events_errors(), tuple()}.
list_health_events(Client, MonitorName)
  when is_map(Client) ->
    list_health_events(Client, MonitorName, #{}, #{}).

-spec list_health_events(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_health_events_output(), tuple()} |
    {error, any()} |
    {error, list_health_events_errors(), tuple()}.
list_health_events(Client, MonitorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_health_events(Client, MonitorName, QueryMap, HeadersMap, []).

-spec list_health_events(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_health_events_output(), tuple()} |
    {error, any()} |
    {error, list_health_events_errors(), tuple()}.
list_health_events(Client, MonitorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/HealthEvents"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"EndTime">>, maps:get(<<"EndTime">>, QueryMap, undefined)},
        {<<"EventStatus">>, maps:get(<<"EventStatus">>, QueryMap, undefined)},
        {<<"LinkedAccountId">>, maps:get(<<"LinkedAccountId">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"StartTime">>, maps:get(<<"StartTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists internet events that cause performance or availability issues
%% for client locations.
%%
%% Amazon CloudWatch Internet Monitor displays information about
%% recent global health events, called internet events, on a global outages
%% map that is available to all Amazon Web Services
%% customers.
%%
%% You can constrain the list of internet events returned by providing a
%% start time and end time to define a total
%% time frame for events you want to list. Both start time and end time
%% specify the time when an event started. End time
%% is optional. If you don't include it, the default end time is the
%% current time.
%%
%% You can also limit the events returned to a specific status
%% (`ACTIVE' or `RESOLVED') or type (`PERFORMANCE' or
%% `AVAILABILITY').
-spec list_internet_events(aws_client:aws_client()) ->
    {ok, list_internet_events_output(), tuple()} |
    {error, any()} |
    {error, list_internet_events_errors(), tuple()}.
list_internet_events(Client)
  when is_map(Client) ->
    list_internet_events(Client, #{}, #{}).

-spec list_internet_events(aws_client:aws_client(), map(), map()) ->
    {ok, list_internet_events_output(), tuple()} |
    {error, any()} |
    {error, list_internet_events_errors(), tuple()}.
list_internet_events(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_internet_events(Client, QueryMap, HeadersMap, []).

-spec list_internet_events(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_internet_events_output(), tuple()} |
    {error, any()} |
    {error, list_internet_events_errors(), tuple()}.
list_internet_events(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/InternetEvents"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"EndTime">>, maps:get(<<"EndTime">>, QueryMap, undefined)},
        {<<"EventStatus">>, maps:get(<<"EventStatus">>, QueryMap, undefined)},
        {<<"EventType">>, maps:get(<<"EventType">>, QueryMap, undefined)},
        {<<"InternetEventMaxResults">>, maps:get(<<"InternetEventMaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"StartTime">>, maps:get(<<"StartTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of your monitors for Amazon CloudWatch Internet Monitor and
%% their statuses, along with the Amazon Resource Name (ARN) and name of each
%% monitor.
-spec list_monitors(aws_client:aws_client()) ->
    {ok, list_monitors_output(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client)
  when is_map(Client) ->
    list_monitors(Client, #{}, #{}).

-spec list_monitors(aws_client:aws_client(), map(), map()) ->
    {ok, list_monitors_output(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_monitors(Client, QueryMap, HeadersMap, []).

-spec list_monitors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_monitors_output(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"IncludeLinkedAccounts">>, maps:get(<<"IncludeLinkedAccounts">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"MonitorStatus">>, maps:get(<<"MonitorStatus">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for a resource.
%%
%% Tags are supported only for monitors in Amazon CloudWatch Internet
%% Monitor.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
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

%% @doc Start a query to return data for a specific query type for the Amazon
%% CloudWatch Internet Monitor query interface.
%%
%% Specify a time period
%% for the data that you want returned by using `StartTime' and
%% `EndTime'. You filter the query
%% results to return by providing parameters that you specify with
%% `FilterParameters'.
%%
%% For more information about using the query interface, including examples,
%% see
%% Using the Amazon CloudWatch Internet Monitor query interface:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
%% in the Amazon CloudWatch Internet Monitor User Guide.
-spec start_query(aws_client:aws_client(), binary() | list(), start_query_input()) ->
    {ok, start_query_output(), tuple()} |
    {error, any()} |
    {error, start_query_errors(), tuple()}.
start_query(Client, MonitorName, Input) ->
    start_query(Client, MonitorName, Input, []).

-spec start_query(aws_client:aws_client(), binary() | list(), start_query_input(), proplists:proplist()) ->
    {ok, start_query_output(), tuple()} |
    {error, any()} |
    {error, start_query_errors(), tuple()}.
start_query(Client, MonitorName, Input0, Options0) ->
    Method = post,
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/Queries"],
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

%% @doc Stop a query that is progress for a specific monitor.
-spec stop_query(aws_client:aws_client(), binary() | list(), binary() | list(), stop_query_input()) ->
    {ok, stop_query_output(), tuple()} |
    {error, any()} |
    {error, stop_query_errors(), tuple()}.
stop_query(Client, MonitorName, QueryId, Input) ->
    stop_query(Client, MonitorName, QueryId, Input, []).

-spec stop_query(aws_client:aws_client(), binary() | list(), binary() | list(), stop_query_input(), proplists:proplist()) ->
    {ok, stop_query_output(), tuple()} |
    {error, any()} |
    {error, stop_query_errors(), tuple()}.
stop_query(Client, MonitorName, QueryId, Input0, Options0) ->
    Method = delete,
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/Queries/", aws_util:encode_uri(QueryId), ""],
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

%% @doc Adds a tag to a resource.
%%
%% Tags are supported only for monitors in Amazon CloudWatch Internet
%% Monitor. You can add a maximum of 50 tags in Internet Monitor.
%%
%% A minimum of one tag is required for this call. It returns an error if you
%% use the `TagResource' request with 0 tags.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
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

%% @doc Removes a tag from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
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

%% @doc Updates a monitor.
%%
%% You can update a monitor to change the percentage of traffic to monitor or
%% the maximum number of city-networks
%% (locations and ASNs), to add or remove resources, or to change the status
%% of the monitor. Note that you can't change the name of a monitor.
%%
%% The city-network maximum that you choose is the limit, but you only pay
%% for the number of city-networks that are actually monitored.
%% For more information, see Choosing a city-network maximum value:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html
%% in the Amazon CloudWatch User Guide.
-spec update_monitor(aws_client:aws_client(), binary() | list(), update_monitor_input()) ->
    {ok, update_monitor_output(), tuple()} |
    {error, any()} |
    {error, update_monitor_errors(), tuple()}.
update_monitor(Client, MonitorName, Input) ->
    update_monitor(Client, MonitorName, Input, []).

-spec update_monitor(aws_client:aws_client(), binary() | list(), update_monitor_input(), proplists:proplist()) ->
    {ok, update_monitor_output(), tuple()} |
    {error, any()} |
    {error, update_monitor_errors(), tuple()}.
update_monitor(Client, MonitorName, Input0, Options0) ->
    Method = patch,
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), ""],
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
    Client1 = Client#{service => <<"internetmonitor">>},
    Host = build_host(<<"internetmonitor">>, Client1),
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
