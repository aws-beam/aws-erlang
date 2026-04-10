%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Billing and Cost Management Dashboards is a
%% service that enables you to create, manage, and share dashboards that
%% combine multiple visualizations of your Amazon Web Services cost and usage
%% data.
%%
%% You can combine multiple data sources including Cost Explorer, Savings
%% Plans, and Reserved Instance metrics into unified dashboards, helping you
%% analyze spending patterns and share cost insights across your
%% organization.
%%
%% You can use the Amazon Web Services Billing and Cost Management Dashboards
%% API to programmatically create, manage, and share dashboards. This
%% includes creating custom dashboards, configuring widgets, managing
%% dashboard permissions, and sharing dashboards across accounts in your
%% organization.
-module(aws_bcm_dashboards).

-export([create_dashboard/2,
         create_dashboard/3,
         create_scheduled_report/2,
         create_scheduled_report/3,
         delete_dashboard/2,
         delete_dashboard/3,
         delete_scheduled_report/2,
         delete_scheduled_report/3,
         execute_scheduled_report/2,
         execute_scheduled_report/3,
         get_dashboard/2,
         get_dashboard/3,
         get_resource_policy/2,
         get_resource_policy/3,
         get_scheduled_report/2,
         get_scheduled_report/3,
         list_dashboards/2,
         list_dashboards/3,
         list_scheduled_reports/2,
         list_scheduled_reports/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_dashboard/2,
         update_dashboard/3,
         update_scheduled_report/2,
         update_scheduled_report/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_dashboards_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_dashboards_request() :: #{binary() => any()}.

%% Example:
%% get_dashboard_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_dashboard_request() :: #{binary() => any()}.

%% Example:
%% update_dashboard_response() :: #{
%%   <<"arn">> => string()
%% }
-type update_dashboard_response() :: #{binary() => any()}.

%% Example:
%% update_dashboard_request() :: #{
%%   <<"arn">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"widgets">> => list(widget())
%% }
-type update_dashboard_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"resourceTags">> := list(resource_tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_scheduled_report_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceTags">> => list(resource_tag()),
%%   <<"scheduledReport">> := scheduled_report_input()
%% }
-type create_scheduled_report_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% dashboard_reference() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type dashboard_reference() :: #{binary() => any()}.

%% Example:
%% tag_values() :: #{
%%   <<"key">> => [string()],
%%   <<"matchOptions">> => list(list(any())()),
%%   <<"values">> => list([string()]())
%% }
-type tag_values() :: #{binary() => any()}.

%% Example:
%% date_time_value() :: #{
%%   <<"type">> => list(any()),
%%   <<"value">> => string()
%% }
-type date_time_value() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_response() :: #{
%%   <<"policyDocument">> => string(),
%%   <<"resourceArn">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% schedule_period() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type schedule_period() :: #{binary() => any()}.

%% Example:
%% scheduled_report() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dashboardArn">> => string(),
%%   <<"description">> => string(),
%%   <<"healthStatus">> => health_status(),
%%   <<"lastExecutionAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"scheduleConfig">> => schedule_config(),
%%   <<"scheduledReportExecutionRoleArn">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"widgetDateRangeOverride">> => date_time_range(),
%%   <<"widgetIds">> => list([string()]())
%% }
-type scheduled_report() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"resourceTagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% savings_plans_utilization_query() :: #{
%%   <<"filter">> => expression(),
%%   <<"granularity">> => list(any()),
%%   <<"timeRange">> => date_time_range()
%% }
-type savings_plans_utilization_query() :: #{binary() => any()}.

%% Example:
%% group_definition() :: #{
%%   <<"key">> => [string()],
%%   <<"type">> => list(any())
%% }
-type group_definition() :: #{binary() => any()}.

