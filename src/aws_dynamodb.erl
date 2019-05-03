%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon DynamoDB</fullname>
%%
%% Amazon DynamoDB is a fully managed NoSQL database service that provides
%% fast and predictable performance with seamless scalability. DynamoDB lets
%% you offload the administrative burdens of operating and scaling a
%% distributed database, so that you don't have to worry about hardware
%% provisioning, setup and configuration, replication, software patching, or
%% cluster scaling.
%%
%% With DynamoDB, you can create database tables that can store and retrieve
%% any amount of data, and serve any level of request traffic. You can scale
%% up or scale down your tables' throughput capacity without downtime or
%% performance degradation, and use the AWS Management Console to monitor
%% resource utilization and performance metrics.
%%
%% DynamoDB automatically spreads the data and traffic for your tables over a
%% sufficient number of servers to handle your throughput and storage
%% requirements, while maintaining consistent and fast performance. All of
%% your data is stored on solid state disks (SSDs) and automatically
%% replicated across multiple Availability Zones in an AWS region, providing
%% built-in high availability and data durability.
-module(aws_dynamodb).

-export([batch_get_item/2,
         batch_get_item/3,
         batch_write_item/2,
         batch_write_item/3,
         create_backup/2,
         create_backup/3,
         create_global_table/2,
         create_global_table/3,
         create_table/2,
         create_table/3,
         delete_backup/2,
         delete_backup/3,
         delete_item/2,
         delete_item/3,
         delete_table/2,
         delete_table/3,
         describe_backup/2,
         describe_backup/3,
         describe_continuous_backups/2,
         describe_continuous_backups/3,
         describe_endpoints/2,
         describe_endpoints/3,
         describe_global_table/2,
         describe_global_table/3,
         describe_global_table_settings/2,
         describe_global_table_settings/3,
         describe_limits/2,
         describe_limits/3,
         describe_table/2,
         describe_table/3,
         describe_time_to_live/2,
         describe_time_to_live/3,
         get_item/2,
         get_item/3,
         list_backups/2,
         list_backups/3,
         list_global_tables/2,
         list_global_tables/3,
         list_tables/2,
         list_tables/3,
         list_tags_of_resource/2,
         list_tags_of_resource/3,
         put_item/2,
         put_item/3,
         query/2,
         query/3,
         restore_table_from_backup/2,
         restore_table_from_backup/3,
         restore_table_to_point_in_time/2,
         restore_table_to_point_in_time/3,
         scan/2,
         scan/3,
         tag_resource/2,
         tag_resource/3,
         transact_get_items/2,
         transact_get_items/3,
         transact_write_items/2,
         transact_write_items/3,
         untag_resource/2,
         untag_resource/3,
         update_continuous_backups/2,
         update_continuous_backups/3,
         update_global_table/2,
         update_global_table/3,
         update_global_table_settings/2,
         update_global_table_settings/3,
         update_item/2,
         update_item/3,
         update_table/2,
         update_table/3,
         update_time_to_live/2,
         update_time_to_live/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc The <code>BatchGetItem</code> operation returns the attributes of one
%% or more items from one or more tables. You identify requested items by
%% primary key.
%%
%% A single operation can retrieve up to 16 MB of data, which can contain as
%% many as 100 items. <code>BatchGetItem</code> will return a partial result
%% if the response size limit is exceeded, the table's provisioned throughput
%% is exceeded, or an internal processing failure occurs. If a partial result
%% is returned, the operation returns a value for
%% <code>UnprocessedKeys</code>. You can use this value to retry the
%% operation starting with the next item to get.
%%
%% <important> If you request more than 100 items <code>BatchGetItem</code>
%% will return a <code>ValidationException</code> with the message "Too many
%% items requested for the BatchGetItem call".
%%
%% </important> For example, if you ask to retrieve 100 items, but each
%% individual item is 300 KB in size, the system returns 52 items (so as not
%% to exceed the 16 MB limit). It also returns an appropriate
%% <code>UnprocessedKeys</code> value so you can get the next page of
%% results. If desired, your application can include its own logic to
%% assemble the pages of results into one data set.
%%
%% If <i>none</i> of the items can be processed due to insufficient
%% provisioned throughput on all of the tables in the request, then
%% <code>BatchGetItem</code> will return a
%% <code>ProvisionedThroughputExceededException</code>. If <i>at least
%% one</i> of the items is successfully processed, then
%% <code>BatchGetItem</code> completes successfully, while returning the keys
%% of the unread items in <code>UnprocessedKeys</code>.
%%
%% <important> If DynamoDB returns any unprocessed items, you should retry
%% the batch operation on those items. However, <i>we strongly recommend that
%% you use an exponential backoff algorithm</i>. If you retry the batch
%% operation immediately, the underlying read or write requests can still
%% fail due to throttling on the individual tables. If you delay the batch
%% operation using exponential backoff, the individual requests in the batch
%% are much more likely to succeed.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations">Batch
%% Operations and Error Handling</a> in the <i>Amazon DynamoDB Developer
%% Guide</i>.
%%
%% </important> By default, <code>BatchGetItem</code> performs eventually
%% consistent reads on every table in the request. If you want strongly
%% consistent reads instead, you can set <code>ConsistentRead</code> to
%% <code>true</code> for any or all tables.
%%
%% In order to minimize response latency, <code>BatchGetItem</code> retrieves
%% items in parallel.
%%
%% When designing your application, keep in mind that DynamoDB does not
%% return items in any particular order. To help parse the response by item,
%% include the primary key values for the items in your request in the
%% <code>ProjectionExpression</code> parameter.
%%
%% If a requested item does not exist, it is not returned in the result.
%% Requests for nonexistent items consume the minimum read capacity units
%% according to the type of read. For more information, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations">Capacity
%% Units Calculations</a> in the <i>Amazon DynamoDB Developer Guide</i>.
batch_get_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_item(Client, Input, []).
batch_get_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetItem">>, Input, Options).

%% @doc The <code>BatchWriteItem</code> operation puts or deletes multiple
%% items in one or more tables. A single call to <code>BatchWriteItem</code>
%% can write up to 16 MB of data, which can comprise as many as 25 put or
%% delete requests. Individual items to be written can be as large as 400 KB.
%%
%% <note> <code>BatchWriteItem</code> cannot update items. To update items,
%% use the <code>UpdateItem</code> action.
%%
%% </note> The individual <code>PutItem</code> and <code>DeleteItem</code>
%% operations specified in <code>BatchWriteItem</code> are atomic; however
%% <code>BatchWriteItem</code> as a whole is not. If any requested operations
%% fail because the table's provisioned throughput is exceeded or an internal
%% processing failure occurs, the failed operations are returned in the
%% <code>UnprocessedItems</code> response parameter. You can investigate and
%% optionally resend the requests. Typically, you would call
%% <code>BatchWriteItem</code> in a loop. Each iteration would check for
%% unprocessed items and submit a new <code>BatchWriteItem</code> request
%% with those unprocessed items until all items have been processed.
%%
%% Note that if <i>none</i> of the items can be processed due to insufficient
%% provisioned throughput on all of the tables in the request, then
%% <code>BatchWriteItem</code> will return a
%% <code>ProvisionedThroughputExceededException</code>.
%%
%% <important> If DynamoDB returns any unprocessed items, you should retry
%% the batch operation on those items. However, <i>we strongly recommend that
%% you use an exponential backoff algorithm</i>. If you retry the batch
%% operation immediately, the underlying read or write requests can still
%% fail due to throttling on the individual tables. If you delay the batch
%% operation using exponential backoff, the individual requests in the batch
%% are much more likely to succeed.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations">Batch
%% Operations and Error Handling</a> in the <i>Amazon DynamoDB Developer
%% Guide</i>.
%%
%% </important> With <code>BatchWriteItem</code>, you can efficiently write
%% or delete large amounts of data, such as from Amazon Elastic MapReduce
%% (EMR), or copy data from another database into DynamoDB. In order to
%% improve performance with these large-scale operations,
%% <code>BatchWriteItem</code> does not behave in the same way as individual
%% <code>PutItem</code> and <code>DeleteItem</code> calls would. For example,
%% you cannot specify conditions on individual put and delete requests, and
%% <code>BatchWriteItem</code> does not return deleted items in the response.
%%
%% If you use a programming language that supports concurrency, you can use
%% threads to write items in parallel. Your application must include the
%% necessary logic to manage the threads. With languages that don't support
%% threading, you must update or delete the specified items one at a time. In
%% both situations, <code>BatchWriteItem</code> performs the specified put
%% and delete operations in parallel, giving you the power of the thread pool
%% approach without having to introduce complexity into your application.
%%
%% Parallel processing reduces latency, but each specified put and delete
%% request consumes the same number of write capacity units whether it is
%% processed in parallel or not. Delete operations on nonexistent items
%% consume one write capacity unit.
%%
%% If one or more of the following is true, DynamoDB rejects the entire batch
%% write operation:
%%
%% <ul> <li> One or more tables specified in the <code>BatchWriteItem</code>
%% request does not exist.
%%
%% </li> <li> Primary key attributes specified on an item in the request do
%% not match those in the corresponding table's primary key schema.
%%
%% </li> <li> You try to perform multiple operations on the same item in the
%% same <code>BatchWriteItem</code> request. For example, you cannot put and
%% delete the same item in the same <code>BatchWriteItem</code> request.
%%
%% </li> <li> Your request contains at least two items with identical hash
%% and range keys (which essentially is two put operations).
%%
%% </li> <li> There are more than 25 requests in the batch.
%%
%% </li> <li> Any individual item in a batch exceeds 400 KB.
%%
%% </li> <li> The total request size exceeds 16 MB.
%%
%% </li> </ul>
batch_write_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_write_item(Client, Input, []).
batch_write_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchWriteItem">>, Input, Options).

%% @doc Creates a backup for an existing table.
%%
%% Each time you create an On-Demand Backup, the entire table data is backed
%% up. There is no limit to the number of on-demand backups that can be
%% taken.
%%
%% When you create an On-Demand Backup, a time marker of the request is
%% cataloged, and the backup is created asynchronously, by applying all
%% changes until the time of the request to the last full table snapshot.
%% Backup requests are processed instantaneously and become available for
%% restore within minutes.
%%
%% You can call <code>CreateBackup</code> at a maximum rate of 50 times per
%% second.
%%
%% All backups in DynamoDB work without consuming any provisioned throughput
%% on the table.
%%
%% If you submit a backup request on 2018-12-14 at 14:25:00, the backup is
%% guaranteed to contain all data committed to the table up to 14:24:00, and
%% data committed after 14:26:00 will not be. The backup may or may not
%% contain data modifications made between 14:24:00 and 14:26:00. On-Demand
%% Backup does not support causal consistency.
%%
%% Along with data, the following are also included on the backups:
%%
%% <ul> <li> Global secondary indexes (GSIs)
%%
%% </li> <li> Local secondary indexes (LSIs)
%%
%% </li> <li> Streams
%%
%% </li> <li> Provisioned read and write capacity
%%
%% </li> </ul>
create_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_backup(Client, Input, []).
create_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBackup">>, Input, Options).

%% @doc Creates a global table from an existing table. A global table creates
%% a replication relationship between two or more DynamoDB tables with the
%% same table name in the provided regions.
%%
%% If you want to add a new replica table to a global table, each of the
%% following conditions must be true:
%%
%% <ul> <li> The table must have the same primary key as all of the other
%% replicas.
%%
%% </li> <li> The table must have the same name as all of the other replicas.
%%
%% </li> <li> The table must have DynamoDB Streams enabled, with the stream
%% containing both the new and the old images of the item.
%%
%% </li> <li> None of the replica tables in the global table can contain any
%% data.
%%
%% </li> </ul> If global secondary indexes are specified, then the following
%% conditions must also be met:
%%
%% <ul> <li> The global secondary indexes must have the same name.
%%
%% </li> <li> The global secondary indexes must have the same hash key and
%% sort key (if present).
%%
%% </li> </ul> <important> Write capacity settings should be set consistently
%% across your replica tables and secondary indexes. DynamoDB strongly
%% recommends enabling auto scaling to manage the write capacity settings for
%% all of your global tables replicas and indexes.
%%
%% If you prefer to manage write capacity settings manually, you should
%% provision equal replicated write capacity units to your replica tables.
%% You should also provision equal replicated write capacity units to
%% matching secondary indexes across your global table.
%%
%% </important>
create_global_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_global_table(Client, Input, []).
create_global_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGlobalTable">>, Input, Options).

%% @doc The <code>CreateTable</code> operation adds a new table to your
%% account. In an AWS account, table names must be unique within each region.
%% That is, you can have two tables with same name if you create the tables
%% in different regions.
%%
%% <code>CreateTable</code> is an asynchronous operation. Upon receiving a
%% <code>CreateTable</code> request, DynamoDB immediately returns a response
%% with a <code>TableStatus</code> of <code>CREATING</code>. After the table
%% is created, DynamoDB sets the <code>TableStatus</code> to
%% <code>ACTIVE</code>. You can perform read and write operations only on an
%% <code>ACTIVE</code> table.
%%
%% You can optionally define secondary indexes on the new table, as part of
%% the <code>CreateTable</code> operation. If you want to create multiple
%% tables with secondary indexes on them, you must create the tables
%% sequentially. Only one table with secondary indexes can be in the
%% <code>CREATING</code> state at any given time.
%%
%% You can use the <code>DescribeTable</code> action to check the table
%% status.
create_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_table(Client, Input, []).
create_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTable">>, Input, Options).

%% @doc Deletes an existing backup of a table.
%%
%% You can call <code>DeleteBackup</code> at a maximum rate of 10 times per
%% second.
delete_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_backup(Client, Input, []).
delete_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBackup">>, Input, Options).

%% @doc Deletes a single item in a table by primary key. You can perform a
%% conditional delete operation that deletes the item if it exists, or if it
%% has an expected attribute value.
%%
%% In addition to deleting an item, you can also return the item's attribute
%% values in the same operation, using the <code>ReturnValues</code>
%% parameter.
%%
%% Unless you specify conditions, the <code>DeleteItem</code> is an
%% idempotent operation; running it multiple times on the same item or
%% attribute does <i>not</i> result in an error response.
%%
%% Conditional deletes are useful for deleting items only if specific
%% conditions are met. If those conditions are met, DynamoDB performs the
%% delete. Otherwise, the item is not deleted.
delete_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_item(Client, Input, []).
delete_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteItem">>, Input, Options).

%% @doc The <code>DeleteTable</code> operation deletes a table and all of its
%% items. After a <code>DeleteTable</code> request, the specified table is in
%% the <code>DELETING</code> state until DynamoDB completes the deletion. If
%% the table is in the <code>ACTIVE</code> state, you can delete it. If a
%% table is in <code>CREATING</code> or <code>UPDATING</code> states, then
%% DynamoDB returns a <code>ResourceInUseException</code>. If the specified
%% table does not exist, DynamoDB returns a
%% <code>ResourceNotFoundException</code>. If table is already in the
%% <code>DELETING</code> state, no error is returned.
%%
%% <note> DynamoDB might continue to accept data read and write operations,
%% such as <code>GetItem</code> and <code>PutItem</code>, on a table in the
%% <code>DELETING</code> state until the table deletion is complete.
%%
%% </note> When you delete a table, any indexes on that table are also
%% deleted.
%%
%% If you have DynamoDB Streams enabled on the table, then the corresponding
%% stream on that table goes into the <code>DISABLED</code> state, and the
%% stream is automatically deleted after 24 hours.
%%
%% Use the <code>DescribeTable</code> action to check the status of the
%% table.
delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table(Client, Input, []).
delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTable">>, Input, Options).

%% @doc Describes an existing backup of a table.
%%
%% You can call <code>DescribeBackup</code> at a maximum rate of 10 times per
%% second.
describe_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_backup(Client, Input, []).
describe_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBackup">>, Input, Options).

%% @doc Checks the status of continuous backups and point in time recovery on
%% the specified table. Continuous backups are <code>ENABLED</code> on all
%% tables at table creation. If point in time recovery is enabled,
%% <code>PointInTimeRecoveryStatus</code> will be set to ENABLED.
%%
%% Once continuous backups and point in time recovery are enabled, you can
%% restore to any point in time within
%% <code>EarliestRestorableDateTime</code> and
%% <code>LatestRestorableDateTime</code>.
%%
%% <code>LatestRestorableDateTime</code> is typically 5 minutes before the
%% current time. You can restore your table to any point in time during the
%% last 35 days.
%%
%% You can call <code>DescribeContinuousBackups</code> at a maximum rate of
%% 10 times per second.
describe_continuous_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_continuous_backups(Client, Input, []).
describe_continuous_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContinuousBackups">>, Input, Options).

%% @doc Returns the regional endpoint information.
describe_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoints(Client, Input, []).
describe_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoints">>, Input, Options).

%% @doc Returns information about the specified global table.
describe_global_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_global_table(Client, Input, []).
describe_global_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGlobalTable">>, Input, Options).

%% @doc Describes region specific settings for a global table.
describe_global_table_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_global_table_settings(Client, Input, []).
describe_global_table_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGlobalTableSettings">>, Input, Options).

%% @doc Returns the current provisioned-capacity limits for your AWS account
%% in a region, both for the region as a whole and for any one DynamoDB table
%% that you create there.
%%
%% When you establish an AWS account, the account has initial limits on the
%% maximum read capacity units and write capacity units that you can
%% provision across all of your DynamoDB tables in a given region. Also,
%% there are per-table limits that apply when you create a table there. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a>
%% page in the <i>Amazon DynamoDB Developer Guide</i>.
%%
%% Although you can increase these limits by filing a case at <a
%% href="https://console.aws.amazon.com/support/home#/">AWS Support
%% Center</a>, obtaining the increase is not instantaneous. The
%% <code>DescribeLimits</code> action lets you write code to compare the
%% capacity you are currently using to those limits imposed by your account
%% so that you have enough time to apply for an increase before you hit a
%% limit.
%%
%% For example, you could use one of the AWS SDKs to do the following:
%%
%% <ol> <li> Call <code>DescribeLimits</code> for a particular region to
%% obtain your current account limits on provisioned capacity there.
%%
%% </li> <li> Create a variable to hold the aggregate read capacity units
%% provisioned for all your tables in that region, and one to hold the
%% aggregate write capacity units. Zero them both.
%%
%% </li> <li> Call <code>ListTables</code> to obtain a list of all your
%% DynamoDB tables.
%%
%% </li> <li> For each table name listed by <code>ListTables</code>, do the
%% following:
%%
%% <ul> <li> Call <code>DescribeTable</code> with the table name.
%%
%% </li> <li> Use the data returned by <code>DescribeTable</code> to add the
%% read capacity units and write capacity units provisioned for the table
%% itself to your variables.
%%
%% </li> <li> If the table has one or more global secondary indexes (GSIs),
%% loop over these GSIs and add their provisioned capacity values to your
%% variables as well.
%%
%% </li> </ul> </li> <li> Report the account limits for that region returned
%% by <code>DescribeLimits</code>, along with the total current provisioned
%% capacity levels you have calculated.
%%
%% </li> </ol> This will let you see whether you are getting close to your
%% account-level limits.
%%
%% The per-table limits apply only when you are creating a new table. They
%% restrict the sum of the provisioned capacity of the new table itself and
%% all its global secondary indexes.
%%
%% For existing tables and their GSIs, DynamoDB will not let you increase
%% provisioned capacity extremely rapidly, but the only upper limit that
%% applies is that the aggregate provisioned capacity over all your tables
%% and GSIs cannot exceed either of the per-account limits.
%%
%% <note> <code>DescribeLimits</code> should only be called periodically. You
%% can expect throttling errors if you call it more than once in a minute.
%%
%% </note> The <code>DescribeLimits</code> Request element has no content.
describe_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_limits(Client, Input, []).
describe_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLimits">>, Input, Options).

%% @doc Returns information about the table, including the current status of
%% the table, when it was created, the primary key schema, and any indexes on
%% the table.
%%
%% <note> If you issue a <code>DescribeTable</code> request immediately after
%% a <code>CreateTable</code> request, DynamoDB might return a
%% <code>ResourceNotFoundException</code>. This is because
%% <code>DescribeTable</code> uses an eventually consistent query, and the
%% metadata for your table might not be available at that moment. Wait for a
%% few seconds, and then try the <code>DescribeTable</code> request again.
%%
%% </note>
describe_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table(Client, Input, []).
describe_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTable">>, Input, Options).

%% @doc Gives a description of the Time to Live (TTL) status on the specified
%% table.
describe_time_to_live(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_time_to_live(Client, Input, []).
describe_time_to_live(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTimeToLive">>, Input, Options).

%% @doc The <code>GetItem</code> operation returns a set of attributes for
%% the item with the given primary key. If there is no matching item,
%% <code>GetItem</code> does not return any data and there will be no
%% <code>Item</code> element in the response.
%%
%% <code>GetItem</code> provides an eventually consistent read by default. If
%% your application requires a strongly consistent read, set
%% <code>ConsistentRead</code> to <code>true</code>. Although a strongly
%% consistent read might take more time than an eventually consistent read,
%% it always returns the last updated value.
get_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_item(Client, Input, []).
get_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetItem">>, Input, Options).

%% @doc List backups associated with an AWS account. To list backups for a
%% given table, specify <code>TableName</code>. <code>ListBackups</code>
%% returns a paginated list of results with at most 1MB worth of items in a
%% page. You can also specify a limit for the maximum number of entries to be
%% returned in a page.
%%
%% In the request, start time is inclusive but end time is exclusive. Note
%% that these limits are for the time at which the original backup was
%% requested.
%%
%% You can call <code>ListBackups</code> a maximum of 5 times per second.
list_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_backups(Client, Input, []).
list_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBackups">>, Input, Options).

%% @doc Lists all global tables that have a replica in the specified region.
list_global_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_global_tables(Client, Input, []).
list_global_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGlobalTables">>, Input, Options).

%% @doc Returns an array of table names associated with the current account
%% and endpoint. The output from <code>ListTables</code> is paginated, with
%% each page returning a maximum of 100 table names.
list_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tables(Client, Input, []).
list_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTables">>, Input, Options).

%% @doc List all tags on an Amazon DynamoDB resource. You can call
%% ListTagsOfResource up to 10 times per second, per account.
%%
%% For an overview on tagging DynamoDB resources, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging
%% for DynamoDB</a> in the <i>Amazon DynamoDB Developer Guide</i>.
list_tags_of_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_of_resource(Client, Input, []).
list_tags_of_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsOfResource">>, Input, Options).

%% @doc Creates a new item, or replaces an old item with a new item. If an
%% item that has the same primary key as the new item already exists in the
%% specified table, the new item completely replaces the existing item. You
%% can perform a conditional put operation (add a new item if one with the
%% specified primary key doesn't exist), or replace an existing item if it
%% has certain attribute values. You can return the item's attribute values
%% in the same operation, using the <code>ReturnValues</code> parameter.
%%
%% <important> This topic provides general information about the
%% <code>PutItem</code> API.
%%
%% For information on how to call the <code>PutItem</code> API using the AWS
%% SDK in specific languages, see the following:
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/goto/aws-cli/dynamodb-2012-08-10/PutItem">
%% PutItem in the AWS Command Line Interface </a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/goto/DotNetSDKV3/dynamodb-2012-08-10/PutItem">
%% PutItem in the AWS SDK for .NET </a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/goto/SdkForCpp/dynamodb-2012-08-10/PutItem">
%% PutItem in the AWS SDK for C++ </a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/goto/SdkForGoV1/dynamodb-2012-08-10/PutItem">
%% PutItem in the AWS SDK for Go </a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/goto/SdkForJava/dynamodb-2012-08-10/PutItem">
%% PutItem in the AWS SDK for Java </a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/goto/AWSJavaScriptSDK/dynamodb-2012-08-10/PutItem">
%% PutItem in the AWS SDK for JavaScript </a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/goto/SdkForPHPV3/dynamodb-2012-08-10/PutItem">
%% PutItem in the AWS SDK for PHP V3 </a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/goto/boto3/dynamodb-2012-08-10/PutItem">
%% PutItem in the AWS SDK for Python </a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/goto/SdkForRubyV2/dynamodb-2012-08-10/PutItem">
%% PutItem in the AWS SDK for Ruby V2 </a>
%%
%% </li> </ul> </important> When you add an item, the primary key
%% attribute(s) are the only required attributes. Attribute values cannot be
%% null. String and Binary type attributes must have lengths greater than
%% zero. Set type attributes cannot be empty. Requests with empty values will
%% be rejected with a <code>ValidationException</code> exception.
%%
%% <note> To prevent a new item from replacing an existing item, use a
%% conditional expression that contains the <code>attribute_not_exists</code>
%% function with the name of the attribute being used as the partition key
%% for the table. Since every record must contain that attribute, the
%% <code>attribute_not_exists</code> function will only succeed if no
%% matching item exists.
%%
%% </note> For more information about <code>PutItem</code>, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html">Working
%% with Items</a> in the <i>Amazon DynamoDB Developer Guide</i>.
put_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_item(Client, Input, []).
put_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutItem">>, Input, Options).

%% @doc The <code>Query</code> operation finds items based on primary key
%% values. You can query any table or secondary index that has a composite
%% primary key (a partition key and a sort key).
%%
%% Use the <code>KeyConditionExpression</code> parameter to provide a
%% specific value for the partition key. The <code>Query</code> operation
%% will return all of the items from the table or index with that partition
%% key value. You can optionally narrow the scope of the <code>Query</code>
%% operation by specifying a sort key value and a comparison operator in
%% <code>KeyConditionExpression</code>. To further refine the
%% <code>Query</code> results, you can optionally provide a
%% <code>FilterExpression</code>. A <code>FilterExpression</code> determines
%% which items within the results should be returned to you. All of the other
%% results are discarded.
%%
%% A <code>Query</code> operation always returns a result set. If no matching
%% items are found, the result set will be empty. Queries that do not return
%% results consume the minimum number of read capacity units for that type of
%% read operation.
%%
%% <note> DynamoDB calculates the number of read capacity units consumed
%% based on item size, not on the amount of data that is returned to an
%% application. The number of capacity units consumed will be the same
%% whether you request all of the attributes (the default behavior) or just
%% some of them (using a projection expression). The number will also be the
%% same whether or not you use a <code>FilterExpression</code>.
%%
%% </note> <code>Query</code> results are always sorted by the sort key
%% value. If the data type of the sort key is Number, the results are
%% returned in numeric order; otherwise, the results are returned in order of
%% UTF-8 bytes. By default, the sort order is ascending. To reverse the
%% order, set the <code>ScanIndexForward</code> parameter to false.
%%
%% A single <code>Query</code> operation will read up to the maximum number
%% of items set (if using the <code>Limit</code> parameter) or a maximum of 1
%% MB of data and then apply any filtering to the results using
%% <code>FilterExpression</code>. If <code>LastEvaluatedKey</code> is present
%% in the response, you will need to paginate the result set. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination">Paginating
%% the Results</a> in the <i>Amazon DynamoDB Developer Guide</i>.
%%
%% <code>FilterExpression</code> is applied after a <code>Query</code>
%% finishes, but before the results are returned. A
%% <code>FilterExpression</code> cannot contain partition key or sort key
%% attributes. You need to specify those attributes in the
%% <code>KeyConditionExpression</code>.
%%
%% <note> A <code>Query</code> operation can return an empty result set and a
%% <code>LastEvaluatedKey</code> if all the items read for the page of
%% results are filtered out.
%%
%% </note> You can query a table, a local secondary index, or a global
%% secondary index. For a query on a table or on a local secondary index, you
%% can set the <code>ConsistentRead</code> parameter to <code>true</code> and
%% obtain a strongly consistent result. Global secondary indexes support
%% eventually consistent reads only, so do not specify
%% <code>ConsistentRead</code> when querying a global secondary index.
query(Client, Input)
  when is_map(Client), is_map(Input) ->
    query(Client, Input, []).
query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Query">>, Input, Options).

%% @doc Creates a new table from an existing backup. Any number of users can
%% execute up to 4 concurrent restores (any type of restore) in a given
%% account.
%%
%% You can call <code>RestoreTableFromBackup</code> at a maximum rate of 10
%% times per second.
%%
%% You must manually set up the following on the restored table:
%%
%% <ul> <li> Auto scaling policies
%%
%% </li> <li> IAM policies
%%
%% </li> <li> Cloudwatch metrics and alarms
%%
%% </li> <li> Tags
%%
%% </li> <li> Stream settings
%%
%% </li> <li> Time to Live (TTL) settings
%%
%% </li> </ul>
restore_table_from_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table_from_backup(Client, Input, []).
restore_table_from_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTableFromBackup">>, Input, Options).

%% @doc Restores the specified table to the specified point in time within
%% <code>EarliestRestorableDateTime</code> and
%% <code>LatestRestorableDateTime</code>. You can restore your table to any
%% point in time during the last 35 days. Any number of users can execute up
%% to 4 concurrent restores (any type of restore) in a given account.
%%
%% When you restore using point in time recovery, DynamoDB restores your
%% table data to the state based on the selected date and time
%% (day:hour:minute:second) to a new table.
%%
%% Along with data, the following are also included on the new restored table
%% using point in time recovery:
%%
%% <ul> <li> Global secondary indexes (GSIs)
%%
%% </li> <li> Local secondary indexes (LSIs)
%%
%% </li> <li> Provisioned read and write capacity
%%
%% </li> <li> Encryption settings
%%
%% <important> All these settings come from the current settings of the
%% source table at the time of restore.
%%
%% </important> </li> </ul> You must manually set up the following on the
%% restored table:
%%
%% <ul> <li> Auto scaling policies
%%
%% </li> <li> IAM policies
%%
%% </li> <li> Cloudwatch metrics and alarms
%%
%% </li> <li> Tags
%%
%% </li> <li> Stream settings
%%
%% </li> <li> Time to Live (TTL) settings
%%
%% </li> <li> Point in time recovery settings
%%
%% </li> </ul>
restore_table_to_point_in_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table_to_point_in_time(Client, Input, []).
restore_table_to_point_in_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTableToPointInTime">>, Input, Options).

%% @doc The <code>Scan</code> operation returns one or more items and item
%% attributes by accessing every item in a table or a secondary index. To
%% have DynamoDB return fewer items, you can provide a
%% <code>FilterExpression</code> operation.
%%
%% If the total number of scanned items exceeds the maximum data set size
%% limit of 1 MB, the scan stops and results are returned to the user as a
%% <code>LastEvaluatedKey</code> value to continue the scan in a subsequent
%% operation. The results also include the number of items exceeding the
%% limit. A scan can result in no table data meeting the filter criteria.
%%
%% A single <code>Scan</code> operation will read up to the maximum number of
%% items set (if using the <code>Limit</code> parameter) or a maximum of 1 MB
%% of data and then apply any filtering to the results using
%% <code>FilterExpression</code>. If <code>LastEvaluatedKey</code> is present
%% in the response, you will need to paginate the result set. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination">Paginating
%% the Results</a> in the <i>Amazon DynamoDB Developer Guide</i>.
%%
%% <code>Scan</code> operations proceed sequentially; however, for faster
%% performance on a large table or secondary index, applications can request
%% a parallel <code>Scan</code> operation by providing the
%% <code>Segment</code> and <code>TotalSegments</code> parameters. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan">Parallel
%% Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.
%%
%% <code>Scan</code> uses eventually consistent reads when accessing the data
%% in a table; therefore, the result set might not include the changes to
%% data in the table immediately before the operation began. If you need a
%% consistent copy of the data, as of the time that the <code>Scan</code>
%% begins, you can set the <code>ConsistentRead</code> parameter to
%% <code>true</code>.
scan(Client, Input)
  when is_map(Client), is_map(Input) ->
    scan(Client, Input, []).
scan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Scan">>, Input, Options).

%% @doc Associate a set of tags with an Amazon DynamoDB resource. You can
%% then activate these user-defined tags so that they appear on the Billing
%% and Cost Management console for cost allocation tracking. You can call
%% TagResource up to 5 times per second, per account.
%%
%% For an overview on tagging DynamoDB resources, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging
%% for DynamoDB</a> in the <i>Amazon DynamoDB Developer Guide</i>.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc <code>TransactGetItems</code> is a synchronous operation that
%% atomically retrieves multiple items from one or more tables (but not from
%% indexes) in a single account and region. A <code>TransactGetItems</code>
%% call can contain up to 10 <code>TransactGetItem</code> objects, each of
%% which contains a <code>Get</code> structure that specifies an item to
%% retrieve from a table in the account and region. A call to
%% <code>TransactGetItems</code> cannot retrieve items from tables in more
%% than one AWS account or region.
%%
%% DynamoDB rejects the entire <code>TransactGetItems</code> request if any
%% of the following is true:
%%
%% <ul> <li> A conflicting operation is in the process of updating an item to
%% be read.
%%
%% </li> <li> There is insufficient provisioned capacity for the transaction
%% to be completed.
%%
%% </li> <li> There is a user error, such as an invalid data format.
%%
%% </li> </ul>
transact_get_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    transact_get_items(Client, Input, []).
transact_get_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TransactGetItems">>, Input, Options).

%% @doc <code>TransactWriteItems</code> is a synchronous write operation that
%% groups up to 10 action requests. These actions can target items in
%% different tables, but not in different AWS accounts or regions, and no two
%% actions can target the same item. For example, you cannot both
%% <code>ConditionCheck</code> and <code>Update</code> the same item.
%%
%% The actions are completed atomically so that either all of them succeed,
%% or all of them fail. They are defined by the following objects:
%%
%% <ul> <li> <code>Put</code>  &#x97;   Initiates a <code>PutItem</code>
%% operation to write a new item. This structure specifies the primary key of
%% the item to be written, the name of the table to write it in, an optional
%% condition expression that must be satisfied for the write to succeed, a
%% list of the item's attributes, and a field indicating whether or not to
%% retrieve the item's attributes if the condition is not met.
%%
%% </li> <li> <code>Update</code>  &#x97;   Initiates an
%% <code>UpdateItem</code> operation to update an existing item. This
%% structure specifies the primary key of the item to be updated, the name of
%% the table where it resides, an optional condition expression that must be
%% satisfied for the update to succeed, an expression that defines one or
%% more attributes to be updated, and a field indicating whether or not to
%% retrieve the item's attributes if the condition is not met.
%%
%% </li> <li> <code>Delete</code>  &#x97;   Initiates a
%% <code>DeleteItem</code> operation to delete an existing item. This
%% structure specifies the primary key of the item to be deleted, the name of
%% the table where it resides, an optional condition expression that must be
%% satisfied for the deletion to succeed, and a field indicating whether or
%% not to retrieve the item's attributes if the condition is not met.
%%
%% </li> <li> <code>ConditionCheck</code>  &#x97;   Applies a condition to an
%% item that is not being modified by the transaction. This structure
%% specifies the primary key of the item to be checked, the name of the table
%% where it resides, a condition expression that must be satisfied for the
%% transaction to succeed, and a field indicating whether or not to retrieve
%% the item's attributes if the condition is not met.
%%
%% </li> </ul> DynamoDB rejects the entire <code>TransactWriteItems</code>
%% request if any of the following is true:
%%
%% <ul> <li> A condition in one of the condition expressions is not met.
%%
%% </li> <li> A conflicting operation is in the process of updating the same
%% item.
%%
%% </li> <li> There is insufficient provisioned capacity for the transaction
%% to be completed.
%%
%% </li> <li> An item size becomes too large (bigger than 400 KB), a Local
%% Secondary Index (LSI) becomes too large, or a similar validation error
%% occurs because of changes made by the transaction.
%%
%% </li> <li> There is a user error, such as an invalid data format.
%%
%% </li> </ul>
transact_write_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    transact_write_items(Client, Input, []).
transact_write_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TransactWriteItems">>, Input, Options).

%% @doc Removes the association of tags from an Amazon DynamoDB resource. You
%% can call UntagResource up to 5 times per second, per account.
%%
%% For an overview on tagging DynamoDB resources, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging
%% for DynamoDB</a> in the <i>Amazon DynamoDB Developer Guide</i>.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc <code>UpdateContinuousBackups</code> enables or disables point in
%% time recovery for the specified table. A successful
%% <code>UpdateContinuousBackups</code> call returns the current
%% <code>ContinuousBackupsDescription</code>. Continuous backups are
%% <code>ENABLED</code> on all tables at table creation. If point in time
%% recovery is enabled, <code>PointInTimeRecoveryStatus</code> will be set to
%% ENABLED.
%%
%% Once continuous backups and point in time recovery are enabled, you can
%% restore to any point in time within
%% <code>EarliestRestorableDateTime</code> and
%% <code>LatestRestorableDateTime</code>.
%%
%% <code>LatestRestorableDateTime</code> is typically 5 minutes before the
%% current time. You can restore your table to any point in time during the
%% last 35 days..
update_continuous_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_continuous_backups(Client, Input, []).
update_continuous_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContinuousBackups">>, Input, Options).

%% @doc Adds or removes replicas in the specified global table. The global
%% table must already exist to be able to use this operation. Any replica to
%% be added must be empty, must have the same name as the global table, must
%% have the same key schema, and must have DynamoDB Streams enabled and must
%% have same provisioned and maximum write capacity units.
%%
%% <note> Although you can use <code>UpdateGlobalTable</code> to add replicas
%% and remove replicas in a single request, for simplicity we recommend that
%% you issue separate requests for adding or removing replicas.
%%
%% </note> If global secondary indexes are specified, then the following
%% conditions must also be met:
%%
%% <ul> <li> The global secondary indexes must have the same name.
%%
%% </li> <li> The global secondary indexes must have the same hash key and
%% sort key (if present).
%%
%% </li> <li> The global secondary indexes must have the same provisioned and
%% maximum write capacity units.
%%
%% </li> </ul>
update_global_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_global_table(Client, Input, []).
update_global_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGlobalTable">>, Input, Options).

%% @doc Updates settings for a global table.
update_global_table_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_global_table_settings(Client, Input, []).
update_global_table_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGlobalTableSettings">>, Input, Options).

%% @doc Edits an existing item's attributes, or adds a new item to the table
%% if it does not already exist. You can put, delete, or add attribute
%% values. You can also perform a conditional update on an existing item
%% (insert a new attribute name-value pair if it doesn't exist, or replace an
%% existing name-value pair if it has certain expected attribute values).
%%
%% You can also return the item's attribute values in the same
%% <code>UpdateItem</code> operation using the <code>ReturnValues</code>
%% parameter.
update_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_item(Client, Input, []).
update_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateItem">>, Input, Options).

%% @doc Modifies the provisioned throughput settings, global secondary
%% indexes, or DynamoDB Streams settings for a given table.
%%
%% You can only perform one of the following operations at once:
%%
%% <ul> <li> Modify the provisioned throughput settings of the table.
%%
%% </li> <li> Enable or disable Streams on the table.
%%
%% </li> <li> Remove a global secondary index from the table.
%%
%% </li> <li> Create a new global secondary index on the table. Once the
%% index begins backfilling, you can use <code>UpdateTable</code> to perform
%% other operations.
%%
%% </li> </ul> <code>UpdateTable</code> is an asynchronous operation; while
%% it is executing, the table status changes from <code>ACTIVE</code> to
%% <code>UPDATING</code>. While it is <code>UPDATING</code>, you cannot issue
%% another <code>UpdateTable</code> request. When the table returns to the
%% <code>ACTIVE</code> state, the <code>UpdateTable</code> operation is
%% complete.
update_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table(Client, Input, []).
update_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTable">>, Input, Options).

%% @doc The UpdateTimeToLive method will enable or disable TTL for the
%% specified table. A successful <code>UpdateTimeToLive</code> call returns
%% the current <code>TimeToLiveSpecification</code>; it may take up to one
%% hour for the change to fully process. Any additional
%% <code>UpdateTimeToLive</code> calls for the same table during this one
%% hour duration result in a <code>ValidationException</code>.
%%
%% TTL compares the current time in epoch time format to the time stored in
%% the TTL attribute of an item. If the epoch time value stored in the
%% attribute is less than the current time, the item is marked as expired and
%% subsequently deleted.
%%
%% <note> The epoch time format is the number of seconds elapsed since
%% 12:00:00 AM January 1st, 1970 UTC.
%%
%% </note> DynamoDB deletes expired items on a best-effort basis to ensure
%% availability of throughput for other data operations.
%%
%% <important> DynamoDB typically deletes expired items within two days of
%% expiration. The exact duration within which an item gets deleted after
%% expiration is specific to the nature of the workload. Items that have
%% expired and not been deleted will still show up in reads, queries, and
%% scans.
%%
%% </important> As items are deleted, they are removed from any Local
%% Secondary Index and Global Secondary Index immediately in the same
%% eventually consistent way as a standard delete operation.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html">Time
%% To Live</a> in the Amazon DynamoDB Developer Guide.
update_time_to_live(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_time_to_live(Client, Input, []).
update_time_to_live(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTimeToLive">>, Input, Options).

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
    Client1 = Client#{service => <<"dynamodb">>},
    Host = get_host(<<"dynamodb">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
               {<<"X-Amz-Target">>, << <<"DynamoDB_20120810.">>/binary, Action/binary>>}],
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
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
