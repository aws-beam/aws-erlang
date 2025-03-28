%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IAM Identity Center OpenID Connect (OIDC) is a web service that
%% enables a client (such as CLI or a
%% native application) to register with IAM Identity Center.
%%
%% The service also enables the client to fetch the
%% user’s access token upon successful authentication and authorization with
%% IAM Identity Center.
%%
%% API namespaces
%%
%% IAM Identity Center uses the `sso' and `identitystore' API
%% namespaces. IAM Identity Center
%% OpenID Connect uses the `sso-oidc' namespace.
%%
%% Considerations for using this guide
%%
%% Before you begin using this guide, we recommend that you first review the
%% following
%% important information about how the IAM Identity Center OIDC service
%% works.
%%
%% The IAM Identity Center OIDC service currently implements only the
%% portions of the OAuth 2.0 Device
%% Authorization Grant standard ([https://tools.ietf.org/html/rfc8628]) that
%% are necessary to enable single
%% sign-on authentication with the CLI.
%%
%% With older versions of the CLI, the service only emits OIDC access tokens,
%% so to
%% obtain a new token, users must explicitly re-authenticate. To access the
%% OIDC flow that
%% supports token refresh and doesn’t require re-authentication, update to
%% the latest CLI
%% version (1.27.10 for CLI V1 and 2.9.0 for CLI V2) with support for OIDC
%% token refresh
%% and configurable IAM Identity Center session durations. For more
%% information, see Configure Amazon Web Services access portal session
%% duration :
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/configure-user-session.html.
%%
%% The access tokens provided by this service grant access to all Amazon Web
%% Services account
%% entitlements assigned to an IAM Identity Center user, not just a
%% particular application.
%%
%% The documentation in this guide does not describe the mechanism to convert
%% the access
%% token into Amazon Web Services Auth (“sigv4”) credentials for use with
%% IAM-protected Amazon Web Services service
%% endpoints. For more information, see GetRoleCredentials:
%% https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html
%% in the IAM Identity Center Portal API Reference
%% Guide.
%%
%% For general information about IAM Identity Center, see What is
%% IAM Identity Center?:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html in
%% the IAM Identity Center User Guide.
-module(aws_sso_oidc).

-export([create_token/2,
         create_token/3,
         create_token_with_iam/2,
         create_token_with_iam/3,
         register_client/2,
         register_client/3,
         start_device_authorization/2,
         start_device_authorization/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% authorization_pending_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type authorization_pending_exception() :: #{binary() => any()}.


%% Example:
%% aws_additional_details() :: #{
%%   <<"identityContext">> => string()
%% }
-type aws_additional_details() :: #{binary() => any()}.


%% Example:
%% create_token_request() :: #{
%%   <<"clientId">> := string(),
%%   <<"clientSecret">> := string(),
%%   <<"code">> => string(),
%%   <<"codeVerifier">> => string(),
%%   <<"deviceCode">> => string(),
%%   <<"grantType">> := string(),
%%   <<"redirectUri">> => string(),
%%   <<"refreshToken">> => string(),
%%   <<"scope">> => list(string()())
%% }
-type create_token_request() :: #{binary() => any()}.


%% Example:
%% create_token_response() :: #{
%%   <<"accessToken">> => string(),
%%   <<"expiresIn">> => integer(),
%%   <<"idToken">> => string(),
%%   <<"refreshToken">> => string(),
%%   <<"tokenType">> => string()
%% }
-type create_token_response() :: #{binary() => any()}.


%% Example:
%% create_token_with_iam_request() :: #{
%%   <<"assertion">> => string(),
%%   <<"clientId">> := string(),
%%   <<"code">> => string(),
%%   <<"codeVerifier">> => string(),
%%   <<"grantType">> := string(),
%%   <<"redirectUri">> => string(),
%%   <<"refreshToken">> => string(),
%%   <<"requestedTokenType">> => string(),
%%   <<"scope">> => list(string()()),
%%   <<"subjectToken">> => string(),
%%   <<"subjectTokenType">> => string()
%% }
-type create_token_with_iam_request() :: #{binary() => any()}.


%% Example:
%% create_token_with_iam_response() :: #{
%%   <<"accessToken">> => string(),
%%   <<"awsAdditionalDetails">> => aws_additional_details(),
%%   <<"expiresIn">> => integer(),
%%   <<"idToken">> => string(),
%%   <<"issuedTokenType">> => string(),
%%   <<"refreshToken">> => string(),
%%   <<"scope">> => list(string()()),
%%   <<"tokenType">> => string()
%% }
-type create_token_with_iam_response() :: #{binary() => any()}.


%% Example:
%% expired_token_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type expired_token_exception() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% invalid_client_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type invalid_client_exception() :: #{binary() => any()}.


%% Example:
%% invalid_client_metadata_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type invalid_client_metadata_exception() :: #{binary() => any()}.


%% Example:
%% invalid_grant_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type invalid_grant_exception() :: #{binary() => any()}.


%% Example:
%% invalid_redirect_uri_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type invalid_redirect_uri_exception() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% invalid_request_region_exception() :: #{
%%   <<"endpoint">> => string(),
%%   <<"error">> => string(),
%%   <<"error_description">> => string(),
%%   <<"region">> => string()
%% }
-type invalid_request_region_exception() :: #{binary() => any()}.


%% Example:
%% invalid_scope_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type invalid_scope_exception() :: #{binary() => any()}.


%% Example:
%% register_client_request() :: #{
%%   <<"clientName">> := string(),
%%   <<"clientType">> := string(),
%%   <<"entitledApplicationArn">> => string(),
%%   <<"grantTypes">> => list(string()()),
%%   <<"issuerUrl">> => string(),
%%   <<"redirectUris">> => list(string()()),
%%   <<"scopes">> => list(string()())
%% }
-type register_client_request() :: #{binary() => any()}.


%% Example:
%% register_client_response() :: #{
%%   <<"authorizationEndpoint">> => string(),
%%   <<"clientId">> => string(),
%%   <<"clientIdIssuedAt">> => float(),
%%   <<"clientSecret">> => string(),
%%   <<"clientSecretExpiresAt">> => float(),
%%   <<"tokenEndpoint">> => string()
%% }
-type register_client_response() :: #{binary() => any()}.


%% Example:
%% slow_down_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type slow_down_exception() :: #{binary() => any()}.


%% Example:
%% start_device_authorization_request() :: #{
%%   <<"clientId">> := string(),
%%   <<"clientSecret">> := string(),
%%   <<"startUrl">> := string()
%% }
-type start_device_authorization_request() :: #{binary() => any()}.


%% Example:
%% start_device_authorization_response() :: #{
%%   <<"deviceCode">> => string(),
%%   <<"expiresIn">> => integer(),
%%   <<"interval">> => integer(),
%%   <<"userCode">> => string(),
%%   <<"verificationUri">> => string(),
%%   <<"verificationUriComplete">> => string()
%% }
-type start_device_authorization_response() :: #{binary() => any()}.


%% Example:
%% unauthorized_client_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type unauthorized_client_exception() :: #{binary() => any()}.


%% Example:
%% unsupported_grant_type_exception() :: #{
%%   <<"error">> => string(),
%%   <<"error_description">> => string()
%% }
-type unsupported_grant_type_exception() :: #{binary() => any()}.

-type create_token_errors() ::
    unsupported_grant_type_exception() | 
    unauthorized_client_exception() | 
    slow_down_exception() | 
    invalid_scope_exception() | 
    invalid_request_exception() | 
    invalid_grant_exception() | 
    invalid_client_exception() | 
    internal_server_exception() | 
    expired_token_exception() | 
    authorization_pending_exception() | 
    access_denied_exception().

-type create_token_with_iam_errors() ::
    unsupported_grant_type_exception() | 
    unauthorized_client_exception() | 
    slow_down_exception() | 
    invalid_scope_exception() | 
    invalid_request_region_exception() | 
    invalid_request_exception() | 
    invalid_grant_exception() | 
    invalid_client_exception() | 
    internal_server_exception() | 
    expired_token_exception() | 
    authorization_pending_exception() | 
    access_denied_exception().

-type register_client_errors() ::
    unsupported_grant_type_exception() | 
    invalid_scope_exception() | 
    invalid_request_exception() | 
    invalid_redirect_uri_exception() | 
    invalid_client_metadata_exception() | 
    internal_server_exception().

-type start_device_authorization_errors() ::
    unauthorized_client_exception() | 
    slow_down_exception() | 
    invalid_request_exception() | 
    invalid_client_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates and returns access and refresh tokens for clients that are
%% authenticated using
%% client secrets.
%%
%% The access token can be used to fetch short-lived credentials for the
%% assigned
%% AWS accounts or to access application APIs using `bearer'
%% authentication.
-spec create_token(aws_client:aws_client(), create_token_request()) ->
    {ok, create_token_response(), tuple()} |
    {error, any()} |
    {error, create_token_errors(), tuple()}.
