%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Cognito Federated Identities
%%
%% Amazon Cognito Federated Identities is a web service that delivers scoped
%% temporary
%% credentials to mobile devices and other untrusted environments.
%%
%% It uniquely identifies a
%% device and supplies the user with a consistent identity over the lifetime
%% of an
%% application.
%%
%% Using Amazon Cognito Federated Identities, you can enable authentication
%% with one or
%% more third-party identity providers (Facebook, Google, or Login with
%% Amazon) or an Amazon
%% Cognito user pool, and you can also choose to support unauthenticated
%% access from your app.
%% Cognito delivers a unique identifier for each user and acts as an OpenID
%% token provider
%% trusted by Security Token Service (STS) to access temporary,
%% limited-privilege Amazon Web Services credentials.
%%
%% For a description of the authentication flow from the Amazon Cognito
%% Developer Guide
%% see Authentication
%% Flow:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html.
%%
%% For more information see Amazon Cognito Federated
%% Identities:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html.
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
         get_principal_tag_attribute_map/2,
         get_principal_tag_attribute_map/3,
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
         set_principal_tag_attribute_map/2,
         set_principal_tag_attribute_map/3,
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


%% Example:
%% get_credentials_for_identity_response() :: #{
%%   <<"Credentials">> => credentials(),
%%   <<"IdentityId">> => string()
%% }
-type get_credentials_for_identity_response() :: #{binary() => any()}.

%% Example:
%% unlink_identity_input() :: #{
%%   <<"IdentityId">> := string(),
%%   <<"Logins">> := map(),
%%   <<"LoginsToRemove">> := list(string())
%% }
-type unlink_identity_input() :: #{binary() => any()}.

%% Example:
%% get_open_id_token_for_developer_identity_response() :: #{
%%   <<"IdentityId">> => string(),
%%   <<"Token">> => string()
%% }
-type get_open_id_token_for_developer_identity_response() :: #{binary() => any()}.

%% Example:
%% merge_developer_identities_response() :: #{
%%   <<"IdentityId">> => string()
%% }
-type merge_developer_identities_response() :: #{binary() => any()}.

%% Example:
%% developer_user_already_registered_exception() :: #{
%%   <<"message">> => string()
%% }
-type developer_user_already_registered_exception() :: #{binary() => any()}.

%% Example:
%% describe_identity_pool_input() :: #{
%%   <<"IdentityPoolId">> := string()
%% }
-type describe_identity_pool_input() :: #{binary() => any()}.

%% Example:
%% identity_pool() :: #{
%%   <<"AllowClassicFlow">> => boolean(),
%%   <<"AllowUnauthenticatedIdentities">> => boolean(),
%%   <<"CognitoIdentityProviders">> => list(cognito_identity_provider()),
%%   <<"DeveloperProviderName">> => string(),
%%   <<"IdentityPoolId">> => string(),
%%   <<"IdentityPoolName">> => string(),
%%   <<"IdentityPoolTags">> => map(),
%%   <<"OpenIdConnectProviderARNs">> => list(string()),
%%   <<"SamlProviderARNs">> => list(string()),
%%   <<"SupportedLoginProviders">> => map()
%% }
-type identity_pool() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_identity_pool_roles_response() :: #{
%%   <<"IdentityPoolId">> => string(),
%%   <<"RoleMappings">> => map(),
%%   <<"Roles">> => map()
%% }
-type get_identity_pool_roles_response() :: #{binary() => any()}.

%% Example:
%% unlink_developer_identity_input() :: #{
%%   <<"DeveloperProviderName">> := string(),
%%   <<"DeveloperUserIdentifier">> := string(),
%%   <<"IdentityId">> := string(),
%%   <<"IdentityPoolId">> := string()
%% }
-type unlink_developer_identity_input() :: #{binary() => any()}.

%% Example:
%% list_identity_pools_input() :: #{
%%   <<"MaxResults">> := integer(),
%%   <<"NextToken">> => string()
%% }
-type list_identity_pools_input() :: #{binary() => any()}.

