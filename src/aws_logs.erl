%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon CloudWatch Logs API Reference</fullname>
%%
%% This is the <i>Amazon CloudWatch Logs API Reference</i>. Amazon CloudWatch
%% Logs enables you to monitor, store, and access your system, application,
%% and custom log files. This guide provides detailed information about
%% Amazon CloudWatch Logs actions, data types, parameters, and errors. For
%% detailed information about Amazon CloudWatch Logs features and their
%% associated API calls, go to the <a
%% href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide">Amazon
%% CloudWatch Developer Guide</a>.
%%
%% Use the following links to get started using the <i>Amazon CloudWatch Logs
%% API Reference</i>:
%%
%% <ul> <li><a
%% href="http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_Operations.html">Actions</a>:
%% An alphabetical list of all Amazon CloudWatch Logs actions.</li> <li><a
%% href="http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_Types.html">Data
%% Types</a>: An alphabetical list of all Amazon CloudWatch Logs data
%% types.</li> <li><a
%% href="http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/CommonParameters.html">Common
%% Parameters</a>: Parameters that all Query actions can use.</li> <li><a
%% href="http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/CommonErrors.html">Common
%% Errors</a>: Client and server errors that all actions can return.</li>
%% <li><a
%% href="http://docs.aws.amazon.com/general/latest/gr/index.html?rande.html">Regions
%% and Endpoints</a>: Itemized regions and endpoints for all AWS
%% products.</li> </ul> In addition to using the Amazon CloudWatch Logs API,
%% you can also use the following SDKs and third-party libraries to access
%% Amazon CloudWatch Logs programmatically.
%%
%% <ul> <li><a href="http://aws.amazon.com/documentation/sdkforjava/">AWS SDK
%% for Java Documentation</a></li> <li><a
%% href="http://aws.amazon.com/documentation/sdkfornet/">AWS SDK for .NET
%% Documentation</a></li> <li><a
%% href="http://aws.amazon.com/documentation/sdkforphp/">AWS SDK for PHP
%% Documentation</a></li> <li><a
%% href="http://aws.amazon.com/documentation/sdkforruby/">AWS SDK for Ruby
%% Documentation</a></li> </ul> Developers in the AWS developer community
%% also provide their own libraries, which you can find at the following AWS
%% developer centers:
%%
%% <ul> <li><a href="http://aws.amazon.com/java/">AWS Java Developer
%% Center</a></li> <li><a href="http://aws.amazon.com/php/">AWS PHP Developer
%% Center</a></li> <li><a href="http://aws.amazon.com/python/">AWS Python
%% Developer Center</a></li> <li><a href="http://aws.amazon.com/ruby/">AWS
%% Ruby Developer Center</a></li> <li><a
%% href="http://aws.amazon.com/net/">AWS Windows and .NET Developer
%% Center</a></li> </ul>
-module(aws_logs).

