%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Security Hub provides you with a comprehensive view of the security
%% state of your AWS environment and resources.
%%
%% It also provides you with the readiness status of your environment based
%% on controls from supported security standards. Security Hub collects
%% security data from AWS accounts, services, and integrated third-party
%% products and helps you analyze security trends in your environment to
%% identify the highest priority security issues. For more information about
%% Security Hub, see the AWS Security Hub User Guide .
%%
%% When you use operations in the Security Hub API, the requests are executed
%% only in the AWS Region that is currently active or in the specific AWS
%% Region that you specify in your request. Any configuration or settings
%% change that results from the operation is applied only to that Region. To
%% make the same change in other Regions, execute the same command for each
%% Region to apply the change to.
%%
%% For example, if your Region is set to `us-west-2', when you use `
%% `CreateMembers' ' to add a member account to Security Hub, the association
%% of the member account with the master account is created only in the
%% `us-west-2' Region. Security Hub must be enabled for the member account in
%% the same Region that the invitation was sent from.
%%
%% The following throttling limits apply to using Security Hub API
%% operations.
%%
%% <ul> <li> ` `BatchEnableStandards' ' - `RateLimit' of 1 request per
%% second, `BurstLimit' of 1 request per second.
%%
%% </li> <li> ` `GetFindings' ' - `RateLimit' of 3 requests per second.
%% `BurstLimit' of 6 requests per second.
%%
%% </li> <li> ` `UpdateFindings' ' - `RateLimit' of 1 request per second.
%% `BurstLimit' of 5 requests per second.
%%
%% </li> <li> ` `UpdateStandardsControl' ' - `RateLimit' of 1 request per
%% second, `BurstLimit' of 5 requests per second.
%%
%% </li> <li> All other operations - `RateLimit' of 10 requests per second.
%% `BurstLimit' of 30 requests per second.
%%
%% </li> </ul>
-module(aws_securityhub).

