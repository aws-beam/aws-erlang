%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Identity Store service used by IAM Identity Center provides a
%% single place to retrieve all of
%% your identities (users and groups).
%%
%% For more information, see the IAM Identity Center User
%% Guide:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html.
%%
%% This reference guide describes the identity store operations that you can
%% call
%% programmatically and includes detailed information about data types and
%% errors.
%%
%% IAM Identity Center uses the `sso' and `identitystore' API
%% namespaces.
-module(aws_identitystore).

-export([create_group/2,
         create_group/3,
         create_group_membership/2,
         create_group_membership/3,
         create_user/2,
         create_user/3,
         delete_group/2,
         delete_group/3,
         delete_group_membership/2,
         delete_group_membership/3,
         delete_user/2,
         delete_user/3,
         describe_group/2,
         describe_group/3,
         describe_group_membership/2,
         describe_group_membership/3,
         describe_user/2,
         describe_user/3,
         get_group_id/2,
         get_group_id/3,
         get_group_membership_id/2,
         get_group_membership_id/3,
         get_user_id/2,
         get_user_id/3,
         is_member_in_groups/2,
         is_member_in_groups/3,
         list_group_memberships/2,
         list_group_memberships/3,
         list_group_memberships_for_member/2,
         list_group_memberships_for_member/3,
         list_groups/2,
         list_groups/3,
         list_users/2,
         list_users/3,
         update_group/2,
         update_group/3,
         update_user/2,
         update_user/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_group_id_request() :: #{
%%   <<"AlternateIdentifier">> := list(),
%%   <<"IdentityStoreId">> := string()
%% }
-type get_group_id_request() :: #{binary() => any()}.

%% Example:
%% external_id() :: #{
%%   <<"Id">> => string(),
%%   <<"Issuer">> => string()
%% }
-type external_id() :: #{binary() => any()}.

%% Example:
%% name() :: #{
%%   <<"FamilyName">> => string(),
%%   <<"Formatted">> => string(),
%%   <<"GivenName">> => string(),
%%   <<"HonorificPrefix">> => string(),
%%   <<"HonorificSuffix">> => string(),
%%   <<"MiddleName">> => string()
%% }
-type name() :: #{binary() => any()}.

%% Example:
%% get_group_membership_id_response() :: #{
%%   <<"IdentityStoreId">> := string(),
%%   <<"MembershipId">> := string()
%% }
-type get_group_membership_id_response() :: #{binary() => any()}.

%% Example:
%% update_user_response() :: #{

%% }
-type update_user_response() :: #{binary() => any()}.

%% Example:
%% unique_attribute() :: #{
%%   <<"AttributePath">> => string(),
%%   <<"AttributeValue">> => any()
%% }
-type unique_attribute() :: #{binary() => any()}.

%% Example:
%% list_group_memberships_for_member_response() :: #{
%%   <<"GroupMemberships">> := list(group_membership()),
%%   <<"NextToken">> => string()
%% }
-type list_group_memberships_for_member_response() :: #{binary() => any()}.

%% Example:
%% phone_number() :: #{
%%   <<"Primary">> => boolean(),
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type phone_number() :: #{binary() => any()}.

%% Example:
%% email() :: #{
%%   <<"Primary">> => boolean(),
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type email() :: #{binary() => any()}.

%% Example:
%% is_member_in_groups_request() :: #{
%%   <<"GroupIds">> := list(string()),
%%   <<"IdentityStoreId">> := string(),
%%   <<"MemberId">> := list()
%% }
-type is_member_in_groups_request() :: #{binary() => any()}.

%% Example:
%% update_group_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"IdentityStoreId">> := string(),
%%   <<"Operations">> := list(attribute_operation())
%% }
-type update_group_request() :: #{binary() => any()}.

%% Example:
%% get_group_membership_id_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"IdentityStoreId">> := string(),
%%   <<"MemberId">> := list()
%% }
-type get_group_membership_id_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => string(),
%%   <<"RequestId">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_users_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Users">> := list(user())
%% }
-type list_users_response() :: #{binary() => any()}.

%% Example:
%% list_group_memberships_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"IdentityStoreId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_group_memberships_request() :: #{binary() => any()}.

%% Example:
%% create_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"IdentityStoreId">> := string()
%% }
-type create_group_request() :: #{binary() => any()}.

%% Example:
%% attribute_operation() :: #{
%%   <<"AttributePath">> => string(),
%%   <<"AttributeValue">> => any()
%% }
-type attribute_operation() :: #{binary() => any()}.