%% Example:
%% update_scheduled_report_request() :: #{
%%   <<"arn">> := string(),
%%   <<"clearWidgetDateRangeOverride">> => [boolean()],
%%   <<"clearWidgetIds">> => [boolean()],
%%   <<"dashboardArn">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"scheduleConfig">> => schedule_config(),
%%   <<"scheduledReportExecutionRoleArn">> => string(),
%%   <<"widgetDateRangeOverride">> => date_time_range(),
%%   <<"widgetIds">> => list([string()]())
%% }
-type update_scheduled_report_request() :: #{binary() => any()}.

%% Example:
%% get_scheduled_report_response() :: #{
%%   <<"scheduledReport">> => scheduled_report()
%% }
-type get_scheduled_report_response() :: #{binary() => any()}.

%% Example:
%% table_display_config_struct() :: #{

%% }
-type table_display_config_struct() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% dimension_values() :: #{
%%   <<"key">> => list(any()),
%%   <<"matchOptions">> => list(list(any())()),
%%   <<"values">> => list([string()]())
%% }
-type dimension_values() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% scheduled_report_input() :: #{
%%   <<"dashboardArn">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"scheduleConfig">> => schedule_config(),
%%   <<"scheduledReportExecutionRoleArn">> => string(),
%%   <<"widgetDateRangeOverride">> => date_time_range(),
%%   <<"widgetIds">> => list([string()]())
%% }
-type scheduled_report_input() :: #{binary() => any()}.

%% Example:
%% graph_display_config() :: #{
%%   <<"visualType">> => list(any())
%% }
-type graph_display_config() :: #{binary() => any()}.

%% Example:
%% reservation_utilization_query() :: #{
%%   <<"filter">> => expression(),
%%   <<"granularity">> => list(any()),
%%   <<"groupBy">> => list(group_definition()),
%%   <<"timeRange">> => date_time_range()
%% }
-type reservation_utilization_query() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"resourceTags">> => list(resource_tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% widget_config() :: #{
%%   <<"displayConfig">> => list(),
%%   <<"queryParameters">> => list()
%% }
-type widget_config() :: #{binary() => any()}.

%% Example:
%% date_time_range() :: #{
%%   <<"endTime">> => date_time_value(),
%%   <<"startTime">> => date_time_value()
%% }
-type date_time_range() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type get_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% savings_plans_coverage_query() :: #{
%%   <<"filter">> => expression(),
%%   <<"granularity">> => list(any()),
%%   <<"groupBy">> => list(group_definition()),
%%   <<"metrics">> => list(list(any())()),
%%   <<"timeRange">> => date_time_range()
%% }
-type savings_plans_coverage_query() :: #{binary() => any()}.

%% Example:
%% get_dashboard_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"widgets">> => list(widget())
%% }
-type get_dashboard_response() :: #{binary() => any()}.

%% Example:
%% health_status() :: #{
%%   <<"lastRefreshedAt">> => non_neg_integer(),
%%   <<"statusCode">> => list(any()),
%%   <<"statusReasons">> => list(list(any())())
%% }
-type health_status() :: #{binary() => any()}.

%% Example:
%% delete_dashboard_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_dashboard_request() :: #{binary() => any()}.

%% Example:
%% execute_scheduled_report_request() :: #{
%%   <<"arn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"dryRun">> => [boolean()]
%% }
-type execute_scheduled_report_request() :: #{binary() => any()}.

%% Example:
%% schedule_config() :: #{
%%   <<"scheduleExpression">> => string(),
%%   <<"scheduleExpressionTimeZone">> => string(),
%%   <<"schedulePeriod">> => schedule_period(),
%%   <<"state">> => list(any())
%% }
-type schedule_config() :: #{binary() => any()}.

%% Example:
%% delete_dashboard_response() :: #{
%%   <<"arn">> => string()
%% }
-type delete_dashboard_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% create_dashboard_response() :: #{
%%   <<"arn">> => string()
%% }
-type create_dashboard_response() :: #{binary() => any()}.

%% Example:
%% resource_tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type resource_tag() :: #{binary() => any()}.

%% Example:
%% cost_category_values() :: #{
%%   <<"key">> => [string()],
%%   <<"matchOptions">> => list(list(any())()),
%%   <<"values">> => list([string()]())
%% }
-type cost_category_values() :: #{binary() => any()}.

