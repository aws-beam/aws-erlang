%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The frontend service for Cryo Storage.
-module(aws_backupstorage).

-export([delete_object/4,
         delete_object/5,
         get_chunk/3,
         get_chunk/5,
         get_chunk/6,
         get_object_metadata/3,
         get_object_metadata/5,
         get_object_metadata/6,
         list_chunks/3,
         list_chunks/5,
         list_chunks/6,
         list_objects/2,
         list_objects/4,
         list_objects/5,
         notify_object_complete/4,
         notify_object_complete/5,
         put_chunk/5,
         put_chunk/6,
         put_object/4,
         put_object/5,
         start_object/4,
         start_object/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Delete Object from the incremental base Backup.
delete_object(Client, BackupJobId, ObjectName, Input) ->
    delete_object(Client, BackupJobId, ObjectName, Input, []).
delete_object(Client, BackupJobId, ObjectName, Input0, Options0) ->
    Method = delete,
    Path = ["/backup-jobs/", aws_util:encode_uri(BackupJobId), "/object/", aws_util:encode_uri(ObjectName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the specified object's chunk.
get_chunk(Client, ChunkToken, StorageJobId)
  when is_map(Client) ->
    get_chunk(Client, ChunkToken, StorageJobId, #{}, #{}).

get_chunk(Client, ChunkToken, StorageJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_chunk(Client, ChunkToken, StorageJobId, QueryMap, HeadersMap, []).

get_chunk(Client, ChunkToken, StorageJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-jobs/", aws_util:encode_uri(StorageJobId), "/chunk/", aws_util:encode_uri(ChunkToken), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-checksum">>, <<"Checksum">>},
            {<<"x-amz-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
            {<<"x-amz-data-length">>, <<"Length">>}
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

%% @doc Get metadata associated with an Object.
get_object_metadata(Client, ObjectToken, StorageJobId)
  when is_map(Client) ->
    get_object_metadata(Client, ObjectToken, StorageJobId, #{}, #{}).

get_object_metadata(Client, ObjectToken, StorageJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_object_metadata(Client, ObjectToken, StorageJobId, QueryMap, HeadersMap, []).

get_object_metadata(Client, ObjectToken, StorageJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-jobs/", aws_util:encode_uri(StorageJobId), "/object/", aws_util:encode_uri(ObjectToken), "/metadata"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-checksum">>, <<"MetadataBlobChecksum">>},
            {<<"x-amz-checksum-algorithm">>, <<"MetadataBlobChecksumAlgorithm">>},
            {<<"x-amz-data-length">>, <<"MetadataBlobLength">>},
            {<<"x-amz-metadata-string">>, <<"MetadataString">>}
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

%% @doc List chunks in a given Object
list_chunks(Client, ObjectToken, StorageJobId)
  when is_map(Client) ->
    list_chunks(Client, ObjectToken, StorageJobId, #{}, #{}).

list_chunks(Client, ObjectToken, StorageJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_chunks(Client, ObjectToken, StorageJobId, QueryMap, HeadersMap, []).

list_chunks(Client, ObjectToken, StorageJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-jobs/", aws_util:encode_uri(StorageJobId), "/chunks/", aws_util:encode_uri(ObjectToken), "/list"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all Objects in a given Backup.
list_objects(Client, StorageJobId)
  when is_map(Client) ->
    list_objects(Client, StorageJobId, #{}, #{}).

list_objects(Client, StorageJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_objects(Client, StorageJobId, QueryMap, HeadersMap, []).

list_objects(Client, StorageJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-jobs/", aws_util:encode_uri(StorageJobId), "/objects/list"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"created-after">>, maps:get(<<"created-after">>, QueryMap, undefined)},
        {<<"created-before">>, maps:get(<<"created-before">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"starting-object-name">>, maps:get(<<"starting-object-name">>, QueryMap, undefined)},
        {<<"starting-object-prefix">>, maps:get(<<"starting-object-prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Complete upload
notify_object_complete(Client, BackupJobId, UploadId, Input) ->
    notify_object_complete(Client, BackupJobId, UploadId, Input, []).
notify_object_complete(Client, BackupJobId, UploadId, Input0, Options0) ->
    Method = put,
    Path = ["/backup-jobs/", aws_util:encode_uri(BackupJobId), "/object/", aws_util:encode_uri(UploadId), "/complete"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"metadata-checksum">>, <<"MetadataBlobChecksum">>},
                     {<<"metadata-checksum-algorithm">>, <<"MetadataBlobChecksumAlgorithm">>},
                     {<<"metadata-blob-length">>, <<"MetadataBlobLength">>},
                     {<<"metadata-string">>, <<"MetadataString">>},
                     {<<"checksum">>, <<"ObjectChecksum">>},
                     {<<"checksum-algorithm">>, <<"ObjectChecksumAlgorithm">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Upload chunk.
put_chunk(Client, BackupJobId, ChunkIndex, UploadId, Input) ->
    put_chunk(Client, BackupJobId, ChunkIndex, UploadId, Input, []).
put_chunk(Client, BackupJobId, ChunkIndex, UploadId, Input0, Options0) ->
    Method = put,
    Path = ["/backup-jobs/", aws_util:encode_uri(BackupJobId), "/chunk/", aws_util:encode_uri(UploadId), "/", aws_util:encode_uri(ChunkIndex), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"checksum">>, <<"Checksum">>},
                     {<<"checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                     {<<"length">>, <<"Length">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Upload object that can store object metadata String and data blob in
%% single API call using inline chunk field.
put_object(Client, BackupJobId, ObjectName, Input) ->
    put_object(Client, BackupJobId, ObjectName, Input, []).
put_object(Client, BackupJobId, ObjectName, Input0, Options0) ->
    Method = put,
    Path = ["/backup-jobs/", aws_util:encode_uri(BackupJobId), "/object/", aws_util:encode_uri(ObjectName), "/put-object"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"checksum">>, <<"InlineChunkChecksum">>},
                     {<<"checksum-algorithm">>, <<"InlineChunkChecksumAlgorithm">>},
                     {<<"length">>, <<"InlineChunkLength">>},
                     {<<"metadata-string">>, <<"MetadataString">>},
                     {<<"object-checksum">>, <<"ObjectChecksum">>},
                     {<<"object-checksum-algorithm">>, <<"ObjectChecksumAlgorithm">>},
                     {<<"throwOnDuplicate">>, <<"ThrowOnDuplicate">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Start upload containing one or many chunks.
start_object(Client, BackupJobId, ObjectName, Input) ->
    start_object(Client, BackupJobId, ObjectName, Input, []).
start_object(Client, BackupJobId, ObjectName, Input0, Options0) ->
    Method = put,
    Path = ["/backup-jobs/", aws_util:encode_uri(BackupJobId), "/object/", aws_util:encode_uri(ObjectName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"backup-storage">>},
    Host = build_host(<<"backupstorage">>, Client1),
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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
