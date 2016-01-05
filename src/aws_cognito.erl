%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon Cognito</fullname>
%%
%% Amazon Cognito is a web service that delivers scoped temporary credentials
%% to mobile devices and other untrusted environments. Amazon Cognito
%% uniquely identifies a device and supplies the user with a consistent
%% identity over the lifetime of an application.
%%
%% Using Amazon Cognito, you can enable authentication with one or more
%% third-party identity providers (Facebook, Google, or Login with Amazon),
%% and you can also choose to support unauthenticated access from your app.
%% Cognito delivers a unique identifier for each user and acts as an OpenID
%% token provider trusted by AWS Security Token Service (STS) to access
%% temporary, limited-privilege AWS credentials.
%%
%% To provide end-user credentials, first make an unsigned call to
%% <a>GetId</a>. If the end user is authenticated with one of the supported
%% identity providers, set the <code>Logins</code> map with the identity
%% provider token. <code>GetId</code> returns a unique identifier for the
%% user.
%%
%% Next, make an unsigned call to <a>GetCredentialsForIdentity</a>. This call
%% expects the same <code>Logins</code> map as the <code>GetId</code> call,
%% as well as the <code>IdentityID</code> originally returned by
%% <code>GetId</code>. Assuming your identity pool has been configured via
%% the <a>SetIdentityPoolRoles</a> operation,
%% <code>GetCredentialsForIdentity</code> will return AWS credentials for
%% your use. If your pool has not been configured with
%% <code>SetIdentityPoolRoles</code>, or if you want to follow legacy flow,
%% make an unsigned call to <a>GetOpenIdToken</a>, which returns the OpenID
%% token necessary to call STS and retrieve AWS credentials. This call
%% expects the same <code>Logins</code> map as the <code>GetId</code> call,
%% as well as the <code>IdentityID</code> originally returned by
%% <code>GetId</code>. The token returned by <code>GetOpenIdToken</code> can
%% be passed to the STS operation <a
%% href="http://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html">AssumeRoleWithWebIdentity</a>
%% to retrieve AWS credentials.
%%
%% If you want to use Amazon Cognito in an Android, iOS, or Unity
%% application, you will probably want to make API calls via the AWS Mobile
%% SDK. To learn more, see the <a
%% href="http://docs.aws.amazon.com/mobile/index.html">AWS Mobile SDK
%% Developer Guide</a>.
-module(aws_cognito).

