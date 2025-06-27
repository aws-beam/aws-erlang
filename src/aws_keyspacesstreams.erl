%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Keyspaces (for Apache Cassandra) change data capture (CDC)
%% records change events for Amazon Keyspaces tables.
%%
%% The change events captured in a stream are time-ordered and de-duplicated
%% write operations. Using stream data you can build event driven
%% applications that incorporate near-real time change events from Amazon
%% Keyspaces tables.
%%
%% Amazon Keyspaces CDC is serverless and scales the infrastructure for
%% change events automatically based on the volume of changes on your table.
%%
%% This API reference describes the Amazon Keyspaces CDC stream API in
%% detail.
%%
%% For more information about Amazon Keyspaces CDC, see Working with change
%% data capture (CDC) streams in Amazon Keyspaces:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/cdc.html in the
%% Amazon Keyspaces Developer Guide.
%%
%% To learn how Amazon Keyspaces CDC API actions are recorded with
%% CloudTrail, see Amazon Keyspaces information in CloudTrail:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail
%% in the Amazon Keyspaces Developer Guide.
%%
%% To see the metrics Amazon Keyspaces CDC sends to Amazon CloudWatch, see
%% Amazon Keyspaces change data capture (CDC) CloudWatch metrics:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/metrics-dimensions.html#keyspaces-cdc-metrics
%% in the Amazon Keyspaces Developer Guide.
-module(aws_keyspacesstreams).

-export([get_records/2,
         get_records/3,
         get_shard_iterator/2,
         get_shard_iterator/3,
         get_stream/2,
         get_stream/3,
         list_streams/2,
         list_streams/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_records_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"shardIterator">> := string()
%% }
-type get_records_input() :: #{binary() => any()}.

%% Example:
%% get_records_output() :: #{
%%   <<"changeRecords">> => list(record()()),
%%   <<"nextShardIterator">> => string()
%% }
-type get_records_output() :: #{binary() => any()}.

%% Example:
%% get_shard_iterator_input() :: #{
%%   <<"sequenceNumber">> => string(),
%%   <<"shardId">> := string(),
%%   <<"shardIteratorType">> := list(any()),
%%   <<"streamArn">> := string()
%% }
-type get_shard_iterator_input() :: #{binary() => any()}.

%% Example:
%% get_shard_iterator_output() :: #{
%%   <<"shardIterator">> => string()
%% }
-type get_shard_iterator_output() :: #{binary() => any()}.

%% Example:
%% get_stream_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"shardFilter">> => shard_filter(),
%%   <<"streamArn">> := string()
%% }
-type get_stream_input() :: #{binary() => any()}.

%% Example:
%% get_stream_output() :: #{
%%   <<"creationRequestDateTime">> => non_neg_integer(),
%%   <<"keyspaceName">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"shards">> => list(shard()()),
%%   <<"streamArn">> => string(),
%%   <<"streamLabel">> => [string()],
%%   <<"streamStatus">> => list(any()),
%%   <<"streamViewType">> => list(any()),
%%   <<"tableName">> => string()
%% }
-type get_stream_output() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% keyspaces_cell() :: #{
%%   <<"metadata">> => keyspaces_metadata(),
%%   <<"value">> => list()
%% }
-type keyspaces_cell() :: #{binary() => any()}.

%% Example:
%% keyspaces_cell_map_definition() :: #{
%%   <<"key">> => list(),
%%   <<"metadata">> => keyspaces_metadata(),
%%   <<"value">> => list()
%% }
-type keyspaces_cell_map_definition() :: #{binary() => any()}.

%% Example:
%% keyspaces_metadata() :: #{
%%   <<"expirationTime">> => [string()],
%%   <<"writeTime">> => [string()]
%% }
-type keyspaces_metadata() :: #{binary() => any()}.

%% Example:
%% keyspaces_row() :: #{
%%   <<"rowMetadata">> => keyspaces_metadata(),
%%   <<"staticCells">> => map(),
%%   <<"valueCells">> => map()
%% }
-type keyspaces_row() :: #{binary() => any()}.

%% Example:
%% list_streams_input() :: #{
%%   <<"keyspaceName">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"tableName">> => string()
%% }
-type list_streams_input() :: #{binary() => any()}.

%% Example:
%% list_streams_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"streams">> => list(stream()())
%% }
-type list_streams_output() :: #{binary() => any()}.

%% Example:
%% record() :: #{
%%   <<"clusteringKeys">> => map(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"eventVersion">> => [string()],
%%   <<"newImage">> => keyspaces_row(),
%%   <<"oldImage">> => keyspaces_row(),
%%   <<"origin">> => list(any()),
%%   <<"partitionKeys">> => map(),
%%   <<"sequenceNumber">> => string()
%% }
-type record() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% sequence_number_range() :: #{
%%   <<"endingSequenceNumber">> => string(),
%%   <<"startingSequenceNumber">> => string()
%% }
-type sequence_number_range() :: #{binary() => any()}.

%% Example:
%% shard() :: #{
%%   <<"parentShardIds">> => list(string()()),
%%   <<"sequenceNumberRange">> => sequence_number_range(),
%%   <<"shardId">> => string()
%% }
-type shard() :: #{binary() => any()}.

%% Example:
%% shard_filter() :: #{
%%   <<"shardId">> => string(),
%%   <<"type">> => list(any())
%% }
-type shard_filter() :: #{binary() => any()}.

%% Example:
%% stream() :: #{
%%   <<"keyspaceName">> => string(),
%%   <<"streamArn">> => string(),
%%   <<"streamLabel">> => [string()],
%%   <<"tableName">> => string()
%% }
-type stream() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type get_records_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_shard_iterator_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_stream_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_streams_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves data records from a specified shard in an Amazon Keyspaces
%% data stream.
%%
%% This operation returns a collection of data records from the shard,
%% including the primary key columns and information about modifications made
%% to the captured table data. Each record represents a single data
%% modification in the Amazon Keyspaces table and includes metadata about
%% when the change occurred.
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

%% @doc Returns a shard iterator that serves as a bookmark for reading data
%% from a specific position in an Amazon Keyspaces data stream's shard.
%%
%% The shard iterator specifies the shard position from which to start
%% reading data records sequentially. You can specify whether to begin
%% reading at the latest record, the oldest record, or at a particular
%% sequence number within the shard.
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

%% @doc Returns detailed information about a specific data capture stream for
%% an Amazon Keyspaces table.
%%
%% The information includes the stream's Amazon Resource Name (ARN),
%% creation time, current status, retention period, shard composition, and
%% associated table details. This operation helps you monitor and manage the
%% configuration of your Amazon Keyspaces data streams.
-spec get_stream(aws_client:aws_client(), get_stream_input()) ->
    {ok, get_stream_output(), tuple()} |
    {error, any()} |
    {error, get_stream_errors(), tuple()}.
get_stream(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_stream(Client, Input, []).

-spec get_stream(aws_client:aws_client(), get_stream_input(), proplists:proplist()) ->
    {ok, get_stream_output(), tuple()} |
    {error, any()} |
    {error, get_stream_errors(), tuple()}.
get_stream(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStream">>, Input, Options).

%% @doc Returns a list of all data capture streams associated with your
%% Amazon Keyspaces account or for a specific keyspace or table.
%%
%% The response includes information such as stream ARNs, table associations,
%% creation timestamps, and current status. This operation helps you discover
%% and manage all active data streams in your Amazon Keyspaces environment.
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
    Client1 = Client#{service => <<"cassandra">>},
    Host = build_host(<<"cassandra-streams">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"KeyspacesStreams.", Action/binary>>}
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
