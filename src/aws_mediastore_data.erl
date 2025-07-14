%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc An AWS Elemental MediaStore asset is an object, similar to an object
%% in the Amazon S3
%% service.
%%
%% Objects are the fundamental entities that are stored in AWS Elemental
%% MediaStore.
-module(aws_mediastore_data).

-export([delete_object/3,
         delete_object/4,
         describe_object/3,
         describe_object/4,
         get_object/2,
         get_object/4,
         get_object/5,
         list_items/1,
         list_items/3,
         list_items/4,
         put_object/3,
         put_object/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% container_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type container_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_object_request() :: #{}
-type delete_object_request() :: #{}.

%% Example:
%% delete_object_response() :: #{}
-type delete_object_response() :: #{}.

%% Example:
%% describe_object_request() :: #{}
-type describe_object_request() :: #{}.


%% Example:
%% describe_object_response() :: #{
%%   <<"CacheControl">> => string(),
%%   <<"ContentLength">> => float(),
%%   <<"ContentType">> => string(),
%%   <<"ETag">> => string(),
%%   <<"LastModified">> => non_neg_integer()
%% }
-type describe_object_response() :: #{binary() => any()}.


%% Example:
%% get_object_request() :: #{
%%   <<"Range">> => string()
%% }
-type get_object_request() :: #{binary() => any()}.


%% Example:
%% get_object_response() :: #{
%%   <<"Body">> => binary(),
%%   <<"CacheControl">> => string(),
%%   <<"ContentLength">> => float(),
%%   <<"ContentRange">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"ETag">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"StatusCode">> => integer()
%% }
-type get_object_response() :: #{binary() => any()}.


%% Example:
%% internal_server_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.


%% Example:
%% item() :: #{
%%   <<"ContentLength">> => float(),
%%   <<"ContentType">> => string(),
%%   <<"ETag">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type item() :: #{binary() => any()}.


%% Example:
%% list_items_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Path">> => string()
%% }
-type list_items_request() :: #{binary() => any()}.


%% Example:
%% list_items_response() :: #{
%%   <<"Items">> => list(item()),
%%   <<"NextToken">> => string()
%% }
-type list_items_response() :: #{binary() => any()}.


%% Example:
%% object_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type object_not_found_exception() :: #{binary() => any()}.


%% Example:
%% put_object_request() :: #{
%%   <<"Body">> := binary(),
%%   <<"CacheControl">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"StorageClass">> => list(any()),
%%   <<"UploadAvailability">> => list(any())
%% }
-type put_object_request() :: #{binary() => any()}.


%% Example:
%% put_object_response() :: #{
%%   <<"ContentSHA256">> => string(),
%%   <<"ETag">> => string(),
%%   <<"StorageClass">> => list(any())
%% }
-type put_object_response() :: #{binary() => any()}.


%% Example:
%% requested_range_not_satisfiable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type requested_range_not_satisfiable_exception() :: #{binary() => any()}.

-type delete_object_errors() ::
    object_not_found_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type describe_object_errors() ::
    object_not_found_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type get_object_errors() ::
    requested_range_not_satisfiable_exception() | 
    object_not_found_exception() | 
    internal_server_error() | 
    container_not_found_exception().

-type list_items_errors() ::
    internal_server_error() | 
    container_not_found_exception().

-type put_object_errors() ::
    internal_server_error() | 
    container_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes an object at the specified path.
-spec delete_object(aws_client:aws_client(), binary() | list(), delete_object_request()) ->
    {ok, delete_object_response(), tuple()} |
    {error, any()} |
    {error, delete_object_errors(), tuple()}.
delete_object(Client, Path, Input) ->
    delete_object(Client, Path, Input, []).

-spec delete_object(aws_client:aws_client(), binary() | list(), delete_object_request(), proplists:proplist()) ->
    {ok, delete_object_response(), tuple()} |
    {error, any()} |
    {error, delete_object_errors(), tuple()}.
delete_object(Client, Path, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_multi_segment_uri(Path), ""],
    SuccessStatusCode = 200,
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

