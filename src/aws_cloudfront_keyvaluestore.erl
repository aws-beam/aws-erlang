%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudFront KeyValueStore Service to View and Update Data in a
%% KVS Resource
-module(aws_cloudfront_keyvaluestore).

-export([delete_key/4,
         delete_key/5,
         describe_key_value_store/2,
         describe_key_value_store/4,
         describe_key_value_store/5,
         get_key/3,
         get_key/5,
         get_key/6,
         list_keys/2,
         list_keys/4,
         list_keys/5,
         put_key/4,
         put_key/5,
         update_keys/3,
         update_keys/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% delete_key_request() :: #{
%%   <<"IfMatch">> := string()
%% }
-type delete_key_request() :: #{binary() => any()}.


%% Example:
%% delete_key_request_list_item() :: #{
%%   <<"Key">> => string()
%% }
-type delete_key_request_list_item() :: #{binary() => any()}.


%% Example:
%% delete_key_response() :: #{
%%   <<"ETag">> => string(),
%%   <<"ItemCount">> => [integer()],
%%   <<"TotalSizeInBytes">> => [float()]
%% }
-type delete_key_response() :: #{binary() => any()}.

%% Example:
%% describe_key_value_store_request() :: #{}
-type describe_key_value_store_request() :: #{}.


%% Example:
%% describe_key_value_store_response() :: #{
%%   <<"Created">> => [non_neg_integer()],
%%   <<"ETag">> => string(),
%%   <<"FailureReason">> => [string()],
%%   <<"ItemCount">> => [integer()],
%%   <<"KvsARN">> => string(),
%%   <<"LastModified">> => [non_neg_integer()],
%%   <<"Status">> => [string()],
%%   <<"TotalSizeInBytes">> => [float()]
%% }
-type describe_key_value_store_response() :: #{binary() => any()}.

%% Example:
%% get_key_request() :: #{}
-type get_key_request() :: #{}.


%% Example:
%% get_key_response() :: #{
%%   <<"ItemCount">> => [integer()],
%%   <<"Key">> => string(),
%%   <<"TotalSizeInBytes">> => [float()],
%%   <<"Value">> => string()
%% }
-type get_key_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_keys_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_keys_request() :: #{binary() => any()}.


%% Example:
%% list_keys_response() :: #{
%%   <<"Items">> => list(list_keys_response_list_item()),
%%   <<"NextToken">> => [string()]
%% }
-type list_keys_response() :: #{binary() => any()}.


%% Example:
%% list_keys_response_list_item() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type list_keys_response_list_item() :: #{binary() => any()}.


%% Example:
%% put_key_request() :: #{
%%   <<"IfMatch">> := string(),
%%   <<"Value">> := string()
%% }
-type put_key_request() :: #{binary() => any()}.


%% Example:
%% put_key_request_list_item() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type put_key_request_list_item() :: #{binary() => any()}.


%% Example:
%% put_key_response() :: #{
%%   <<"ETag">> => string(),
%%   <<"ItemCount">> => [integer()],
%%   <<"TotalSizeInBytes">> => [float()]
%% }
-type put_key_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_keys_request() :: #{
%%   <<"Deletes">> => list(delete_key_request_list_item()),
%%   <<"IfMatch">> := string(),
%%   <<"Puts">> => list(put_key_request_list_item())
%% }
-type update_keys_request() :: #{binary() => any()}.


%% Example:
%% update_keys_response() :: #{
%%   <<"ETag">> => string(),
%%   <<"ItemCount">> => [integer()],
%%   <<"TotalSizeInBytes">> => [float()]
%% }
-type update_keys_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type delete_key_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type describe_key_value_store_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_key_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type list_keys_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type put_key_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_keys_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the key value pair specified by the key.
-spec delete_key(aws_client:aws_client(), binary() | list(), binary() | list(), delete_key_request()) ->
    {ok, delete_key_response(), tuple()} |
    {error, any()} |
    {error, delete_key_errors(), tuple()}.
delete_key(Client, Key, KvsARN, Input) ->
    delete_key(Client, Key, KvsARN, Input, []).

-spec delete_key(aws_client:aws_client(), binary() | list(), binary() | list(), delete_key_request(), proplists:proplist()) ->
    {ok, delete_key_response(), tuple()} |
    {error, any()} |
    {error, delete_key_errors(), tuple()}.
