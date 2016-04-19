%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon Kinesis Firehose API Reference</fullname>
%%
%% Amazon Kinesis Firehose is a fully-managed service that delivers real-time
%% streaming data to destinations such as Amazon Simple Storage Service
%% (Amazon S3), Amazon Elasticsearch Service (Amazon ES), and Amazon
%% Redshift.
-module(aws_kinesis_firehose).

-export([create_delivery_stream/2,
         create_delivery_stream/3,
         delete_delivery_stream/2,
         delete_delivery_stream/3,
         describe_delivery_stream/2,
         describe_delivery_stream/3,
         list_delivery_streams/2,
         list_delivery_streams/3,
         put_record/2,
         put_record/3,
         put_record_batch/2,
         put_record_batch/3,
         update_destination/2,
         update_destination/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a delivery stream.
%%
%% <a>CreateDeliveryStream</a> is an asynchronous operation that immediately
%% returns. The initial status of the delivery stream is
%% <code>CREATING</code>. After the delivery stream is created, its status is
%% <code>ACTIVE</code> and it now accepts data. Attempts to send data to a
%% delivery stream that is not in the <code>ACTIVE</code> state cause an
%% exception. To check the state of a delivery stream, use
%% <a>DescribeDeliveryStream</a>.
%%
%% The name of a delivery stream identifies it. You can't have two delivery
%% streams with the same name in the same region. Two delivery streams in
%% different AWS accounts or different regions in the same AWS account can
%% have the same name.
%%
%% By default, you can create up to 20 delivery streams per region.
%%
%% A delivery stream can only be configured with a single destination, Amazon
%% S3 or Amazon Redshift. For correct <a>CreateDeliveryStream</a> request
%% syntax, specify only one destination configuration parameter: either
%% <b>ElasticsearchDestinationConfiguration</b>,
%% <b>RedshiftDestinationConfiguration</b> or
%% <b>S3DestinationConfiguration</b>
%%
%% As part of <b>S3DestinationConfiguration</b>, optional values
%% <b>BufferingHints</b>, <b>EncryptionConfiguration</b>, and
%% <b>CompressionFormat</b> can be provided. By default, if no
%% <b>BufferingHints</b> value is provided, Firehose buffers data up to 5 MB
%% or for 5 minutes, whichever condition is satisfied first. Note that
%% <b>BufferingHints</b> is a hint, so there are some cases where the service
%% cannot adhere to these conditions strictly; for example, record boundaries
%% are such that the size is a little over or under the configured buffering
%% size. By default, no encryption is performed. We strongly recommend that
%% you enable encryption to ensure secure data storage in Amazon S3.
%%
%% A few notes about <b>RedshiftDestinationConfiguration</b>:
%%
%% <ul> <li>An Amazon Redshift destination requires an S3 bucket as
%% intermediate location, as Firehose first delivers data to S3 and then uses
%% <code>COPY</code> syntax to load data into an Amazon Redshift table. This
%% is specified in the
%% <b>RedshiftDestinationConfiguration.S3Configuration</b> parameter
%% element.</li> <li>The compression formats <code>SNAPPY</code> or
%% <code>ZIP</code> cannot be specified in
%% <b>RedshiftDestinationConfiguration.S3Configuration</b> because the Amazon
%% Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't
%% support these compression formats.</li> <li>We strongly recommend that the
%% username and password provided is used exclusively for Firehose purposes,
%% and that the permissions for the account are restricted for Amazon
%% Redshift <code>INSERT</code> permissions.</li> </ul> Firehose assumes the
%% IAM role that is configured as part of destinations. The IAM role should
%% allow the Firehose principal to assume the role, and the role should have
%% permissions that allows the service to deliver the data. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Amazon
%% S3 Bucket Access</a> in the <i>Amazon Kinesis Firehose Developer
%% Guide</i>.
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
%% While the delivery stream is <code>DELETING</code> state, the service may
%% continue to accept the records, but the service doesn't make any
%% guarantees with respect to delivering the data. Therefore, as a best
%% practice, you should first stop any applications that are sending records
%% before deleting a delivery stream.
delete_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_delivery_stream(Client, Input, []).
delete_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeliveryStream">>, Input, Options).

%% @doc Describes the specified delivery stream and gets the status. For
%% example, after your delivery stream is created, call
%% <a>DescribeDeliveryStream</a> to see if the delivery stream is
%% <code>ACTIVE</code> and therefore ready for data to be sent to it.
describe_delivery_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_stream(Client, Input, []).
describe_delivery_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveryStream">>, Input, Options).

%% @doc Lists your delivery streams.
%%
%% The number of delivery streams might be too large to return using a single
%% call to <a>ListDeliveryStreams</a>. You can limit the number of delivery
%% streams returned, using the <b>Limit</b> parameter. To determine whether
%% there are more delivery streams to list, check the value of
%% <b>HasMoreDeliveryStreams</b> in the output. If there are more delivery
%% streams to list, you can request them by specifying the name of the last
%% delivery stream returned in the call in the
%% <b>ExclusiveStartDeliveryStreamName</b> parameter of a subsequent call.
list_delivery_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_delivery_streams(Client, Input, []).
list_delivery_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeliveryStreams">>, Input, Options).

%% @doc Writes a single data record into an Amazon Kinesis Firehose delivery
%% stream. To write multiple data records into a delivery stream, use
%% <a>PutRecordBatch</a>. Applications using these operations are referred to
%% as producers.
%%
%% By default, each delivery stream can take in up to 2,000 transactions per
%% second, 5,000 records per second, or 5 MB per second. Note that if you use
%% <a>PutRecord</a> and <a>PutRecordBatch</a>, the limits are an aggregate
%% across these two operations for each delivery stream. For more information
%% about limits and how to request an increase, see <a
%% href="http://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon
%% Kinesis Firehose Limits</a>.
%%
%% You must specify the name of the delivery stream and the data record when
%% using <a>PutRecord</a>. The data record consists of a data blob that can
%% be up to 1,000 KB in size, and any kind of data, for example, a segment
%% from a log file, geographic location data, web site clickstream data, etc.
%%
%% Firehose buffers records before delivering them to the destination. To
%% disambiguate the data blobs at the destination, a common solution is to
%% use delimiters in the data, such as a newline (<code>\n</code>) or some
%% other character unique within the data. This allows the consumer
%% application(s) to parse individual data items when reading the data from
%% the destination.
%%
%% The <a>PutRecord</a> operation returns a <b>RecordId</b>, which is a
%% unique string assigned to each record. Producer applications can use this
%% ID for purposes such as auditability and investigation.
%%
%% If the <a>PutRecord</a> operation throws a
%% <b>ServiceUnavailableException</b>, back off and retry. If the exception
%% persists, it is possible that the throughput limits have been exceeded for
%% the delivery stream.
%%
%% Data records sent to Firehose are stored for 24 hours from the time they
%% are added to a delivery stream as it attempts to send the records to the
%% destination. If the destination is unreachable for more than 24 hours, the
%% data is no longer available.
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
%% Each <a>PutRecordBatch</a> request supports up to 500 records. Each record
%% in the request can be as large as 1,000 KB (before 64-bit encoding), up to
%% a limit of 4 MB for the entire request. By default, each delivery stream
%% can take in up to 2,000 transactions per second, 5,000 records per second,
%% or 5 MB per second. Note that if you use <a>PutRecord</a> and
%% <a>PutRecordBatch</a>, the limits are an aggregate across these two
%% operations for each delivery stream. For more information about limits and
%% how to request an increase, see <a
%% href="http://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon
%% Kinesis Firehose Limits</a>.
%%
%% You must specify the name of the delivery stream and the data record when
%% using <a>PutRecord</a>. The data record consists of a data blob that can
%% be up to 1,000 KB in size, and any kind of data, for example, a segment
%% from a log file, geographic location data, web site clickstream data, and
%% so on.
%%
%% Firehose buffers records before delivering them to the destination. To
%% disambiguate the data blobs at the destination, a common solution is to
%% use delimiters in the data, such as a newline (<code>\n</code>) or some
%% other character unique within the data. This allows the consumer
%% application(s) to parse individual data items when reading the data from
%% the destination.
%%
%% The <a>PutRecordBatch</a> response includes a count of any failed records,
%% <b>FailedPutCount</b>, and an array of responses, <b>RequestResponses</b>.
%% The <b>FailedPutCount</b> value is a count of records that failed. Each
%% entry in the <b>RequestResponses</b> array gives additional information of
%% the processed record. Each entry in <b>RequestResponses</b> directly
%% correlates with a record in the request array using the same ordering,
%% from the top to the bottom of the request and response.
%% <b>RequestResponses</b> always includes the same number of records as the
%% request array. <b>RequestResponses</b> both successfully and
%% unsuccessfully processed records. Firehose attempts to process all records
%% in each <a>PutRecordBatch</a> request. A single record failure does not
%% stop the processing of subsequent records.
%%
%% A successfully processed record includes a <b>RecordId</b> value, which is
%% a unique value identified for the record. An unsuccessfully processed
%% record includes <b>ErrorCode</b> and <b>ErrorMessage</b> values.
%% <b>ErrorCode</b> reflects the type of error and is one of the following
%% values: <code>ServiceUnavailable</code> or <code>InternalFailure</code>.
%% <code>ErrorMessage</code> provides more detailed information about the
%% error.
%%
%% If <b>FailedPutCount</b> is greater than 0 (zero), retry the request. A
%% retry of the entire batch of records is possible; however, we strongly
%% recommend that you inspect the entire response and resend only those
%% records that failed processing. This minimizes duplicate records and also
%% reduces the total bytes sent (and corresponding charges).
%%
%% If the <a>PutRecordBatch</a> operation throws a
%% <b>ServiceUnavailableException</b>, back off and retry. If the exception
%% persists, it is possible that the throughput limits have been exceeded for
%% the delivery stream.
%%
%% Data records sent to Firehose are stored for 24 hours from the time they
%% are added to a delivery stream as it attempts to send the records to the
%% destination. If the destination is unreachable for more than 24 hours, the
%% data is no longer available.
put_record_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_record_batch(Client, Input, []).
put_record_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRecordBatch">>, Input, Options).

%% @doc Updates the specified destination of the specified delivery stream.
%% Note: Switching between Elasticsearch and other services is not supported.
%% For Elasticsearch destination, you can only update an existing
%% Elasticsearch destination with this operation.
%%
%% This operation can be used to change the destination type (for example, to
%% replace the Amazon S3 destination with Amazon Redshift) or change the
%% parameters associated with a given destination (for example, to change the
%% bucket name of the Amazon S3 destination). The update may not occur
%% immediately. The target delivery stream remains active while the
%% configurations are updated, so data writes to the delivery stream can
%% continue during this process. The updated configurations are normally
%% effective within a few minutes.
%%
%% If the destination type is the same, Firehose merges the configuration
%% parameters specified in the <a>UpdateDestination</a> request with the
%% destination configuration that already exists on the delivery stream. If
%% any of the parameters are not specified in the update request, then the
%% existing configuration parameters are retained. For example, in the Amazon
%% S3 destination, if <a>EncryptionConfiguration</a> is not specified then
%% the existing <a>EncryptionConfiguration</a> is maintained on the
%% destination.
%%
%% If the destination type is not the same, for example, changing the
%% destination from Amazon S3 to Amazon Redshift, Firehose does not merge any
%% parameters. In this case, all parameters must be specified.
%%
%% Firehose uses the <b>CurrentDeliveryStreamVersionId</b> to avoid race
%% conditions and conflicting merges. This is a required field in every
%% request and the service only updates the configuration if the existing
%% configuration matches the <b>VersionId</b>. After the update is applied
%% successfully, the <b>VersionId</b> is updated, which can be retrieved with
%% the <a>DescribeDeliveryStream</a> operation. The new <b>VersionId</b>
%% should be uses to set <b>CurrentDeliveryStreamVersionId</b> in the next
%% <a>UpdateDestination</a> operation.
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
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"Firehose_20150804.">>/binary, Action/binary>>}],
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
