%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon DynamoDB</fullname>
%%
%% <b>Overview</b>
%%
%% This is the Amazon DynamoDB API Reference. This guide provides
%% descriptions and samples of the low-level DynamoDB API. For information
%% about DynamoDB application development, see the <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/">Amazon
%% DynamoDB Developer Guide</a>.
%%
%% Instead of making the requests to the low-level DynamoDB API directly from
%% your application, we recommend that you use the AWS Software Development
%% Kits (SDKs). The easy-to-use libraries in the AWS SDKs make it unnecessary
%% to call the low-level DynamoDB API directly from your application. The
%% libraries take care of request authentication, serialization, and
%% connection management. For more information, see <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/UsingAWSSDK.html">Using
%% the AWS SDKs with DynamoDB</a> in the <i>Amazon DynamoDB Developer
%% Guide</i>.
%%
%% If you decide to code against the low-level DynamoDB API directly, you
%% will need to write the necessary code to authenticate your requests. For
%% more information on signing your requests, see <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/API.html">Using
%% the DynamoDB API</a> in the <i>Amazon DynamoDB Developer Guide</i>.
%%
%% The following are short descriptions of each low-level API action,
%% organized by function.
%%
%% <b>Managing Tables</b>
%%
%% <ul> <li> <i>CreateTable</i> - Creates a table with user-specified
%% provisioned throughput settings. You must designate one attribute as the
%% hash primary key for the table; you can optionally designate a second
%% attribute as the range primary key. DynamoDB creates indexes on these key
%% attributes for fast data access. Optionally, you can create one or more
%% secondary indexes, which provide fast data access using non-key
%% attributes.
%%
%% </li> <li> <i>DescribeTable</i> - Returns metadata for a table, such as
%% table size, status, and index information.
%%
%% </li> <li> <i>UpdateTable</i> - Modifies the provisioned throughput
%% settings for a table. Optionally, you can modify the provisioned
%% throughput settings for global secondary indexes on the table.
%%
%% </li> <li> <i>ListTables</i> - Returns a list of all tables associated
%% with the current AWS account and endpoint.
%%
%% </li> <li> <i>DeleteTable</i> - Deletes a table and all of its indexes.
%%
%% </li> </ul> For conceptual information about managing tables, see <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html">Working
%% with Tables</a> in the <i>Amazon DynamoDB Developer Guide</i>.
%%
%% <b>Reading Data</b>
%%
%% <ul> <li> <i>GetItem</i> - Returns a set of attributes for the item that
%% has a given primary key. By default, <i>GetItem</i> performs an eventually
%% consistent read; however, applications can request a strongly consistent
%% read instead.
%%
%% </li> <li> <i>BatchGetItem</i> - Performs multiple <i>GetItem</i> requests
%% for data items using their primary keys, from one table or multiple
%% tables. The response from <i>BatchGetItem</i> has a size limit of 16 MB
%% and returns a maximum of 100 items. Both eventually consistent and
%% strongly consistent reads can be used.
%%
%% </li> <li> <i>Query</i> - Returns one or more items from a table or a
%% secondary index. You must provide a specific hash key value. You can
%% narrow the scope of the query using comparison operators against a range
%% key value, or on the index key. <i>Query</i> supports either eventual or
%% strong consistency. A single response has a size limit of 1 MB.
%%
%% </li> <li> <i>Scan</i> - Reads every item in a table; the result set is
%% eventually consistent. You can limit the number of items returned by
%% filtering the data attributes, using conditional expressions. <i>Scan</i>
%% can be used to enable ad-hoc querying of a table against non-key
%% attributes; however, since this is a full table scan without using an
%% index, <i>Scan</i> should not be used for any application query use case
%% that requires predictable performance.
%%
%% </li> </ul> For conceptual information about reading data, see <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html">Working
%% with Items</a> and <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query
%% and Scan Operations</a> in the <i>Amazon DynamoDB Developer Guide</i>.
%%
%% <b>Modifying Data</b>
%%
%% <ul> <li> <i>PutItem</i> - Creates a new item, or replaces an existing
%% item with a new item (including all the attributes). By default, if an
%% item in the table already exists with the same primary key, the new item
%% completely replaces the existing item. You can use conditional operators
%% to replace an item only if its attribute values match certain conditions,
%% or to insert a new item only if that item doesn't already exist.
%%
%% </li> <li> <i>UpdateItem</i> - Modifies the attributes of an existing
%% item. You can also use conditional operators to perform an update only if
%% the item's attribute values match certain conditions.
%%
%% </li> <li> <i>DeleteItem</i> - Deletes an item in a table by primary key.
%% You can use conditional operators to perform a delete an item only if the
%% item's attribute values match certain conditions.
%%
%% </li> <li> <i>BatchWriteItem</i> - Performs multiple <i>PutItem</i> and
%% <i>DeleteItem</i> requests across multiple tables in a single request. A
%% failure of any request(s) in the batch will not cause the entire
%% <i>BatchWriteItem</i> operation to fail. Supports batches of up to 25
%% items to put or delete, with a maximum total request size of 16 MB.
%%
%% </li> </ul> For conceptual information about modifying data, see <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html">Working
%% with Items</a> and <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query
%% and Scan Operations</a> in the <i>Amazon DynamoDB Developer Guide</i>.
-module(aws_dynamodb).

