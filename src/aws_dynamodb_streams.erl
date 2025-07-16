%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon DynamoDB
%%
%% Amazon DynamoDB Streams provides API actions for accessing streams and
%% processing
%% stream records.
%%
%% To learn more about application development with Streams, see Capturing
%% Table Activity with DynamoDB Streams:
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html
%% in the Amazon DynamoDB Developer
%% Guide.
-module(aws_dynamodb_streams).

-export([describe_stream/2,
         describe_stream/3,
         get_records/2,
         get_records/3,
         get_shard_iterator/2,
         get_shard_iterator/3,
         list_streams/2,
         list_streams/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_stream_input() :: #{
%%   <<"ExclusiveStartShardId">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"ShardFilter">> => shard_filter(),
%%   <<"StreamArn">> := string()
%% }
-type describe_stream_input() :: #{binary() => any()}.

%% Example:
%% describe_stream_output() :: #{
%%   <<"StreamDescription">> => stream_description()
%% }
-type describe_stream_output() :: #{binary() => any()}.

%% Example:
%% expired_iterator_exception() :: #{
%%   <<"message">> => string()
%% }
-type expired_iterator_exception() :: #{binary() => any()}.

%% Example:
%% get_records_input() :: #{
%%   <<"Limit">> => integer(),
%%   <<"ShardIterator">> := string()
%% }
-type get_records_input() :: #{binary() => any()}.

%% Example:
%% get_records_output() :: #{
%%   <<"NextShardIterator">> => string(),
%%   <<"Records">> => list(record())
%% }
-type get_records_output() :: #{binary() => any()}.

%% Example:
%% get_shard_iterator_input() :: #{
%%   <<"SequenceNumber">> => string(),
%%   <<"ShardId">> := string(),
%%   <<"ShardIteratorType">> := list(any()),
%%   <<"StreamArn">> := string()
%% }
-type get_shard_iterator_input() :: #{binary() => any()}.

%% Example:
%% get_shard_iterator_output() :: #{
%%   <<"ShardIterator">> => string()
%% }
-type get_shard_iterator_output() :: #{binary() => any()}.

%% Example:
%% identity() :: #{
%%   <<"PrincipalId">> => string(),
%%   <<"Type">> => string()
%% }
-type identity() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% key_schema_element() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"KeyType">> => list(any())
%% }
-type key_schema_element() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_streams_input() :: #{
%%   <<"ExclusiveStartStreamArn">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"TableName">> => string()
%% }
-type list_streams_input() :: #{binary() => any()}.

%% Example:
%% list_streams_output() :: #{
%%   <<"LastEvaluatedStreamArn">> => string(),
%%   <<"Streams">> => list(stream())
%% }
-type list_streams_output() :: #{binary() => any()}.

%% Example:
%% record() :: #{
%%   <<"awsRegion">> => string(),
%%   <<"dynamodb">> => stream_record(),
%%   <<"eventID">> => string(),
%%   <<"eventName">> => list(any()),
%%   <<"eventSource">> => string(),
%%   <<"eventVersion">> => string(),
%%   <<"userIdentity">> => identity()
%% }
-type record() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% sequence_number_range() :: #{
%%   <<"EndingSequenceNumber">> => string(),
%%   <<"StartingSequenceNumber">> => string()
%% }
-type sequence_number_range() :: #{binary() => any()}.

%% Example:
%% shard() :: #{
%%   <<"ParentShardId">> => string(),
%%   <<"SequenceNumberRange">> => sequence_number_range(),
%%   <<"ShardId">> => string()
%% }
-type shard() :: #{binary() => any()}.

%% Example:
%% shard_filter() :: #{
%%   <<"ShardId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type shard_filter() :: #{binary() => any()}.

%% Example:
%% stream() :: #{
%%   <<"StreamArn">> => string(),
%%   <<"StreamLabel">> => string(),
%%   <<"TableName">> => string()
%% }
-type stream() :: #{binary() => any()}.

%% Example:
%% stream_description() :: #{
%%   <<"CreationRequestDateTime">> => non_neg_integer(),
%%   <<"KeySchema">> => list(key_schema_element()),
%%   <<"LastEvaluatedShardId">> => string(),
%%   <<"Shards">> => list(shard()),
%%   <<"StreamArn">> => string(),
%%   <<"StreamLabel">> => string(),
%%   <<"StreamStatus">> => list(any()),
%%   <<"StreamViewType">> => list(any()),
%%   <<"TableName">> => string()
%% }
-type stream_description() :: #{binary() => any()}.

%% Example:
%% stream_record() :: #{
%%   <<"ApproximateCreationDateTime">> => non_neg_integer(),
%%   <<"Keys">> => map(),
%%   <<"NewImage">> => map(),
%%   <<"OldImage">> => map(),
%%   <<"SequenceNumber">> => string(),
%%   <<"SizeBytes">> => float(),
%%   <<"StreamViewType">> => list(any())
%% }
-type stream_record() :: #{binary() => any()}.

