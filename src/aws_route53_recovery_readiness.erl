%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Recovery readiness
-module(aws_route53_recovery_readiness).

-export([create_cell/2,
         create_cell/3,
         create_cross_account_authorization/2,
         create_cross_account_authorization/3,
         create_readiness_check/2,
         create_readiness_check/3,
         create_recovery_group/2,
         create_recovery_group/3,
         create_resource_set/2,
         create_resource_set/3,
         delete_cell/3,
         delete_cell/4,
         delete_cross_account_authorization/3,
         delete_cross_account_authorization/4,
         delete_readiness_check/3,
         delete_readiness_check/4,
         delete_recovery_group/3,
         delete_recovery_group/4,
         delete_resource_set/3,
         delete_resource_set/4,
         get_architecture_recommendations/2,
         get_architecture_recommendations/4,
         get_architecture_recommendations/5,
         get_cell/2,
         get_cell/4,
         get_cell/5,
         get_cell_readiness_summary/2,
         get_cell_readiness_summary/4,
         get_cell_readiness_summary/5,
         get_readiness_check/2,
         get_readiness_check/4,
         get_readiness_check/5,
         get_readiness_check_resource_status/3,
         get_readiness_check_resource_status/5,
         get_readiness_check_resource_status/6,
         get_readiness_check_status/2,
         get_readiness_check_status/4,
         get_readiness_check_status/5,
         get_recovery_group/2,
         get_recovery_group/4,
         get_recovery_group/5,
         get_recovery_group_readiness_summary/2,
         get_recovery_group_readiness_summary/4,
         get_recovery_group_readiness_summary/5,
         get_resource_set/2,
         get_resource_set/4,
         get_resource_set/5,
         list_cells/1,
         list_cells/3,
         list_cells/4,
         list_cross_account_authorizations/1,
         list_cross_account_authorizations/3,
         list_cross_account_authorizations/4,
         list_readiness_checks/1,
         list_readiness_checks/3,
         list_readiness_checks/4,
         list_recovery_groups/1,
         list_recovery_groups/3,
         list_recovery_groups/4,
         list_resource_sets/1,
         list_resource_sets/3,
         list_resource_sets/4,
         list_rules/1,
         list_rules/3,
         list_rules/4,
         list_tags_for_resources/2,
         list_tags_for_resources/4,
         list_tags_for_resources/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_cell/3,
         update_cell/4,
         update_readiness_check/3,
         update_readiness_check/4,
         update_recovery_group/3,
         update_recovery_group/4,
         update_resource_set/3,
         update_resource_set/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% readiness_check_summary() :: #{
%%   <<"Readiness">> => list(any()),
%%   <<"ReadinessCheckName">> => string()
%% }
-type readiness_check_summary() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_resource_set_request() :: #{
%%   <<"ResourceSetName">> := string(),
%%   <<"ResourceSetType">> := string(),
%%   <<"Resources">> := list(resource()),
%%   <<"Tags">> => map()
%% }
-type create_resource_set_request() :: #{binary() => any()}.


%% Example:
%% get_recovery_group_response() :: #{
%%   <<"Cells">> => list(string()),
%%   <<"RecoveryGroupArn">> => string(),
%%   <<"RecoveryGroupName">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_recovery_group_response() :: #{binary() => any()}.


%% Example:
%% create_cell_response() :: #{
%%   <<"CellArn">> => string(),
%%   <<"CellName">> => string(),
%%   <<"Cells">> => list(string()),
%%   <<"ParentReadinessScopes">> => list(string()),
%%   <<"Tags">> => map()
%% }
-type create_cell_response() :: #{binary() => any()}.

%% Example:
%% delete_cell_request() :: #{}
-type delete_cell_request() :: #{}.

%% Example:
%% get_recovery_group_request() :: #{}
-type get_recovery_group_request() :: #{}.


%% Example:
%% list_readiness_checks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_readiness_checks_request() :: #{binary() => any()}.


%% Example:
%% dns_target_resource() :: #{
%%   <<"DomainName">> => string(),
%%   <<"HostedZoneArn">> => string(),
%%   <<"RecordSetId">> => string(),
%%   <<"RecordType">> => string(),
%%   <<"TargetResource">> => target_resource()
%% }
-type dns_target_resource() :: #{binary() => any()}.


%% Example:
%% r53_resource_record() :: #{
%%   <<"DomainName">> => string(),
%%   <<"RecordSetId">> => string()
%% }
-type r53_resource_record() :: #{binary() => any()}.


%% Example:
%% list_cells_response() :: #{
%%   <<"Cells">> => list(cell_output()),
%%   <<"NextToken">> => string()
%% }
-type list_cells_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_set_request() :: #{}
-type delete_resource_set_request() :: #{}.


%% Example:
%% create_cross_account_authorization_response() :: #{
%%   <<"CrossAccountAuthorization">> => string()
%% }
-type create_cross_account_authorization_response() :: #{binary() => any()}.


%% Example:
%% recovery_group_output() :: #{
%%   <<"Cells">> => list(string()),
%%   <<"RecoveryGroupArn">> => string(),
%%   <<"RecoveryGroupName">> => string(),
%%   <<"Tags">> => map()
%% }
-type recovery_group_output() :: #{binary() => any()}.


