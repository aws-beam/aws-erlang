%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon WorkMail is a secure, managed business email and calendaring
%% service with support for existing desktop and mobile email clients. You
%% can access your email, contacts, and calendars using Microsoft Outlook,
%% your browser, or other native iOS and Android email applications. You can
%% integrate WorkMail with your existing corporate directory and control both
%% the keys that encrypt your data and the location in which your data is
%% stored.
%%
%% The WorkMail API is designed for the following scenarios:
%%
%% <ul> <li> Listing and describing organizations
%%
%% </li> </ul> <ul> <li> Managing users
%%
%% </li> </ul> <ul> <li> Managing groups
%%
%% </li> </ul> <ul> <li> Managing resources
%%
%% </li> </ul> All WorkMail API operations are Amazon-authenticated and
%% certificate-signed. They not only require the use of the AWS SDK, but also
%% allow for the exclusive use of AWS Identity and Access Management users
%% and roles to help facilitate access, trust, and permission policies. By
%% creating a role and allowing an IAM user to access the WorkMail site, the
%% IAM user gains full administrative visibility into the entire WorkMail
%% organization (or as set in the IAM policy). This includes, but is not
%% limited to, the ability to create, update, and delete users, groups, and
%% resources. This allows developers to perform the scenarios listed above,
%% as well as give users the ability to grant access on a selective basis
%% using the IAM model.
-module(aws_workmail).

