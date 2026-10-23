%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Continuum finds, validates, prioritizes, and remediates code
%% vulnerabilities
%% across the source repositories and AWS resources in your environments.
-module(aws_continuum).

-export([associate_collector/3,
         associate_collector/4,
         create_code_finding/3,
         create_code_finding/4,
         create_code_scan/3,
         create_code_scan/4,
         create_collector/2,
         create_collector/3,
         create_environment/2,
         create_environment/3,
         create_integration/2,
         create_integration/3,
         delete_collector/3,
         delete_collector/4,
         delete_environment/3,
         delete_environment/4,
         delete_integration/3,
         delete_integration/4,
         disassociate_collector/3,
         disassociate_collector/4,
         get_code_finding/3,
         get_code_finding/5,
         get_code_finding/6,
         get_code_issue/3,
         get_code_issue/5,
         get_code_issue/6,
         get_code_issue_artifact/4,
         get_code_issue_artifact/6,
         get_code_issue_artifact/7,
         get_code_scan/3,
         get_code_scan/5,
         get_code_scan/6,
         get_collector/2,
         get_collector/4,
         get_collector/5,
         get_collector_data_access_authorization/3,
         get_collector_data_access_authorization/5,
         get_collector_data_access_authorization/6,
         get_environment/2,
         get_environment/4,
         get_environment/5,
         get_integration/2,
         get_integration/4,
         get_integration/5,
         get_resource_policy/2,
         get_resource_policy/4,
         get_resource_policy/5,
         list_associated_collectors/2,
         list_associated_collectors/4,
         list_associated_collectors/5,
         list_associated_environments/2,
         list_associated_environments/4,
         list_associated_environments/5,
         list_code_findings/2,
         list_code_findings/4,
         list_code_findings/5,
         list_code_issue_artifacts/3,
         list_code_issue_artifacts/5,
         list_code_issue_artifacts/6,
         list_code_issues/2,
         list_code_issues/4,
         list_code_issues/5,
         list_code_scans/2,
         list_code_scans/4,
         list_code_scans/5,
         list_collectors/1,
         list_collectors/3,
         list_collectors/4,
         list_environments/1,
         list_environments/3,
         list_environments/4,
         list_integrations/1,
         list_integrations/3,
         list_integrations/4,
         put_resource_policy/2,
         put_resource_policy/3,
         start_integration_authorization/2,
         start_integration_authorization/3,
         update_collector/3,
         update_collector/4,
         update_environment/3,
         update_environment/4,
         update_integration/3,
         update_integration/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% affected_package() :: #{
%%   <<"fixedInVersion">> => string(),
%%   <<"name">> => string(),
%%   <<"packageManager">> => string(),
%%   <<"version">> => string()
%% }
-type affected_package() :: #{binary() => any()}.


%% Example:
%% associate_collector_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"collectorArn">> := string(),
%%   <<"collectorDataAccessRoleArn">> := string()
%% }
-type associate_collector_input() :: #{binary() => any()}.


%% Example:
%% associate_collector_output() :: #{
%%   <<"associatedCollector">> => associated_collector(),
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string()
%% }
-type associate_collector_output() :: #{binary() => any()}.


%% Example:
%% associated_collector() :: #{
%%   <<"collectorArn">> => string(),
%%   <<"collectorId">> => string()
%% }
-type associated_collector() :: #{binary() => any()}.


%% Example:
%% associated_environment() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type associated_environment() :: #{binary() => any()}.


%% Example:
%% code_configuration_details() :: #{
%%   <<"collectorDetails">> => collector_details(),
%%   <<"environmentConfiguration">> => environment_configuration(),
%%   <<"latestScan">> => code_scan_summary(),
%%   <<"sourceConfiguration">> => environment_source_configuration()
%% }
-type code_configuration_details() :: #{binary() => any()}.


%% Example:
%% code_scan_data() :: #{
%%   <<"completedAt">> => [non_neg_integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => string(),
%%   <<"failureStage">> => list(any()),
%%   <<"origin">> => list(any()),
%%   <<"scanRunId">> => string(),
%%   <<"status">> => list(any())
%% }
-type code_scan_data() :: #{binary() => any()}.


%% Example:
%% code_scan_summary() :: #{
%%   <<"completedAt">> => [non_neg_integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"failureMessage">> => string(),
%%   <<"failureStage">> => list(any()),
%%   <<"origin">> => list(any()),
%%   <<"scanRunId">> => string(),
%%   <<"status">> => list(any())
%% }
-type code_scan_summary() :: #{binary() => any()}.


%% Example:
%% collector_details() :: #{
%%   <<"collectorDataAccessRoleArn">> => string()
%% }
-type collector_details() :: #{binary() => any()}.


%% Example:
%% collector_summary() :: #{
%%   <<"collectorArn">> => string(),
%%   <<"collectorId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type collector_summary() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_code_configuration() :: #{
%%   <<"environmentConfiguration">> => environment_configuration(),
%%   <<"sourceConfiguration">> => environment_source_configuration()
%% }
-type create_code_configuration() :: #{binary() => any()}.


%% Example:
%% create_code_finding_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"ocsfDocument">> := [any()]
%% }
-type create_code_finding_input() :: #{binary() => any()}.


%% Example:
%% create_code_finding_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"findingArn">> => string(),
%%   <<"findingId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"title">> => string()
%% }
-type create_code_finding_output() :: #{binary() => any()}.


%% Example:
%% create_code_scan_input() :: #{
%%   <<"clientToken">> => string()
%% }
-type create_code_scan_input() :: #{binary() => any()}.


%% Example:
%% create_code_scan_output() :: #{
%%   <<"scan">> => code_scan_summary()
%% }
-type create_code_scan_output() :: #{binary() => any()}.


%% Example:
%% create_collector_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"kubernetesClusterRole">> => kubernetes_cluster_role_configuration(),
%%   <<"type">> => list(any())
%% }
-type create_collector_input() :: #{binary() => any()}.


%% Example:
%% create_collector_output() :: #{
%%   <<"collectorArn">> => string(),
%%   <<"collectorId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type create_collector_output() :: #{binary() => any()}.


%% Example:
%% create_environment_configuration() :: #{
%%   <<"codeConfiguration">> => create_code_configuration()
%% }
-type create_environment_configuration() :: #{binary() => any()}.


%% Example:
%% create_environment_input() :: #{
%%   <<"configuration">> => create_environment_configuration(),
%%   <<"name">> := string()
%% }
-type create_environment_input() :: #{binary() => any()}.


%% Example:
%% create_environment_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_environment_output() :: #{binary() => any()}.


%% Example:
%% create_integration_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"name">> := string(),
%%   <<"providerConfiguration">> := list()
%% }
-type create_integration_input() :: #{binary() => any()}.


%% Example:
%% create_integration_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"integrationArn">> => string(),
%%   <<"integrationId">> => string()
%% }
-type create_integration_output() :: #{binary() => any()}.

%% Example:
%% delete_collector_input() :: #{}
-type delete_collector_input() :: #{}.

%% Example:
%% delete_environment_input() :: #{}
-type delete_environment_input() :: #{}.

%% Example:
%% delete_integration_input() :: #{}
-type delete_integration_input() :: #{}.


%% Example:
%% disassociate_collector_input() :: #{
%%   <<"collectorArn">> := string()
%% }
-type disassociate_collector_input() :: #{binary() => any()}.


%% Example:
%% environment_configuration() :: #{
%%   <<"network">> => environment_network_configuration(),
%%   <<"patchCreationPolicy">> => list(any()),
%%   <<"scanFrequency">> => string()
%% }
-type environment_configuration() :: #{binary() => any()}.


%% Example:
%% environment_configuration_details() :: #{
%%   <<"codeConfiguration">> => code_configuration_details()
%% }
-type environment_configuration_details() :: #{binary() => any()}.


%% Example:
%% environment_list_entry() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type environment_list_entry() :: #{binary() => any()}.


%% Example:
%% environment_network_configuration() :: #{
%%   <<"allowedDomains">> => list(string())
%% }
-type environment_network_configuration() :: #{binary() => any()}.


