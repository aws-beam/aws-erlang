%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Firewall Manager
%%
%% This is the AWS Firewall Manager API Reference.
%%
%% This guide is for developers who need detailed information about the AWS
%% Firewall Manager API actions, data types, and errors. For detailed
%% information about AWS Firewall Manager features, see the AWS Firewall
%% Manager Developer Guide.
-module(aws_fms).

-export([associate_admin_account/2,
         associate_admin_account/3,
         delete_apps_list/2,
         delete_apps_list/3,
         delete_notification_channel/2,
         delete_notification_channel/3,
         delete_policy/2,
         delete_policy/3,
         delete_protocols_list/2,
         delete_protocols_list/3,
         disassociate_admin_account/2,
         disassociate_admin_account/3,
         get_admin_account/2,
         get_admin_account/3,
         get_apps_list/2,
         get_apps_list/3,
         get_compliance_detail/2,
         get_compliance_detail/3,
         get_notification_channel/2,
         get_notification_channel/3,
         get_policy/2,
         get_policy/3,
         get_protection_status/2,
         get_protection_status/3,
         get_protocols_list/2,
         get_protocols_list/3,
         get_violation_details/2,
         get_violation_details/3,
         list_apps_lists/2,
         list_apps_lists/3,
         list_compliance_status/2,
         list_compliance_status/3,
         list_member_accounts/2,
         list_member_accounts/3,
         list_policies/2,
         list_policies/3,
         list_protocols_lists/2,
         list_protocols_lists/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_apps_list/2,
         put_apps_list/3,
         put_notification_channel/2,
         put_notification_channel/3,
         put_policy/2,
         put_policy/3,
         put_protocols_list/2,
         put_protocols_list/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Sets the AWS Firewall Manager administrator account.
%%
%% AWS Firewall Manager must be associated with the master account of your
%% AWS organization or associated with a member account that has the
%% appropriate permissions. If the account ID that you submit is not an AWS
%% Organizations master account, AWS Firewall Manager will set the
%% appropriate permissions for the given member account.
%%
%% The account that you associate with AWS Firewall Manager is called the AWS
%% Firewall Manager administrator account.
associate_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_admin_account(Client, Input, []).
associate_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateAdminAccount">>, Input, Options).

%% @doc Permanently deletes an AWS Firewall Manager applications list.
delete_apps_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_apps_list(Client, Input, []).
delete_apps_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppsList">>, Input, Options).

%% @doc Deletes an AWS Firewall Manager association with the IAM role and the
%% Amazon Simple Notification Service (SNS) topic that is used to record AWS
%% Firewall Manager SNS logs.
delete_notification_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notification_channel(Client, Input, []).
delete_notification_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotificationChannel">>, Input, Options).

%% @doc Permanently deletes an AWS Firewall Manager policy.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Permanently deletes an AWS Firewall Manager protocols list.
delete_protocols_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_protocols_list(Client, Input, []).
delete_protocols_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProtocolsList">>, Input, Options).

%% @doc Disassociates the account that has been set as the AWS Firewall
%% Manager administrator account.
%%
%% To set a different account as the administrator account, you must submit
%% an `AssociateAdminAccount` request.
disassociate_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_admin_account(Client, Input, []).
disassociate_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateAdminAccount">>, Input, Options).

%% @doc Returns the AWS Organizations master account that is associated with
%% AWS Firewall Manager as the AWS Firewall Manager administrator.
get_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_admin_account(Client, Input, []).
get_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAdminAccount">>, Input, Options).

%% @doc Returns information about the specified AWS Firewall Manager
%% applications list.
get_apps_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_apps_list(Client, Input, []).
get_apps_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppsList">>, Input, Options).

%% @doc Returns detailed compliance information about the specified member
%% account.
%%
%% Details include resources that are in and out of compliance with the
%% specified policy. Resources are considered noncompliant for AWS WAF and
%% Shield Advanced policies if the specified policy has not been applied to
%% them. Resources are considered noncompliant for security group policies if
%% they are in scope of the policy, they violate one or more of the policy
%% rules, and remediation is disabled or not possible.
get_compliance_detail(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_detail(Client, Input, []).
get_compliance_detail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceDetail">>, Input, Options).

%% @doc Information about the Amazon Simple Notification Service (SNS) topic
%% that is used to record AWS Firewall Manager SNS logs.
get_notification_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_notification_channel(Client, Input, []).
get_notification_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNotificationChannel">>, Input, Options).

%% @doc Returns information about the specified AWS Firewall Manager policy.
get_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy(Client, Input, []).
get_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicy">>, Input, Options).

%% @doc If you created a Shield Advanced policy, returns policy-level attack
%% summary information in the event of a potential DDoS attack.
%%
%% Other policy types are currently unsupported.
get_protection_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_protection_status(Client, Input, []).
get_protection_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProtectionStatus">>, Input, Options).

%% @doc Returns information about the specified AWS Firewall Manager
%% protocols list.
get_protocols_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_protocols_list(Client, Input, []).
get_protocols_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProtocolsList">>, Input, Options).

%% @doc Retrieves violations for a resource based on the specified AWS
%% Firewall Manager policy and AWS account.
get_violation_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_violation_details(Client, Input, []).
get_violation_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetViolationDetails">>, Input, Options).

%% @doc Returns an array of `AppsListDataSummary` objects.
list_apps_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_apps_lists(Client, Input, []).
list_apps_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAppsLists">>, Input, Options).

%% @doc Returns an array of `PolicyComplianceStatus` objects.
%%
%% Use `PolicyComplianceStatus` to get a summary of which member accounts are
%% protected by the specified policy.
list_compliance_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compliance_status(Client, Input, []).
list_compliance_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComplianceStatus">>, Input, Options).

%% @doc Returns a `MemberAccounts` object that lists the member accounts in
%% the administrator's AWS organization.
%%
%% The `ListMemberAccounts` must be submitted by the account that is set as
%% the AWS Firewall Manager administrator.
list_member_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_member_accounts(Client, Input, []).
list_member_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMemberAccounts">>, Input, Options).

%% @doc Returns an array of `PolicySummary` objects.
list_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies(Client, Input, []).
list_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicies">>, Input, Options).

%% @doc Returns an array of `ProtocolsListDataSummary` objects.
list_protocols_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_protocols_lists(Client, Input, []).
list_protocols_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProtocolsLists">>, Input, Options).

%% @doc Retrieves the list of tags for the specified AWS resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates an AWS Firewall Manager applications list.
put_apps_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_apps_list(Client, Input, []).
put_apps_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAppsList">>, Input, Options).

%% @doc Designates the IAM role and Amazon Simple Notification Service (SNS)
%% topic that AWS Firewall Manager uses to record SNS logs.
put_notification_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_notification_channel(Client, Input, []).
put_notification_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutNotificationChannel">>, Input, Options).

%% @doc Creates an AWS Firewall Manager policy.
%%
%% Firewall Manager provides the following types of policies:
%%
%% <ul> <li> A Shield Advanced policy, which applies Shield Advanced
%% protection to specified accounts and resources
%%
%% </li> <li> An AWS WAF policy (type WAFV2), which defines rule groups to
%% run first in the corresponding AWS WAF web ACL and rule groups to run last
%% in the web ACL.
%%
%% </li> <li> An AWS WAF Classic policy (type WAF), which defines a rule
%% group.
%%
%% </li> <li> A security group policy, which manages VPC security groups
%% across your AWS organization.
%%
%% </li> </ul> Each policy is specific to one of the types. If you want to
%% enforce more than one policy type across accounts, create multiple
%% policies. You can create multiple policies for each type.
%%
%% You must be subscribed to Shield Advanced to create a Shield Advanced
%% policy. For more information about subscribing to Shield Advanced, see
%% CreateSubscription.
put_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_policy(Client, Input, []).
put_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPolicy">>, Input, Options).

%% @doc Creates an AWS Firewall Manager protocols list.
put_protocols_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_protocols_list(Client, Input, []).
put_protocols_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutProtocolsList">>, Input, Options).

%% @doc Adds one or more tags to an AWS resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from an AWS resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"fms">>},
    Host = build_host(<<"fms">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSFMS_20180101.", Action/binary>>}
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