-export([associate_delegate_to_resource/2,
         associate_delegate_to_resource/3,
         associate_member_to_group/2,
         associate_member_to_group/3,
         create_alias/2,
         create_alias/3,
         create_group/2,
         create_group/3,
         create_resource/2,
         create_resource/3,
         create_user/2,
         create_user/3,
         delete_access_control_rule/2,
         delete_access_control_rule/3,
         delete_alias/2,
         delete_alias/3,
         delete_group/2,
         delete_group/3,
         delete_mailbox_permissions/2,
         delete_mailbox_permissions/3,
         delete_resource/2,
         delete_resource/3,
         delete_retention_policy/2,
         delete_retention_policy/3,
         delete_user/2,
         delete_user/3,
         deregister_from_work_mail/2,
         deregister_from_work_mail/3,
         describe_group/2,
         describe_group/3,
         describe_organization/2,
         describe_organization/3,
         describe_resource/2,
         describe_resource/3,
         describe_user/2,
         describe_user/3,
         disassociate_delegate_from_resource/2,
         disassociate_delegate_from_resource/3,
         disassociate_member_from_group/2,
         disassociate_member_from_group/3,
         get_access_control_effect/2,
         get_access_control_effect/3,
         get_default_retention_policy/2,
         get_default_retention_policy/3,
         get_mailbox_details/2,
         get_mailbox_details/3,
         list_access_control_rules/2,
         list_access_control_rules/3,
         list_aliases/2,
         list_aliases/3,
         list_group_members/2,
         list_group_members/3,
         list_groups/2,
         list_groups/3,
         list_mailbox_permissions/2,
         list_mailbox_permissions/3,
         list_organizations/2,
         list_organizations/3,
         list_resource_delegates/2,
         list_resource_delegates/3,
         list_resources/2,
         list_resources/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_users/2,
         list_users/3,
         put_access_control_rule/2,
         put_access_control_rule/3,
         put_mailbox_permissions/2,
         put_mailbox_permissions/3,
         put_retention_policy/2,
         put_retention_policy/3,
         register_to_work_mail/2,
         register_to_work_mail/3,
         reset_password/2,
         reset_password/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_mailbox_quota/2,
         update_mailbox_quota/3,
         update_primary_email_address/2,
         update_primary_email_address/3,
         update_resource/2,
         update_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a member (user or group) to the resource's set of delegates.
associate_delegate_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_delegate_to_resource(Client, Input, []).
associate_delegate_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDelegateToResource">>, Input, Options).

%% @doc Adds a member (user or group) to the group's set.
associate_member_to_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_member_to_group(Client, Input, []).
associate_member_to_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateMemberToGroup">>, Input, Options).

%% @doc Adds an alias to the set of a given member (user or group) of Amazon
%% WorkMail.
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Creates a group that can be used in Amazon WorkMail by calling the
%% <a>RegisterToWorkMail</a> operation.
create_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_group(Client, Input, []).
create_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGroup">>, Input, Options).

%% @doc Creates a new Amazon WorkMail resource.
create_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource(Client, Input, []).
create_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResource">>, Input, Options).

%% @doc Creates a user who can be used in Amazon WorkMail by calling the
%% <a>RegisterToWorkMail</a> operation.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Deletes an access control rule for the specified WorkMail
%% organization.
delete_access_control_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access_control_rule(Client, Input, []).
delete_access_control_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccessControlRule">>, Input, Options).

%% @doc Remove one or more specified aliases from a set of aliases for a
%% given user.
delete_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alias(Client, Input, []).
delete_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlias">>, Input, Options).

%% @doc Deletes a group from Amazon WorkMail.
delete_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_group(Client, Input, []).
delete_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGroup">>, Input, Options).

%% @doc Deletes permissions granted to a member (user or group).
delete_mailbox_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_mailbox_permissions(Client, Input, []).
delete_mailbox_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMailboxPermissions">>, Input, Options).

%% @doc Deletes the specified resource.
delete_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource(Client, Input, []).
delete_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResource">>, Input, Options).

%% @doc Deletes the specified retention policy from the specified
%% organization.
delete_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_retention_policy(Client, Input, []).
delete_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRetentionPolicy">>, Input, Options).

%% @doc Deletes a user from Amazon WorkMail and all subsequent systems.
%% Before you can delete a user, the user state must be
%% <code>DISABLED</code>. Use the <a>DescribeUser</a> action to confirm the
%% user state.
%%
%% Deleting a user is permanent and cannot be undone. WorkMail archives user
%% mailboxes for 30 days before they are permanently removed.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Mark a user, group, or resource as no longer used in Amazon WorkMail.
%% This action disassociates the mailbox and schedules it for clean-up.
%% WorkMail keeps mailboxes for 30 days before they are permanently removed.
%% The functionality in the console is <i>Disable</i>.
deregister_from_work_mail(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_from_work_mail(Client, Input, []).
deregister_from_work_mail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterFromWorkMail">>, Input, Options).

%% @doc Returns the data available for the group.
describe_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_group(Client, Input, []).
describe_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGroup">>, Input, Options).

%% @doc Provides more information regarding a given organization based on its
%% identifier.
describe_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization(Client, Input, []).
describe_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganization">>, Input, Options).

%% @doc Returns the data available for the resource.
describe_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource(Client, Input, []).
describe_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResource">>, Input, Options).

%% @doc Provides information regarding the user.
describe_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user(Client, Input, []).
describe_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUser">>, Input, Options).

%% @doc Removes a member from the resource's set of delegates.
disassociate_delegate_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_delegate_from_resource(Client, Input, []).
disassociate_delegate_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDelegateFromResource">>, Input, Options).

%% @doc Removes a member from a group.
disassociate_member_from_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_member_from_group(Client, Input, []).
disassociate_member_from_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateMemberFromGroup">>, Input, Options).

%% @doc Gets the effects of an organization's access control rules as they
%% apply to a specified IPv4 address, access protocol action, or user ID.
get_access_control_effect(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_control_effect(Client, Input, []).
get_access_control_effect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessControlEffect">>, Input, Options).

%% @doc Gets the default retention policy details for the specified
%% organization.
get_default_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_default_retention_policy(Client, Input, []).
get_default_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDefaultRetentionPolicy">>, Input, Options).

%% @doc Requests a user's mailbox details for a specified organization and
%% user.
get_mailbox_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mailbox_details(Client, Input, []).
get_mailbox_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMailboxDetails">>, Input, Options).

%% @doc Lists the access control rules for the specified organization.
list_access_control_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_access_control_rules(Client, Input, []).
list_access_control_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccessControlRules">>, Input, Options).

%% @doc Creates a paginated call to list the aliases associated with a given
%% entity.
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc Returns an overview of the members of a group. Users and groups can
%% be members of a group.
list_group_members(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_group_members(Client, Input, []).
list_group_members(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupMembers">>, Input, Options).

%% @doc Returns summaries of the organization's groups.
list_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups(Client, Input, []).
list_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroups">>, Input, Options).

%% @doc Lists the mailbox permissions associated with a user, group, or
%% resource mailbox.
list_mailbox_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mailbox_permissions(Client, Input, []).
list_mailbox_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMailboxPermissions">>, Input, Options).

%% @doc Returns summaries of the customer's organizations.
list_organizations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_organizations(Client, Input, []).
list_organizations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOrganizations">>, Input, Options).

%% @doc Lists the delegates associated with a resource. Users and groups can
%% be resource delegates and answer requests on behalf of the resource.
list_resource_delegates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_delegates(Client, Input, []).
list_resource_delegates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceDelegates">>, Input, Options).

%% @doc Returns summaries of the organization's resources.
list_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources(Client, Input, []).
list_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResources">>, Input, Options).

%% @doc Lists the tags applied to an Amazon WorkMail organization resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns summaries of the organization's users.
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc Adds a new access control rule for the specified organization. The
%% rule allows or denies access to the organization for the specified IPv4
%% addresses, access protocol actions, and user IDs. Adding a new rule with
%% the same name as an existing rule replaces the older rule.
put_access_control_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_access_control_rule(Client, Input, []).
put_access_control_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccessControlRule">>, Input, Options).

%% @doc Sets permissions for a user, group, or resource. This replaces any
%% pre-existing permissions.
put_mailbox_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_mailbox_permissions(Client, Input, []).
put_mailbox_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMailboxPermissions">>, Input, Options).

%% @doc Puts a retention policy to the specified organization.
put_retention_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_retention_policy(Client, Input, []).
put_retention_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRetentionPolicy">>, Input, Options).

%% @doc Registers an existing and disabled user, group, or resource for
%% Amazon WorkMail use by associating a mailbox and calendaring capabilities.
%% It performs no change if the user, group, or resource is enabled and fails
%% if the user, group, or resource is deleted. This operation results in the
%% accumulation of costs. For more information, see <a
%% href="https://aws.amazon.com/workmail/pricing">Pricing</a>. The equivalent
%% console functionality for this operation is <i>Enable</i>.
%%
%% Users can either be created by calling the <a>CreateUser</a> API operation
%% or they can be synchronized from your directory. For more information, see
%% <a>DeregisterFromWorkMail</a>.
register_to_work_mail(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_to_work_mail(Client, Input, []).
register_to_work_mail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterToWorkMail">>, Input, Options).

%% @doc Allows the administrator to reset the password for a user.
reset_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_password(Client, Input, []).
reset_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetPassword">>, Input, Options).

%% @doc Applies the specified tags to the specified Amazon WorkMail
%% organization resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Untags the specified tags from the specified Amazon WorkMail
%% organization resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a user's current mailbox quota for a specified organization
%% and user.
update_mailbox_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_mailbox_quota(Client, Input, []).
update_mailbox_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMailboxQuota">>, Input, Options).

%% @doc Updates the primary email for a user, group, or resource. The current
%% email is moved into the list of aliases (or swapped between an existing
%% alias and the current primary email), and the email provided in the input
%% is promoted as the primary.
update_primary_email_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_primary_email_address(Client, Input, []).
update_primary_email_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePrimaryEmailAddress">>, Input, Options).

%% @doc Updates data for the resource. To have the latest information, it
%% must be preceded by a <a>DescribeResource</a> call. The dataset in the
%% request should be the one expected when performing another
%% <code>DescribeResource</code> call.
update_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource(Client, Input, []).
update_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResource">>, Input, Options).

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
    Client1 = Client#{service => <<"workmail">>},
    Host = build_host(<<"workmail">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"WorkMailService.", Action/binary>>}
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