-export([cancel_export_task/2,
         cancel_export_task/3,
         create_export_task/2,
         create_export_task/3,
         create_log_group/2,
         create_log_group/3,
         create_log_stream/2,
         create_log_stream/3,
         delete_destination/2,
         delete_destination/3,
         delete_log_group/2,
         delete_log_group/3,
         delete_log_stream/2,
         delete_log_stream/3,
         delete_metric_filter/2,
         delete_metric_filter/3,
         delete_retention_policy/2,
         delete_retention_policy/3,
         delete_subscription_filter/2,
         delete_subscription_filter/3,
         describe_destinations/2,
         describe_destinations/3,
         describe_export_tasks/2,
         describe_export_tasks/3,
         describe_log_groups/2,
         describe_log_groups/3,
         describe_log_streams/2,
         describe_log_streams/3,
         describe_metric_filters/2,
         describe_metric_filters/3,
         describe_subscription_filters/2,
         describe_subscription_filters/3,
         filter_log_events/2,
         filter_log_events/3,
         get_log_events/2,
         get_log_events/3,
         put_destination/2,
         put_destination/3,
         put_destination_policy/2,
         put_destination_policy/3,
         put_log_events/2,
         put_log_events/3,
         put_metric_filter/2,
         put_metric_filter/3,
         put_retention_policy/2,
         put_retention_policy/3,
         put_subscription_filter/2,
         put_subscription_filter/3,
         test_metric_filter/2,
         test_metric_filter/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels an export task if it is in <code>PENDING</code> or
%% <code>RUNNING</code> state.
cancel_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_export_task(Client, Input, []).
cancel_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelExportTask">>, Input, Options).

%% @doc Creates an <code>ExportTask</code> which allows you to efficiently
%% export data from a Log Group to your Amazon S3 bucket.
%%
%% This is an asynchronous call. If all the required information is provided,
%% this API will initiate an export task and respond with the task Id. Once
%% started, <code>DescribeExportTasks</code> can be used to get the status of
%% an export task.
%%
%% You can export logs from multiple log groups or multiple time ranges to
%% the same Amazon S3 bucket. To separate out log data for each export task,
%% you can specify a prefix that will be used as the Amazon S3 key prefix for
%% all exported objects.
create_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_export_task(Client, Input, []).
create_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExportTask">>, Input, Options).

%% @doc Creates a new log group with the specified name. The name of the log
%% group must be unique within a region for an AWS account. You can create up
%% to 500 log groups per account.
%%
%% You must use the following guidelines when naming a log group: <ul>
%% <li>Log group names can be between 1 and 512 characters long.</li>
%% <li>Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen),
%% '/' (forward slash), and '.' (period).</li> </ul>
create_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_group(Client, Input, []).
create_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogGroup">>, Input, Options).

%% @doc Creates a new log stream in the specified log group. The name of the
%% log stream must be unique within the log group. There is no limit on the
%% number of log streams that can exist in a log group.
%%
%% You must use the following guidelines when naming a log stream: <ul>
%% <li>Log stream names can be between 1 and 512 characters long.</li>
%% <li>The ':' colon character is not allowed.</li> </ul>
create_log_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_stream(Client, Input, []).
create_log_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogStream">>, Input, Options).

%% @doc Deletes the destination with the specified name and eventually
%% disables all the subscription filters that publish to it. This will not
%% delete the physical resource encapsulated by the destination.
delete_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_destination(Client, Input, []).
delete_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDestination">>, Input, Options).

%% @doc Deletes the log group with the specified name and permanently deletes
%% all the archived log events associated with it.
delete_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_group(Client, Input, []).
delete_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogGroup">>, Input, Options).

%% @doc Deletes a log stream and permanently deletes all the archived log
%% events associated with it.
delete_log_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_stream(Client, Input, []).
delete_log_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogStream">>, Input, Options).

%% @doc Deletes a metric filter associated with the specified log group.
delete_metric_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_metric_filter(Client, Input, []).
delete_metric_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMetricFilter">>, Input, Options).

%% @doc Deletes the retention policy of the specified log group. Log events
%% would not expire if they belong to log groups without a retention policy.
delete_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_retention_policy(Client, Input, []).
delete_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRetentionPolicy">>, Input, Options).

%% @doc Deletes a subscription filter associated with the specified log
%% group.
delete_subscription_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subscription_filter(Client, Input, []).
delete_subscription_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubscriptionFilter">>, Input, Options).

%% @doc Returns all the destinations that are associated with the AWS account
%% making the request. The list returned in the response is ASCII-sorted by
%% destination name.
%%
%% By default, this operation returns up to 50 destinations. If there are
%% more destinations to list, the response would contain a <code
%% class="code">nextToken</code> value in the response body. You can also
%% limit the number of destinations returned in the response by specifying
%% the <code class="code">limit</code> parameter in the request.
describe_destinations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_destinations(Client, Input, []).
describe_destinations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDestinations">>, Input, Options).

%% @doc Returns all the export tasks that are associated with the AWS account
%% making the request. The export tasks can be filtered based on
%% <code>TaskId</code> or <code>TaskStatus</code>.
%%
%% By default, this operation returns up to 50 export tasks that satisfy the
%% specified filters. If there are more export tasks to list, the response
%% would contain a <code class="code">nextToken</code> value in the response
%% body. You can also limit the number of export tasks returned in the
%% response by specifying the <code class="code">limit</code> parameter in
%% the request.
describe_export_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_tasks(Client, Input, []).
describe_export_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportTasks">>, Input, Options).

%% @doc Returns all the log groups that are associated with the AWS account
%% making the request. The list returned in the response is ASCII-sorted by
%% log group name.
%%
%% By default, this operation returns up to 50 log groups. If there are more
%% log groups to list, the response would contain a <code
%% class="code">nextToken</code> value in the response body. You can also
%% limit the number of log groups returned in the response by specifying the
%% <code class="code">limit</code> parameter in the request.
describe_log_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_log_groups(Client, Input, []).
describe_log_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLogGroups">>, Input, Options).

%% @doc Returns all the log streams that are associated with the specified
%% log group. The list returned in the response is ASCII-sorted by log stream
%% name.
%%
%% By default, this operation returns up to 50 log streams. If there are more
%% log streams to list, the response would contain a <code
%% class="code">nextToken</code> value in the response body. You can also
%% limit the number of log streams returned in the response by specifying the
%% <code class="code">limit</code> parameter in the request. This operation
%% has a limit of five transactions per second, after which transactions are
%% throttled.
describe_log_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_log_streams(Client, Input, []).
describe_log_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLogStreams">>, Input, Options).

%% @doc Returns all the metrics filters associated with the specified log
%% group. The list returned in the response is ASCII-sorted by filter name.
%%
%% By default, this operation returns up to 50 metric filters. If there are
%% more metric filters to list, the response would contain a <code
%% class="code">nextToken</code> value in the response body. You can also
%% limit the number of metric filters returned in the response by specifying
%% the <code class="code">limit</code> parameter in the request.
describe_metric_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metric_filters(Client, Input, []).
describe_metric_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetricFilters">>, Input, Options).

%% @doc Returns all the subscription filters associated with the specified
%% log group. The list returned in the response is ASCII-sorted by filter
%% name.
%%
%% By default, this operation returns up to 50 subscription filters. If there
%% are more subscription filters to list, the response would contain a <code
%% class="code">nextToken</code> value in the response body. You can also
%% limit the number of subscription filters returned in the response by
%% specifying the <code class="code">limit</code> parameter in the request.
describe_subscription_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subscription_filters(Client, Input, []).
describe_subscription_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubscriptionFilters">>, Input, Options).

%% @doc Retrieves log events, optionally filtered by a filter pattern from
%% the specified log group. You can provide an optional time range to filter
%% the results on the event <code class="code">timestamp</code>. You can
%% limit the streams searched to an explicit list of <code
%% class="code">logStreamNames</code>.
%%
%% By default, this operation returns as much matching log events as can fit
%% in a response size of 1MB, up to 10,000 log events, or all the events
%% found within a time-bounded scan window. If the response includes a <code
%% class="code">nextToken</code>, then there is more data to search, and the
%% search can be resumed with a new request providing the nextToken. The
%% response will contain a list of <code
%% class="code">searchedLogStreams</code> that contains information about
%% which streams were searched in the request and whether they have been
%% searched completely or require further pagination. The <code
%% class="code">limit</code> parameter in the request. can be used to specify
%% the maximum number of events to return in a page.
filter_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    filter_log_events(Client, Input, []).
filter_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FilterLogEvents">>, Input, Options).

%% @doc Retrieves log events from the specified log stream. You can provide
%% an optional time range to filter the results on the event <code
%% class="code">timestamp</code>.
%%
%% By default, this operation returns as much log events as can fit in a
%% response size of 1MB, up to 10,000 log events. The response will always
%% include a <code class="code">nextForwardToken</code> and a <code
%% class="code">nextBackwardToken</code> in the response body. You can use
%% any of these tokens in subsequent <code class="code">GetLogEvents</code>
%% requests to paginate through events in either forward or backward
%% direction. You can also limit the number of log events returned in the
%% response by specifying the <code class="code">limit</code> parameter in
%% the request.
get_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_log_events(Client, Input, []).
get_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLogEvents">>, Input, Options).

%% @doc Creates or updates a <code>Destination</code>. A destination
%% encapsulates a physical resource (such as a Kinesis stream) and allows you
%% to subscribe to a real-time stream of log events of a different account,
%% ingested through <code class="code">PutLogEvents</code> requests.
%% Currently, the only supported physical resource is a Amazon Kinesis stream
%% belonging to the same account as the destination.
%%
%% A destination controls what is written to its Amazon Kinesis stream
%% through an access policy. By default, PutDestination does not set any
%% access policy with the destination, which means a cross-account user will
%% not be able to call <code>PutSubscriptionFilter</code> against this
%% destination. To enable that, the destination owner must call
%% <code>PutDestinationPolicy</code> after PutDestination.
put_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_destination(Client, Input, []).
put_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDestination">>, Input, Options).

%% @doc Creates or updates an access policy associated with an existing
%% <code>Destination</code>. An access policy is an <a
%% href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html">IAM
%% policy document</a> that is used to authorize claims to register a
%% subscription filter against a given destination.
put_destination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_destination_policy(Client, Input, []).
put_destination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDestinationPolicy">>, Input, Options).

%% @doc Uploads a batch of log events to the specified log stream.
%%
%% Every PutLogEvents request must include the <code
%% class="code">sequenceToken</code> obtained from the response of the
%% previous request. An upload in a newly created log stream does not require
%% a <code class="code">sequenceToken</code>.
%%
%% The batch of events must satisfy the following constraints: <ul> <li>The
%% maximum batch size is 1,048,576 bytes, and this size is calculated as the
%% sum of all event messages in UTF-8, plus 26 bytes for each log event.</li>
%% <li>None of the log events in the batch can be more than 2 hours in the
%% future.</li> <li>None of the log events in the batch can be older than 14
%% days or the retention period of the log group.</li> <li>The log events in
%% the batch must be in chronological ordered by their <code
%% class="code">timestamp</code>.</li> <li>The maximum number of log events
%% in a batch is 10,000.</li> </ul>
put_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_log_events(Client, Input, []).
put_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLogEvents">>, Input, Options).

%% @doc Creates or updates a metric filter and associates it with the
%% specified log group. Metric filters allow you to configure rules to
%% extract metric data from log events ingested through <code
%% class="code">PutLogEvents</code> requests.
%%
%% The maximum number of metric filters that can be associated with a log
%% group is 100.
put_metric_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_metric_filter(Client, Input, []).
put_metric_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMetricFilter">>, Input, Options).

%% @doc Sets the retention of the specified log group. A retention policy
%% allows you to configure the number of days you want to retain log events
%% in the specified log group.
put_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_retention_policy(Client, Input, []).
put_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRetentionPolicy">>, Input, Options).

%% @doc Creates or updates a subscription filter and associates it with the
%% specified log group. Subscription filters allow you to subscribe to a
%% real-time stream of log events ingested through <code
%% class="code">PutLogEvents</code> requests and have them delivered to a
%% specific destination. Currently, the supported destinations are: <ul> <li>
%% A Amazon Kinesis stream belonging to the same account as the subscription
%% filter, for same-account delivery. </li> <li> A logical destination (used
%% via an ARN of <code>Destination</code>) belonging to a different account,
%% for cross-account delivery. </li> </ul>
%%
%% Currently there can only be one subscription filter associated with a log
%% group.
put_subscription_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_subscription_filter(Client, Input, []).
put_subscription_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSubscriptionFilter">>, Input, Options).

%% @doc Tests the filter pattern of a metric filter against a sample of log
%% event messages. You can use this operation to validate the correctness of
%% a metric filter pattern.
test_metric_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_metric_filter(Client, Input, []).
test_metric_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestMetricFilter">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"logs">>},
    Host = aws_util:binary_join([<<"logs.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"Logs_20140328.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