-export([accept_invitation/2,
         accept_invitation/3,
         batch_disable_standards/2,
         batch_disable_standards/3,
         batch_enable_standards/2,
         batch_enable_standards/3,
         batch_import_findings/2,
         batch_import_findings/3,
         batch_update_findings/2,
         batch_update_findings/3,
         create_action_target/2,
         create_action_target/3,
         create_insight/2,
         create_insight/3,
         create_members/2,
         create_members/3,
         decline_invitations/2,
         decline_invitations/3,
         delete_action_target/3,
         delete_action_target/4,
         delete_insight/3,
         delete_insight/4,
         delete_invitations/2,
         delete_invitations/3,
         delete_members/2,
         delete_members/3,
         describe_action_targets/2,
         describe_action_targets/3,
         describe_hub/1,
         describe_hub/3,
         describe_hub/4,
         describe_organization_configuration/1,
         describe_organization_configuration/3,
         describe_organization_configuration/4,
         describe_products/1,
         describe_products/3,
         describe_products/4,
         describe_standards/1,
         describe_standards/3,
         describe_standards/4,
         describe_standards_controls/2,
         describe_standards_controls/4,
         describe_standards_controls/5,
         disable_import_findings_for_product/3,
         disable_import_findings_for_product/4,
         disable_organization_admin_account/2,
         disable_organization_admin_account/3,
         disable_security_hub/2,
         disable_security_hub/3,
         disassociate_from_master_account/2,
         disassociate_from_master_account/3,
         disassociate_members/2,
         disassociate_members/3,
         enable_import_findings_for_product/2,
         enable_import_findings_for_product/3,
         enable_organization_admin_account/2,
         enable_organization_admin_account/3,
         enable_security_hub/2,
         enable_security_hub/3,
         get_enabled_standards/2,
         get_enabled_standards/3,
         get_findings/2,
         get_findings/3,
         get_insight_results/2,
         get_insight_results/4,
         get_insight_results/5,
         get_insights/2,
         get_insights/3,
         get_invitations_count/1,
         get_invitations_count/3,
         get_invitations_count/4,
         get_master_account/1,
         get_master_account/3,
         get_master_account/4,
         get_members/2,
         get_members/3,
         invite_members/2,
         invite_members/3,
         list_enabled_products_for_import/1,
         list_enabled_products_for_import/3,
         list_enabled_products_for_import/4,
         list_invitations/1,
         list_invitations/3,
         list_invitations/4,
         list_members/1,
         list_members/3,
         list_members/4,
         list_organization_admin_accounts/1,
         list_organization_admin_accounts/3,
         list_organization_admin_accounts/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_action_target/3,
         update_action_target/4,
         update_findings/2,
         update_findings/3,
         update_insight/3,
         update_insight/4,
         update_organization_configuration/2,
         update_organization_configuration/3,
         update_security_hub_configuration/2,
         update_security_hub_configuration/3,
         update_standards_control/3,
         update_standards_control/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts the invitation to be a member account and be monitored by the
%% Security Hub master account that the invitation was sent from.
%%
%% This operation is only used by member accounts that are not added through
%% Organizations.
%%
%% When the member account accepts the invitation, permission is granted to
%% the master account to view findings generated in the member account.
accept_invitation(Client, Input) ->
    accept_invitation(Client, Input, []).
accept_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/master"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the standards specified by the provided
%% `StandardsSubscriptionArns'.
%%
%% For more information, see Security Standards section of the AWS Security
%% Hub User Guide.
batch_disable_standards(Client, Input) ->
    batch_disable_standards(Client, Input, []).
batch_disable_standards(Client, Input0, Options0) ->
    Method = post,
    Path = ["/standards/deregister"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the standards specified by the provided `StandardsArn'.
%%
%% To obtain the ARN for a standard, use the ` `DescribeStandards' '
%% operation.
%%
%% For more information, see the Security Standards section of the AWS
%% Security Hub User Guide.
batch_enable_standards(Client, Input) ->
    batch_enable_standards(Client, Input, []).
batch_enable_standards(Client, Input0, Options0) ->
    Method = post,
    Path = ["/standards/register"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Imports security findings generated from an integrated third-party
%% product into Security Hub.
%%
%% This action is requested by the integrated product to import its findings
%% into Security Hub.
%%
%% The maximum allowed size for a finding is 240 Kb. An error is returned for
%% any finding larger than 240 Kb.
%%
%% After a finding is created, `BatchImportFindings' cannot be used to update
%% the following finding fields and objects, which Security Hub customers use
%% to manage their investigation workflow.
%%
%% <ul> <li> `Note'
%%
%% </li> <li> `UserDefinedFields'
%%
%% </li> <li> `VerificationState'
%%
%% </li> <li> `Workflow'
%%
%% </li> </ul> `BatchImportFindings' can be used to update the following
%% finding fields and objects only if they have not been updated using
%% `BatchUpdateFindings'. After they are updated using `BatchUpdateFindings',
%% these fields cannot be updated using `BatchImportFindings'.
%%
%% <ul> <li> `Confidence'
%%
%% </li> <li> `Criticality'
%%
%% </li> <li> `RelatedFindings'
%%
%% </li> <li> `Severity'
%%
%% </li> <li> `Types'
%%
%% </li> </ul>
batch_import_findings(Client, Input) ->
    batch_import_findings(Client, Input, []).
batch_import_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/import"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used by Security Hub customers to update information about their
%% investigation into a finding.
%%
%% Requested by master accounts or member accounts. Master accounts can
%% update findings for their account and their member accounts. Member
%% accounts can update findings for their account.
%%
%% Updates from `BatchUpdateFindings' do not affect the value of `UpdatedAt'
%% for a finding.
%%
%% Master and member accounts can use `BatchUpdateFindings' to update the
%% following finding fields and objects.
%%
%% <ul> <li> `Confidence'
%%
%% </li> <li> `Criticality'
%%
%% </li> <li> `Note'
%%
%% </li> <li> `RelatedFindings'
%%
%% </li> <li> `Severity'
%%
%% </li> <li> `Types'
%%
%% </li> <li> `UserDefinedFields'
%%
%% </li> <li> `VerificationState'
%%
%% </li> <li> `Workflow'
%%
%% </li> </ul> You can configure IAM policies to restrict access to fields
%% and field values. For example, you might not want member accounts to be
%% able to suppress findings or change the finding severity. See Configuring
%% access to BatchUpdateFindings in the AWS Security Hub User Guide.
batch_update_findings(Client, Input) ->
    batch_update_findings(Client, Input, []).
batch_update_findings(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/findings/batchupdate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom action target in Security Hub.
%%
%% You can use custom actions on findings and insights in Security Hub to
%% trigger target actions in Amazon CloudWatch Events.
create_action_target(Client, Input) ->
    create_action_target(Client, Input, []).
create_action_target(Client, Input0, Options0) ->
    Method = post,
    Path = ["/actionTargets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom insight in Security Hub.
%%
%% An insight is a consolidation of findings that relate to a security issue
%% that requires attention or remediation.
%%
%% To group the related findings in the insight, use the `GroupByAttribute'.
create_insight(Client, Input) ->
    create_insight(Client, Input, []).
create_insight(Client, Input0, Options0) ->
    Method = post,
    Path = ["/insights"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a member association in Security Hub between the specified
%% accounts and the account used to make the request, which is the master
%% account.
%%
%% If you are integrated with Organizations, then the master account is the
%% Security Hub administrator account that is designated by the organization
%% management account.
%%
%% `CreateMembers' is always used to add accounts that are not organization
%% members.
%%
%% For accounts that are part of an organization, `CreateMembers' is only
%% used in the following cases:
%%
%% <ul> <li> Security Hub is not configured to automatically add new accounts
%% in an organization.
%%
%% </li> <li> The account was disassociated or deleted in Security Hub.
%%
%% </li> </ul> This action can only be used by an account that has Security
%% Hub enabled. To enable Security Hub, you can use the ` `EnableSecurityHub'
%% ' operation.
%%
%% For accounts that are not organization members, you create the account
%% association and then send an invitation to the member account. To send the
%% invitation, you use the ` `InviteMembers' ' operation. If the account
%% owner accepts the invitation, the account becomes a member account in
%% Security Hub.
%%
%% Accounts that are part of an organization do not receive an invitation.
%% They automatically become a member account in Security Hub.
%%
%% A permissions policy is added that permits the master account to view the
%% findings generated in the member account. When Security Hub is enabled in
%% a member account, findings are sent to both the member and master
%% accounts.
%%
%% To remove the association between the master and member accounts, use the
%% ` `DisassociateFromMasterAccount' ' or ` `DisassociateMembers' '
%% operation.
create_members(Client, Input) ->
    create_members(Client, Input, []).
create_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Declines invitations to become a member account.
%%
%% This operation is only used by accounts that are not part of an
%% organization. Organization accounts do not receive invitations.
decline_invitations(Client, Input) ->
    decline_invitations(Client, Input, []).
decline_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitations/decline"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a custom action target from Security Hub.
%%
%% Deleting a custom action target does not affect any findings or insights
%% that were already sent to Amazon CloudWatch Events using the custom
%% action.
delete_action_target(Client, ActionTargetArn, Input) ->
    delete_action_target(Client, ActionTargetArn, Input, []).
delete_action_target(Client, ActionTargetArn, Input0, Options0) ->
    Method = delete,
    Path = ["/actionTargets/", aws_util:encode_multi_segment_uri(ActionTargetArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the insight specified by the `InsightArn'.
delete_insight(Client, InsightArn, Input) ->
    delete_insight(Client, InsightArn, Input, []).
delete_insight(Client, InsightArn, Input0, Options0) ->
    Method = delete,
    Path = ["/insights/", aws_util:encode_multi_segment_uri(InsightArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes invitations received by the AWS account to become a member
%% account.
%%
%% This operation is only used by accounts that are not part of an
%% organization. Organization accounts do not receive invitations.
delete_invitations(Client, Input) ->
    delete_invitations(Client, Input, []).
delete_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitations/delete"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified member accounts from Security Hub.
%%
%% Can be used to delete member accounts that belong to an organization as
%% well as member accounts that were invited manually.
delete_members(Client, Input) ->
    delete_members(Client, Input, []).
delete_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/delete"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of the custom action targets in Security Hub in your
%% account.
describe_action_targets(Client, Input) ->
    describe_action_targets(Client, Input, []).
describe_action_targets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/actionTargets/get"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns details about the Hub resource in your account, including the
%% `HubArn' and the time when you enabled Security Hub.
describe_hub(Client)
  when is_map(Client) ->
    describe_hub(Client, #{}, #{}).

describe_hub(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_hub(Client, QueryMap, HeadersMap, []).

describe_hub(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"HubArn">>, maps:get(<<"HubArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the Organizations configuration for
%% Security Hub.
%%
%% Can only be called from a Security Hub administrator account.
describe_organization_configuration(Client)
  when is_map(Client) ->
    describe_organization_configuration(Client, #{}, #{}).

describe_organization_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_organization_configuration(Client, QueryMap, HeadersMap, []).

describe_organization_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/organization/configuration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about product integrations in Security Hub.
%%
%% You can optionally provide an integration ARN. If you provide an
%% integration ARN, then the results only include that integration.
%%
%% If you do not provide an integration ARN, then the results include all of
%% the available product integrations.
describe_products(Client)
  when is_map(Client) ->
    describe_products(Client, #{}, #{}).

describe_products(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_products(Client, QueryMap, HeadersMap, []).

describe_products(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/products"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"ProductArn">>, maps:get(<<"ProductArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the available standards in Security Hub.
%%
%% For each standard, the results include the standard ARN, the name, and a
%% description.
describe_standards(Client)
  when is_map(Client) ->
    describe_standards(Client, #{}, #{}).

describe_standards(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_standards(Client, QueryMap, HeadersMap, []).

describe_standards(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/standards"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of security standards controls.
%%
%% For each control, the results include information about whether it is
%% currently enabled, the severity, and a link to remediation information.
describe_standards_controls(Client, StandardsSubscriptionArn)
  when is_map(Client) ->
    describe_standards_controls(Client, StandardsSubscriptionArn, #{}, #{}).

describe_standards_controls(Client, StandardsSubscriptionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_standards_controls(Client, StandardsSubscriptionArn, QueryMap, HeadersMap, []).

describe_standards_controls(Client, StandardsSubscriptionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/standards/controls/", aws_util:encode_multi_segment_uri(StandardsSubscriptionArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disables the integration of the specified product with Security Hub.
%%
%% After the integration is disabled, findings from that product are no
%% longer sent to Security Hub.
disable_import_findings_for_product(Client, ProductSubscriptionArn, Input) ->
    disable_import_findings_for_product(Client, ProductSubscriptionArn, Input, []).
disable_import_findings_for_product(Client, ProductSubscriptionArn, Input0, Options0) ->
    Method = delete,
    Path = ["/productSubscriptions/", aws_util:encode_multi_segment_uri(ProductSubscriptionArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables a Security Hub administrator account.
%%
%% Can only be called by the organization management account.
disable_organization_admin_account(Client, Input) ->
    disable_organization_admin_account(Client, Input, []).
disable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/admin/disable"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables Security Hub in your account only in the current Region.
%%
%% To disable Security Hub in all Regions, you must submit one request per
%% Region where you have enabled Security Hub.
%%
%% When you disable Security Hub for a master account, it doesn't disable
%% Security Hub for any associated member accounts.
%%
%% When you disable Security Hub, your existing findings and insights and any
%% Security Hub configuration settings are deleted after 90 days and cannot
%% be recovered. Any standards that were enabled are disabled, and your
%% master and member account associations are removed.
%%
%% If you want to save your existing findings, you must export them before
%% you disable Security Hub.
disable_security_hub(Client, Input) ->
    disable_security_hub(Client, Input, []).
disable_security_hub(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the current Security Hub member account from the
%% associated master account.
%%
%% This operation is only used by accounts that are not part of an
%% organization. For organization accounts, only the master account (the
%% designated Security Hub administrator) can disassociate a member account.
disassociate_from_master_account(Client, Input) ->
    disassociate_from_master_account(Client, Input, []).
disassociate_from_master_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/master/disassociate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the specified member accounts from the associated
%% master account.
%%
%% Can be used to disassociate both accounts that are in an organization and
%% accounts that were invited manually.
disassociate_members(Client, Input) ->
    disassociate_members(Client, Input, []).
disassociate_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/disassociate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the integration of a partner product with Security Hub.
%%
%% Integrated products send findings to Security Hub.
%%
%% When you enable a product integration, a permissions policy that grants
%% permission for the product to send findings to Security Hub is applied.
enable_import_findings_for_product(Client, Input) ->
    enable_import_findings_for_product(Client, Input, []).
enable_import_findings_for_product(Client, Input0, Options0) ->
    Method = post,
    Path = ["/productSubscriptions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Designates the Security Hub administrator account for an
%% organization.
%%
%% Can only be called by the organization management account.
enable_organization_admin_account(Client, Input) ->
    enable_organization_admin_account(Client, Input, []).
enable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/admin/enable"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables Security Hub for your account in the current Region or the
%% Region you specify in the request.
%%
%% When you enable Security Hub, you grant to Security Hub the permissions
%% necessary to gather findings from other services that are integrated with
%% Security Hub.
%%
%% When you use the `EnableSecurityHub' operation to enable Security Hub, you
%% also automatically enable the following standards.
%%
%% <ul> <li> CIS AWS Foundations
%%
%% </li> <li> AWS Foundational Security Best Practices
%%
%% </li> </ul> You do not enable the Payment Card Industry Data Security
%% Standard (PCI DSS) standard.
%%
%% To not enable the automatically enabled standards, set
%% `EnableDefaultStandards' to `false'.
%%
%% After you enable Security Hub, to enable a standard, use the `
%% `BatchEnableStandards' ' operation. To disable a standard, use the `
%% `BatchDisableStandards' ' operation.
%%
%% To learn more, see Setting Up AWS Security Hub in the AWS Security Hub
%% User Guide.
enable_security_hub(Client, Input) ->
    enable_security_hub(Client, Input, []).
enable_security_hub(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accounts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of the standards that are currently enabled.
get_enabled_standards(Client, Input) ->
    get_enabled_standards(Client, Input, []).
get_enabled_standards(Client, Input0, Options0) ->
    Method = post,
    Path = ["/standards/get"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of findings that match the specified criteria.
get_findings(Client, Input) ->
    get_findings(Client, Input, []).
get_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the results of the Security Hub insight specified by the
%% insight ARN.
get_insight_results(Client, InsightArn)
  when is_map(Client) ->
    get_insight_results(Client, InsightArn, #{}, #{}).

get_insight_results(Client, InsightArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_insight_results(Client, InsightArn, QueryMap, HeadersMap, []).

get_insight_results(Client, InsightArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/insights/results/", aws_util:encode_multi_segment_uri(InsightArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists and describes insights for the specified insight ARNs.
get_insights(Client, Input) ->
    get_insights(Client, Input, []).
get_insights(Client, Input0, Options0) ->
    Method = post,
    Path = ["/insights/get"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the count of all Security Hub membership invitations that
%% were sent to the current member account, not including the currently
%% accepted invitation.
get_invitations_count(Client)
  when is_map(Client) ->
    get_invitations_count(Client, #{}, #{}).

get_invitations_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_invitations_count(Client, QueryMap, HeadersMap, []).

get_invitations_count(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/invitations/count"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides the details for the Security Hub master account for the
%% current member account.
%%
%% Can be used by both member accounts that are in an organization and
%% accounts that were invited manually.
get_master_account(Client)
  when is_map(Client) ->
    get_master_account(Client, #{}, #{}).

get_master_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_master_account(Client, QueryMap, HeadersMap, []).

get_master_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/master"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details for the Security Hub member accounts for the
%% specified account IDs.
%%
%% A master account can be either a delegated Security Hub administrator
%% account for an organization or a master account that enabled Security Hub
%% manually.
%%
%% The results include both member accounts that are in an organization and
%% accounts that were invited manually.
get_members(Client, Input) ->
    get_members(Client, Input, []).
get_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/get"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Invites other AWS accounts to become member accounts for the Security
%% Hub master account that the invitation is sent from.
%%
%% This operation is only used to invite accounts that do not belong to an
%% organization. Organization accounts do not receive invitations.
%%
%% Before you can use this action to invite a member, you must first use the
%% ` `CreateMembers' ' action to create the member account in Security Hub.
%%
%% When the account owner enables Security Hub and accepts the invitation to
%% become a member account, the master account can view the findings
%% generated from the member account.
invite_members(Client, Input) ->
    invite_members(Client, Input, []).
invite_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/invite"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all findings-generating solutions (products) that you are
%% subscribed to receive findings from in Security Hub.
list_enabled_products_for_import(Client)
  when is_map(Client) ->
    list_enabled_products_for_import(Client, #{}, #{}).

list_enabled_products_for_import(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_enabled_products_for_import(Client, QueryMap, HeadersMap, []).

list_enabled_products_for_import(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/productSubscriptions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all Security Hub membership invitations that were sent to the
%% current AWS account.
%%
%% This operation is only used by accounts that do not belong to an
%% organization. Organization accounts do not receive invitations.
list_invitations(Client)
  when is_map(Client) ->
    list_invitations(Client, #{}, #{}).

list_invitations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_invitations(Client, QueryMap, HeadersMap, []).

list_invitations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/invitations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists details about all member accounts for the current Security Hub
%% master account.
%%
%% The results include both member accounts that belong to an organization
%% and member accounts that were invited manually.
list_members(Client)
  when is_map(Client) ->
    list_members(Client, #{}, #{}).

list_members(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_members(Client, QueryMap, HeadersMap, []).

list_members(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/members"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"OnlyAssociated">>, maps:get(<<"OnlyAssociated">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Security Hub administrator accounts.
%%
%% Can only be called by the organization management account.
list_organization_admin_accounts(Client)
  when is_map(Client) ->
    list_organization_admin_accounts(Client, #{}, #{}).

list_organization_admin_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_organization_admin_accounts(Client, QueryMap, HeadersMap, []).

list_organization_admin_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/organization/admin"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags associated with a resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds one or more tags to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Updates the name and description of a custom action target in
%% Security Hub.
update_action_target(Client, ActionTargetArn, Input) ->
    update_action_target(Client, ActionTargetArn, Input, []).
update_action_target(Client, ActionTargetArn, Input0, Options0) ->
    Method = patch,
    Path = ["/actionTargets/", aws_util:encode_multi_segment_uri(ActionTargetArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc `UpdateFindings' is deprecated.
%%
%% Instead of `UpdateFindings', use `BatchUpdateFindings'.
%%
%% Updates the `Note' and `RecordState' of the Security Hub-aggregated
%% findings that the filter attributes specify. Any member account that can
%% view the finding also sees the update to the finding.
update_findings(Client, Input) ->
    update_findings(Client, Input, []).
update_findings(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/findings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Security Hub insight identified by the specified insight
%% ARN.
update_insight(Client, InsightArn, Input) ->
    update_insight(Client, InsightArn, Input, []).
update_insight(Client, InsightArn, Input0, Options0) ->
    Method = patch,
    Path = ["/insights/", aws_util:encode_multi_segment_uri(InsightArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used to update the configuration related to Organizations.
%%
%% Can only be called from a Security Hub administrator account.
update_organization_configuration(Client, Input) ->
    update_organization_configuration(Client, Input, []).
update_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/configuration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates configuration options for Security Hub.
update_security_hub_configuration(Client, Input) ->
    update_security_hub_configuration(Client, Input, []).
update_security_hub_configuration(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/accounts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used to control whether an individual security standard control is
%% enabled or disabled.
update_standards_control(Client, StandardsControlArn, Input) ->
    update_standards_control(Client, StandardsControlArn, Input, []).
update_standards_control(Client, StandardsControlArn, Input0, Options0) ->
    Method = patch,
    Path = ["/standards/control/", aws_util:encode_multi_segment_uri(StandardsControlArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"securityhub">>},
    Host = build_host(<<"securityhub">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
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