-export([batch_get_item/2,
         batch_get_item/3,
         batch_write_item/2,
         batch_write_item/3,
         create_table/2,
         create_table/3,
         delete_item/2,
         delete_item/3,
         delete_table/2,
         delete_table/3,
         describe_table/2,
         describe_table/3,
         get_item/2,
         get_item/3,
         list_tables/2,
         list_tables/3,
         put_item/2,
         put_item/3,
         query/2,
         query/3,
         scan/2,
         scan/3,
         update_item/2,
         update_item/3,
         update_table/2,
         update_table/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc The <i>BatchGetItem</i> operation returns the attributes of one or
%% more items from one or more tables. You identify requested items by
%% primary key.
%%
%% A single operation can retrieve up to 16 MB of data, which can contain as
%% many as 100 items. <i>BatchGetItem</i> will return a partial result if the
%% response size limit is exceeded, the table's provisioned throughput is
%% exceeded, or an internal processing failure occurs. If a partial result is
%% returned, the operation returns a value for <i>UnprocessedKeys</i>. You
%% can use this value to retry the operation starting with the next item to
%% get.
%%
%% <important>If you request more than 100 items <i>BatchGetItem</i> will
%% return a <i>ValidationException</i> with the message "Too many items
%% requested for the BatchGetItem call".
%%
%% </important> For example, if you ask to retrieve 100 items, but each
%% individual item is 300 KB in size, the system returns 52 items (so as not
%% to exceed the 16 MB limit). It also returns an appropriate
%% <i>UnprocessedKeys</i> value so you can get the next page of results. If
%% desired, your application can include its own logic to assemble the pages
%% of results into one data set.
%%
%% If <i>none</i> of the items can be processed due to insufficient
%% provisioned throughput on all of the tables in the request, then
%% <i>BatchGetItem</i> will return a
%% <i>ProvisionedThroughputExceededException</i>. If <i>at least one</i> of
%% the items is successfully processed, then <i>BatchGetItem</i> completes
%% successfully, while returning the keys of the unread items in
%% <i>UnprocessedKeys</i>.
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
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations">Batch
%% Operations and Error Handling</a> in the <i>Amazon DynamoDB Developer
%% Guide</i>.
%%
%% </important> By default, <i>BatchGetItem</i> performs eventually
%% consistent reads on every table in the request. If you want strongly
%% consistent reads instead, you can set <i>ConsistentRead</i> to
%% <code>true</code> for any or all tables.
%%
%% In order to minimize response latency, <i>BatchGetItem</i> retrieves items
%% in parallel.
%%
%% When designing your application, keep in mind that DynamoDB does not
%% return attributes in any particular order. To help parse the response by
%% item, include the primary key values for the items in your request in the
%% <i>AttributesToGet</i> parameter.
%%
%% If a requested item does not exist, it is not returned in the result.
%% Requests for nonexistent items consume the minimum read capacity units
%% according to the type of read. For more information, see <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations">Capacity
%% Units Calculations</a> in the <i>Amazon DynamoDB Developer Guide</i>.
batch_get_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_item(Client, Input, []).
batch_get_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetItem">>, Input, Options).

%% @doc The <i>BatchWriteItem</i> operation puts or deletes multiple items in
%% one or more tables. A single call to <i>BatchWriteItem</i> can write up to
%% 16 MB of data, which can comprise as many as 25 put or delete requests.
%% Individual items to be written can be as large as 400 KB.
%%
%% <note> <i>BatchWriteItem</i> cannot update items. To update items, use the
%% <i>UpdateItem</i> API.
%%
%% </note> The individual <i>PutItem</i> and <i>DeleteItem</i> operations
%% specified in <i>BatchWriteItem</i> are atomic; however
%% <i>BatchWriteItem</i> as a whole is not. If any requested operations fail
%% because the table's provisioned throughput is exceeded or an internal
%% processing failure occurs, the failed operations are returned in the
%% <i>UnprocessedItems</i> response parameter. You can investigate and
%% optionally resend the requests. Typically, you would call
%% <i>BatchWriteItem</i> in a loop. Each iteration would check for
%% unprocessed items and submit a new <i>BatchWriteItem</i> request with
%% those unprocessed items until all items have been processed.
%%
%% Note that if <i>none</i> of the items can be processed due to insufficient
%% provisioned throughput on all of the tables in the request, then
%% <i>BatchWriteItem</i> will return a
%% <i>ProvisionedThroughputExceededException</i>.
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
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations">Batch
%% Operations and Error Handling</a> in the <i>Amazon DynamoDB Developer
%% Guide</i>.
%%
%% </important> With <i>BatchWriteItem</i>, you can efficiently write or
%% delete large amounts of data, such as from Amazon Elastic MapReduce (EMR),
%% or copy data from another database into DynamoDB. In order to improve
%% performance with these large-scale operations, <i>BatchWriteItem</i> does
%% not behave in the same way as individual <i>PutItem</i> and
%% <i>DeleteItem</i> calls would. For example, you cannot specify conditions
%% on individual put and delete requests, and <i>BatchWriteItem</i> does not
%% return deleted items in the response.
%%
%% If you use a programming language that supports concurrency, you can use
%% threads to write items in parallel. Your application must include the
%% necessary logic to manage the threads. With languages that don't support
%% threading, you must update or delete the specified items one at a time. In
%% both situations, <i>BatchWriteItem</i> provides an alternative where the
%% API performs the specified put and delete operations in parallel, giving
%% you the power of the thread pool approach without having to introduce
%% complexity into your application.
%%
%% Parallel processing reduces latency, but each specified put and delete
%% request consumes the same number of write capacity units whether it is
%% processed in parallel or not. Delete operations on nonexistent items
%% consume one write capacity unit.
%%
%% If one or more of the following is true, DynamoDB rejects the entire batch
%% write operation:
%%
%% <ul> <li> One or more tables specified in the <i>BatchWriteItem</i>
%% request does not exist.
%%
%% </li> <li> Primary key attributes specified on an item in the request do
%% not match those in the corresponding table's primary key schema.
%%
%% </li> <li> You try to perform multiple operations on the same item in the
%% same <i>BatchWriteItem</i> request. For example, you cannot put and delete
%% the same item in the same <i>BatchWriteItem</i> request.
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

%% @doc The <i>CreateTable</i> operation adds a new table to your account. In
%% an AWS account, table names must be unique within each region. That is,
%% you can have two tables with same name if you create the tables in
%% different regions.
%%
%% <i>CreateTable</i> is an asynchronous operation. Upon receiving a
%% <i>CreateTable</i> request, DynamoDB immediately returns a response with a
%% <i>TableStatus</i> of <code>CREATING</code>. After the table is created,
%% DynamoDB sets the <i>TableStatus</i> to <code>ACTIVE</code>. You can
%% perform read and write operations only on an <code>ACTIVE</code> table.
%%
%% You can optionally define secondary indexes on the new table, as part of
%% the <i>CreateTable</i> operation. If you want to create multiple tables
%% with secondary indexes on them, you must create the tables sequentially.
%% Only one table with secondary indexes can be in the <code>CREATING</code>
%% state at any given time.
%%
%% You can use the <i>DescribeTable</i> API to check the table status.
create_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_table(Client, Input, []).
create_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTable">>, Input, Options).

%% @doc Deletes a single item in a table by primary key. You can perform a
%% conditional delete operation that deletes the item if it exists, or if it
%% has an expected attribute value.
%%
%% In addition to deleting an item, you can also return the item's attribute
%% values in the same operation, using the <i>ReturnValues</i> parameter.
%%
%% Unless you specify conditions, the <i>DeleteItem</i> is an idempotent
%% operation; running it multiple times on the same item or attribute does
%% <i>not</i> result in an error response.
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

%% @doc The <i>DeleteTable</i> operation deletes a table and all of its
%% items. After a <i>DeleteTable</i> request, the specified table is in the
%% <code>DELETING</code> state until DynamoDB completes the deletion. If the
%% table is in the <code>ACTIVE</code> state, you can delete it. If a table
%% is in <code>CREATING</code> or <code>UPDATING</code> states, then DynamoDB
%% returns a <i>ResourceInUseException</i>. If the specified table does not
%% exist, DynamoDB returns a <i>ResourceNotFoundException</i>. If table is
%% already in the <code>DELETING</code> state, no error is returned.
%%
%% <note> DynamoDB might continue to accept data read and write operations,
%% such as <i>GetItem</i> and <i>PutItem</i>, on a table in the
%% <code>DELETING</code> state until the table deletion is complete.
%%
%% </note> When you delete a table, any indexes on that table are also
%% deleted.
%%
%% If you have DynamoDB Streams enabled on the table, then the corresponding
%% stream on that table goes into the <code>DISABLED</code> state, and the
%% stream is automatically deleted after 24 hours.
%%
%% Use the <i>DescribeTable</i> API to check the status of the table.
delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table(Client, Input, []).
delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTable">>, Input, Options).

%% @doc Returns information about the table, including the current status of
%% the table, when it was created, the primary key schema, and any indexes on
%% the table.
%%
%% <note> If you issue a DescribeTable request immediately after a
%% CreateTable request, DynamoDB might return a ResourceNotFoundException.
%% This is because DescribeTable uses an eventually consistent query, and the
%% metadata for your table might not be available at that moment. Wait for a
%% few seconds, and then try the DescribeTable request again.
%%
%% </note>
describe_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table(Client, Input, []).
describe_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTable">>, Input, Options).

%% @doc The <i>GetItem</i> operation returns a set of attributes for the item
%% with the given primary key. If there is no matching item, <i>GetItem</i>
%% does not return any data.
%%
%% <i>GetItem</i> provides an eventually consistent read by default. If your
%% application requires a strongly consistent read, set <i>ConsistentRead</i>
%% to <code>true</code>. Although a strongly consistent read might take more
%% time than an eventually consistent read, it always returns the last
%% updated value.
get_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_item(Client, Input, []).
get_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetItem">>, Input, Options).

%% @doc Returns an array of table names associated with the current account
%% and endpoint. The output from <i>ListTables</i> is paginated, with each
%% page returning a maximum of 100 table names.
list_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tables(Client, Input, []).
list_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTables">>, Input, Options).

%% @doc Creates a new item, or replaces an old item with a new item. If an
%% item that has the same primary key as the new item already exists in the
%% specified table, the new item completely replaces the existing item. You
%% can perform a conditional put operation (add a new item if one with the
%% specified primary key doesn't exist), or replace an existing item if it
%% has certain attribute values.
%%
%% In addition to putting an item, you can also return the item's attribute
%% values in the same operation, using the <i>ReturnValues</i> parameter.
%%
%% When you add an item, the primary key attribute(s) are the only required
%% attributes. Attribute values cannot be null. String and Binary type
%% attributes must have lengths greater than zero. Set type attributes cannot
%% be empty. Requests with empty values will be rejected with a
%% <i>ValidationException</i> exception.
%%
%% You can request that <i>PutItem</i> return either a copy of the original
%% item (before the update) or a copy of the updated item (after the update).
%% For more information, see the <i>ReturnValues</i> description below.
%%
%% <note> To prevent a new item from replacing an existing item, use a
%% conditional put operation with <i>ComparisonOperator</i> set to
%% <code>NULL</code> for the primary key attribute, or attributes.
%%
%% </note> For more information about using this API, see <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html">Working
%% with Items</a> in the <i>Amazon DynamoDB Developer Guide</i>.
put_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_item(Client, Input, []).
put_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutItem">>, Input, Options).

%% @doc A <i>Query</i> operation uses the primary key of a table or a
%% secondary index to directly access items from that table or index.
%%
%% Use the <i>KeyConditionExpression</i> parameter to provide a specific hash
%% key value. The <i>Query</i> operation will return all of the items from
%% the table or index with that hash key value. You can optionally narrow the
%% scope of the <i>Query</i> operation by specifying a range key value and a
%% comparison operator in <i>KeyConditionExpression</i>. You can use the
%% <i>ScanIndexForward</i> parameter to get results in forward or reverse
%% order, by range key or by index key.
%%
%% Queries that do not return results consume the minimum number of read
%% capacity units for that type of read operation.
%%
%% If the total number of items meeting the query criteria exceeds the result
%% set size limit of 1 MB, the query stops and results are returned to the
%% user with the <i>LastEvaluatedKey</i> element to continue the query in a
%% subsequent operation. Unlike a <i>Scan</i> operation, a <i>Query</i>
%% operation never returns both an empty result set and a
%% <i>LastEvaluatedKey</i> value. <i>LastEvaluatedKey</i> is only provided if
%% the results exceed 1 MB, or if you have used the <i>Limit</i> parameter.
%%
%% You can query a table, a local secondary index, or a global secondary
%% index. For a query on a table or on a local secondary index, you can set
%% the <i>ConsistentRead</i> parameter to <code>true</code> and obtain a
%% strongly consistent result. Global secondary indexes support eventually
%% consistent reads only, so do not specify <i>ConsistentRead</i> when
%% querying a global secondary index.
query(Client, Input)
  when is_map(Client), is_map(Input) ->
    query(Client, Input, []).
query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Query">>, Input, Options).

%% @doc The <i>Scan</i> operation returns one or more items and item
%% attributes by accessing every item in a table or a secondary index. To
%% have DynamoDB return fewer items, you can provide a <i>ScanFilter</i>
%% operation.
%%
%% If the total number of scanned items exceeds the maximum data set size
%% limit of 1 MB, the scan stops and results are returned to the user as a
%% <i>LastEvaluatedKey</i> value to continue the scan in a subsequent
%% operation. The results also include the number of items exceeding the
%% limit. A scan can result in no table data meeting the filter criteria.
%%
%% By default, <i>Scan</i> operations proceed sequentially; however, for
%% faster performance on a large table or secondary index, applications can
%% request a parallel <i>Scan</i> operation by providing the <i>Segment</i>
%% and <i>TotalSegments</i> parameters. For more information, see <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#QueryAndScanParallelScan">Parallel
%% Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.
%%
%% By default, <i>Scan</i> uses eventually consistent reads when acessing the
%% data in the table or local secondary index. However, you can use strongly
%% consistent reads instead by setting the <i>ConsistentRead</i> parameter to
%% <i>true</i>.
scan(Client, Input)
  when is_map(Client), is_map(Input) ->
    scan(Client, Input, []).
scan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Scan">>, Input, Options).

%% @doc Edits an existing item's attributes, or adds a new item to the table
%% if it does not already exist. You can put, delete, or add attribute
%% values. You can also perform a conditional update on an existing item
%% (insert a new attribute name-value pair if it doesn't exist, or replace an
%% existing name-value pair if it has certain expected attribute values). If
%% conditions are specified and the item does not exist, then the operation
%% fails and a new item is not created.
%%
%% You can also return the item's attribute values in the same
%% <i>UpdateItem</i> operation using the <i>ReturnValues</i> parameter.
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
%% <ul> <li>Modify the provisioned throughput settings of the table.
%%
%% </li> <li>Enable or disable Streams on the table.
%%
%% </li> <li>Remove a global secondary index from the table.
%%
%% </li> <li> Create a new global secondary index on the table. Once the
%% index begins backfilling, you can use <i>UpdateTable</i> to perform other
%% operations.
%%
%% </li> </ul> <i>UpdateTable</i> is an asynchronous operation; while it is
%% executing, the table status changes from <code>ACTIVE</code> to
%% <code>UPDATING</code>. While it is <code>UPDATING</code>, you cannot issue
%% another <i>UpdateTable</i> request. When the table returns to the
%% <code>ACTIVE</code> state, the <i>UpdateTable</i> operation is complete.
update_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table(Client, Input, []).
update_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTable">>, Input, Options).

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
    Host = aws_util:binary_join([<<"dynamodb.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
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
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