%% Example:
%% list_resource_sets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resource_sets_request() :: #{binary() => any()}.


%% Example:
%% resource_set_output() :: #{
%%   <<"ResourceSetArn">> => string(),
%%   <<"ResourceSetName">> => string(),
%%   <<"ResourceSetType">> => string(),
%%   <<"Resources">> => list(resource()),
%%   <<"Tags">> => map()
%% }
-type resource_set_output() :: #{binary() => any()}.


%% Example:
%% create_cross_account_authorization_request() :: #{
%%   <<"CrossAccountAuthorization">> := string()
%% }
-type create_cross_account_authorization_request() :: #{binary() => any()}.


%% Example:
%% get_recovery_group_readiness_summary_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Readiness">> => list(any()),
%%   <<"ReadinessChecks">> => list(readiness_check_summary())
%% }
-type get_recovery_group_readiness_summary_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_recovery_group_response() :: #{
%%   <<"Cells">> => list(string()),
%%   <<"RecoveryGroupArn">> => string(),
%%   <<"RecoveryGroupName">> => string(),
%%   <<"Tags">> => map()
%% }
-type update_recovery_group_response() :: #{binary() => any()}.


%% Example:
%% list_rules_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type list_rules_request() :: #{binary() => any()}.

%% Example:
%% get_cell_request() :: #{}
-type get_cell_request() :: #{}.


%% Example:
%% update_readiness_check_response() :: #{
%%   <<"ReadinessCheckArn">> => string(),
%%   <<"ReadinessCheckName">> => string(),
%%   <<"ResourceSet">> => string(),
%%   <<"Tags">> => map()
%% }
-type update_readiness_check_response() :: #{binary() => any()}.


%% Example:
%% target_resource() :: #{
%%   <<"NLBResource">> => n_lb_resource(),
%%   <<"R53Resource">> => r53_resource_record()
%% }
-type target_resource() :: #{binary() => any()}.


%% Example:
%% get_recovery_group_readiness_summary_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_recovery_group_readiness_summary_request() :: #{binary() => any()}.


%% Example:
%% get_cell_readiness_summary_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Readiness">> => list(any()),
%%   <<"ReadinessChecks">> => list(readiness_check_summary())
%% }
-type get_cell_readiness_summary_response() :: #{binary() => any()}.


%% Example:
%% list_cells_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_cells_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resources_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resources_response() :: #{binary() => any()}.

%% Example:
%% delete_cross_account_authorization_request() :: #{}
-type delete_cross_account_authorization_request() :: #{}.


%% Example:
%% list_readiness_checks_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReadinessChecks">> => list(readiness_check_output())
%% }
-type list_readiness_checks_response() :: #{binary() => any()}.


%% Example:
%% create_readiness_check_request() :: #{
%%   <<"ReadinessCheckName">> := string(),
%%   <<"ResourceSetName">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_readiness_check_request() :: #{binary() => any()}.


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
%% update_readiness_check_request() :: #{
%%   <<"ResourceSetName">> := string()
%% }
-type update_readiness_check_request() :: #{binary() => any()}.


%% Example:
%% get_readiness_check_status_response() :: #{
%%   <<"Messages">> => list(message()),
%%   <<"NextToken">> => string(),
%%   <<"Readiness">> => list(any()),
%%   <<"Resources">> => list(resource_result())
%% }
-type get_readiness_check_status_response() :: #{binary() => any()}.


%% Example:
%% update_recovery_group_request() :: #{
%%   <<"Cells">> := list(string())
%% }
-type update_recovery_group_request() :: #{binary() => any()}.


%% Example:
%% recommendation() :: #{
%%   <<"RecommendationText">> => string()
%% }
-type recommendation() :: #{binary() => any()}.


%% Example:
%% get_architecture_recommendations_response() :: #{
%%   <<"LastAuditTimestamp">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"Recommendations">> => list(recommendation())
%% }
-type get_architecture_recommendations_response() :: #{binary() => any()}.


%% Example:
%% get_readiness_check_status_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_readiness_check_status_request() :: #{binary() => any()}.


%% Example:
%% create_readiness_check_response() :: #{
%%   <<"ReadinessCheckArn">> => string(),
%%   <<"ReadinessCheckName">> => string(),
%%   <<"ResourceSet">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_readiness_check_response() :: #{binary() => any()}.


%% Example:
%% list_cross_account_authorizations_response() :: #{
%%   <<"CrossAccountAuthorizations">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_cross_account_authorizations_response() :: #{binary() => any()}.

%% Example:
%% get_resource_set_request() :: #{}
-type get_resource_set_request() :: #{}.


%% Example:
%% update_cell_response() :: #{
%%   <<"CellArn">> => string(),
%%   <<"CellName">> => string(),
%%   <<"Cells">> => list(string()),
%%   <<"ParentReadinessScopes">> => list(string()),
%%   <<"Tags">> => map()
%% }
-type update_cell_response() :: #{binary() => any()}.


%% Example:
%% get_readiness_check_response() :: #{
%%   <<"ReadinessCheckArn">> => string(),
%%   <<"ReadinessCheckName">> => string(),
%%   <<"ResourceSet">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_readiness_check_response() :: #{binary() => any()}.


