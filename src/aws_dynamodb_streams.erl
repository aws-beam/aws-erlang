%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon DynamoDB</fullname>
%%
%% Amazon DynamoDB Streams provides API actions for accessing streams and
%% processing stream records. To learn more about application development
%% with Streams, see <a
%% href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html">Capturing
%% Table Activity with DynamoDB Streams</a> in the Amazon DynamoDB Developer
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

%%====================================================================
%% API
%%====================================================================

%% @doc Returns information about a stream, including the current status of
%% the stream, its Amazon Resource Name (ARN), the composition of its shards,
%% and its corresponding DynamoDB table.
%%
%% <note> You can call <code>DescribeStream</code> at a maximum rate of 10
%% times per second.
%%
%% </note> Each shard in the stream has a <code>SequenceNumberRange</code>
%% associated with it. If the <code>SequenceNumberRange</code> has a
%% <code>StartingSequenceNumber</code> but no
%% <code>EndingSequenceNumber</code>, then the shard is still open (able to
%% receive more stream records). If both <code>StartingSequenceNumber</code>
%% and <code>EndingSequenceNumber</code> are present, then that shard is
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
%% <note> <code>GetRecords</code> can retrieve a maximum of 1 MB of data or
%% 1000 stream records, whichever comes first.
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
%% <note> A shard iterator expires 15 minutes after it is returned to the
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
%% <code>ListStreams</code> will return only the streams ARNs for that table.
%%
%% <note> You can call <code>ListStreams</code> at a maximum rate of 5 times
%% per second.
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
    Host = get_host(<<"streams.dynamodb">>, Client1),
    URL = get_url(Host, Client1),
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
