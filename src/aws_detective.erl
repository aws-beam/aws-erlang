%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Detective uses machine learning and purpose-built visualizations to
%% help you to
%% analyze and investigate security issues across your Amazon Web Services
%% (Amazon Web Services) workloads.
%%
%% Detective automatically extracts time-based events such
%% as login attempts, API calls, and network traffic from CloudTrail and
%% Amazon Virtual Private Cloud (Amazon VPC) flow logs. It also extracts
%% findings detected by
%% Amazon GuardDuty.
%%
%% The Detective API primarily supports the creation and management of
%% behavior
%% graphs. A behavior graph contains the extracted data from a set of member
%% accounts, and is
%% created and managed by an administrator account.
%%
%% To add a member account to the behavior graph, the administrator account
%% sends an
%% invitation to the account. When the account accepts the invitation, it
%% becomes a member
%% account in the behavior graph.
%%
%% Detective is also integrated with Organizations. The organization
%% management account designates the Detective administrator account for the
%% organization. That account becomes the administrator account for the
%% organization behavior
%% graph. The Detective administrator account is also the delegated
%% administrator
%% account for Detective in Organizations.
%%
%% The Detective administrator account can enable any organization account as
%% a
%% member account in the organization behavior graph. The organization
%% accounts do not receive
%% invitations. The Detective administrator account can also invite other
%% accounts to
%% the organization behavior graph.
%%
%% Every behavior graph is specific to a Region. You can only use the API to
%% manage
%% behavior graphs that belong to the Region that is associated with the
%% currently selected
%% endpoint.
%%
%% The administrator account for a behavior graph can use the Detective API
%% to do
%% the following:
%%
%% Enable and disable Detective. Enabling Detective creates a new
%% behavior graph.
%%
%% View the list of member accounts in a behavior graph.
%%
%% Add member accounts to a behavior graph.
%%
%% Remove member accounts from a behavior graph.
%%
%% Apply tags to a behavior graph.
%%
%% The organization management account can use the Detective API to select
%% the
%% delegated administrator for Detective.
%%
%% The Detective administrator account for an organization can use the
%% Detective API to do the following:
%%
%% Perform all of the functions of an administrator account.
%%
%% Determine whether to automatically enable new organization accounts as
%% member
%% accounts in the organization behavior graph.
%%
%% An invited member account can use the Detective API to do the following:
%%
%% View the list of behavior graphs that they are invited to.
%%
%% Accept an invitation to contribute to a behavior graph.
%%
%% Decline an invitation to contribute to a behavior graph.
%%
%% Remove their account from a behavior graph.
%%
%% All API actions are logged as CloudTrail events. See Logging Detective API
%% Calls with CloudTrail:
%% https://docs.aws.amazon.com/detective/latest/userguide/logging-using-cloudtrail.html.
%%
%% We replaced the term &quot;master account&quot; with the term
%% &quot;administrator account&quot;. An
%% administrator account is used to centrally manage multiple accounts. In
%% the case of
%% Detective, the administrator account manages the accounts in their
%% behavior
%% graph.
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
         get_investigation/2,
         get_investigation/3,
         get_members/2,
         get_members/3,
         list_datasource_packages/2,
         list_datasource_packages/3,
         list_graphs/2,
         list_graphs/3,
         list_indicators/2,
         list_indicators/3,
         list_investigations/2,
         list_investigations/3,
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
         start_investigation/2,
         start_investigation/3,
         start_monitoring_member/2,
         start_monitoring_member/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_datasource_packages/2,
         update_datasource_packages/3,
         update_investigation_state/2,
         update_investigation_state/3,
         update_organization_configuration/2,
         update_organization_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% administrator() :: #{
%%   <<"AccountId">> => string(),
%%   <<"DelegationTime">> => non_neg_integer(),
%%   <<"GraphArn">> => string()
%% }
-type administrator() :: #{binary() => any()}.


%% Example:
%% describe_organization_configuration_request() :: #{
%%   <<"GraphArn">> := string()
%% }
-type describe_organization_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_members_response() :: #{
%%   <<"MemberDetails">> => list(member_detail()()),
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type get_members_response() :: #{binary() => any()}.


%% Example:
%% new_aso_detail() :: #{
%%   <<"Aso">> => string(),
%%   <<"IsNewForEntireAccount">> => boolean()
%% }
-type new_aso_detail() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% filter_criteria() :: #{
%%   <<"CreatedTime">> => date_filter(),
%%   <<"EntityArn">> => string_filter(),
%%   <<"Severity">> => string_filter(),
%%   <<"State">> => string_filter(),
%%   <<"Status">> => string_filter()
%% }
-type filter_criteria() :: #{binary() => any()}.


%% Example:
%% list_datasource_packages_request() :: #{
%%   <<"GraphArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_datasource_packages_request() :: #{binary() => any()}.