%% Example:
%% create_resource_set_response() :: #{
%%   <<"ResourceSetArn">> => string(),
%%   <<"ResourceSetName">> => string(),
%%   <<"ResourceSetType">> => string(),
%%   <<"Resources">> => list(resource()),
%%   <<"Tags">> => map()
%% }
-type create_resource_set_response() :: #{binary() => any()}.


%% Example:
%% readiness_check_output() :: #{
%%   <<"ReadinessCheckArn">> => string(),
%%   <<"ReadinessCheckName">> => string(),
%%   <<"ResourceSet">> => string(),
%%   <<"Tags">> => map()
%% }
-type readiness_check_output() :: #{binary() => any()}.


%% Example:
%% list_recovery_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_recovery_groups_request() :: #{binary() => any()}.


%% Example:
%% get_architecture_recommendations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_architecture_recommendations_request() :: #{binary() => any()}.


%% Example:
%% get_resource_set_response() :: #{
%%   <<"ResourceSetArn">> => string(),
%%   <<"ResourceSetName">> => string(),
%%   <<"ResourceSetType">> => string(),
%%   <<"Resources">> => list(resource()),
%%   <<"Tags">> => map()
%% }
-type get_resource_set_response() :: #{binary() => any()}.


%% Example:
%% list_resource_sets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceSets">> => list(resource_set_output())
%% }
-type list_resource_sets_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_cross_account_authorization_response() :: #{}
-type delete_cross_account_authorization_response() :: #{}.


%% Example:
%% get_cell_readiness_summary_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_cell_readiness_summary_request() :: #{binary() => any()}.


%% Example:
%% get_readiness_check_resource_status_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Readiness">> => list(any()),
%%   <<"Rules">> => list(rule_result())
%% }
-type get_readiness_check_resource_status_response() :: #{binary() => any()}.


%% Example:
%% get_cell_response() :: #{
%%   <<"CellArn">> => string(),
%%   <<"CellName">> => string(),
%%   <<"Cells">> => list(string()),
%%   <<"ParentReadinessScopes">> => list(string()),
%%   <<"Tags">> => map()
%% }
-type get_cell_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% list_rules_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Rules">> => list(list_rules_output())
%% }
-type list_rules_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% update_resource_set_request() :: #{
%%   <<"ResourceSetType">> := string(),
%%   <<"Resources">> := list(resource())
%% }
-type update_resource_set_request() :: #{binary() => any()}.


%% Example:
%% create_recovery_group_response() :: #{
%%   <<"Cells">> => list(string()),
%%   <<"RecoveryGroupArn">> => string(),
%%   <<"RecoveryGroupName">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_recovery_group_response() :: #{binary() => any()}.


%% Example:
%% rule_result() :: #{
%%   <<"LastCheckedTimestamp">> => non_neg_integer(),
%%   <<"Messages">> => list(message()),
%%   <<"Readiness">> => list(any()),
%%   <<"RuleId">> => string()
%% }
-type rule_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resources_request() :: #{}
-type list_tags_for_resources_request() :: #{}.


%% Example:
%% get_readiness_check_resource_status_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_readiness_check_resource_status_request() :: #{binary() => any()}.


%% Example:
%% list_rules_output() :: #{
%%   <<"ResourceType">> => string(),
%%   <<"RuleDescription">> => string(),
%%   <<"RuleId">> => string()
%% }
-type list_rules_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% delete_readiness_check_request() :: #{}
-type delete_readiness_check_request() :: #{}.


%% Example:
%% n_lb_resource() :: #{
%%   <<"Arn">> => string()
%% }
-type n_lb_resource() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% cell_output() :: #{
%%   <<"CellArn">> => string(),
%%   <<"CellName">> => string(),
%%   <<"Cells">> => list(string()),
%%   <<"ParentReadinessScopes">> => list(string()),
%%   <<"Tags">> => map()
%% }
-type cell_output() :: #{binary() => any()}.


%% Example:
%% create_recovery_group_request() :: #{
%%   <<"Cells">> => list(string()),
%%   <<"RecoveryGroupName">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_recovery_group_request() :: #{binary() => any()}.


%% Example:
%% create_cell_request() :: #{
%%   <<"CellName">> := string(),
%%   <<"Cells">> => list(string()),
%%   <<"Tags">> => map()
%% }
-type create_cell_request() :: #{binary() => any()}.


%% Example:
%% update_cell_request() :: #{
%%   <<"Cells">> := list(string())
%% }
-type update_cell_request() :: #{binary() => any()}.


%% Example:
%% list_cross_account_authorizations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_cross_account_authorizations_request() :: #{binary() => any()}.


%% Example:
%% resource_result() :: #{
%%   <<"ComponentId">> => string(),
%%   <<"LastCheckedTimestamp">> => non_neg_integer(),
%%   <<"Readiness">> => list(any()),
%%   <<"ResourceArn">> => string()
%% }
-type resource_result() :: #{binary() => any()}.


%% Example:
%% update_resource_set_response() :: #{
%%   <<"ResourceSetArn">> => string(),
%%   <<"ResourceSetName">> => string(),
%%   <<"ResourceSetType">> => string(),
%%   <<"Resources">> => list(resource()),
%%   <<"Tags">> => map()
%% }
-type update_resource_set_response() :: #{binary() => any()}.

