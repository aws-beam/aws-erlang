%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Detective uses machine learning and purpose-built visualizations to
%% help you to analyze and investigate security issues across your Amazon Web
%% Services (Amazon Web Services) workloads.
%%
%% Detective automatically extracts time-based events such as login attempts,
%% API calls, and network traffic from CloudTrail and Amazon Virtual Private
%% Cloud (Amazon VPC) flow logs. It also extracts findings detected by Amazon
%% GuardDuty.
%%
%% The Detective API primarily supports the creation and management of
%% behavior graphs. A behavior graph contains the extracted data from a set
%% of member accounts, and is created and managed by an administrator
%% account.
%%
%% To add a member account to the behavior graph, the administrator account
%% sends an invitation to the account. When the account accepts the
%% invitation, it becomes a member account in the behavior graph.
%%
%% Detective is also integrated with Organizations. The organization
%% management account designates the Detective administrator account for the
%% organization. That account becomes the administrator account for the
%% organization behavior graph. The Detective administrator account is also
%% the delegated administrator account for Detective in Organizations.
%%
%% The Detective administrator account can enable any organization account as
%% a member account in the organization behavior graph. The organization
%% accounts do not receive invitations. The Detective administrator account
%% can also invite other accounts to the organization behavior graph.
%%
%% Every behavior graph is specific to a Region. You can only use the API to
%% manage behavior graphs that belong to the Region that is associated with
%% the currently selected endpoint.
%%
%% The administrator account for a behavior graph can use the Detective API
%% to do the following:
%%
%% <ul> <li> Enable and disable Detective. Enabling Detective creates a new
%% behavior graph.
%%
%% </li> <li> View the list of member accounts in a behavior graph.
%%
%% </li> <li> Add member accounts to a behavior graph.
%%
%% </li> <li> Remove member accounts from a behavior graph.
%%
%% </li> <li> Apply tags to a behavior graph.
%%
%% </li> </ul> The organization management account can use the Detective API
%% to select the delegated administrator for Detective.
%%
%% The Detective administrator account for an organization can use the
%% Detective API to do the following:
%%
%% <ul> <li> Perform all of the functions of an administrator account.
%%
%% </li> <li> Determine whether to automatically enable new organization
%% accounts as member accounts in the organization behavior graph.
%%
%% </li> </ul> An invited member account can use the Detective API to do the
%% following:
%%
%% <ul> <li> View the list of behavior graphs that they are invited to.
%%
%% </li> <li> Accept an invitation to contribute to a behavior graph.
%%
%% </li> <li> Decline an invitation to contribute to a behavior graph.
%%
%% </li> <li> Remove their account from a behavior graph.
%%
%% </li> </ul> All API actions are logged as CloudTrail events. See Logging
%% Detective API Calls with CloudTrail.
%%
%% We replaced the term "master account" with the term "administrator
%% account." An administrator account is used to centrally manage multiple
%% accounts. In the case of Detective, the administrator account manages the
%% accounts in their behavior graph.
-module(aws_detective).