%% Example:
%% delete_identities_response() :: #{
%%   <<"UnprocessedIdentityIds">> => list(unprocessed_identity_id())
%% }
-type delete_identities_response() :: #{binary() => any()}.

%% Example:
%% get_identity_pool_roles_input() :: #{
%%   <<"IdentityPoolId">> := string()
%% }
-type get_identity_pool_roles_input() :: #{binary() => any()}.

%% Example:
%% credentials() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"Expiration">> => non_neg_integer(),
%%   <<"SecretKey">> => string(),
%%   <<"SessionToken">> => string()
%% }
-type credentials() :: #{binary() => any()}.

%% Example:
%% lookup_developer_identity_response() :: #{
%%   <<"DeveloperUserIdentifierList">> => list(string()),
%%   <<"IdentityId">> => string(),
%%   <<"NextToken">> => string()
%% }
-type lookup_developer_identity_response() :: #{binary() => any()}.

%% Example:
%% unprocessed_identity_id() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"IdentityId">> => string()
%% }
-type unprocessed_identity_id() :: #{binary() => any()}.

%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% set_identity_pool_roles_input() :: #{
%%   <<"IdentityPoolId">> := string(),
%%   <<"RoleMappings">> => map(),
%%   <<"Roles">> := map()
%% }
-type set_identity_pool_roles_input() :: #{binary() => any()}.

%% Example:
%% identity_description() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"IdentityId">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Logins">> => list(string())
%% }
-type identity_description() :: #{binary() => any()}.

%% Example:
%% list_identity_pools_response() :: #{
%%   <<"IdentityPools">> => list(identity_pool_short_description()),
%%   <<"NextToken">> => string()
%% }
-type list_identity_pools_response() :: #{binary() => any()}.

%% Example:
%% get_credentials_for_identity_input() :: #{
%%   <<"CustomRoleArn">> => string(),
%%   <<"IdentityId">> := string(),
%%   <<"Logins">> => map()
%% }
-type get_credentials_for_identity_input() :: #{binary() => any()}.

%% Example:
%% invalid_identity_pool_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_identity_pool_configuration_exception() :: #{binary() => any()}.

%% Example:
%% set_principal_tag_attribute_map_input() :: #{
%%   <<"IdentityPoolId">> := string(),
%%   <<"IdentityProviderName">> := string(),
%%   <<"PrincipalTags">> => map(),
%%   <<"UseDefaults">> => boolean()
%% }
-type set_principal_tag_attribute_map_input() :: #{binary() => any()}.

%% Example:
%% rules_configuration_type() :: #{
%%   <<"Rules">> => list(mapping_rule())
%% }
-type rules_configuration_type() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% mapping_rule() :: #{
%%   <<"Claim">> => string(),
%%   <<"MatchType">> => list(any()),
%%   <<"RoleARN">> => string(),
%%   <<"Value">> => string()
%% }
-type mapping_rule() :: #{binary() => any()}.

%% Example:
%% delete_identities_input() :: #{
%%   <<"IdentityIdsToDelete">> := list(string())
%% }
-type delete_identities_input() :: #{binary() => any()}.

%% Example:
%% describe_identity_input() :: #{
%%   <<"IdentityId">> := string()
%% }
-type describe_identity_input() :: #{binary() => any()}.

%% Example:
%% list_identities_input() :: #{
%%   <<"HideDisabled">> => boolean(),
%%   <<"IdentityPoolId">> := string(),
%%   <<"MaxResults">> := integer(),
%%   <<"NextToken">> => string()
%% }
-type list_identities_input() :: #{binary() => any()}.

%% Example:
%% get_open_id_token_response() :: #{
%%   <<"IdentityId">> => string(),
%%   <<"Token">> => string()
%% }
-type get_open_id_token_response() :: #{binary() => any()}.

%% Example:
%% identity_pool_short_description() :: #{
%%   <<"IdentityPoolId">> => string(),
%%   <<"IdentityPoolName">> => string()
%% }
-type identity_pool_short_description() :: #{binary() => any()}.

