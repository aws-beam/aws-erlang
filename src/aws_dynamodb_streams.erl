%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon DynamoDB Streams</fullname>
%%
%% This is the Amazon DynamoDB Streams API Reference. This guide describes
%% the low-level API actions for accessing streams and processing stream
%% records. For information about application development with DynamoDB
%% Streams, see the <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide//Streams.html">Amazon
%% DynamoDB Developer Guide</a>.
%%
%% Note that this document is intended for use with the following DynamoDB
%% documentation:
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/">Amazon
%% DynamoDB Developer Guide</a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/">Amazon
%% DynamoDB API Reference</a>
%%
%% </li> </ul> The following are short descriptions of each low-level
%% DynamoDB Streams API action, organized by function.
%%
%% <ul> <li><i>DescribeStream</i> - Returns detailed information about a
%% particular stream.
%%
%% </li> <li> <i>GetRecords</i> - Retrieves the stream records from within a
%% shard.
%%
%% </li> <li> <i>GetShardIterator</i> - Returns information on how to
%% retrieve the streams record from a shard with a given shard ID.
%%
%% </li> <li> <i>ListStreams</i> - Returns a list of all the streams
%% associated with the current AWS account and endpoint.
%%
%% </li> </ul>
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

%%====================================================================
%% API
%%====================================================================

%% @doc Returns information about a stream, including the current status of
%% the stream, its Amazon Resource Name (ARN), the composition of its shards,
%% and its corresponding DynamoDB table.
%%
%% <note>You can call <i>DescribeStream</i> at a maximum rate of 10 times per
%% second.
%%
%% </note> Each shard in the stream has a <code>SequenceNumberRange</code>
%% associated with it. If the <code>SequenceNumberRange</code> has a
%% <code>StartingSequenceNumber</code> but no
%% <code>EndingSequenceNumber</code>, then the shard is still open (able to
%% receive more stream records). If both <code>StartingSequenceNumber</code>
%% and <code>EndingSequenceNumber</code> are present, the that shared is
%% closed and can no longer receive more data.
describe_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stream(Client, Input, []).
describe_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStream">>, Input, Options).

%% @doc Retrieves the stream records from a given shard.
%%
%% Specify a shard iterator using the <code>ShardIterator</code> parameter.
%% The shard iterator specifies the position in the shard from which you want
%% to start reading stream records sequentially. If there are no stream
%% records available in the portion of the shard that the iterator points to,
%% <code>GetRecords</code> returns an empty list. Note that it might take
%% multiple calls to get to a portion of the shard that contains stream
%% records.
%%
%% <note><function>GetRecords</function> can retrieve a maximum of 1 MB of
%% data or 2000 stream records, whichever comes first.
%%
%% </note>
get_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_records(Client, Input, []).
get_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecords">>, Input, Options).

%% @doc Returns a shard iterator. A shard iterator provides information about
%% how to retrieve the stream records from within a shard. Use the shard
%% iterator in a subsequent <code>GetRecords</code> request to read the
%% stream records from the shard.
%%
%% <note>A shard iterator expires 15 minutes after it is returned to the
%% requester.
%%
%% </note>
get_shard_iterator(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_shard_iterator(Client, Input, []).
get_shard_iterator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetShardIterator">>, Input, Options).

%% @doc Returns an array of stream ARNs associated with the current account
%% and endpoint. If the <code>TableName</code> parameter is present, then
%% <i>ListStreams</i> will return only the streams ARNs for that table.
%%
%% <note>You can call <i>ListStreams</i> at a maximum rate of 5 times per
%% second.
%%
%% </note>
list_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_streams(Client, Input, []).
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
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"dynamodb">>},
    Host = aws_util:binary_join([<<"streams.dynamodb.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
               {<<"X-Amz-Target">>, << <<"DynamoDBStreams_20120810.">>/binary, Action/binary>>}],
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