%% Example:
%% environment_repository_source() :: #{
%%   <<"defaultBranch">> => string(),
%%   <<"integrationId">> => string(),
%%   <<"repository">> => string()
%% }
-type environment_repository_source() :: #{binary() => any()}.


%% Example:
%% environment_s3_integration_source() :: #{
%%   <<"codePrefix">> => string(),
%%   <<"contextPrefix">> => string(),
%%   <<"integrationId">> => string()
%% }
-type environment_s3_integration_source() :: #{binary() => any()}.


%% Example:
%% environment_source_configuration() :: #{
%%   <<"repositorySources">> => list(environment_repository_source()),
%%   <<"s3Sources">> => list(environment_s3_integration_source())
%% }
-type environment_source_configuration() :: #{binary() => any()}.


%% Example:
%% finding_compliance_check() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"uid">> => string()
%% }
-type finding_compliance_check() :: #{binary() => any()}.


%% Example:
%% finding_evidence() :: #{
%%   <<"file">> => string(),
%%   <<"line">> => [integer()],
%%   <<"snippet">> => string()
%% }
-type finding_evidence() :: #{binary() => any()}.


%% Example:
%% finding_location() :: #{
%%   <<"endLine">> => [integer()],
%%   <<"filePath">> => string(),
%%   <<"startLine">> => [integer()]
%% }
-type finding_location() :: #{binary() => any()}.


%% Example:
%% finding_posture() :: #{
%%   <<"application">> => string(),
%%   <<"applicationUid">> => string(),
%%   <<"applicationVersion">> => string(),
%%   <<"checks">> => list(finding_compliance_check()),
%%   <<"control">> => string(),
%%   <<"description">> => string(),
%%   <<"remediation">> => string(),
%%   <<"remediationReferences">> => list(string()),
%%   <<"requirements">> => list(string()),
%%   <<"standards">> => list(string()),
%%   <<"status">> => string(),
%%   <<"statusId">> => [integer()]
%% }
-type finding_posture() :: #{binary() => any()}.


%% Example:
%% finding_resource() :: #{
%%   <<"name">> => string(),
%%   <<"region">> => string(),
%%   <<"type">> => string(),
%%   <<"uid">> => string()
%% }
-type finding_resource() :: #{binary() => any()}.


%% Example:
%% finding_summary() :: #{
%%   <<"category">> => string(),
%%   <<"completedAt">> => [non_neg_integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdIssueId">> => string(),
%%   <<"discardReason">> => list(any()),
%%   <<"discardReasoning">> => string(),
%%   <<"duplicateOfIssueId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"filePath">> => string(),
%%   <<"findingArn">> => string(),
%%   <<"findingId">> => string(),
%%   <<"reportedAt">> => [non_neg_integer()],
%%   <<"scanRunId">> => string(),
%%   <<"severity">> => list(any()),
%%   <<"source">> => string(),
%%   <<"sourceFindingId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"statusUpdatedAt">> => [non_neg_integer()],
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type finding_summary() :: #{binary() => any()}.


%% Example:
%% finding_validation() :: #{
%%   <<"blockingReason">> => list(any()),
%%   <<"confidence">> => [float()],
%%   <<"evidence">> => list(finding_evidence()),
%%   <<"mitigatingControls">> => list(string()),
%%   <<"preconditions">> => list(string()),
%%   <<"rationale">> => string(),
%%   <<"severityAdjustment">> => list(any()),
%%   <<"verdict">> => list(any())
%% }
-type finding_validation() :: #{binary() => any()}.


%% Example:
%% finding_vulnerability() :: #{
%%   <<"additionalCweIds">> => list(string()),
%%   <<"affectedPackages">> => list(affected_package()),
%%   <<"code">> => string(),
%%   <<"cveId">> => string(),
%%   <<"cvssBaseScore">> => [float()],
%%   <<"cweCaption">> => string(),
%%   <<"cweId">> => string(),
%%   <<"description">> => string(),
%%   <<"details">> => string(),
%%   <<"fixCoverage">> => string(),
%%   <<"fixCoverageId">> => [integer()],
%%   <<"locations">> => list(finding_location()),
%%   <<"remediation">> => string(),
%%   <<"remediationReferences">> => list(string()),
%%   <<"title">> => string()
%% }
-type finding_vulnerability() :: #{binary() => any()}.


%% Example:
%% flow_verdict() :: #{
%%   <<"confidence">> => float(),
%%   <<"evidence">> => list(string()),
%%   <<"flowId">> => string(),
%%   <<"verdict">> => list(any())
%% }
-type flow_verdict() :: #{binary() => any()}.

%% Example:
%% get_code_finding_input() :: #{}
-type get_code_finding_input() :: #{}.


%% Example:
%% get_code_finding_output() :: #{
%%   <<"affectedPackages">> => list(affected_package()),
%%   <<"category">> => string(),
%%   <<"completedAt">> => [non_neg_integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdIssueId">> => string(),
%%   <<"cveId">> => string(),
%%   <<"cvssBaseScore">> => [float()],
%%   <<"cweIds">> => list(string()),
%%   <<"detailedDescription">> => string(),
%%   <<"discardReason">> => list(any()),
%%   <<"discardReasoning">> => string(),
%%   <<"duplicateOfIssueId">> => string(),
%%   <<"endLine">> => [integer()],
%%   <<"environmentId">> => string(),
%%   <<"filePath">> => string(),
%%   <<"findingArn">> => string(),
%%   <<"findingId">> => string(),
%%   <<"findingTypes">> => list(string()),
%%   <<"firstSeenAt">> => [non_neg_integer()],
%%   <<"lineNumber">> => [integer()],
%%   <<"mitigation">> => string(),
%%   <<"mitreTechniques">> => list(string()),
%%   <<"ocsfClass">> => list(any()),
%%   <<"ocsfSchemaVersion">> => string(),
%%   <<"owaspCategory">> => string(),
%%   <<"posture">> => finding_posture(),
%%   <<"productName">> => string(),
%%   <<"productVendorName">> => string(),
%%   <<"productVersion">> => string(),
%%   <<"relevantInputs">> => list(string()),
%%   <<"remediationReferences">> => list(string()),
%%   <<"reportedAt">> => [non_neg_integer()],
%%   <<"resources">> => list(finding_resource()),
%%   <<"scanRunId">> => string(),
%%   <<"severity">> => list(any()),
%%   <<"source">> => string(),
%%   <<"sourceFindingId">> => string(),
%%   <<"sourceStatus">> => string(),
%%   <<"sourceStatusId">> => [integer()],
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"statusUpdatedAt">> => [non_neg_integer()],
%%   <<"stepsToReproduce">> => list(string()),
%%   <<"subCategory">> => string(),
%%   <<"summary">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any()),
%%   <<"validation">> => finding_validation(),
%%   <<"vulnerabilities">> => list(finding_vulnerability()),
%%   <<"vulnerableCode">> => string()
%% }
-type get_code_finding_output() :: #{binary() => any()}.

%% Example:
%% get_code_issue_artifact_input() :: #{}
-type get_code_issue_artifact_input() :: #{}.


%% Example:
%% get_code_issue_artifact_output() :: #{
%%   <<"artifactId">> => string(),
%%   <<"artifactType">> => list(any()),
%%   <<"body">> => list(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"mediaType">> => string(),
%%   <<"metadata">> => [any()],
%%   <<"producer">> => issue_artifact_producer_summary()
%% }
-type get_code_issue_artifact_output() :: #{binary() => any()}.

%% Example:
%% get_code_issue_input() :: #{}
-type get_code_issue_input() :: #{}.


