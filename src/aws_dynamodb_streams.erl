%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon DynamoDB
%%
%% Amazon DynamoDB Streams provides API actions for accessing streams and
%% processing stream records.
%%
%% To learn more about application development with Streams, see Capturing
%% Table Activity with DynamoDB Streams in the Amazon DynamoDB Developer
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
%% You can call `DescribeStream' at a maximum rate of 10 times per
%% second.
%%
%% Each shard in the stream has a `SequenceNumberRange' associated with
%% it. If the `SequenceNumberRange' has a `StartingSequenceNumber'
%% but no `EndingSequenceNumber', then the shard is still open (able to
%% receive more stream records). If both `StartingSequenceNumber' and
%% `EndingSequenceNumber' are present, then that shard is closed and can
%% no longer receive more data.
describe_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stream(Client, Input, []).
describe_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStream">>, Input, Options).

%% @doc Retrieves the stream records from a given shard.
%%
%% Specify a shard iterator using the `ShardIterator' parameter. The
%% shard iterator specifies the position in the shard from which you want to
%% start reading stream records sequentially. If there are no stream records
%% available in the portion of the shard that the iterator points to,
%% `GetRecords' returns an empty list. Note that it might take multiple
%% calls to get to a portion of the shard that contains stream records.
%%
%% `GetRecords' can retrieve a maximum of 1 MB of data or 1000 stream
%% records, whichever comes first.
get_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_records(Client, Input, []).
get_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRecords">>, Input, Options).

%% @doc Returns a shard iterator.
%%
%% A shard iterator provides information about how to retrieve the stream
%% records from within a shard. Use the shard iterator in a subsequent
%% `GetRecords' request to read the stream records from the shard.
%%
%% A shard iterator expires 15 minutes after it is returned to the requester.
get_shard_iterator(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_shard_iterator(Client, Input, []).
get_shard_iterator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetShardIterator">>, Input, Options).

%% @doc Returns an array of stream ARNs associated with the current account
%% and endpoint.
%%
%% If the `TableName' parameter is present, then `ListStreams' will
%% return only the streams ARNs for that table.
%%
%% You can call `ListStreams' at a maximum rate of 5 times per second.
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