%% Example:
%% get_readiness_check_request() :: #{}
-type get_readiness_check_request() :: #{}.

%% Example:
%% delete_recovery_group_request() :: #{}
-type delete_recovery_group_request() :: #{}.


%% Example:
%% list_recovery_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RecoveryGroups">> => list(recovery_group_output())
%% }
-type list_recovery_groups_response() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"MessageText">> => string()
%% }
-type message() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"ComponentId">> => string(),
%%   <<"DnsTargetResource">> => dns_target_resource(),
%%   <<"ReadinessScopes">> => list(string()),
%%   <<"ResourceArn">> => string()
%% }
-type resource() :: #{binary() => any()}.

-type create_cell_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_cross_account_authorization_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_readiness_check_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_recovery_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_resource_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_cell_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_cross_account_authorization_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_readiness_check_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_recovery_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_resource_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_architecture_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_cell_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_cell_readiness_summary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_readiness_check_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_readiness_check_resource_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_readiness_check_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_recovery_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_recovery_group_readiness_summary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_cells_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_cross_account_authorizations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_readiness_checks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_recovery_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_resource_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resources_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_cell_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_readiness_check_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_recovery_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_resource_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a cell in an account.
-spec create_cell(aws_client:aws_client(), create_cell_request()) ->
    {ok, create_cell_response(), tuple()} |
    {error, any()} |
    {error, create_cell_errors(), tuple()}.
create_cell(Client, Input) ->
    create_cell(Client, Input, []).

-spec create_cell(aws_client:aws_client(), create_cell_request(), proplists:proplist()) ->
    {ok, create_cell_response(), tuple()} |
    {error, any()} |
    {error, create_cell_errors(), tuple()}.
create_cell(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cells"],
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

%% @doc Creates a cross-account readiness authorization.
%%
%% This lets you authorize another account to work with Route 53 Application
%% Recovery Controller, for example, to check the readiness status of
%% resources in a separate account.
-spec create_cross_account_authorization(aws_client:aws_client(), create_cross_account_authorization_request()) ->
    {ok, create_cross_account_authorization_response(), tuple()} |
    {error, any()} |
    {error, create_cross_account_authorization_errors(), tuple()}.
create_cross_account_authorization(Client, Input) ->
    create_cross_account_authorization(Client, Input, []).

-spec create_cross_account_authorization(aws_client:aws_client(), create_cross_account_authorization_request(), proplists:proplist()) ->
    {ok, create_cross_account_authorization_response(), tuple()} |
    {error, any()} |
    {error, create_cross_account_authorization_errors(), tuple()}.
create_cross_account_authorization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/crossaccountauthorizations"],
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

%% @doc Creates a readiness check in an account.
%%
%% A readiness check monitors a resource set in your application, such as a
%% set of Amazon Aurora instances, that Application Recovery Controller is
%% auditing recovery readiness for. The audits run once every minute on every
%% resource that's associated with a readiness check.
-spec create_readiness_check(aws_client:aws_client(), create_readiness_check_request()) ->
    {ok, create_readiness_check_response(), tuple()} |
    {error, any()} |
    {error, create_readiness_check_errors(), tuple()}.
create_readiness_check(Client, Input) ->
    create_readiness_check(Client, Input, []).

-spec create_readiness_check(aws_client:aws_client(), create_readiness_check_request(), proplists:proplist()) ->
    {ok, create_readiness_check_response(), tuple()} |
    {error, any()} |
    {error, create_readiness_check_errors(), tuple()}.
create_readiness_check(Client, Input0, Options0) ->
    Method = post,
    Path = ["/readinesschecks"],
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

%% @doc Creates a recovery group in an account.
%%
%% A recovery group corresponds to an application and includes a list of the
%% cells that make up the application.
-spec create_recovery_group(aws_client:aws_client(), create_recovery_group_request()) ->
    {ok, create_recovery_group_response(), tuple()} |
    {error, any()} |
    {error, create_recovery_group_errors(), tuple()}.
create_recovery_group(Client, Input) ->
    create_recovery_group(Client, Input, []).

-spec create_recovery_group(aws_client:aws_client(), create_recovery_group_request(), proplists:proplist()) ->
    {ok, create_recovery_group_response(), tuple()} |
    {error, any()} |
    {error, create_recovery_group_errors(), tuple()}.
create_recovery_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/recoverygroups"],
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

%% @doc Creates a resource set.
%%
%% A resource set is a set of resources of one type that span multiple cells.
%% You can associate a resource set with a readiness check to monitor the
%% resources for failover readiness.
-spec create_resource_set(aws_client:aws_client(), create_resource_set_request()) ->
    {ok, create_resource_set_response(), tuple()} |
    {error, any()} |
    {error, create_resource_set_errors(), tuple()}.
create_resource_set(Client, Input) ->
    create_resource_set(Client, Input, []).

-spec create_resource_set(aws_client:aws_client(), create_resource_set_request(), proplists:proplist()) ->
    {ok, create_resource_set_response(), tuple()} |
    {error, any()} |
    {error, create_resource_set_errors(), tuple()}.
create_resource_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/resourcesets"],
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

%% @doc Delete a cell.
%%
%% When successful, the response code is 204, with no response body.
-spec delete_cell(aws_client:aws_client(), binary() | list(), delete_cell_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cell_errors(), tuple()}.
delete_cell(Client, CellName, Input) ->
    delete_cell(Client, CellName, Input, []).

-spec delete_cell(aws_client:aws_client(), binary() | list(), delete_cell_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cell_errors(), tuple()}.
delete_cell(Client, CellName, Input0, Options0) ->
    Method = delete,
    Path = ["/cells/", aws_util:encode_uri(CellName), ""],
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

%% @doc Deletes cross account readiness authorization.
-spec delete_cross_account_authorization(aws_client:aws_client(), binary() | list(), delete_cross_account_authorization_request()) ->
    {ok, delete_cross_account_authorization_response(), tuple()} |
    {error, any()} |
    {error, delete_cross_account_authorization_errors(), tuple()}.
delete_cross_account_authorization(Client, CrossAccountAuthorization, Input) ->
    delete_cross_account_authorization(Client, CrossAccountAuthorization, Input, []).

-spec delete_cross_account_authorization(aws_client:aws_client(), binary() | list(), delete_cross_account_authorization_request(), proplists:proplist()) ->
    {ok, delete_cross_account_authorization_response(), tuple()} |
    {error, any()} |
    {error, delete_cross_account_authorization_errors(), tuple()}.
delete_cross_account_authorization(Client, CrossAccountAuthorization, Input0, Options0) ->
    Method = delete,
    Path = ["/crossaccountauthorizations/", aws_util:encode_uri(CrossAccountAuthorization), ""],
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

%% @doc Deletes a readiness check.
-spec delete_readiness_check(aws_client:aws_client(), binary() | list(), delete_readiness_check_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_readiness_check_errors(), tuple()}.
delete_readiness_check(Client, ReadinessCheckName, Input) ->
    delete_readiness_check(Client, ReadinessCheckName, Input, []).

-spec delete_readiness_check(aws_client:aws_client(), binary() | list(), delete_readiness_check_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_readiness_check_errors(), tuple()}.
delete_readiness_check(Client, ReadinessCheckName, Input0, Options0) ->
    Method = delete,
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), ""],
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