%% Example:
%% update_scheduled_report_response() :: #{
%%   <<"arn">> => string()
%% }
-type update_scheduled_report_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_scheduled_report_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_scheduled_report_request() :: #{binary() => any()}.

%% Example:
%% list_scheduled_reports_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"scheduledReports">> => list(scheduled_report_summary())
%% }
-type list_scheduled_reports_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% expression() :: #{
%%   <<"and">> => list(expression()),
%%   <<"costCategories">> => cost_category_values(),
%%   <<"dimensions">> => dimension_values(),
%%   <<"not">> => expression(),
%%   <<"or">> => list(expression()),
%%   <<"tags">> => tag_values()
%% }
-type expression() :: #{binary() => any()}.

%% Example:
%% create_dashboard_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"resourceTags">> => list(resource_tag()),
%%   <<"widgets">> := list(widget())
%% }
-type create_dashboard_request() :: #{binary() => any()}.

%% Example:
%% execute_scheduled_report_response() :: #{
%%   <<"executionTriggered">> => [boolean()],
%%   <<"healthStatus">> => health_status()
%% }
-type execute_scheduled_report_response() :: #{binary() => any()}.

%% Example:
%% get_scheduled_report_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_scheduled_report_request() :: #{binary() => any()}.

%% Example:
%% list_scheduled_reports_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_scheduled_reports_request() :: #{binary() => any()}.

%% Example:
%% reservation_coverage_query() :: #{
%%   <<"filter">> => expression(),
%%   <<"granularity">> => list(any()),
%%   <<"groupBy">> => list(group_definition()),
%%   <<"metrics">> => list(list(any())()),
%%   <<"timeRange">> => date_time_range()
%% }
-type reservation_coverage_query() :: #{binary() => any()}.

%% Example:
%% widget() :: #{
%%   <<"configs">> => list(widget_config()),
%%   <<"description">> => string(),
%%   <<"height">> => integer(),
%%   <<"horizontalOffset">> => [integer()],
%%   <<"id">> => string(),
%%   <<"title">> => string(),
%%   <<"width">> => integer()
%% }
-type widget() :: #{binary() => any()}.

%% Example:
%% create_scheduled_report_response() :: #{
%%   <<"arn">> => string()
%% }
-type create_scheduled_report_response() :: #{binary() => any()}.

%% Example:
%% delete_scheduled_report_response() :: #{
%%   <<"arn">> => string()
%% }
-type delete_scheduled_report_response() :: #{binary() => any()}.

%% Example:
%% list_dashboards_response() :: #{
%%   <<"dashboards">> => list(dashboard_reference()),
%%   <<"nextToken">> => string()
%% }
-type list_dashboards_response() :: #{binary() => any()}.

%% Example:
%% scheduled_report_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"dashboardArn">> => string(),
%%   <<"healthStatus">> => health_status(),
%%   <<"name">> => string(),
%%   <<"scheduleExpression">> => string(),
%%   <<"scheduleExpressionTimeZone">> => string(),
%%   <<"state">> => list(any()),
%%   <<"widgetIds">> => list([string()]())
%% }
-type scheduled_report_summary() :: #{binary() => any()}.

%% Example:
%% cost_and_usage_query() :: #{
%%   <<"filter">> => expression(),
%%   <<"granularity">> => list(any()),
%%   <<"groupBy">> => list(group_definition()),
%%   <<"metrics">> => list(list(any())()),
%%   <<"timeRange">> => date_time_range()
%% }
-type cost_and_usage_query() :: #{binary() => any()}.

-type create_dashboard_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_scheduled_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_dashboard_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_scheduled_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type execute_scheduled_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_dashboard_errors() ::
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
    resource_not_found_exception().

