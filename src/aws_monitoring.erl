%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudWatch monitors your Amazon Web Services (AWS) resources
%% and the applications you run on AWS in real time. You can use CloudWatch
%% to collect and track metrics, which are the variables you want to measure
%% for your resources and applications.
%%
%% CloudWatch alarms send notifications or automatically change the resources
%% you are monitoring based on rules that you define. For example, you can
%% monitor the CPU usage and disk reads and writes of your Amazon EC2
%% instances. Then, use this data to determine whether you should launch
%% additional instances to handle increased load. You can also use this data
%% to stop under-used instances to save money.
%%
%% In addition to monitoring the built-in metrics that come with AWS, you can
%% monitor your own custom metrics. With CloudWatch, you gain system-wide
%% visibility into resource utilization, application performance, and
%% operational health.
-module(aws_monitoring).

-export([delete_alarms/2,
         delete_alarms/3,
         delete_anomaly_detector/2,
         delete_anomaly_detector/3,
         delete_dashboards/2,
         delete_dashboards/3,
         delete_insight_rules/2,
         delete_insight_rules/3,
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
         get_metric_widget_image/2,
         get_metric_widget_image/3,
         list_dashboards/2,
         list_dashboards/3,
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
         put_metric_alarm/2,
         put_metric_alarm/3,
         put_metric_data/2,
         put_metric_data/3,
         set_alarm_state/2,
         set_alarm_state/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified alarms. You can delete up to 100 alarms in one
%% operation. However, this total can include no more than one composite
%% alarm. For example, you could delete 99 metric alarms and one composite
%% alarms with one operation, but you can't delete two composite alarms with
%% one operation.
%%
%% In the event of an error, no alarms are deleted.
%%
%% <note> It is possible to create a loop or cycle of composite alarms, where
%% composite alarm A depends on composite alarm B, and composite alarm B also
%% depends on composite alarm A. In this scenario, you can't delete any
%% composite alarm that is part of the cycle because there is always still a
%% composite alarm that depends on that alarm that you want to delete.
%%
%% To get out of such a situation, you must break the cycle by changing the
%% rule of one of the composite alarms in the cycle to remove a dependency
%% that creates the cycle. The simplest change to make to break a cycle is to
%% change the <code>AlarmRule</code> of one of the alarms to
%% <code>False</code>.
%%
%% Additionally, the evaluation of composite alarms stops if CloudWatch
%% detects a cycle in the evaluation path.
%%
%% </note>
delete_alarms(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alarms(Client, Input, []).
delete_alarms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlarms">>, Input, Options).

%% @doc Deletes the specified anomaly detection model from your account.
delete_anomaly_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_anomaly_detector(Client, Input, []).
delete_anomaly_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAnomalyDetector">>, Input, Options).

%% @doc Deletes all dashboards that you specify. You can specify up to 100
%% dashboards to delete. If there is an error during this call, no dashboards
%% are deleted.
delete_dashboards(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dashboards(Client, Input, []).
delete_dashboards(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDashboards">>, Input, Options).

%% @doc Permanently deletes the specified Contributor Insights rules.
%%
%% If you create a rule, delete it, and then re-create it with the same name,
%% historical data from the first time the rule was created might not be
%% available.
delete_insight_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_insight_rules(Client, Input, []).
delete_insight_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInsightRules">>, Input, Options).

%% @doc Retrieves the history for the specified alarm. You can filter the
%% results by date range or item type. If an alarm name is not specified, the
%% histories for either all metric alarms or all composite alarms are
%% returned.
%%
%% CloudWatch retains the history of an alarm even if you delete the alarm.
describe_alarm_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_alarm_history(Client, Input, []).
describe_alarm_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlarmHistory">>, Input, Options).

%% @doc Retrieves the specified alarms. You can filter the results by
%% specifying a a prefix for the alarm name, the alarm state, or a prefix for
%% any action.
describe_alarms(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_alarms(Client, Input, []).
describe_alarms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlarms">>, Input, Options).

%% @doc Retrieves the alarms for the specified metric. To filter the results,
%% specify a statistic, period, or unit.
describe_alarms_for_metric(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_alarms_for_metric(Client, Input, []).
describe_alarms_for_metric(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlarmsForMetric">>, Input, Options).

%% @doc Lists the anomaly detection models that you have created in your
%% account. You can list all models in your account or filter the results to
%% only the models that are related to a certain namespace, metric name, or
%% metric dimension.
describe_anomaly_detectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_anomaly_detectors(Client, Input, []).
describe_anomaly_detectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAnomalyDetectors">>, Input, Options).

%% @doc Returns a list of all the Contributor Insights rules in your account.
%% All rules in your account are returned with a single operation.
%%
%% For more information about Contributor Insights, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html">Using
%% Contributor Insights to Analyze High-Cardinality Data</a>.
describe_insight_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_insight_rules(Client, Input, []).
describe_insight_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInsightRules">>, Input, Options).

%% @doc Disables the actions for the specified alarms. When an alarm's
%% actions are disabled, the alarm actions do not execute when the alarm
%% state changes.
disable_alarm_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_alarm_actions(Client, Input, []).
disable_alarm_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAlarmActions">>, Input, Options).

%% @doc Disables the specified Contributor Insights rules. When rules are
%% disabled, they do not analyze log groups and do not incur costs.
disable_insight_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_insight_rules(Client, Input, []).
disable_insight_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableInsightRules">>, Input, Options).

%% @doc Enables the actions for the specified alarms.
enable_alarm_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_alarm_actions(Client, Input, []).
enable_alarm_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAlarmActions">>, Input, Options).

%% @doc Enables the specified Contributor Insights rules. When rules are
%% enabled, they immediately begin analyzing log data.
enable_insight_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_insight_rules(Client, Input, []).
enable_insight_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableInsightRules">>, Input, Options).

%% @doc Displays the details of the dashboard that you specify.
%%
%% To copy an existing dashboard, use <code>GetDashboard</code>, and then use
%% the data returned within <code>DashboardBody</code> as the template for
%% the new dashboard when you call <code>PutDashboard</code> to create the
%% copy.
get_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dashboard(Client, Input, []).
get_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDashboard">>, Input, Options).

%% @doc This operation returns the time series data collected by a
%% Contributor Insights rule. The data includes the identity and number of
%% contributors to the log group.
%%
%% You can also optionally return one or more statistics about each data
%% point in the time series. These statistics can include the following:
%%
%% <ul> <li> <code>UniqueContributors</code> -- the number of unique
%% contributors for each data point.
%%
%% </li> <li> <code>MaxContributorValue</code> -- the value of the top
%% contributor for each data point. The identity of the contributor might
%% change for each data point in the graph.
%%
%% If this rule aggregates by COUNT, the top contributor for each data point
%% is the contributor with the most occurrences in that period. If the rule
%% aggregates by SUM, the top contributor is the contributor with the highest
%% sum in the log field specified by the rule's <code>Value</code>, during
%% that period.
%%
%% </li> <li> <code>SampleCount</code> -- the number of data points matched
%% by the rule.
%%
%% </li> <li> <code>Sum</code> -- the sum of the values from all contributors
%% during the time period represented by that data point.
%%
%% </li> <li> <code>Minimum</code> -- the minimum value from a single
%% observation during the time period represented by that data point.
%%
%% </li> <li> <code>Maximum</code> -- the maximum value from a single
%% observation during the time period represented by that data point.
%%
%% </li> <li> <code>Average</code> -- the average value from all contributors
%% during the time period represented by that data point.
%%
%% </li> </ul>
get_insight_rule_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_insight_rule_report(Client, Input, []).
get_insight_rule_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInsightRuleReport">>, Input, Options).

%% @doc You can use the <code>GetMetricData</code> API to retrieve as many as
%% 500 different metrics in a single request, with a total of as many as
%% 100,800 data points. You can also optionally perform math expressions on
%% the values of the returned statistics, to create new time series that
%% represent new insights into your data. For example, using Lambda metrics,
%% you could divide the Errors metric by the Invocations metric to get an
%% error rate time series. For more information about metric math
%% expressions, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax">Metric
%% Math Syntax and Functions</a> in the <i>Amazon CloudWatch User Guide</i>.
%%
%% Calls to the <code>GetMetricData</code> API have a different pricing
%% structure than calls to <code>GetMetricStatistics</code>. For more
%% information about pricing, see <a
%% href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch
%% Pricing</a>.
%%
%% Amazon CloudWatch retains metric data as follows:
%%
%% <ul> <li> Data points with a period of less than 60 seconds are available
%% for 3 hours. These data points are high-resolution metrics and are
%% available only for custom metrics that have been defined with a
%% <code>StorageResolution</code> of 1.
%%
%% </li> <li> Data points with a period of 60 seconds (1-minute) are
%% available for 15 days.
%%
%% </li> <li> Data points with a period of 300 seconds (5-minute) are
%% available for 63 days.
%%
%% </li> <li> Data points with a period of 3600 seconds (1 hour) are
%% available for 455 days (15 months).
%%
%% </li> </ul> Data points that are initially published with a shorter period
%% are aggregated together for long-term storage. For example, if you collect
%% data using a period of 1 minute, the data remains available for 15 days
%% with 1-minute resolution. After 15 days, this data is still available, but
%% is aggregated and retrievable only with a resolution of 5 minutes. After
%% 63 days, the data is further aggregated and is available with a resolution
%% of 1 hour.
%%
%% If you omit <code>Unit</code> in your request, all data that was collected
%% with any unit is returned, along with the corresponding units that were
%% specified when the data was reported to CloudWatch. If you specify a unit,
%% the operation returns only data that was collected with that unit
%% specified. If you specify a unit that does not match the data collected,
%% the results of the operation are null. CloudWatch does not perform unit
%% conversions.
get_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_metric_data(Client, Input, []).
get_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMetricData">>, Input, Options).

%% @doc Gets statistics for the specified metric.
%%
%% The maximum number of data points returned from a single call is 1,440. If
%% you request more than 1,440 data points, CloudWatch returns an error. To
%% reduce the number of data points, you can narrow the specified time range
%% and make multiple requests across adjacent time ranges, or you can
%% increase the specified period. Data points are not returned in
%% chronological order.
%%
%% CloudWatch aggregates data points based on the length of the period that
%% you specify. For example, if you request statistics with a one-hour
%% period, CloudWatch aggregates all data points with time stamps that fall
%% within each one-hour period. Therefore, the number of values aggregated by
%% CloudWatch is larger than the number of data points returned.
%%
%% CloudWatch needs raw data points to calculate percentile statistics. If
%% you publish data using a statistic set instead, you can only retrieve
%% percentile statistics for this data if one of the following conditions is
%% true:
%%
%% <ul> <li> The SampleCount value of the statistic set is 1.
%%
%% </li> <li> The Min and the Max values of the statistic set are equal.
%%
%% </li> </ul> Percentile statistics are not available for metrics when any
%% of the metric values are negative numbers.
%%
%% Amazon CloudWatch retains metric data as follows:
%%
%% <ul> <li> Data points with a period of less than 60 seconds are available
%% for 3 hours. These data points are high-resolution metrics and are
%% available only for custom metrics that have been defined with a
%% <code>StorageResolution</code> of 1.
%%
%% </li> <li> Data points with a period of 60 seconds (1-minute) are
%% available for 15 days.
%%
%% </li> <li> Data points with a period of 300 seconds (5-minute) are
%% available for 63 days.
%%
%% </li> <li> Data points with a period of 3600 seconds (1 hour) are
%% available for 455 days (15 months).
%%
%% </li> </ul> Data points that are initially published with a shorter period
%% are aggregated together for long-term storage. For example, if you collect
%% data using a period of 1 minute, the data remains available for 15 days
%% with 1-minute resolution. After 15 days, this data is still available, but
%% is aggregated and retrievable only with a resolution of 5 minutes. After
%% 63 days, the data is further aggregated and is available with a resolution
%% of 1 hour.
%%
%% CloudWatch started retaining 5-minute and 1-hour metric data as of July 9,
%% 2016.
%%
%% For information about metrics and dimensions supported by AWS services,
%% see the <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html">Amazon
%% CloudWatch Metrics and Dimensions Reference</a> in the <i>Amazon
%% CloudWatch User Guide</i>.
get_metric_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_metric_statistics(Client, Input, []).
get_metric_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMetricStatistics">>, Input, Options).

%% @doc You can use the <code>GetMetricWidgetImage</code> API to retrieve a
%% snapshot graph of one or more Amazon CloudWatch metrics as a bitmap image.
%% You can then embed this image into your services and products, such as
%% wiki pages, reports, and documents. You could also retrieve images
%% regularly, such as every minute, and create your own custom live
%% dashboard.
%%
%% The graph you retrieve can include all CloudWatch metric graph features,
%% including metric math and horizontal and vertical annotations.
%%
%% There is a limit of 20 transactions per second for this API. Each
%% <code>GetMetricWidgetImage</code> action has the following limits:
%%
%% <ul> <li> As many as 100 metrics in the graph.
%%
%% </li> <li> Up to 100 KB uncompressed payload.
%%
%% </li> </ul>
get_metric_widget_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_metric_widget_image(Client, Input, []).
get_metric_widget_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMetricWidgetImage">>, Input, Options).

%% @doc Returns a list of the dashboards for your account. If you include
%% <code>DashboardNamePrefix</code>, only those dashboards with names
%% starting with the prefix are listed. Otherwise, all dashboards in your
%% account are listed.
%%
%% <code>ListDashboards</code> returns up to 1000 results on one page. If
%% there are more than 1000 dashboards, you can call
%% <code>ListDashboards</code> again and include the value you received for
%% <code>NextToken</code> in the first call, to receive the next 1000
%% results.
list_dashboards(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dashboards(Client, Input, []).
list_dashboards(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDashboards">>, Input, Options).

%% @doc List the specified metrics. You can use the returned metrics with <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a>
%% or <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>
%% to obtain statistical data.
%%
%% Up to 500 results are returned for any one call. To retrieve additional
%% results, use the returned token with subsequent calls.
%%
%% After you create a metric, allow up to 15 minutes before the metric
%% appears. You can see statistics about the metric sooner by using <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a>
%% or <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>.
%%
%% <code>ListMetrics</code> doesn't return information about metrics if those
%% metrics haven't reported data in the past two weeks. To retrieve those
%% metrics, use <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a>
%% or <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>.
list_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_metrics(Client, Input, []).
list_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMetrics">>, Input, Options).

%% @doc Displays the tags associated with a CloudWatch resource. Currently,
%% alarms and Contributor Insights rules support tagging.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates an anomaly detection model for a CloudWatch metric. You can
%% use the model to display a band of expected normal values when the metric
%% is graphed.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Anomaly_Detection.html">CloudWatch
%% Anomaly Detection</a>.
put_anomaly_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_anomaly_detector(Client, Input, []).
put_anomaly_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAnomalyDetector">>, Input, Options).

%% @doc Creates or updates a <i>composite alarm</i>. When you create a
%% composite alarm, you specify a rule expression for the alarm that takes
%% into account the alarm states of other alarms that you have created. The
%% composite alarm goes into ALARM state only if all conditions of the rule
%% are met.
%%
%% The alarms specified in a composite alarm's rule expression can include
%% metric alarms and other composite alarms.
%%
%% Using composite alarms can reduce alarm noise. You can create multiple
%% metric alarms, and also create a composite alarm and set up alerts only
%% for the composite alarm. For example, you could create a composite alarm
%% that goes into ALARM state only when more than one of the underlying
%% metric alarms are in ALARM state.
%%
%% Currently, the only alarm actions that can be taken by composite alarms
%% are notifying SNS topics.
%%
%% <note> It is possible to create a loop or cycle of composite alarms, where
%% composite alarm A depends on composite alarm B, and composite alarm B also
%% depends on composite alarm A. In this scenario, you can't delete any
%% composite alarm that is part of the cycle because there is always still a
%% composite alarm that depends on that alarm that you want to delete.
%%
%% To get out of such a situation, you must break the cycle by changing the
%% rule of one of the composite alarms in the cycle to remove a dependency
%% that creates the cycle. The simplest change to make to break a cycle is to
%% change the <code>AlarmRule</code> of one of the alarms to
%% <code>False</code>.
%%
%% Additionally, the evaluation of composite alarms stops if CloudWatch
%% detects a cycle in the evaluation path.
%%
%% </note> When this operation creates an alarm, the alarm state is
%% immediately set to <code>INSUFFICIENT_DATA</code>. The alarm is then
%% evaluated and its state is set appropriately. Any actions associated with
%% the new state are then executed. For a composite alarm, this initial time
%% after creation is the only time that the alarm can be in
%% <code>INSUFFICIENT_DATA</code> state.
%%
%% When you update an existing alarm, its state is left unchanged, but the
%% update completely overwrites the previous configuration of the alarm.
put_composite_alarm(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_composite_alarm(Client, Input, []).
put_composite_alarm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutCompositeAlarm">>, Input, Options).

%% @doc Creates a dashboard if it does not already exist, or updates an
%% existing dashboard. If you update a dashboard, the entire contents are
%% replaced with what you specify here.
%%
%% All dashboards in your account are global, not region-specific.
%%
%% A simple way to create a dashboard using <code>PutDashboard</code> is to
%% copy an existing dashboard. To copy an existing dashboard using the
%% console, you can load the dashboard and then use the View/edit source
%% command in the Actions menu to display the JSON block for that dashboard.
%% Another way to copy a dashboard is to use <code>GetDashboard</code>, and
%% then use the data returned within <code>DashboardBody</code> as the
%% template for the new dashboard when you call <code>PutDashboard</code>.
%%
%% When you create a dashboard with <code>PutDashboard</code>, a good
%% practice is to add a text widget at the top of the dashboard with a
%% message that the dashboard was created by script and should not be changed
%% in the console. This message could also point console users to the
%% location of the <code>DashboardBody</code> script or the CloudFormation
%% template used to create the dashboard.
put_dashboard(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_dashboard(Client, Input, []).
put_dashboard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDashboard">>, Input, Options).

%% @doc Creates a Contributor Insights rule. Rules evaluate log events in a
%% CloudWatch Logs log group, enabling you to find contributor data for the
%% log events in that log group. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html">Using
%% Contributor Insights to Analyze High-Cardinality Data</a>.
%%
%% If you create a rule, delete it, and then re-create it with the same name,
%% historical data from the first time the rule was created might not be
%% available.
put_insight_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_insight_rule(Client, Input, []).
put_insight_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInsightRule">>, Input, Options).

%% @doc Creates or updates an alarm and associates it with the specified
%% metric, metric math expression, or anomaly detection model.
%%
%% Alarms based on anomaly detection models cannot have Auto Scaling actions.
%%
%% When this operation creates an alarm, the alarm state is immediately set
%% to <code>INSUFFICIENT_DATA</code>. The alarm is then evaluated and its
%% state is set appropriately. Any actions associated with the new state are
%% then executed.
%%
%% When you update an existing alarm, its state is left unchanged, but the
%% update completely overwrites the previous configuration of the alarm.
%%
%% If you are an IAM user, you must have Amazon EC2 permissions for some
%% alarm operations:
%%
%% <ul> <li> <code>iam:CreateServiceLinkedRole</code> for all alarms with EC2
%% actions
%%
%% </li> <li> <code>ec2:DescribeInstanceStatus</code> and
%% <code>ec2:DescribeInstances</code> for all alarms on EC2 instance status
%% metrics
%%
%% </li> <li> <code>ec2:StopInstances</code> for alarms with stop actions
%%
%% </li> <li> <code>ec2:TerminateInstances</code> for alarms with terminate
%% actions
%%
%% </li> <li> No specific permissions are needed for alarms with recover
%% actions
%%
%% </li> </ul> If you have read/write permissions for Amazon CloudWatch but
%% not for Amazon EC2, you can still create an alarm, but the stop or
%% terminate actions are not performed. However, if you are later granted the
%% required permissions, the alarm actions that you created earlier are
%% performed.
%%
%% If you are using an IAM role (for example, an EC2 instance profile), you
%% cannot stop or terminate the instance using alarm actions. However, you
%% can still see the alarm state and perform any other actions such as Amazon
%% SNS notifications or Auto Scaling policies.
%%
%% If you are using temporary security credentials granted using AWS STS, you
%% cannot stop or terminate an EC2 instance using alarm actions.
%%
%% The first time you create an alarm in the AWS Management Console, the CLI,
%% or by using the PutMetricAlarm API, CloudWatch creates the necessary
%% service-linked role for you. The service-linked role is called
%% <code>AWSServiceRoleForCloudWatchEvents</code>. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role">AWS
%% service-linked role</a>.
put_metric_alarm(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_metric_alarm(Client, Input, []).
put_metric_alarm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMetricAlarm">>, Input, Options).

%% @doc Publishes metric data points to Amazon CloudWatch. CloudWatch
%% associates the data points with the specified metric. If the specified
%% metric does not exist, CloudWatch creates the metric. When CloudWatch
%% creates a metric, it can take up to fifteen minutes for the metric to
%% appear in calls to <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html">ListMetrics</a>.
%%
%% You can publish either individual data points in the <code>Value</code>
%% field, or arrays of values and the number of times each value occurred
%% during the period by using the <code>Values</code> and <code>Counts</code>
%% fields in the <code>MetricDatum</code> structure. Using the
%% <code>Values</code> and <code>Counts</code> method enables you to publish
%% up to 150 values per metric with one <code>PutMetricData</code> request,
%% and supports retrieving percentile statistics on this data.
%%
%% Each <code>PutMetricData</code> request is limited to 40 KB in size for
%% HTTP POST requests. You can send a payload compressed by gzip. Each
%% request is also limited to no more than 20 different metrics.
%%
%% Although the <code>Value</code> parameter accepts numbers of type
%% <code>Double</code>, CloudWatch rejects values that are either too small
%% or too large. Values must be in the range of -2^360 to 2^360. In addition,
%% special values (for example, NaN, +Infinity, -Infinity) are not supported.
%%
%% You can use up to 10 dimensions per metric to further clarify what data
%% the metric collects. Each dimension consists of a Name and Value pair. For
%% more information about specifying dimensions, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publishing
%% Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.
%%
%% Data points with time stamps from 24 hours ago or longer can take at least
%% 48 hours to become available for <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a>
%% or <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>
%% from the time they are submitted. Data points with time stamps between 3
%% and 24 hours ago can take as much as 2 hours to become available for for
%% <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a>
%% or <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>.
%%
%% CloudWatch needs raw data points to calculate percentile statistics. If
%% you publish data using a statistic set instead, you can only retrieve
%% percentile statistics for this data if one of the following conditions is
%% true:
%%
%% <ul> <li> The <code>SampleCount</code> value of the statistic set is 1 and
%% <code>Min</code>, <code>Max</code>, and <code>Sum</code> are all equal.
%%
%% </li> <li> The <code>Min</code> and <code>Max</code> are equal, and
%% <code>Sum</code> is equal to <code>Min</code> multiplied by
%% <code>SampleCount</code>.
%%
%% </li> </ul>
put_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_metric_data(Client, Input, []).
put_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMetricData">>, Input, Options).

%% @doc Temporarily sets the state of an alarm for testing purposes. When the
%% updated state differs from the previous value, the action configured for
%% the appropriate state is invoked. For example, if your alarm is configured
%% to send an Amazon SNS message when an alarm is triggered, temporarily
%% changing the alarm state to <code>ALARM</code> sends an SNS message.
%%
%% Metric alarms returns to their actual state quickly, often within seconds.
%% Because the metric alarm state change happens quickly, it is typically
%% only visible in the alarm's <b>History</b> tab in the Amazon CloudWatch
%% console or through <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarmHistory.html">DescribeAlarmHistory</a>.
%%
%% If you use <code>SetAlarmState</code> on a composite alarm, the composite
%% alarm is not guaranteed to return to its actual state. It returns to its
%% actual state only once any of its children alarms change state. It is also
%% reevaluated if you update its configuration.
%%
%% If an alarm triggers EC2 Auto Scaling policies or application Auto Scaling
%% policies, you must include information in the <code>StateReasonData</code>
%% parameter to enable the policy to take the correct action.
set_alarm_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_alarm_state(Client, Input, []).
set_alarm_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetAlarmState">>, Input, Options).

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% CloudWatch resource. Currently, the only CloudWatch resources that can be
%% tagged are alarms and Contributor Insights rules.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to AWS and are interpreted strictly
%% as strings of characters.
%%
%% You can use the <code>TagResource</code> action with an alarm that already
%% has tags. If you specify a new tag key for the alarm, this tag is appended
%% to the list of tags associated with the alarm. If you specify a tag key
%% that is already associated with the alarm, the new tag value that you
%% specify replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a CloudWatch resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from the specified resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
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
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"monitoring">>},
    Host = get_host(<<"monitoring">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],
    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2010-08-01">>
                   },
    Payload = uri_string:compose_query(maps:to_list(Input)),
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

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
