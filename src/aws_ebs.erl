%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs
%% to create EBS snapshots, write data directly to your snapshots, read data
%% on your snapshots, and identify the differences or changes between two
%% snapshots.
%%
%% If you’re an independent software vendor (ISV) who offers backup services
%% for Amazon EBS, the EBS direct APIs make it more efficient and
%% cost-effective to track incremental changes on your EBS volumes through
%% snapshots. This can be done without having to create new volumes from
%% snapshots, and then use Amazon Elastic Compute Cloud (Amazon EC2)
%% instances to compare the differences.
%%
%% You can create incremental snapshots directly from data on-premises into
%% EBS volumes and the cloud to use for quick disaster recovery. With the
%% ability to write and read snapshots, you can write your on-premises data
%% to an EBS snapshot during a disaster. Then after recovery, you can restore
%% it back to AWS or on-premises from the snapshot. You no longer need to
%% build and maintain complex mechanisms to copy data to and from Amazon EBS.
%%
%% This API reference provides detailed information about the actions, data
%% types, parameters, and errors of the EBS direct APIs. For more information
%% about the elements that make up the EBS direct APIs, and examples of how
%% to use them effectively, see Accessing the Contents of an EBS Snapshot in
%% the Amazon Elastic Compute Cloud User Guide. For more information about
%% the supported AWS Regions, endpoints, and service quotas for the EBS
%% direct APIs, see Amazon Elastic Block Store Endpoints and Quotas in the
%% AWS General Reference.
-module(aws_ebs).

-export([complete_snapshot/3,
         complete_snapshot/4,
         get_snapshot_block/4,
         get_snapshot_block/5,
         list_changed_blocks/6,
         list_changed_blocks/7,
         list_snapshot_blocks/5,
         list_snapshot_blocks/6,
         put_snapshot_block/4,
         put_snapshot_block/5,
         start_snapshot/2,
         start_snapshot/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Seals and completes the snapshot after all of the required blocks of
%% data have been written to it.
%%
%% Completing the snapshot changes the status to `completed'. You cannot
%% write new blocks to a snapshot after it has been completed.
complete_snapshot(Client, SnapshotId, Input) ->
    complete_snapshot(Client, SnapshotId, Input, []).
complete_snapshot(Client, SnapshotId, Input0, Options) ->
    Method = post,
    Path = ["/snapshots/completion/", aws_util:encode_uri(SnapshotId), ""],
    SuccessStatusCode = 202,

    HeadersMapping = [
                       {<<"x-amz-ChangedBlocksCount">>, <<"ChangedBlocksCount">>},
                       {<<"x-amz-Checksum">>, <<"Checksum">>},
                       {<<"x-amz-Checksum-Aggregation-Method">>, <<"ChecksumAggregationMethod">>},
                       {<<"x-amz-Checksum-Algorithm">>, <<"ChecksumAlgorithm">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the data in a block in an Amazon Elastic Block Store
%% snapshot.
get_snapshot_block(Client, BlockIndex, SnapshotId, BlockToken)
  when is_map(Client) ->
    get_snapshot_block(Client, BlockIndex, SnapshotId, BlockToken, []).
get_snapshot_block(Client, BlockIndex, SnapshotId, BlockToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/snapshots/", aws_util:encode_uri(SnapshotId), "/blocks/", aws_util:encode_uri(BlockIndex), ""],
    SuccessStatusCode = undefined,

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
list_changed_blocks(Client, SecondSnapshotId, FirstSnapshotId, MaxResults, NextToken, StartingBlockIndex)
  when is_map(Client) ->
    list_changed_blocks(Client, SecondSnapshotId, FirstSnapshotId, MaxResults, NextToken, StartingBlockIndex, []).
list_changed_blocks(Client, SecondSnapshotId, FirstSnapshotId, MaxResults, NextToken, StartingBlockIndex, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/snapshots/", aws_util:encode_uri(SecondSnapshotId), "/changedblocks"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"firstSnapshotId">>, FirstSnapshotId},
        {<<"maxResults">>, MaxResults},
        {<<"pageToken">>, NextToken},
        {<<"startingBlockIndex">>, StartingBlockIndex}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the blocks in an Amazon Elastic Block Store
%% snapshot.
list_snapshot_blocks(Client, SnapshotId, MaxResults, NextToken, StartingBlockIndex)
  when is_map(Client) ->
    list_snapshot_blocks(Client, SnapshotId, MaxResults, NextToken, StartingBlockIndex, []).
list_snapshot_blocks(Client, SnapshotId, MaxResults, NextToken, StartingBlockIndex, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/snapshots/", aws_util:encode_uri(SnapshotId), "/blocks"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"pageToken">>, NextToken},
        {<<"startingBlockIndex">>, StartingBlockIndex}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Writes a block of data to a snapshot.
%%
%% If the specified block contains data, the existing data is overwritten.
%% The target snapshot must be in the `pending' state.
%%
%% Data written to a snapshot must be aligned with 512-byte sectors.
put_snapshot_block(Client, BlockIndex, SnapshotId, Input) ->
    put_snapshot_block(Client, BlockIndex, SnapshotId, Input, []).
put_snapshot_block(Client, BlockIndex, SnapshotId, Input0, Options) ->
    Method = put,
    Path = ["/snapshots/", aws_util:encode_uri(SnapshotId), "/blocks/", aws_util:encode_uri(BlockIndex), ""],
    SuccessStatusCode = 201,

    HeadersMapping = [
                       {<<"x-amz-Checksum">>, <<"Checksum">>},
                       {<<"x-amz-Checksum-Algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"x-amz-Data-Length">>, <<"DataLength">>},
                       {<<"x-amz-Progress">>, <<"Progress">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
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
%% The new snapshot enters the `pending' state after the request completes.
%%
%% After creating the snapshot, use PutSnapshotBlock to write blocks of data
%% to the snapshot.
start_snapshot(Client, Input) ->
    start_snapshot(Client, Input, []).
start_snapshot(Client, Input0, Options) ->
    Method = post,
    Path = ["/snapshots"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"ebs">>},
    Host = build_host(<<"ebs">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