%% @doc Deletes a recovery group.
-spec delete_recovery_group(aws_client:aws_client(), binary() | list(), delete_recovery_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_recovery_group_errors(), tuple()}.
delete_recovery_group(Client, RecoveryGroupName, Input) ->
    delete_recovery_group(Client, RecoveryGroupName, Input, []).

-spec delete_recovery_group(aws_client:aws_client(), binary() | list(), delete_recovery_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_recovery_group_errors(), tuple()}.
delete_recovery_group(Client, RecoveryGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/recoverygroups/", aws_util:encode_uri(RecoveryGroupName), ""],
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

%% @doc Deletes a resource set.
-spec delete_resource_set(aws_client:aws_client(), binary() | list(), delete_resource_set_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_set_errors(), tuple()}.
delete_resource_set(Client, ResourceSetName, Input) ->
    delete_resource_set(Client, ResourceSetName, Input, []).

-spec delete_resource_set(aws_client:aws_client(), binary() | list(), delete_resource_set_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_set_errors(), tuple()}.
delete_resource_set(Client, ResourceSetName, Input0, Options0) ->
    Method = delete,
    Path = ["/resourcesets/", aws_util:encode_uri(ResourceSetName), ""],
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

%% @doc Gets recommendations about architecture designs for improving
%% resiliency for an application, based on a recovery group.
-spec get_architecture_recommendations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_architecture_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_architecture_recommendations_errors(), tuple()}.
get_architecture_recommendations(Client, RecoveryGroupName)
  when is_map(Client) ->
    get_architecture_recommendations(Client, RecoveryGroupName, #{}, #{}).

-spec get_architecture_recommendations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_architecture_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_architecture_recommendations_errors(), tuple()}.
get_architecture_recommendations(Client, RecoveryGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_architecture_recommendations(Client, RecoveryGroupName, QueryMap, HeadersMap, []).

-spec get_architecture_recommendations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_architecture_recommendations_response(), tuple()} |
    {error, any()} |
    {error, get_architecture_recommendations_errors(), tuple()}.