%% Example:
%% get_code_issue_output() :: #{
%%   <<"confidence">> => integer(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"evidenceAvailability">> => list(any()),
%%   <<"findingIds">> => list(string()),
%%   <<"issueArn">> => string(),
%%   <<"issueId">> => string(),
%%   <<"name">> => string(),
%%   <<"patchDelivery">> => issue_patch_delivery(),
%%   <<"phase">> => list(any()),
%%   <<"severity">> => list(any()),
%%   <<"severityReasoning">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"statusReason">> => list(any()),
%%   <<"statusUpdatedAt">> => [non_neg_integer()],
%%   <<"summary">> => string(),
%%   <<"synopsis">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_code_issue_output() :: #{binary() => any()}.

%% Example:
%% get_code_scan_input() :: #{}
-type get_code_scan_input() :: #{}.


%% Example:
%% get_code_scan_output() :: #{
%%   <<"scan">> => code_scan_data()
%% }
-type get_code_scan_output() :: #{binary() => any()}.


%% Example:
%% get_collector_data_access_authorization_input() :: #{
%%   <<"accountId">> := string(),
%%   <<"environmentArn">> => string()
%% }
-type get_collector_data_access_authorization_input() :: #{binary() => any()}.

%% Example:
%% get_collector_data_access_authorization_output() :: #{}
-type get_collector_data_access_authorization_output() :: #{}.

%% Example:
%% get_collector_input() :: #{}
-type get_collector_input() :: #{}.


%% Example:
%% get_collector_output() :: #{
%%   <<"collectorArn">> => string(),
%%   <<"collectorId">> => string(),
%%   <<"configRecorderArn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"kubernetesClusterRoleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_collector_output() :: #{binary() => any()}.

%% Example:
%% get_environment_input() :: #{}
-type get_environment_input() :: #{}.


%% Example:
%% get_environment_output() :: #{
%%   <<"configuration">> => environment_configuration_details(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"statusUpdatedAt">> => [non_neg_integer()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_environment_output() :: #{binary() => any()}.

%% Example:
%% get_integration_input() :: #{}
-type get_integration_input() :: #{}.


%% Example:
%% get_integration_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"integrationArn">> => string(),
%%   <<"integrationId">> => string(),
%%   <<"integrationType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"providerDetails">> => list(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_integration_output() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_input() :: #{
%%   <<"arn">> := string()
%% }
-type get_resource_policy_input() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_output() :: #{
%%   <<"arn">> => string(),
%%   <<"policy">> => string(),
%%   <<"revisionId">> => string()
%% }
-type get_resource_policy_output() :: #{binary() => any()}.


%% Example:
%% git_hub_authorization_configuration() :: #{
%%   <<"authorizationCode">> => string(),
%%   <<"redirectUrl">> => string(),
%%   <<"state">> => string()
%% }
-type git_hub_authorization_configuration() :: #{binary() => any()}.


%% Example:
%% git_hub_configuration() :: #{
%%   <<"authorization">> => git_hub_authorization_configuration(),
%%   <<"organizationName">> => string()
%% }
-type git_hub_configuration() :: #{binary() => any()}.


%% Example:
%% git_hub_details() :: #{
%%   <<"organizationName">> => string()
%% }
-type git_hub_details() :: #{binary() => any()}.


%% Example:
%% git_hub_target() :: #{
%%   <<"headSha">> => string(),
%%   <<"owner">> => string(),
%%   <<"pullRequestNumber">> => float(),
%%   <<"repository">> => string()
%% }
-type git_hub_target() :: #{binary() => any()}.


%% Example:
%% git_lab_configuration() :: #{
%%   <<"accessToken">> => string(),
%%   <<"instanceUrl">> => string(),
%%   <<"targetPath">> => string(),
%%   <<"targetType">> => list(any())
%% }
-type git_lab_configuration() :: #{binary() => any()}.


%% Example:
%% git_lab_details() :: #{
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"instanceUrl">> => string(),
%%   <<"targetPath">> => string(),
%%   <<"targetType">> => list(any()),
%%   <<"tokenRotation">> => list(any())
%% }
-type git_lab_details() :: #{binary() => any()}.


%% Example:
%% integration_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"integrationArn">> => string(),
%%   <<"integrationId">> => string(),
%%   <<"integrationType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"providerDetails">> => list(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type integration_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% issue_artifact_item() :: #{
%%   <<"artifactId">> => string(),
%%   <<"artifactType">> => list(any()),
%%   <<"contentSizeBytes">> => [float()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"mediaType">> => string(),
%%   <<"producer">> => issue_artifact_producer_summary()
%% }
-type issue_artifact_item() :: #{binary() => any()}.


%% Example:
%% issue_artifact_producer_summary() :: #{
%%   <<"agent">> => string()
%% }
-type issue_artifact_producer_summary() :: #{binary() => any()}.


%% Example:
%% issue_patch_delivery() :: #{
%%   <<"failedCount">> => integer(),
%%   <<"failureReasons">> => list(list(any())()),
%%   <<"patchCount">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"succeededCount">> => integer()
%% }
-type issue_patch_delivery() :: #{binary() => any()}.


%% Example:
%% issue_summary() :: #{
%%   <<"confidence">> => integer(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"issueArn">> => string(),
%%   <<"issueId">> => string(),
%%   <<"name">> => string(),
%%   <<"phase">> => list(any()),
%%   <<"severity">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"statusReason">> => list(any()),
%%   <<"statusUpdatedAt">> => [non_neg_integer()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type issue_summary() :: #{binary() => any()}.


%% Example:
%% kubernetes_cluster_role_configuration() :: #{
%%   <<"externalId">> => string(),
%%   <<"roleArn">> => string()
%% }
-type kubernetes_cluster_role_configuration() :: #{binary() => any()}.


%% Example:
%% list_associated_collectors_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_associated_collectors_input() :: #{binary() => any()}.


%% Example:
%% list_associated_collectors_output() :: #{
%%   <<"associatedCollectors">> => list(associated_collector()),
%%   <<"nextToken">> => string()
%% }
-type list_associated_collectors_output() :: #{binary() => any()}.


%% Example:
%% list_associated_environments_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_associated_environments_input() :: #{binary() => any()}.


%% Example:
%% list_associated_environments_output() :: #{
%%   <<"associatedEnvironments">> => list(associated_environment()),
%%   <<"nextToken">> => string()
%% }
-type list_associated_environments_output() :: #{binary() => any()}.


%% Example:
%% list_code_findings_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_code_findings_input() :: #{binary() => any()}.


%% Example:
%% list_code_findings_output() :: #{
%%   <<"items">> => list(finding_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_code_findings_output() :: #{binary() => any()}.


%% Example:
%% list_code_issue_artifacts_input() :: #{
%%   <<"artifactType">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_code_issue_artifacts_input() :: #{binary() => any()}.


%% Example:
%% list_code_issue_artifacts_output() :: #{
%%   <<"items">> => list(issue_artifact_item()),
%%   <<"nextToken">> => string()
%% }
-type list_code_issue_artifacts_output() :: #{binary() => any()}.


%% Example:
%% list_code_issues_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_code_issues_input() :: #{binary() => any()}.


%% Example:
%% list_code_issues_output() :: #{
%%   <<"items">> => list(issue_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_code_issues_output() :: #{binary() => any()}.


%% Example:
%% list_code_scans_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_code_scans_input() :: #{binary() => any()}.


%% Example:
%% list_code_scans_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"scans">> => list(code_scan_summary())
%% }
-type list_code_scans_output() :: #{binary() => any()}.

%% Example:
%% list_collectors_input() :: #{}
-type list_collectors_input() :: #{}.


%% Example:
%% list_collectors_output() :: #{
%%   <<"items">> => list(collector_summary())
%% }
-type list_collectors_output() :: #{binary() => any()}.


%% Example:
%% list_environments_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_environments_input() :: #{binary() => any()}.


%% Example:
%% list_environments_output() :: #{
%%   <<"items">> => list(environment_list_entry()),
%%   <<"nextToken">> => string()
%% }
-type list_environments_output() :: #{binary() => any()}.


%% Example:
%% list_integrations_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_integrations_input() :: #{binary() => any()}.


