%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Identity and Access Management Access Analyzer helps you to set,
%% verify, and refine your IAM policies by providing
%% a suite of capabilities.
%%
%% Its features include findings for external and unused access,
%% basic and custom policy checks for validating policies, and policy
%% generation to generate
%% fine-grained policies. To start using IAM Access Analyzer to identify
%% external or unused access,
%% you first need to create an analyzer.
%%
%% External access analyzers help identify potential risks
%% of accessing resources by enabling you to identify any resource policies
%% that grant access
%% to an external principal. It does this by using logic-based reasoning to
%% analyze
%% resource-based policies in your Amazon Web Services environment. An
%% external principal can be another
%% Amazon Web Services account, a root user, an IAM user or role, a federated
%% user, an Amazon Web Services service, or an
%% anonymous user. You can also use IAM Access Analyzer to preview public and
%% cross-account access
%% to your resources before deploying permissions changes.
%%
%% Unused access analyzers help identify potential
%% identity access risks by enabling you to identify unused IAM roles, unused
%% access keys,
%% unused console passwords, and IAM principals with unused service and
%% action-level
%% permissions.
%%
%% Beyond findings, IAM Access Analyzer provides basic and custom policy
%% checks to validate IAM
%% policies before deploying permissions changes. You can use policy
%% generation to refine
%% permissions by attaching a policy generated using access activity logged
%% in CloudTrail logs.
%%
%% This guide describes the IAM Access Analyzer operations that you can call
%% programmatically.
%% For general information about IAM Access Analyzer, see Identity and Access
%% Management Access Analyzer:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html
%% in the
%% IAM User Guide.
-module(aws_accessanalyzer).

-export([apply_archive_rule/2,
         apply_archive_rule/3,
         cancel_policy_generation/3,
         cancel_policy_generation/4,
         check_access_not_granted/2,
         check_access_not_granted/3,
         check_no_new_access/2,
         check_no_new_access/3,
         check_no_public_access/2,
         check_no_public_access/3,
         create_access_preview/2,
         create_access_preview/3,
         create_analyzer/2,
         create_analyzer/3,
         create_archive_rule/3,
         create_archive_rule/4,
         delete_analyzer/3,
         delete_analyzer/4,
         delete_archive_rule/4,
         delete_archive_rule/5,
         generate_finding_recommendation/3,
         generate_finding_recommendation/4,
         get_access_preview/3,
         get_access_preview/5,
         get_access_preview/6,
         get_analyzed_resource/3,
         get_analyzed_resource/5,
         get_analyzed_resource/6,
         get_analyzer/2,
         get_analyzer/4,
         get_analyzer/5,
         get_archive_rule/3,
         get_archive_rule/5,
         get_archive_rule/6,
         get_finding/3,
         get_finding/5,
         get_finding/6,
         get_finding_recommendation/3,
         get_finding_recommendation/5,
         get_finding_recommendation/6,
         get_finding_v2/3,
         get_finding_v2/5,
         get_finding_v2/6,
         get_findings_statistics/2,
         get_findings_statistics/3,
         get_generated_policy/2,
         get_generated_policy/4,
         get_generated_policy/5,
         list_access_preview_findings/3,
         list_access_preview_findings/4,
         list_access_previews/2,
         list_access_previews/4,
         list_access_previews/5,
         list_analyzed_resources/2,
         list_analyzed_resources/3,
         list_analyzers/1,
         list_analyzers/3,
         list_analyzers/4,
         list_archive_rules/2,
         list_archive_rules/4,
         list_archive_rules/5,
         list_findings/2,
         list_findings/3,
         list_findings_v2/2,
         list_findings_v2/3,
         list_policy_generations/1,
         list_policy_generations/3,
         list_policy_generations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_policy_generation/2,
         start_policy_generation/3,
         start_resource_scan/2,
         start_resource_scan/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_analyzer/3,
         update_analyzer/4,
         update_archive_rule/4,
         update_archive_rule/5,
         update_findings/2,
         update_findings/3,
         validate_policy/2,
         validate_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% trail_properties() :: #{
%%   <<"allRegions">> => [boolean()],
%%   <<"cloudTrailArn">> => string(),
%%   <<"regions">> => list([string()]())
%% }
-type trail_properties() :: #{binary() => any()}.


%% Example:
%% update_analyzer_request() :: #{
%%   <<"configuration">> => list()
%% }
-type update_analyzer_request() :: #{binary() => any()}.


%% Example:
%% cloud_trail_details() :: #{
%%   <<"accessRole">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"trails">> => list(trail()())
%% }
-type cloud_trail_details() :: #{binary() => any()}.


%% Example:
%% update_analyzer_response() :: #{
%%   <<"configuration">> => list()
%% }
-type update_analyzer_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> => map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% reason_summary() :: #{
%%   <<"description">> => [string()],
%%   <<"statementId">> => [string()],
%%   <<"statementIndex">> => [integer()]
%% }
-type reason_summary() :: #{binary() => any()}.


%% Example:
%% get_findings_statistics_request() :: #{
%%   <<"analyzerArn">> := string()
%% }
-type get_findings_statistics_request() :: #{binary() => any()}.


%% Example:
%% status_reason() :: #{
%%   <<"code">> => string()
%% }
-type status_reason() :: #{binary() => any()}.


%% Example:
%% vpc_configuration() :: #{
%%   <<"vpcId">> => string()
%% }
-type vpc_configuration() :: #{binary() => any()}.


%% Example:
%% analysis_rule() :: #{
%%   <<"exclusions">> => list(analysis_rule_criteria()())
%% }
-type analysis_rule() :: #{binary() => any()}.


%% Example:
%% unused_access_type_statistics() :: #{
%%   <<"total">> => [integer()],
%%   <<"unusedAccessType">> => [string()]
%% }
-type unused_access_type_statistics() :: #{binary() => any()}.


%% Example:
%% check_no_public_access_response() :: #{
%%   <<"message">> => [string()],
%%   <<"reasons">> => list(reason_summary()()),
%%   <<"result">> => string()
%% }
-type check_no_public_access_response() :: #{binary() => any()}.


%% Example:
%% delete_archive_rule_request() :: #{
%%   <<"clientToken">> => [string()]
%% }
-type delete_archive_rule_request() :: #{binary() => any()}.


%% Example:
%% finding_aggregation_account_details() :: #{
%%   <<"account">> => [string()],
%%   <<"details">> => map(),
%%   <<"numberOfActiveFindings">> => [integer()]
%% }
-type finding_aggregation_account_details() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_access_previews_response() :: #{
%%   <<"accessPreviews">> := list(access_preview_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_access_previews_response() :: #{binary() => any()}.


%% Example:
%% unused_iam_user_access_key_details() :: #{
%%   <<"accessKeyId">> => [string()],
%%   <<"lastAccessed">> => non_neg_integer()
%% }
-type unused_iam_user_access_key_details() :: #{binary() => any()}.


%% Example:
%% kms_grant_constraints() :: #{
%%   <<"encryptionContextEquals">> => map(),
%%   <<"encryptionContextSubset">> => map()
%% }
-type kms_grant_constraints() :: #{binary() => any()}.


%% Example:
%% generated_policy_properties() :: #{
%%   <<"cloudTrailProperties">> => cloud_trail_properties(),
%%   <<"isComplete">> => [boolean()],
%%   <<"principalArn">> => string()
%% }
-type generated_policy_properties() :: #{binary() => any()}.