%% Example:
%% role_mapping() :: #{
%%   <<"AmbiguousRoleResolution">> => list(any()),
%%   <<"RulesConfiguration">> => rules_configuration_type(),
%%   <<"Type">> => list(any())
%% }
-type role_mapping() :: #{binary() => any()}.

%% Example:
%% get_principal_tag_attribute_map_input() :: #{
%%   <<"IdentityPoolId">> := string(),
%%   <<"IdentityProviderName">> := string()
%% }
-type get_principal_tag_attribute_map_input() :: #{binary() => any()}.

%% Example:
%% merge_developer_identities_input() :: #{
%%   <<"DestinationUserIdentifier">> := string(),
%%   <<"DeveloperProviderName">> := string(),
%%   <<"IdentityPoolId">> := string(),
%%   <<"SourceUserIdentifier">> := string()
%% }
-type merge_developer_identities_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% set_principal_tag_attribute_map_response() :: #{
%%   <<"IdentityPoolId">> => string(),
%%   <<"IdentityProviderName">> => string(),
%%   <<"PrincipalTags">> => map(),
%%   <<"UseDefaults">> => boolean()
%% }
-type set_principal_tag_attribute_map_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% cognito_identity_provider() :: #{
%%   <<"ClientId">> => string(),
%%   <<"ProviderName">> => string(),
%%   <<"ServerSideTokenCheck">> => boolean()
%% }
-type cognito_identity_provider() :: #{binary() => any()}.

%% Example:
%% create_identity_pool_input() :: #{
%%   <<"AllowClassicFlow">> => boolean(),
%%   <<"AllowUnauthenticatedIdentities">> := boolean(),
%%   <<"CognitoIdentityProviders">> => list(cognito_identity_provider()),
%%   <<"DeveloperProviderName">> => string(),
%%   <<"IdentityPoolName">> := string(),
%%   <<"IdentityPoolTags">> => map(),
%%   <<"OpenIdConnectProviderARNs">> => list(string()),
%%   <<"SamlProviderARNs">> => list(string()),
%%   <<"SupportedLoginProviders">> => map()
%% }
-type create_identity_pool_input() :: #{binary() => any()}.

%% Example:
%% not_authorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_authorized_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% lookup_developer_identity_input() :: #{
%%   <<"DeveloperUserIdentifier">> => string(),
%%   <<"IdentityId">> => string(),
%%   <<"IdentityPoolId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type lookup_developer_identity_input() :: #{binary() => any()}.

%% Example:
%% get_id_input() :: #{
%%   <<"AccountId">> => string(),
%%   <<"IdentityPoolId">> := string(),
%%   <<"Logins">> => map()
%% }
-type get_id_input() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% get_open_id_token_for_developer_identity_input() :: #{
%%   <<"IdentityId">> => string(),
%%   <<"IdentityPoolId">> := string(),
%%   <<"Logins">> := map(),
%%   <<"PrincipalTags">> => map(),
%%   <<"TokenDuration">> => float()
%% }
-type get_open_id_token_for_developer_identity_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% list_identities_response() :: #{
%%   <<"Identities">> => list(identity_description()),
%%   <<"IdentityPoolId">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_identities_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_identity_pool_input() :: #{
%%   <<"IdentityPoolId">> := string()
%% }
-type delete_identity_pool_input() :: #{binary() => any()}.

%% Example:
%% external_service_exception() :: #{
%%   <<"message">> => string()
%% }
-type external_service_exception() :: #{binary() => any()}.

%% Example:
%% get_open_id_token_input() :: #{
%%   <<"IdentityId">> := string(),
%%   <<"Logins">> => map()
%% }
-type get_open_id_token_input() :: #{binary() => any()}.

%% Example:
%% get_principal_tag_attribute_map_response() :: #{
%%   <<"IdentityPoolId">> => string(),
%%   <<"IdentityProviderName">> => string(),
%%   <<"PrincipalTags">> => map(),
%%   <<"UseDefaults">> => boolean()
%% }
-type get_principal_tag_attribute_map_response() :: #{binary() => any()}.

