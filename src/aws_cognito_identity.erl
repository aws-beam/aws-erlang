%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Cognito Federated Identities
%%
%% Amazon Cognito Federated Identities is a web service that delivers scoped
%% temporary credentials to mobile devices and other untrusted environments.
%%
%% It uniquely identifies a device and supplies the user with a consistent
%% identity over the lifetime of an application.
%%
%% Using Amazon Cognito Federated Identities, you can enable authentication
%% with one or more third-party identity providers (Facebook, Google, or
%% Login with Amazon) or an Amazon Cognito user pool, and you can also choose
%% to support unauthenticated access from your app. Cognito delivers a unique
%% identifier for each user and acts as an OpenID token provider trusted by
%% AWS Security Token Service (STS) to access temporary, limited-privilege
%% AWS credentials.
%%
%% For a description of the authentication flow from the Amazon Cognito
%% Developer Guide see Authentication Flow.
%%
%% For more information see Amazon Cognito Federated Identities.
-module(aws_cognito_identity).

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
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         lookup_developer_identity/2,
         lookup_developer_identity/3,
         merge_developer_identities/2,
         merge_developer_identities/3,
         set_identity_pool_roles/2,
         set_identity_pool_roles/3,
         tag_resource/2,
         tag_resource/3,
         unlink_developer_identity/2,
         unlink_developer_identity/3,
         unlink_identity/2,
         unlink_identity/3,
         untag_resource/2,
         untag_resource/3,
         update_identity_pool/2,
         update_identity_pool/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new identity pool.
%%
%% The identity pool is a store of user identity information that is specific
%% to your AWS account. The keys for `SupportedLoginProviders` are as
%% follows:
%%
%% <ul> <li> Facebook: `graph.facebook.com`
%%
%% </li> <li> Google: `accounts.google.com`
%%
%% </li> <li> Amazon: `www.amazon.com`
%%
%% </li> <li> Twitter: `api.twitter.com`
%%
%% </li> <li> Digits: `www.digits.com`
%%
%% </li> </ul> You must use AWS Developer credentials to call this API.
create_identity_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_identity_pool(Client, Input, []).
create_identity_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIdentityPool">>, Input, Options).

%% @doc Deletes identities from an identity pool.
%%
%% You can specify a list of 1-60 identities that you want to delete.
%%
%% You must use AWS Developer credentials to call this API.
delete_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identities(Client, Input, []).
delete_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentities">>, Input, Options).

%% @doc Deletes an identity pool.
%%
%% Once a pool is deleted, users will not be able to authenticate with the
%% pool.
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

%% @doc Returns credentials for the provided identity ID.
%%
%% Any provided logins will be validated against supported login providers.
%% If the token is for cognito-identity.amazonaws.com, it will be passed
%% through to AWS Security Token Service with the appropriate role for the
%% token.
%%
%% This is a public API. You do not need any credentials to call this API.
get_credentials_for_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_credentials_for_identity(Client, Input, []).
get_credentials_for_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCredentialsForIdentity">>, Input, Options).

%% @doc Generates (or retrieves) a Cognito ID.
%%
%% Supplying multiple logins will create an implicit linked account.
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

%% @doc Gets an OpenID token, using a known Cognito ID.
%%
%% This known Cognito ID is returned by `GetId`. You can optionally add
%% additional logins for the identity. Supplying multiple logins creates an
%% implicit link.
%%
%% The OpenId token is valid for 10 minutes.
%%
%% This is a public API. You do not need any credentials to call this API.
get_open_id_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_open_id_token(Client, Input, []).
get_open_id_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpenIdToken">>, Input, Options).

%% @doc Registers (or retrieves) a Cognito `IdentityId` and an OpenID Connect
%% token for a user authenticated by your backend authentication process.
%%
%% Supplying multiple logins will create an implicit linked account. You can
%% only specify one developer provider as part of the `Logins` map, which is
%% linked to the identity pool. The developer provider is the "domain" by
%% which Cognito will refer to your users.
%%
%% You can use `GetOpenIdTokenForDeveloperIdentity` to create a new identity
%% and to link new logins (that is, user credentials issued by a public
%% provider or developer provider) to an existing identity. When you want to
%% create a new identity, the `IdentityId` should be null. When you want to
%% associate a new login with an existing authenticated/unauthenticated
%% identity, you can do so by providing the existing `IdentityId`. This API
%% will create the identity in the specified `IdentityPoolId`.
%%
%% You must use AWS Developer credentials to call this API.
get_open_id_token_for_developer_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_open_id_token_for_developer_identity(Client, Input, []).
get_open_id_token_for_developer_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpenIdTokenForDeveloperIdentity">>, Input, Options).

%% @doc Lists the identities in an identity pool.
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
%% You must use AWS Developer credentials to call this API.
list_identity_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identity_pools(Client, Input, []).
list_identity_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentityPools">>, Input, Options).

