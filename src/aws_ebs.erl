%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs
%% to create Amazon EBS snapshots, write data directly to
%% your snapshots, read data on your snapshots, and identify the differences
%% or changes between
%% two snapshots.
%%
%% If you’re an independent software vendor (ISV) who offers backup services
%% for
%% Amazon EBS, the EBS direct APIs make it more efficient and cost-effective
%% to track incremental changes on
%% your Amazon EBS volumes through snapshots. This can be done without having
%% to create new volumes
%% from snapshots, and then use Amazon Elastic Compute Cloud (Amazon EC2)
%% instances to compare the differences.
%%
%% You can create incremental snapshots directly from data on-premises into
%% volumes and the
%% cloud to use for quick disaster recovery. With the ability to write and
%% read snapshots, you can
%% write your on-premises data to an snapshot during a disaster. Then after
%% recovery, you can
%% restore it back to Amazon Web Services or on-premises from the snapshot.
%% You no longer need to build and
%% maintain complex mechanisms to copy data to and from Amazon EBS.
%%
%% This API reference provides detailed information about the actions, data
%% types,
%% parameters, and errors of the EBS direct APIs. For more information about
%% the elements that
%% make up the EBS direct APIs, and examples of how to use them effectively,
%% see Accessing the Contents of an Amazon EBS Snapshot:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html
%% in the Amazon Elastic Compute Cloud User
%% Guide. For more information about the supported Amazon Web Services
%% Regions, endpoints,
%% and service quotas for the EBS direct APIs, see Amazon Elastic Block Store
%% Endpoints and Quotas:
%% https://docs.aws.amazon.com/general/latest/gr/ebs-service.html in
%% the Amazon Web Services General Reference.
-module(aws_ebs).

-export([complete_snapshot/3,
         complete_snapshot/4,
         get_snapshot_block/4,
         get_snapshot_block/6,
         get_snapshot_block/7,
         list_changed_blocks/2,
         list_changed_blocks/4,
         list_changed_blocks/5,
         list_snapshot_blocks/2,
         list_snapshot_blocks/4,
         list_snapshot_blocks/5,
         put_snapshot_block/4,
         put_snapshot_block/5,
         start_snapshot/2,
         start_snapshot/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% block() :: #{
%%   <<"BlockIndex">> => integer(),
%%   <<"BlockToken">> => string()
%% }
-type block() :: #{binary() => any()}.


%% Example:
%% changed_block() :: #{
%%   <<"BlockIndex">> => integer(),
%%   <<"FirstBlockToken">> => string(),
%%   <<"SecondBlockToken">> => string()
%% }
-type changed_block() :: #{binary() => any()}.


%% Example:
%% complete_snapshot_request() :: #{
%%   <<"ChangedBlocksCount">> := integer(),
%%   <<"Checksum">> => string(),
%%   <<"ChecksumAggregationMethod">> => list(any()),
%%   <<"ChecksumAlgorithm">> => list(any())
%% }
-type complete_snapshot_request() :: #{binary() => any()}.


%% Example:
%% complete_snapshot_response() :: #{
%%   <<"Status">> => list(any())
%% }
-type complete_snapshot_response() :: #{binary() => any()}.


%% Example:
%% concurrent_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% get_snapshot_block_request() :: #{
%%   <<"BlockToken">> := string()
%% }
-type get_snapshot_block_request() :: #{binary() => any()}.


%% Example:
%% get_snapshot_block_response() :: #{
%%   <<"BlockData">> => binary(),
%%   <<"Checksum">> => string(),
%%   <<"ChecksumAlgorithm">> => list(any()),
%%   <<"DataLength">> => integer()
%% }
-type get_snapshot_block_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_changed_blocks_request() :: #{
%%   <<"FirstSnapshotId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartingBlockIndex">> => integer()
%% }
-type list_changed_blocks_request() :: #{binary() => any()}.


%% Example:
%% list_changed_blocks_response() :: #{
%%   <<"BlockSize">> => integer(),
%%   <<"ChangedBlocks">> => list(changed_block()),
%%   <<"ExpiryTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"VolumeSize">> => float()
%% }
-type list_changed_blocks_response() :: #{binary() => any()}.


%% Example:
%% list_snapshot_blocks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartingBlockIndex">> => integer()
%% }
-type list_snapshot_blocks_request() :: #{binary() => any()}.


%% Example:
%% list_snapshot_blocks_response() :: #{
%%   <<"BlockSize">> => integer(),
%%   <<"Blocks">> => list(block()),
%%   <<"ExpiryTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"VolumeSize">> => float()
%% }
-type list_snapshot_blocks_response() :: #{binary() => any()}.


%% Example:
%% put_snapshot_block_request() :: #{
%%   <<"BlockData">> := binary(),
%%   <<"Checksum">> := string(),
%%   <<"ChecksumAlgorithm">> := list(any()),
%%   <<"DataLength">> := integer(),
%%   <<"Progress">> => integer()
%% }
-type put_snapshot_block_request() :: #{binary() => any()}.