%% Example:
%% resource_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_conflict_exception() :: #{binary() => any()}.

%% Example:
%% get_id_response() :: #{
%%   <<"IdentityId">> => string()
%% }
-type get_id_response() :: #{binary() => any()}.

%% Example:
%% internal_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_error_exception() :: #{binary() => any()}.

-type create_identity_pool_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    too_many_requests_exception().

-type delete_identities_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    too_many_requests_exception().

-type delete_identity_pool_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_identity_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_identity_pool_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_credentials_for_identity_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    external_service_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    invalid_identity_pool_configuration_exception() | 
    too_many_requests_exception().

-type get_id_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    external_service_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_identity_pool_roles_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_open_id_token_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    external_service_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_open_id_token_for_developer_identity_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    developer_user_already_registered_exception().

-type get_principal_tag_attribute_map_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_identities_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_identity_pools_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_tags_for_resource_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type lookup_developer_identity_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type merge_developer_identities_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type set_identity_pool_roles_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type set_principal_tag_attribute_map_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type tag_resource_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type unlink_developer_identity_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type unlink_identity_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    external_service_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type untag_resource_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_identity_pool_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new identity pool.
%%
%% The identity pool is a store of user identity
%% information that is specific to your Amazon Web Services account. The keys
%% for
%% `SupportedLoginProviders' are as follows:
%%
%% Facebook: `graph.facebook.com'
%%
%% Google: `accounts.google.com'
%%
%% Sign in With Apple: `appleid.apple.com'
%%
%% Amazon: `www.amazon.com'
%%
%% Twitter: `api.twitter.com'
%%
%% Digits: `www.digits.com'
%%
%% If you don't provide a value for a parameter, Amazon Cognito sets it
%% to its default value.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec create_identity_pool(aws_client:aws_client(), create_identity_pool_input()) ->
    {ok, identity_pool(), tuple()} |
    {error, any()} |
    {error, create_identity_pool_errors(), tuple()}.
create_identity_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_identity_pool(Client, Input, []).

-spec create_identity_pool(aws_client:aws_client(), create_identity_pool_input(), proplists:proplist()) ->
    {ok, identity_pool(), tuple()} |
    {error, any()} |
    {error, create_identity_pool_errors(), tuple()}.
create_identity_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIdentityPool">>, Input, Options).

%% @doc Deletes identities from an identity pool.
%%
%% You can specify a list of 1-60 identities
%% that you want to delete.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec delete_identities(aws_client:aws_client(), delete_identities_input()) ->
    {ok, delete_identities_response(), tuple()} |
    {error, any()} |
    {error, delete_identities_errors(), tuple()}.
delete_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identities(Client, Input, []).

-spec delete_identities(aws_client:aws_client(), delete_identities_input(), proplists:proplist()) ->
    {ok, delete_identities_response(), tuple()} |
    {error, any()} |
    {error, delete_identities_errors(), tuple()}.
delete_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentities">>, Input, Options).

%% @doc Deletes an identity pool.
%%
%% Once a pool is deleted, users will not be able to
%% authenticate with the pool.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec delete_identity_pool(aws_client:aws_client(), delete_identity_pool_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_identity_pool_errors(), tuple()}.
delete_identity_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity_pool(Client, Input, []).

-spec delete_identity_pool(aws_client:aws_client(), delete_identity_pool_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_identity_pool_errors(), tuple()}.
delete_identity_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentityPool">>, Input, Options).

%% @doc Returns metadata related to the given identity, including when the
%% identity was
%% created and any associated linked logins.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec describe_identity(aws_client:aws_client(), describe_identity_input()) ->
    {ok, identity_description(), tuple()} |
    {error, any()} |
    {error, describe_identity_errors(), tuple()}.
describe_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_identity(Client, Input, []).

-spec describe_identity(aws_client:aws_client(), describe_identity_input(), proplists:proplist()) ->
    {ok, identity_description(), tuple()} |
    {error, any()} |
    {error, describe_identity_errors(), tuple()}.
describe_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIdentity">>, Input, Options).

%% @doc Gets details about a particular identity pool, including the pool
%% name, ID
%% description, creation date, and current number of users.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec describe_identity_pool(aws_client:aws_client(), describe_identity_pool_input()) ->
    {ok, identity_pool(), tuple()} |
    {error, any()} |
    {error, describe_identity_pool_errors(), tuple()}.
describe_identity_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_identity_pool(Client, Input, []).

-spec describe_identity_pool(aws_client:aws_client(), describe_identity_pool_input(), proplists:proplist()) ->
    {ok, identity_pool(), tuple()} |
    {error, any()} |
    {error, describe_identity_pool_errors(), tuple()}.
describe_identity_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIdentityPool">>, Input, Options).

%% @doc Returns credentials for the provided identity ID.
%%
%% Any provided logins will be
%% validated against supported login providers. If the token is for
%% `cognito-identity.amazonaws.com', it will be passed through to
%% Security Token Service with the appropriate role for the token.
%%
%% This is a public API. You do not need any credentials to call this API.
-spec get_credentials_for_identity(aws_client:aws_client(), get_credentials_for_identity_input()) ->
    {ok, get_credentials_for_identity_response(), tuple()} |
    {error, any()} |
    {error, get_credentials_for_identity_errors(), tuple()}.