%% Example:
%% finding_summary() :: #{
%%   <<"action">> => list([string()]()),
%%   <<"analyzedAt">> => non_neg_integer(),
%%   <<"condition">> => map(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"error">> => [string()],
%%   <<"id">> => string(),
%%   <<"isPublic">> => [boolean()],
%%   <<"principal">> => map(),
%%   <<"resource">> => [string()],
%%   <<"resourceControlPolicyRestriction">> => string(),
%%   <<"resourceOwnerAccount">> => [string()],
%%   <<"resourceType">> => string(),
%%   <<"sources">> => list(finding_source()()),
%%   <<"status">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type finding_summary() :: #{binary() => any()}.


%% Example:
%% list_access_previews_request() :: #{
%%   <<"analyzerArn">> := string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_access_previews_request() :: #{binary() => any()}.


%% Example:
%% sns_topic_configuration() :: #{
%%   <<"topicPolicy">> => string()
%% }
-type sns_topic_configuration() :: #{binary() => any()}.


%% Example:
%% unused_access_configuration() :: #{
%%   <<"analysisRule">> => analysis_rule(),
%%   <<"unusedAccessAge">> => [integer()]
%% }
-type unused_access_configuration() :: #{binary() => any()}.


%% Example:
%% s3_bucket_acl_grant_configuration() :: #{
%%   <<"grantee">> => list(),
%%   <<"permission">> => string()
%% }
-type s3_bucket_acl_grant_configuration() :: #{binary() => any()}.


%% Example:
%% get_findings_statistics_response() :: #{
%%   <<"findingsStatistics">> => list(list()()),
%%   <<"lastUpdatedAt">> => non_neg_integer()
%% }
-type get_findings_statistics_response() :: #{binary() => any()}.


%% Example:
%% get_finding_recommendation_response() :: #{
%%   <<"completedAt">> => non_neg_integer(),
%%   <<"error">> => recommendation_error(),
%%   <<"nextToken">> => string(),
%%   <<"recommendationType">> => string(),
%%   <<"recommendedSteps">> => list(list()()),
%%   <<"resourceArn">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type get_finding_recommendation_response() :: #{binary() => any()}.


%% Example:
%% analyzed_resource() :: #{
%%   <<"actions">> => list([string()]()),
%%   <<"analyzedAt">> => non_neg_integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"error">> => [string()],
%%   <<"isPublic">> => [boolean()],
%%   <<"resourceArn">> => string(),
%%   <<"resourceOwnerAccount">> => [string()],
%%   <<"resourceType">> => string(),
%%   <<"sharedVia">> => list([string()]()),
%%   <<"status">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type analyzed_resource() :: #{binary() => any()}.


%% Example:
%% get_analyzer_response() :: #{
%%   <<"analyzer">> => analyzer_summary()
%% }
-type get_analyzer_response() :: #{binary() => any()}.


%% Example:
%% list_findings_response() :: #{
%%   <<"findings">> => list(finding_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_findings_response() :: #{binary() => any()}.


%% Example:
%% create_analyzer_request() :: #{
%%   <<"analyzerName">> => string(),
%%   <<"archiveRules">> => list(inline_archive_rule()()),
%%   <<"clientToken">> => [string()],
%%   <<"configuration">> => list(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type create_analyzer_request() :: #{binary() => any()}.


%% Example:
%% unused_iam_user_password_details() :: #{
%%   <<"lastAccessed">> => non_neg_integer()
%% }
-type unused_iam_user_password_details() :: #{binary() => any()}.


%% Example:
%% unused_iam_role_details() :: #{
%%   <<"lastAccessed">> => non_neg_integer()
%% }
-type unused_iam_role_details() :: #{binary() => any()}.


%% Example:
%% unused_permission_details() :: #{
%%   <<"actions">> => list(unused_action()()),
%%   <<"lastAccessed">> => non_neg_integer(),
%%   <<"serviceNamespace">> => [string()]
%% }
-type unused_permission_details() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> => list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_analyzed_resource_response() :: #{
%%   <<"resource">> => analyzed_resource()
%% }
-type get_analyzed_resource_response() :: #{binary() => any()}.


%% Example:
%% get_finding_v2_request() :: #{
%%   <<"analyzerArn">> := string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type get_finding_v2_request() :: #{binary() => any()}.


%% Example:
%% s3_express_directory_access_point_configuration() :: #{
%%   <<"accessPointPolicy">> => string(),
%%   <<"networkOrigin">> => list()
%% }
-type s3_express_directory_access_point_configuration() :: #{binary() => any()}.


%% Example:
%% check_no_new_access_request() :: #{
%%   <<"existingPolicyDocument">> := string(),
%%   <<"newPolicyDocument">> := string(),
%%   <<"policyType">> := string()
%% }
-type check_no_new_access_request() :: #{binary() => any()}.


%% Example:
%% position() :: #{
%%   <<"column">> => [integer()],
%%   <<"line">> => [integer()],
%%   <<"offset">> => [integer()]
%% }
-type position() :: #{binary() => any()}.


%% Example:
%% delete_analyzer_request() :: #{
%%   <<"clientToken">> => [string()]
%% }
-type delete_analyzer_request() :: #{binary() => any()}.


%% Example:
%% list_analyzers_response() :: #{
%%   <<"analyzers">> => list(analyzer_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_analyzers_response() :: #{binary() => any()}.


%% Example:
%% analysis_rule_criteria() :: #{
%%   <<"accountIds">> => list([string()]()),
%%   <<"resourceTags">> => list(map()())
%% }
-type analysis_rule_criteria() :: #{binary() => any()}.


%% Example:
%% check_access_not_granted_response() :: #{
%%   <<"message">> => [string()],
%%   <<"reasons">> => list(reason_summary()()),
%%   <<"result">> => string()
%% }
-type check_access_not_granted_response() :: #{binary() => any()}.

%% Example:
%% cancel_policy_generation_response() :: #{}
-type cancel_policy_generation_response() :: #{}.


%% Example:
%% list_findings_v2_request() :: #{
%%   <<"analyzerArn">> := string(),
%%   <<"filter">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sort">> => sort_criteria()
%% }
-type list_findings_v2_request() :: #{binary() => any()}.


%% Example:
%% list_analyzed_resources_request() :: #{
%%   <<"analyzerArn">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"resourceType">> => string()
%% }
-type list_analyzed_resources_request() :: #{binary() => any()}.


%% Example:
%% access_preview_status_reason() :: #{
%%   <<"code">> => string()
%% }
-type access_preview_status_reason() :: #{binary() => any()}.


%% Example:
%% list_archive_rules_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_archive_rules_request() :: #{binary() => any()}.


%% Example:
%% span() :: #{
%%   <<"end">> => position(),
%%   <<"start">> => position()
%% }
-type span() :: #{binary() => any()}.


%% Example:
%% finding_source() :: #{
%%   <<"detail">> => finding_source_detail(),
%%   <<"type">> => string()
%% }
-type finding_source() :: #{binary() => any()}.


%% Example:
%% list_analyzed_resources_response() :: #{
%%   <<"analyzedResources">> => list(analyzed_resource_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_analyzed_resources_response() :: #{binary() => any()}.


%% Example:
%% access_preview_finding() :: #{
%%   <<"action">> => list([string()]()),
%%   <<"changeType">> => string(),
%%   <<"condition">> => map(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"error">> => [string()],
%%   <<"existingFindingId">> => string(),
%%   <<"existingFindingStatus">> => string(),
%%   <<"id">> => string(),
%%   <<"isPublic">> => [boolean()],
%%   <<"principal">> => map(),
%%   <<"resource">> => [string()],
%%   <<"resourceControlPolicyRestriction">> => string(),
%%   <<"resourceOwnerAccount">> => [string()],
%%   <<"resourceType">> => string(),
%%   <<"sources">> => list(finding_source()()),
%%   <<"status">> => string()
%% }
-type access_preview_finding() :: #{binary() => any()}.


%% Example:
%% archive_rule_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"filter">> => map(),
%%   <<"ruleName">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type archive_rule_summary() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% external_access_findings_statistics() :: #{
%%   <<"resourceTypeStatistics">> => map(),
%%   <<"totalActiveFindings">> => [integer()],
%%   <<"totalArchivedFindings">> => [integer()],
%%   <<"totalResolvedFindings">> => [integer()]
%% }
-type external_access_findings_statistics() :: #{binary() => any()}.