get_architecture_recommendations(Client, RecoveryGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recoverygroups/", aws_util:encode_uri(RecoveryGroupName), "/architectureRecommendations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a cell including cell name, cell Amazon
%% Resource Name (ARN), ARNs of nested cells for this cell, and a list of
%% those cell ARNs with their associated recovery group ARNs.
-spec get_cell(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cell_response(), tuple()} |
    {error, any()} |
    {error, get_cell_errors(), tuple()}.
get_cell(Client, CellName)
  when is_map(Client) ->
    get_cell(Client, CellName, #{}, #{}).

-spec get_cell(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cell_response(), tuple()} |
    {error, any()} |
    {error, get_cell_errors(), tuple()}.
get_cell(Client, CellName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cell(Client, CellName, QueryMap, HeadersMap, []).

-spec get_cell(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cell_response(), tuple()} |
    {error, any()} |
    {error, get_cell_errors(), tuple()}.
get_cell(Client, CellName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cells/", aws_util:encode_uri(CellName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets readiness for a cell.
%%
%% Aggregates the readiness of all the resources that are associated with the
%% cell into a single value.
-spec get_cell_readiness_summary(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cell_readiness_summary_response(), tuple()} |
    {error, any()} |
    {error, get_cell_readiness_summary_errors(), tuple()}.
get_cell_readiness_summary(Client, CellName)
  when is_map(Client) ->
    get_cell_readiness_summary(Client, CellName, #{}, #{}).

-spec get_cell_readiness_summary(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cell_readiness_summary_response(), tuple()} |
    {error, any()} |
    {error, get_cell_readiness_summary_errors(), tuple()}.
get_cell_readiness_summary(Client, CellName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cell_readiness_summary(Client, CellName, QueryMap, HeadersMap, []).

-spec get_cell_readiness_summary(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cell_readiness_summary_response(), tuple()} |
    {error, any()} |
    {error, get_cell_readiness_summary_errors(), tuple()}.
get_cell_readiness_summary(Client, CellName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cellreadiness/", aws_util:encode_uri(CellName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a readiness check.
-spec get_readiness_check(aws_client:aws_client(), binary() | list()) ->
    {ok, get_readiness_check_response(), tuple()} |
    {error, any()} |
    {error, get_readiness_check_errors(), tuple()}.
get_readiness_check(Client, ReadinessCheckName)
  when is_map(Client) ->
    get_readiness_check(Client, ReadinessCheckName, #{}, #{}).

-spec get_readiness_check(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_readiness_check_response(), tuple()} |
    {error, any()} |
    {error, get_readiness_check_errors(), tuple()}.
get_readiness_check(Client, ReadinessCheckName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_readiness_check(Client, ReadinessCheckName, QueryMap, HeadersMap, []).

-spec get_readiness_check(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_readiness_check_response(), tuple()} |
    {error, any()} |
    {error, get_readiness_check_errors(), tuple()}.
get_readiness_check(Client, ReadinessCheckName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets individual readiness status for a readiness check.
%%
%% To see the overall readiness status for a recovery group, that considers
%% the readiness status for all the readiness checks in the recovery group,
%% use GetRecoveryGroupReadinessSummary.
-spec get_readiness_check_resource_status(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_readiness_check_resource_status_response(), tuple()} |
    {error, any()} |
    {error, get_readiness_check_resource_status_errors(), tuple()}.
get_readiness_check_resource_status(Client, ReadinessCheckName, ResourceIdentifier)
  when is_map(Client) ->
    get_readiness_check_resource_status(Client, ReadinessCheckName, ResourceIdentifier, #{}, #{}).

-spec get_readiness_check_resource_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_readiness_check_resource_status_response(), tuple()} |
    {error, any()} |
    {error, get_readiness_check_resource_status_errors(), tuple()}.
get_readiness_check_resource_status(Client, ReadinessCheckName, ResourceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_readiness_check_resource_status(Client, ReadinessCheckName, ResourceIdentifier, QueryMap, HeadersMap, []).

-spec get_readiness_check_resource_status(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_readiness_check_resource_status_response(), tuple()} |
    {error, any()} |
    {error, get_readiness_check_resource_status_errors(), tuple()}.
get_readiness_check_resource_status(Client, ReadinessCheckName, ResourceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), "/resource/", aws_util:encode_uri(ResourceIdentifier), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the readiness status for an individual readiness check.
%%
%% To see the overall readiness status for a recovery group, that considers
%% the readiness status for all the readiness checks in a recovery group, use
%% GetRecoveryGroupReadinessSummary.
-spec get_readiness_check_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_readiness_check_status_response(), tuple()} |
    {error, any()} |
    {error, get_readiness_check_status_errors(), tuple()}.
get_readiness_check_status(Client, ReadinessCheckName)
  when is_map(Client) ->
    get_readiness_check_status(Client, ReadinessCheckName, #{}, #{}).

-spec get_readiness_check_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_readiness_check_status_response(), tuple()} |
    {error, any()} |
    {error, get_readiness_check_status_errors(), tuple()}.
get_readiness_check_status(Client, ReadinessCheckName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_readiness_check_status(Client, ReadinessCheckName, QueryMap, HeadersMap, []).

-spec get_readiness_check_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_readiness_check_status_response(), tuple()} |
    {error, any()} |
    {error, get_readiness_check_status_errors(), tuple()}.
get_readiness_check_status(Client, ReadinessCheckName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), "/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a recovery group, including a list of the cells
%% that are included in it.
-spec get_recovery_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_recovery_group_response(), tuple()} |
    {error, any()} |
    {error, get_recovery_group_errors(), tuple()}.
get_recovery_group(Client, RecoveryGroupName)
  when is_map(Client) ->
    get_recovery_group(Client, RecoveryGroupName, #{}, #{}).

-spec get_recovery_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_recovery_group_response(), tuple()} |
    {error, any()} |
    {error, get_recovery_group_errors(), tuple()}.
get_recovery_group(Client, RecoveryGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recovery_group(Client, RecoveryGroupName, QueryMap, HeadersMap, []).

-spec get_recovery_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_recovery_group_response(), tuple()} |
    {error, any()} |
    {error, get_recovery_group_errors(), tuple()}.
get_recovery_group(Client, RecoveryGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recoverygroups/", aws_util:encode_uri(RecoveryGroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays a summary of information about a recovery group's
%% readiness status.
%%
%% Includes the readiness checks for resources in the recovery group and the
%% readiness status of each one.
-spec get_recovery_group_readiness_summary(aws_client:aws_client(), binary() | list()) ->
    {ok, get_recovery_group_readiness_summary_response(), tuple()} |
    {error, any()} |
    {error, get_recovery_group_readiness_summary_errors(), tuple()}.
get_recovery_group_readiness_summary(Client, RecoveryGroupName)
  when is_map(Client) ->
    get_recovery_group_readiness_summary(Client, RecoveryGroupName, #{}, #{}).

-spec get_recovery_group_readiness_summary(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_recovery_group_readiness_summary_response(), tuple()} |
    {error, any()} |
    {error, get_recovery_group_readiness_summary_errors(), tuple()}.
get_recovery_group_readiness_summary(Client, RecoveryGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recovery_group_readiness_summary(Client, RecoveryGroupName, QueryMap, HeadersMap, []).

-spec get_recovery_group_readiness_summary(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_recovery_group_readiness_summary_response(), tuple()} |
    {error, any()} |
    {error, get_recovery_group_readiness_summary_errors(), tuple()}.
get_recovery_group_readiness_summary(Client, RecoveryGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recoverygroupreadiness/", aws_util:encode_uri(RecoveryGroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the details about a resource set, including a list of the
%% resources in the set.
-spec get_resource_set(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_set_response(), tuple()} |
    {error, any()} |
    {error, get_resource_set_errors(), tuple()}.
get_resource_set(Client, ResourceSetName)
  when is_map(Client) ->
    get_resource_set(Client, ResourceSetName, #{}, #{}).

-spec get_resource_set(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_set_response(), tuple()} |
    {error, any()} |
    {error, get_resource_set_errors(), tuple()}.
get_resource_set(Client, ResourceSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_set(Client, ResourceSetName, QueryMap, HeadersMap, []).

-spec get_resource_set(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_set_response(), tuple()} |
    {error, any()} |
    {error, get_resource_set_errors(), tuple()}.
get_resource_set(Client, ResourceSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcesets/", aws_util:encode_uri(ResourceSetName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the cells for an account.
-spec list_cells(aws_client:aws_client()) ->
    {ok, list_cells_response(), tuple()} |
    {error, any()} |
    {error, list_cells_errors(), tuple()}.
list_cells(Client)
  when is_map(Client) ->
    list_cells(Client, #{}, #{}).

-spec list_cells(aws_client:aws_client(), map(), map()) ->
    {ok, list_cells_response(), tuple()} |
    {error, any()} |
    {error, list_cells_errors(), tuple()}.
list_cells(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cells(Client, QueryMap, HeadersMap, []).

-spec list_cells(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_cells_response(), tuple()} |
    {error, any()} |
    {error, list_cells_errors(), tuple()}.
list_cells(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cells"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the cross-account readiness authorizations that are in place
%% for an account.
-spec list_cross_account_authorizations(aws_client:aws_client()) ->
    {ok, list_cross_account_authorizations_response(), tuple()} |
    {error, any()} |
    {error, list_cross_account_authorizations_errors(), tuple()}.
list_cross_account_authorizations(Client)
  when is_map(Client) ->
    list_cross_account_authorizations(Client, #{}, #{}).

-spec list_cross_account_authorizations(aws_client:aws_client(), map(), map()) ->
    {ok, list_cross_account_authorizations_response(), tuple()} |
    {error, any()} |
    {error, list_cross_account_authorizations_errors(), tuple()}.
list_cross_account_authorizations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cross_account_authorizations(Client, QueryMap, HeadersMap, []).

-spec list_cross_account_authorizations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_cross_account_authorizations_response(), tuple()} |
    {error, any()} |
    {error, list_cross_account_authorizations_errors(), tuple()}.
list_cross_account_authorizations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/crossaccountauthorizations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the readiness checks for an account.
-spec list_readiness_checks(aws_client:aws_client()) ->
    {ok, list_readiness_checks_response(), tuple()} |
    {error, any()} |
    {error, list_readiness_checks_errors(), tuple()}.
list_readiness_checks(Client)
  when is_map(Client) ->
    list_readiness_checks(Client, #{}, #{}).

-spec list_readiness_checks(aws_client:aws_client(), map(), map()) ->
    {ok, list_readiness_checks_response(), tuple()} |
    {error, any()} |
    {error, list_readiness_checks_errors(), tuple()}.
list_readiness_checks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_readiness_checks(Client, QueryMap, HeadersMap, []).

-spec list_readiness_checks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_readiness_checks_response(), tuple()} |
    {error, any()} |
    {error, list_readiness_checks_errors(), tuple()}.
list_readiness_checks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/readinesschecks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the recovery groups in an account.
-spec list_recovery_groups(aws_client:aws_client()) ->
    {ok, list_recovery_groups_response(), tuple()} |
    {error, any()} |
    {error, list_recovery_groups_errors(), tuple()}.
list_recovery_groups(Client)
  when is_map(Client) ->
    list_recovery_groups(Client, #{}, #{}).

-spec list_recovery_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_recovery_groups_response(), tuple()} |
    {error, any()} |
    {error, list_recovery_groups_errors(), tuple()}.
list_recovery_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recovery_groups(Client, QueryMap, HeadersMap, []).

-spec list_recovery_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_recovery_groups_response(), tuple()} |
    {error, any()} |
    {error, list_recovery_groups_errors(), tuple()}.
list_recovery_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recoverygroups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resource sets in an account.
-spec list_resource_sets(aws_client:aws_client()) ->
    {ok, list_resource_sets_response(), tuple()} |
    {error, any()} |
    {error, list_resource_sets_errors(), tuple()}.
list_resource_sets(Client)
  when is_map(Client) ->
    list_resource_sets(Client, #{}, #{}).

-spec list_resource_sets(aws_client:aws_client(), map(), map()) ->
    {ok, list_resource_sets_response(), tuple()} |
    {error, any()} |
    {error, list_resource_sets_errors(), tuple()}.
list_resource_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_sets(Client, QueryMap, HeadersMap, []).

-spec list_resource_sets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_sets_response(), tuple()} |
    {error, any()} |
    {error, list_resource_sets_errors(), tuple()}.
list_resource_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcesets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all readiness rules, or lists the readiness rules for a
%% specific resource type.
-spec list_rules(aws_client:aws_client()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client)
  when is_map(Client) ->
    list_rules(Client, #{}, #{}).

-spec list_rules(aws_client:aws_client(), map(), map()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rules(Client, QueryMap, HeadersMap, []).

-spec list_rules(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for a resource.
-spec list_tags_for_resources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resources_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resources_errors(), tuple()}.
list_tags_for_resources(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resources(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resources_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resources_errors(), tuple()}.
list_tags_for_resources(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resources(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resources_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resources_errors(), tuple()}.
list_tags_for_resources(Client, ResourceArn, QueryMap, HeadersMap, Options0)
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

%% @doc Adds a tag to a resource.
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

%% @doc Removes a tag from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
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

%% @doc Updates a cell to replace the list of nested cells with a new list of
%% nested cells.
-spec update_cell(aws_client:aws_client(), binary() | list(), update_cell_request()) ->
    {ok, update_cell_response(), tuple()} |
    {error, any()} |
    {error, update_cell_errors(), tuple()}.
update_cell(Client, CellName, Input) ->
    update_cell(Client, CellName, Input, []).

-spec update_cell(aws_client:aws_client(), binary() | list(), update_cell_request(), proplists:proplist()) ->
    {ok, update_cell_response(), tuple()} |
    {error, any()} |
    {error, update_cell_errors(), tuple()}.
update_cell(Client, CellName, Input0, Options0) ->
    Method = put,
    Path = ["/cells/", aws_util:encode_uri(CellName), ""],
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

%% @doc Updates a readiness check.
-spec update_readiness_check(aws_client:aws_client(), binary() | list(), update_readiness_check_request()) ->
    {ok, update_readiness_check_response(), tuple()} |
    {error, any()} |
    {error, update_readiness_check_errors(), tuple()}.
update_readiness_check(Client, ReadinessCheckName, Input) ->
    update_readiness_check(Client, ReadinessCheckName, Input, []).

-spec update_readiness_check(aws_client:aws_client(), binary() | list(), update_readiness_check_request(), proplists:proplist()) ->
    {ok, update_readiness_check_response(), tuple()} |
    {error, any()} |
    {error, update_readiness_check_errors(), tuple()}.
update_readiness_check(Client, ReadinessCheckName, Input0, Options0) ->
    Method = put,
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), ""],
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

%% @doc Updates a recovery group.
-spec update_recovery_group(aws_client:aws_client(), binary() | list(), update_recovery_group_request()) ->
    {ok, update_recovery_group_response(), tuple()} |
    {error, any()} |
    {error, update_recovery_group_errors(), tuple()}.
update_recovery_group(Client, RecoveryGroupName, Input) ->
    update_recovery_group(Client, RecoveryGroupName, Input, []).

-spec update_recovery_group(aws_client:aws_client(), binary() | list(), update_recovery_group_request(), proplists:proplist()) ->
    {ok, update_recovery_group_response(), tuple()} |
    {error, any()} |
    {error, update_recovery_group_errors(), tuple()}.
update_recovery_group(Client, RecoveryGroupName, Input0, Options0) ->
    Method = put,
    Path = ["/recoverygroups/", aws_util:encode_uri(RecoveryGroupName), ""],
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

%% @doc Updates a resource set.
-spec update_resource_set(aws_client:aws_client(), binary() | list(), update_resource_set_request()) ->
    {ok, update_resource_set_response(), tuple()} |
    {error, any()} |
    {error, update_resource_set_errors(), tuple()}.
update_resource_set(Client, ResourceSetName, Input) ->
    update_resource_set(Client, ResourceSetName, Input, []).

-spec update_resource_set(aws_client:aws_client(), binary() | list(), update_resource_set_request(), proplists:proplist()) ->
    {ok, update_resource_set_response(), tuple()} |
    {error, any()} |
    {error, update_resource_set_errors(), tuple()}.
update_resource_set(Client, ResourceSetName, Input0, Options0) ->
    Method = put,
    Path = ["/resourcesets/", aws_util:encode_uri(ResourceSetName), ""],
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
    Client1 = Client#{service => <<"route53-recovery-readiness">>},
    Host = build_host(<<"route53-recovery-readiness">>, Client1),
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
