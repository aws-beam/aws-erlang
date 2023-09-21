%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use Amazon CloudWatch Logs to monitor, store, and access your
%% log files from EC2 instances, CloudTrail, and other sources.
%%
%% You can then retrieve the associated log data from CloudWatch Logs using
%% the CloudWatch console. Alternatively, you can use CloudWatch Logs
%% commands in the Amazon Web Services CLI, CloudWatch Logs API, or
%% CloudWatch Logs SDK.
%%
%% You can use CloudWatch Logs to:
%%
%% <ul> <li> Monitor logs from EC2 instances in real time: You can use
%% CloudWatch Logs to monitor applications and systems using log data. For
%% example, CloudWatch Logs can track the number of errors that occur in your
%% application logs. Then, it can send you a notification whenever the rate
%% of errors exceeds a threshold that you specify. CloudWatch Logs uses your
%% log data for monitoring so no code changes are required. For example, you
%% can monitor application logs for specific literal terms (such as
%% &quot;NullReferenceException&quot;). You can also count the number of
%% occurrences of a literal term at a particular position in log data (such
%% as &quot;404&quot; status codes in an Apache access log). When the term
%% you are searching for is found, CloudWatch Logs reports the data to a
%% CloudWatch metric that you specify.
%%
%% </li> <li> Monitor CloudTrail logged events: You can create alarms in
%% CloudWatch and receive notifications of particular API activity as
%% captured by CloudTrail. You can use the notification to perform
%% troubleshooting.
%%
%% </li> <li> Archive log data: You can use CloudWatch Logs to store your log
%% data in highly durable storage. You can change the log retention setting
%% so that any log events earlier than this setting are automatically
%% deleted. The CloudWatch Logs agent helps to quickly send both rotated and
%% non-rotated log data off of a host and into the log service. You can then
%% access the raw log data when you need it.
%%
%% </li> </ul>
-module(aws_cloudwatch_logs).