%% Example:
%% create_graph_request() :: #{
%%   <<"Tags">> => map()
%% }
-type create_graph_request() :: #{binary() => any()}.


%% Example:
%% new_user_agent_detail() :: #{
%%   <<"IsNewForEntireAccount">> => boolean(),
%%   <<"UserAgent">> => string()
%% }
-type new_user_agent_detail() :: #{binary() => any()}.


%% Example:
%% update_datasource_packages_request() :: #{
%%   <<"DatasourcePackages">> := list(list(any())()),
%%   <<"GraphArn">> := string()
%% }
-type update_datasource_packages_request() :: #{binary() => any()}.


%% Example:
%% start_investigation_request() :: #{
%%   <<"EntityArn">> := string(),
%%   <<"GraphArn">> := string(),
%%   <<"ScopeEndTime">> := non_neg_integer(),
%%   <<"ScopeStartTime">> := non_neg_integer()
%% }
-type start_investigation_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% start_investigation_response() :: #{
%%   <<"InvestigationId">> => string()
%% }
-type start_investigation_response() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% list_graphs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_graphs_request() :: #{binary() => any()}.


%% Example:
%% delete_members_response() :: #{
%%   <<"AccountIds">> => list(string()()),
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type delete_members_response() :: #{binary() => any()}.


%% Example:
%% list_investigations_response() :: #{
%%   <<"InvestigationDetails">> => list(investigation_detail()()),
%%   <<"NextToken">> => string()
%% }
-type list_investigations_response() :: #{binary() => any()}.


%% Example:
%% related_finding_group_detail() :: #{
%%   <<"Id">> => string()
%% }
-type related_finding_group_detail() :: #{binary() => any()}.


%% Example:
%% describe_organization_configuration_response() :: #{
%%   <<"AutoEnable">> => boolean()
%% }
-type describe_organization_configuration_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_investigations_request() :: #{
%%   <<"FilterCriteria">> => filter_criteria(),
%%   <<"GraphArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => sort_criteria()
%% }
-type list_investigations_request() :: #{binary() => any()}.


%% Example:
%% get_members_request() :: #{
%%   <<"AccountIds">> := list(string()()),
%%   <<"GraphArn">> := string()
%% }
-type get_members_request() :: #{binary() => any()}.


%% Example:
%% create_members_request() :: #{
%%   <<"Accounts">> := list(account()()),
%%   <<"DisableEmailNotification">> => boolean(),
%%   <<"GraphArn">> := string(),
%%   <<"Message">> => string()
%% }
-type create_members_request() :: #{binary() => any()}.


%% Example:
%% graph() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer()
%% }
-type graph() :: #{binary() => any()}.


%% Example:
%% batch_get_graph_member_datasources_response() :: #{
%%   <<"MemberDatasources">> => list(membership_datasources()()),
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type batch_get_graph_member_datasources_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Resources">> => list(string()())
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% delete_members_request() :: #{
%%   <<"AccountIds">> := list(string()()),
%%   <<"GraphArn">> := string()
%% }
-type delete_members_request() :: #{binary() => any()}.


%% Example:
%% timestamp_for_collection() :: #{
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type timestamp_for_collection() :: #{binary() => any()}.


%% Example:
%% account() :: #{
%%   <<"AccountId">> => string(),
%%   <<"EmailAddress">> => string()
%% }
-type account() :: #{binary() => any()}.


%% Example:
%% unprocessed_graph() :: #{
%%   <<"GraphArn">> => string(),
%%   <<"Reason">> => string()
%% }
-type unprocessed_graph() :: #{binary() => any()}.


%% Example:
%% batch_get_membership_datasources_response() :: #{
%%   <<"MembershipDatasources">> => list(membership_datasources()()),
%%   <<"UnprocessedGraphs">> => list(unprocessed_graph()())
%% }
-type batch_get_membership_datasources_response() :: #{binary() => any()}.


%% Example:
%% batch_get_graph_member_datasources_request() :: #{
%%   <<"AccountIds">> := list(string()()),
%%   <<"GraphArn">> := string()
%% }
-type batch_get_graph_member_datasources_request() :: #{binary() => any()}.


%% Example:
%% update_investigation_state_request() :: #{
%%   <<"GraphArn">> := string(),
%%   <<"InvestigationId">> := string(),
%%   <<"State">> := list(any())
%% }
-type update_investigation_state_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% date_filter() :: #{
%%   <<"EndInclusive">> => non_neg_integer(),
%%   <<"StartInclusive">> => non_neg_integer()
%% }
-type date_filter() :: #{binary() => any()}.


%% Example:
%% reject_invitation_request() :: #{
%%   <<"GraphArn">> := string()
%% }
-type reject_invitation_request() :: #{binary() => any()}.