%% Example:
%% put_snapshot_block_response() :: #{
%%   <<"Checksum">> => string(),
%%   <<"ChecksumAlgorithm">> => list(any())
%% }
-type put_snapshot_block_response() :: #{binary() => any()}.


%% Example:
%% request_throttled_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type request_throttled_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% start_snapshot_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Encrypted">> => boolean(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"ParentSnapshotId">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"Timeout">> => integer(),
%%   <<"VolumeSize">> := float()
%% }
-type start_snapshot_request() :: #{binary() => any()}.


%% Example:
%% start_snapshot_response() :: #{
%%   <<"BlockSize">> => integer(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ParentSnapshotId">> => string(),
%%   <<"SnapshotId">> => string(),
%%   <<"SseType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"VolumeSize">> => float()
%% }
-type start_snapshot_response() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

-type complete_snapshot_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_throttled_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_snapshot_block_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_throttled_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_changed_blocks_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_throttled_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_snapshot_blocks_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_throttled_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type put_snapshot_block_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_throttled_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type start_snapshot_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_throttled_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    concurrent_limit_exceeded_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Seals and completes the snapshot after all of the required blocks of
%% data have been
%% written to it.
%%
%% Completing the snapshot changes the status to `completed'. You
%% cannot write new blocks to a snapshot after it has been completed.
%%
%% You should always retry requests that receive server (`5xx')
%% error responses, and `ThrottlingException' and
%% `RequestThrottledException'
%% client error responses. For more information see Error retries:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html in
%% the
%% Amazon Elastic Compute Cloud User Guide.
-spec complete_snapshot(aws_client:aws_client(), binary() | list(), complete_snapshot_request()) ->
    {ok, complete_snapshot_response(), tuple()} |
    {error, any()} |
    {error, complete_snapshot_errors(), tuple()}.
complete_snapshot(Client, SnapshotId, Input) ->
    complete_snapshot(Client, SnapshotId, Input, []).

-spec complete_snapshot(aws_client:aws_client(), binary() | list(), complete_snapshot_request(), proplists:proplist()) ->
    {ok, complete_snapshot_response(), tuple()} |
    {error, any()} |
    {error, complete_snapshot_errors(), tuple()}.