-export([associate_kms_key/2,
         associate_kms_key/3,
         cancel_export_task/2,
         cancel_export_task/3,
         create_export_task/2,
         create_export_task/3,
         create_log_group/2,
         create_log_group/3,
         create_log_stream/2,
         create_log_stream/3,
         delete_account_policy/2,
         delete_account_policy/3,
         delete_data_protection_policy/2,
         delete_data_protection_policy/3,
         delete_destination/2,
         delete_destination/3,
         delete_log_group/2,
         delete_log_group/3,
         delete_log_stream/2,
         delete_log_stream/3,
         delete_metric_filter/2,
         delete_metric_filter/3,
         delete_query_definition/2,
         delete_query_definition/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_retention_policy/2,
         delete_retention_policy/3,
         delete_subscription_filter/2,
         delete_subscription_filter/3,
         describe_account_policies/2,
         describe_account_policies/3,
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
         describe_queries/2,
         describe_queries/3,
         describe_query_definitions/2,
         describe_query_definitions/3,
         describe_resource_policies/2,
         describe_resource_policies/3,
         describe_subscription_filters/2,
         describe_subscription_filters/3,
         disassociate_kms_key/2,
         disassociate_kms_key/3,
         filter_log_events/2,
         filter_log_events/3,
         get_data_protection_policy/2,
         get_data_protection_policy/3,
         get_log_events/2,
         get_log_events/3,
         get_log_group_fields/2,
         get_log_group_fields/3,
         get_log_record/2,
         get_log_record/3,
         get_query_results/2,
         get_query_results/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_tags_log_group/2,
         list_tags_log_group/3,
         put_account_policy/2,
         put_account_policy/3,
         put_data_protection_policy/2,
         put_data_protection_policy/3,
         put_destination/2,
         put_destination/3,
         put_destination_policy/2,
         put_destination_policy/3,
         put_log_events/2,
         put_log_events/3,
         put_metric_filter/2,
         put_metric_filter/3,
         put_query_definition/2,
         put_query_definition/3,
         put_resource_policy/2,
         put_resource_policy/3,
         put_retention_policy/2,
         put_retention_policy/3,
         put_subscription_filter/2,
         put_subscription_filter/3,
         start_query/2,
         start_query/3,
         stop_query/2,
         stop_query/3,
         tag_log_group/2,
         tag_log_group/3,
         tag_resource/2,
         tag_resource/3,
         test_metric_filter/2,
         test_metric_filter/3,
         untag_log_group/2,
         untag_log_group/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the specified KMS key with either one log group in the
%% account, or with all stored CloudWatch Logs query insights results in the
%% account.
%%
%% When you use `AssociateKmsKey', you specify either the
%% `logGroupName' parameter or the `resourceIdentifier' parameter.
%% You can't specify both of those parameters in the same operation.
%%
%% <ul> <li> Specify the `logGroupName' parameter to cause all log events
%% stored in the log group to be encrypted with that key. Only the log events
%% ingested after the key is associated are encrypted with that key.
%%
%% Associating a KMS key with a log group overrides any existing associations
%% between the log group and a KMS key. After a KMS key is associated with a
%% log group, all newly ingested data for the log group is encrypted using
%% the KMS key. This association is stored as long as the data encrypted with
%% the KMS key is still within CloudWatch Logs. This enables CloudWatch Logs
%% to decrypt this data whenever it is requested.
%%
%% Associating a key with a log group does not cause the results of queries
%% of that log group to be encrypted with that key. To have query results
%% encrypted with a KMS key, you must use an `AssociateKmsKey' operation
%% with the `resourceIdentifier' parameter that specifies a
%% `query-result' resource.
%%
%% </li> <li> Specify the `resourceIdentifier' parameter with a
%% `query-result' resource, to use that key to encrypt the stored results
%% of all future StartQuery operations in the account. The response from a
%% GetQueryResults operation will still return the query results in plain
%% text.
%%
%% Even if you have not associated a key with your query results, the query
%% results are encrypted when stored, using the default CloudWatch Logs
%% method.
%%
%% If you run a query from a monitoring account that queries logs in a source
%% account, the query results key from the monitoring account, if any, is
%% used.
%%
%% </li> </ul> If you delete the key that is used to encrypt log events or
%% log group query results, then all the associated stored log events or
%% query results that were encrypted with that key will be unencryptable and
%% unusable.
%%
%% CloudWatch Logs supports only symmetric KMS keys. Do not use an associate
%% an asymmetric KMS key with your log group or query results. For more
%% information, see Using Symmetric and Asymmetric Keys.
%%
%% It can take up to 5 minutes for this operation to take effect.
%%
%% If you attempt to associate a KMS key with a log group but the KMS key
%% does not exist or the KMS key is disabled, you receive an
%% `InvalidParameterException' error.
associate_kms_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_kms_key(Client, Input, []).
associate_kms_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateKmsKey">>, Input, Options).

%% @doc Cancels the specified export task.
%%
%% The task must be in the `PENDING' or `RUNNING' state.
cancel_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_export_task(Client, Input, []).
cancel_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelExportTask">>, Input, Options).

%% @doc Creates an export task so that you can efficiently export data from a
%% log group to an Amazon S3 bucket.
%%
%% When you perform a `CreateExportTask' operation, you must use
%% credentials that have permission to write to the S3 bucket that you
%% specify as the destination.
%%
%% Exporting log data to S3 buckets that are encrypted by KMS is supported.
%% Exporting log data to Amazon S3 buckets that have S3 Object Lock enabled
%% with a retention period is also supported.
%%
%% Exporting to S3 buckets that are encrypted with AES-256 is supported.
%%
%% This is an asynchronous call. If all the required information is provided,
%% this operation initiates an export task and responds with the ID of the
%% task. After the task has started, you can use DescribeExportTasks to get
%% the status of the export task. Each account can only have one active
%% (`RUNNING' or `PENDING') export task at a time. To cancel an
%% export task, use CancelExportTask.
%%
%% You can export logs from multiple log groups or multiple time ranges to
%% the same S3 bucket. To separate log data for each export task, specify a
%% prefix to be used as the Amazon S3 key prefix for all exported objects.
%%
%% Time-based sorting on chunks of log data inside an exported file is not
%% guaranteed. You can sort the exported log field data by using Linux
%% utilities.
create_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_export_task(Client, Input, []).
create_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExportTask">>, Input, Options).

%% @doc Creates a log group with the specified name.
%%
%% You can create up to 1,000,000 log groups per Region per account.
%%
%% You must use the following guidelines when naming a log group:
%%
%% <ul> <li> Log group names must be unique within a Region for an Amazon Web
%% Services account.
%%
%% </li> <li> Log group names can be between 1 and 512 characters long.
%%
%% </li> <li> Log group names consist of the following characters: a-z, A-Z,
%% 0-9, '_' (underscore), '-' (hyphen), '/' (forward
%% slash), '.' (period), and '#' (number sign)
%%
%% </li> </ul> When you create a log group, by default the log events in the
%% log group do not expire. To set a retention policy so that events expire
%% and are deleted after a specified time, use PutRetentionPolicy.
%%
%% If you associate an KMS key with the log group, ingested data is encrypted
%% using the KMS key. This association is stored as long as the data
%% encrypted with the KMS key is still within CloudWatch Logs. This enables
%% CloudWatch Logs to decrypt this data whenever it is requested.
%%
%% If you attempt to associate a KMS key with the log group but the KMS key
%% does not exist or the KMS key is disabled, you receive an
%% `InvalidParameterException' error.
%%
%% CloudWatch Logs supports only symmetric KMS keys. Do not associate an
%% asymmetric KMS key with your log group. For more information, see Using
%% Symmetric and Asymmetric Keys.
create_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_group(Client, Input, []).
create_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogGroup">>, Input, Options).

%% @doc Creates a log stream for the specified log group.
%%
%% A log stream is a sequence of log events that originate from a single
%% source, such as an application instance or a resource that is being
%% monitored.
%%
%% There is no limit on the number of log streams that you can create for a
%% log group. There is a limit of 50 TPS on `CreateLogStream' operations,
%% after which transactions are throttled.
%%
%% You must use the following guidelines when naming a log stream:
%%
%% <ul> <li> Log stream names must be unique within the log group.
%%
%% </li> <li> Log stream names can be between 1 and 512 characters long.
%%
%% </li> <li> Don't use ':' (colon) or '*' (asterisk)
%% characters.
%%
%% </li> </ul>
create_log_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_stream(Client, Input, []).
create_log_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogStream">>, Input, Options).

%% @doc Deletes a CloudWatch Logs account policy.
%%
%% To use this operation, you must be signed on with the
%% `logs:DeleteDataProtectionPolicy' and `logs:DeleteAccountPolicy'
%% permissions.
delete_account_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_policy(Client, Input, []).
delete_account_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountPolicy">>, Input, Options).

%% @doc Deletes the data protection policy from the specified log group.
%%
%% For more information about data protection policies, see
%% PutDataProtectionPolicy.
delete_data_protection_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_protection_policy(Client, Input, []).
delete_data_protection_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataProtectionPolicy">>, Input, Options).

%% @doc Deletes the specified destination, and eventually disables all the
%% subscription filters that publish to it.
%%
%% This operation does not delete the physical resource encapsulated by the
%% destination.
delete_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_destination(Client, Input, []).
delete_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDestination">>, Input, Options).

%% @doc Deletes the specified log group and permanently deletes all the
%% archived log events associated with the log group.
delete_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_group(Client, Input, []).
delete_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogGroup">>, Input, Options).

%% @doc Deletes the specified log stream and permanently deletes all the
%% archived log events associated with the log stream.
delete_log_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_stream(Client, Input, []).
delete_log_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogStream">>, Input, Options).

%% @doc Deletes the specified metric filter.
delete_metric_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_metric_filter(Client, Input, []).
delete_metric_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMetricFilter">>, Input, Options).

%% @doc Deletes a saved CloudWatch Logs Insights query definition.
%%
%% A query definition contains details about a saved CloudWatch Logs Insights
%% query.
%%
%% Each `DeleteQueryDefinition' operation can delete one query
%% definition.
%%
%% You must have the `logs:DeleteQueryDefinition' permission to be able
%% to perform this operation.
delete_query_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_query_definition(Client, Input, []).
delete_query_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteQueryDefinition">>, Input, Options).

%% @doc Deletes a resource policy from this account.
%%
%% This revokes the access of the identities in that policy to put log events
%% to this account.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes the specified retention policy.
%%
%% Log events do not expire if they belong to log groups without a retention
%% policy.
delete_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_retention_policy(Client, Input, []).
delete_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRetentionPolicy">>, Input, Options).

%% @doc Deletes the specified subscription filter.
delete_subscription_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subscription_filter(Client, Input, []).
delete_subscription_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubscriptionFilter">>, Input, Options).

%% @doc Returns a list of all CloudWatch Logs account policies in the
%% account.
describe_account_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_policies(Client, Input, []).
describe_account_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountPolicies">>, Input, Options).

%% @doc Lists all your destinations.
%%
%% The results are ASCII-sorted by destination name.
describe_destinations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_destinations(Client, Input, []).
describe_destinations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDestinations">>, Input, Options).

%% @doc Lists the specified export tasks.
%%
%% You can list all your export tasks or filter the results based on task ID
%% or task status.
describe_export_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_tasks(Client, Input, []).
describe_export_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportTasks">>, Input, Options).

%% @doc Lists the specified log groups.
%%
%% You can list all your log groups or filter the results by prefix. The
%% results are ASCII-sorted by log group name.
%%
%% CloudWatch Logs doesn’t support IAM policies that control access to the
%% `DescribeLogGroups' action by using the `aws:ResourceTag/key-name
%% ' condition key. Other CloudWatch Logs actions do support the use of
%% the `aws:ResourceTag/key-name ' condition key to control access. For
%% more information about using tags to control access, see Controlling
%% access to Amazon Web Services resources using tags.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and view data from the linked source
%% accounts. For more information, see CloudWatch cross-account
%% observability.
describe_log_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_log_groups(Client, Input, []).
describe_log_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLogGroups">>, Input, Options).

%% @doc Lists the log streams for the specified log group.
%%
%% You can list all the log streams or filter the results by prefix. You can
%% also control how the results are ordered.
%%
%% You can specify the log group to search by using either
%% `logGroupIdentifier' or `logGroupName'. You must include one of
%% these two parameters, but you can't include both.
%%
%% This operation has a limit of five transactions per second, after which
%% transactions are throttled.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and view data from the linked source
%% accounts. For more information, see CloudWatch cross-account
%% observability.
describe_log_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_log_streams(Client, Input, []).
describe_log_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLogStreams">>, Input, Options).

%% @doc Lists the specified metric filters.
%%
%% You can list all of the metric filters or filter the results by log name,
%% prefix, metric name, or metric namespace. The results are ASCII-sorted by
%% filter name.
describe_metric_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_metric_filters(Client, Input, []).
describe_metric_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMetricFilters">>, Input, Options).

%% @doc Returns a list of CloudWatch Logs Insights queries that are
%% scheduled, running, or have been run recently in this account.
%%
%% You can request all queries or limit it to queries of a specific log group
%% or queries with a certain status.
describe_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_queries(Client, Input, []).
describe_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQueries">>, Input, Options).

%% @doc This operation returns a paginated list of your saved CloudWatch Logs
%% Insights query definitions.
%%
%% You can use the `queryDefinitionNamePrefix' parameter to limit the
%% results to only the query definitions that have names that start with a
%% certain string.
describe_query_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_query_definitions(Client, Input, []).
describe_query_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQueryDefinitions">>, Input, Options).

%% @doc Lists the resource policies in this account.
describe_resource_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_policies(Client, Input, []).
describe_resource_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourcePolicies">>, Input, Options).

%% @doc Lists the subscription filters for the specified log group.
%%
%% You can list all the subscription filters or filter the results by prefix.
%% The results are ASCII-sorted by filter name.
describe_subscription_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subscription_filters(Client, Input, []).
describe_subscription_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubscriptionFilters">>, Input, Options).

%% @doc Disassociates the specified KMS key from the specified log group or
%% from all CloudWatch Logs Insights query results in the account.
%%
%% When you use `DisassociateKmsKey', you specify either the
%% `logGroupName' parameter or the `resourceIdentifier' parameter.
%% You can't specify both of those parameters in the same operation.
%%
%% <ul> <li> Specify the `logGroupName' parameter to stop using the KMS
%% key to encrypt future log events ingested and stored in the log group.
%% Instead, they will be encrypted with the default CloudWatch Logs method.
%% The log events that were ingested while the key was associated with the
%% log group are still encrypted with that key. Therefore, CloudWatch Logs
%% will need permissions for the key whenever that data is accessed.
%%
%% </li> <li> Specify the `resourceIdentifier' parameter with the
%% `query-result' resource to stop using the KMS key to encrypt the
%% results of all future StartQuery operations in the account. They will
%% instead be encrypted with the default CloudWatch Logs method. The results
%% from queries that ran while the key was associated with the account are
%% still encrypted with that key. Therefore, CloudWatch Logs will need
%% permissions for the key whenever that data is accessed.
%%
%% </li> </ul> It can take up to 5 minutes for this operation to take effect.
disassociate_kms_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_kms_key(Client, Input, []).
disassociate_kms_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateKmsKey">>, Input, Options).

%% @doc Lists log events from the specified log group.
%%
%% You can list all the log events or filter the results using a filter
%% pattern, a time range, and the name of the log stream.
%%
%% You must have the `logs:FilterLogEvents' permission to perform this
%% operation.
%%
%% You can specify the log group to search by using either
%% `logGroupIdentifier' or `logGroupName'. You must include one of
%% these two parameters, but you can't include both.
%%
%% By default, this operation returns as many log events as can fit in 1 MB
%% (up to 10,000 log events) or all the events found within the specified
%% time range. If the results include a token, that means there are more log
%% events available. You can get additional results by specifying the token
%% in a subsequent call. This operation can return empty results while there
%% are more log events available through the token.
%%
%% The returned log events are sorted by event timestamp, the timestamp when
%% the event was ingested by CloudWatch Logs, and the ID of the
%% `PutLogEvents' request.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and view data from the linked source
%% accounts. For more information, see CloudWatch cross-account
%% observability.
filter_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    filter_log_events(Client, Input, []).
filter_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FilterLogEvents">>, Input, Options).

%% @doc Returns information about a log group data protection policy.
get_data_protection_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_protection_policy(Client, Input, []).
get_data_protection_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataProtectionPolicy">>, Input, Options).

%% @doc Lists log events from the specified log stream.
%%
%% You can list all of the log events or filter using a time range.
%%
%% By default, this operation returns as many log events as can fit in a
%% response size of 1MB (up to 10,000 log events). You can get additional log
%% events by specifying one of the tokens in a subsequent call. This
%% operation can return empty results while there are more log events
%% available through the token.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and view data from the linked source
%% accounts. For more information, see CloudWatch cross-account
%% observability.
%%
%% You can specify the log group to search by using either
%% `logGroupIdentifier' or `logGroupName'. You must include one of
%% these two parameters, but you can't include both.
get_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_log_events(Client, Input, []).
get_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLogEvents">>, Input, Options).

%% @doc Returns a list of the fields that are included in log events in the
%% specified log group.
%%
%% Includes the percentage of log events that contain each field. The search
%% is limited to a time period that you specify.
%%
%% You can specify the log group to search by using either
%% `logGroupIdentifier' or `logGroupName'. You must specify one of
%% these parameters, but you can't specify both.
%%
%% In the results, fields that start with `@' are fields generated by
%% CloudWatch Logs. For example, `@timestamp' is the timestamp of each
%% log event. For more information about the fields that are generated by
%% CloudWatch logs, see Supported Logs and Discovered Fields.
%%
%% The response results are sorted by the frequency percentage, starting with
%% the highest percentage.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account and view data from the linked source
%% accounts. For more information, see CloudWatch cross-account
%% observability.
get_log_group_fields(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_log_group_fields(Client, Input, []).
get_log_group_fields(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLogGroupFields">>, Input, Options).

%% @doc Retrieves all of the fields and values of a single log event.
%%
%% All fields are retrieved, even if the original query that produced the
%% `logRecordPointer' retrieved only a subset of fields. Fields are
%% returned as field name/field value pairs.
%%
%% The full unparsed log event is returned within `@message'.
get_log_record(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_log_record(Client, Input, []).
get_log_record(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLogRecord">>, Input, Options).

%% @doc Returns the results from the specified query.
%%
%% Only the fields requested in the query are returned, along with a
%% `@ptr' field, which is the identifier for the log record. You can use
%% the value of `@ptr' in a GetLogRecord operation to get the full log
%% record.
%%
%% `GetQueryResults' does not start running a query. To run a query, use
%% StartQuery.
%%
%% If the value of the `Status' field in the output is `Running',
%% this operation returns only partial results. If you see a value of
%% `Scheduled' or `Running' for the status, you can retry the
%% operation later to see the final results.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account to start queries in linked source
%% accounts. For more information, see CloudWatch cross-account
%% observability.
get_query_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_results(Client, Input, []).
get_query_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryResults">>, Input, Options).

%% @doc Displays the tags associated with a CloudWatch Logs resource.
%%
%% Currently, log groups and destinations support tagging.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc The ListTagsLogGroup operation is on the path to deprecation.
%%
%% We recommend that you use ListTagsForResource instead.
%%
%% Lists the tags for the specified log group.
list_tags_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_log_group(Client, Input, []).
list_tags_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsLogGroup">>, Input, Options).

%% @doc Creates an account-level data protection policy that applies to all
%% log groups in the account.
%%
%% A data protection policy can help safeguard sensitive data that's
%% ingested by your log groups by auditing and masking the sensitive log
%% data. Each account can have only one account-level policy.
%%
%% Sensitive data is detected and masked when it is ingested into a log
%% group. When you set a data protection policy, log events ingested into the
%% log groups before that time are not masked.
%%
%% If you use `PutAccountPolicy' to create a data protection policy for
%% your whole account, it applies to both existing log groups and all log
%% groups that are created later in this account. The account policy is
%% applied to existing log groups with eventual consistency. It might take up
%% to 5 minutes before sensitive data in existing log groups begins to be
%% masked.
%%
%% By default, when a user views a log event that includes masked data, the
%% sensitive data is replaced by asterisks. A user who has the
%% `logs:Unmask' permission can use a GetLogEvents or FilterLogEvents
%% operation with the `unmask' parameter set to `true' to view the
%% unmasked log events. Users with the `logs:Unmask' can also view
%% unmasked data in the CloudWatch Logs console by running a CloudWatch Logs
%% Insights query with the `unmask' query command.
%%
%% For more information, including a list of types of data that can be
%% audited and masked, see Protect sensitive log data with masking.
%%
%% To use the `PutAccountPolicy' operation, you must be signed on with
%% the `logs:PutDataProtectionPolicy' and `logs:PutAccountPolicy'
%% permissions.
%%
%% The `PutAccountPolicy' operation applies to all log groups in the
%% account. You can also use PutDataProtectionPolicy to create a data
%% protection policy that applies to just one log group. If a log group has
%% its own data protection policy and the account also has an account-level
%% data protection policy, then the two policies are cumulative. Any
%% sensitive term specified in either policy is masked.
put_account_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_policy(Client, Input, []).
put_account_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountPolicy">>, Input, Options).

%% @doc Creates a data protection policy for the specified log group.
%%
%% A data protection policy can help safeguard sensitive data that's
%% ingested by the log group by auditing and masking the sensitive log data.
%%
%% Sensitive data is detected and masked when it is ingested into the log
%% group. When you set a data protection policy, log events ingested into the
%% log group before that time are not masked.
%%
%% By default, when a user views a log event that includes masked data, the
%% sensitive data is replaced by asterisks. A user who has the
%% `logs:Unmask' permission can use a GetLogEvents or FilterLogEvents
%% operation with the `unmask' parameter set to `true' to view the
%% unmasked log events. Users with the `logs:Unmask' can also view
%% unmasked data in the CloudWatch Logs console by running a CloudWatch Logs
%% Insights query with the `unmask' query command.
%%
%% For more information, including a list of types of data that can be
%% audited and masked, see Protect sensitive log data with masking.
%%
%% The `PutDataProtectionPolicy' operation applies to only the specified
%% log group. You can also use PutAccountPolicy to create an account-level
%% data protection policy that applies to all log groups in the account,
%% including both existing log groups and log groups that are created level.
%% If a log group has its own data protection policy and the account also has
%% an account-level data protection policy, then the two policies are
%% cumulative. Any sensitive term specified in either policy is masked.
put_data_protection_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_data_protection_policy(Client, Input, []).
put_data_protection_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDataProtectionPolicy">>, Input, Options).

%% @doc Creates or updates a destination.
%%
%% This operation is used only to create destinations for cross-account
%% subscriptions.
%%
%% A destination encapsulates a physical resource (such as an Amazon Kinesis
%% stream). With a destination, you can subscribe to a real-time stream of
%% log events for a different account, ingested using PutLogEvents.
%%
%% Through an access policy, a destination controls what is written to it. By
%% default, `PutDestination' does not set any access policy with the
%% destination, which means a cross-account user cannot call
%% PutSubscriptionFilter against this destination. To enable this, the
%% destination owner must call PutDestinationPolicy after
%% `PutDestination'.
%%
%% To perform a `PutDestination' operation, you must also have the
%% `iam:PassRole' permission.
put_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_destination(Client, Input, []).
put_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDestination">>, Input, Options).

%% @doc Creates or updates an access policy associated with an existing
%% destination.
%%
%% An access policy is an IAM policy document that is used to authorize
%% claims to register a subscription filter against a given destination.
put_destination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_destination_policy(Client, Input, []).
put_destination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDestinationPolicy">>, Input, Options).

%% @doc Uploads a batch of log events to the specified log stream.
%%
%% The sequence token is now ignored in `PutLogEvents' actions.
%% `PutLogEvents' actions are always accepted and never return
%% `InvalidSequenceTokenException' or `DataAlreadyAcceptedException'
%% even if the sequence token is not valid. You can use parallel
%% `PutLogEvents' actions on the same log stream.
%%
%% The batch of events must satisfy the following constraints:
%%
%% <ul> <li> The maximum batch size is 1,048,576 bytes. This size is
%% calculated as the sum of all event messages in UTF-8, plus 26 bytes for
%% each log event.
%%
%% </li> <li> None of the log events in the batch can be more than 2 hours in
%% the future.
%%
%% </li> <li> None of the log events in the batch can be more than 14 days in
%% the past. Also, none of the log events can be from earlier than the
%% retention period of the log group.
%%
%% </li> <li> The log events in the batch must be in chronological order by
%% their timestamp. The timestamp is the time that the event occurred,
%% expressed as the number of milliseconds after `Jan 1, 1970 00:00:00
%% UTC'. (In Amazon Web Services Tools for PowerShell and the Amazon Web
%% Services SDK for .NET, the timestamp is specified in .NET format:
%% `yyyy-mm-ddThh:mm:ss'. For example, `2017-09-15T13:45:30'.)
%%
%% </li> <li> A batch of log events in a single request cannot span more than
%% 24 hours. Otherwise, the operation fails.
%%
%% </li> <li> Each log event can be no larger than 256 KB.
%%
%% </li> <li> The maximum number of log events in a batch is 10,000.
%%
%% </li> <li> The quota of five requests per second per log stream has been
%% removed. Instead, `PutLogEvents' actions are throttled based on a
%% per-second per-account quota. You can request an increase to the
%% per-second throttling quota by using the Service Quotas service.
%%
%% </li> </ul> If a call to `PutLogEvents' returns
%% &quot;UnrecognizedClientException&quot; the most likely cause is a
%% non-valid Amazon Web Services access key ID or secret key.
put_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_log_events(Client, Input, []).
put_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLogEvents">>, Input, Options).

%% @doc Creates or updates a metric filter and associates it with the
%% specified log group.
%%
%% With metric filters, you can configure rules to extract metric data from
%% log events ingested through PutLogEvents.
%%
%% The maximum number of metric filters that can be associated with a log
%% group is 100.
%%
%% When you create a metric filter, you can also optionally assign a unit and
%% dimensions to the metric that is created.
%%
%% Metrics extracted from log events are charged as custom metrics. To
%% prevent unexpected high charges, do not specify high-cardinality fields
%% such as `IPAddress' or `requestID' as dimensions. Each different
%% value found for a dimension is treated as a separate metric and accrues
%% charges as a separate custom metric.
%%
%% CloudWatch Logs might disable a metric filter if it generates 1,000
%% different name/value pairs for your specified dimensions within one hour.
%%
%% You can also set up a billing alarm to alert you if your charges are
%% higher than expected. For more information, see Creating a Billing Alarm
%% to Monitor Your Estimated Amazon Web Services Charges.
put_metric_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_metric_filter(Client, Input, []).
put_metric_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMetricFilter">>, Input, Options).

%% @doc Creates or updates a query definition for CloudWatch Logs Insights.
%%
%% For more information, see Analyzing Log Data with CloudWatch Logs
%% Insights.
%%
%% To update a query definition, specify its `queryDefinitionId' in your
%% request. The values of `name', `queryString', and
%% `logGroupNames' are changed to the values that you specify in your
%% update operation. No current values are retained from the current query
%% definition. For example, imagine updating a current query definition that
%% includes log groups. If you don't specify the `logGroupNames'
%% parameter in your update operation, the query definition changes to
%% contain no log groups.
%%
%% You must have the `logs:PutQueryDefinition' permission to be able to
%% perform this operation.
put_query_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_query_definition(Client, Input, []).
put_query_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutQueryDefinition">>, Input, Options).

%% @doc Creates or updates a resource policy allowing other Amazon Web
%% Services services to put log events to this account, such as Amazon Route
%% 53.
%%
%% An account can have up to 10 resource policies per Amazon Web Services
%% Region.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Sets the retention of the specified log group.
%%
%% With a retention policy, you can configure the number of days for which to
%% retain log events in the specified log group.
%%
%% CloudWatch Logs doesn’t immediately delete log events when they reach
%% their retention setting. It typically takes up to 72 hours after that
%% before log events are deleted, but in rare situations might take longer.
%%
%% To illustrate, imagine that you change a log group to have a longer
%% retention setting when it contains log events that are past the expiration
%% date, but haven’t been deleted. Those log events will take up to 72 hours
%% to be deleted after the new retention date is reached. To make sure that
%% log data is deleted permanently, keep a log group at its lower retention
%% setting until 72 hours after the previous retention period ends.
%% Alternatively, wait to change the retention setting until you confirm that
%% the earlier log events are deleted.
%%
%% When log events reach their retention setting they are marked for
%% deletion. After they are marked for deletion, they do not add to your
%% archival storage costs anymore, even if they are not actually deleted
%% until later. These log events marked for deletion are also not included
%% when you use an API to retrieve the `storedBytes' value to see how
%% many bytes a log group is storing.
put_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_retention_policy(Client, Input, []).
put_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRetentionPolicy">>, Input, Options).

%% @doc Creates or updates a subscription filter and associates it with the
%% specified log group.
%%
%% With subscription filters, you can subscribe to a real-time stream of log
%% events ingested through PutLogEvents and have them delivered to a specific
%% destination. When log events are sent to the receiving service, they are
%% Base64 encoded and compressed with the GZIP format.
%%
%% The following destinations are supported for subscription filters:
%%
%% <ul> <li> An Amazon Kinesis data stream belonging to the same account as
%% the subscription filter, for same-account delivery.
%%
%% </li> <li> A logical destination created with PutDestination that belongs
%% to a different account, for cross-account delivery. We currently support
%% Kinesis Data Streams and Kinesis Data Firehose as logical destinations.
%%
%% </li> <li> An Amazon Kinesis Data Firehose delivery stream that belongs to
%% the same account as the subscription filter, for same-account delivery.
%%
%% </li> <li> An Lambda function that belongs to the same account as the
%% subscription filter, for same-account delivery.
%%
%% </li> </ul> Each log group can have up to two subscription filters
%% associated with it. If you are updating an existing filter, you must
%% specify the correct name in `filterName'.
%%
%% To perform a `PutSubscriptionFilter' operation for any destination
%% except a Lambda function, you must also have the `iam:PassRole'
%% permission.
put_subscription_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_subscription_filter(Client, Input, []).
put_subscription_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSubscriptionFilter">>, Input, Options).

%% @doc Schedules a query of a log group using CloudWatch Logs Insights.
%%
%% You specify the log group and time range to query and the query string to
%% use.
%%
%% For more information, see CloudWatch Logs Insights Query Syntax.
%%
%% After you run a query using `StartQuery', the query results are stored
%% by CloudWatch Logs. You can use GetQueryResults to retrieve the results of
%% a query, using the `queryId' that `StartQuery' returns.
%%
%% If you have associated a KMS key with the query results in this account,
%% then StartQuery uses that key to encrypt the results when it stores them.
%% If no key is associated with query results, the query results are
%% encrypted with the default CloudWatch Logs encryption method.
%%
%% Queries time out after 60 minutes of runtime. If your queries are timing
%% out, reduce the time range being searched or partition your query into a
%% number of queries.
%%
%% If you are using CloudWatch cross-account observability, you can use this
%% operation in a monitoring account to start a query in a linked source
%% account. For more information, see CloudWatch cross-account observability.
%% For a cross-account `StartQuery' operation, the query definition must
%% be defined in the monitoring account.
%%
%% You can have up to 30 concurrent CloudWatch Logs insights queries,
%% including queries that have been added to dashboards.
start_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_query(Client, Input, []).
start_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartQuery">>, Input, Options).

%% @doc Stops a CloudWatch Logs Insights query that is in progress.
%%
%% If the query has already ended, the operation returns an error indicating
%% that the specified query is not running.
stop_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_query(Client, Input, []).
stop_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopQuery">>, Input, Options).

%% @doc The TagLogGroup operation is on the path to deprecation.
%%
%% We recommend that you use TagResource instead.
%%
%% Adds or updates the specified tags for the specified log group.
%%
%% To list the tags for a log group, use ListTagsForResource. To remove tags,
%% use UntagResource.
%%
%% For more information about tags, see Tag Log Groups in Amazon CloudWatch
%% Logs in the Amazon CloudWatch Logs User Guide.
%%
%% CloudWatch Logs doesn’t support IAM policies that prevent users from
%% assigning specified tags to log groups using the `aws:Resource/key-name
%% ' or `aws:TagKeys' condition keys. For more information about
%% using tags to control access, see Controlling access to Amazon Web
%% Services resources using tags.
tag_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_log_group(Client, Input, []).
tag_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagLogGroup">>, Input, Options).

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% CloudWatch Logs resource.
%%
%% Currently, the only CloudWatch Logs resources that can be tagged are log
%% groups and destinations.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags. If you specify a new tag key for the alarm, this tag is appended to
%% the list of tags associated with the alarm. If you specify a tag key that
%% is already associated with the alarm, the new tag value that you specify
%% replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a CloudWatch Logs resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Tests the filter pattern of a metric filter against a sample of log
%% event messages.
%%
%% You can use this operation to validate the correctness of a metric filter
%% pattern.
test_metric_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_metric_filter(Client, Input, []).
test_metric_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestMetricFilter">>, Input, Options).

%% @doc The UntagLogGroup operation is on the path to deprecation.
%%
%% We recommend that you use UntagResource instead.
%%
%% Removes the specified tags from the specified log group.
%%
%% To list the tags for a log group, use ListTagsForResource. To add tags,
%% use TagResource.
%%
%% CloudWatch Logs doesn’t support IAM policies that prevent users from
%% assigning specified tags to log groups using the `aws:Resource/key-name
%% ' or `aws:TagKeys' condition keys.
untag_log_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_log_group(Client, Input, []).
untag_log_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagLogGroup">>, Input, Options).

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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"logs">>},
    Host = build_host(<<"logs">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Logs_20140328.", Action/binary>>}
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