-export([create_identity_pool/2,
         create_identity_pool/3,
         delete_identities/2,
         delete_identities/3,
         delete_identity_pool/2,
         delete_identity_pool/3,
         describe_identity/2,
         describe_identity/3,
         describe_identity_pool/2,
         describe_identity_pool/3,
         get_credentials_for_identity/2,
         get_credentials_for_identity/3,
         get_id/2,
         get_id/3,
         get_identity_pool_roles/2,
         get_identity_pool_roles/3,
         get_open_id_token/2,
         get_open_id_token/3,
         get_open_id_token_for_developer_identity/2,
         get_open_id_token_for_developer_identity/3,
         list_identities/2,
         list_identities/3,
         list_identity_pools/2,
         list_identity_pools/3,
         lookup_developer_identity/2,
         lookup_developer_identity/3,
         merge_developer_identities/2,
         merge_developer_identities/3,
         set_identity_pool_roles/2,
         set_identity_pool_roles/3,
         unlink_developer_identity/2,
         unlink_developer_identity/3,
         unlink_identity/2,
         unlink_identity/3,
         update_identity_pool/2,
         update_identity_pool/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new identity pool. The identity pool is a store of user
%% identity information that is specific to your AWS account. The limit on
%% identity pools is 60 per account. You must use AWS Developer credentials
%% to call this API.
create_identity_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_identity_pool(Client, Input, []).
create_identity_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIdentityPool">>, Input, Options).

%% @doc Deletes identities from an identity pool. You can specify a list of
%% 1-60 identities that you want to delete.
%%
%% You must use AWS Developer credentials to call this API.
delete_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identities(Client, Input, []).
delete_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentities">>, Input, Options).

%% @doc Deletes a user pool. Once a pool is deleted, users will not be able
%% to authenticate with the pool.
%%
%% You must use AWS Developer credentials to call this API.
delete_identity_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity_pool(Client, Input, []).
delete_identity_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentityPool">>, Input, Options).

%% @doc Returns metadata related to the given identity, including when the
%% identity was created and any associated linked logins.
%%
%% You must use AWS Developer credentials to call this API.
describe_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_identity(Client, Input, []).
describe_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIdentity">>, Input, Options).

%% @doc Gets details about a particular identity pool, including the pool
%% name, ID description, creation date, and current number of users.
%%
%% You must use AWS Developer credentials to call this API.
describe_identity_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_identity_pool(Client, Input, []).
describe_identity_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIdentityPool">>, Input, Options).

%% @doc Returns credentials for the the provided identity ID. Any provided
%% logins will be validated against supported login providers. If the token
%% is for cognito-identity.amazonaws.com, it will be passed through to AWS
%% Security Token Service with the appropriate role for the token.
%%
%% This is a public API. You do not need any credentials to call this API.
get_credentials_for_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_credentials_for_identity(Client, Input, []).
get_credentials_for_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCredentialsForIdentity">>, Input, Options).

%% @doc Generates (or retrieves) a Cognito ID. Supplying multiple logins will
%% create an implicit linked account.
%%
%% token+";"+tokenSecret.
%%
%% This is a public API. You do not need any credentials to call this API.
get_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_id(Client, Input, []).
get_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetId">>, Input, Options).

%% @doc Gets the roles for an identity pool.
%%
%% You must use AWS Developer credentials to call this API.
get_identity_pool_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_pool_roles(Client, Input, []).
get_identity_pool_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityPoolRoles">>, Input, Options).

%% @doc Gets an OpenID token, using a known Cognito ID. This known Cognito ID
%% is returned by <a>GetId</a>. You can optionally add additional logins for
%% the identity. Supplying multiple logins creates an implicit link.
%%
%% The OpenId token is valid for 15 minutes.
%%
%% This is a public API. You do not need any credentials to call this API.
get_open_id_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_open_id_token(Client, Input, []).
get_open_id_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpenIdToken">>, Input, Options).

%% @doc Registers (or retrieves) a Cognito <code>IdentityId</code> and an
%% OpenID Connect token for a user authenticated by your backend
%% authentication process. Supplying multiple logins will create an implicit
%% linked account. You can only specify one developer provider as part of the
%% <code>Logins</code> map, which is linked to the identity pool. The
%% developer provider is the "domain" by which Cognito will refer to your
%% users.
%%
%% You can use <code>GetOpenIdTokenForDeveloperIdentity</code> to create a
%% new identity and to link new logins (that is, user credentials issued by a
%% public provider or developer provider) to an existing identity. When you
%% want to create a new identity, the <code>IdentityId</code> should be null.
%% When you want to associate a new login with an existing
%% authenticated/unauthenticated identity, you can do so by providing the
%% existing <code>IdentityId</code>. This API will create the identity in the
%% specified <code>IdentityPoolId</code>.
%%
%% You must use AWS Developer credentials to call this API.
get_open_id_token_for_developer_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_open_id_token_for_developer_identity(Client, Input, []).
get_open_id_token_for_developer_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpenIdTokenForDeveloperIdentity">>, Input, Options).

%% @doc Lists the identities in a pool.
%%
%% You must use AWS Developer credentials to call this API.
list_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identities(Client, Input, []).
list_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentities">>, Input, Options).

%% @doc Lists all of the Cognito identity pools registered for your account.
%%
%% This is a public API. You do not need any credentials to call this API.
list_identity_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identity_pools(Client, Input, []).
list_identity_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentityPools">>, Input, Options).

%% @doc Retrieves the <code>IdentityID</code> associated with a
%% <code>DeveloperUserIdentifier</code> or the list of
%% <code>DeveloperUserIdentifier</code>s associated with an
%% <code>IdentityId</code> for an existing identity. Either
%% <code>IdentityID</code> or <code>DeveloperUserIdentifier</code> must not
%% be null. If you supply only one of these values, the other value will be
%% searched in the database and returned as a part of the response. If you
%% supply both, <code>DeveloperUserIdentifier</code> will be matched against
%% <code>IdentityID</code>. If the values are verified against the database,
%% the response returns both values and is the same as the request. Otherwise
%% a <code>ResourceConflictException</code> is thrown.
%%
%% You must use AWS Developer credentials to call this API.
lookup_developer_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    lookup_developer_identity(Client, Input, []).
lookup_developer_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LookupDeveloperIdentity">>, Input, Options).

%% @doc Merges two users having different <code>IdentityId</code>s, existing
%% in the same identity pool, and identified by the same developer provider.
%% You can use this action to request that discrete users be merged and
%% identified as a single user in the Cognito environment. Cognito associates
%% the given source user (<code>SourceUserIdentifier</code>) with the
%% <code>IdentityId</code> of the <code>DestinationUserIdentifier</code>.
%% Only developer-authenticated users can be merged. If the users to be
%% merged are associated with the same public provider, but as two different
%% users, an exception will be thrown.
%%
%% You must use AWS Developer credentials to call this API.
merge_developer_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_developer_identities(Client, Input, []).
merge_developer_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergeDeveloperIdentities">>, Input, Options).

%% @doc Sets the roles for an identity pool. These roles are used when making
%% calls to <code>GetCredentialsForIdentity</code> action.
%%
%% You must use AWS Developer credentials to call this API.
set_identity_pool_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_pool_roles(Client, Input, []).
set_identity_pool_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityPoolRoles">>, Input, Options).

%% @doc Unlinks a <code>DeveloperUserIdentifier</code> from an existing
%% identity. Unlinked developer users will be considered new identities next
%% time they are seen. If, for a given Cognito identity, you remove all
%% federated identities as well as the developer user identifier, the Cognito
%% identity becomes inaccessible.
%%
%% This is a public API. You do not need any credentials to call this API.
unlink_developer_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    unlink_developer_identity(Client, Input, []).
unlink_developer_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnlinkDeveloperIdentity">>, Input, Options).

%% @doc Unlinks a federated identity from an existing account. Unlinked
%% logins will be considered new identities next time they are seen. Removing
%% the last linked login will make this identity inaccessible.
%%
%% This is a public API. You do not need any credentials to call this API.
unlink_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    unlink_identity(Client, Input, []).
unlink_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnlinkIdentity">>, Input, Options).

%% @doc Updates a user pool.
%%
%% You must use AWS Developer credentials to call this API.
update_identity_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_identity_pool(Client, Input, []).
update_identity_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIdentityPool">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"cognito-identity">>},
    Host = aws_util:binary_join([<<"cognito-identity.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AWSCognitoIdentityService.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