%% Example:
%% investigation_detail() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EntityArn">> => string(),
%%   <<"EntityType">> => list(any()),
%%   <<"InvestigationId">> => string(),
%%   <<"Severity">> => list(any()),
%%   <<"State">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type investigation_detail() :: #{binary() => any()}.


%% Example:
%% impossible_travel_detail() :: #{
%%   <<"EndingIpAddress">> => string(),
%%   <<"EndingLocation">> => string(),
%%   <<"HourlyTimeDelta">> => integer(),
%%   <<"StartingIpAddress">> => string(),
%%   <<"StartingLocation">> => string()
%% }
-type impossible_travel_detail() :: #{binary() => any()}.


%% Example:
%% delete_graph_request() :: #{
%%   <<"GraphArn">> := string()
%% }
-type delete_graph_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_membership_datasources_request() :: #{
%%   <<"GraphArns">> := list(string()())
%% }
-type batch_get_membership_datasources_request() :: #{binary() => any()}.


%% Example:
%% update_organization_configuration_request() :: #{
%%   <<"AutoEnable">> => boolean(),
%%   <<"GraphArn">> := string()
%% }
-type update_organization_configuration_request() :: #{binary() => any()}.


%% Example:
%% enable_organization_admin_account_request() :: #{
%%   <<"AccountId">> := string()
%% }
-type enable_organization_admin_account_request() :: #{binary() => any()}.


%% Example:
%% list_graphs_response() :: #{
%%   <<"GraphList">> => list(graph()()),
%%   <<"NextToken">> => string()
%% }
-type list_graphs_response() :: #{binary() => any()}.


%% Example:
%% datasource_package_usage_info() :: #{
%%   <<"VolumeUsageInBytes">> => float(),
%%   <<"VolumeUsageUpdateTime">> => non_neg_integer()
%% }
-type datasource_package_usage_info() :: #{binary() => any()}.


%% Example:
%% list_datasource_packages_response() :: #{
%%   <<"DatasourcePackages">> => map(),
%%   <<"NextToken">> => string()
%% }
-type list_datasource_packages_response() :: #{binary() => any()}.


%% Example:
%% membership_datasources() :: #{
%%   <<"AccountId">> => string(),
%%   <<"DatasourcePackageIngestHistory">> => map(),
%%   <<"GraphArn">> => string()
%% }
-type membership_datasources() :: #{binary() => any()}.


%% Example:
%% list_organization_admin_accounts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_organization_admin_accounts_request() :: #{binary() => any()}.


%% Example:
%% sort_criteria() :: #{
%%   <<"Field">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type sort_criteria() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorCodeReason">> => string(),
%%   <<"Message">> => string(),
%%   <<"SubErrorCode">> => list(any()),
%%   <<"SubErrorCodeReason">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% new_geolocation_detail() :: #{
%%   <<"IpAddress">> => string(),
%%   <<"IsNewForEntireAccount">> => boolean(),
%%   <<"Location">> => string()
%% }
-type new_geolocation_detail() :: #{binary() => any()}.


%% Example:
%% accept_invitation_request() :: #{
%%   <<"GraphArn">> := string()
%% }
-type accept_invitation_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_graph_response() :: #{
%%   <<"GraphArn">> => string()
%% }
-type create_graph_response() :: #{binary() => any()}.


%% Example:
%% list_members_request() :: #{
%%   <<"GraphArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_members_request() :: #{binary() => any()}.


%% Example:
%% list_members_response() :: #{
%%   <<"MemberDetails">> => list(member_detail()()),
%%   <<"NextToken">> => string()
%% }
-type list_members_response() :: #{binary() => any()}.


%% Example:
%% get_investigation_request() :: #{
%%   <<"GraphArn">> := string(),
%%   <<"InvestigationId">> := string()
%% }
-type get_investigation_request() :: #{binary() => any()}.


%% Example:
%% get_investigation_response() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"EntityArn">> => string(),
%%   <<"EntityType">> => list(any()),
%%   <<"GraphArn">> => string(),
%%   <<"InvestigationId">> => string(),
%%   <<"ScopeEndTime">> => non_neg_integer(),
%%   <<"ScopeStartTime">> => non_neg_integer(),
%%   <<"Severity">> => list(any()),
%%   <<"State">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type get_investigation_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorCodeReason">> => string(),
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_invitations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_invitations_request() :: #{binary() => any()}.


%% Example:
%% indicator_detail() :: #{
%%   <<"FlaggedIpAddressDetail">> => flagged_ip_address_detail(),
%%   <<"ImpossibleTravelDetail">> => impossible_travel_detail(),
%%   <<"NewAsoDetail">> => new_aso_detail(),
%%   <<"NewGeolocationDetail">> => new_geolocation_detail(),
%%   <<"NewUserAgentDetail">> => new_user_agent_detail(),
%%   <<"RelatedFindingDetail">> => related_finding_detail(),
%%   <<"RelatedFindingGroupDetail">> => related_finding_group_detail(),
%%   <<"TTPsObservedDetail">> => t_t_ps_observed_detail()
%% }
-type indicator_detail() :: #{binary() => any()}.