create_token(Client, Input) ->
    create_token(Client, Input, []).

-spec create_token(aws_client:aws_client(), create_token_request(), proplists:proplist()) ->
    {ok, create_token_response(), tuple()} |
    {error, any()} |
    {error, create_token_errors(), tuple()}.
create_token(Client, Input0, Options0) ->
    Method = post,
    Path = ["/token"],
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

%% @doc Creates and returns access and refresh tokens for clients and
%% applications that are
%% authenticated using IAM entities.
%%
%% The access token can be used to fetch short-lived
%% credentials for the assigned Amazon Web Services accounts or to access
%% application APIs using
%% `bearer' authentication.
-spec create_token_with_iam(aws_client:aws_client(), create_token_with_iam_request()) ->
    {ok, create_token_with_iam_response(), tuple()} |
    {error, any()} |
    {error, create_token_with_iam_errors(), tuple()}.
create_token_with_iam(Client, Input) ->
    create_token_with_iam(Client, Input, []).

-spec create_token_with_iam(aws_client:aws_client(), create_token_with_iam_request(), proplists:proplist()) ->
    {ok, create_token_with_iam_response(), tuple()} |
    {error, any()} |
    {error, create_token_with_iam_errors(), tuple()}.
create_token_with_iam(Client, Input0, Options0) ->
    Method = post,
    Path = ["/token?aws_iam=t"],
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

%% @doc Registers a public client with IAM Identity Center.
%%
%% This allows clients to perform authorization using
%% the authorization code grant with Proof Key for Code Exchange (PKCE)
%% or the device
%% code grant.
-spec register_client(aws_client:aws_client(), register_client_request()) ->
    {ok, register_client_response(), tuple()} |
    {error, any()} |
    {error, register_client_errors(), tuple()}.
register_client(Client, Input) ->
    register_client(Client, Input, []).

-spec register_client(aws_client:aws_client(), register_client_request(), proplists:proplist()) ->
    {ok, register_client_response(), tuple()} |
    {error, any()} |
    {error, register_client_errors(), tuple()}.
register_client(Client, Input0, Options0) ->
    Method = post,
    Path = ["/client/register"],
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

%% @doc Initiates device authorization by requesting a pair of verification
%% codes from the
%% authorization service.
-spec start_device_authorization(aws_client:aws_client(), start_device_authorization_request()) ->
    {ok, start_device_authorization_response(), tuple()} |
    {error, any()} |
    {error, start_device_authorization_errors(), tuple()}.
start_device_authorization(Client, Input) ->
    start_device_authorization(Client, Input, []).

-spec start_device_authorization(aws_client:aws_client(), start_device_authorization_request(), proplists:proplist()) ->
    {ok, start_device_authorization_response(), tuple()} |
    {error, any()} |
    {error, start_device_authorization_errors(), tuple()}.
start_device_authorization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/device_authorization"],
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
    Client1 = Client#{service => <<"sso-oauth">>},
    Host = build_host(<<"oidc">>, Client1),
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