complete_snapshot(Client, SnapshotId, Input0, Options0) ->
    Method = post,
    Path = ["/snapshots/completion/", aws_util:encode_uri(SnapshotId), ""],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-ChangedBlocksCount">>, <<"ChangedBlocksCount">>},
                       {<<"x-amz-Checksum">>, <<"Checksum">>},
                       {<<"x-amz-Checksum-Aggregation-Method">>, <<"ChecksumAggregationMethod">>},
                       {<<"x-amz-Checksum-Algorithm">>, <<"ChecksumAlgorithm">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the data in a block in an Amazon Elastic Block Store
%% snapshot.
%%
%% You should always retry requests that receive server (`5xx')
%% error responses, and `ThrottlingException' and
%% `RequestThrottledException'
%% client error responses. For more information see Error retries:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html in
%% the
%% Amazon Elastic Compute Cloud User Guide.
-spec get_snapshot_block(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_snapshot_block_response(), tuple()} |
    {error, any()} |
    {error, get_snapshot_block_errors(), tuple()}.
get_snapshot_block(Client, BlockIndex, SnapshotId, BlockToken)
  when is_map(Client) ->
    get_snapshot_block(Client, BlockIndex, SnapshotId, BlockToken, #{}, #{}).

-spec get_snapshot_block(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_snapshot_block_response(), tuple()} |
    {error, any()} |
    {error, get_snapshot_block_errors(), tuple()}.
get_snapshot_block(Client, BlockIndex, SnapshotId, BlockToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_snapshot_block(Client, BlockIndex, SnapshotId, BlockToken, QueryMap, HeadersMap, []).

-spec get_snapshot_block(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_snapshot_block_response(), tuple()} |
    {error, any()} |
    {error, get_snapshot_block_errors(), tuple()}.
get_snapshot_block(Client, BlockIndex, SnapshotId, BlockToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/snapshots/", aws_util:encode_uri(SnapshotId), "/blocks/", aws_util:encode_uri(BlockIndex), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"blockToken">>, BlockToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-Checksum">>, <<"Checksum">>},
            {<<"x-amz-Checksum-Algorithm">>, <<"ChecksumAlgorithm">>},
            {<<"x-amz-Data-Length">>, <<"DataLength">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Returns information about the blocks that are different between two
%% Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.
%%
%% You should always retry requests that receive server (`5xx')
%% error responses, and `ThrottlingException' and
%% `RequestThrottledException'
%% client error responses. For more information see Error retries:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html in
%% the
%% Amazon Elastic Compute Cloud User Guide.
-spec list_changed_blocks(aws_client:aws_client(), binary() | list()) ->
    {ok, list_changed_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_changed_blocks_errors(), tuple()}.
list_changed_blocks(Client, SecondSnapshotId)
  when is_map(Client) ->
    list_changed_blocks(Client, SecondSnapshotId, #{}, #{}).

-spec list_changed_blocks(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_changed_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_changed_blocks_errors(), tuple()}.
list_changed_blocks(Client, SecondSnapshotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_changed_blocks(Client, SecondSnapshotId, QueryMap, HeadersMap, []).

-spec list_changed_blocks(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_changed_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_changed_blocks_errors(), tuple()}.
list_changed_blocks(Client, SecondSnapshotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/snapshots/", aws_util:encode_uri(SecondSnapshotId), "/changedblocks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"firstSnapshotId">>, maps:get(<<"firstSnapshotId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"pageToken">>, maps:get(<<"pageToken">>, QueryMap, undefined)},
        {<<"startingBlockIndex">>, maps:get(<<"startingBlockIndex">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the blocks in an Amazon Elastic Block Store
%% snapshot.
%%
%% You should always retry requests that receive server (`5xx')
%% error responses, and `ThrottlingException' and
%% `RequestThrottledException'
%% client error responses. For more information see Error retries:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html in
%% the
%% Amazon Elastic Compute Cloud User Guide.
-spec list_snapshot_blocks(aws_client:aws_client(), binary() | list()) ->
    {ok, list_snapshot_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_snapshot_blocks_errors(), tuple()}.
list_snapshot_blocks(Client, SnapshotId)
  when is_map(Client) ->
    list_snapshot_blocks(Client, SnapshotId, #{}, #{}).

-spec list_snapshot_blocks(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_snapshot_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_snapshot_blocks_errors(), tuple()}.
list_snapshot_blocks(Client, SnapshotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_snapshot_blocks(Client, SnapshotId, QueryMap, HeadersMap, []).

-spec list_snapshot_blocks(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_snapshot_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_snapshot_blocks_errors(), tuple()}.
list_snapshot_blocks(Client, SnapshotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/snapshots/", aws_util:encode_uri(SnapshotId), "/blocks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"pageToken">>, maps:get(<<"pageToken">>, QueryMap, undefined)},
        {<<"startingBlockIndex">>, maps:get(<<"startingBlockIndex">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Writes a block of data to a snapshot.
%%
%% If the specified block contains
%% data, the existing data is overwritten. The target snapshot must be in the
%% `pending' state.
%%
%% Data written to a snapshot must be aligned with 512-KiB sectors.
%%
%% You should always retry requests that receive server (`5xx')
%% error responses, and `ThrottlingException' and
%% `RequestThrottledException'
%% client error responses. For more information see Error retries:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html in
%% the
%% Amazon Elastic Compute Cloud User Guide.
-spec put_snapshot_block(aws_client:aws_client(), binary() | list(), binary() | list(), put_snapshot_block_request()) ->
    {ok, put_snapshot_block_response(), tuple()} |
    {error, any()} |
    {error, put_snapshot_block_errors(), tuple()}.
put_snapshot_block(Client, BlockIndex, SnapshotId, Input) ->
    put_snapshot_block(Client, BlockIndex, SnapshotId, Input, []).

-spec put_snapshot_block(aws_client:aws_client(), binary() | list(), binary() | list(), put_snapshot_block_request(), proplists:proplist()) ->
    {ok, put_snapshot_block_response(), tuple()} |
    {error, any()} |
    {error, put_snapshot_block_errors(), tuple()}.
put_snapshot_block(Client, BlockIndex, SnapshotId, Input0, Options0) ->
    Method = put,
    Path = ["/snapshots/", aws_util:encode_uri(SnapshotId), "/blocks/", aws_util:encode_uri(BlockIndex), ""],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-Checksum">>, <<"Checksum">>},
                       {<<"x-amz-Checksum-Algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"x-amz-Data-Length">>, <<"DataLength">>},
                       {<<"x-amz-Progress">>, <<"Progress">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-Checksum">>, <<"Checksum">>},
            {<<"x-amz-Checksum-Algorithm">>, <<"ChecksumAlgorithm">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a new Amazon EBS snapshot.
%%
%% The new snapshot enters the `pending' state
%% after the request completes.
%%
%% After creating the snapshot, use PutSnapshotBlock:
%% https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html
%% to
%% write blocks of data to the snapshot.
%%
%% You should always retry requests that receive server (`5xx')
%% error responses, and `ThrottlingException' and
%% `RequestThrottledException'
%% client error responses. For more information see Error retries:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html in
%% the
%% Amazon Elastic Compute Cloud User Guide.
-spec start_snapshot(aws_client:aws_client(), start_snapshot_request()) ->
    {ok, start_snapshot_response(), tuple()} |
    {error, any()} |
    {error, start_snapshot_errors(), tuple()}.
start_snapshot(Client, Input) ->
    start_snapshot(Client, Input, []).

-spec start_snapshot(aws_client:aws_client(), start_snapshot_request(), proplists:proplist()) ->
    {ok, start_snapshot_response(), tuple()} |
    {error, any()} |
    {error, start_snapshot_errors(), tuple()}.
start_snapshot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/snapshots"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"ebs">>},
    Host = build_host(<<"ebs">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