%% Example:
%% create_group_membership_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"IdentityStoreId">> := string(),
%%   <<"MemberId">> := list()
%% }
-type create_group_membership_request() :: #{binary() => any()}.

%% Example:
%% describe_group_membership_request() :: #{
%%   <<"IdentityStoreId">> := string(),
%%   <<"MembershipId">> := string()
%% }
-type describe_group_membership_request() :: #{binary() => any()}.

%% Example:
%% is_member_in_groups_response() :: #{
%%   <<"Results">> := list(group_membership_existence_result())
%% }
-type is_member_in_groups_response() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{
%%   <<"IdentityStoreId">> := string(),
%%   <<"UserId">> := string()
%% }
-type delete_user_request() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"AttributePath">> => string(),
%%   <<"AttributeValue">> => string()
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% group_membership() :: #{
%%   <<"GroupId">> => string(),
%%   <<"IdentityStoreId">> => string(),
%%   <<"MemberId">> => list(),
%%   <<"MembershipId">> => string()
%% }
-type group_membership() :: #{binary() => any()}.

%% Example:
%% delete_user_response() :: #{

%% }
-type delete_user_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% describe_user_response() :: #{
%%   <<"Addresses">> => list(address()),
%%   <<"DisplayName">> => string(),
%%   <<"Emails">> => list(email()),
%%   <<"ExternalIds">> => list(external_id()),
%%   <<"IdentityStoreId">> := string(),
%%   <<"Locale">> => string(),
%%   <<"Name">> => name(),
%%   <<"NickName">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number()),
%%   <<"PreferredLanguage">> => string(),
%%   <<"ProfileUrl">> => string(),
%%   <<"Timezone">> => string(),
%%   <<"Title">> => string(),
%%   <<"UserId">> := string(),
%%   <<"UserName">> => string(),
%%   <<"UserType">> => string()
%% }
-type describe_user_response() :: #{binary() => any()}.

%% Example:
%% describe_group_membership_response() :: #{
%%   <<"GroupId">> := string(),
%%   <<"IdentityStoreId">> := string(),
%%   <<"MemberId">> := list(),
%%   <<"MembershipId">> := string()
%% }
-type describe_group_membership_response() :: #{binary() => any()}.

%% Example:
%% delete_group_membership_response() :: #{

%% }
-type delete_group_membership_response() :: #{binary() => any()}.

%% Example:
%% delete_group_response() :: #{

%% }
-type delete_group_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% describe_user_request() :: #{
%%   <<"IdentityStoreId">> := string(),
%%   <<"UserId">> := string()
%% }
-type describe_user_request() :: #{binary() => any()}.

%% Example:
%% update_user_request() :: #{
%%   <<"IdentityStoreId">> := string(),
%%   <<"Operations">> := list(attribute_operation()),
%%   <<"UserId">> := string()
%% }
-type update_user_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% group_membership_existence_result() :: #{
%%   <<"GroupId">> => string(),
%%   <<"MemberId">> => list(),
%%   <<"MembershipExists">> => boolean()
%% }
-type group_membership_existence_result() :: #{binary() => any()}.

%% Example:
%% delete_group_membership_request() :: #{
%%   <<"IdentityStoreId">> := string(),
%%   <<"MembershipId">> := string()
%% }
-type delete_group_membership_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"RetryAfterSeconds">> => integer()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% group() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"ExternalIds">> => list(external_id()),
%%   <<"GroupId">> => string(),
%%   <<"IdentityStoreId">> => string()
%% }
-type group() :: #{binary() => any()}.

%% Example:
%% user() :: #{
%%   <<"Addresses">> => list(address()),
%%   <<"DisplayName">> => string(),
%%   <<"Emails">> => list(email()),
%%   <<"ExternalIds">> => list(external_id()),
%%   <<"IdentityStoreId">> => string(),
%%   <<"Locale">> => string(),
%%   <<"Name">> => name(),
%%   <<"NickName">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number()),
%%   <<"PreferredLanguage">> => string(),
%%   <<"ProfileUrl">> => string(),
%%   <<"Timezone">> => string(),
%%   <<"Title">> => string(),
%%   <<"UserId">> => string(),
%%   <<"UserName">> => string(),
%%   <<"UserType">> => string()
%% }
-type user() :: #{binary() => any()}.

%% Example:
%% describe_group_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"IdentityStoreId">> := string()
%% }
-type describe_group_request() :: #{binary() => any()}.