%% Example:
%% create_access_preview_request() :: #{
%%   <<"analyzerArn">> := string(),
%%   <<"clientToken">> => [string()],
%%   <<"configurations">> := map()
%% }
-type create_access_preview_request() :: #{binary() => any()}.


%% Example:
%% policy_generation_details() :: #{
%%   <<"principalArn">> => string()
%% }
-type policy_generation_details() :: #{binary() => any()}.


%% Example:
%% ecr_repository_configuration() :: #{
%%   <<"repositoryPolicy">> => string()
%% }
-type ecr_repository_configuration() :: #{binary() => any()}.


%% Example:
%% get_generated_policy_response() :: #{
%%   <<"generatedPolicyResult">> := generated_policy_result(),
%%   <<"jobDetails">> := job_details()
%% }
-type get_generated_policy_response() :: #{binary() => any()}.


%% Example:
%% check_no_public_access_request() :: #{
%%   <<"policyDocument">> := string(),
%%   <<"resourceType">> := string()
%% }
-type check_no_public_access_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% validate_policy_finding() :: #{
%%   <<"findingDetails">> => [string()],
%%   <<"findingType">> => string(),
%%   <<"issueCode">> => string(),
%%   <<"learnMoreLink">> => string(),
%%   <<"locations">> => list(location()())
%% }
-type validate_policy_finding() :: #{binary() => any()}.


%% Example:
%% list_archive_rules_response() :: #{
%%   <<"archiveRules">> => list(archive_rule_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_archive_rules_response() :: #{binary() => any()}.


%% Example:
%% get_generated_policy_request() :: #{
%%   <<"includeResourcePlaceholders">> => [boolean()],
%%   <<"includeServiceLevelTemplate">> => [boolean()]
%% }
-type get_generated_policy_request() :: #{binary() => any()}.


%% Example:
%% analyzed_resource_summary() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"resourceOwnerAccount">> => [string()],
%%   <<"resourceType">> => string()
%% }
-type analyzed_resource_summary() :: #{binary() => any()}.


%% Example:
%% finding() :: #{
%%   <<"action">> => list([string()]()),
%%   <<"analyzedAt">> => non_neg_integer(),
%%   <<"condition">> => map(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"error">> => [string()],
%%   <<"id">> => string(),
%%   <<"isPublic">> => [boolean()],
%%   <<"principal">> => map(),
%%   <<"resource">> => [string()],
%%   <<"resourceControlPolicyRestriction">> => string(),
%%   <<"resourceOwnerAccount">> => [string()],
%%   <<"resourceType">> => string(),
%%   <<"sources">> => list(finding_source()()),
%%   <<"status">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type finding() :: #{binary() => any()}.


%% Example:
%% kms_grant_configuration() :: #{
%%   <<"constraints">> => kms_grant_constraints(),
%%   <<"granteePrincipal">> => string(),
%%   <<"issuingAccount">> => string(),
%%   <<"operations">> => list(string()()),
%%   <<"retiringPrincipal">> => string()
%% }
-type kms_grant_configuration() :: #{binary() => any()}.


%% Example:
%% check_no_new_access_response() :: #{
%%   <<"message">> => [string()],
%%   <<"reasons">> => list(reason_summary()()),
%%   <<"result">> => string()
%% }
-type check_no_new_access_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_findings_request() :: #{
%%   <<"analyzerArn">> => string(),
%%   <<"filter">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"sort">> => sort_criteria()
%% }
-type list_findings_request() :: #{binary() => any()}.


%% Example:
%% list_policy_generations_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"principalArn">> => string()
%% }
-type list_policy_generations_request() :: #{binary() => any()}.


%% Example:
%% generated_policy_result() :: #{
%%   <<"generatedPolicies">> => list(generated_policy()()),
%%   <<"properties">> => generated_policy_properties()
%% }
-type generated_policy_result() :: #{binary() => any()}.


%% Example:
%% iam_role_configuration() :: #{
%%   <<"trustPolicy">> => string()
%% }
-type iam_role_configuration() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% recommendation_error() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type recommendation_error() :: #{binary() => any()}.


%% Example:
%% location() :: #{
%%   <<"path">> => list(list()()),
%%   <<"span">> => span()
%% }
-type location() :: #{binary() => any()}.


%% Example:
%% policy_generation() :: #{
%%   <<"completedOn">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"principalArn">> => string(),
%%   <<"startedOn">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type policy_generation() :: #{binary() => any()}.


%% Example:
%% resource_type_details() :: #{
%%   <<"totalActiveCrossAccount">> => [integer()],
%%   <<"totalActivePublic">> => [integer()]
%% }
-type resource_type_details() :: #{binary() => any()}.


%% Example:
%% apply_archive_rule_request() :: #{
%%   <<"analyzerArn">> => string(),
%%   <<"clientToken">> => [string()],
%%   <<"ruleName">> => string()
%% }
-type apply_archive_rule_request() :: #{binary() => any()}.


%% Example:
%% list_policy_generations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"policyGenerations">> := list(policy_generation()())
%% }
-type list_policy_generations_response() :: #{binary() => any()}.


%% Example:
%% get_finding_recommendation_request() :: #{
%%   <<"analyzerArn">> := string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type get_finding_recommendation_request() :: #{binary() => any()}.


%% Example:
%% generate_finding_recommendation_request() :: #{
%%   <<"analyzerArn">> := string()
%% }
-type generate_finding_recommendation_request() :: #{binary() => any()}.


%% Example:
%% kms_key_configuration() :: #{
%%   <<"grants">> => list(kms_grant_configuration()()),
%%   <<"keyPolicies">> => map()
%% }
-type kms_key_configuration() :: #{binary() => any()}.


%% Example:
%% job_details() :: #{
%%   <<"completedOn">> => non_neg_integer(),
%%   <<"jobError">> => job_error(),
%%   <<"jobId">> => string(),
%%   <<"startedOn">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type job_details() :: #{binary() => any()}.


%% Example:
%% inline_archive_rule() :: #{
%%   <<"filter">> => map(),
%%   <<"ruleName">> => string()
%% }
-type inline_archive_rule() :: #{binary() => any()}.


%% Example:
%% ebs_snapshot_configuration() :: #{
%%   <<"groups">> => list(string()()),
%%   <<"kmsKeyId">> => string(),
%%   <<"userIds">> => list(string()())
%% }
-type ebs_snapshot_configuration() :: #{binary() => any()}.


%% Example:
%% dynamodb_table_configuration() :: #{
%%   <<"tablePolicy">> => string()
%% }
-type dynamodb_table_configuration() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% efs_file_system_configuration() :: #{
%%   <<"fileSystemPolicy">> => string()
%% }
-type efs_file_system_configuration() :: #{binary() => any()}.


%% Example:
%% get_finding_request() :: #{
%%   <<"analyzerArn">> => string()
%% }
-type get_finding_request() :: #{binary() => any()}.


%% Example:
%% validate_policy_response() :: #{
%%   <<"findings">> := list(validate_policy_finding()()),
%%   <<"nextToken">> => string()
%% }
-type validate_policy_response() :: #{binary() => any()}.


%% Example:
%% s3_express_directory_bucket_configuration() :: #{
%%   <<"accessPoints">> => map(),
%%   <<"bucketPolicy">> => string()
%% }
-type s3_express_directory_bucket_configuration() :: #{binary() => any()}.


%% Example:
%% create_access_preview_response() :: #{
%%   <<"id">> := string()
%% }
-type create_access_preview_response() :: #{binary() => any()}.


%% Example:
%% start_policy_generation_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"cloudTrailDetails">> => cloud_trail_details(),
%%   <<"policyGenerationDetails">> := policy_generation_details()
%% }
-type start_policy_generation_request() :: #{binary() => any()}.


