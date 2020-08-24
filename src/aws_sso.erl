%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Single Sign-On Portal is a web service that makes it easy for you
%% to assign user access to AWS SSO resources such as the user portal. Users
%% can get AWS account applications and roles assigned to them and get
%% federated into the application.
%%
%% For general information about AWS SSO, see <a
%% href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html">What
%% is AWS Single Sign-On?</a> in the <i>AWS SSO User Guide</i>.
%%
%% This API reference guide describes the AWS SSO Portal operations that you
%% can call programatically and includes detailed information on data types
%% and errors.
%%
%% <note> AWS provides SDKs that consist of libraries and sample code for
%% various programming languages and platforms, such as Java, Ruby, .Net,
%% iOS, or Android. The SDKs provide a convenient way to create programmatic
%% access to AWS SSO and other AWS services. For more information about the
%% AWS SDKs, including how to download and install them, see <a
%% href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.
%%
%% </note>
-module(aws_sso).

-export([get_role_credentials/4,
         get_role_credentials/5,
         list_account_roles/5,
         list_account_roles/6,
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
    get_role_credentials(Client, AccountId, RoleName, AccessToken, []).
get_role_credentials(Client, AccountId, RoleName, AccessToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/federation/credentials"],
    SuccessStatusCode = undefined,

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
list_account_roles(Client, AccountId, MaxResults, NextToken, AccessToken)
  when is_map(Client) ->
    list_account_roles(Client, AccountId, MaxResults, NextToken, AccessToken, []).
list_account_roles(Client, AccountId, MaxResults, NextToken, AccessToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assignment/roles"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-sso_bearer_token">>, AccessToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"account_id">>, AccountId},
        {<<"max_result">>, MaxResults},
        {<<"next_token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all AWS accounts assigned to the user. These AWS accounts are
%% assigned by the administrator of the account. For more information, see <a
%% href="https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers">Assign
%% User Access</a> in the <i>AWS SSO User Guide</i>. This operation returns a
%% paginated response.
list_accounts(Client, MaxResults, NextToken, AccessToken)
  when is_map(Client) ->
    list_accounts(Client, MaxResults, NextToken, AccessToken, []).
list_accounts(Client, MaxResults, NextToken, AccessToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assignment/accounts"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-sso_bearer_token">>, AccessToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max_result">>, MaxResults},
        {<<"next_token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the client- and server-side session that is associated with
%% the user.
logout(Client, Input) ->
    logout(Client, Input, []).
logout(Client, Input0, Options) ->
    Method = post,
    Path = ["/logout"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-sso_bearer_token">>, <<"accessToken">>}
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
    Client1 = Client#{service => <<"awsssoportal">>},
    Host = build_host(<<"portal.sso">>, Client1),
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