%% Example:
%% delete_group_request() :: #{
%%   <<"GroupId">> := string(),
%%   <<"IdentityStoreId">> := string()
%% }
-type delete_group_request() :: #{binary() => any()}.

%% Example:
%% list_users_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"IdentityStoreId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_users_request() :: #{binary() => any()}.

%% Example:
%% describe_group_response() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"ExternalIds">> => list(external_id()),
%%   <<"GroupId">> := string(),
%%   <<"IdentityStoreId">> := string()
%% }
-type describe_group_response() :: #{binary() => any()}.

%% Example:
%% create_group_membership_response() :: #{
%%   <<"IdentityStoreId">> := string(),
%%   <<"MembershipId">> := string()
%% }
-type create_group_membership_response() :: #{binary() => any()}.

%% Example:
%% get_user_id_response() :: #{
%%   <<"IdentityStoreId">> := string(),
%%   <<"UserId">> := string()
%% }
-type get_user_id_response() :: #{binary() => any()}.

%% Example:
%% list_group_memberships_response() :: #{
%%   <<"GroupMemberships">> := list(group_membership()),
%%   <<"NextToken">> => string()
%% }
-type list_group_memberships_response() :: #{binary() => any()}.

%% Example:
%% list_groups_response() :: #{
%%   <<"Groups">> := list(group()),
%%   <<"NextToken">> => string()
%% }
-type list_groups_response() :: #{binary() => any()}.

%% Example:
%% address() :: #{
%%   <<"Country">> => string(),
%%   <<"Formatted">> => string(),
%%   <<"Locality">> => string(),
%%   <<"PostalCode">> => string(),
%%   <<"Primary">> => boolean(),
%%   <<"Region">> => string(),
%%   <<"StreetAddress">> => string(),
%%   <<"Type">> => string()
%% }
-type address() :: #{binary() => any()}.

%% Example:
%% list_groups_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"IdentityStoreId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_groups_request() :: #{binary() => any()}.

%% Example:
%% get_user_id_request() :: #{
%%   <<"AlternateIdentifier">> := list(),
%%   <<"IdentityStoreId">> := string()
%% }
-type get_user_id_request() :: #{binary() => any()}.

%% Example:
%% get_group_id_response() :: #{
%%   <<"GroupId">> := string(),
%%   <<"IdentityStoreId">> := string()
%% }
-type get_group_id_response() :: #{binary() => any()}.

%% Example:
%% create_user_response() :: #{
%%   <<"IdentityStoreId">> := string(),
%%   <<"UserId">> := string()
%% }
-type create_user_response() :: #{binary() => any()}.

%% Example:
%% update_group_response() :: #{

%% }
-type update_group_response() :: #{binary() => any()}.

%% Example:
%% create_group_response() :: #{
%%   <<"GroupId">> := string(),
%%   <<"IdentityStoreId">> := string()
%% }
-type create_group_response() :: #{binary() => any()}.

%% Example:
%% create_user_request() :: #{
%%   <<"Addresses">> => list(address()),
%%   <<"DisplayName">> => string(),
%%   <<"Emails">> => list(email()),
%%   <<"IdentityStoreId">> := string(),
%%   <<"Locale">> => string(),
%%   <<"Name">> => name(),
%%   <<"NickName">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number()),
%%   <<"PreferredLanguage">> => string(),
%%   <<"ProfileUrl">> => string(),
%%   <<"Timezone">> => string(),
%%   <<"Title">> => string(),
%%   <<"UserName">> => string(),
%%   <<"UserType">> => string()
%% }
-type create_user_request() :: #{binary() => any()}.

%% Example:
%% list_group_memberships_for_member_request() :: #{
%%   <<"IdentityStoreId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MemberId">> := list(),
%%   <<"NextToken">> => string()
%% }
-type list_group_memberships_for_member_request() :: #{binary() => any()}.