%% Example:
%% trimmed_data_access_exception() :: #{
%%   <<"message">> => string()
%% }
-type trimmed_data_access_exception() :: #{binary() => any()}.

-type describe_stream_errors() ::
    resource_not_found_exception() | 
    internal_server_error().

-type get_records_errors() ::
    trimmed_data_access_exception() | 
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    internal_server_error() | 
    expired_iterator_exception().

-type get_shard_iterator_errors() ::
    trimmed_data_access_exception() | 
    resource_not_found_exception() | 
    internal_server_error().

-type list_streams_errors() ::
    resource_not_found_exception() | 
    internal_server_error().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns information about a stream, including the current status of
%% the stream, its Amazon Resource Name (ARN), the composition of its shards,
%% and its corresponding DynamoDB table.
%%
%% You can call `DescribeStream' at a maximum rate of 10 times per
%% second.
%%
%% Each shard in the stream has a `SequenceNumberRange' associated with
%% it. If the
%% `SequenceNumberRange' has a `StartingSequenceNumber' but no
%% `EndingSequenceNumber', then the shard is still open (able to receive
%% more stream
%% records). If both `StartingSequenceNumber' and
%% `EndingSequenceNumber'
%% are present, then that shard is closed and can no longer receive more
%% data.
-spec describe_stream(aws_client:aws_client(), describe_stream_input()) ->
    {ok, describe_stream_output(), tuple()} |
    {error, any()} |
    {error, describe_stream_errors(), tuple()}.
describe_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stream(Client, Input, []).

-spec describe_stream(aws_client:aws_client(), describe_stream_input(), proplists:proplist()) ->
    {ok, describe_stream_output(), tuple()} |
    {error, any()} |
    {error, describe_stream_errors(), tuple()}.
describe_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStream">>, Input, Options).

%% @doc Retrieves the stream records from a given shard.
%%
%% Specify a shard iterator using the `ShardIterator' parameter. The
%% shard iterator
%% specifies the position in the shard from which you want to start reading
%% stream records
%% sequentially. If there are no stream records available in the portion of
%% the shard that the
%% iterator points to, `GetRecords' returns an empty list. Note that it
%% might take
%% multiple calls to get to a portion of the shard that contains stream
%% records.
%%
%% `GetRecords' can retrieve a maximum of 1 MB of data or 1000 stream
%% records,
%% whichever comes first.
-spec get_records(aws_client:aws_client(), get_records_input()) ->
    {ok, get_records_output(), tuple()} |
    {error, any()} |
    {error, get_records_errors(), tuple()}.
get_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_records(Client, Input, []).

-spec get_records(aws_client:aws_client(), get_records_input(), proplists:proplist()) ->
    {ok, get_records_output(), tuple()} |
    {error, any()} |
    {error, get_records_errors(), tuple()}.
get_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecords">>, Input, Options).

%% @doc Returns a shard iterator.
%%
%% A shard iterator provides information
%% about how to retrieve the stream records from within a shard. Use
%% the shard iterator in a subsequent
%% `GetRecords' request to read the stream records
%% from the shard.
%%
%% A shard iterator expires 15 minutes after it is returned to the requester.
-spec get_shard_iterator(aws_client:aws_client(), get_shard_iterator_input()) ->
    {ok, get_shard_iterator_output(), tuple()} |
    {error, any()} |
    {error, get_shard_iterator_errors(), tuple()}.
get_shard_iterator(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_shard_iterator(Client, Input, []).

-spec get_shard_iterator(aws_client:aws_client(), get_shard_iterator_input(), proplists:proplist()) ->
    {ok, get_shard_iterator_output(), tuple()} |
    {error, any()} |
    {error, get_shard_iterator_errors(), tuple()}.
get_shard_iterator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetShardIterator">>, Input, Options).

%% @doc Returns an array of stream ARNs associated with the current account
%% and endpoint.
%%
%% If the
%% `TableName' parameter is present, then `ListStreams' will return
%% only the
%% streams ARNs for that table.
%%
%% You can call `ListStreams' at a maximum rate of 5 times per second.
-spec list_streams(aws_client:aws_client(), list_streams_input()) ->
    {ok, list_streams_output(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_streams(Client, Input, []).

-spec list_streams(aws_client:aws_client(), list_streams_input(), proplists:proplist()) ->
    {ok, list_streams_output(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStreams">>, Input, Options).

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
    Client1 = Client#{service => <<"dynamodb">>},
    Host = build_host(<<"streams.dynamodb">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"DynamoDBStreams_20120810.", Action/binary>>}
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
