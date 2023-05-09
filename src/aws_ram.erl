%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Resource Access Manager API Reference.
%%
%% This documentation provides descriptions and syntax for each of the
%% actions and data types in RAM. RAM is a service that helps you securely
%% share your Amazon Web Services resources to other Amazon Web Services
%% accounts. If you use Organizations to manage your accounts, then you can
%% share your resources with your entire organization or to organizational
%% units (OUs). For supported resource types, you can also share resources
%% with individual Identity and Access Management (IAM) roles and users.
%%
%% To learn more about RAM, see the following resources:
%%
%% <ul> <li> Resource Access Manager product page
%%
%% </li> <li> Resource Access Manager User Guide
%%
%% </li> </ul>
-module(aws_ram).

-export([accept_resource_share_invitation/2,
         accept_resource_share_invitation/3,
         associate_resource_share/2,
         associate_resource_share/3,
         associate_resource_share_permission/2,
         associate_resource_share_permission/3,
         create_permission/2,
         create_permission/3,
         create_permission_version/2,
         create_permission_version/3,
         create_resource_share/2,
         create_resource_share/3,
         delete_permission/2,
         delete_permission/3,
         delete_permission_version/2,
         delete_permission_version/3,
         delete_resource_share/2,
         delete_resource_share/3,
         disassociate_resource_share/2,
         disassociate_resource_share/3,
         disassociate_resource_share_permission/2,
         disassociate_resource_share_permission/3,
         enable_sharing_with_aws_organization/2,
         enable_sharing_with_aws_organization/3,
         get_permission/2,
         get_permission/3,
         get_resource_policies/2,
         get_resource_policies/3,
         get_resource_share_associations/2,
         get_resource_share_associations/3,
         get_resource_share_invitations/2,
         get_resource_share_invitations/3,
         get_resource_shares/2,
         get_resource_shares/3,
         list_pending_invitation_resources/2,
         list_pending_invitation_resources/3,
         list_permission_associations/2,
         list_permission_associations/3,
         list_permission_versions/2,
         list_permission_versions/3,
         list_permissions/2,
         list_permissions/3,
         list_principals/2,
         list_principals/3,
         list_replace_permission_associations_work/2,
         list_replace_permission_associations_work/3,
         list_resource_share_permissions/2,
         list_resource_share_permissions/3,
         list_resource_types/2,
         list_resource_types/3,
         list_resources/2,
         list_resources/3,
         promote_permission_created_from_policy/2,
         promote_permission_created_from_policy/3,
         promote_resource_share_created_from_policy/2,
         promote_resource_share_created_from_policy/3,
         reject_resource_share_invitation/2,
         reject_resource_share_invitation/3,
         replace_permission_associations/2,
         replace_permission_associations/3,
         set_default_permission_version/2,
         set_default_permission_version/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_resource_share/2,
         update_resource_share/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts an invitation to a resource share from another Amazon Web
%% Services account.
%%
%% After you accept the invitation, the resources included in the resource
%% share are available to interact with in the relevant Amazon Web Services
%% Management Consoles and tools.
accept_resource_share_invitation(Client, Input) ->
    accept_resource_share_invitation(Client, Input, []).
accept_resource_share_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/acceptresourceshareinvitation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified list of principals and list of resources to a
%% resource share.
%%
%% Principals that already have access to this resource share immediately
%% receive access to the added resources. Newly added principals immediately
%% receive access to the resources shared in this resource share.
associate_resource_share(Client, Input) ->
    associate_resource_share(Client, Input, []).
associate_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateresourceshare"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or replaces the RAM permission for a resource type included in a
%% resource share.
%%
%% You can have exactly one permission associated with each resource type in
%% the resource share. You can add a new RAM permission only if there are
%% currently no resources of that resource type currently in the resource
%% share.
associate_resource_share_permission(Client, Input) ->
    associate_resource_share_permission(Client, Input, []).
associate_resource_share_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateresourcesharepermission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a customer managed permission for a specified resource type
%% that you can attach to resource shares.
%%
%% It is created in the Amazon Web Services Region in which you call the
%% operation.
create_permission(Client, Input) ->
    create_permission(Client, Input, []).
create_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createpermission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of the specified customer managed permission.
%%
%% The new version is automatically set as the default version of the
%% customer managed permission. New resource shares automatically use the
%% default permission. Existing resource shares continue to use their
%% original permission versions, but you can use
%% `ReplacePermissionAssociations' to update them.
%%
%% If the specified customer managed permission already has the maximum of 5
%% versions, then you must delete one of the existing versions before you can
%% create a new one.
create_permission_version(Client, Input) ->
    create_permission_version(Client, Input, []).
create_permission_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createpermissionversion"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a resource share.
%%
%% You can provide a list of the Amazon Resource Names (ARNs) for the
%% resources that you want to share, a list of principals you want to share
%% the resources with, and the permissions to grant those principals.
%%
%% Sharing a resource makes it available for use by principals outside of the
%% Amazon Web Services account that created the resource. Sharing doesn't
%% change any permissions or quotas that apply to the resource in the account
%% that created it.
create_resource_share(Client, Input) ->
    create_resource_share(Client, Input, []).
create_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createresourceshare"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified customer managed permission in the Amazon Web
%% Services Region in which you call this operation.
%%
%% You can delete a customer managed permission only if it isn't attached
%% to any resource share. The operation deletes all versions associated with
%% the customer managed permission.
delete_permission(Client, Input) ->
    delete_permission(Client, Input, []).
delete_permission(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deletepermission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"permissionArn">>, <<"permissionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes one version of a customer managed permission.
%%
%% The version you specify must not be attached to any resource share and
%% must not be the default version for the permission.
%%
%% If a customer managed permission has the maximum of 5 versions, then you
%% must delete at least one version before you can create another.
delete_permission_version(Client, Input) ->
    delete_permission_version(Client, Input, []).
delete_permission_version(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deletepermissionversion"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"permissionArn">>, <<"permissionArn">>},
                     {<<"permissionVersion">>, <<"permissionVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified resource share.
%%
%% This doesn't delete any of the resources that were associated with the
%% resource share; it only stops the sharing of those resources through this
%% resource share.
delete_resource_share(Client, Input) ->
    delete_resource_share(Client, Input, []).
delete_resource_share(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deleteresourceshare"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"resourceShareArn">>, <<"resourceShareArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified principals or resources from participating in
%% the specified resource share.
disassociate_resource_share(Client, Input) ->
    disassociate_resource_share(Client, Input, []).
disassociate_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateresourceshare"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a managed permission from a resource share.
%%
%% Permission changes take effect immediately. You can remove a managed
%% permission from a resource share only if there are currently no resources
%% of the relevant resource type currently attached to the resource share.
disassociate_resource_share_permission(Client, Input) ->
    disassociate_resource_share_permission(Client, Input, []).
disassociate_resource_share_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateresourcesharepermission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables resource sharing within your organization in Organizations.
%%
%% This operation creates a service-linked role called
%% `AWSServiceRoleForResourceAccessManager' that has the IAM managed
%% policy named AWSResourceAccessManagerServiceRolePolicy attached. This role
%% permits RAM to retrieve information about the organization and its
%% structure. This lets you share resources with all of the accounts in the
%% calling account's organization by specifying the organization ID, or
%% all of the accounts in an organizational unit (OU) by specifying the OU
%% ID. Until you enable sharing within the organization, you can specify only
%% individual Amazon Web Services accounts, or for supported resource types,
%% IAM roles and users.
%%
%% You must call this operation from an IAM role or user in the
%% organization's management account.
enable_sharing_with_aws_organization(Client, Input) ->
    enable_sharing_with_aws_organization(Client, Input, []).
enable_sharing_with_aws_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enablesharingwithawsorganization"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the contents of a managed permission in JSON format.
get_permission(Client, Input) ->
    get_permission(Client, Input, []).
get_permission(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getpermission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the resource policies for the specified resources that you
%% own and have shared.
get_resource_policies(Client, Input) ->
    get_resource_policies(Client, Input, []).
get_resource_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourcepolicies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the lists of resources and principals that associated for
%% resource shares that you own.
get_resource_share_associations(Client, Input) ->
    get_resource_share_associations(Client, Input, []).
get_resource_share_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourceshareassociations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about invitations that you have received for
%% resource shares.
get_resource_share_invitations(Client, Input) ->
    get_resource_share_invitations(Client, Input, []).
get_resource_share_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourceshareinvitations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about the resource shares that you own or that are
%% shared with you.
get_resource_shares(Client, Input) ->
    get_resource_shares(Client, Input, []).
get_resource_shares(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getresourceshares"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resources in a resource share that is shared with you but
%% for which the invitation is still `PENDING'.
%%
%% That means that you haven't accepted or rejected the invitation and
%% the invitation hasn't expired.
list_pending_invitation_resources(Client, Input) ->
    list_pending_invitation_resources(Client, Input, []).
list_pending_invitation_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpendinginvitationresources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists information about the managed permission and its associations
%% to any resource shares that use this managed permission.
%%
%% This lets you see which resource shares use which versions of the
%% specified managed permission.
list_permission_associations(Client, Input) ->
    list_permission_associations(Client, Input, []).
list_permission_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpermissionassociations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the available versions of the specified RAM permission.
list_permission_versions(Client, Input) ->
    list_permission_versions(Client, Input, []).
list_permission_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpermissionversions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a list of available RAM permissions that you can use for
%% the supported resource types.
list_permissions(Client, Input) ->
    list_permissions(Client, Input, []).
list_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listpermissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the principals that you are sharing resources with or that are
%% sharing resources with you.
list_principals(Client, Input) ->
    list_principals(Client, Input, []).
list_principals(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listprincipals"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the current status of the asynchronous tasks performed by
%% RAM when you perform the `ReplacePermissionAssociationsWork'
%% operation.
list_replace_permission_associations_work(Client, Input) ->
    list_replace_permission_associations_work(Client, Input, []).
list_replace_permission_associations_work(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listreplacepermissionassociationswork"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the RAM permissions that are associated with a resource share.
list_resource_share_permissions(Client, Input) ->
    list_resource_share_permissions(Client, Input, []).
list_resource_share_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listresourcesharepermissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resource types that can be shared by RAM.
list_resource_types(Client, Input) ->
    list_resource_types(Client, Input, []).
list_resource_types(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listresourcetypes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the resources that you added to a resource share or the
%% resources that are shared with you.
list_resources(Client, Input) ->
    list_resources(Client, Input, []).
list_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listresources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When you attach a resource-based policy to a resource, RAM
%% automatically creates a resource share of
%% `featureSet'=`CREATED_FROM_POLICY' with a managed permission that
%% has the same IAM permissions as the original resource-based policy.
%%
%% However, this type of managed permission is visible to only the resource
%% share owner, and the associated resource share can't be modified by
%% using RAM.
%%
%% This operation creates a separate, fully manageable customer managed
%% permission that has the same IAM permissions as the original
%% resource-based policy. You can associate this customer managed permission
%% to any resource shares.
%%
%% Before you use `PromoteResourceShareCreatedFromPolicy', you should
%% first run this operation to ensure that you have an appropriate customer
%% managed permission that can be associated with the promoted resource
%% share.
%%
%% The original `CREATED_FROM_POLICY' policy isn't deleted, and
%% resource shares using that original policy aren't automatically
%% updated.
%%
%% You can't modify a `CREATED_FROM_POLICY' resource share so you
%% can't associate the new customer managed permission by using
%% `ReplacePermsissionAssociations'. However, if you use
%% `PromoteResourceShareCreatedFromPolicy', that operation automatically
%% associates the fully manageable customer managed permission to the newly
%% promoted `STANDARD' resource share.
%%
%% After you promote a resource share, if the original
%% `CREATED_FROM_POLICY' managed permission has no other associations to
%% A resource share, then RAM automatically deletes it.
promote_permission_created_from_policy(Client, Input) ->
    promote_permission_created_from_policy(Client, Input, []).
promote_permission_created_from_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/promotepermissioncreatedfrompolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When you attach a resource-based policy to a resource, RAM
%% automatically creates a resource share of
%% `featureSet'=`CREATED_FROM_POLICY' with a managed permission that
%% has the same IAM permissions as the original resource-based policy.
%%
%% However, this type of managed permission is visible to only the resource
%% share owner, and the associated resource share can't be modified by
%% using RAM.
%%
%% This operation promotes the resource share to a `STANDARD' resource
%% share that is fully manageable in RAM. When you promote a resource share,
%% you can then manage the resource share in RAM and it becomes visible to
%% all of the principals you shared it with.
%%
%% Before you perform this operation, you should first run
%% `PromotePermissionCreatedFromPolicy'to ensure that you have an
%% appropriate customer managed permission that can be associated with this
%% resource share after its is promoted. If this operation can't find a
%% managed permission that exactly matches the existing
%% `CREATED_FROM_POLICY' permission, then this operation fails.
promote_resource_share_created_from_policy(Client, Input) ->
    promote_resource_share_created_from_policy(Client, Input, []).
promote_resource_share_created_from_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/promoteresourcesharecreatedfrompolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceShareArn">>, <<"resourceShareArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects an invitation to a resource share from another Amazon Web
%% Services account.
reject_resource_share_invitation(Client, Input) ->
    reject_resource_share_invitation(Client, Input, []).
reject_resource_share_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/rejectresourceshareinvitation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates all resource shares that use a managed permission to a
%% different managed permission.
%%
%% This operation always applies the default version of the target managed
%% permission. You can optionally specify that the update applies to only
%% resource shares that currently use a specified version. This enables you
%% to update to the latest version, without changing the which managed
%% permission is used.
%%
%% You can use this operation to update all of your resource shares to use
%% the current default version of the permission by specifying the same value
%% for the `fromPermissionArn' and `toPermissionArn' parameters.
%%
%% You can use the optional `fromPermissionVersion' parameter to update
%% only those resources that use a specified version of the managed
%% permission to the new managed permission.
%%
%% To successfully perform this operation, you must have permission to update
%% the resource-based policy on all affected resource types.
replace_permission_associations(Client, Input) ->
    replace_permission_associations(Client, Input, []).
replace_permission_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/replacepermissionassociations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Designates the specified version number as the default version for
%% the specified customer managed permission.
%%
%% New resource shares automatically use this new default permission.
%% Existing resource shares continue to use their original permission
%% version, but you can use `ReplacePermissionAssociations' to update
%% them.
set_default_permission_version(Client, Input) ->
    set_default_permission_version(Client, Input, []).
set_default_permission_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/setdefaultpermissionversion"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified tag keys and values to a resource share or managed
%% permission.
%%
%% If you choose a resource share, the tags are attached to only the resource
%% share, not to the resources that are in the resource share.
%%
%% The tags on a managed permission are the same for all versions of the
%% managed permission.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tagresource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tag key and value pairs from the specified
%% resource share or managed permission.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untagresource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies some of the properties of the specified resource share.
update_resource_share(Client, Input) ->
    update_resource_share(Client, Input, []).
update_resource_share(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateresourceshare"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

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
    Client1 = Client#{service => <<"ram">>},
    Host = build_host(<<"ram">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
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
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

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