-type get_scheduled_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_dashboards_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_scheduled_reports_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_dashboard_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_scheduled_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new dashboard that can contain multiple widgets displaying
%% cost and usage data.
%%
%% You can add custom widgets or use predefined widgets, arranging them in
%% your preferred layout.
-spec create_dashboard(aws_client:aws_client(), create_dashboard_request()) ->
    {ok, create_dashboard_response(), tuple()} |
    {error, any()} |
    {error, create_dashboard_errors(), tuple()}.
create_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dashboard(Client, Input, []).

-spec create_dashboard(aws_client:aws_client(), create_dashboard_request(), proplists:proplist()) ->
    {ok, create_dashboard_response(), tuple()} |
    {error, any()} |
    {error, create_dashboard_errors(), tuple()}.
create_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDashboard">>, Input, Options).

%% @doc Creates a new scheduled report for a dashboard.
%%
%% A scheduled report automatically generates and delivers dashboard
%% snapshots on a recurring schedule. Reports are delivered within 15 minutes
%% of the scheduled delivery time.
-spec create_scheduled_report(aws_client:aws_client(), create_scheduled_report_request()) ->
    {ok, create_scheduled_report_response(), tuple()} |
    {error, any()} |
    {error, create_scheduled_report_errors(), tuple()}.
create_scheduled_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_scheduled_report(Client, Input, []).

-spec create_scheduled_report(aws_client:aws_client(), create_scheduled_report_request(), proplists:proplist()) ->
    {ok, create_scheduled_report_response(), tuple()} |
    {error, any()} |
    {error, create_scheduled_report_errors(), tuple()}.
create_scheduled_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScheduledReport">>, Input, Options).

%% @doc Deletes a specified dashboard.
%%
%% This action cannot be undone.
-spec delete_dashboard(aws_client:aws_client(), delete_dashboard_request()) ->
    {ok, delete_dashboard_response(), tuple()} |
    {error, any()} |
    {error, delete_dashboard_errors(), tuple()}.
delete_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dashboard(Client, Input, []).

-spec delete_dashboard(aws_client:aws_client(), delete_dashboard_request(), proplists:proplist()) ->
    {ok, delete_dashboard_response(), tuple()} |
    {error, any()} |
    {error, delete_dashboard_errors(), tuple()}.
delete_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDashboard">>, Input, Options).

%% @doc Deletes a specified scheduled report.
%%
%% This is an irreversible operation.
-spec delete_scheduled_report(aws_client:aws_client(), delete_scheduled_report_request()) ->
    {ok, delete_scheduled_report_response(), tuple()} |
    {error, any()} |
    {error, delete_scheduled_report_errors(), tuple()}.
delete_scheduled_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_report(Client, Input, []).

-spec delete_scheduled_report(aws_client:aws_client(), delete_scheduled_report_request(), proplists:proplist()) ->
    {ok, delete_scheduled_report_response(), tuple()} |
    {error, any()} |
    {error, delete_scheduled_report_errors(), tuple()}.
delete_scheduled_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledReport">>, Input, Options).

%% @doc Triggers an immediate execution of a scheduled report, outside of its
%% regular schedule.
%%
%% The scheduled report must be in `ENABLED' state. Calling this
%% operation on a `DISABLED' scheduled report returns a
%% `ValidationException'.
%%
%% If a `clientToken' is provided, the service uses it for idempotency.
%% Requests with the same client token will not trigger a new execution
%% within the same minute.
-spec execute_scheduled_report(aws_client:aws_client(), execute_scheduled_report_request()) ->
    {ok, execute_scheduled_report_response(), tuple()} |
    {error, any()} |
    {error, execute_scheduled_report_errors(), tuple()}.
execute_scheduled_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_scheduled_report(Client, Input, []).

-spec execute_scheduled_report(aws_client:aws_client(), execute_scheduled_report_request(), proplists:proplist()) ->
    {ok, execute_scheduled_report_response(), tuple()} |
    {error, any()} |
    {error, execute_scheduled_report_errors(), tuple()}.
execute_scheduled_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteScheduledReport">>, Input, Options).