%% Example:
%% external_access_details() :: #{
%%   <<"action">> => list([string()]()),
%%   <<"condition">> => map(),
%%   <<"isPublic">> => [boolean()],
%%   <<"principal">> => map(),
%%   <<"resourceControlPolicyRestriction">> => string(),
%%   <<"sources">> => list(finding_source()())
%% }
-type external_access_details() :: #{binary() => any()}.


%% Example:
%% get_finding_response() :: #{
%%   <<"finding">> => finding()
%% }
-type get_finding_response() :: #{binary() => any()}.


%% Example:
%% sort_criteria() :: #{
%%   <<"attributeName">> => [string()],
%%   <<"orderBy">> => string()
%% }
-type sort_criteria() :: #{binary() => any()}.


%% Example:
%% cloud_trail_properties() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"trailProperties">> => list(trail_properties()())
%% }
-type cloud_trail_properties() :: #{binary() => any()}.


%% Example:
%% list_access_preview_findings_request() :: #{
%%   <<"analyzerArn">> := string(),
%%   <<"filter">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_access_preview_findings_request() :: #{binary() => any()}.


%% Example:
%% unprocessable_entity_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type unprocessable_entity_exception() :: #{binary() => any()}.


%% Example:
%% substring() :: #{
%%   <<"length">> => [integer()],
%%   <<"start">> => [integer()]
%% }
-type substring() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% create_analyzer_response() :: #{
%%   <<"arn">> => string()
%% }
-type create_analyzer_response() :: #{binary() => any()}.


%% Example:
%% unused_permissions_recommended_step() :: #{
%%   <<"existingPolicyId">> => [string()],
%%   <<"policyUpdatedAt">> => non_neg_integer(),
%%   <<"recommendedAction">> => string(),
%%   <<"recommendedPolicy">> => [string()]
%% }
-type unused_permissions_recommended_step() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% validate_policy_request() :: #{
%%   <<"locale">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"policyDocument">> := string(),
%%   <<"policyType">> := string(),
%%   <<"validatePolicyResourceType">> => string()
%% }
-type validate_policy_request() :: #{binary() => any()}.

%% Example:
%% get_analyzer_request() :: #{}
-type get_analyzer_request() :: #{}.


%% Example:
%% get_analyzed_resource_request() :: #{
%%   <<"analyzerArn">> => string(),
%%   <<"resourceArn">> => string()
%% }
-type get_analyzed_resource_request() :: #{binary() => any()}.


%% Example:
%% unused_access_findings_statistics() :: #{
%%   <<"topAccounts">> => list(finding_aggregation_account_details()()),
%%   <<"totalActiveFindings">> => [integer()],
%%   <<"totalArchivedFindings">> => [integer()],
%%   <<"totalResolvedFindings">> => [integer()],
%%   <<"unusedAccessTypeStatistics">> => list(unused_access_type_statistics()())
%% }
-type unused_access_findings_statistics() :: #{binary() => any()}.


%% Example:
%% s3_bucket_configuration() :: #{
%%   <<"accessPoints">> => map(),
%%   <<"bucketAclGrants">> => list(s3_bucket_acl_grant_configuration()()),
%%   <<"bucketPolicy">> => string(),
%%   <<"bucketPublicAccessBlock">> => s3_public_access_block_configuration()
%% }
-type s3_bucket_configuration() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% update_findings_request() :: #{
%%   <<"analyzerArn">> => string(),
%%   <<"clientToken">> => [string()],
%%   <<"ids">> => list(string()()),
%%   <<"resourceArn">> => string(),
%%   <<"status">> => string()
%% }
-type update_findings_request() :: #{binary() => any()}.


%% Example:
%% get_access_preview_request() :: #{
%%   <<"analyzerArn">> := string()
%% }
-type get_access_preview_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% finding_source_detail() :: #{
%%   <<"accessPointAccount">> => [string()],
%%   <<"accessPointArn">> => [string()]
%% }
-type finding_source_detail() :: #{binary() => any()}.


%% Example:
%% access() :: #{
%%   <<"actions">> => list(string()()),
%%   <<"resources">> => list(string()())
%% }
-type access() :: #{binary() => any()}.


%% Example:
%% rds_db_snapshot_configuration() :: #{
%%   <<"attributes">> => map(),
%%   <<"kmsKeyId">> => string()
%% }
-type rds_db_snapshot_configuration() :: #{binary() => any()}.


%% Example:
%% get_finding_v2_response() :: #{
%%   <<"analyzedAt">> => non_neg_integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"error">> => [string()],
%%   <<"findingDetails">> => list(list()()),
%%   <<"findingType">> => string(),
%%   <<"id">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"resource">> => [string()],
%%   <<"resourceOwnerAccount">> => [string()],
%%   <<"resourceType">> => string(),
%%   <<"status">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_finding_v2_response() :: #{binary() => any()}.


%% Example:
%% finding_summary_v2() :: #{
%%   <<"analyzedAt">> => non_neg_integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"error">> => [string()],
%%   <<"findingType">> => string(),
%%   <<"id">> => string(),
%%   <<"resource">> => [string()],
%%   <<"resourceOwnerAccount">> => [string()],
%%   <<"resourceType">> => string(),
%%   <<"status">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type finding_summary_v2() :: #{binary() => any()}.

%% Example:
%% cancel_policy_generation_request() :: #{}
-type cancel_policy_generation_request() :: #{}.

%% Example:
%% get_archive_rule_request() :: #{}
-type get_archive_rule_request() :: #{}.


%% Example:
%% analyzer_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastResourceAnalyzed">> => [string()],
%%   <<"lastResourceAnalyzedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => status_reason(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type analyzer_summary() :: #{binary() => any()}.


%% Example:
%% trail() :: #{
%%   <<"allRegions">> => [boolean()],
%%   <<"cloudTrailArn">> => string(),
%%   <<"regions">> => list([string()]())
%% }
-type trail() :: #{binary() => any()}.


%% Example:
%% generated_policy() :: #{
%%   <<"policy">> => [string()]
%% }
-type generated_policy() :: #{binary() => any()}.


%% Example:
%% check_access_not_granted_request() :: #{
%%   <<"access">> := list(access()()),
%%   <<"policyDocument">> := string(),
%%   <<"policyType">> := string()
%% }
-type check_access_not_granted_request() :: #{binary() => any()}.


%% Example:
%% rds_db_cluster_snapshot_configuration() :: #{
%%   <<"attributes">> => map(),
%%   <<"kmsKeyId">> => string()
%% }
-type rds_db_cluster_snapshot_configuration() :: #{binary() => any()}.


%% Example:
%% access_preview_summary() :: #{
%%   <<"analyzerArn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => access_preview_status_reason()
%% }
-type access_preview_summary() :: #{binary() => any()}.


%% Example:
%% list_analyzers_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"type">> => string()
%% }
-type list_analyzers_request() :: #{binary() => any()}.


%% Example:
%% list_findings_v2_response() :: #{
%%   <<"findings">> => list(finding_summary_v2()()),
%%   <<"nextToken">> => string()
%% }
-type list_findings_v2_response() :: #{binary() => any()}.


%% Example:
%% start_policy_generation_response() :: #{
%%   <<"jobId">> := string()
%% }
-type start_policy_generation_response() :: #{binary() => any()}.


%% Example:
%% get_access_preview_response() :: #{
%%   <<"accessPreview">> := access_preview()
%% }
-type get_access_preview_response() :: #{binary() => any()}.

%% Example:
%% internet_configuration() :: #{}
-type internet_configuration() :: #{}.


%% Example:
%% criterion() :: #{
%%   <<"contains">> => list([string()]()),
%%   <<"eq">> => list([string()]()),
%%   <<"exists">> => [boolean()],
%%   <<"neq">> => list([string()]())
%% }
-type criterion() :: #{binary() => any()}.


