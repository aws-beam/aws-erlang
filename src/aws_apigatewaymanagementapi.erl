%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon API Gateway Management API allows you to directly manage
%% runtime aspects of your deployed APIs.
%%
%% To use it, you must explicitly set the SDK's endpoint to point to the
%% endpoint of your deployed API. The endpoint will be of the form
%% https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be
%% the endpoint corresponding to your API's custom domain and base path,
%% if applicable.
-module(aws_apigatewaymanagementapi).

-export([delete_connection/5,
         delete_connection/6,
         get_connection/4,
         get_connection/6,
         get_connection/7,
         post_to_connection/5,
         post_to_connection/6]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_connection_request() :: #{}
-type delete_connection_request() :: #{}.

%% Example:
%% forbidden_exception() :: #{}
-type forbidden_exception() :: #{}.

%% Example:
%% get_connection_request() :: #{}
-type get_connection_request() :: #{}.


%% Example:
%% get_connection_response() :: #{
%%   <<"ConnectedAt">> => non_neg_integer(),
%%   <<"Identity">> => identity(),
%%   <<"LastActiveAt">> => non_neg_integer()
%% }
-type get_connection_response() :: #{binary() => any()}.

%% Example:
%% gone_exception() :: #{}
-type gone_exception() :: #{}.


%% Example:
%% identity() :: #{
%%   <<"SourceIp">> := string(),
%%   <<"UserAgent">> := string()
%% }
-type identity() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{}
-type limit_exceeded_exception() :: #{}.


%% Example:
%% payload_too_large_exception() :: #{
%%   <<"Message">> => string()
%% }
-type payload_too_large_exception() :: #{binary() => any()}.


%% Example:
%% post_to_connection_request() :: #{
%%   <<"Data">> := binary()
%% }
-type post_to_connection_request() :: #{binary() => any()}.

-type delete_connection_errors() ::
    limit_exceeded_exception() | 
    gone_exception() | 
    forbidden_exception().

-type get_connection_errors() ::
    limit_exceeded_exception() | 
    gone_exception() | 
    forbidden_exception().

-type post_to_connection_errors() ::
    payload_too_large_exception() | 
    limit_exceeded_exception() | 
    gone_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Delete the connection with the provided id.
-spec delete_connection(aws_client:aws_client(), list() | binary(), list() | binary(), binary() | list(), delete_connection_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, ApiId, Stage, ConnectionId, Input) ->
    delete_connection(Client, ApiId, Stage, ConnectionId, Input, []).

-spec delete_connection(aws_client:aws_client(), list() | binary(), list() | binary(), binary() | list(), delete_connection_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, ApiId, Stage, ConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/", Stage, "/@connections/", aws_util:encode_uri(ConnectionId), ""],
    SuccessStatusCode = 204,
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

    request(Client#{api_id => ApiId}, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get information about the connection with the provided id.
-spec get_connection(aws_client:aws_client(), list() | binary(), list() | binary(), binary() | list()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, ApiId, Stage, ConnectionId)
  when is_map(Client) ->
    get_connection(Client, ApiId, Stage, ConnectionId, #{}, #{}).

-spec get_connection(aws_client:aws_client(), list() | binary(), list() | binary(), binary() | list(), map(), map()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, ApiId, Stage, ConnectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connection(Client, ApiId, Stage, ConnectionId, QueryMap, HeadersMap, []).

-spec get_connection(aws_client:aws_client(), list() | binary(), list() | binary(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, ApiId, Stage, ConnectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", Stage, "/@connections/", aws_util:encode_uri(ConnectionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client#{api_id => ApiId}, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends the provided data to the specified connection.
-spec post_to_connection(aws_client:aws_client(), list() | binary(), list() | binary(), binary() | list(), post_to_connection_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, post_to_connection_errors(), tuple()}.
post_to_connection(Client, ApiId, Stage, ConnectionId, Input) ->
    post_to_connection(Client, ApiId, Stage, ConnectionId, Input, []).

-spec post_to_connection(aws_client:aws_client(), list() | binary(), list() | binary(), binary() | list(), post_to_connection_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, post_to_connection_errors(), tuple()}.
post_to_connection(Client, ApiId, Stage, ConnectionId, Input0, Options0) ->
    Method = post,
    Path = ["/", Stage, "/@connections/", aws_util:encode_uri(ConnectionId), ""],
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

    request(Client#{api_id => ApiId}, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"execute-api">>},
    Host = build_host(<<"execute-api">>, Client1),
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
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload, [{uri_encode_path, true}]),
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
build_host(EndpointPrefix, #{api_id := ApiId, region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([ApiId, EndpointPrefix, Region, Endpoint], <<".">>).

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