-export([accept_invitation/2,
         accept_invitation/3,
         batch_get_graph_member_datasources/2,
         batch_get_graph_member_datasources/3,
         batch_get_membership_datasources/2,
         batch_get_membership_datasources/3,
         create_graph/2,
         create_graph/3,
         create_members/2,
         create_members/3,
         delete_graph/2,
         delete_graph/3,
         delete_members/2,
         delete_members/3,
         describe_organization_configuration/2,
         describe_organization_configuration/3,
         disable_organization_admin_account/2,
         disable_organization_admin_account/3,
         disassociate_membership/2,
         disassociate_membership/3,
         enable_organization_admin_account/2,
         enable_organization_admin_account/3,
         get_members/2,
         get_members/3,
         list_datasource_packages/2,
         list_datasource_packages/3,
         list_graphs/2,
         list_graphs/3,
         list_invitations/2,
         list_invitations/3,
         list_members/2,
         list_members/3,
         list_organization_admin_accounts/2,
         list_organization_admin_accounts/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         reject_invitation/2,
         reject_invitation/3,
         start_monitoring_member/2,
         start_monitoring_member/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_datasource_packages/2,
         update_datasource_packages/3,
         update_organization_configuration/2,
         update_organization_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts an invitation for the member account to contribute data to a
%% behavior graph.
%%
%% This operation can only be called by an invited member account.
%%
%% The request provides the ARN of behavior graph.
%%
%% The member account status in the graph must be `INVITED'.
accept_invitation(Client, Input) ->
    accept_invitation(Client, Input, []).
accept_invitation(Client, Input0, Options0) ->
    Method = put,
    Path = ["/invitation"],
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

%% @doc Gets data source package information for the behavior graph.
batch_get_graph_member_datasources(Client, Input) ->
    batch_get_graph_member_datasources(Client, Input, []).
batch_get_graph_member_datasources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/datasources/get"],
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

%% @doc Gets information on the data source package history for an account.
batch_get_membership_datasources(Client, Input) ->
    batch_get_membership_datasources(Client, Input, []).
batch_get_membership_datasources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/membership/datasources/get"],
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

%% @doc Creates a new behavior graph for the calling account, and sets that
%% account as the administrator account.
%%
%% This operation is called by the account that is enabling Detective.
%%
%% Before you try to enable Detective, make sure that your account has been
%% enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet
%% this requirement, you cannot enable Detective. If you do meet the
%% GuardDuty prerequisite, then when you make the request to enable
%% Detective, it checks whether your data volume is within the Detective
%% quota. If it exceeds the quota, then you cannot enable Detective.
%%
%% The operation also enables Detective for the calling account in the
%% currently selected Region. It returns the ARN of the new behavior graph.
%%
%% `CreateGraph' triggers a process to create the corresponding data tables
%% for the new behavior graph.
%%
%% An account can only be the administrator account for one behavior graph
%% within a Region. If the same account calls `CreateGraph' with the same
%% administrator account, it always returns the same behavior graph ARN. It
%% does not create a new behavior graph.
create_graph(Client, Input) ->
    create_graph(Client, Input, []).
create_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph"],
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

%% @doc `CreateMembers' is used to send invitations to accounts.
%%
%% For the organization behavior graph, the Detective administrator account
%% uses `CreateMembers' to enable organization accounts as member accounts.
%%
%% For invited accounts, `CreateMembers' sends a request to invite the
%% specified Amazon Web Services accounts to be member accounts in the
%% behavior graph. This operation can only be called by the administrator
%% account for a behavior graph.
%%
%% `CreateMembers' verifies the accounts and then invites the verified
%% accounts. The administrator can optionally specify to not send invitation
%% emails to the member accounts. This would be used when the administrator
%% manages their member accounts centrally.
%%
%% For organization accounts in the organization behavior graph,
%% `CreateMembers' attempts to enable the accounts. The organization accounts
%% do not receive invitations.
%%
%% The request provides the behavior graph ARN and the list of accounts to
%% invite or to enable.
%%
%% The response separates the requested accounts into two lists:
%%
%% <ul> <li> The accounts that `CreateMembers' was able to process. For
%% invited accounts, includes member accounts that are being verified, that
%% have passed verification and are to be invited, and that have failed
%% verification. For organization accounts in the organization behavior
%% graph, includes accounts that can be enabled and that cannot be enabled.
%%
%% </li> <li> The accounts that `CreateMembers' was unable to process. This
%% list includes accounts that were already invited to be member accounts in
%% the behavior graph.
%%
%% </li> </ul>
create_members(Client, Input) ->
    create_members(Client, Input, []).
create_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/members"],
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

%% @doc Disables the specified behavior graph and queues it to be deleted.
%%
%% This operation removes the behavior graph from each member account's list
%% of behavior graphs.
%%
%% `DeleteGraph' can only be called by the administrator account for a
%% behavior graph.
delete_graph(Client, Input) ->
    delete_graph(Client, Input, []).
delete_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/removal"],
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

%% @doc Removes the specified member accounts from the behavior graph.
%%
%% The removed accounts no longer contribute data to the behavior graph. This
%% operation can only be called by the administrator account for the behavior
%% graph.
%%
%% For invited accounts, the removed accounts are deleted from the list of
%% accounts in the behavior graph. To restore the account, the administrator
%% account must send another invitation.
%%
%% For organization accounts in the organization behavior graph, the
%% Detective administrator account can always enable the organization account
%% again. Organization accounts that are not enabled as member accounts are
%% not included in the `ListMembers' results for the organization behavior
%% graph.
%%
%% An administrator account cannot use `DeleteMembers' to remove their own
%% account from the behavior graph. To disable a behavior graph, the
%% administrator account uses the `DeleteGraph' API method.
delete_members(Client, Input) ->
    delete_members(Client, Input, []).
delete_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/members/removal"],
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

%% @doc Returns information about the configuration for the organization
%% behavior graph.
%%
%% Currently indicates whether to automatically enable new organization
%% accounts as member accounts.
%%
%% Can only be called by the Detective administrator account for the
%% organization.
describe_organization_configuration(Client, Input) ->
    describe_organization_configuration(Client, Input, []).
describe_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orgs/describeOrganizationConfiguration"],
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

%% @doc Removes the Detective administrator account in the current Region.
%%
%% Deletes the organization behavior graph.
%%
%% Can only be called by the organization management account.
%%
%% Removing the Detective administrator account does not affect the delegated
%% administrator account for Detective in Organizations.
%%
%% To remove the delegated administrator account in Organizations, use the
%% Organizations API. Removing the delegated administrator account also
%% removes the Detective administrator account in all Regions, except for
%% Regions where the Detective administrator account is the organization
%% management account.
disable_organization_admin_account(Client, Input) ->
    disable_organization_admin_account(Client, Input, []).
disable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orgs/disableAdminAccount"],
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

%% @doc Removes the member account from the specified behavior graph.
%%
%% This operation can only be called by an invited member account that has
%% the `ENABLED' status.
%%
%% `DisassociateMembership' cannot be called by an organization account in
%% the organization behavior graph. For the organization behavior graph, the
%% Detective administrator account determines which organization accounts to
%% enable or disable as member accounts.
disassociate_membership(Client, Input) ->
    disassociate_membership(Client, Input, []).
disassociate_membership(Client, Input0, Options0) ->
    Method = post,
    Path = ["/membership/removal"],
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

%% @doc Designates the Detective administrator account for the organization
%% in the current Region.
%%
%% If the account does not have Detective enabled, then enables Detective for
%% that account and creates a new behavior graph.
%%
%% Can only be called by the organization management account.
%%
%% If the organization has a delegated administrator account in
%% Organizations, then the Detective administrator account must be either the
%% delegated administrator account or the organization management account.
%%
%% If the organization does not have a delegated administrator account in
%% Organizations, then you can choose any account in the organization. If you
%% choose an account other than the organization management account,
%% Detective calls Organizations to make that account the delegated
%% administrator account for Detective. The organization management account
%% cannot be the delegated administrator account.
enable_organization_admin_account(Client, Input) ->
    enable_organization_admin_account(Client, Input, []).
enable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orgs/enableAdminAccount"],
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

%% @doc Returns the membership details for specified member accounts for a
%% behavior graph.
get_members(Client, Input) ->
    get_members(Client, Input, []).
get_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/members/get"],
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

%% @doc Lists data source packages in the behavior graph.
list_datasource_packages(Client, Input) ->
    list_datasource_packages(Client, Input, []).
list_datasource_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/datasources/list"],
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

%% @doc Returns the list of behavior graphs that the calling account is an
%% administrator account of.
%%
%% This operation can only be called by an administrator account.
%%
%% Because an account can currently only be the administrator of one behavior
%% graph within a Region, the results always contain a single behavior graph.
list_graphs(Client, Input) ->
    list_graphs(Client, Input, []).
list_graphs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graphs/list"],
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

%% @doc Retrieves the list of open and accepted behavior graph invitations
%% for the member account.
%%
%% This operation can only be called by an invited member account.
%%
%% Open invitations are invitations that the member account has not responded
%% to.
%%
%% The results do not include behavior graphs for which the member account
%% declined the invitation. The results also do not include behavior graphs
%% that the member account resigned from or was removed from.
list_invitations(Client, Input) ->
    list_invitations(Client, Input, []).
list_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitations/list"],
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

%% @doc Retrieves the list of member accounts for a behavior graph.
%%
%% For invited accounts, the results do not include member accounts that were
%% removed from the behavior graph.
%%
%% For the organization behavior graph, the results do not include
%% organization accounts that the Detective administrator account has not
%% enabled as member accounts.
list_members(Client, Input) ->
    list_members(Client, Input, []).
list_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/members/list"],
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

%% @doc Returns information about the Detective administrator account for an
%% organization.
%%
%% Can only be called by the organization management account.
list_organization_admin_accounts(Client, Input) ->
    list_organization_admin_accounts(Client, Input, []).
list_organization_admin_accounts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orgs/adminAccountslist"],
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

%% @doc Returns the tag values that are assigned to a behavior graph.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Rejects an invitation to contribute the account data to a behavior
%% graph.
%%
%% This operation must be called by an invited member account that has the
%% `INVITED' status.
%%
%% `RejectInvitation' cannot be called by an organization account in the
%% organization behavior graph. In the organization behavior graph,
%% organization accounts do not receive an invitation.
reject_invitation(Client, Input) ->
    reject_invitation(Client, Input, []).
reject_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitation/removal"],
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

%% @doc Sends a request to enable data ingest for a member account that has a
%% status of `ACCEPTED_BUT_DISABLED'.
%%
%% For valid member accounts, the status is updated as follows.
%%
%% <ul> <li> If Detective enabled the member account, then the new status is
%% `ENABLED'.
%%
%% </li> <li> If Detective cannot enable the member account, the status
%% remains `ACCEPTED_BUT_DISABLED'.
%%
%% </li> </ul>
start_monitoring_member(Client, Input) ->
    start_monitoring_member(Client, Input, []).
start_monitoring_member(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/member/monitoringstate"],
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

%% @doc Applies tag values to a behavior graph.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Removes tags from a behavior graph.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a data source packages for the behavior graph.
update_datasource_packages(Client, Input) ->
    update_datasource_packages(Client, Input, []).
update_datasource_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/datasources/update"],
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

%% @doc Updates the configuration for the Organizations integration in the
%% current Region.
%%
%% Can only be called by the Detective administrator account for the
%% organization.
update_organization_configuration(Client, Input) ->
    update_organization_configuration(Client, Input, []).
update_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orgs/updateOrganizationConfiguration"],
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
    Client1 = Client#{service => <<"detective">>},
    Host = build_host(<<"api.detective">>, Client1),
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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
