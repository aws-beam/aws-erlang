%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the Account Access Runtime API to list the roles that you can
%% access and retrieve temporary Amazon Web Services credentials for those
%% roles.
%%
%% You authenticate with a bearer token from IAM Identity Center. Each
%% request is scoped to a tenant.
-module(aws_account_access_runtime).

-export([get_role_credentials/4,
         get_role_credentials/6,
         get_role_credentials/7,
         list_roles/2,
         list_roles/4,
         list_roles/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% access_details() :: #{
%%   <<"accountId">> => string(),
%%   <<"accountName">> => [string()],
%%   <<"roleArn">> => [string()]
%% }
-type access_details() :: #{binary() => any()}.


%% Example:
%% get_role_credentials_request() :: #{
%%   <<"accessType">> := list(any()),
%%   <<"roleArn">> := [string()],
%%   <<"sessionDuration">> => [integer()],
%%   <<"sessionName">> => string(),
%%   <<"tenantId">> := string()
%% }
-type get_role_credentials_request() :: #{binary() => any()}.


%% Example:
%% get_role_credentials_response() :: #{
%%   <<"credentialsDetails">> => list()
%% }
-type get_role_credentials_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_roles_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"tenantId">> := string()
%% }
-type list_roles_request() :: #{binary() => any()}.


%% Example:
%% list_roles_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"roles">> => list(access_details())
%% }
-type list_roles_response() :: #{binary() => any()}.


%% Example:
%% programmatic_access_details() :: #{
%%   <<"accessKeyId">> => [string()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"secretAccessKey">> => [string()],
%%   <<"sessionToken">> => [string()]
%% }
-type programmatic_access_details() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type get_role_credentials_errors() ::
    validation_exception() | 
    unauthorized_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_roles_errors() ::
    validation_exception() | 
    unauthorized_exception() | 
    throttling_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns temporary Amazon Web Services credentials for a role that you
%% are entitled to assume within a tenant.
%%
%% You can use these credentials for programmatic access with the CLI or an
%% Amazon Web Services SDK. If you aren't entitled to the role, the
%% request fails with an `AccessDeniedException' error.
-spec get_role_credentials(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_role_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_role_credentials_errors(), tuple()}.
get_role_credentials(Client, AccessType, RoleArn, TenantId)
  when is_map(Client) ->
    get_role_credentials(Client, AccessType, RoleArn, TenantId, #{}, #{}).

-spec get_role_credentials(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_role_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_role_credentials_errors(), tuple()}.
get_role_credentials(Client, AccessType, RoleArn, TenantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_role_credentials(Client, AccessType, RoleArn, TenantId, QueryMap, HeadersMap, []).

-spec get_role_credentials(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_role_credentials_response(), tuple()} |
    {error, any()} |
    {error, get_role_credentials_errors(), tuple()}.
get_role_credentials(Client, AccessType, RoleArn, TenantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access/credentials"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accessType">>, AccessType},
        {<<"roleArn">>, RoleArn},
        {<<"sessionDuration">>, maps:get(<<"sessionDuration">>, QueryMap, undefined)},
        {<<"sessionName">>, maps:get(<<"sessionName">>, QueryMap, undefined)},
        {<<"tenantId">>, TenantId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the roles that you are entitled to access within a tenant.
%%
%% The results are paginated. Use a returned role with
%% `GetRoleCredentials' to obtain temporary credentials.
-spec list_roles(aws_client:aws_client(), binary() | list()) ->
    {ok, list_roles_response(), tuple()} |
    {error, any()} |
    {error, list_roles_errors(), tuple()}.
list_roles(Client, TenantId)
  when is_map(Client) ->
    list_roles(Client, TenantId, #{}, #{}).

-spec list_roles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_roles_response(), tuple()} |
    {error, any()} |
    {error, list_roles_errors(), tuple()}.
list_roles(Client, TenantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_roles(Client, TenantId, QueryMap, HeadersMap, []).

-spec list_roles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_roles_response(), tuple()} |
    {error, any()} |
    {error, list_roles_errors(), tuple()}.
list_roles(Client, TenantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"tenantId">>, TenantId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

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
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"account-access-runtime">>},
    DefaultHost = build_host(<<"account-access-runtime">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_ACCOUNT_ACCESS_RUNTIME">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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
    case response_body(Client) of
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
    {ok, Body} = response_body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

%% hackney 1.x and 2.x return a client reference that is read with
%% hackney:body/1. hackney 3.0 removed hackney:body/1 and returns the body in
%% the response tuple, so a binary is already the body.
response_body(Body) when is_binary(Body) ->
    {ok, Body};
response_body(Client) ->
    apply(hackney, body, [Client]).

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