%% Example:
%% string_filter() :: #{
%%   <<"Value">> => string()
%% }
-type string_filter() :: #{binary() => any()}.


%% Example:
%% flagged_ip_address_detail() :: #{
%%   <<"IpAddress">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type flagged_ip_address_detail() :: #{binary() => any()}.


%% Example:
%% related_finding_detail() :: #{
%%   <<"Arn">> => string(),
%%   <<"IpAddress">> => string(),
%%   <<"Type">> => string()
%% }
-type related_finding_detail() :: #{binary() => any()}.


%% Example:
%% unprocessed_account() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Reason">> => string()
%% }
-type unprocessed_account() :: #{binary() => any()}.


%% Example:
%% start_monitoring_member_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"GraphArn">> := string()
%% }
-type start_monitoring_member_request() :: #{binary() => any()}.


%% Example:
%% list_indicators_response() :: #{
%%   <<"GraphArn">> => string(),
%%   <<"Indicators">> => list(indicator()()),
%%   <<"InvestigationId">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_indicators_response() :: #{binary() => any()}.


%% Example:
%% datasource_package_ingest_detail() :: #{
%%   <<"DatasourcePackageIngestState">> => list(any()),
%%   <<"LastIngestStateChange">> => map()
%% }
-type datasource_package_ingest_detail() :: #{binary() => any()}.


%% Example:
%% list_organization_admin_accounts_response() :: #{
%%   <<"Administrators">> => list(administrator()()),
%%   <<"NextToken">> => string()
%% }
-type list_organization_admin_accounts_response() :: #{binary() => any()}.


%% Example:
%% list_indicators_request() :: #{
%%   <<"GraphArn">> := string(),
%%   <<"IndicatorType">> => list(any()),
%%   <<"InvestigationId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_indicators_request() :: #{binary() => any()}.


%% Example:
%% disassociate_membership_request() :: #{
%%   <<"GraphArn">> := string()
%% }
-type disassociate_membership_request() :: #{binary() => any()}.


%% Example:
%% t_t_ps_observed_detail() :: #{
%%   <<"APIFailureCount">> => float(),
%%   <<"APIName">> => string(),
%%   <<"APISuccessCount">> => float(),
%%   <<"IpAddress">> => string(),
%%   <<"Procedure">> => string(),
%%   <<"Tactic">> => string(),
%%   <<"Technique">> => string()
%% }
-type t_t_ps_observed_detail() :: #{binary() => any()}.


%% Example:
%% create_members_response() :: #{
%%   <<"Members">> => list(member_detail()()),
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type create_members_response() :: #{binary() => any()}.


%% Example:
%% member_detail() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AdministratorId">> => string(),
%%   <<"DatasourcePackageIngestStates">> => map(),
%%   <<"DisabledReason">> => list(any()),
%%   <<"EmailAddress">> => string(),
%%   <<"GraphArn">> => string(),
%%   <<"InvitationType">> => list(any()),
%%   <<"InvitedTime">> => non_neg_integer(),
%%   <<"MasterId">> => string(),
%%   <<"PercentOfGraphUtilization">> => float(),
%%   <<"PercentOfGraphUtilizationUpdatedTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTime">> => non_neg_integer(),
%%   <<"VolumeUsageByDatasourcePackage">> => map(),
%%   <<"VolumeUsageInBytes">> => float(),
%%   <<"VolumeUsageUpdatedTime">> => non_neg_integer()
%% }
-type member_detail() :: #{binary() => any()}.


%% Example:
%% list_invitations_response() :: #{
%%   <<"Invitations">> => list(member_detail()()),
%%   <<"NextToken">> => string()
%% }
-type list_invitations_response() :: #{binary() => any()}.


%% Example:
%% indicator() :: #{
%%   <<"IndicatorDetail">> => indicator_detail(),
%%   <<"IndicatorType">> => list(any())
%% }
-type indicator() :: #{binary() => any()}.

-type accept_invitation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_get_graph_member_datasources_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_membership_datasources_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_graph_errors() ::
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_members_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_graph_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_members_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_organization_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type disable_organization_admin_account_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type disassociate_membership_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type enable_organization_admin_account_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type get_investigation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_members_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_datasource_packages_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_graphs_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_indicators_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_investigations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_invitations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_members_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_organization_admin_accounts_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type reject_invitation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_investigation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type start_monitoring_member_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_datasource_packages_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_investigation_state_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_organization_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

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
-spec accept_invitation(aws_client:aws_client(), accept_invitation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, accept_invitation_errors(), tuple()}.
accept_invitation(Client, Input) ->
    accept_invitation(Client, Input, []).