-type create_group_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_group_membership_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_user_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_group_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_group_membership_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_user_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_group_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_group_membership_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_user_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_group_id_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_group_membership_id_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_user_id_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type is_member_in_groups_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_group_memberships_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_group_memberships_for_member_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_groups_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_users_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_group_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_user_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a group within the specified identity store.
-spec create_group(aws_client:aws_client(), create_group_request()) ->
    {ok, create_group_response(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_group(Client, Input, []).

-spec create_group(aws_client:aws_client(), create_group_request(), proplists:proplist()) ->
    {ok, create_group_response(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGroup">>, Input, Options).

%% @doc Creates a relationship between a member and a group.
%%
%% The following identifiers must be specified: `GroupId',
%% `IdentityStoreId', and `MemberId'.
-spec create_group_membership(aws_client:aws_client(), create_group_membership_request()) ->
    {ok, create_group_membership_response(), tuple()} |
    {error, any()} |
    {error, create_group_membership_errors(), tuple()}.
create_group_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_group_membership(Client, Input, []).

-spec create_group_membership(aws_client:aws_client(), create_group_membership_request(), proplists:proplist()) ->
    {ok, create_group_membership_response(), tuple()} |
    {error, any()} |
    {error, create_group_membership_errors(), tuple()}.
create_group_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGroupMembership">>, Input, Options).

%% @doc Creates a user within the specified identity store.
-spec create_user(aws_client:aws_client(), create_user_request()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).

-spec create_user(aws_client:aws_client(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Delete a group within an identity store given `GroupId'.
-spec delete_group(aws_client:aws_client(), delete_group_request()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group(Client, Input, []).

-spec delete_group(aws_client:aws_client(), delete_group_request(), proplists:proplist()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroup">>, Input, Options).

%% @doc Delete a membership within a group given `MembershipId'.
-spec delete_group_membership(aws_client:aws_client(), delete_group_membership_request()) ->
    {ok, delete_group_membership_response(), tuple()} |
    {error, any()} |
    {error, delete_group_membership_errors(), tuple()}.
delete_group_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group_membership(Client, Input, []).

-spec delete_group_membership(aws_client:aws_client(), delete_group_membership_request(), proplists:proplist()) ->
    {ok, delete_group_membership_response(), tuple()} |
    {error, any()} |
    {error, delete_group_membership_errors(), tuple()}.
delete_group_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroupMembership">>, Input, Options).

%% @doc Deletes a user within an identity store given `UserId'.
-spec delete_user(aws_client:aws_client(), delete_user_request()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).

-spec delete_user(aws_client:aws_client(), delete_user_request(), proplists:proplist()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Retrieves the group metadata and attributes from `GroupId' in an
%% identity
%% store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec describe_group(aws_client:aws_client(), describe_group_request()) ->
    {ok, describe_group_response(), tuple()} |
    {error, any()} |
    {error, describe_group_errors(), tuple()}.
describe_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_group(Client, Input, []).

-spec describe_group(aws_client:aws_client(), describe_group_request(), proplists:proplist()) ->
    {ok, describe_group_response(), tuple()} |
    {error, any()} |
    {error, describe_group_errors(), tuple()}.
describe_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGroup">>, Input, Options).

%% @doc Retrieves membership metadata and attributes from `MembershipId'
%% in an identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec describe_group_membership(aws_client:aws_client(), describe_group_membership_request()) ->
    {ok, describe_group_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_group_membership_errors(), tuple()}.
describe_group_membership(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_group_membership(Client, Input, []).

-spec describe_group_membership(aws_client:aws_client(), describe_group_membership_request(), proplists:proplist()) ->
    {ok, describe_group_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_group_membership_errors(), tuple()}.
describe_group_membership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGroupMembership">>, Input, Options).

%% @doc Retrieves the user metadata and attributes from the `UserId' in
%% an identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec describe_user(aws_client:aws_client(), describe_user_request()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user(Client, Input, []).

-spec describe_user(aws_client:aws_client(), describe_user_request(), proplists:proplist()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUser">>, Input, Options).

%% @doc Retrieves `GroupId' in an identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec get_group_id(aws_client:aws_client(), get_group_id_request()) ->
    {ok, get_group_id_response(), tuple()} |
    {error, any()} |
    {error, get_group_id_errors(), tuple()}.
get_group_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_group_id(Client, Input, []).

-spec get_group_id(aws_client:aws_client(), get_group_id_request(), proplists:proplist()) ->
    {ok, get_group_id_response(), tuple()} |
    {error, any()} |
    {error, get_group_id_errors(), tuple()}.
get_group_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGroupId">>, Input, Options).

%% @doc Retrieves the `MembershipId' in an identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec get_group_membership_id(aws_client:aws_client(), get_group_membership_id_request()) ->
    {ok, get_group_membership_id_response(), tuple()} |
    {error, any()} |
    {error, get_group_membership_id_errors(), tuple()}.
get_group_membership_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_group_membership_id(Client, Input, []).

-spec get_group_membership_id(aws_client:aws_client(), get_group_membership_id_request(), proplists:proplist()) ->
    {ok, get_group_membership_id_response(), tuple()} |
    {error, any()} |
    {error, get_group_membership_id_errors(), tuple()}.
get_group_membership_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGroupMembershipId">>, Input, Options).

%% @doc Retrieves the `UserId' in an identity store.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec get_user_id(aws_client:aws_client(), get_user_id_request()) ->
    {ok, get_user_id_response(), tuple()} |
    {error, any()} |
    {error, get_user_id_errors(), tuple()}.
get_user_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_user_id(Client, Input, []).

-spec get_user_id(aws_client:aws_client(), get_user_id_request(), proplists:proplist()) ->
    {ok, get_user_id_response(), tuple()} |
    {error, any()} |
    {error, get_user_id_errors(), tuple()}.
get_user_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUserId">>, Input, Options).

%% @doc Checks the user's membership in all requested groups and returns
%% if the member exists in all queried groups.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec is_member_in_groups(aws_client:aws_client(), is_member_in_groups_request()) ->
    {ok, is_member_in_groups_response(), tuple()} |
    {error, any()} |
    {error, is_member_in_groups_errors(), tuple()}.
is_member_in_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    is_member_in_groups(Client, Input, []).

-spec is_member_in_groups(aws_client:aws_client(), is_member_in_groups_request(), proplists:proplist()) ->
    {ok, is_member_in_groups_response(), tuple()} |
    {error, any()} |
    {error, is_member_in_groups_errors(), tuple()}.
is_member_in_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IsMemberInGroups">>, Input, Options).

%% @doc For the specified group in the specified identity store, returns the
%% list of all `GroupMembership' objects and returns results in paginated
%% form.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec list_group_memberships(aws_client:aws_client(), list_group_memberships_request()) ->
    {ok, list_group_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_group_memberships_errors(), tuple()}.
list_group_memberships(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_group_memberships(Client, Input, []).

-spec list_group_memberships(aws_client:aws_client(), list_group_memberships_request(), proplists:proplist()) ->
    {ok, list_group_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_group_memberships_errors(), tuple()}.
list_group_memberships(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupMemberships">>, Input, Options).

%% @doc For the specified member in the specified identity store, returns the
%% list of all `GroupMembership' objects and returns results in paginated
%% form.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec list_group_memberships_for_member(aws_client:aws_client(), list_group_memberships_for_member_request()) ->
    {ok, list_group_memberships_for_member_response(), tuple()} |
    {error, any()} |
    {error, list_group_memberships_for_member_errors(), tuple()}.
list_group_memberships_for_member(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_group_memberships_for_member(Client, Input, []).

-spec list_group_memberships_for_member(aws_client:aws_client(), list_group_memberships_for_member_request(), proplists:proplist()) ->
    {ok, list_group_memberships_for_member_response(), tuple()} |
    {error, any()} |
    {error, list_group_memberships_for_member_errors(), tuple()}.
list_group_memberships_for_member(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupMembershipsForMember">>, Input, Options).

%% @doc Lists all groups in the identity store.
%%
%% Returns a paginated list of complete `Group' objects.
%% Filtering for a `Group' by the `DisplayName' attribute is
%% deprecated. Instead, use the `GetGroupId' API action.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec list_groups(aws_client:aws_client(), list_groups_request()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups(Client, Input, []).

-spec list_groups(aws_client:aws_client(), list_groups_request(), proplists:proplist()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroups">>, Input, Options).

%% @doc Lists all users in the identity store.
%%
%% Returns a paginated list of complete `User' objects.
%% Filtering for a `User' by the `UserName' attribute is deprecated.
%% Instead, use the `GetUserId' API action.
%%
%% If you have administrator access to a member account, you can use this API
%% from the member account.
%% Read about member accounts:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html
%% in the
%% Organizations User Guide.
-spec list_users(aws_client:aws_client(), list_users_request()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).

-spec list_users(aws_client:aws_client(), list_users_request(), proplists:proplist()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc For the specified group in the specified identity store, updates the
%% group metadata and attributes.
-spec update_group(aws_client:aws_client(), update_group_request()) ->
    {ok, update_group_response(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_group(Client, Input, []).

-spec update_group(aws_client:aws_client(), update_group_request(), proplists:proplist()) ->
    {ok, update_group_response(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGroup">>, Input, Options).

%% @doc For the specified user in the specified identity store, updates the
%% user metadata and attributes.
-spec update_user(aws_client:aws_client(), update_user_request()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user(Client, Input, []).

-spec update_user(aws_client:aws_client(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUser">>, Input, Options).

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
    Client1 = Client#{service => <<"identitystore">>},
    Host = build_host(<<"identitystore">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSIdentityStore.", Action/binary>>}
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