get_credentials_for_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_credentials_for_identity(Client, Input, []).

-spec get_credentials_for_identity(aws_client:aws_client(), get_credentials_for_identity_input(), proplists:proplist()) ->
    {ok, get_credentials_for_identity_response(), tuple()} |
    {error, any()} |
    {error, get_credentials_for_identity_errors(), tuple()}.
get_credentials_for_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCredentialsForIdentity">>, Input, Options).

%% @doc Generates (or retrieves) IdentityID.
%%
%% Supplying multiple logins will create an
%% implicit linked account.
%%
%% This is a public API. You do not need any credentials to call this API.
-spec get_id(aws_client:aws_client(), get_id_input()) ->
    {ok, get_id_response(), tuple()} |
    {error, any()} |
    {error, get_id_errors(), tuple()}.
get_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_id(Client, Input, []).

-spec get_id(aws_client:aws_client(), get_id_input(), proplists:proplist()) ->
    {ok, get_id_response(), tuple()} |
    {error, any()} |
    {error, get_id_errors(), tuple()}.
get_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetId">>, Input, Options).

%% @doc Gets the roles for an identity pool.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec get_identity_pool_roles(aws_client:aws_client(), get_identity_pool_roles_input()) ->
    {ok, get_identity_pool_roles_response(), tuple()} |
    {error, any()} |
    {error, get_identity_pool_roles_errors(), tuple()}.
get_identity_pool_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_pool_roles(Client, Input, []).

-spec get_identity_pool_roles(aws_client:aws_client(), get_identity_pool_roles_input(), proplists:proplist()) ->
    {ok, get_identity_pool_roles_response(), tuple()} |
    {error, any()} |
    {error, get_identity_pool_roles_errors(), tuple()}.
get_identity_pool_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityPoolRoles">>, Input, Options).