%% Example:
%% list_integrations_output() :: #{
%%   <<"items">> => list(integration_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_integrations_output() :: #{binary() => any()}.


%% Example:
%% patch_body() :: #{
%%   <<"delivery">> => patch_delivery(),
%%   <<"format">> => list(any()),
%%   <<"patch">> => string(),
%%   <<"patchSha256">> => string(),
%%   <<"repositoryName">> => string(),
%%   <<"sizeBytes">> => [float()]
%% }
-type patch_body() :: #{binary() => any()}.


%% Example:
%% patch_delivery() :: #{
%%   <<"status">> => list(any()),
%%   <<"target">> => list(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type patch_delivery() :: #{binary() => any()}.


%% Example:
%% per_finding_result() :: #{
%%   <<"confidence">> => float(),
%%   <<"exploitArtifact">> => validation_exploit_artifact(),
%%   <<"exploitable">> => list(any()),
%%   <<"findingId">> => string(),
%%   <<"flowVerdicts">> => list(flow_verdict()),
%%   <<"reasoningChain">> => list(reasoning_step())
%% }
-type per_finding_result() :: #{binary() => any()}.


%% Example:
%% prevalidation_signal() :: #{
%%   <<"computed">> => signal_computation(),
%%   <<"conclusion">> => string(),
%%   <<"confidence">> => float(),
%%   <<"confidenceReasoning">> => signal_confidence_reasoning(),
%%   <<"dimension">> => list(any()),
%%   <<"exploitability">> => signal_exploitability(),
%%   <<"impactDimensions">> => signal_impact_dimensions(),
%%   <<"preconditions">> => signal_preconditions(),
%%   <<"producerId">> => string(),
%%   <<"producerVersion">> => string(),
%%   <<"signalStrength">> => list(any()),
%%   <<"subjectRef">> => string()
%% }
-type prevalidation_signal() :: #{binary() => any()}.


%% Example:
%% prevalidation_signals_body() :: #{
%%   <<"producedBy">> => string(),
%%   <<"signals">> => list(prevalidation_signal())
%% }
-type prevalidation_signals_body() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_input() :: #{
%%   <<"arn">> := string(),
%%   <<"expectedRevisionId">> => string(),
%%   <<"policy">> => string()
%% }
-type put_resource_policy_input() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_output() :: #{
%%   <<"arn">> => string(),
%%   <<"policy">> => string(),
%%   <<"revisionId">> => string()
%% }
-type put_resource_policy_output() :: #{binary() => any()}.


%% Example:
%% reasoning_step() :: #{
%%   <<"claim">> => string(),
%%   <<"confidence">> => float(),
%%   <<"source">> => string(),
%%   <<"step">> => [integer()]
%% }
-type reasoning_step() :: #{binary() => any()}.


%% Example:
%% remediation_proposal_body() :: #{
%%   <<"filename">> => string(),
%%   <<"format">> => list(any()),
%%   <<"patch">> => string(),
%%   <<"patchSha256">> => string()
%% }
-type remediation_proposal_body() :: #{binary() => any()}.

%% Example:
%% remove_kubernetes_cluster_role() :: #{}
-type remove_kubernetes_cluster_role() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% s3_configuration() :: #{
%%   <<"bucket">> => string(),
%%   <<"externalId">> => string(),
%%   <<"roleArn">> => string()
%% }
-type s3_configuration() :: #{binary() => any()}.


%% Example:
%% s3_details() :: #{
%%   <<"bucket">> => string(),
%%   <<"roleArn">> => string()
%% }
-type s3_details() :: #{binary() => any()}.


%% Example:
%% s3_target() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string(),
%%   <<"version">> => string()
%% }
-type s3_target() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% signal_access_precondition() :: #{
%%   <<"basis">> => list(any()),
%%   <<"missingInfo">> => string(),
%%   <<"reason">> => string(),
%%   <<"value">> => list(any())
%% }
-type signal_access_precondition() :: #{binary() => any()}.


%% Example:
%% signal_attacker_gains_dimension() :: #{
%%   <<"basis">> => list(any()),
%%   <<"missingInfo">> => string(),
%%   <<"reason">> => string(),
%%   <<"value">> => list(any())
%% }
-type signal_attacker_gains_dimension() :: #{binary() => any()}.


%% Example:
%% signal_blast_radius_dimension() :: #{
%%   <<"basis">> => list(any()),
%%   <<"missingInfo">> => string(),
%%   <<"reason">> => string(),
%%   <<"value">> => list(any())
%% }
-type signal_blast_radius_dimension() :: #{binary() => any()}.


%% Example:
%% signal_computation() :: #{
%%   <<"barriers">> => [integer()],
%%   <<"impactBand">> => list(any()),
%%   <<"likelihoodBand">> => list(any())
%% }
-type signal_computation() :: #{binary() => any()}.


%% Example:
%% signal_confidence_reasoning() :: #{
%%   <<"factors">> => list(string()),
%%   <<"summary">> => string()
%% }
-type signal_confidence_reasoning() :: #{binary() => any()}.


%% Example:
%% signal_exploitability() :: #{
%%   <<"confidenceTier">> => list(any()),
%%   <<"highestLayerReached">> => [integer()],
%%   <<"reachedCrownJewels">> => [boolean()],
%%   <<"scriptable">> => [boolean()],
%%   <<"sourceValidationArtifactId">> => string(),
%%   <<"verdict">> => list(any())
%% }
-type signal_exploitability() :: #{binary() => any()}.


%% Example:
%% signal_impact_dimensions() :: #{
%%   <<"attackerGains">> => signal_attacker_gains_dimension(),
%%   <<"blastRadius">> => signal_blast_radius_dimension(),
%%   <<"targetValue">> => signal_target_value_dimension()
%% }
-type signal_impact_dimensions() :: #{binary() => any()}.


%% Example:
%% signal_precondition() :: #{
%%   <<"basis">> => list(any()),
%%   <<"missingInfo">> => string(),
%%   <<"reason">> => string(),
%%   <<"value">> => [boolean()]
%% }
-type signal_precondition() :: #{binary() => any()}.


%% Example:
%% signal_preconditions() :: #{
%%   <<"accessLevel">> => signal_access_precondition(),
%%   <<"configurationNeeded">> => signal_precondition(),
%%   <<"reachableFromAttacker">> => signal_precondition(),
%%   <<"userInteractionRequired">> => signal_precondition()
%% }
-type signal_preconditions() :: #{binary() => any()}.


%% Example:
%% signal_target_value_dimension() :: #{
%%   <<"basis">> => list(any()),
%%   <<"missingInfo">> => string(),
%%   <<"reason">> => string(),
%%   <<"value">> => list(any())
%% }
-type signal_target_value_dimension() :: #{binary() => any()}.


%% Example:
%% start_integration_authorization_input() :: #{
%%   <<"name">> => string(),
%%   <<"providerType">> := list(any())
%% }
-type start_integration_authorization_input() :: #{binary() => any()}.


%% Example:
%% start_integration_authorization_output() :: #{
%%   <<"codeChallenge">> => string(),
%%   <<"codeChallengeMethod">> => list(any()),
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"state">> => string()
%% }
-type start_integration_authorization_output() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_code_configuration() :: #{
%%   <<"environmentConfiguration">> => environment_configuration(),
%%   <<"sourceConfiguration">> => environment_source_configuration()
%% }
-type update_code_configuration() :: #{binary() => any()}.


%% Example:
%% update_collector_input() :: #{
%%   <<"kubernetesClusterRole">> => list(),
%%   <<"name">> => string()
%% }
-type update_collector_input() :: #{binary() => any()}.


%% Example:
%% update_collector_output() :: #{
%%   <<"collectorArn">> => string(),
%%   <<"collectorId">> => string(),
%%   <<"configRecorderArn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"kubernetesClusterRoleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_collector_output() :: #{binary() => any()}.


%% Example:
%% update_environment_configuration() :: #{
%%   <<"codeConfiguration">> => update_code_configuration()
%% }
-type update_environment_configuration() :: #{binary() => any()}.


%% Example:
%% update_environment_input() :: #{
%%   <<"configuration">> => update_environment_configuration(),
%%   <<"name">> => string()
%% }
-type update_environment_input() :: #{binary() => any()}.