delete_key(Client, Key, KvsARN, Input0, Options0) ->
    Method = delete,
    Path = ["/key-value-stores/", aws_util:encode_uri(KvsARN), "/keys/", aws_util:encode_uri(Key), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Returns metadata information about Key Value Store.
-spec describe_key_value_store(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_key_value_store_response(), tuple()} |
    {error, any()} |
    {error, describe_key_value_store_errors(), tuple()}.
describe_key_value_store(Client, KvsARN)
  when is_map(Client) ->
    describe_key_value_store(Client, KvsARN, #{}, #{}).

-spec describe_key_value_store(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_key_value_store_response(), tuple()} |
    {error, any()} |
    {error, describe_key_value_store_errors(), tuple()}.
describe_key_value_store(Client, KvsARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_key_value_store(Client, KvsARN, QueryMap, HeadersMap, []).

-spec describe_key_value_store(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_key_value_store_response(), tuple()} |
    {error, any()} |
    {error, describe_key_value_store_errors(), tuple()}.
describe_key_value_store(Client, KvsARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/key-value-stores/", aws_util:encode_uri(KvsARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Returns a key value pair.
-spec get_key(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_key_response(), tuple()} |
    {error, any()} |
    {error, get_key_errors(), tuple()}.
get_key(Client, Key, KvsARN)
  when is_map(Client) ->
    get_key(Client, Key, KvsARN, #{}, #{}).

-spec get_key(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_key_response(), tuple()} |
    {error, any()} |
    {error, get_key_errors(), tuple()}.
get_key(Client, Key, KvsARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_key(Client, Key, KvsARN, QueryMap, HeadersMap, []).

-spec get_key(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_key_response(), tuple()} |
    {error, any()} |
    {error, get_key_errors(), tuple()}.
get_key(Client, Key, KvsARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/key-value-stores/", aws_util:encode_uri(KvsARN), "/keys/", aws_util:encode_uri(Key), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of key value pairs.
-spec list_keys(aws_client:aws_client(), binary() | list()) ->
    {ok, list_keys_response(), tuple()} |
    {error, any()} |
    {error, list_keys_errors(), tuple()}.
list_keys(Client, KvsARN)
  when is_map(Client) ->
    list_keys(Client, KvsARN, #{}, #{}).

-spec list_keys(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_keys_response(), tuple()} |
    {error, any()} |
    {error, list_keys_errors(), tuple()}.
list_keys(Client, KvsARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_keys(Client, KvsARN, QueryMap, HeadersMap, []).

-spec list_keys(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_keys_response(), tuple()} |
    {error, any()} |
    {error, list_keys_errors(), tuple()}.
list_keys(Client, KvsARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/key-value-stores/", aws_util:encode_uri(KvsARN), "/keys"],
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
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a new key value pair or replaces the value of an existing
%% key.
-spec put_key(aws_client:aws_client(), binary() | list(), binary() | list(), put_key_request()) ->
    {ok, put_key_response(), tuple()} |
    {error, any()} |
    {error, put_key_errors(), tuple()}.
put_key(Client, Key, KvsARN, Input) ->
    put_key(Client, Key, KvsARN, Input, []).

-spec put_key(aws_client:aws_client(), binary() | list(), binary() | list(), put_key_request(), proplists:proplist()) ->
    {ok, put_key_response(), tuple()} |
    {error, any()} |
    {error, put_key_errors(), tuple()}.
put_key(Client, Key, KvsARN, Input0, Options0) ->
    Method = put,
    Path = ["/key-value-stores/", aws_util:encode_uri(KvsARN), "/keys/", aws_util:encode_uri(Key), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Puts or Deletes multiple key value pairs in a single, all-or-nothing
%% operation.
-spec update_keys(aws_client:aws_client(), binary() | list(), update_keys_request()) ->
    {ok, update_keys_response(), tuple()} |
    {error, any()} |
    {error, update_keys_errors(), tuple()}.
update_keys(Client, KvsARN, Input) ->
    update_keys(Client, KvsARN, Input, []).

-spec update_keys(aws_client:aws_client(), binary() | list(), update_keys_request(), proplists:proplist()) ->
    {ok, update_keys_response(), tuple()} |
    {error, any()} |
    {error, update_keys_errors(), tuple()}.
update_keys(Client, KvsARN, Input0, Options0) ->
    Method = post,
    Path = ["/key-value-stores/", aws_util:encode_uri(KvsARN), "/keys"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
            {<<"ETag">>, <<"ETag">>}
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
    Client1 = Client#{service => <<"cloudfront-keyvaluestore">>},
    Host = build_host(<<"cloudfront-keyvaluestore">>, Client1),
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