%% Example:
%% create_archive_rule_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"filter">> => map(),
%%   <<"ruleName">> => string()
%% }
-type create_archive_rule_request() :: #{binary() => any()}.


%% Example:
%% start_resource_scan_request() :: #{
%%   <<"analyzerArn">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceOwnerAccount">> => [string()]
%% }
-type start_resource_scan_request() :: #{binary() => any()}.


%% Example:
%% secrets_manager_secret_configuration() :: #{
%%   <<"kmsKeyId">> => string(),
%%   <<"secretPolicy">> => string()
%% }
-type secrets_manager_secret_configuration() :: #{binary() => any()}.


%% Example:
%% job_error() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => [string()]
%% }
-type job_error() :: #{binary() => any()}.


%% Example:
%% s3_public_access_block_configuration() :: #{
%%   <<"ignorePublicAcls">> => [boolean()],
%%   <<"restrictPublicBuckets">> => [boolean()]
%% }
-type s3_public_access_block_configuration() :: #{binary() => any()}.


%% Example:
%% access_preview() :: #{
%%   <<"analyzerArn">> => string(),
%%   <<"configurations">> => map(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => access_preview_status_reason()
%% }
-type access_preview() :: #{binary() => any()}.


%% Example:
%% get_archive_rule_response() :: #{
%%   <<"archiveRule">> => archive_rule_summary()
%% }
-type get_archive_rule_response() :: #{binary() => any()}.


%% Example:
%% sqs_queue_configuration() :: #{
%%   <<"queuePolicy">> => string()
%% }
-type sqs_queue_configuration() :: #{binary() => any()}.


%% Example:
%% s3_access_point_configuration() :: #{
%%   <<"accessPointPolicy">> => string(),
%%   <<"networkOrigin">> => list(),
%%   <<"publicAccessBlock">> => s3_public_access_block_configuration()
%% }
-type s3_access_point_configuration() :: #{binary() => any()}.


%% Example:
%% update_archive_rule_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"filter">> => map()
%% }
-type update_archive_rule_request() :: #{binary() => any()}.


%% Example:
%% list_access_preview_findings_response() :: #{
%%   <<"findings">> := list(access_preview_finding()()),
%%   <<"nextToken">> => string()
%% }
-type list_access_preview_findings_response() :: #{binary() => any()}.


%% Example:
%% dynamodb_stream_configuration() :: #{
%%   <<"streamPolicy">> => string()
%% }
-type dynamodb_stream_configuration() :: #{binary() => any()}.


%% Example:
%% unused_action() :: #{
%%   <<"action">> => [string()],
%%   <<"lastAccessed">> => non_neg_integer()
%% }
-type unused_action() :: #{binary() => any()}.

-type apply_archive_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_policy_generation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type check_access_not_granted_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    unprocessable_entity_exception() | 
    internal_server_exception().

-type check_no_new_access_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    unprocessable_entity_exception() | 
    internal_server_exception().

-type check_no_public_access_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    unprocessable_entity_exception() | 
    internal_server_exception().

-type create_access_preview_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_analyzer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_archive_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_analyzer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_archive_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type generate_finding_recommendation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_access_preview_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_analyzed_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_analyzer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_archive_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_finding_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_finding_recommendation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_finding_v2_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_findings_statistics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_generated_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_access_preview_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_access_previews_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_analyzed_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_analyzers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_archive_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_findings_v2_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_policy_generations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_policy_generation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type start_resource_scan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_analyzer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_archive_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type validate_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retroactively applies the archive rule to existing findings that meet
%% the archive rule
%% criteria.
-spec apply_archive_rule(aws_client:aws_client(), apply_archive_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, apply_archive_rule_errors(), tuple()}.
apply_archive_rule(Client, Input) ->
    apply_archive_rule(Client, Input, []).

-spec apply_archive_rule(aws_client:aws_client(), apply_archive_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, apply_archive_rule_errors(), tuple()}.
apply_archive_rule(Client, Input0, Options0) ->
    Method = put,
    Path = ["/archive-rule"],
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

%% @doc Cancels the requested policy generation.
-spec cancel_policy_generation(aws_client:aws_client(), binary() | list(), cancel_policy_generation_request()) ->
    {ok, cancel_policy_generation_response(), tuple()} |
    {error, any()} |
    {error, cancel_policy_generation_errors(), tuple()}.
cancel_policy_generation(Client, JobId, Input) ->
    cancel_policy_generation(Client, JobId, Input, []).

-spec cancel_policy_generation(aws_client:aws_client(), binary() | list(), cancel_policy_generation_request(), proplists:proplist()) ->
    {ok, cancel_policy_generation_response(), tuple()} |
    {error, any()} |
    {error, cancel_policy_generation_errors(), tuple()}.
cancel_policy_generation(Client, JobId, Input0, Options0) ->
    Method = put,
    Path = ["/policy/generation/", aws_util:encode_uri(JobId), ""],
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

%% @doc Checks whether the specified access isn't allowed by a policy.
-spec check_access_not_granted(aws_client:aws_client(), check_access_not_granted_request()) ->
    {ok, check_access_not_granted_response(), tuple()} |
    {error, any()} |
    {error, check_access_not_granted_errors(), tuple()}.
check_access_not_granted(Client, Input) ->
    check_access_not_granted(Client, Input, []).

-spec check_access_not_granted(aws_client:aws_client(), check_access_not_granted_request(), proplists:proplist()) ->
    {ok, check_access_not_granted_response(), tuple()} |
    {error, any()} |
    {error, check_access_not_granted_errors(), tuple()}.
check_access_not_granted(Client, Input0, Options0) ->
    Method = post,
    Path = ["/policy/check-access-not-granted"],
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