%% @doc Retrieves the configuration and metadata of a specified dashboard,
%% including its widgets and layout settings.
-spec get_dashboard(aws_client:aws_client(), get_dashboard_request()) ->
    {ok, get_dashboard_response(), tuple()} |
    {error, any()} |
    {error, get_dashboard_errors(), tuple()}.
get_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dashboard(Client, Input, []).

-spec get_dashboard(aws_client:aws_client(), get_dashboard_request(), proplists:proplist()) ->
    {ok, get_dashboard_response(), tuple()} |
    {error, any()} |
    {error, get_dashboard_errors(), tuple()}.
get_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDashboard">>, Input, Options).

%% @doc Retrieves the resource-based policy attached to a dashboard, showing
%% sharing configurations and permissions.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Retrieves the configuration and metadata of a specified scheduled
%% report.
-spec get_scheduled_report(aws_client:aws_client(), get_scheduled_report_request()) ->
    {ok, get_scheduled_report_response(), tuple()} |
    {error, any()} |
    {error, get_scheduled_report_errors(), tuple()}.
get_scheduled_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_scheduled_report(Client, Input, []).

-spec get_scheduled_report(aws_client:aws_client(), get_scheduled_report_request(), proplists:proplist()) ->
    {ok, get_scheduled_report_response(), tuple()} |
    {error, any()} |
    {error, get_scheduled_report_errors(), tuple()}.
get_scheduled_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetScheduledReport">>, Input, Options).

%% @doc Returns a list of all dashboards in your account.
-spec list_dashboards(aws_client:aws_client(), list_dashboards_request()) ->
    {ok, list_dashboards_response(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dashboards(Client, Input, []).

-spec list_dashboards(aws_client:aws_client(), list_dashboards_request(), proplists:proplist()) ->
    {ok, list_dashboards_response(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDashboards">>, Input, Options).

%% @doc Returns a list of scheduled reports in your account.
-spec list_scheduled_reports(aws_client:aws_client(), list_scheduled_reports_request()) ->
    {ok, list_scheduled_reports_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_reports_errors(), tuple()}.
list_scheduled_reports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_scheduled_reports(Client, Input, []).

-spec list_scheduled_reports(aws_client:aws_client(), list_scheduled_reports_request(), proplists:proplist()) ->
    {ok, list_scheduled_reports_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_reports_errors(), tuple()}.
list_scheduled_reports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListScheduledReports">>, Input, Options).

%% @doc Returns a list of all tags associated with a specified dashboard
%% resource.
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

%% @doc Adds or updates tags for a specified dashboard resource.
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

%% @doc Removes specified tags from a dashboard resource.
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

%% @doc Updates an existing dashboard's properties, including its name,
%% description, and widget configurations.
-spec update_dashboard(aws_client:aws_client(), update_dashboard_request()) ->
    {ok, update_dashboard_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_errors(), tuple()}.
update_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_dashboard(Client, Input, []).

-spec update_dashboard(aws_client:aws_client(), update_dashboard_request(), proplists:proplist()) ->
    {ok, update_dashboard_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_errors(), tuple()}.
update_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDashboard">>, Input, Options).

%% @doc Updates an existing scheduled report's properties, including its
%% name, description, schedule configuration, and widget settings.
%%
%% Only the parameters included in the request are updated; all other
%% properties remain unchanged.
-spec update_scheduled_report(aws_client:aws_client(), update_scheduled_report_request()) ->
    {ok, update_scheduled_report_response(), tuple()} |
    {error, any()} |
    {error, update_scheduled_report_errors(), tuple()}.
update_scheduled_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_scheduled_report(Client, Input, []).

-spec update_scheduled_report(aws_client:aws_client(), update_scheduled_report_request(), proplists:proplist()) ->
    {ok, update_scheduled_report_response(), tuple()} |
    {error, any()} |
    {error, update_scheduled_report_errors(), tuple()}.
update_scheduled_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateScheduledReport">>, Input, Options).

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
    Client1 = Client#{service => <<"bcm-dashboards">>},
    Host = build_host(<<"bcm-dashboards">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSBCMDashboardsService.", Action/binary>>}
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