%% @doc Lists the tags that are assigned to an Amazon Cognito identity pool.
%%
%% A tag is a label that you can apply to identity pools to categorize and
%% manage them in different ways, such as by purpose, owner, environment, or
%% other criteria.
%%
%% You can use this action up to 10 times per second, per account.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Retrieves the `IdentityID` associated with a
%% `DeveloperUserIdentifier` or the list of `DeveloperUserIdentifier` values
%% associated with an `IdentityId` for an existing identity.
%%
%% Either `IdentityID` or `DeveloperUserIdentifier` must not be null. If you
%% supply only one of these values, the other value will be searched in the
%% database and returned as a part of the response. If you supply both,
%% `DeveloperUserIdentifier` will be matched against `IdentityID`. If the
%% values are verified against the database, the response returns both values
%% and is the same as the request. Otherwise a `ResourceConflictException` is
%% thrown.
%%
%% `LookupDeveloperIdentity` is intended for low-throughput control plane
%% operations: for example, to enable customer service to locate an identity
%% ID by username. If you are using it for higher-volume operations such as
%% user authentication, your requests are likely to be throttled.
%% `GetOpenIdTokenForDeveloperIdentity` is a better option for higher-volume
%% operations for user authentication.
%%
%% You must use AWS Developer credentials to call this API.
lookup_developer_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    lookup_developer_identity(Client, Input, []).
lookup_developer_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LookupDeveloperIdentity">>, Input, Options).

%% @doc Merges two users having different `IdentityId`s, existing in the same
%% identity pool, and identified by the same developer provider.
%%
%% You can use this action to request that discrete users be merged and
%% identified as a single user in the Cognito environment. Cognito associates
%% the given source user (`SourceUserIdentifier`) with the `IdentityId` of
%% the `DestinationUserIdentifier`. Only developer-authenticated users can be
%% merged. If the users to be merged are associated with the same public
%% provider, but as two different users, an exception will be thrown.
%%
%% The number of linked logins is limited to 20. So, the number of linked
%% logins for the source user, `SourceUserIdentifier`, and the destination
%% user, `DestinationUserIdentifier`, together should not be larger than 20.
%% Otherwise, an exception will be thrown.
%%
%% You must use AWS Developer credentials to call this API.
merge_developer_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_developer_identities(Client, Input, []).
merge_developer_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergeDeveloperIdentities">>, Input, Options).

%% @doc Sets the roles for an identity pool.
%%
%% These roles are used when making calls to `GetCredentialsForIdentity`
%% action.
%%
%% You must use AWS Developer credentials to call this API.
set_identity_pool_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_pool_roles(Client, Input, []).
set_identity_pool_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityPoolRoles">>, Input, Options).

%% @doc Assigns a set of tags to an Amazon Cognito identity pool.
%%
%% A tag is a label that you can use to categorize and manage identity pools
%% in different ways, such as by purpose, owner, environment, or other
%% criteria.
%%
%% Each tag consists of a key and value, both of which you define. A key is a
%% general category for more specific values. For example, if you have two
%% versions of an identity pool, one for testing and another for production,
%% you might assign an `Environment` tag key to both identity pools. The
%% value of this key might be `Test` for one identity pool and `Production`
%% for the other.
%%
%% Tags are useful for cost tracking and access control. You can activate
%% your tags so that they appear on the Billing and Cost Management console,
%% where you can track the costs associated with your identity pools. In an
%% IAM policy, you can constrain permissions for identity pools based on
%% specific tags or tag values.
%%
%% You can use this action up to 5 times per second, per account. An identity
%% pool can have as many as 50 tags.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Unlinks a `DeveloperUserIdentifier` from an existing identity.
%%
%% Unlinked developer users will be considered new identities next time they
%% are seen. If, for a given Cognito identity, you remove all federated
%% identities as well as the developer user identifier, the Cognito identity
%% becomes inaccessible.
%%
%% You must use AWS Developer credentials to call this API.
unlink_developer_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    unlink_developer_identity(Client, Input, []).
unlink_developer_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnlinkDeveloperIdentity">>, Input, Options).

%% @doc Unlinks a federated identity from an existing account.
%%
%% Unlinked logins will be considered new identities next time they are seen.
%% Removing the last linked login will make this identity inaccessible.
%%
%% This is a public API. You do not need any credentials to call this API.
unlink_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    unlink_identity(Client, Input, []).
unlink_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnlinkIdentity">>, Input, Options).

%% @doc Removes the specified tags from an Amazon Cognito identity pool.
%%
%% You can use this action up to 5 times per second, per account
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an identity pool.
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
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"cognito-identity">>},
    Host = build_host(<<"cognito-identity">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSCognitoIdentityService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
