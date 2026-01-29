%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Sign-In manages authentication for AWS services.
%%
%% This service provides
%% secure authentication flows for accessing AWS resources from the console
%% and developer tools.
-module(aws_signin).

-export([create_o_auth2_token/2,
         create_o_auth2_token/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"error">> => list(any()),
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% access_token() :: #{
%%   <<"accessKeyId">> => [string()],
%%   <<"secretAccessKey">> => [string()],
%%   <<"sessionToken">> => [string()]
%% }
-type access_token() :: #{binary() => any()}.


%% Example:
%% create_o_auth2_token_request() :: #{
%%   <<"tokenInput">> := create_o_auth2_token_request_body()
%% }
-type create_o_auth2_token_request() :: #{binary() => any()}.


%% Example:
%% create_o_auth2_token_request_body() :: #{
%%   <<"clientId">> => string(),
%%   <<"code">> => string(),
%%   <<"codeVerifier">> => string(),
%%   <<"grantType">> => string(),
%%   <<"redirectUri">> => string(),
%%   <<"refreshToken">> => string()
%% }
-type create_o_auth2_token_request_body() :: #{binary() => any()}.


%% Example:
%% create_o_auth2_token_response() :: #{
%%   <<"tokenOutput">> => create_o_auth2_token_response_body()
%% }
-type create_o_auth2_token_response() :: #{binary() => any()}.


%% Example:
%% create_o_auth2_token_response_body() :: #{
%%   <<"accessToken">> => access_token(),
%%   <<"expiresIn">> => integer(),
%%   <<"idToken">> => string(),
%%   <<"refreshToken">> => string(),
%%   <<"tokenType">> => string()
%% }
-type create_o_auth2_token_response_body() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"error">> => list(any()),
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% too_many_requests_error() :: #{
%%   <<"error">> => list(any()),
%%   <<"message">> => [string()]
%% }
-type too_many_requests_error() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"error">> => list(any()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type create_o_auth2_token_errors() ::
    validation_exception() | 
    too_many_requests_error() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc CreateOAuth2Token API
%%
%% Path: /v1/token
%% Request Method: POST
%% Content-Type: application/json or application/x-www-form-urlencoded
%%
%% This API implements OAuth 2.0 flows for AWS Sign-In CLI clients,
%% supporting both:
%% 1.
%%
%% Authorization code redemption (grant_type=authorization_code) - NOT
%% idempotent
%% 2. Token refresh (grant_type=refresh_token) - Idempotent within token
%% validity window
%%
%% The operation behavior is determined by the grant_type parameter in the
%% request body:
%%
%% **Authorization Code Flow (NOT Idempotent):**
%% - JSON or form-encoded body with client_id, grant_type=authorization_code,
%% code, redirect_uri, code_verifier
%% - Returns access_token, token_type, expires_in, refresh_token, and
%% id_token
%% - Each authorization code can only be used ONCE for security (prevents
%% replay attacks)
%%
%% **Token Refresh Flow (Idempotent):**
%% - JSON or form-encoded body with client_id, grant_type=refresh_token,
%% refresh_token
%% - Returns access_token, token_type, expires_in, and refresh_token (no
%% id_token)
%% - Multiple calls with same refresh_token return consistent results within
%% validity window
%%
%% Authentication and authorization:
%% - Confidential clients: sigv4 signing required with signin:ExchangeToken
%% permissions
%% - CLI clients (public): authn/authz skipped based on client_id &amp;
%% grant_type
%%
%% Note: This operation cannot be marked as @idempotent because it handles
%% both idempotent
%% (token refresh) and non-idempotent (auth code redemption) flows in a
%% single endpoint.
-spec create_o_auth2_token(aws_client:aws_client(), create_o_auth2_token_request()) ->
    {ok, create_o_auth2_token_response(), tuple()} |
    {error, any()} |
    {error, create_o_auth2_token_errors(), tuple()}.
create_o_auth2_token(Client, Input) ->
    create_o_auth2_token(Client, Input, []).

-spec create_o_auth2_token(aws_client:aws_client(), create_o_auth2_token_request(), proplists:proplist()) ->
    {ok, create_o_auth2_token_response(), tuple()} |
    {error, any()} |
    {error, create_o_auth2_token_errors(), tuple()}.
create_o_auth2_token(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/token"],
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
    Client1 = Client#{service => <<"signin">>},
    Host = build_host(<<"signin">>, Client1),
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