%% @doc Gets an OpenID token, using a known Cognito ID.
%%
%% This known Cognito ID is returned by
%% `GetId'. You can optionally add additional logins for the identity.
%% Supplying multiple logins creates an implicit link.
%%
%% The OpenID token is valid for 10 minutes.
%%
%% This is a public API. You do not need any credentials to call this API.
-spec get_open_id_token(aws_client:aws_client(), get_open_id_token_input()) ->
    {ok, get_open_id_token_response(), tuple()} |
    {error, any()} |
    {error, get_open_id_token_errors(), tuple()}.
get_open_id_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_open_id_token(Client, Input, []).

-spec get_open_id_token(aws_client:aws_client(), get_open_id_token_input(), proplists:proplist()) ->
    {ok, get_open_id_token_response(), tuple()} |
    {error, any()} |
    {error, get_open_id_token_errors(), tuple()}.
get_open_id_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpenIdToken">>, Input, Options).

%% @doc Registers (or retrieves) a Cognito `IdentityId' and an OpenID
%% Connect
%% token for a user authenticated by your backend authentication process.
%%
%% Supplying multiple
%% logins will create an implicit linked account. You can only specify one
%% developer provider
%% as part of the `Logins' map, which is linked to the identity pool. The
%% developer
%% provider is the &quot;domain&quot; by which Cognito will refer to your
%% users.
%%
%% You can use `GetOpenIdTokenForDeveloperIdentity' to create a new
%% identity
%% and to link new logins (that is, user credentials issued by a public
%% provider or developer
%% provider) to an existing identity. When you want to create a new identity,
%% the
%% `IdentityId' should be null. When you want to associate a new login
%% with an
%% existing authenticated/unauthenticated identity, you can do so by
%% providing the existing
%% `IdentityId'. This API will create the identity in the specified
%% `IdentityPoolId'.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec get_open_id_token_for_developer_identity(aws_client:aws_client(), get_open_id_token_for_developer_identity_input()) ->
    {ok, get_open_id_token_for_developer_identity_response(), tuple()} |
    {error, any()} |
    {error, get_open_id_token_for_developer_identity_errors(), tuple()}.
get_open_id_token_for_developer_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_open_id_token_for_developer_identity(Client, Input, []).

-spec get_open_id_token_for_developer_identity(aws_client:aws_client(), get_open_id_token_for_developer_identity_input(), proplists:proplist()) ->
    {ok, get_open_id_token_for_developer_identity_response(), tuple()} |
    {error, any()} |
    {error, get_open_id_token_for_developer_identity_errors(), tuple()}.
get_open_id_token_for_developer_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpenIdTokenForDeveloperIdentity">>, Input, Options).

%% @doc Use `GetPrincipalTagAttributeMap' to list all mappings between
%% `PrincipalTags' and user attributes.
-spec get_principal_tag_attribute_map(aws_client:aws_client(), get_principal_tag_attribute_map_input()) ->
    {ok, get_principal_tag_attribute_map_response(), tuple()} |
    {error, any()} |
    {error, get_principal_tag_attribute_map_errors(), tuple()}.
get_principal_tag_attribute_map(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_principal_tag_attribute_map(Client, Input, []).

-spec get_principal_tag_attribute_map(aws_client:aws_client(), get_principal_tag_attribute_map_input(), proplists:proplist()) ->
    {ok, get_principal_tag_attribute_map_response(), tuple()} |
    {error, any()} |
    {error, get_principal_tag_attribute_map_errors(), tuple()}.
get_principal_tag_attribute_map(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPrincipalTagAttributeMap">>, Input, Options).

%% @doc Lists the identities in an identity pool.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec list_identities(aws_client:aws_client(), list_identities_input()) ->
    {ok, list_identities_response(), tuple()} |
    {error, any()} |
    {error, list_identities_errors(), tuple()}.
list_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identities(Client, Input, []).

-spec list_identities(aws_client:aws_client(), list_identities_input(), proplists:proplist()) ->
    {ok, list_identities_response(), tuple()} |
    {error, any()} |
    {error, list_identities_errors(), tuple()}.
list_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentities">>, Input, Options).

%% @doc Lists all of the Cognito identity pools registered for your account.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec list_identity_pools(aws_client:aws_client(), list_identity_pools_input()) ->
    {ok, list_identity_pools_response(), tuple()} |
    {error, any()} |
    {error, list_identity_pools_errors(), tuple()}.
list_identity_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identity_pools(Client, Input, []).

-spec list_identity_pools(aws_client:aws_client(), list_identity_pools_input(), proplists:proplist()) ->
    {ok, list_identity_pools_response(), tuple()} |
    {error, any()} |
    {error, list_identity_pools_errors(), tuple()}.
list_identity_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentityPools">>, Input, Options).

%% @doc Lists the tags that are assigned to an Amazon Cognito identity pool.
%%
%% A tag is a label that you can apply to identity pools to categorize and
%% manage them in
%% different ways, such as by purpose, owner, environment, or other criteria.
%%
%% You can use this action up to 10 times per second, per account.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Retrieves the `IdentityID' associated with a
%% `DeveloperUserIdentifier' or the list of `DeveloperUserIdentifier'
%% values associated with an `IdentityId' for an existing identity.
%%
%% Either
%% `IdentityID' or `DeveloperUserIdentifier' must not be null. If you
%% supply only one of these values, the other value will be searched in the
%% database and
%% returned as a part of the response. If you supply both,
%% `DeveloperUserIdentifier' will be matched against `IdentityID'. If
%% the values are verified against the database, the response returns both
%% values and is the
%% same as the request. Otherwise, a `ResourceConflictException' is
%% thrown.
%%
%% `LookupDeveloperIdentity' is intended for low-throughput control plane
%% operations: for example, to enable customer service to locate an identity
%% ID by username.
%% If you are using it for higher-volume operations such as user
%% authentication, your requests
%% are likely to be throttled. `GetOpenIdTokenForDeveloperIdentity' is a
%% better option for higher-volume operations for user authentication.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec lookup_developer_identity(aws_client:aws_client(), lookup_developer_identity_input()) ->
    {ok, lookup_developer_identity_response(), tuple()} |
    {error, any()} |
    {error, lookup_developer_identity_errors(), tuple()}.
lookup_developer_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    lookup_developer_identity(Client, Input, []).

-spec lookup_developer_identity(aws_client:aws_client(), lookup_developer_identity_input(), proplists:proplist()) ->
    {ok, lookup_developer_identity_response(), tuple()} |
    {error, any()} |
    {error, lookup_developer_identity_errors(), tuple()}.
lookup_developer_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LookupDeveloperIdentity">>, Input, Options).

%% @doc Merges two users having different `IdentityId's, existing in the
%% same
%% identity pool, and identified by the same developer provider.
%%
%% You can use this action to
%% request that discrete users be merged and identified as a single user in
%% the Cognito
%% environment. Cognito associates the given source user
%% (`SourceUserIdentifier')
%% with the `IdentityId' of the `DestinationUserIdentifier'. Only
%% developer-authenticated users can be merged. If the users to be merged are
%% associated with
%% the same public provider, but as two different users, an exception will be
%% thrown.
%%
%% The number of linked logins is limited to 20. So, the number of linked
%% logins for the
%% source user, `SourceUserIdentifier', and the destination user,
%% `DestinationUserIdentifier', together should not be larger than 20.
%% Otherwise, an exception will be thrown.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec merge_developer_identities(aws_client:aws_client(), merge_developer_identities_input()) ->
    {ok, merge_developer_identities_response(), tuple()} |
    {error, any()} |
    {error, merge_developer_identities_errors(), tuple()}.
merge_developer_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    merge_developer_identities(Client, Input, []).

-spec merge_developer_identities(aws_client:aws_client(), merge_developer_identities_input(), proplists:proplist()) ->
    {ok, merge_developer_identities_response(), tuple()} |
    {error, any()} |
    {error, merge_developer_identities_errors(), tuple()}.
merge_developer_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MergeDeveloperIdentities">>, Input, Options).

%% @doc Sets the roles for an identity pool.
%%
%% These roles are used when making calls to `GetCredentialsForIdentity'
%% action.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec set_identity_pool_roles(aws_client:aws_client(), set_identity_pool_roles_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_identity_pool_roles_errors(), tuple()}.
set_identity_pool_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_pool_roles(Client, Input, []).

-spec set_identity_pool_roles(aws_client:aws_client(), set_identity_pool_roles_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_identity_pool_roles_errors(), tuple()}.
set_identity_pool_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityPoolRoles">>, Input, Options).

%% @doc You can use this operation to use default (username and clientID)
%% attribute or custom
%% attribute mappings.
-spec set_principal_tag_attribute_map(aws_client:aws_client(), set_principal_tag_attribute_map_input()) ->
    {ok, set_principal_tag_attribute_map_response(), tuple()} |
    {error, any()} |
    {error, set_principal_tag_attribute_map_errors(), tuple()}.
set_principal_tag_attribute_map(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_principal_tag_attribute_map(Client, Input, []).

-spec set_principal_tag_attribute_map(aws_client:aws_client(), set_principal_tag_attribute_map_input(), proplists:proplist()) ->
    {ok, set_principal_tag_attribute_map_response(), tuple()} |
    {error, any()} |
    {error, set_principal_tag_attribute_map_errors(), tuple()}.
set_principal_tag_attribute_map(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetPrincipalTagAttributeMap">>, Input, Options).

%% @doc Assigns a set of tags to the specified Amazon Cognito identity pool.
%%
%% A tag is a label
%% that you can use to categorize and manage identity pools in different
%% ways, such as by
%% purpose, owner, environment, or other criteria.
%%
%% Each tag consists of a key and value, both of which you define. A key is a
%% general
%% category for more specific values. For example, if you have two versions
%% of an identity
%% pool, one for testing and another for production, you might assign an
%% `Environment' tag key to both identity pools. The value of this key
%% might be
%% `Test' for one identity pool and `Production' for the
%% other.
%%
%% Tags are useful for cost tracking and access control. You can activate
%% your tags so that
%% they appear on the Billing and Cost Management console, where you can
%% track the costs
%% associated with your identity pools. In an IAM policy, you can constrain
%% permissions for identity pools based on specific tags or tag values.
%%
%% You can use this action up to 5 times per second, per account. An identity
%% pool can have
%% as many as 50 tags.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Unlinks a `DeveloperUserIdentifier' from an existing identity.
%%
%% Unlinked
%% developer users will be considered new identities next time they are seen.
%% If, for a given
%% Cognito identity, you remove all federated identities as well as the
%% developer user
%% identifier, the Cognito identity becomes inaccessible.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec unlink_developer_identity(aws_client:aws_client(), unlink_developer_identity_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unlink_developer_identity_errors(), tuple()}.
unlink_developer_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    unlink_developer_identity(Client, Input, []).

-spec unlink_developer_identity(aws_client:aws_client(), unlink_developer_identity_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unlink_developer_identity_errors(), tuple()}.
unlink_developer_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnlinkDeveloperIdentity">>, Input, Options).

%% @doc Unlinks a federated identity from an existing account.
%%
%% Unlinked logins will be
%% considered new identities next time they are seen. Removing the last
%% linked login will make
%% this identity inaccessible.
%%
%% This is a public API. You do not need any credentials to call this API.
-spec unlink_identity(aws_client:aws_client(), unlink_identity_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unlink_identity_errors(), tuple()}.
unlink_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    unlink_identity(Client, Input, []).

-spec unlink_identity(aws_client:aws_client(), unlink_identity_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unlink_identity_errors(), tuple()}.
unlink_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnlinkIdentity">>, Input, Options).

%% @doc Removes the specified tags from the specified Amazon Cognito identity
%% pool.
%%
%% You can use
%% this action up to 5 times per second, per account
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the configuration of an identity pool.
%%
%% If you don't provide a value for a parameter, Amazon Cognito sets it
%% to its default value.
%%
%% You must use Amazon Web Services developer credentials to call this
%% operation.
-spec update_identity_pool(aws_client:aws_client(), identity_pool()) ->
    {ok, identity_pool(), tuple()} |
    {error, any()} |
    {error, update_identity_pool_errors(), tuple()}.
update_identity_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_identity_pool(Client, Input, []).

-spec update_identity_pool(aws_client:aws_client(), identity_pool(), proplists:proplist()) ->
    {ok, identity_pool(), tuple()} |
    {error, any()} |
    {error, update_identity_pool_errors(), tuple()}.
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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
