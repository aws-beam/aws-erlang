%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_sso_admin).

-export([attach_managed_policy_to_permission_set/2,
         attach_managed_policy_to_permission_set/3,
         create_account_assignment/2,
         create_account_assignment/3,
         create_permission_set/2,
         create_permission_set/3,
         delete_account_assignment/2,
         delete_account_assignment/3,
         delete_inline_policy_from_permission_set/2,
         delete_inline_policy_from_permission_set/3,
         delete_permission_set/2,
         delete_permission_set/3,
         describe_account_assignment_creation_status/2,
         describe_account_assignment_creation_status/3,
         describe_account_assignment_deletion_status/2,
         describe_account_assignment_deletion_status/3,
         describe_permission_set/2,
         describe_permission_set/3,
         describe_permission_set_provisioning_status/2,
         describe_permission_set_provisioning_status/3,
         detach_managed_policy_from_permission_set/2,
         detach_managed_policy_from_permission_set/3,
         get_inline_policy_for_permission_set/2,
         get_inline_policy_for_permission_set/3,
         list_account_assignment_creation_status/2,
         list_account_assignment_creation_status/3,
         list_account_assignment_deletion_status/2,
         list_account_assignment_deletion_status/3,
         list_account_assignments/2,
         list_account_assignments/3,
         list_accounts_for_provisioned_permission_set/2,
         list_accounts_for_provisioned_permission_set/3,
         list_instances/2,
         list_instances/3,
         list_managed_policies_in_permission_set/2,
         list_managed_policies_in_permission_set/3,
         list_permission_set_provisioning_status/2,
         list_permission_set_provisioning_status/3,
         list_permission_sets/2,
         list_permission_sets/3,
         list_permission_sets_provisioned_to_account/2,
         list_permission_sets_provisioned_to_account/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         provision_permission_set/2,
         provision_permission_set/3,
         put_inline_policy_to_permission_set/2,
         put_inline_policy_to_permission_set/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_permission_set/2,
         update_permission_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Attaches an IAM managed policy ARN to a permission set.
%%
%% If the permission set is already referenced by one or more account
%% assignments, you will need to call ` `ProvisionPermissionSet` ` after this
%% action to apply the corresponding IAM policy updates to all assigned
%% accounts.
attach_managed_policy_to_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_managed_policy_to_permission_set(Client, Input, []).
attach_managed_policy_to_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachManagedPolicyToPermissionSet">>, Input, Options).

%% @doc Assigns access to a principal for a specified AWS account using a
%% specified permission set.
%%
%% The term principal here refers to a user or group that is defined in AWS
%% SSO.
%%
%% As part of a successful `CreateAccountAssignment` call, the specified
%% permission set will automatically be provisioned to the account in the
%% form of an IAM policy attached to the SSO-created IAM role. If the
%% permission set is subsequently updated, the corresponding IAM policies
%% attached to roles in your accounts will not be updated automatically. In
%% this case, you will need to call ` `ProvisionPermissionSet` ` to make
%% these updates.
create_account_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_account_assignment(Client, Input, []).
create_account_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccountAssignment">>, Input, Options).

%% @doc Creates a permission set within a specified SSO instance.
%%
%% To grant users and groups access to AWS account resources, use `
%% `CreateAccountAssignment` `.
create_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_permission_set(Client, Input, []).
create_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePermissionSet">>, Input, Options).

%% @doc Deletes a principal's access from a specified AWS account using a
%% specified permission set.
delete_account_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_assignment(Client, Input, []).
delete_account_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountAssignment">>, Input, Options).

%% @doc Deletes the inline policy from a specified permission set.
delete_inline_policy_from_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inline_policy_from_permission_set(Client, Input, []).
delete_inline_policy_from_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInlinePolicyFromPermissionSet">>, Input, Options).

%% @doc Deletes the specified permission set.
delete_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permission_set(Client, Input, []).
delete_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermissionSet">>, Input, Options).

%% @doc Describes the status of the assignment creation request.
describe_account_assignment_creation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_assignment_creation_status(Client, Input, []).
describe_account_assignment_creation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAssignmentCreationStatus">>, Input, Options).

%% @doc Describes the status of the assignment deletion request.
describe_account_assignment_deletion_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_assignment_deletion_status(Client, Input, []).
describe_account_assignment_deletion_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAssignmentDeletionStatus">>, Input, Options).

%% @doc Gets the details of the permission set.
describe_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_permission_set(Client, Input, []).
describe_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePermissionSet">>, Input, Options).

%% @doc Describes the status for the given permission set provisioning
%% request.
describe_permission_set_provisioning_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_permission_set_provisioning_status(Client, Input, []).
describe_permission_set_provisioning_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePermissionSetProvisioningStatus">>, Input, Options).

%% @doc Detaches the attached IAM managed policy ARN from the specified
%% permission set.
detach_managed_policy_from_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_managed_policy_from_permission_set(Client, Input, []).
detach_managed_policy_from_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachManagedPolicyFromPermissionSet">>, Input, Options).

%% @doc Obtains the inline policy assigned to the permission set.
get_inline_policy_for_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_inline_policy_for_permission_set(Client, Input, []).
get_inline_policy_for_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInlinePolicyForPermissionSet">>, Input, Options).

%% @doc Lists the status of the AWS account assignment creation requests for
%% a specified SSO instance.
list_account_assignment_creation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignment_creation_status(Client, Input, []).
list_account_assignment_creation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignmentCreationStatus">>, Input, Options).

%% @doc Lists the status of the AWS account assignment deletion requests for
%% a specified SSO instance.
list_account_assignment_deletion_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignment_deletion_status(Client, Input, []).
list_account_assignment_deletion_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignmentDeletionStatus">>, Input, Options).

%% @doc Lists the assignee of the specified AWS account with the specified
%% permission set.
list_account_assignments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_assignments(Client, Input, []).
list_account_assignments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountAssignments">>, Input, Options).

%% @doc Lists all the AWS accounts where the specified permission set is
%% provisioned.
list_accounts_for_provisioned_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accounts_for_provisioned_permission_set(Client, Input, []).
list_accounts_for_provisioned_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountsForProvisionedPermissionSet">>, Input, Options).

%% @doc Lists the SSO instances that the caller has access to.
list_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instances(Client, Input, []).
list_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstances">>, Input, Options).

%% @doc Lists the IAM managed policy that is attached to a specified
%% permission set.
list_managed_policies_in_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_managed_policies_in_permission_set(Client, Input, []).
list_managed_policies_in_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListManagedPoliciesInPermissionSet">>, Input, Options).

%% @doc Lists the status of the permission set provisioning requests for a
%% specified SSO instance.
list_permission_set_provisioning_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permission_set_provisioning_status(Client, Input, []).
list_permission_set_provisioning_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissionSetProvisioningStatus">>, Input, Options).

%% @doc Lists the `PermissionSet`s in an SSO instance.
list_permission_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permission_sets(Client, Input, []).
list_permission_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissionSets">>, Input, Options).

%% @doc Lists all the permission sets that are provisioned to a specified AWS
%% account.
list_permission_sets_provisioned_to_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permission_sets_provisioned_to_account(Client, Input, []).
list_permission_sets_provisioned_to_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissionSetsProvisionedToAccount">>, Input, Options).

%% @doc Lists the tags that are attached to a specified resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc The process by which a specified permission set is provisioned to the
%% specified target.
provision_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_permission_set(Client, Input, []).
provision_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionPermissionSet">>, Input, Options).

%% @doc Attaches an IAM inline policy to a permission set.
%%
%% If the permission set is already referenced by one or more account
%% assignments, you will need to call ` `ProvisionPermissionSet` ` after this
%% action to apply the corresponding IAM policy updates to all assigned
%% accounts.
put_inline_policy_to_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_inline_policy_to_permission_set(Client, Input, []).
put_inline_policy_to_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInlinePolicyToPermissionSet">>, Input, Options).

%% @doc Associates a set of tags with a specified resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Disassociates a set of tags from a specified resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing permission set.
update_permission_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_permission_set(Client, Input, []).
update_permission_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePermissionSet">>, Input, Options).

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
    Client1 = Client#{service => <<"sso">>},
    Host = build_host(<<"sso">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"SWBExternalService.", Action/binary>>}
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