%% @doc Checks whether new access is allowed for an updated policy when
%% compared to the existing
%% policy.
%%
%% You can find examples for reference policies and learn how to set up and
%% run a custom
%% policy check for new access in the IAM Access Analyzer custom policy
%% checks samples:
%% https://github.com/aws-samples/iam-access-analyzer-custom-policy-check-samples
%% repository on GitHub. The reference
%% policies in this repository are meant to be passed to the
%% `existingPolicyDocument' request parameter.
-spec check_no_new_access(aws_client:aws_client(), check_no_new_access_request()) ->
    {ok, check_no_new_access_response(), tuple()} |
    {error, any()} |
    {error, check_no_new_access_errors(), tuple()}.
check_no_new_access(Client, Input) ->
    check_no_new_access(Client, Input, []).

-spec check_no_new_access(aws_client:aws_client(), check_no_new_access_request(), proplists:proplist()) ->
    {ok, check_no_new_access_response(), tuple()} |
    {error, any()} |
    {error, check_no_new_access_errors(), tuple()}.
check_no_new_access(Client, Input0, Options0) ->
    Method = post,
    Path = ["/policy/check-no-new-access"],
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

%% @doc Checks whether a resource policy can grant public access to the
%% specified resource
%% type.
-spec check_no_public_access(aws_client:aws_client(), check_no_public_access_request()) ->
    {ok, check_no_public_access_response(), tuple()} |
    {error, any()} |
    {error, check_no_public_access_errors(), tuple()}.
check_no_public_access(Client, Input) ->
    check_no_public_access(Client, Input, []).

-spec check_no_public_access(aws_client:aws_client(), check_no_public_access_request(), proplists:proplist()) ->
    {ok, check_no_public_access_response(), tuple()} |
    {error, any()} |
    {error, check_no_public_access_errors(), tuple()}.
check_no_public_access(Client, Input0, Options0) ->
    Method = post,
    Path = ["/policy/check-no-public-access"],
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

%% @doc Creates an access preview that allows you to preview IAM Access
%% Analyzer findings for your
%% resource before deploying resource permissions.
-spec create_access_preview(aws_client:aws_client(), create_access_preview_request()) ->
    {ok, create_access_preview_response(), tuple()} |
    {error, any()} |
    {error, create_access_preview_errors(), tuple()}.
create_access_preview(Client, Input) ->
    create_access_preview(Client, Input, []).

-spec create_access_preview(aws_client:aws_client(), create_access_preview_request(), proplists:proplist()) ->
    {ok, create_access_preview_response(), tuple()} |
    {error, any()} |
    {error, create_access_preview_errors(), tuple()}.
create_access_preview(Client, Input0, Options0) ->
    Method = put,
    Path = ["/access-preview"],
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

%% @doc Creates an analyzer for your account.
-spec create_analyzer(aws_client:aws_client(), create_analyzer_request()) ->
    {ok, create_analyzer_response(), tuple()} |
    {error, any()} |
    {error, create_analyzer_errors(), tuple()}.
create_analyzer(Client, Input) ->
    create_analyzer(Client, Input, []).

-spec create_analyzer(aws_client:aws_client(), create_analyzer_request(), proplists:proplist()) ->
    {ok, create_analyzer_response(), tuple()} |
    {error, any()} |
    {error, create_analyzer_errors(), tuple()}.
create_analyzer(Client, Input0, Options0) ->
    Method = put,
    Path = ["/analyzer"],
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

%% @doc Creates an archive rule for the specified analyzer.
%%
%% Archive rules automatically archive
%% new findings that meet the criteria you define when you create the rule.
%%
%% To learn about filter keys that you can use to create an archive rule, see
%% IAM Access Analyzer filter keys:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
%% in the IAM User Guide.
-spec create_archive_rule(aws_client:aws_client(), binary() | list(), create_archive_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_archive_rule_errors(), tuple()}.
create_archive_rule(Client, AnalyzerName, Input) ->
    create_archive_rule(Client, AnalyzerName, Input, []).

-spec create_archive_rule(aws_client:aws_client(), binary() | list(), create_archive_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_archive_rule_errors(), tuple()}.
create_archive_rule(Client, AnalyzerName, Input0, Options0) ->
    Method = put,
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), "/archive-rule"],
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

%% @doc Deletes the specified analyzer.
%%
%% When you delete an analyzer, IAM Access Analyzer is disabled
%% for the account or organization in the current or specific Region. All
%% findings that were
%% generated by the analyzer are deleted. You cannot undo this action.
-spec delete_analyzer(aws_client:aws_client(), binary() | list(), delete_analyzer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_analyzer_errors(), tuple()}.
delete_analyzer(Client, AnalyzerName, Input) ->
    delete_analyzer(Client, AnalyzerName, Input, []).

-spec delete_analyzer(aws_client:aws_client(), binary() | list(), delete_analyzer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_analyzer_errors(), tuple()}.
delete_analyzer(Client, AnalyzerName, Input0, Options0) ->
    Method = delete,
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), ""],
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

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified archive rule.
-spec delete_archive_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_archive_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_archive_rule_errors(), tuple()}.
delete_archive_rule(Client, AnalyzerName, RuleName, Input) ->
    delete_archive_rule(Client, AnalyzerName, RuleName, Input, []).

-spec delete_archive_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_archive_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_archive_rule_errors(), tuple()}.
delete_archive_rule(Client, AnalyzerName, RuleName, Input0, Options0) ->
    Method = delete,
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), "/archive-rule/", aws_util:encode_uri(RuleName), ""],
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

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a recommendation for an unused permissions finding.
-spec generate_finding_recommendation(aws_client:aws_client(), binary() | list(), generate_finding_recommendation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, generate_finding_recommendation_errors(), tuple()}.
generate_finding_recommendation(Client, Id, Input) ->
    generate_finding_recommendation(Client, Id, Input, []).

-spec generate_finding_recommendation(aws_client:aws_client(), binary() | list(), generate_finding_recommendation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, generate_finding_recommendation_errors(), tuple()}.
generate_finding_recommendation(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/recommendation/", aws_util:encode_uri(Id), ""],
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

    QueryMapping = [
                     {<<"analyzerArn">>, <<"analyzerArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about an access preview for the specified
%% analyzer.
-spec get_access_preview(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_access_preview_response(), tuple()} |
    {error, any()} |
    {error, get_access_preview_errors(), tuple()}.
get_access_preview(Client, AccessPreviewId, AnalyzerArn)
  when is_map(Client) ->
    get_access_preview(Client, AccessPreviewId, AnalyzerArn, #{}, #{}).

-spec get_access_preview(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_access_preview_response(), tuple()} |
    {error, any()} |
    {error, get_access_preview_errors(), tuple()}.
get_access_preview(Client, AccessPreviewId, AnalyzerArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_preview(Client, AccessPreviewId, AnalyzerArn, QueryMap, HeadersMap, []).

-spec get_access_preview(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_preview_response(), tuple()} |
    {error, any()} |
    {error, get_access_preview_errors(), tuple()}.
get_access_preview(Client, AccessPreviewId, AnalyzerArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-preview/", aws_util:encode_uri(AccessPreviewId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a resource that was analyzed.
-spec get_analyzed_resource(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_analyzed_resource_response(), tuple()} |
    {error, any()} |
    {error, get_analyzed_resource_errors(), tuple()}.
get_analyzed_resource(Client, AnalyzerArn, ResourceArn)
  when is_map(Client) ->
    get_analyzed_resource(Client, AnalyzerArn, ResourceArn, #{}, #{}).

-spec get_analyzed_resource(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_analyzed_resource_response(), tuple()} |
    {error, any()} |
    {error, get_analyzed_resource_errors(), tuple()}.
get_analyzed_resource(Client, AnalyzerArn, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_analyzed_resource(Client, AnalyzerArn, ResourceArn, QueryMap, HeadersMap, []).

-spec get_analyzed_resource(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_analyzed_resource_response(), tuple()} |
    {error, any()} |
    {error, get_analyzed_resource_errors(), tuple()}.
get_analyzed_resource(Client, AnalyzerArn, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analyzed-resource"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn},
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified analyzer.
-spec get_analyzer(aws_client:aws_client(), binary() | list()) ->
    {ok, get_analyzer_response(), tuple()} |
    {error, any()} |
    {error, get_analyzer_errors(), tuple()}.
get_analyzer(Client, AnalyzerName)
  when is_map(Client) ->
    get_analyzer(Client, AnalyzerName, #{}, #{}).

-spec get_analyzer(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_analyzer_response(), tuple()} |
    {error, any()} |
    {error, get_analyzer_errors(), tuple()}.
get_analyzer(Client, AnalyzerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_analyzer(Client, AnalyzerName, QueryMap, HeadersMap, []).

-spec get_analyzer(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_analyzer_response(), tuple()} |
    {error, any()} |
    {error, get_analyzer_errors(), tuple()}.
get_analyzer(Client, AnalyzerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an archive rule.
%%
%% To learn about filter keys that you can use to create an archive rule, see
%% IAM Access Analyzer filter keys:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
%% in the IAM User Guide.
-spec get_archive_rule(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_archive_rule_response(), tuple()} |
    {error, any()} |
    {error, get_archive_rule_errors(), tuple()}.
get_archive_rule(Client, AnalyzerName, RuleName)
  when is_map(Client) ->
    get_archive_rule(Client, AnalyzerName, RuleName, #{}, #{}).

-spec get_archive_rule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_archive_rule_response(), tuple()} |
    {error, any()} |
    {error, get_archive_rule_errors(), tuple()}.
get_archive_rule(Client, AnalyzerName, RuleName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_archive_rule(Client, AnalyzerName, RuleName, QueryMap, HeadersMap, []).

-spec get_archive_rule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_archive_rule_response(), tuple()} |
    {error, any()} |
    {error, get_archive_rule_errors(), tuple()}.
get_archive_rule(Client, AnalyzerName, RuleName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), "/archive-rule/", aws_util:encode_uri(RuleName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified finding.
%%
%% GetFinding and GetFindingV2 both use
%% `access-analyzer:GetFinding' in the `Action' element of an IAM
%% policy statement. You must have permission to perform the
%% `access-analyzer:GetFinding' action.
-spec get_finding(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_finding_response(), tuple()} |
    {error, any()} |
    {error, get_finding_errors(), tuple()}.
get_finding(Client, Id, AnalyzerArn)
  when is_map(Client) ->
    get_finding(Client, Id, AnalyzerArn, #{}, #{}).

-spec get_finding(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_finding_response(), tuple()} |
    {error, any()} |
    {error, get_finding_errors(), tuple()}.
get_finding(Client, Id, AnalyzerArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_finding(Client, Id, AnalyzerArn, QueryMap, HeadersMap, []).

-spec get_finding(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_finding_response(), tuple()} |
    {error, any()} |
    {error, get_finding_errors(), tuple()}.
get_finding(Client, Id, AnalyzerArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/finding/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a finding recommendation for the
%% specified analyzer.
-spec get_finding_recommendation(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_finding_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_finding_recommendation_errors(), tuple()}.
get_finding_recommendation(Client, Id, AnalyzerArn)
  when is_map(Client) ->
    get_finding_recommendation(Client, Id, AnalyzerArn, #{}, #{}).

-spec get_finding_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_finding_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_finding_recommendation_errors(), tuple()}.
get_finding_recommendation(Client, Id, AnalyzerArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_finding_recommendation(Client, Id, AnalyzerArn, QueryMap, HeadersMap, []).

-spec get_finding_recommendation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_finding_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_finding_recommendation_errors(), tuple()}.
get_finding_recommendation(Client, Id, AnalyzerArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recommendation/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified finding.
%%
%% GetFinding and GetFindingV2 both use
%% `access-analyzer:GetFinding' in the `Action' element of an IAM
%% policy statement. You must have permission to perform the
%% `access-analyzer:GetFinding' action.
-spec get_finding_v2(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_finding_v2_response(), tuple()} |
    {error, any()} |
    {error, get_finding_v2_errors(), tuple()}.
get_finding_v2(Client, Id, AnalyzerArn)
  when is_map(Client) ->
    get_finding_v2(Client, Id, AnalyzerArn, #{}, #{}).

-spec get_finding_v2(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_finding_v2_response(), tuple()} |
    {error, any()} |
    {error, get_finding_v2_errors(), tuple()}.
get_finding_v2(Client, Id, AnalyzerArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_finding_v2(Client, Id, AnalyzerArn, QueryMap, HeadersMap, []).

-spec get_finding_v2(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_finding_v2_response(), tuple()} |
    {error, any()} |
    {error, get_finding_v2_errors(), tuple()}.
get_finding_v2(Client, Id, AnalyzerArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/findingv2/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of aggregated finding statistics for an external
%% access or unused
%% access analyzer.
-spec get_findings_statistics(aws_client:aws_client(), get_findings_statistics_request()) ->
    {ok, get_findings_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_findings_statistics_errors(), tuple()}.
get_findings_statistics(Client, Input) ->
    get_findings_statistics(Client, Input, []).

-spec get_findings_statistics(aws_client:aws_client(), get_findings_statistics_request(), proplists:proplist()) ->
    {ok, get_findings_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_findings_statistics_errors(), tuple()}.
get_findings_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/analyzer/findings/statistics"],
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

%% @doc Retrieves the policy that was generated using
%% `StartPolicyGeneration'.
-spec get_generated_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_generated_policy_response(), tuple()} |
    {error, any()} |
    {error, get_generated_policy_errors(), tuple()}.