%% Example:
%% update_environment_output() :: #{
%%   <<"configuration">> => environment_configuration_details(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"statusUpdatedAt">> => [non_neg_integer()]
%% }
-type update_environment_output() :: #{binary() => any()}.


%% Example:
%% update_integration_input() :: #{
%%   <<"providerConfiguration">> := list()
%% }
-type update_integration_input() :: #{binary() => any()}.


%% Example:
%% update_integration_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"integrationArn">> => string(),
%%   <<"integrationId">> => string(),
%%   <<"integrationType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"providerDetails">> => list(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_integration_output() :: #{binary() => any()}.


%% Example:
%% update_s3_configuration() :: #{
%%   <<"externalId">> => string(),
%%   <<"roleArn">> => string()
%% }
-type update_s3_configuration() :: #{binary() => any()}.


%% Example:
%% validation_evidence_body() :: #{
%%   <<"attackFlowsConfirmed">> => list(string()),
%%   <<"executedProof">> => validation_executed_proof(),
%%   <<"exploitArtifact">> => validation_exploit_artifact(),
%%   <<"exploitable">> => list(any()),
%%   <<"flowVerdicts">> => list(flow_verdict()),
%%   <<"perFindingResults">> => list(per_finding_result()),
%%   <<"sourceAnalysis">> => validation_source_analysis(),
%%   <<"terminalStatus">> => list(any())
%% }
-type validation_evidence_body() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> := [string()],
%%   <<"path">> := [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% validation_executed_proof() :: #{
%%   <<"code">> => validation_proof_code(),
%%   <<"observedEffect">> => list(any()),
%%   <<"output">> => validation_proof_output()
%% }
-type validation_executed_proof() :: #{binary() => any()}.


%% Example:
%% validation_exploit_artifact() :: #{
%%   <<"effect">> => list(any()),
%%   <<"headers">> => map(),
%%   <<"httpMethod">> => list(any()),
%%   <<"payload">> => string(),
%%   <<"responseSnippet">> => string(),
%%   <<"responseStatus">> => [integer()],
%%   <<"targetUrl">> => string()
%% }
-type validation_exploit_artifact() :: #{binary() => any()}.


%% Example:
%% validation_proof_code() :: #{
%%   <<"proofCode">> => list(validation_proof_material())
%% }
-type validation_proof_code() :: #{binary() => any()}.


%% Example:
%% validation_proof_material() :: #{
%%   <<"content">> => string()
%% }
-type validation_proof_material() :: #{binary() => any()}.


%% Example:
%% validation_proof_output() :: #{
%%   <<"consoleOutput">> => string()
%% }
-type validation_proof_output() :: #{binary() => any()}.


%% Example:
%% validation_source_analysis() :: #{
%%   <<"inferredEffect">> => list(any()),
%%   <<"summary">> => string()
%% }
-type validation_source_analysis() :: #{binary() => any()}.

-type associate_collector_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_code_finding_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_code_scan_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_collector_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_environment_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_integration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_collector_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_environment_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_integration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type disassociate_collector_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_code_finding_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_code_issue_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_code_issue_artifact_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_code_scan_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_collector_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_collector_data_access_authorization_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_environment_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_integration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_resource_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_associated_collectors_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_associated_environments_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_code_findings_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_code_issue_artifacts_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_code_issues_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_code_scans_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_collectors_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_environments_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_integrations_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type put_resource_policy_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type start_integration_authorization_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_collector_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_environment_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_integration_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates one Collector with this Environment and configures the
%% customer role Continuum uses to authorize access to associated Collector
%% data.
%%
%% The caller must have permission on the Environment and permission to pass
%% the role. Continuum assumes the supplied role and calls
%% GetCollectorDataAccessAuthorization on the requested Collector; only a
%% successful authorization response permits the association. The caller does
%% not need Collector data-access permission. The Environment retains its
%% other Collector associations. Calling again with an existing association
%% is safe and does not create a duplicate.
-spec associate_collector(aws_client:aws_client(), binary() | list(), associate_collector_input()) ->
    {ok, associate_collector_output(), tuple()} |
    {error, any()} |
    {error, associate_collector_errors(), tuple()}.
associate_collector(Client, EnvironmentId, Input) ->
    associate_collector(Client, EnvironmentId, Input, []).

-spec associate_collector(aws_client:aws_client(), binary() | list(), associate_collector_input(), proplists:proplist()) ->
    {ok, associate_collector_output(), tuple()} |
    {error, any()} |
    {error, associate_collector_errors(), tuple()}.
