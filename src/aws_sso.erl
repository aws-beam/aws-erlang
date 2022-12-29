%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IAM Identity Center (successor to AWS Single Sign-On) Portal is a
%% web service that makes it easy for you to assign user access to IAM
%% Identity Center resources such as the AWS access portal.
%%
%% Users can get AWS account applications and roles assigned to them and get
%% federated into the application.
%%
%% Although AWS Single Sign-On was renamed, the `sso' and `identitystore' API
%% namespaces will continue to retain their original name for backward
%% compatibility purposes. For more information, see IAM Identity Center
%% rename.
%%
%% This reference guide describes the IAM Identity Center Portal operations
%% that you can call programatically and includes detailed information on
%% data types and errors.
%%
%% AWS provides SDKs that consist of libraries and sample code for various
%% programming languages and platforms, such as Java, Ruby, .Net, iOS, or
%% Android. The SDKs provide a convenient way to create programmatic access
%% to IAM Identity Center and other AWS services. For more information about
%% the AWS SDKs, including how to download and install them, see Tools for
%% Amazon Web Services.
-module(aws_sso).

-export([get_role_credentials/4,
         get_role_credentials/6,
         get_role_credentials/7,
         list_account_roles/3,
         list_account_roles/5,
         list_account_roles/6,
         list_accounts/2,
         list_accounts/4,
         list_accounts/5,
         logout/2,
         logout/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the STS short-term credentials for a given role name that is
%% assigned to the user.
get_role_credentials(Client, AccountId, RoleName, AccessToken)
  when is_map(Client) ->
    get_role_credentials(Client, AccountId, RoleName, AccessToken, #{}, #{}).

get_role_credentials(Client, AccountId, RoleName, AccessToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_role_credentials(Client, AccountId, RoleName, AccessToken, QueryMap, HeadersMap, []).

get_role_credentials(Client, AccountId, RoleName, AccessToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/federation/credentials"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-sso_bearer_token">>, AccessToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"account_id">>, AccountId},
        {<<"role_name">>, RoleName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all roles that are assigned to the user for a given AWS
%% account.
list_account_roles(Client, AccountId, AccessToken)
  when is_map(Client) ->
    list_account_roles(Client, AccountId, AccessToken, #{}, #{}).

list_account_roles(Client, AccountId, AccessToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_account_roles(Client, AccountId, AccessToken, QueryMap, HeadersMap, []).

list_account_roles(Client, AccountId, AccessToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assignment/roles"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-sso_bearer_token">>, AccessToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"account_id">>, AccountId},
        {<<"max_result">>, maps:get(<<"max_result">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all AWS accounts assigned to the user.
%%
%% These AWS accounts are assigned by the administrator of the account. For
%% more information, see Assign User Access in the IAM Identity Center User
%% Guide. This operation returns a paginated response.
list_accounts(Client, AccessToken)
  when is_map(Client) ->
    list_accounts(Client, AccessToken, #{}, #{}).

list_accounts(Client, AccessToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_accounts(Client, AccessToken, QueryMap, HeadersMap, []).

list_accounts(Client, AccessToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assignment/accounts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-sso_bearer_token">>, AccessToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max_result">>, maps:get(<<"max_result">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the locally stored SSO tokens from the client-side cache and
%% sends an API call to the IAM Identity Center service to invalidate the
%% corresponding server-side IAM Identity Center sign in session.
%%
%% If a user uses IAM Identity Center to access the AWS CLI, the user’s IAM
%% Identity Center sign in session is used to obtain an IAM session, as
%% specified in the corresponding IAM Identity Center permission set. More
%% specifically, IAM Identity Center assumes an IAM role in the target
%% account on behalf of the user, and the corresponding temporary AWS
%% credentials are returned to the client.
%%
%% After user logout, any existing IAM role sessions that were created by
%% using IAM Identity Center permission sets continue based on the duration
%% configured in the permission set. For more information, see User
%% authentications in the IAM Identity Center User Guide.
logout(Client, Input) ->
    logout(Client, Input, []).
logout(Client, Input0, Options0) ->
    Method = post,
    Path = ["/logout"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"x-amz-sso_bearer_token">>, <<"accessToken">>}
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
    Client1 = Client#{service => <<"awsssoportal">>},
    Host = build_host(<<"portal.sso">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
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
