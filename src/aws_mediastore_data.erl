%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc An AWS Elemental MediaStore asset is an object, similar to an object
%% in the Amazon S3 service.
%%
%% Objects are the fundamental entities that are stored in AWS Elemental
%% MediaStore.
-module(aws_mediastore_data).

-export([delete_object/3,
         delete_object/4,
         describe_object/3,
         describe_object/4,
         get_object/3,
         get_object/4,
         list_items/4,
         list_items/5,
         put_object/3,
         put_object/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes an object at the specified path.
delete_object(Client, Path, Input) ->
    delete_object(Client, Path, Input, []).
delete_object(Client, Path, Input0, Options) ->
    Method = delete,
    Path = ["/", aws_util:encode_multi_segment_uri(Path), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the headers for an object at the specified path.
describe_object(Client, Path, Input) ->
    describe_object(Client, Path, Input, []).
describe_object(Client, Path, Input0, Options) ->
    Method = head,
    Path = ["/", aws_util:encode_multi_segment_uri(Path), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
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
%% If the object’s upload availability is set to `streaming`, AWS Elemental
%% MediaStore downloads the object even if it’s still uploading the object.
get_object(Client, Path, Range)
  when is_map(Client) ->
    get_object(Client, Path, Range, []).
get_object(Client, Path, Range, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", aws_util:encode_multi_segment_uri(Path), ""],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"Range">>, Range}
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
%% specified folder.
list_items(Client, MaxResults, NextToken, Path)
  when is_map(Client) ->
    list_items(Client, MaxResults, NextToken, Path, []).
list_items(Client, MaxResults, NextToken, Path, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken},
        {<<"Path">>, Path}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Uploads an object to the specified path.
%%
%% Object sizes are limited to 25 MB for standard upload availability and 10
%% MB for streaming upload availability.
put_object(Client, Path, Input) ->
    put_object(Client, Path, Input, []).
put_object(Client, Path, Input0, Options) ->
    Method = put,
    Path = ["/", aws_util:encode_multi_segment_uri(Path), ""],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"Cache-Control">>, <<"CacheControl">>},
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"x-amz-storage-class">>, <<"StorageClass">>},
                       {<<"x-amz-upload-availability">>, <<"UploadAvailability">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"mediastore">>},
    Host = build_host(<<"data.mediastore">>, Client1),
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