associate_collector(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/collectors"],
    SuccessStatusCode = 201,
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

%% @doc Ingests a customer-supplied security finding into an environment.
%%
%% Continuum validates the document synchronously against the required
%% overlay fields for the declared format; invalid documents are rejected
%% with a ValidationException. The maximum accepted document size is 256 KB.
%% The environment must have a source configured, and the finding must
%% identify a code location so Continuum can tie it to a repository in the
%% environment's build. Continuum assigns a findingId and stores the
%% verbatim document. When no successful build yet contains the finding's
%% repository, the finding stays SUBMITTED until the next successful build;
%% if that build does not contain it either, the finding is DISCARDED with
%% discardReason SOURCE_REPO_NOT_FOUND.
-spec create_code_finding(aws_client:aws_client(), binary() | list(), create_code_finding_input()) ->
    {ok, create_code_finding_output(), tuple()} |
    {error, any()} |
    {error, create_code_finding_errors(), tuple()}.
create_code_finding(Client, EnvironmentId, Input) ->
    create_code_finding(Client, EnvironmentId, Input, []).

-spec create_code_finding(aws_client:aws_client(), binary() | list(), create_code_finding_input(), proplists:proplist()) ->
    {ok, create_code_finding_output(), tuple()} |
    {error, any()} |
    {error, create_code_finding_errors(), tuple()}.
create_code_finding(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/code-findings"],
    SuccessStatusCode = 201,
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

%% @doc Creates an explicit scan request for one environment.
%%
%% CP creates durable work before
%% any queue delivery occurs.
%%
%% Retrying a request that succeeded, with the same clientToken on the same
%% environment,
%% returns the original scan instead of starting another one. Token handling
%% is not yet
%% atomic: requests with the same token that run at the same time, or a retry
%% after a
%% request that failed partway through, can leave an additional scan, which
%% may end in
%% the FAILED state with a message that it was superseded. Deleting the
%% environment
%% makes its tokens unusable; a later request with one of them returns
%% ResourceNotFoundException.
%%
%% Each environment can have a limited number of scans in progress at the
%% same time.
%% Once that limit is enforced, a request that would exceed it returns
%% ServiceQuotaExceededException; wait for a scan to finish (ListCodeScans
%% shows each
%% scan's status), then retry.
-spec create_code_scan(aws_client:aws_client(), binary() | list(), create_code_scan_input()) ->
    {ok, create_code_scan_output(), tuple()} |
    {error, any()} |
    {error, create_code_scan_errors(), tuple()}.
create_code_scan(Client, EnvironmentId, Input) ->
    create_code_scan(Client, EnvironmentId, Input, []).

-spec create_code_scan(aws_client:aws_client(), binary() | list(), create_code_scan_input(), proplists:proplist()) ->
    {ok, create_code_scan_output(), tuple()} |
    {error, any()} |
    {error, create_code_scan_errors(), tuple()}.
create_code_scan(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/code-scans"],
    SuccessStatusCode = 201,
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

%% @doc Creates the Collector for the caller's account.
%%
%% Provisions an AWS Config service-linked recorder using the caller's
%% federated access session and begins recording infrastructure changes.
-spec create_collector(aws_client:aws_client(), create_collector_input()) ->
    {ok, create_collector_output(), tuple()} |
    {error, any()} |
    {error, create_collector_errors(), tuple()}.
create_collector(Client, Input) ->
    create_collector(Client, Input, []).

-spec create_collector(aws_client:aws_client(), create_collector_input(), proplists:proplist()) ->
    {ok, create_collector_output(), tuple()} |
    {error, any()} |
    {error, create_collector_errors(), tuple()}.
create_collector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/collectors"],
    SuccessStatusCode = 201,
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

%% @doc Creates an environment and starts its validation and any requested
%% provisioning.
%%
%% Storage provisioning and dependency checks may continue after the initial
%% 201 response; use GetEnvironment to observe completion.
-spec create_environment(aws_client:aws_client(), create_environment_input()) ->
    {ok, create_environment_output(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input) ->
    create_environment(Client, Input, []).

-spec create_environment(aws_client:aws_client(), create_environment_input(), proplists:proplist()) ->
    {ok, create_environment_output(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/environments"],
    SuccessStatusCode = 201,
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

%% @doc Creates a new integration with an external source provider.
%%
%% Repeating an identical
%% request with the same clientToken returns the original integrationId,
%% integrationArn,
%% and createdAt. Token records are retained for eight hours after success or
%% terminal failure,
%% including after the integration is deleted; replaying a deleted
%% integration's token
%% does not recreate it. An identical request with a retained terminal
%% failure returns
%% the recorded error.
%%
%% Reusing a token with different parameters returns ValidationException. A
%% fresh token
%% starts a new create attempt; if the name is already owned by another
%% integration,
%% ConflictException includes that integration's identifier. An attempt
%% still in progress
%% may return ThrottlingException with retryAfterSeconds set to 1; retry with
%% the same token
%% and identical parameters.
%%
%% GitHub authorization codes are single use. Retry an unresolved attempt
%% with its
%% original token and unchanged parameters first. If the service reports a
%% terminal
%% failure, an expired attempt, or a successful token exchange whose
%% integration could
%% not be saved, restart GitHub authorization with a fresh token and
%% authorization code.
%% The service does not checkpoint provider results for recovery by another
%% request.
-spec create_integration(aws_client:aws_client(), create_integration_input()) ->
    {ok, create_integration_output(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, Input) ->
    create_integration(Client, Input, []).

-spec create_integration(aws_client:aws_client(), create_integration_input(), proplists:proplist()) ->
    {ok, create_integration_output(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/integrations"],
    SuccessStatusCode = 201,
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

%% @doc Deletes the Collector for the caller's account.
%%
%% The Collector first enters PENDING_DELETION, then the service removes its
%% schedule, AWS Config service-linked recorder, versioned S3 bucket, KMS
%% key, and persisted record.
-spec delete_collector(aws_client:aws_client(), binary() | list(), delete_collector_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_collector_errors(), tuple()}.
delete_collector(Client, CollectorId, Input) ->
    delete_collector(Client, CollectorId, Input, []).

-spec delete_collector(aws_client:aws_client(), binary() | list(), delete_collector_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_collector_errors(), tuple()}.
delete_collector(Client, CollectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/collectors/", aws_util:encode_uri(CollectorId), ""],
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

%% @doc Deletes an environment and its associated resources.
-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, EnvironmentId, Input) ->
    delete_environment(Client, EnvironmentId, Input, []).

-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc Deletes an integration and releases its name and account quota.
%%
%% Its retained
%% CreateIntegration token receipt can still replay the original result
%% without
%% recreating the integration. Shared provider registrations are retained:
%% deleting
%% one integration does not remove provider access used by another
%% integration.
%% A fresh GitHub CreateIntegration attempt requires a fresh OAuth
%% authorization
%% code and a new clientToken.
-spec delete_integration(aws_client:aws_client(), binary() | list(), delete_integration_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, IntegrationId, Input) ->
    delete_integration(Client, IntegrationId, Input, []).

-spec delete_integration(aws_client:aws_client(), binary() | list(), delete_integration_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, IntegrationId, Input0, Options0) ->
    Method = delete,
    Path = ["/integrations/", aws_util:encode_uri(IntegrationId), ""],
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

%% @doc Removes one Collector association from this Environment, preserving
%% its other associations.
%%
%% The stored Collector data-access role is cleared when no Collector
%% associations remain. The Environment owner must have permission to
%% disassociate. A current Collector access grant is not required, and the
%% Collector does not need to remain active or present, so stale or revoked
%% associations can be cleaned up.
-spec disassociate_collector(aws_client:aws_client(), binary() | list(), disassociate_collector_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_collector_errors(), tuple()}.
disassociate_collector(Client, EnvironmentId, Input) ->
    disassociate_collector(Client, EnvironmentId, Input, []).

-spec disassociate_collector(aws_client:aws_client(), binary() | list(), disassociate_collector_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_collector_errors(), tuple()}.
disassociate_collector(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/collectors/disassociate"],
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

%% @doc Retrieves the current state and details of a finding.
-spec get_code_finding(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_code_finding_output(), tuple()} |
    {error, any()} |
    {error, get_code_finding_errors(), tuple()}.
get_code_finding(Client, EnvironmentId, FindingId)
  when is_map(Client) ->
    get_code_finding(Client, EnvironmentId, FindingId, #{}, #{}).

-spec get_code_finding(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_code_finding_output(), tuple()} |
    {error, any()} |
    {error, get_code_finding_errors(), tuple()}.
get_code_finding(Client, EnvironmentId, FindingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_code_finding(Client, EnvironmentId, FindingId, QueryMap, HeadersMap, []).

-spec get_code_finding(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_code_finding_output(), tuple()} |
    {error, any()} |
    {error, get_code_finding_errors(), tuple()}.
get_code_finding(Client, EnvironmentId, FindingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/code-findings/", aws_util:encode_uri(FindingId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current state and details of an issue.
-spec get_code_issue(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_code_issue_output(), tuple()} |
    {error, any()} |
    {error, get_code_issue_errors(), tuple()}.
get_code_issue(Client, EnvironmentId, IssueId)
  when is_map(Client) ->
    get_code_issue(Client, EnvironmentId, IssueId, #{}, #{}).

-spec get_code_issue(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_code_issue_output(), tuple()} |
    {error, any()} |
    {error, get_code_issue_errors(), tuple()}.
get_code_issue(Client, EnvironmentId, IssueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_code_issue(Client, EnvironmentId, IssueId, QueryMap, HeadersMap, []).

-spec get_code_issue(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_code_issue_output(), tuple()} |
    {error, any()} |
    {error, get_code_issue_errors(), tuple()}.
get_code_issue(Client, EnvironmentId, IssueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/code-issues/", aws_util:encode_uri(IssueId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves one immutable artifact attached to an issue, including its
%% content.
-spec get_code_issue_artifact(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_code_issue_artifact_output(), tuple()} |
    {error, any()} |
    {error, get_code_issue_artifact_errors(), tuple()}.
get_code_issue_artifact(Client, ArtifactId, EnvironmentId, IssueId)
  when is_map(Client) ->
    get_code_issue_artifact(Client, ArtifactId, EnvironmentId, IssueId, #{}, #{}).

-spec get_code_issue_artifact(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_code_issue_artifact_output(), tuple()} |
    {error, any()} |
    {error, get_code_issue_artifact_errors(), tuple()}.
get_code_issue_artifact(Client, ArtifactId, EnvironmentId, IssueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_code_issue_artifact(Client, ArtifactId, EnvironmentId, IssueId, QueryMap, HeadersMap, []).

-spec get_code_issue_artifact(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_code_issue_artifact_output(), tuple()} |
    {error, any()} |
    {error, get_code_issue_artifact_errors(), tuple()}.
get_code_issue_artifact(Client, ArtifactId, EnvironmentId, IssueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/code-issues/", aws_util:encode_uri(IssueId), "/artifacts/", aws_util:encode_uri(ArtifactId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves one customer-visible environment scan.
-spec get_code_scan(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_code_scan_output(), tuple()} |
    {error, any()} |
    {error, get_code_scan_errors(), tuple()}.
get_code_scan(Client, EnvironmentId, ScanRunId)
  when is_map(Client) ->
    get_code_scan(Client, EnvironmentId, ScanRunId, #{}, #{}).

-spec get_code_scan(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_code_scan_output(), tuple()} |
    {error, any()} |
    {error, get_code_scan_errors(), tuple()}.
get_code_scan(Client, EnvironmentId, ScanRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_code_scan(Client, EnvironmentId, ScanRunId, QueryMap, HeadersMap, []).

-spec get_code_scan(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_code_scan_output(), tuple()} |
    {error, any()} |
    {error, get_code_scan_errors(), tuple()}.
get_code_scan(Client, EnvironmentId, ScanRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/code-scans/", aws_util:encode_uri(ScanRunId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current state of the Collector for the caller's
%% account.
-spec get_collector(aws_client:aws_client(), binary() | list()) ->
    {ok, get_collector_output(), tuple()} |
    {error, any()} |
    {error, get_collector_errors(), tuple()}.
get_collector(Client, CollectorId)
  when is_map(Client) ->
    get_collector(Client, CollectorId, #{}, #{}).

-spec get_collector(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_collector_output(), tuple()} |
    {error, any()} |
    {error, get_collector_errors(), tuple()}.
get_collector(Client, CollectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collector(Client, CollectorId, QueryMap, HeadersMap, []).

-spec get_collector(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_collector_output(), tuple()} |
    {error, any()} |
    {error, get_collector_errors(), tuple()}.
get_collector(Client, CollectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collectors/", aws_util:encode_uri(CollectorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Authorizes an Environment's access to a Collector's data.
%%
%% Continuum calls this
%% operation with the Environment's Collector data-access role before it
%% reads the
%% Collector's inventory, so grant
%% continuum:GetCollectorDataAccessAuthorization to
%% that role and, for a Collector in another account, in the Collector's
%% resource
%% policy. The operation evaluates the action against the exact Collector ARN
%% and
%% the Collector's current resource policy using IAM and the caller's
%% authenticated
%% request context, with environmentArn as the continuum:EnvironmentArn
%% condition
%% key. A successful request returns HTTP 200 with no response members. If
%% access
%% is not granted, the operation returns AccessDeniedException without
%% disclosing
%% Collector existence, ownership, or the policy layer that denied access.
%% The
%% service does not reinterpret the policy using only an account ID.
-spec get_collector_data_access_authorization(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_collector_data_access_authorization_output(), tuple()} |
    {error, any()} |
    {error, get_collector_data_access_authorization_errors(), tuple()}.
get_collector_data_access_authorization(Client, CollectorId, AccountId)
  when is_map(Client) ->
    get_collector_data_access_authorization(Client, CollectorId, AccountId, #{}, #{}).

-spec get_collector_data_access_authorization(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_collector_data_access_authorization_output(), tuple()} |
    {error, any()} |
    {error, get_collector_data_access_authorization_errors(), tuple()}.
get_collector_data_access_authorization(Client, CollectorId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collector_data_access_authorization(Client, CollectorId, AccountId, QueryMap, HeadersMap, []).

-spec get_collector_data_access_authorization(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_collector_data_access_authorization_output(), tuple()} |
    {error, any()} |
    {error, get_collector_data_access_authorization_errors(), tuple()}.
get_collector_data_access_authorization(Client, CollectorId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collectors/", aws_util:encode_uri(CollectorId), "/data-access-authorization"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, AccountId},
        {<<"environmentArn">>, maps:get(<<"environmentArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current state and configuration of an environment.
-spec get_environment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentId)
  when is_map(Client) ->
    get_environment(Client, EnvironmentId, #{}, #{}).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an integration.
-spec get_integration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_integration_output(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, IntegrationId)
  when is_map(Client) ->
    get_integration(Client, IntegrationId, #{}, #{}).

-spec get_integration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_integration_output(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, IntegrationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_integration(Client, IntegrationId, QueryMap, HeadersMap, []).

-spec get_integration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_integration_output(), tuple()} |
    {error, any()} |
    {error, get_integration_errors(), tuple()}.
get_integration(Client, IntegrationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/integrations/", aws_util:encode_uri(IntegrationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the resource policy attached to a Continuum resource.
-spec get_resource_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Arn)
  when is_map(Client) ->
    get_resource_policy(Client, Arn, #{}, #{}).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, Arn, QueryMap, HeadersMap, []).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcepolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Collectors currently associated with one Environment in
%% ascending collectorId order.
%%
%% Each entry carries the Collector ARN, so a listed association can be
%% passed straight to DisassociateCollector, including when the Collector
%% belongs to another account. An association recorded before Continuum
%% persisted the ARN is omitted from the response, because without the ARN it
%% cannot be acted on.
-spec list_associated_collectors(aws_client:aws_client(), binary() | list()) ->
    {ok, list_associated_collectors_output(), tuple()} |
    {error, any()} |
    {error, list_associated_collectors_errors(), tuple()}.
list_associated_collectors(Client, EnvironmentId)
  when is_map(Client) ->
    list_associated_collectors(Client, EnvironmentId, #{}, #{}).

-spec list_associated_collectors(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_associated_collectors_output(), tuple()} |
    {error, any()} |
    {error, list_associated_collectors_errors(), tuple()}.
list_associated_collectors(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_collectors(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_associated_collectors(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_associated_collectors_output(), tuple()} |
    {error, any()} |
    {error, list_associated_collectors_errors(), tuple()}.
list_associated_collectors(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/collectors"],
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

%% @doc Lists the Environments currently associated with one Collector in
%% lexicographically ascending environmentArn order.
%%
%% The ARN identifies each Environment across accounts within the
%% Collector's Region.
-spec list_associated_environments(aws_client:aws_client(), binary() | list()) ->
    {ok, list_associated_environments_output(), tuple()} |
    {error, any()} |
    {error, list_associated_environments_errors(), tuple()}.
list_associated_environments(Client, CollectorId)
  when is_map(Client) ->
    list_associated_environments(Client, CollectorId, #{}, #{}).

-spec list_associated_environments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_associated_environments_output(), tuple()} |
    {error, any()} |
    {error, list_associated_environments_errors(), tuple()}.
list_associated_environments(Client, CollectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_environments(Client, CollectorId, QueryMap, HeadersMap, []).

-spec list_associated_environments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_associated_environments_output(), tuple()} |
    {error, any()} |
    {error, list_associated_environments_errors(), tuple()}.
list_associated_environments(Client, CollectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collectors/", aws_util:encode_uri(CollectorId), "/environments"],
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

%% @doc Lists the findings in an environment in descending findingId order.
-spec list_code_findings(aws_client:aws_client(), binary() | list()) ->
    {ok, list_code_findings_output(), tuple()} |
    {error, any()} |
    {error, list_code_findings_errors(), tuple()}.
list_code_findings(Client, EnvironmentId)
  when is_map(Client) ->
    list_code_findings(Client, EnvironmentId, #{}, #{}).

-spec list_code_findings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_code_findings_output(), tuple()} |
    {error, any()} |
    {error, list_code_findings_errors(), tuple()}.
list_code_findings(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_code_findings(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_code_findings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_code_findings_output(), tuple()} |
    {error, any()} |
    {error, list_code_findings_errors(), tuple()}.
list_code_findings(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/code-findings"],
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

%% @doc Lists the artifacts attached to an issue in descending artifactId
%% order.
%%
%% Content is returned by GetCodeIssueArtifact.
-spec list_code_issue_artifacts(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_code_issue_artifacts_output(), tuple()} |
    {error, any()} |
    {error, list_code_issue_artifacts_errors(), tuple()}.
list_code_issue_artifacts(Client, EnvironmentId, IssueId)
  when is_map(Client) ->
    list_code_issue_artifacts(Client, EnvironmentId, IssueId, #{}, #{}).

-spec list_code_issue_artifacts(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_code_issue_artifacts_output(), tuple()} |
    {error, any()} |
    {error, list_code_issue_artifacts_errors(), tuple()}.
list_code_issue_artifacts(Client, EnvironmentId, IssueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_code_issue_artifacts(Client, EnvironmentId, IssueId, QueryMap, HeadersMap, []).

-spec list_code_issue_artifacts(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_code_issue_artifacts_output(), tuple()} |
    {error, any()} |
    {error, list_code_issue_artifacts_errors(), tuple()}.
list_code_issue_artifacts(Client, EnvironmentId, IssueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/code-issues/", aws_util:encode_uri(IssueId), "/artifacts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"artifactType">>, maps:get(<<"artifactType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the issues in an environment in descending issueId order.
-spec list_code_issues(aws_client:aws_client(), binary() | list()) ->
    {ok, list_code_issues_output(), tuple()} |
    {error, any()} |
    {error, list_code_issues_errors(), tuple()}.
list_code_issues(Client, EnvironmentId)
  when is_map(Client) ->
    list_code_issues(Client, EnvironmentId, #{}, #{}).

-spec list_code_issues(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_code_issues_output(), tuple()} |
    {error, any()} |
    {error, list_code_issues_errors(), tuple()}.
list_code_issues(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_code_issues(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_code_issues(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_code_issues_output(), tuple()} |
    {error, any()} |
    {error, list_code_issues_errors(), tuple()}.
list_code_issues(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/code-issues"],
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

%% @doc Lists customer-visible scans for one environment in descending
%% scanRunId order.
-spec list_code_scans(aws_client:aws_client(), binary() | list()) ->
    {ok, list_code_scans_output(), tuple()} |
    {error, any()} |
    {error, list_code_scans_errors(), tuple()}.
list_code_scans(Client, EnvironmentId)
  when is_map(Client) ->
    list_code_scans(Client, EnvironmentId, #{}, #{}).

-spec list_code_scans(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_code_scans_output(), tuple()} |
    {error, any()} |
    {error, list_code_scans_errors(), tuple()}.
list_code_scans(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_code_scans(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec list_code_scans(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_code_scans_output(), tuple()} |
    {error, any()} |
    {error, list_code_scans_errors(), tuple()}.
list_code_scans(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), "/code-scans"],
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

%% @doc Lists the Collectors owned by the authenticated caller's account,
%% including a Collector whose deletion is in progress.
%%
%% A Collector that is still being created is omitted. The account-scoped
%% Collector quota currently permits at most one result, so no result
%% ordering applies.
-spec list_collectors(aws_client:aws_client()) ->
    {ok, list_collectors_output(), tuple()} |
    {error, any()} |
    {error, list_collectors_errors(), tuple()}.
list_collectors(Client)
  when is_map(Client) ->
    list_collectors(Client, #{}, #{}).

-spec list_collectors(aws_client:aws_client(), map(), map()) ->
    {ok, list_collectors_output(), tuple()} |
    {error, any()} |
    {error, list_collectors_errors(), tuple()}.
list_collectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collectors(Client, QueryMap, HeadersMap, []).

-spec list_collectors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_collectors_output(), tuple()} |
    {error, any()} |
    {error, list_collectors_errors(), tuple()}.
list_collectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collectors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all environments in your account in descending environmentId
%% order.
%%
%% This complete-inventory operation intentionally has no response filters;
%% see the input documentation for the API standards justification.
-spec list_environments(aws_client:aws_client()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client)
  when is_map(Client) ->
    list_environments(Client, #{}, #{}).

-spec list_environments(aws_client:aws_client(), map(), map()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, QueryMap, HeadersMap, []).

-spec list_environments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments"],
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

%% @doc Lists the integrations in your account in descending integrationId
%% order.
-spec list_integrations(aws_client:aws_client()) ->
    {ok, list_integrations_output(), tuple()} |
    {error, any()} |
    {error, list_integrations_errors(), tuple()}.
list_integrations(Client)
  when is_map(Client) ->
    list_integrations(Client, #{}, #{}).

-spec list_integrations(aws_client:aws_client(), map(), map()) ->
    {ok, list_integrations_output(), tuple()} |
    {error, any()} |
    {error, list_integrations_errors(), tuple()}.
list_integrations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_integrations(Client, QueryMap, HeadersMap, []).

-spec list_integrations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_integrations_output(), tuple()} |
    {error, any()} |
    {error, list_integrations_errors(), tuple()}.
list_integrations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/integrations"],
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

%% @doc Creates or replaces the resource policy attached to a Continuum
%% resource.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_input()) ->
    {ok, put_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_input(), proplists:proplist()) ->
    {ok, put_resource_policy_output(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/resourcepolicy"],
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

%% @doc Starts an OAuth authorization for a new integration and returns the
%% values the caller sends to the provider's authorization endpoint.
%%
%% The authorization belongs to the calling AWS account, can be redeemed once
%% by CreateIntegration from that same account, and expires after ten
%% minutes.
-spec start_integration_authorization(aws_client:aws_client(), start_integration_authorization_input()) ->
    {ok, start_integration_authorization_output(), tuple()} |
    {error, any()} |
    {error, start_integration_authorization_errors(), tuple()}.
start_integration_authorization(Client, Input) ->
    start_integration_authorization(Client, Input, []).

-spec start_integration_authorization(aws_client:aws_client(), start_integration_authorization_input(), proplists:proplist()) ->
    {ok, start_integration_authorization_output(), tuple()} |
    {error, any()} |
    {error, start_integration_authorization_errors(), tuple()}.
start_integration_authorization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/integration-authorizations"],
    SuccessStatusCode = 201,
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

%% @doc Updates the customer-controlled mutable properties of a Collector.
%%
%% Only the name and Kubernetes cluster IAM role can be changed.
-spec update_collector(aws_client:aws_client(), binary() | list(), update_collector_input()) ->
    {ok, update_collector_output(), tuple()} |
    {error, any()} |
    {error, update_collector_errors(), tuple()}.
update_collector(Client, CollectorId, Input) ->
    update_collector(Client, CollectorId, Input, []).

-spec update_collector(aws_client:aws_client(), binary() | list(), update_collector_input(), proplists:proplist()) ->
    {ok, update_collector_output(), tuple()} |
    {error, any()} |
    {error, update_collector_errors(), tuple()}.
update_collector(Client, CollectorId, Input0, Options0) ->
    Method = patch,
    Path = ["/collectors/", aws_util:encode_uri(CollectorId), ""],
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

%% @doc Updates the customer-controlled mutable properties of an environment.
%%
%% Only the name, the environment's S3 integration source and repository
%% selections, its scan frequency, its network policy, and its patch creation
%% policy can be changed.
-spec update_environment(aws_client:aws_client(), binary() | list(), update_environment_input()) ->
    {ok, update_environment_output(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, EnvironmentId, Input) ->
    update_environment(Client, EnvironmentId, Input, []).

-spec update_environment(aws_client:aws_client(), binary() | list(), update_environment_input(), proplists:proplist()) ->
    {ok, update_environment_output(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = patch,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc Rotates the credentials used by an Amazon S3 integration.
%%
%% Only S3 integrations can
%% be updated; GitHub integrations cannot be modified. The integration's
%% name,
%% provider type, and bucket remain fixed.
%%
%% The caller must have iam:PassRole permission for the supplied role,
%% including
%% when only the external ID changes. Continuum verifies that the role can be
%% assumed with the requested external ID and can access the existing bucket
%% before
%% saving both credentials atomically. Omitting externalId preserves its
%% current
%% value. Repeating both current credentials leaves updatedAt unchanged, but
%% still
%% requires authorization and access validation.
-spec update_integration(aws_client:aws_client(), binary() | list(), update_integration_input()) ->
    {ok, update_integration_output(), tuple()} |
    {error, any()} |
    {error, update_integration_errors(), tuple()}.
update_integration(Client, IntegrationId, Input) ->
    update_integration(Client, IntegrationId, Input, []).

-spec update_integration(aws_client:aws_client(), binary() | list(), update_integration_input(), proplists:proplist()) ->
    {ok, update_integration_output(), tuple()} |
    {error, any()} |
    {error, update_integration_errors(), tuple()}.
update_integration(Client, IntegrationId, Input0, Options0) ->
    Method = patch,
    Path = ["/integrations/", aws_util:encode_uri(IntegrationId), ""],
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
    Client1 = Client#{service => <<"continuum">>},
    DefaultHost = build_host(<<"continuum">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_CONTINUUM">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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