-spec accept_invitation(aws_client:aws_client(), accept_invitation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, accept_invitation_errors(), tuple()}.
accept_invitation(Client, Input0, Options0) ->
    Method = put,
    Path = ["/invitation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets data source package information for the behavior graph.
-spec batch_get_graph_member_datasources(aws_client:aws_client(), batch_get_graph_member_datasources_request()) ->
    {ok, batch_get_graph_member_datasources_response(), tuple()} |
    {error, any()} |
    {error, batch_get_graph_member_datasources_errors(), tuple()}.
batch_get_graph_member_datasources(Client, Input) ->
    batch_get_graph_member_datasources(Client, Input, []).

-spec batch_get_graph_member_datasources(aws_client:aws_client(), batch_get_graph_member_datasources_request(), proplists:proplist()) ->
    {ok, batch_get_graph_member_datasources_response(), tuple()} |
    {error, any()} |
    {error, batch_get_graph_member_datasources_errors(), tuple()}.
batch_get_graph_member_datasources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/datasources/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information on the data source package history for an account.
-spec batch_get_membership_datasources(aws_client:aws_client(), batch_get_membership_datasources_request()) ->
    {ok, batch_get_membership_datasources_response(), tuple()} |
    {error, any()} |
    {error, batch_get_membership_datasources_errors(), tuple()}.
batch_get_membership_datasources(Client, Input) ->
    batch_get_membership_datasources(Client, Input, []).

-spec batch_get_membership_datasources(aws_client:aws_client(), batch_get_membership_datasources_request(), proplists:proplist()) ->
    {ok, batch_get_membership_datasources_response(), tuple()} |
    {error, any()} |
    {error, batch_get_membership_datasources_errors(), tuple()}.
batch_get_membership_datasources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/membership/datasources/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new behavior graph for the calling account, and sets that
%% account as the
%% administrator account.
%%
%% This operation is called by the account that is enabling Detective.
%%
%% The operation also enables Detective for the calling account in the
%% currently
%% selected Region. It returns the ARN of the new behavior graph.
%%
%% `CreateGraph' triggers a process to create the corresponding data
%% tables for
%% the new behavior graph.
%%
%% An account can only be the administrator account for one behavior graph
%% within a Region.
%% If the same account calls `CreateGraph' with the same administrator
%% account, it
%% always returns the same behavior graph ARN. It does not create a new
%% behavior graph.
-spec create_graph(aws_client:aws_client(), create_graph_request()) ->
    {ok, create_graph_response(), tuple()} |
    {error, any()} |
    {error, create_graph_errors(), tuple()}.
create_graph(Client, Input) ->
    create_graph(Client, Input, []).

-spec create_graph(aws_client:aws_client(), create_graph_request(), proplists:proplist()) ->
    {ok, create_graph_response(), tuple()} |
    {error, any()} |
    {error, create_graph_errors(), tuple()}.
create_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% `CreateMembers' is used to send invitations to accounts.
%%
%% For the organization
%% behavior graph, the Detective administrator account uses
%% `CreateMembers' to enable organization accounts as member accounts.
%%
%% For invited accounts, `CreateMembers' sends a request to invite the
%% specified
%% Amazon Web Services accounts to be member accounts in the behavior graph.
%% This operation
%% can only be called by the administrator account for a behavior graph.
%%
%% `CreateMembers' verifies the accounts and then invites the verified
%% accounts.
%% The administrator can optionally specify to not send invitation emails to
%% the member
%% accounts. This would be used when the administrator manages their member
%% accounts
%% centrally.
%%
%% For organization accounts in the organization behavior graph,
%% `CreateMembers'
%% attempts to enable the accounts. The organization accounts do not receive
%% invitations.
%%
%% The request provides the behavior graph ARN and the list of accounts to
%% invite or to
%% enable.
%%
%% The response separates the requested accounts into two lists:
%%
%% The accounts that `CreateMembers' was able to process. For invited
%% accounts, includes member accounts that are being verified, that have
%% passed
%% verification and are to be invited, and that have failed verification. For
%% organization accounts in the organization behavior graph, includes
%% accounts that can
%% be enabled and that cannot be enabled.
%%
%% The accounts that `CreateMembers' was unable to process. This list
%% includes accounts that were already invited to be member accounts in the
%% behavior
%% graph.
-spec create_members(aws_client:aws_client(), create_members_request()) ->
    {ok, create_members_response(), tuple()} |
    {error, any()} |
    {error, create_members_errors(), tuple()}.
create_members(Client, Input) ->
    create_members(Client, Input, []).

-spec create_members(aws_client:aws_client(), create_members_request(), proplists:proplist()) ->
    {ok, create_members_response(), tuple()} |
    {error, any()} |
    {error, create_members_errors(), tuple()}.
create_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/members"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the specified behavior graph and queues it to be deleted.
%%
%% This operation
%% removes the behavior graph from each member account's list of behavior
%% graphs.
%%
%% `DeleteGraph' can only be called by the administrator account for a
%% behavior
%% graph.
-spec delete_graph(aws_client:aws_client(), delete_graph_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_graph_errors(), tuple()}.
delete_graph(Client, Input) ->
    delete_graph(Client, Input, []).

-spec delete_graph(aws_client:aws_client(), delete_graph_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_graph_errors(), tuple()}.
delete_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/removal"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified member accounts from the behavior graph.
%%
%% The removed accounts no
%% longer contribute data to the behavior graph. This operation can only be
%% called by the
%% administrator account for the behavior graph.
%%
%% For invited accounts, the removed accounts are deleted from the list of
%% accounts in the
%% behavior graph. To restore the account, the administrator account must
%% send another
%% invitation.
%%
%% For organization accounts in the organization behavior graph, the
%% Detective
%% administrator account can always enable the organization account again.
%% Organization
%% accounts that are not enabled as member accounts are not included in the
%% `ListMembers' results for the organization behavior graph.
%%
%% An administrator account cannot use `DeleteMembers' to remove their
%% own
%% account from the behavior graph. To disable a behavior graph, the
%% administrator account
%% uses the `DeleteGraph' API method.
-spec delete_members(aws_client:aws_client(), delete_members_request()) ->
    {ok, delete_members_response(), tuple()} |
    {error, any()} |
    {error, delete_members_errors(), tuple()}.
delete_members(Client, Input) ->
    delete_members(Client, Input, []).

-spec delete_members(aws_client:aws_client(), delete_members_request(), proplists:proplist()) ->
    {ok, delete_members_response(), tuple()} |
    {error, any()} |
    {error, delete_members_errors(), tuple()}.
delete_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/members/removal"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% accounts as member
%% accounts.
%%
%% Can only be called by the Detective administrator account for the
%% organization.
-spec describe_organization_configuration(aws_client:aws_client(), describe_organization_configuration_request()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, Input) ->
    describe_organization_configuration(Client, Input, []).

-spec describe_organization_configuration(aws_client:aws_client(), describe_organization_configuration_request(), proplists:proplist()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orgs/describeOrganizationConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the Detective administrator account in the current Region.
%%
%% Deletes the
%% organization behavior graph.
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
-spec disable_organization_admin_account(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_organization_admin_account_errors(), tuple()}.
disable_organization_admin_account(Client, Input) ->
    disable_organization_admin_account(Client, Input, []).

-spec disable_organization_admin_account(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_organization_admin_account_errors(), tuple()}.
disable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orgs/disableAdminAccount"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the member account from the specified behavior graph.
%%
%% This operation can only be
%% called by an invited member account that has the `ENABLED' status.
%%
%% `DisassociateMembership' cannot be called by an organization account
%% in the
%% organization behavior graph. For the organization behavior graph, the
%% Detective
%% administrator account determines which organization accounts to enable or
%% disable as member
%% accounts.
-spec disassociate_membership(aws_client:aws_client(), disassociate_membership_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_membership_errors(), tuple()}.
disassociate_membership(Client, Input) ->
    disassociate_membership(Client, Input, []).

-spec disassociate_membership(aws_client:aws_client(), disassociate_membership_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_membership_errors(), tuple()}.
disassociate_membership(Client, Input0, Options0) ->
    Method = post,
    Path = ["/membership/removal"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Designates the Detective administrator account for the organization
%% in the
%% current Region.
%%
%% If the account does not have Detective enabled, then enables Detective
%% for that account and creates a new behavior graph.
%%
%% Can only be called by the organization management account.
%%
%% If the organization has a delegated administrator account in
%% Organizations, then the
%% Detective administrator account must be either the delegated administrator
%% account or the organization management account.
%%
%% If the organization does not have a delegated administrator account in
%% Organizations, then you can choose any account in the organization. If you
%% choose an account other
%% than the organization management account, Detective calls Organizations to
%% make that account the delegated administrator account for Detective. The
%% organization management account cannot be the delegated administrator
%% account.
-spec enable_organization_admin_account(aws_client:aws_client(), enable_organization_admin_account_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_organization_admin_account_errors(), tuple()}.
enable_organization_admin_account(Client, Input) ->
    enable_organization_admin_account(Client, Input, []).

-spec enable_organization_admin_account(aws_client:aws_client(), enable_organization_admin_account_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_organization_admin_account_errors(), tuple()}.
enable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orgs/enableAdminAccount"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Detective investigations lets you investigate IAM users and IAM roles
%% using indicators of compromise.
%%
%% An indicator of compromise (IOC) is an artifact observed in or on a
%% network, system, or environment that can (with a high level of confidence)
%% identify malicious activity or a security incident. `GetInvestigation'
%% returns the investigation results of an investigation for a behavior
%% graph.
-spec get_investigation(aws_client:aws_client(), get_investigation_request()) ->
    {ok, get_investigation_response(), tuple()} |
    {error, any()} |
    {error, get_investigation_errors(), tuple()}.
get_investigation(Client, Input) ->
    get_investigation(Client, Input, []).

-spec get_investigation(aws_client:aws_client(), get_investigation_request(), proplists:proplist()) ->
    {ok, get_investigation_response(), tuple()} |
    {error, any()} |
    {error, get_investigation_errors(), tuple()}.
get_investigation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/investigations/getInvestigation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the membership details for specified member accounts for a
%% behavior
%% graph.
-spec get_members(aws_client:aws_client(), get_members_request()) ->
    {ok, get_members_response(), tuple()} |
    {error, any()} |
    {error, get_members_errors(), tuple()}.
get_members(Client, Input) ->
    get_members(Client, Input, []).

-spec get_members(aws_client:aws_client(), get_members_request(), proplists:proplist()) ->
    {ok, get_members_response(), tuple()} |
    {error, any()} |
    {error, get_members_errors(), tuple()}.
get_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/members/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists data source packages in the behavior graph.
-spec list_datasource_packages(aws_client:aws_client(), list_datasource_packages_request()) ->
    {ok, list_datasource_packages_response(), tuple()} |
    {error, any()} |
    {error, list_datasource_packages_errors(), tuple()}.
list_datasource_packages(Client, Input) ->
    list_datasource_packages(Client, Input, []).

-spec list_datasource_packages(aws_client:aws_client(), list_datasource_packages_request(), proplists:proplist()) ->
    {ok, list_datasource_packages_response(), tuple()} |
    {error, any()} |
    {error, list_datasource_packages_errors(), tuple()}.
list_datasource_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/datasources/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the list of behavior graphs that the calling account is an
%% administrator account
%% of.
%%
%% This operation can only be called by an administrator account.
%%
%% Because an account can currently only be the administrator of one behavior
%% graph within
%% a Region, the results always contain a single behavior graph.
-spec list_graphs(aws_client:aws_client(), list_graphs_request()) ->
    {ok, list_graphs_response(), tuple()} |
    {error, any()} |
    {error, list_graphs_errors(), tuple()}.
list_graphs(Client, Input) ->
    list_graphs(Client, Input, []).

-spec list_graphs(aws_client:aws_client(), list_graphs_request(), proplists:proplist()) ->
    {ok, list_graphs_response(), tuple()} |
    {error, any()} |
    {error, list_graphs_errors(), tuple()}.
list_graphs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graphs/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the indicators from an investigation.
%%
%% You can use the information from the indicators to determine if an IAM
%% user and/or IAM role is involved in an unusual activity that could
%% indicate malicious behavior and its impact.
-spec list_indicators(aws_client:aws_client(), list_indicators_request()) ->
    {ok, list_indicators_response(), tuple()} |
    {error, any()} |
    {error, list_indicators_errors(), tuple()}.
list_indicators(Client, Input) ->
    list_indicators(Client, Input, []).

-spec list_indicators(aws_client:aws_client(), list_indicators_request(), proplists:proplist()) ->
    {ok, list_indicators_response(), tuple()} |
    {error, any()} |
    {error, list_indicators_errors(), tuple()}.
list_indicators(Client, Input0, Options0) ->
    Method = post,
    Path = ["/investigations/listIndicators"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Detective investigations lets you investigate IAM users and
%% IAM roles using indicators of compromise.
%%
%% An indicator of compromise
%% (IOC) is an artifact observed in or on a network, system, or environment
%% that can (with a
%% high level of confidence) identify malicious activity or a security
%% incident.
%% `ListInvestigations' lists all active Detective
%% investigations.
-spec list_investigations(aws_client:aws_client(), list_investigations_request()) ->
    {ok, list_investigations_response(), tuple()} |
    {error, any()} |
    {error, list_investigations_errors(), tuple()}.
list_investigations(Client, Input) ->
    list_investigations(Client, Input, []).

-spec list_investigations(aws_client:aws_client(), list_investigations_request(), proplists:proplist()) ->
    {ok, list_investigations_response(), tuple()} |
    {error, any()} |
    {error, list_investigations_errors(), tuple()}.
list_investigations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/investigations/listInvestigations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the list of open and accepted behavior graph invitations
%% for the member
%% account.
%%
%% This operation can only be called by an invited member account.
%%
%% Open invitations are invitations that the member account has not responded
%% to.
%%
%% The results do not include behavior graphs for which the member account
%% declined the
%% invitation. The results also do not include behavior graphs that the
%% member account
%% resigned from or was removed from.
-spec list_invitations(aws_client:aws_client(), list_invitations_request()) ->
    {ok, list_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client, Input) ->
    list_invitations(Client, Input, []).

-spec list_invitations(aws_client:aws_client(), list_invitations_request(), proplists:proplist()) ->
    {ok, list_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitations/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% removed from
%% the behavior graph.
%%
%% For the organization behavior graph, the results do not include
%% organization accounts
%% that the Detective administrator account has not enabled as member
%% accounts.
-spec list_members(aws_client:aws_client(), list_members_request()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, Input) ->
    list_members(Client, Input, []).

-spec list_members(aws_client:aws_client(), list_members_request(), proplists:proplist()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/members/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
-spec list_organization_admin_accounts(aws_client:aws_client(), list_organization_admin_accounts_request()) ->
    {ok, list_organization_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_admin_accounts_errors(), tuple()}.
list_organization_admin_accounts(Client, Input) ->
    list_organization_admin_accounts(Client, Input, []).

-spec list_organization_admin_accounts(aws_client:aws_client(), list_organization_admin_accounts_request(), proplists:proplist()) ->
    {ok, list_organization_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_admin_accounts_errors(), tuple()}.
list_organization_admin_accounts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orgs/adminAccountslist"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the tag values that are assigned to a behavior graph.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Rejects an invitation to contribute the account data to a behavior
%% graph.
%%
%% This operation
%% must be called by an invited member account that has the `INVITED'
%% status.
%%
%% `RejectInvitation' cannot be called by an organization account in the
%% organization behavior graph. In the organization behavior graph,
%% organization accounts do
%% not receive an invitation.
-spec reject_invitation(aws_client:aws_client(), reject_invitation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reject_invitation_errors(), tuple()}.
reject_invitation(Client, Input) ->
    reject_invitation(Client, Input, []).

-spec reject_invitation(aws_client:aws_client(), reject_invitation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reject_invitation_errors(), tuple()}.
reject_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitation/removal"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Detective investigations lets you investigate IAM users and IAM roles
%% using indicators of compromise.
%%
%% An indicator of compromise (IOC) is an artifact observed in or on a
%% network, system, or environment that can (with a high level of confidence)
%% identify malicious activity or a security incident.
%% `StartInvestigation' initiates an investigation on an entity in a
%% behavior graph.
-spec start_investigation(aws_client:aws_client(), start_investigation_request()) ->
    {ok, start_investigation_response(), tuple()} |
    {error, any()} |
    {error, start_investigation_errors(), tuple()}.
start_investigation(Client, Input) ->
    start_investigation(Client, Input, []).

-spec start_investigation(aws_client:aws_client(), start_investigation_request(), proplists:proplist()) ->
    {ok, start_investigation_response(), tuple()} |
    {error, any()} |
    {error, start_investigation_errors(), tuple()}.
start_investigation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/investigations/startInvestigation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a request to enable data ingest for a member account that has a
%% status of
%% `ACCEPTED_BUT_DISABLED'.
%%
%% For valid member accounts, the status is updated as follows.
%%
%% If Detective enabled the member account, then the new status is
%% `ENABLED'.
%%
%% If Detective cannot enable the member account, the status remains
%% `ACCEPTED_BUT_DISABLED'.
-spec start_monitoring_member(aws_client:aws_client(), start_monitoring_member_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_monitoring_member_errors(), tuple()}.
start_monitoring_member(Client, Input) ->
    start_monitoring_member(Client, Input, []).

-spec start_monitoring_member(aws_client:aws_client(), start_monitoring_member_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_monitoring_member_errors(), tuple()}.
start_monitoring_member(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/member/monitoringstate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Applies tag values to a behavior graph.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a behavior graph.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a data source package for the Detective behavior graph.
-spec update_datasource_packages(aws_client:aws_client(), update_datasource_packages_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_datasource_packages_errors(), tuple()}.
update_datasource_packages(Client, Input) ->
    update_datasource_packages(Client, Input, []).

-spec update_datasource_packages(aws_client:aws_client(), update_datasource_packages_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_datasource_packages_errors(), tuple()}.
update_datasource_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/graph/datasources/update"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the state of an investigation.
-spec update_investigation_state(aws_client:aws_client(), update_investigation_state_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_investigation_state_errors(), tuple()}.
update_investigation_state(Client, Input) ->
    update_investigation_state(Client, Input, []).

-spec update_investigation_state(aws_client:aws_client(), update_investigation_state_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_investigation_state_errors(), tuple()}.
update_investigation_state(Client, Input0, Options0) ->
    Method = post,
    Path = ["/investigations/updateInvestigationState"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
-spec update_organization_configuration(aws_client:aws_client(), update_organization_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_organization_configuration_errors(), tuple()}.
update_organization_configuration(Client, Input) ->
    update_organization_configuration(Client, Input, []).

-spec update_organization_configuration(aws_client:aws_client(), update_organization_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_organization_configuration_errors(), tuple()}.
update_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orgs/updateOrganizationConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