get_generated_policy(Client, JobId)
  when is_map(Client) ->
    get_generated_policy(Client, JobId, #{}, #{}).

-spec get_generated_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_generated_policy_response(), tuple()} |
    {error, any()} |
    {error, get_generated_policy_errors(), tuple()}.
get_generated_policy(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_generated_policy(Client, JobId, QueryMap, HeadersMap, []).

-spec get_generated_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_generated_policy_response(), tuple()} |
    {error, any()} |
    {error, get_generated_policy_errors(), tuple()}.
get_generated_policy(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policy/generation/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeResourcePlaceholders">>, maps:get(<<"includeResourcePlaceholders">>, QueryMap, undefined)},
        {<<"includeServiceLevelTemplate">>, maps:get(<<"includeServiceLevelTemplate">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of access preview findings generated by the
%% specified access
%% preview.
-spec list_access_preview_findings(aws_client:aws_client(), binary() | list(), list_access_preview_findings_request()) ->
    {ok, list_access_preview_findings_response(), tuple()} |
    {error, any()} |
    {error, list_access_preview_findings_errors(), tuple()}.
list_access_preview_findings(Client, AccessPreviewId, Input) ->
    list_access_preview_findings(Client, AccessPreviewId, Input, []).

-spec list_access_preview_findings(aws_client:aws_client(), binary() | list(), list_access_preview_findings_request(), proplists:proplist()) ->
    {ok, list_access_preview_findings_response(), tuple()} |
    {error, any()} |
    {error, list_access_preview_findings_errors(), tuple()}.
list_access_preview_findings(Client, AccessPreviewId, Input0, Options0) ->
    Method = post,
    Path = ["/access-preview/", aws_util:encode_uri(AccessPreviewId), ""],
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

%% @doc Retrieves a list of access previews for the specified analyzer.
-spec list_access_previews(aws_client:aws_client(), binary() | list()) ->
    {ok, list_access_previews_response(), tuple()} |
    {error, any()} |
    {error, list_access_previews_errors(), tuple()}.
list_access_previews(Client, AnalyzerArn)
  when is_map(Client) ->
    list_access_previews(Client, AnalyzerArn, #{}, #{}).

-spec list_access_previews(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_access_previews_response(), tuple()} |
    {error, any()} |
    {error, list_access_previews_errors(), tuple()}.
list_access_previews(Client, AnalyzerArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_previews(Client, AnalyzerArn, QueryMap, HeadersMap, []).

-spec list_access_previews(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_access_previews_response(), tuple()} |
    {error, any()} |
    {error, list_access_previews_errors(), tuple()}.
list_access_previews(Client, AnalyzerArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-preview"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of resources of the specified type that have been
%% analyzed by the
%% specified analyzer.
-spec list_analyzed_resources(aws_client:aws_client(), list_analyzed_resources_request()) ->
    {ok, list_analyzed_resources_response(), tuple()} |
    {error, any()} |
    {error, list_analyzed_resources_errors(), tuple()}.
list_analyzed_resources(Client, Input) ->
    list_analyzed_resources(Client, Input, []).

-spec list_analyzed_resources(aws_client:aws_client(), list_analyzed_resources_request(), proplists:proplist()) ->
    {ok, list_analyzed_resources_response(), tuple()} |
    {error, any()} |
    {error, list_analyzed_resources_errors(), tuple()}.
list_analyzed_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/analyzed-resource"],
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

%% @doc Retrieves a list of analyzers.
-spec list_analyzers(aws_client:aws_client()) ->
    {ok, list_analyzers_response(), tuple()} |
    {error, any()} |
    {error, list_analyzers_errors(), tuple()}.
list_analyzers(Client)
  when is_map(Client) ->
    list_analyzers(Client, #{}, #{}).

-spec list_analyzers(aws_client:aws_client(), map(), map()) ->
    {ok, list_analyzers_response(), tuple()} |
    {error, any()} |
    {error, list_analyzers_errors(), tuple()}.
list_analyzers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_analyzers(Client, QueryMap, HeadersMap, []).

-spec list_analyzers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_analyzers_response(), tuple()} |
    {error, any()} |
    {error, list_analyzers_errors(), tuple()}.
list_analyzers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analyzer"],
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
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of archive rules created for the specified analyzer.
-spec list_archive_rules(aws_client:aws_client(), binary() | list()) ->
    {ok, list_archive_rules_response(), tuple()} |
    {error, any()} |
    {error, list_archive_rules_errors(), tuple()}.
list_archive_rules(Client, AnalyzerName)
  when is_map(Client) ->
    list_archive_rules(Client, AnalyzerName, #{}, #{}).

-spec list_archive_rules(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_archive_rules_response(), tuple()} |
    {error, any()} |
    {error, list_archive_rules_errors(), tuple()}.
list_archive_rules(Client, AnalyzerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_archive_rules(Client, AnalyzerName, QueryMap, HeadersMap, []).

-spec list_archive_rules(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_archive_rules_response(), tuple()} |
    {error, any()} |
    {error, list_archive_rules_errors(), tuple()}.
list_archive_rules(Client, AnalyzerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), "/archive-rule"],
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

%% @doc Retrieves a list of findings generated by the specified analyzer.
%%
%% ListFindings and
%% ListFindingsV2 both use `access-analyzer:ListFindings' in the
%% `Action' element of an IAM policy statement. You must have permission
%% to
%% perform the `access-analyzer:ListFindings' action.
%%
%% To learn about filter keys that you can use to retrieve a list of
%% findings, see IAM Access Analyzer filter keys:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
%% in the IAM User Guide.
-spec list_findings(aws_client:aws_client(), list_findings_request()) ->
    {ok, list_findings_response(), tuple()} |
    {error, any()} |
    {error, list_findings_errors(), tuple()}.
list_findings(Client, Input) ->
    list_findings(Client, Input, []).

-spec list_findings(aws_client:aws_client(), list_findings_request(), proplists:proplist()) ->
    {ok, list_findings_response(), tuple()} |
    {error, any()} |
    {error, list_findings_errors(), tuple()}.
list_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/finding"],
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

%% @doc Retrieves a list of findings generated by the specified analyzer.
%%
%% ListFindings and
%% ListFindingsV2 both use `access-analyzer:ListFindings' in the
%% `Action' element of an IAM policy statement. You must have permission
%% to
%% perform the `access-analyzer:ListFindings' action.
%%
%% To learn about filter keys that you can use to retrieve a list of
%% findings, see IAM Access Analyzer filter keys:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
%% in the IAM User Guide.
-spec list_findings_v2(aws_client:aws_client(), list_findings_v2_request()) ->
    {ok, list_findings_v2_response(), tuple()} |
    {error, any()} |
    {error, list_findings_v2_errors(), tuple()}.
list_findings_v2(Client, Input) ->
    list_findings_v2(Client, Input, []).

-spec list_findings_v2(aws_client:aws_client(), list_findings_v2_request(), proplists:proplist()) ->
    {ok, list_findings_v2_response(), tuple()} |
    {error, any()} |
    {error, list_findings_v2_errors(), tuple()}.
list_findings_v2(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findingv2"],
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

%% @doc Lists all of the policy generations requested in the last seven days.
-spec list_policy_generations(aws_client:aws_client()) ->
    {ok, list_policy_generations_response(), tuple()} |
    {error, any()} |
    {error, list_policy_generations_errors(), tuple()}.
list_policy_generations(Client)
  when is_map(Client) ->
    list_policy_generations(Client, #{}, #{}).

-spec list_policy_generations(aws_client:aws_client(), map(), map()) ->
    {ok, list_policy_generations_response(), tuple()} |
    {error, any()} |
    {error, list_policy_generations_errors(), tuple()}.
list_policy_generations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policy_generations(Client, QueryMap, HeadersMap, []).

-spec list_policy_generations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_policy_generations_response(), tuple()} |
    {error, any()} |
    {error, list_policy_generations_errors(), tuple()}.
list_policy_generations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policy/generation"],
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
        {<<"principalArn">>, maps:get(<<"principalArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of tags applied to the specified resource.
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

%% @doc Starts the policy generation request.
-spec start_policy_generation(aws_client:aws_client(), start_policy_generation_request()) ->
    {ok, start_policy_generation_response(), tuple()} |
    {error, any()} |
    {error, start_policy_generation_errors(), tuple()}.
start_policy_generation(Client, Input) ->
    start_policy_generation(Client, Input, []).

-spec start_policy_generation(aws_client:aws_client(), start_policy_generation_request(), proplists:proplist()) ->
    {ok, start_policy_generation_response(), tuple()} |
    {error, any()} |
    {error, start_policy_generation_errors(), tuple()}.
start_policy_generation(Client, Input0, Options0) ->
    Method = put,
    Path = ["/policy/generation"],
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

%% @doc Immediately starts a scan of the policies applied to the specified
%% resource.
-spec start_resource_scan(aws_client:aws_client(), start_resource_scan_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_resource_scan_errors(), tuple()}.
start_resource_scan(Client, Input) ->
    start_resource_scan(Client, Input, []).

-spec start_resource_scan(aws_client:aws_client(), start_resource_scan_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_resource_scan_errors(), tuple()}.
start_resource_scan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/resource/scan"],
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

%% @doc Adds a tag to the specified resource.
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

%% @doc Removes a tag from the specified resource.
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies the configuration of an existing analyzer.
-spec update_analyzer(aws_client:aws_client(), binary() | list(), update_analyzer_request()) ->
    {ok, update_analyzer_response(), tuple()} |
    {error, any()} |
    {error, update_analyzer_errors(), tuple()}.
update_analyzer(Client, AnalyzerName, Input) ->
    update_analyzer(Client, AnalyzerName, Input, []).

-spec update_analyzer(aws_client:aws_client(), binary() | list(), update_analyzer_request(), proplists:proplist()) ->
    {ok, update_analyzer_response(), tuple()} |
    {error, any()} |
    {error, update_analyzer_errors(), tuple()}.
update_analyzer(Client, AnalyzerName, Input0, Options0) ->
    Method = put,
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), ""],
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

%% @doc Updates the criteria and values for the specified archive rule.
-spec update_archive_rule(aws_client:aws_client(), binary() | list(), binary() | list(), update_archive_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_archive_rule_errors(), tuple()}.
update_archive_rule(Client, AnalyzerName, RuleName, Input) ->
    update_archive_rule(Client, AnalyzerName, RuleName, Input, []).

-spec update_archive_rule(aws_client:aws_client(), binary() | list(), binary() | list(), update_archive_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_archive_rule_errors(), tuple()}.
update_archive_rule(Client, AnalyzerName, RuleName, Input0, Options0) ->
    Method = put,
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), "/archive-rule/", aws_util:encode_uri(RuleName), ""],
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

%% @doc Updates the status for the specified findings.
-spec update_findings(aws_client:aws_client(), update_findings_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_findings_errors(), tuple()}.
update_findings(Client, Input) ->
    update_findings(Client, Input, []).

-spec update_findings(aws_client:aws_client(), update_findings_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_findings_errors(), tuple()}.
update_findings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/finding"],
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

%% @doc Requests the validation of a policy and returns a list of findings.
%%
%% The findings help
%% you identify issues and provide actionable recommendations to resolve the
%% issue and enable
%% you to author functional policies that meet security best practices.
-spec validate_policy(aws_client:aws_client(), validate_policy_request()) ->
    {ok, validate_policy_response(), tuple()} |
    {error, any()} |
    {error, validate_policy_errors(), tuple()}.
validate_policy(Client, Input) ->
    validate_policy(Client, Input, []).

-spec validate_policy(aws_client:aws_client(), validate_policy_request(), proplists:proplist()) ->
    {ok, validate_policy_response(), tuple()} |
    {error, any()} |
    {error, validate_policy_errors(), tuple()}.
validate_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/policy/validation"],
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

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"access-analyzer">>},
    Host = build_host(<<"access-analyzer">>, Client1),
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
