%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon Kinesis Data Firehose API Reference</fullname>
%%
%% Amazon Kinesis Data Firehose is a fully managed service that delivers
%% real-time streaming data to destinations such as Amazon Simple Storage
%% Service (Amazon S3), Amazon Elasticsearch Service (Amazon ES), Amazon
%% Redshift, and Splunk.
-module(aws_kinesis_firehose).

-export([create_delivery_stream/2,
         create_delivery_stream/3,
         delete_delivery_stream/2,
         delete_delivery_stream/3,
         describe_delivery_stream/2,
         describe_delivery_stream/3,
         list_delivery_streams/2,
         list_delivery_streams/3,
         list_tags_for_delivery_stream/2,
         list_tags_for_delivery_stream/3,
         put_record/2,
         put_record/3,
         put_record_batch/2,
         put_record_batch/3,
         start_delivery_stream_encryption/2,
         start_delivery_stream_encryption/3,
         stop_delivery_stream_encryption/2,
         stop_delivery_stream_encryption/3,
         tag_delivery_stream/2,
         tag_delivery_stream/3,
         untag_delivery_stream/2,
         untag_delivery_stream/3,
         update_destination/2,
         update_destination/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a Kinesis Data Firehose delivery stream.
%%
%% By default, you can create up to 50 delivery streams per AWS Region.
%%
%% This is an asynchronous operation that immediately returns. The initial
%% status of the delivery stream is <code>CREATING</code>. After the delivery
%% stream is created, its status is <code>ACTIVE</code> and it now accepts
%% data. Attempts to send data to a delivery stream that is not in the
%% <code>ACTIVE</code> state cause an exception. To check the state of a
%% delivery stream, use <a>DescribeDeliveryStream</a>.
%%
%% A Kinesis Data Firehose delivery stream can be configured to receive
%% records directly from providers using <a>PutRecord</a> or
%% <a>PutRecordBatch</a>, or it can be configured to use an existing Kinesis
%% stream as its source. To specify a Kinesis data stream as input, set the
%% <code>DeliveryStreamType</code> parameter to
%% <code>KinesisStreamAsSource</code>, and provide the Kinesis stream Amazon
%% Resource Name (ARN) and role ARN in the
%% <code>KinesisStreamSourceConfiguration</code> parameter.
%%
%% A delivery stream is configured with a single destination: Amazon S3,
%% Amazon ES, Amazon Redshift, or Splunk. You must specify only one of the
%% following destination configuration parameters:
%% <code>ExtendedS3DestinationConfiguration</code>,
%% <code>S3DestinationConfiguration</code>,
%% <code>ElasticsearchDestinationConfiguration</code>,
%% <code>RedshiftDestinationConfiguration</code>, or
%% <code>SplunkDestinationConfiguration</code>.
%%
%% When you specify <code>S3DestinationConfiguration</code>, you can also
%% provide the following optional values: BufferingHints,
%% <code>EncryptionConfiguration</code>, and <code>CompressionFormat</code>.
%% By default, if no <code>BufferingHints</code> value is provided, Kinesis
%% Data Firehose buffers data up to 5 MB or for 5 minutes, whichever
%% condition is satisfied first. <code>BufferingHints</code> is a hint, so
%% there are some cases where the service cannot adhere to these conditions
%% strictly. For example, record boundaries might be such that the size is a
%% little over or under the configured buffering size. By default, no
%% encryption is performed. We strongly recommend that you enable encryption
%% to ensure secure data storage in Amazon S3.
%%
%% A few notes about Amazon Redshift as a destination:
%%
%% <ul> <li> An Amazon Redshift destination requires an S3 bucket as
%% intermediate location. Kinesis Data Firehose first delivers data to Amazon
%% S3 and then uses <code>COPY</code> syntax to load data into an Amazon
%% Redshift table. This is specified in the
%% <code>RedshiftDestinationConfiguration.S3Configuration</code> parameter.
%%
%% </li> <li> The compression formats <code>SNAPPY</code> or <code>ZIP</code>
%% cannot be specified in
%% <code>RedshiftDestinationConfiguration.S3Configuration</code> because the
%% Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket
%% doesn't support these compression formats.
%%
%% </li> <li> We strongly recommend that you use the user name and password
%% you provide exclusively with Kinesis Data Firehose, and that the
%% permissions for the account are restricted for Amazon Redshift
%% <code>INSERT</code> permissions.
%%
%% </li> </ul> Kinesis Data Firehose assumes the IAM role that is configured
%% as part of the destination. The role should allow the Kinesis Data
%% Firehose principal to assume the role, and the role should have
%% permissions that allow the service to deliver the data. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Grant
%% Kinesis Data Firehose Access to an Amazon S3 Destination</a> in the
%% <i>Amazon Kinesis Data Firehose Developer Guide</i>.
create_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_delivery_stream(Client, Input, []).
create_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeliveryStream">>, Input, Options).

%% @doc Deletes a delivery stream and its data.
%%
%% You can delete a delivery stream only if it is in <code>ACTIVE</code> or
%% <code>DELETING</code> state, and not in the <code>CREATING</code> state.
%% While the deletion request is in process, the delivery stream is in the
%% <code>DELETING</code> state.
%%
%% To check the state of a delivery stream, use
%% <a>DescribeDeliveryStream</a>.
%%
%% While the delivery stream is <code>DELETING</code> state, the service
%% might continue to accept the records, but it doesn't make any guarantees
%% with respect to delivering the data. Therefore, as a best practice, you
%% should first stop any applications that are sending records before
%% deleting a delivery stream.
delete_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_delivery_stream(Client, Input, []).
delete_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeliveryStream">>, Input, Options).

%% @doc Describes the specified delivery stream and gets the status. For
%% example, after your delivery stream is created, call
%% <code>DescribeDeliveryStream</code> to see whether the delivery stream is
%% <code>ACTIVE</code> and therefore ready for data to be sent to it.
describe_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_stream(Client, Input, []).
describe_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveryStream">>, Input, Options).

%% @doc Lists your delivery streams in alphabetical order of their names.
%%
%% The number of delivery streams might be too large to return using a single
%% call to <code>ListDeliveryStreams</code>. You can limit the number of
%% delivery streams returned, using the <code>Limit</code> parameter. To
%% determine whether there are more delivery streams to list, check the value
%% of <code>HasMoreDeliveryStreams</code> in the output. If there are more
%% delivery streams to list, you can request them by calling this operation
%% again and setting the <code>ExclusiveStartDeliveryStreamName</code>
%% parameter to the name of the last delivery stream returned in the last
%% call.
list_delivery_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_delivery_streams(Client, Input, []).
list_delivery_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeliveryStreams">>, Input, Options).

%% @doc Lists the tags for the specified delivery stream. This operation has
%% a limit of five transactions per second per account.
list_tags_for_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_delivery_stream(Client, Input, []).
list_tags_for_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForDeliveryStream">>, Input, Options).

%% @doc Writes a single data record into an Amazon Kinesis Data Firehose
%% delivery stream. To write multiple data records into a delivery stream,
%% use <a>PutRecordBatch</a>. Applications using these operations are
%% referred to as producers.
%%
%% By default, each delivery stream can take in up to 2,000 transactions per
%% second, 5,000 records per second, or 5 MB per second. If you use
%% <a>PutRecord</a> and <a>PutRecordBatch</a>, the limits are an aggregate
%% across these two operations for each delivery stream. For more information
%% about limits and how to request an increase, see <a
%% href="https://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon
%% Kinesis Data Firehose Limits</a>.
%%
%% You must specify the name of the delivery stream and the data record when
%% using <a>PutRecord</a>. The data record consists of a data blob that can
%% be up to 1,000 KB in size, and any kind of data. For example, it can be a
%% segment from a log file, geographic location data, website clickstream
%% data, and so on.
%%
%% Kinesis Data Firehose buffers records before delivering them to the
%% destination. To disambiguate the data blobs at the destination, a common
%% solution is to use delimiters in the data, such as a newline
%% (<code>\n</code>) or some other character unique within the data. This
%% allows the consumer application to parse individual data items when
%% reading the data from the destination.
%%
%% The <code>PutRecord</code> operation returns a <code>RecordId</code>,
%% which is a unique string assigned to each record. Producer applications
%% can use this ID for purposes such as auditability and investigation.
%%
%% If the <code>PutRecord</code> operation throws a
%% <code>ServiceUnavailableException</code>, back off and retry. If the
%% exception persists, it is possible that the throughput limits have been
%% exceeded for the delivery stream.
%%
%% Data records sent to Kinesis Data Firehose are stored for 24 hours from
%% the time they are added to a delivery stream as it tries to send the
%% records to the destination. If the destination is unreachable for more
%% than 24 hours, the data is no longer available.
%%
%% <important> Don't concatenate two or more base64 strings to form the data
%% fields of your records. Instead, concatenate the raw data, then perform
%% base64 encoding.
%%
%% </important>
put_record(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_record(Client, Input, []).
put_record(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRecord">>, Input, Options).

%% @doc Writes multiple data records into a delivery stream in a single call,
%% which can achieve higher throughput per producer than when writing single
%% records. To write single data records into a delivery stream, use
%% <a>PutRecord</a>. Applications using these operations are referred to as
%% producers.
%%
%% By default, each delivery stream can take in up to 2,000 transactions per
%% second, 5,000 records per second, or 5 MB per second. If you use
%% <a>PutRecord</a> and <a>PutRecordBatch</a>, the limits are an aggregate
%% across these two operations for each delivery stream. For more information
%% about limits, see <a
%% href="https://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon
%% Kinesis Data Firehose Limits</a>.
%%
%% Each <a>PutRecordBatch</a> request supports up to 500 records. Each record
%% in the request can be as large as 1,000 KB (before 64-bit encoding), up to
%% a limit of 4 MB for the entire request. These limits cannot be changed.
%%
%% You must specify the name of the delivery stream and the data record when
%% using <a>PutRecord</a>. The data record consists of a data blob that can
%% be up to 1,000 KB in size, and any kind of data. For example, it could be
%% a segment from a log file, geographic location data, website clickstream
%% data, and so on.
%%
%% Kinesis Data Firehose buffers records before delivering them to the
%% destination. To disambiguate the data blobs at the destination, a common
%% solution is to use delimiters in the data, such as a newline
%% (<code>\n</code>) or some other character unique within the data. This
%% allows the consumer application to parse individual data items when
%% reading the data from the destination.
%%
%% The <a>PutRecordBatch</a> response includes a count of failed records,
%% <code>FailedPutCount</code>, and an array of responses,
%% <code>RequestResponses</code>. Even if the <a>PutRecordBatch</a> call
%% succeeds, the value of <code>FailedPutCount</code> may be greater than 0,
%% indicating that there are records for which the operation didn't succeed.
%% Each entry in the <code>RequestResponses</code> array provides additional
%% information about the processed record. It directly correlates with a
%% record in the request array using the same ordering, from the top to the
%% bottom. The response array always includes the same number of records as
%% the request array. <code>RequestResponses</code> includes both
%% successfully and unsuccessfully processed records. Kinesis Data Firehose
%% tries to process all records in each <a>PutRecordBatch</a> request. A
%% single record failure does not stop the processing of subsequent records.
%%
%% A successfully processed record includes a <code>RecordId</code> value,
%% which is unique for the record. An unsuccessfully processed record
%% includes <code>ErrorCode</code> and <code>ErrorMessage</code> values.
%% <code>ErrorCode</code> reflects the type of error, and is one of the
%% following values: <code>ServiceUnavailableException</code> or
%% <code>InternalFailure</code>. <code>ErrorMessage</code> provides more
%% detailed information about the error.
%%
%% If there is an internal server error or a timeout, the write might have
%% completed or it might have failed. If <code>FailedPutCount</code> is
%% greater than 0, retry the request, resending only those records that might
%% have failed processing. This minimizes the possible duplicate records and
%% also reduces the total bytes sent (and corresponding charges). We
%% recommend that you handle any duplicates at the destination.
%%
%% If <a>PutRecordBatch</a> throws <code>ServiceUnavailableException</code>,
%% back off and retry. If the exception persists, it is possible that the
%% throughput limits have been exceeded for the delivery stream.
%%
%% Data records sent to Kinesis Data Firehose are stored for 24 hours from
%% the time they are added to a delivery stream as it attempts to send the
%% records to the destination. If the destination is unreachable for more
%% than 24 hours, the data is no longer available.
%%
%% <important> Don't concatenate two or more base64 strings to form the data
%% fields of your records. Instead, concatenate the raw data, then perform
%% base64 encoding.
%%
%% </important>
put_record_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_record_batch(Client, Input, []).
put_record_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRecordBatch">>, Input, Options).

%% @doc Enables server-side encryption (SSE) for the delivery stream.
%%
%% This operation is asynchronous. It returns immediately. When you invoke
%% it, Kinesis Data Firehose first sets the status of the stream to
%% <code>ENABLING</code>, and then to <code>ENABLED</code>. You can continue
%% to read and write data to your stream while its status is
%% <code>ENABLING</code>, but the data is not encrypted. It can take up to 5
%% seconds after the encryption status changes to <code>ENABLED</code> before
%% all records written to the delivery stream are encrypted. To find out
%% whether a record or a batch of records was encrypted, check the response
%% elements <a>PutRecordOutput$Encrypted</a> and
%% <a>PutRecordBatchOutput$Encrypted</a>, respectively.
%%
%% To check the encryption state of a delivery stream, use
%% <a>DescribeDeliveryStream</a>.
%%
%% You can only enable SSE for a delivery stream that uses
%% <code>DirectPut</code> as its source.
%%
%% The <code>StartDeliveryStreamEncryption</code> and
%% <code>StopDeliveryStreamEncryption</code> operations have a combined limit
%% of 25 calls per delivery stream per 24 hours. For example, you reach the
%% limit if you call <code>StartDeliveryStreamEncryption</code> 13 times and
%% <code>StopDeliveryStreamEncryption</code> 12 times for the same delivery
%% stream in a 24-hour period.
start_delivery_stream_encryption(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_delivery_stream_encryption(Client, Input, []).
start_delivery_stream_encryption(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDeliveryStreamEncryption">>, Input, Options).

%% @doc Disables server-side encryption (SSE) for the delivery stream.
%%
%% This operation is asynchronous. It returns immediately. When you invoke
%% it, Kinesis Data Firehose first sets the status of the stream to
%% <code>DISABLING</code>, and then to <code>DISABLED</code>. You can
%% continue to read and write data to your stream while its status is
%% <code>DISABLING</code>. It can take up to 5 seconds after the encryption
%% status changes to <code>DISABLED</code> before all records written to the
%% delivery stream are no longer subject to encryption. To find out whether a
%% record or a batch of records was encrypted, check the response elements
%% <a>PutRecordOutput$Encrypted</a> and
%% <a>PutRecordBatchOutput$Encrypted</a>, respectively.
%%
%% To check the encryption state of a delivery stream, use
%% <a>DescribeDeliveryStream</a>.
%%
%% The <code>StartDeliveryStreamEncryption</code> and
%% <code>StopDeliveryStreamEncryption</code> operations have a combined limit
%% of 25 calls per delivery stream per 24 hours. For example, you reach the
%% limit if you call <code>StartDeliveryStreamEncryption</code> 13 times and
%% <code>StopDeliveryStreamEncryption</code> 12 times for the same delivery
%% stream in a 24-hour period.
stop_delivery_stream_encryption(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_delivery_stream_encryption(Client, Input, []).
stop_delivery_stream_encryption(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDeliveryStreamEncryption">>, Input, Options).

%% @doc Adds or updates tags for the specified delivery stream. A tag is a
%% key-value pair that you can define and assign to AWS resources. If you
%% specify a tag that already exists, the tag value is replaced with the
%% value that you specify in the request. Tags are metadata. For example, you
%% can add friendly names and descriptions or other types of information that
%% can help you distinguish the delivery stream. For more information about
%% tags, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
%% Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
%% Guide</i>.
%%
%% Each delivery stream can have up to 50 tags.
%%
%% This operation has a limit of five transactions per second per account.
tag_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_delivery_stream(Client, Input, []).
tag_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagDeliveryStream">>, Input, Options).

%% @doc Removes tags from the specified delivery stream. Removed tags are
%% deleted, and you can't recover them after this operation successfully
%% completes.
%%
%% If you specify a tag that doesn't exist, the operation ignores it.
%%
%% This operation has a limit of five transactions per second per account.
untag_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_delivery_stream(Client, Input, []).
untag_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagDeliveryStream">>, Input, Options).

%% @doc Updates the specified destination of the specified delivery stream.
%%
%% Use this operation to change the destination type (for example, to replace
%% the Amazon S3 destination with Amazon Redshift) or change the parameters
%% associated with a destination (for example, to change the bucket name of
%% the Amazon S3 destination). The update might not occur immediately. The
%% target delivery stream remains active while the configurations are
%% updated, so data writes to the delivery stream can continue during this
%% process. The updated configurations are usually effective within a few
%% minutes.
%%
%% Switching between Amazon ES and other services is not supported. For an
%% Amazon ES destination, you can only update to another Amazon ES
%% destination.
%%
%% If the destination type is the same, Kinesis Data Firehose merges the
%% configuration parameters specified with the destination configuration that
%% already exists on the delivery stream. If any of the parameters are not
%% specified in the call, the existing values are retained. For example, in
%% the Amazon S3 destination, if <a>EncryptionConfiguration</a> is not
%% specified, then the existing <code>EncryptionConfiguration</code> is
%% maintained on the destination.
%%
%% If the destination type is not the same, for example, changing the
%% destination from Amazon S3 to Amazon Redshift, Kinesis Data Firehose does
%% not merge any parameters. In this case, all parameters must be specified.
%%
%% Kinesis Data Firehose uses <code>CurrentDeliveryStreamVersionId</code> to
%% avoid race conditions and conflicting merges. This is a required field,
%% and the service updates the configuration only if the existing
%% configuration has a version ID that matches. After the update is applied
%% successfully, the version ID is updated, and can be retrieved using
%% <a>DescribeDeliveryStream</a>. Use the new version ID to set
%% <code>CurrentDeliveryStreamVersionId</code> in the next call.
update_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_destination(Client, Input, []).
update_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDestination">>, Input, Options).

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
    Client1 = Client#{service => <<"firehose">>},
    Host = get_host(<<"firehose">>, Client1),
    URL = get_url(Host, Client1),
    Headers1 =
        case maps:get(token, Client1, undefined) of
            Token when byte_size(Token) > 0 -> [{<<"X-Amz-Security-Token">>, Token}];
            _ -> []
        end,
    Headers2 = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"Firehose_20150804.">>/binary, Action/binary>>}
        | Headers1
    ],
    Payload = jsx:encode(Input),
    Headers = aws_request:sign_request(Client1, <<"POST">>, URL, Headers2, Payload),
    Response = hackney:request(post, URL, Headers, Payload, Options),
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
    aws_util:binary_join([EndpointPrefix, <<".">>, Region, <<".">>, Endpoint], <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