%% @doc Gets the headers for an object at the specified path.
-spec describe_object(aws_client:aws_client(), binary() | list(), describe_object_request()) ->
    {ok, describe_object_response(), tuple()} |
    {error, any()} |
    {error, describe_object_errors(), tuple()}.
describe_object(Client, Path, Input) ->
    describe_object(Client, Path, Input, []).

-spec describe_object(aws_client:aws_client(), binary() | list(), describe_object_request(), proplists:proplist()) ->
    {ok, describe_object_response(), tuple()} |
    {error, any()} |
    {error, describe_object_errors(), tuple()}.
describe_object(Client, Path, Input0, Options0) ->
    Method = head,
    Path = ["/", aws_util:encode_multi_segment_uri(Path), ""],
    SuccessStatusCode = 200,
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, {_, ResponseHeaders} = Response} ->
        Body0 = #{},
        ResponseHeadersParams =
          [
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Length">>, <<"ContentLength">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"ETag">>, <<"ETag">>},
            {<<"Last-Modified">>, <<"LastModified">>}
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

%% @doc Downloads the object at the specified path.
%%
%% If the object’s upload availability is set to `streaming', AWS
%% Elemental MediaStore downloads the object even if it’s still uploading the
%% object.
-spec get_object(aws_client:aws_client(), binary() | list()) ->
    {ok, get_object_response(), tuple()} |
    {error, any()} |
    {error, get_object_errors(), tuple()}.
get_object(Client, Path)
  when is_map(Client) ->
    get_object(Client, Path, #{}, #{}).

-spec get_object(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_object_response(), tuple()} |
    {error, any()} |
    {error, get_object_errors(), tuple()}.
get_object(Client, Path, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_object(Client, Path, QueryMap, HeadersMap, []).

-spec get_object(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_object_response(), tuple()} |
    {error, any()} |
    {error, get_object_errors(), tuple()}.
get_object(Client, Path, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_multi_segment_uri(Path), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, true),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Range">>, maps:get(<<"Range">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Length">>, <<"ContentLength">>},
            {<<"Content-Range">>, <<"ContentRange">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"ETag">>, <<"ETag">>},
            {<<"Last-Modified">>, <<"LastModified">>}
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

%% @doc Provides a list of metadata entries about folders and objects in the
%% specified
%% folder.
-spec list_items(aws_client:aws_client()) ->
    {ok, list_items_response(), tuple()} |
    {error, any()} |
    {error, list_items_errors(), tuple()}.
list_items(Client)
  when is_map(Client) ->
    list_items(Client, #{}, #{}).

-spec list_items(aws_client:aws_client(), map(), map()) ->
    {ok, list_items_response(), tuple()} |
    {error, any()} |
    {error, list_items_errors(), tuple()}.
list_items(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_items(Client, QueryMap, HeadersMap, []).

-spec list_items(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_items_response(), tuple()} |
    {error, any()} |
    {error, list_items_errors(), tuple()}.
list_items(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"Path">>, maps:get(<<"Path">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Uploads an object to the specified path.
%%
%% Object sizes are limited to 25 MB for standard upload availability and 10
%% MB for streaming upload availability.
-spec put_object(aws_client:aws_client(), binary() | list(), put_object_request()) ->
    {ok, put_object_response(), tuple()} |
    {error, any()} |
    {error, put_object_errors(), tuple()}.
put_object(Client, Path, Input) ->
    put_object(Client, Path, Input, []).

-spec put_object(aws_client:aws_client(), binary() | list(), put_object_request(), proplists:proplist()) ->
    {ok, put_object_response(), tuple()} |
    {error, any()} |
    {error, put_object_errors(), tuple()}.
put_object(Client, Path, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_multi_segment_uri(Path), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, true),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Cache-Control">>, <<"CacheControl">>},
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"x-amz-storage-class">>, <<"StorageClass">>},
                       {<<"x-amz-upload-availability">>, <<"UploadAvailability">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"mediastore">>},
    Host = build_host(<<"data.mediastore">>, Client1),
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
