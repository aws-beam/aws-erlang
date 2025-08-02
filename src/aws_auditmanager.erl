%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Audit Manager API reference.
%%
%% This guide is for developers who
%% need detailed information about the Audit Manager API operations, data
%% types, and
%% errors.
%%
%% Audit Manager is a service that provides automated evidence collection so
%% that you
%% can continually audit your Amazon Web Services usage. You can use it to
%% assess the
%% effectiveness of your controls, manage risk, and simplify compliance.
%%
%% Audit Manager provides prebuilt frameworks that structure and automate
%% assessments
%% for a given compliance standard. Frameworks include a prebuilt collection
%% of controls with
%% descriptions and testing procedures. These controls are grouped according
%% to the
%% requirements of the specified compliance standard or regulation. You can
%% also customize
%% frameworks and controls to support internal audits with specific
%% requirements.
%%
%% Use the following links to get started with the Audit Manager API:
%%
%% Actions:
%% https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html:
%% An
%% alphabetical list of all Audit Manager API operations.
%%
%% Data types:
%% https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html:
%% An alphabetical list of all Audit Manager data
%% types.
%%
%% Common
%% parameters:
%% https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html:
%% Parameters that all operations can use.
%%
%% Common errors:
%% https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html:
%% Client and server errors that all operations can return.
%%
%% If you're new to Audit Manager, we recommend that you review the
%% Audit Manager User Guide:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html.
-module(aws_auditmanager).

-export([associate_assessment_report_evidence_folder/3,
         associate_assessment_report_evidence_folder/4,
         batch_associate_assessment_report_evidence/3,
         batch_associate_assessment_report_evidence/4,
         batch_create_delegation_by_assessment/3,
         batch_create_delegation_by_assessment/4,
         batch_delete_delegation_by_assessment/3,
         batch_delete_delegation_by_assessment/4,
         batch_disassociate_assessment_report_evidence/3,
         batch_disassociate_assessment_report_evidence/4,
         batch_import_evidence_to_assessment_control/5,
         batch_import_evidence_to_assessment_control/6,
         create_assessment/2,
         create_assessment/3,
         create_assessment_framework/2,
         create_assessment_framework/3,
         create_assessment_report/3,
         create_assessment_report/4,
         create_control/2,
         create_control/3,
         delete_assessment/3,
         delete_assessment/4,
         delete_assessment_framework/3,
         delete_assessment_framework/4,
         delete_assessment_framework_share/3,
         delete_assessment_framework_share/4,
         delete_assessment_report/4,
         delete_assessment_report/5,
         delete_control/3,
         delete_control/4,
         deregister_account/2,
         deregister_account/3,
         deregister_organization_admin_account/2,
         deregister_organization_admin_account/3,
         disassociate_assessment_report_evidence_folder/3,
         disassociate_assessment_report_evidence_folder/4,
         get_account_status/1,
         get_account_status/3,
         get_account_status/4,
         get_assessment/2,
         get_assessment/4,
         get_assessment/5,
         get_assessment_framework/2,
         get_assessment_framework/4,
         get_assessment_framework/5,
         get_assessment_report_url/3,
         get_assessment_report_url/5,
         get_assessment_report_url/6,
         get_change_logs/2,
         get_change_logs/4,
         get_change_logs/5,
         get_control/2,
         get_control/4,
         get_control/5,
         get_delegations/1,
         get_delegations/3,
         get_delegations/4,
         get_evidence/5,
         get_evidence/7,
         get_evidence/8,
         get_evidence_by_evidence_folder/4,
         get_evidence_by_evidence_folder/6,
         get_evidence_by_evidence_folder/7,
         get_evidence_file_upload_url/2,
         get_evidence_file_upload_url/4,
         get_evidence_file_upload_url/5,
         get_evidence_folder/4,
         get_evidence_folder/6,
         get_evidence_folder/7,
         get_evidence_folders_by_assessment/2,
         get_evidence_folders_by_assessment/4,
         get_evidence_folders_by_assessment/5,
         get_evidence_folders_by_assessment_control/4,
         get_evidence_folders_by_assessment_control/6,
         get_evidence_folders_by_assessment_control/7,
         get_insights/1,
         get_insights/3,
         get_insights/4,
         get_insights_by_assessment/2,
         get_insights_by_assessment/4,
         get_insights_by_assessment/5,
         get_organization_admin_account/1,
         get_organization_admin_account/3,
         get_organization_admin_account/4,
         get_services_in_scope/1,
         get_services_in_scope/3,
         get_services_in_scope/4,
         get_settings/2,
         get_settings/4,
         get_settings/5,
         list_assessment_control_insights_by_control_domain/3,
         list_assessment_control_insights_by_control_domain/5,
         list_assessment_control_insights_by_control_domain/6,
         list_assessment_framework_share_requests/2,
         list_assessment_framework_share_requests/4,
         list_assessment_framework_share_requests/5,
         list_assessment_frameworks/2,
         list_assessment_frameworks/4,
         list_assessment_frameworks/5,
         list_assessment_reports/1,
         list_assessment_reports/3,
         list_assessment_reports/4,
         list_assessments/1,
         list_assessments/3,
         list_assessments/4,
         list_control_domain_insights/1,
         list_control_domain_insights/3,
         list_control_domain_insights/4,
         list_control_domain_insights_by_assessment/2,
         list_control_domain_insights_by_assessment/4,
         list_control_domain_insights_by_assessment/5,
         list_control_insights_by_control_domain/2,
         list_control_insights_by_control_domain/4,
         list_control_insights_by_control_domain/5,
         list_controls/2,
         list_controls/4,
         list_controls/5,
         list_keywords_for_data_source/2,
         list_keywords_for_data_source/4,
         list_keywords_for_data_source/5,
         list_notifications/1,
         list_notifications/3,
         list_notifications/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         register_account/2,
         register_account/3,
         register_organization_admin_account/2,
         register_organization_admin_account/3,
         start_assessment_framework_share/3,
         start_assessment_framework_share/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_assessment/3,
         update_assessment/4,
         update_assessment_control/5,
         update_assessment_control/6,
         update_assessment_control_set_status/4,
         update_assessment_control_set_status/5,
         update_assessment_framework/3,
         update_assessment_framework/4,
         update_assessment_framework_share/3,
         update_assessment_framework_share/4,
         update_assessment_status/3,
         update_assessment_status/4,
         update_control/3,
         update_control/4,
         update_settings/2,
         update_settings/3,
         validate_assessment_report_integrity/2,
         validate_assessment_report_integrity/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_assessment_response() :: #{
%%   <<"assessment">> => assessment()
%% }
-type update_assessment_response() :: #{binary() => any()}.


%% Example:
%% framework_metadata() :: #{
%%   <<"complianceType">> => string(),
%%   <<"description">> => string(),
%%   <<"logo">> => string(),
%%   <<"name">> => string()
%% }
-type framework_metadata() :: #{binary() => any()}.


%% Example:
%% list_assessments_response() :: #{
%%   <<"assessmentMetadata">> => list(assessment_metadata_item()),
%%   <<"nextToken">> => string()
%% }
-type list_assessments_response() :: #{binary() => any()}.


%% Example:
%% get_delegations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_delegations_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_control_response() :: #{
%%   <<"control">> => control()
%% }
-type update_control_response() :: #{binary() => any()}.


%% Example:
%% control_domain_insights() :: #{
%%   <<"controlsCountByNoncompliantEvidence">> => integer(),
%%   <<"evidenceInsights">> => evidence_insights(),
%%   <<"id">> => string(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"totalControlsCount">> => integer()
%% }
-type control_domain_insights() :: #{binary() => any()}.

%% Example:
%% get_settings_request() :: #{}
-type get_settings_request() :: #{}.

%% Example:
%% get_insights_request() :: #{}
-type get_insights_request() :: #{}.


%% Example:
%% aws_account() :: #{
%%   <<"emailAddress">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type aws_account() :: #{binary() => any()}.


%% Example:
%% update_assessment_framework_share_request() :: #{
%%   <<"action">> := list(any()),
%%   <<"requestType">> := list(any())
%% }
-type update_assessment_framework_share_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_delegation_by_assessment_response() :: #{
%%   <<"errors">> => list(batch_delete_delegation_by_assessment_error())
%% }
-type batch_delete_delegation_by_assessment_response() :: #{binary() => any()}.

%% Example:
%% delete_control_response() :: #{}
-type delete_control_response() :: #{}.

%% Example:
%% delete_assessment_framework_response() :: #{}
-type delete_assessment_framework_response() :: #{}.


%% Example:
%% create_assessment_report_response() :: #{
%%   <<"assessmentReport">> => assessment_report()
%% }
-type create_assessment_report_response() :: #{binary() => any()}.


%% Example:
%% create_assessment_response() :: #{
%%   <<"assessment">> => assessment()
%% }
-type create_assessment_response() :: #{binary() => any()}.

%% Example:
%% delete_assessment_framework_request() :: #{}
-type delete_assessment_framework_request() :: #{}.


%% Example:
%% list_assessment_reports_response() :: #{
%%   <<"assessmentReports">> => list(assessment_report_metadata()),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_reports_response() :: #{binary() => any()}.


%% Example:
%% get_evidence_by_evidence_folder_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_evidence_by_evidence_folder_request() :: #{binary() => any()}.


%% Example:
%% list_notifications_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"notifications">> => list(notification())
%% }
-type list_notifications_response() :: #{binary() => any()}.


%% Example:
%% register_account_response() :: #{
%%   <<"status">> => list(any())
%% }
-type register_account_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% assessment_evidence_folder() :: #{
%%   <<"assessmentId">> => string(),
%%   <<"assessmentReportSelectionCount">> => integer(),
%%   <<"author">> => string(),
%%   <<"controlId">> => string(),
%%   <<"controlName">> => string(),
%%   <<"controlSetId">> => string(),
%%   <<"dataSource">> => string(),
%%   <<"date">> => non_neg_integer(),
%%   <<"evidenceAwsServiceSourceCount">> => integer(),
%%   <<"evidenceByTypeComplianceCheckCount">> => integer(),
%%   <<"evidenceByTypeComplianceCheckIssuesCount">> => integer(),
%%   <<"evidenceByTypeConfigurationDataCount">> => integer(),
%%   <<"evidenceByTypeManualCount">> => integer(),
%%   <<"evidenceByTypeUserActivityCount">> => integer(),
%%   <<"evidenceResourcesIncludedCount">> => integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"totalEvidence">> => integer()
%% }
-type assessment_evidence_folder() :: #{binary() => any()}.


%% Example:
%% register_account_request() :: #{
%%   <<"delegatedAdminAccount">> => string(),
%%   <<"kmsKey">> => string()
%% }
-type register_account_request() :: #{binary() => any()}.

%% Example:
%% deregister_account_request() :: #{}
-type deregister_account_request() :: #{}.


%% Example:
%% assessment_reports_destination() :: #{
%%   <<"destination">> => string(),
%%   <<"destinationType">> => list(any())
%% }
-type assessment_reports_destination() :: #{binary() => any()}.


%% Example:
%% list_control_insights_by_control_domain_request() :: #{
%%   <<"controlDomainId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_control_insights_by_control_domain_request() :: #{binary() => any()}.


%% Example:
%% control_set() :: #{
%%   <<"controls">> => list(control()),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type control_set() :: #{binary() => any()}.


%% Example:
%% get_evidence_folders_by_assessment_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_evidence_folders_by_assessment_request() :: #{binary() => any()}.


%% Example:
%% create_assessment_framework_control() :: #{
%%   <<"id">> => string()
%% }
-type create_assessment_framework_control() :: #{binary() => any()}.


%% Example:
%% deregistration_policy() :: #{
%%   <<"deleteResources">> => list(any())
%% }
-type deregistration_policy() :: #{binary() => any()}.


%% Example:
%% service_metadata() :: #{
%%   <<"category">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"name">> => string()
%% }
-type service_metadata() :: #{binary() => any()}.


%% Example:
%% assessment_metadata_item() :: #{
%%   <<"complianceType">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"delegations">> => list(delegation()),
%%   <<"id">> => string(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"roles">> => list(role()),
%%   <<"status">> => list(any())
%% }
-type assessment_metadata_item() :: #{binary() => any()}.


%% Example:
%% create_control_mapping_source() :: #{
%%   <<"sourceDescription">> => string(),
%%   <<"sourceFrequency">> => list(any()),
%%   <<"sourceKeyword">> => source_keyword(),
%%   <<"sourceName">> => string(),
%%   <<"sourceSetUpOption">> => list(any()),
%%   <<"sourceType">> => list(any()),
%%   <<"troubleshootingText">> => string()
%% }
-type create_control_mapping_source() :: #{binary() => any()}.


%% Example:
%% role() :: #{
%%   <<"roleArn">> => string(),
%%   <<"roleType">> => list(any())
%% }
-type role() :: #{binary() => any()}.

%% Example:
%% deregister_organization_admin_account_response() :: #{}
-type deregister_organization_admin_account_response() :: #{}.


%% Example:
%% update_settings_response() :: #{
%%   <<"settings">> => settings()
%% }
-type update_settings_response() :: #{binary() => any()}.


%% Example:
%% update_assessment_control_set_status_request() :: #{
%%   <<"comment">> := string(),
%%   <<"status">> := list(any())
%% }
-type update_assessment_control_set_status_request() :: #{binary() => any()}.


%% Example:
%% control() :: #{
%%   <<"actionPlanInstructions">> => string(),
%%   <<"actionPlanTitle">> => string(),
%%   <<"arn">> => string(),
%%   <<"controlMappingSources">> => list(control_mapping_source()),
%%   <<"controlSources">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"testingInformation">> => string(),
%%   <<"type">> => list(any())
%% }
-type control() :: #{binary() => any()}.

%% Example:
%% get_control_request() :: #{}
-type get_control_request() :: #{}.


%% Example:
%% list_control_insights_by_control_domain_response() :: #{
%%   <<"controlInsightsMetadata">> => list(control_insights_metadata_item()),
%%   <<"nextToken">> => string()
%% }
-type list_control_insights_by_control_domain_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_assessment_framework_request() :: #{}
-type get_assessment_framework_request() :: #{}.


%% Example:
%% control_comment() :: #{
%%   <<"authorName">> => string(),
%%   <<"commentBody">> => string(),
%%   <<"postedDate">> => non_neg_integer()
%% }
-type control_comment() :: #{binary() => any()}.


%% Example:
%% assessment_metadata() :: #{
%%   <<"assessmentReportsDestination">> => assessment_reports_destination(),
%%   <<"complianceType">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"delegations">> => list(delegation()),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"roles">> => list(role()),
%%   <<"scope">> => scope(),
%%   <<"status">> => list(any())
%% }
-type assessment_metadata() :: #{binary() => any()}.


%% Example:
%% batch_disassociate_assessment_report_evidence_request() :: #{
%%   <<"evidenceFolderId">> := string(),
%%   <<"evidenceIds">> := list(string())
%% }
-type batch_disassociate_assessment_report_evidence_request() :: #{binary() => any()}.


%% Example:
%% assessment_control() :: #{
%%   <<"assessmentReportEvidenceCount">> => integer(),
%%   <<"comments">> => list(control_comment()),
%%   <<"description">> => string(),
%%   <<"evidenceCount">> => integer(),
%%   <<"evidenceSources">> => list(string()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"response">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type assessment_control() :: #{binary() => any()}.

%% Example:
%% get_insights_by_assessment_request() :: #{}
-type get_insights_by_assessment_request() :: #{}.


%% Example:
%% update_assessment_status_request() :: #{
%%   <<"status">> := list(any())
%% }
-type update_assessment_status_request() :: #{binary() => any()}.


%% Example:
%% manual_evidence() :: #{
%%   <<"evidenceFileName">> => string(),
%%   <<"s3ResourcePath">> => string(),
%%   <<"textResponse">> => string()
%% }
-type manual_evidence() :: #{binary() => any()}.


%% Example:
%% list_controls_response() :: #{
%%   <<"controlMetadataList">> => list(control_metadata()),
%%   <<"nextToken">> => string()
%% }
-type list_controls_response() :: #{binary() => any()}.


%% Example:
%% list_keywords_for_data_source_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"source">> := list(any())
%% }
-type list_keywords_for_data_source_request() :: #{binary() => any()}.


%% Example:
%% deregister_organization_admin_account_request() :: #{
%%   <<"adminAccountId">> => string()
%% }
-type deregister_organization_admin_account_request() :: #{binary() => any()}.


%% Example:
%% batch_associate_assessment_report_evidence_request() :: #{
%%   <<"evidenceFolderId">> := string(),
%%   <<"evidenceIds">> := list(string())
%% }
-type batch_associate_assessment_report_evidence_request() :: #{binary() => any()}.


%% Example:
%% create_assessment_framework_response() :: #{
%%   <<"framework">> => framework()
%% }
-type create_assessment_framework_response() :: #{binary() => any()}.


%% Example:
%% list_control_domain_insights_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_control_domain_insights_request() :: #{binary() => any()}.

%% Example:
%% get_evidence_folder_request() :: #{}
-type get_evidence_folder_request() :: #{}.


%% Example:
%% list_control_domain_insights_by_assessment_response() :: #{
%%   <<"controlDomainInsights">> => list(control_domain_insights()),
%%   <<"nextToken">> => string()
%% }
-type list_control_domain_insights_by_assessment_response() :: #{binary() => any()}.


%% Example:
%% create_assessment_framework_control_set() :: #{
%%   <<"controls">> => list(create_assessment_framework_control()),
%%   <<"name">> => string()
%% }
-type create_assessment_framework_control_set() :: #{binary() => any()}.


%% Example:
%% create_control_response() :: #{
%%   <<"control">> => control()
%% }
-type create_control_response() :: #{binary() => any()}.


%% Example:
%% get_change_logs_response() :: #{
%%   <<"changeLogs">> => list(change_log()),
%%   <<"nextToken">> => string()
%% }
-type get_change_logs_response() :: #{binary() => any()}.

%% Example:
%% get_organization_admin_account_request() :: #{}
-type get_organization_admin_account_request() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_organization_admin_account_response() :: #{
%%   <<"adminAccountId">> => string(),
%%   <<"organizationId">> => string()
%% }
-type get_organization_admin_account_response() :: #{binary() => any()}.


%% Example:
%% batch_create_delegation_by_assessment_request() :: #{
%%   <<"createDelegationRequests">> := list(create_delegation_request())
%% }
-type batch_create_delegation_by_assessment_request() :: #{binary() => any()}.


%% Example:
%% evidence_insights() :: #{
%%   <<"compliantEvidenceCount">> => integer(),
%%   <<"inconclusiveEvidenceCount">> => integer(),
%%   <<"noncompliantEvidenceCount">> => integer()
%% }
-type evidence_insights() :: #{binary() => any()}.


%% Example:
%% aws_service() :: #{
%%   <<"serviceName">> => string()
%% }
-type aws_service() :: #{binary() => any()}.


%% Example:
%% create_assessment_framework_request() :: #{
%%   <<"complianceType">> => string(),
%%   <<"controlSets">> := list(create_assessment_framework_control_set()),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_assessment_framework_request() :: #{binary() => any()}.


%% Example:
%% list_assessment_frameworks_response() :: #{
%%   <<"frameworkMetadataList">> => list(assessment_framework_metadata()),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_frameworks_response() :: #{binary() => any()}.


%% Example:
%% control_metadata() :: #{
%%   <<"arn">> => string(),
%%   <<"controlSources">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type control_metadata() :: #{binary() => any()}.


%% Example:
%% list_assessment_framework_share_requests_response() :: #{
%%   <<"assessmentFrameworkShareRequests">> => list(assessment_framework_share_request()),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_framework_share_requests_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_assessment_control_insights_by_control_domain_response() :: #{
%%   <<"controlInsightsByAssessment">> => list(control_insights_metadata_by_assessment_item()),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_control_insights_by_control_domain_response() :: #{binary() => any()}.


%% Example:
%% update_assessment_control_set_status_response() :: #{
%%   <<"controlSet">> => assessment_control_set()
%% }
-type update_assessment_control_set_status_response() :: #{binary() => any()}.


%% Example:
%% list_notifications_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_notifications_request() :: #{binary() => any()}.


%% Example:
%% get_insights_by_assessment_response() :: #{
%%   <<"insights">> => insights_by_assessment()
%% }
-type get_insights_by_assessment_response() :: #{binary() => any()}.


%% Example:
%% update_assessment_framework_request() :: #{
%%   <<"complianceType">> => string(),
%%   <<"controlSets">> := list(update_assessment_framework_control_set()),
%%   <<"description">> => string(),
%%   <<"name">> := string()
%% }
-type update_assessment_framework_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_delegation_by_assessment_error() :: #{
%%   <<"delegationId">> => string(),
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string()
%% }
-type batch_delete_delegation_by_assessment_error() :: #{binary() => any()}.


%% Example:
%% delete_assessment_framework_share_request() :: #{
%%   <<"requestType">> := list(any())
%% }
-type delete_assessment_framework_share_request() :: #{binary() => any()}.


%% Example:
%% default_export_destination() :: #{
%%   <<"destination">> => string(),
%%   <<"destinationType">> => list(any())
%% }
-type default_export_destination() :: #{binary() => any()}.

%% Example:
%% delete_assessment_report_request() :: #{}
-type delete_assessment_report_request() :: #{}.

%% Example:
%% associate_assessment_report_evidence_folder_response() :: #{}
-type associate_assessment_report_evidence_folder_response() :: #{}.


%% Example:
%% list_assessment_control_insights_by_control_domain_request() :: #{
%%   <<"assessmentId">> := string(),
%%   <<"controlDomainId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_control_insights_by_control_domain_request() :: #{binary() => any()}.


%% Example:
%% assessment_control_set() :: #{
%%   <<"controls">> => list(assessment_control()),
%%   <<"delegations">> => list(delegation()),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"manualEvidenceCount">> => integer(),
%%   <<"roles">> => list(role()),
%%   <<"status">> => list(any()),
%%   <<"systemEvidenceCount">> => integer()
%% }
-type assessment_control_set() :: #{binary() => any()}.


%% Example:
%% assessment_report_evidence_error() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"evidenceId">> => string()
%% }
-type assessment_report_evidence_error() :: #{binary() => any()}.


%% Example:
%% settings() :: #{
%%   <<"defaultAssessmentReportsDestination">> => assessment_reports_destination(),
%%   <<"defaultExportDestination">> => default_export_destination(),
%%   <<"defaultProcessOwners">> => list(role()),
%%   <<"deregistrationPolicy">> => deregistration_policy(),
%%   <<"evidenceFinderEnablement">> => evidence_finder_enablement(),
%%   <<"isAwsOrgEnabled">> => boolean(),
%%   <<"kmsKey">> => string(),
%%   <<"snsTopic">> => string()
%% }
-type settings() :: #{binary() => any()}.


%% Example:
%% get_services_in_scope_response() :: #{
%%   <<"serviceMetadata">> => list(service_metadata())
%% }
-type get_services_in_scope_response() :: #{binary() => any()}.


%% Example:
%% list_assessments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_assessments_request() :: #{binary() => any()}.


%% Example:
%% list_control_domain_insights_by_assessment_request() :: #{
%%   <<"assessmentId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_control_domain_insights_by_assessment_request() :: #{binary() => any()}.

%% Example:
%% delete_assessment_response() :: #{}
-type delete_assessment_response() :: #{}.


%% Example:
%% batch_associate_assessment_report_evidence_response() :: #{
%%   <<"errors">> => list(assessment_report_evidence_error()),
%%   <<"evidenceIds">> => list(string())
%% }
-type batch_associate_assessment_report_evidence_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% update_settings_request() :: #{
%%   <<"defaultAssessmentReportsDestination">> => assessment_reports_destination(),
%%   <<"defaultExportDestination">> => default_export_destination(),
%%   <<"defaultProcessOwners">> => list(role()),
%%   <<"deregistrationPolicy">> => deregistration_policy(),
%%   <<"evidenceFinderEnabled">> => boolean(),
%%   <<"kmsKey">> => string(),
%%   <<"snsTopic">> => string()
%% }
-type update_settings_request() :: #{binary() => any()}.


%% Example:
%% get_evidence_folders_by_assessment_control_response() :: #{
%%   <<"evidenceFolders">> => list(assessment_evidence_folder()),
%%   <<"nextToken">> => string()
%% }
-type get_evidence_folders_by_assessment_control_response() :: #{binary() => any()}.


%% Example:
%% get_change_logs_request() :: #{
%%   <<"controlId">> => string(),
%%   <<"controlSetId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_change_logs_request() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% register_organization_admin_account_request() :: #{
%%   <<"adminAccountId">> := string()
%% }
-type register_organization_admin_account_request() :: #{binary() => any()}.


%% Example:
%% list_controls_request() :: #{
%%   <<"controlCatalogId">> => string(),
%%   <<"controlType">> := list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_controls_request() :: #{binary() => any()}.


%% Example:
%% insights() :: #{
%%   <<"activeAssessmentsCount">> => integer(),
%%   <<"assessmentControlsCountByNoncompliantEvidence">> => integer(),
%%   <<"compliantEvidenceCount">> => integer(),
%%   <<"inconclusiveEvidenceCount">> => integer(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"noncompliantEvidenceCount">> => integer(),
%%   <<"totalAssessmentControlsCount">> => integer()
%% }
-type insights() :: #{binary() => any()}.


%% Example:
%% update_assessment_request() :: #{
%%   <<"assessmentDescription">> => string(),
%%   <<"assessmentName">> => string(),
%%   <<"assessmentReportsDestination">> => assessment_reports_destination(),
%%   <<"roles">> => list(role()),
%%   <<"scope">> := scope()
%% }
-type update_assessment_request() :: #{binary() => any()}.


%% Example:
%% assessment() :: #{
%%   <<"arn">> => string(),
%%   <<"awsAccount">> => aws_account(),
%%   <<"framework">> => assessment_framework(),
%%   <<"metadata">> => assessment_metadata(),
%%   <<"tags">> => map()
%% }
-type assessment() :: #{binary() => any()}.


%% Example:
%% batch_import_evidence_to_assessment_control_request() :: #{
%%   <<"manualEvidence">> := list(manual_evidence())
%% }
-type batch_import_evidence_to_assessment_control_request() :: #{binary() => any()}.


%% Example:
%% get_insights_response() :: #{
%%   <<"insights">> => insights()
%% }
-type get_insights_response() :: #{binary() => any()}.


%% Example:
%% get_settings_response() :: #{
%%   <<"settings">> => settings()
%% }
-type get_settings_response() :: #{binary() => any()}.


%% Example:
%% get_evidence_folders_by_assessment_response() :: #{
%%   <<"evidenceFolders">> => list(assessment_evidence_folder()),
%%   <<"nextToken">> => string()
%% }
-type get_evidence_folders_by_assessment_response() :: #{binary() => any()}.


%% Example:
%% get_evidence_file_upload_url_request() :: #{
%%   <<"fileName">> := string()
%% }
-type get_evidence_file_upload_url_request() :: #{binary() => any()}.


%% Example:
%% get_evidence_file_upload_url_response() :: #{
%%   <<"evidenceFileName">> => string(),
%%   <<"uploadUrl">> => string()
%% }
-type get_evidence_file_upload_url_response() :: #{binary() => any()}.

%% Example:
%% get_assessment_request() :: #{}
-type get_assessment_request() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% disassociate_assessment_report_evidence_folder_response() :: #{}
-type disassociate_assessment_report_evidence_folder_response() :: #{}.


%% Example:
%% scope() :: #{
%%   <<"awsAccounts">> => list(aws_account()),
%%   <<"awsServices">> => list(aws_service())
%% }
-type scope() :: #{binary() => any()}.


%% Example:
%% batch_delete_delegation_by_assessment_request() :: #{
%%   <<"delegationIds">> := list(string())
%% }
-type batch_delete_delegation_by_assessment_request() :: #{binary() => any()}.


%% Example:
%% framework() :: #{
%%   <<"arn">> => string(),
%%   <<"complianceType">> => string(),
%%   <<"controlSets">> => list(control_set()),
%%   <<"controlSources">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"logo">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any())
%% }
-type framework() :: #{binary() => any()}.


%% Example:
%% validate_assessment_report_integrity_request() :: #{
%%   <<"s3RelativePath">> := string()
%% }
-type validate_assessment_report_integrity_request() :: #{binary() => any()}.


%% Example:
%% get_delegations_response() :: #{
%%   <<"delegations">> => list(delegation_metadata()),
%%   <<"nextToken">> => string()
%% }
-type get_delegations_response() :: #{binary() => any()}.


%% Example:
%% list_assessment_framework_share_requests_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"requestType">> := list(any())
%% }
-type list_assessment_framework_share_requests_request() :: #{binary() => any()}.


%% Example:
%% assessment_report_metadata() :: #{
%%   <<"assessmentId">> => string(),
%%   <<"assessmentName">> => string(),
%%   <<"author">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type assessment_report_metadata() :: #{binary() => any()}.


%% Example:
%% update_assessment_framework_control_set() :: #{
%%   <<"controls">> => list(create_assessment_framework_control()),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type update_assessment_framework_control_set() :: #{binary() => any()}.


%% Example:
%% get_assessment_response() :: #{
%%   <<"assessment">> => assessment(),
%%   <<"userRole">> => role()
%% }
-type get_assessment_response() :: #{binary() => any()}.


%% Example:
%% list_control_domain_insights_response() :: #{
%%   <<"controlDomainInsights">> => list(control_domain_insights()),
%%   <<"nextToken">> => string()
%% }
-type list_control_domain_insights_response() :: #{binary() => any()}.


%% Example:
%% deregister_account_response() :: #{
%%   <<"status">> => list(any())
%% }
-type deregister_account_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% associate_assessment_report_evidence_folder_request() :: #{
%%   <<"evidenceFolderId">> := string()
%% }
-type associate_assessment_report_evidence_folder_request() :: #{binary() => any()}.


%% Example:
%% batch_import_evidence_to_assessment_control_response() :: #{
%%   <<"errors">> => list(batch_import_evidence_to_assessment_control_error())
%% }
-type batch_import_evidence_to_assessment_control_response() :: #{binary() => any()}.


%% Example:
%% control_insights_metadata_by_assessment_item() :: #{
%%   <<"controlSetName">> => string(),
%%   <<"evidenceInsights">> => evidence_insights(),
%%   <<"id">> => string(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type control_insights_metadata_by_assessment_item() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% validate_assessment_report_integrity_response() :: #{
%%   <<"signatureAlgorithm">> => string(),
%%   <<"signatureDateTime">> => string(),
%%   <<"signatureKeyId">> => string(),
%%   <<"signatureValid">> => boolean(),
%%   <<"validationErrors">> => list(string())
%% }
-type validate_assessment_report_integrity_response() :: #{binary() => any()}.


%% Example:
%% assessment_framework_metadata() :: #{
%%   <<"arn">> => string(),
%%   <<"complianceType">> => string(),
%%   <<"controlSetsCount">> => integer(),
%%   <<"controlsCount">> => integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"logo">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type assessment_framework_metadata() :: #{binary() => any()}.


%% Example:
%% update_control_request() :: #{
%%   <<"actionPlanInstructions">> => string(),
%%   <<"actionPlanTitle">> => string(),
%%   <<"controlMappingSources">> := list(control_mapping_source()),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"testingInformation">> => string()
%% }
-type update_control_request() :: #{binary() => any()}.

%% Example:
%% delete_assessment_framework_share_response() :: #{}
-type delete_assessment_framework_share_response() :: #{}.


%% Example:
%% update_assessment_framework_response() :: #{
%%   <<"framework">> => framework()
%% }
-type update_assessment_framework_response() :: #{binary() => any()}.


%% Example:
%% batch_create_delegation_by_assessment_error() :: #{
%%   <<"createDelegationRequest">> => create_delegation_request(),
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string()
%% }
-type batch_create_delegation_by_assessment_error() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fields">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% batch_create_delegation_by_assessment_response() :: #{
%%   <<"delegations">> => list(delegation()),
%%   <<"errors">> => list(batch_create_delegation_by_assessment_error())
%% }
-type batch_create_delegation_by_assessment_response() :: #{binary() => any()}.


%% Example:
%% evidence_finder_enablement() :: #{
%%   <<"backfillStatus">> => list(any()),
%%   <<"enablementStatus">> => list(any()),
%%   <<"error">> => string(),
%%   <<"eventDataStoreArn">> => string()
%% }
-type evidence_finder_enablement() :: #{binary() => any()}.

%% Example:
%% delete_control_request() :: #{}
-type delete_control_request() :: #{}.


%% Example:
%% url() :: #{
%%   <<"hyperlinkName">> => string(),
%%   <<"link">> => string()
%% }
-type url() :: #{binary() => any()}.


%% Example:
%% evidence() :: #{
%%   <<"assessmentReportSelection">> => string(),
%%   <<"attributes">> => map(),
%%   <<"awsAccountId">> => string(),
%%   <<"awsOrganization">> => string(),
%%   <<"complianceCheck">> => string(),
%%   <<"dataSource">> => string(),
%%   <<"eventName">> => string(),
%%   <<"eventSource">> => string(),
%%   <<"evidenceAwsAccountId">> => string(),
%%   <<"evidenceByType">> => string(),
%%   <<"evidenceFolderId">> => string(),
%%   <<"iamId">> => string(),
%%   <<"id">> => string(),
%%   <<"resourcesIncluded">> => list(resource()),
%%   <<"time">> => non_neg_integer()
%% }
-type evidence() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% assessment_framework_share_request() :: #{
%%   <<"comment">> => string(),
%%   <<"complianceType">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customControlsCount">> => integer(),
%%   <<"destinationAccount">> => string(),
%%   <<"destinationRegion">> => string(),
%%   <<"expirationTime">> => non_neg_integer(),
%%   <<"frameworkDescription">> => string(),
%%   <<"frameworkId">> => string(),
%%   <<"frameworkName">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"sourceAccount">> => string(),
%%   <<"standardControlsCount">> => integer(),
%%   <<"status">> => list(any())
%% }
-type assessment_framework_share_request() :: #{binary() => any()}.


%% Example:
%% get_evidence_by_evidence_folder_response() :: #{
%%   <<"evidence">> => list(evidence()),
%%   <<"nextToken">> => string()
%% }
-type get_evidence_by_evidence_folder_response() :: #{binary() => any()}.

%% Example:
%% get_evidence_request() :: #{}
-type get_evidence_request() :: #{}.


%% Example:
%% update_assessment_control_response() :: #{
%%   <<"control">> => assessment_control()
%% }
-type update_assessment_control_response() :: #{binary() => any()}.


%% Example:
%% delegation() :: #{
%%   <<"assessmentId">> => string(),
%%   <<"assessmentName">> => string(),
%%   <<"comment">> => string(),
%%   <<"controlSetId">> => string(),
%%   <<"createdBy">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"roleArn">> => string(),
%%   <<"roleType">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type delegation() :: #{binary() => any()}.


%% Example:
%% list_keywords_for_data_source_response() :: #{
%%   <<"keywords">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_keywords_for_data_source_response() :: #{binary() => any()}.


%% Example:
%% register_organization_admin_account_response() :: #{
%%   <<"adminAccountId">> => string(),
%%   <<"organizationId">> => string()
%% }
-type register_organization_admin_account_response() :: #{binary() => any()}.


%% Example:
%% get_evidence_response() :: #{
%%   <<"evidence">> => evidence()
%% }
-type get_evidence_response() :: #{binary() => any()}.


%% Example:
%% notification() :: #{
%%   <<"assessmentId">> => string(),
%%   <<"assessmentName">> => string(),
%%   <<"controlSetId">> => string(),
%%   <<"controlSetName">> => string(),
%%   <<"description">> => string(),
%%   <<"eventTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"source">> => string()
%% }
-type notification() :: #{binary() => any()}.


%% Example:
%% start_assessment_framework_share_request() :: #{
%%   <<"comment">> => string(),
%%   <<"destinationAccount">> := string(),
%%   <<"destinationRegion">> := string()
%% }
-type start_assessment_framework_share_request() :: #{binary() => any()}.


%% Example:
%% update_assessment_control_request() :: #{
%%   <<"commentBody">> => string(),
%%   <<"controlStatus">> => list(any())
%% }
-type update_assessment_control_request() :: #{binary() => any()}.


%% Example:
%% list_assessment_frameworks_request() :: #{
%%   <<"frameworkType">> := list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_frameworks_request() :: #{binary() => any()}.


%% Example:
%% get_evidence_folder_response() :: #{
%%   <<"evidenceFolder">> => assessment_evidence_folder()
%% }
-type get_evidence_folder_response() :: #{binary() => any()}.


%% Example:
%% disassociate_assessment_report_evidence_folder_request() :: #{
%%   <<"evidenceFolderId">> := string()
%% }
-type disassociate_assessment_report_evidence_folder_request() :: #{binary() => any()}.


%% Example:
%% start_assessment_framework_share_response() :: #{
%%   <<"assessmentFrameworkShareRequest">> => assessment_framework_share_request()
%% }
-type start_assessment_framework_share_response() :: #{binary() => any()}.


%% Example:
%% assessment_report() :: #{
%%   <<"assessmentId">> => string(),
%%   <<"assessmentName">> => string(),
%%   <<"author">> => string(),
%%   <<"awsAccountId">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type assessment_report() :: #{binary() => any()}.


%% Example:
%% get_control_response() :: #{
%%   <<"control">> => control()
%% }
-type get_control_response() :: #{binary() => any()}.

%% Example:
%% get_assessment_report_url_request() :: #{}
-type get_assessment_report_url_request() :: #{}.


%% Example:
%% create_assessment_request() :: #{
%%   <<"assessmentReportsDestination">> := assessment_reports_destination(),
%%   <<"description">> => string(),
%%   <<"frameworkId">> := string(),
%%   <<"name">> := string(),
%%   <<"roles">> := list(role()),
%%   <<"scope">> := scope(),
%%   <<"tags">> => map()
%% }
-type create_assessment_request() :: #{binary() => any()}.


%% Example:
%% batch_disassociate_assessment_report_evidence_response() :: #{
%%   <<"errors">> => list(assessment_report_evidence_error()),
%%   <<"evidenceIds">> => list(string())
%% }
-type batch_disassociate_assessment_report_evidence_response() :: #{binary() => any()}.


%% Example:
%% create_control_request() :: #{
%%   <<"actionPlanInstructions">> => string(),
%%   <<"actionPlanTitle">> => string(),
%%   <<"controlMappingSources">> := list(create_control_mapping_source()),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"testingInformation">> => string()
%% }
-type create_control_request() :: #{binary() => any()}.


%% Example:
%% batch_import_evidence_to_assessment_control_error() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"manualEvidence">> => manual_evidence()
%% }
-type batch_import_evidence_to_assessment_control_error() :: #{binary() => any()}.


%% Example:
%% insights_by_assessment() :: #{
%%   <<"assessmentControlsCountByNoncompliantEvidence">> => integer(),
%%   <<"compliantEvidenceCount">> => integer(),
%%   <<"inconclusiveEvidenceCount">> => integer(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"noncompliantEvidenceCount">> => integer(),
%%   <<"totalAssessmentControlsCount">> => integer()
%% }
-type insights_by_assessment() :: #{binary() => any()}.


%% Example:
%% source_keyword() :: #{
%%   <<"keywordInputType">> => list(any()),
%%   <<"keywordValue">> => string()
%% }
-type source_keyword() :: #{binary() => any()}.


%% Example:
%% create_delegation_request() :: #{
%%   <<"comment">> => string(),
%%   <<"controlSetId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"roleType">> => list(any())
%% }
-type create_delegation_request() :: #{binary() => any()}.

%% Example:
%% delete_assessment_request() :: #{}
-type delete_assessment_request() :: #{}.

%% Example:
%% get_services_in_scope_request() :: #{}
-type get_services_in_scope_request() :: #{}.


%% Example:
%% update_assessment_status_response() :: #{
%%   <<"assessment">> => assessment()
%% }
-type update_assessment_status_response() :: #{binary() => any()}.


%% Example:
%% change_log() :: #{
%%   <<"action">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"objectName">> => string(),
%%   <<"objectType">> => list(any())
%% }
-type change_log() :: #{binary() => any()}.


%% Example:
%% control_mapping_source() :: #{
%%   <<"sourceDescription">> => string(),
%%   <<"sourceFrequency">> => list(any()),
%%   <<"sourceId">> => string(),
%%   <<"sourceKeyword">> => source_keyword(),
%%   <<"sourceName">> => string(),
%%   <<"sourceSetUpOption">> => list(any()),
%%   <<"sourceType">> => list(any()),
%%   <<"troubleshootingText">> => string()
%% }
-type control_mapping_source() :: #{binary() => any()}.


%% Example:
%% list_assessment_reports_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_reports_request() :: #{binary() => any()}.

%% Example:
%% delete_assessment_report_response() :: #{}
-type delete_assessment_report_response() :: #{}.


%% Example:
%% create_assessment_report_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"queryStatement">> => string()
%% }
-type create_assessment_report_request() :: #{binary() => any()}.

%% Example:
%% get_account_status_request() :: #{}
-type get_account_status_request() :: #{}.


%% Example:
%% get_assessment_framework_response() :: #{
%%   <<"framework">> => framework()
%% }
-type get_assessment_framework_response() :: #{binary() => any()}.


%% Example:
%% get_evidence_folders_by_assessment_control_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_evidence_folders_by_assessment_control_request() :: #{binary() => any()}.


%% Example:
%% assessment_framework() :: #{
%%   <<"arn">> => string(),
%%   <<"controlSets">> => list(assessment_control_set()),
%%   <<"id">> => string(),
%%   <<"metadata">> => framework_metadata()
%% }
-type assessment_framework() :: #{binary() => any()}.


%% Example:
%% update_assessment_framework_share_response() :: #{
%%   <<"assessmentFrameworkShareRequest">> => assessment_framework_share_request()
%% }
-type update_assessment_framework_share_response() :: #{binary() => any()}.


%% Example:
%% delegation_metadata() :: #{
%%   <<"assessmentId">> => string(),
%%   <<"assessmentName">> => string(),
%%   <<"controlSetName">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type delegation_metadata() :: #{binary() => any()}.


%% Example:
%% control_insights_metadata_item() :: #{
%%   <<"evidenceInsights">> => evidence_insights(),
%%   <<"id">> => string(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type control_insights_metadata_item() :: #{binary() => any()}.


%% Example:
%% get_account_status_response() :: #{
%%   <<"status">> => list(any())
%% }
-type get_account_status_response() :: #{binary() => any()}.


%% Example:
%% get_assessment_report_url_response() :: #{
%%   <<"preSignedUrl">> => url()
%% }
-type get_assessment_report_url_response() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"arn">> => string(),
%%   <<"complianceCheck">> => string(),
%%   <<"value">> => string()
%% }
-type resource() :: #{binary() => any()}.

-type associate_assessment_report_evidence_folder_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_associate_assessment_report_evidence_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_create_delegation_by_assessment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_delete_delegation_by_assessment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_disassociate_assessment_report_evidence_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_import_evidence_to_assessment_control_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_assessment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_assessment_framework_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_assessment_report_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_control_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_assessment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_assessment_framework_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_assessment_framework_share_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_assessment_report_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_control_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type deregister_account_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type deregister_organization_admin_account_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_assessment_report_evidence_folder_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_account_status_errors() ::
    internal_server_exception().

-type get_assessment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_assessment_framework_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_assessment_report_url_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_change_logs_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_control_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_delegations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_evidence_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_evidence_by_evidence_folder_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_evidence_file_upload_url_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_evidence_folder_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_evidence_folders_by_assessment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_evidence_folders_by_assessment_control_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_insights_errors() ::
    access_denied_exception() | 
    internal_server_exception().

-type get_insights_by_assessment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_organization_admin_account_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_services_in_scope_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_settings_errors() ::
    access_denied_exception() | 
    internal_server_exception().

-type list_assessment_control_insights_by_control_domain_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_assessment_framework_share_requests_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_assessment_frameworks_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_assessment_reports_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_assessments_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_control_domain_insights_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_control_domain_insights_by_assessment_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_control_insights_by_control_domain_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_controls_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_keywords_for_data_source_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_notifications_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type register_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type register_organization_admin_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_assessment_framework_share_errors() ::
    validation_exception() | 
    access_denied_exception() | 
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

-type update_assessment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_assessment_control_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_assessment_control_set_status_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_assessment_framework_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_assessment_framework_share_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_assessment_status_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_control_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_settings_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type validate_assessment_report_integrity_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an evidence folder to an assessment report in an Audit
%% Manager
%% assessment.
-spec associate_assessment_report_evidence_folder(aws_client:aws_client(), binary() | list(), associate_assessment_report_evidence_folder_request()) ->
    {ok, associate_assessment_report_evidence_folder_response(), tuple()} |
    {error, any()} |
    {error, associate_assessment_report_evidence_folder_errors(), tuple()}.
associate_assessment_report_evidence_folder(Client, AssessmentId, Input) ->
    associate_assessment_report_evidence_folder(Client, AssessmentId, Input, []).

-spec associate_assessment_report_evidence_folder(aws_client:aws_client(), binary() | list(), associate_assessment_report_evidence_folder_request(), proplists:proplist()) ->
    {ok, associate_assessment_report_evidence_folder_response(), tuple()} |
    {error, any()} |
    {error, associate_assessment_report_evidence_folder_errors(), tuple()}.
associate_assessment_report_evidence_folder(Client, AssessmentId, Input0, Options0) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/associateToAssessmentReport"],
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

%% @doc Associates a list of evidence to an assessment report in an Audit
%% Manager
%% assessment.
-spec batch_associate_assessment_report_evidence(aws_client:aws_client(), binary() | list(), batch_associate_assessment_report_evidence_request()) ->
    {ok, batch_associate_assessment_report_evidence_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_assessment_report_evidence_errors(), tuple()}.
batch_associate_assessment_report_evidence(Client, AssessmentId, Input) ->
    batch_associate_assessment_report_evidence(Client, AssessmentId, Input, []).

-spec batch_associate_assessment_report_evidence(aws_client:aws_client(), binary() | list(), batch_associate_assessment_report_evidence_request(), proplists:proplist()) ->
    {ok, batch_associate_assessment_report_evidence_response(), tuple()} |
    {error, any()} |
    {error, batch_associate_assessment_report_evidence_errors(), tuple()}.
batch_associate_assessment_report_evidence(Client, AssessmentId, Input0, Options0) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/batchAssociateToAssessmentReport"],
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

%% @doc Creates a batch of delegations for an assessment in Audit Manager.
-spec batch_create_delegation_by_assessment(aws_client:aws_client(), binary() | list(), batch_create_delegation_by_assessment_request()) ->
    {ok, batch_create_delegation_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, batch_create_delegation_by_assessment_errors(), tuple()}.
batch_create_delegation_by_assessment(Client, AssessmentId, Input) ->
    batch_create_delegation_by_assessment(Client, AssessmentId, Input, []).

-spec batch_create_delegation_by_assessment(aws_client:aws_client(), binary() | list(), batch_create_delegation_by_assessment_request(), proplists:proplist()) ->
    {ok, batch_create_delegation_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, batch_create_delegation_by_assessment_errors(), tuple()}.
batch_create_delegation_by_assessment(Client, AssessmentId, Input0, Options0) ->
    Method = post,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/delegations"],
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

%% @doc Deletes a batch of delegations for an assessment in Audit Manager.
-spec batch_delete_delegation_by_assessment(aws_client:aws_client(), binary() | list(), batch_delete_delegation_by_assessment_request()) ->
    {ok, batch_delete_delegation_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_delegation_by_assessment_errors(), tuple()}.
batch_delete_delegation_by_assessment(Client, AssessmentId, Input) ->
    batch_delete_delegation_by_assessment(Client, AssessmentId, Input, []).

-spec batch_delete_delegation_by_assessment(aws_client:aws_client(), binary() | list(), batch_delete_delegation_by_assessment_request(), proplists:proplist()) ->
    {ok, batch_delete_delegation_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_delegation_by_assessment_errors(), tuple()}.
batch_delete_delegation_by_assessment(Client, AssessmentId, Input0, Options0) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/delegations"],
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

%% @doc Disassociates a list of evidence from an assessment report in Audit
%% Manager.
-spec batch_disassociate_assessment_report_evidence(aws_client:aws_client(), binary() | list(), batch_disassociate_assessment_report_evidence_request()) ->
    {ok, batch_disassociate_assessment_report_evidence_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_assessment_report_evidence_errors(), tuple()}.
batch_disassociate_assessment_report_evidence(Client, AssessmentId, Input) ->
    batch_disassociate_assessment_report_evidence(Client, AssessmentId, Input, []).

-spec batch_disassociate_assessment_report_evidence(aws_client:aws_client(), binary() | list(), batch_disassociate_assessment_report_evidence_request(), proplists:proplist()) ->
    {ok, batch_disassociate_assessment_report_evidence_response(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_assessment_report_evidence_errors(), tuple()}.
batch_disassociate_assessment_report_evidence(Client, AssessmentId, Input0, Options0) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/batchDisassociateFromAssessmentReport"],
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

%% @doc Adds one or more pieces of evidence to a control in an Audit Manager
%% assessment.
%%
%% You can import manual evidence from any S3 bucket by specifying the S3 URI
%% of the
%% object. You can also upload a file from your browser, or enter plain text
%% in response to a
%% risk assessment question.
%%
%% The following restrictions apply to this action:
%%
%% `manualEvidence' can be only one of the following:
%% `evidenceFileName', `s3ResourcePath', or
%% `textResponse'
%%
%% Maximum size of an individual evidence file: 100 MB
%%
%% Number of daily manual evidence uploads per control: 100
%%
%% Supported file formats: See Supported file types for manual evidence:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files
%% in the Audit Manager User Guide
%%
%% For more information about Audit Manager service restrictions, see Quotas
%% and
%% restrictions for Audit Manager:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html.
-spec batch_import_evidence_to_assessment_control(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), batch_import_evidence_to_assessment_control_request()) ->
    {ok, batch_import_evidence_to_assessment_control_response(), tuple()} |
    {error, any()} |
    {error, batch_import_evidence_to_assessment_control_errors(), tuple()}.
batch_import_evidence_to_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input) ->
    batch_import_evidence_to_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input, []).

-spec batch_import_evidence_to_assessment_control(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), batch_import_evidence_to_assessment_control_request(), proplists:proplist()) ->
    {ok, batch_import_evidence_to_assessment_control_response(), tuple()} |
    {error, any()} |
    {error, batch_import_evidence_to_assessment_control_errors(), tuple()}.
batch_import_evidence_to_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input0, Options0) ->
    Method = post,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/controls/", aws_util:encode_uri(ControlId), "/evidence"],
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

%% @doc Creates an assessment in Audit Manager.
-spec create_assessment(aws_client:aws_client(), create_assessment_request()) ->
    {ok, create_assessment_response(), tuple()} |
    {error, any()} |
    {error, create_assessment_errors(), tuple()}.
create_assessment(Client, Input) ->
    create_assessment(Client, Input, []).

-spec create_assessment(aws_client:aws_client(), create_assessment_request(), proplists:proplist()) ->
    {ok, create_assessment_response(), tuple()} |
    {error, any()} |
    {error, create_assessment_errors(), tuple()}.
create_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/assessments"],
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

%% @doc Creates a custom framework in Audit Manager.
-spec create_assessment_framework(aws_client:aws_client(), create_assessment_framework_request()) ->
    {ok, create_assessment_framework_response(), tuple()} |
    {error, any()} |
    {error, create_assessment_framework_errors(), tuple()}.
create_assessment_framework(Client, Input) ->
    create_assessment_framework(Client, Input, []).

-spec create_assessment_framework(aws_client:aws_client(), create_assessment_framework_request(), proplists:proplist()) ->
    {ok, create_assessment_framework_response(), tuple()} |
    {error, any()} |
    {error, create_assessment_framework_errors(), tuple()}.
create_assessment_framework(Client, Input0, Options0) ->
    Method = post,
    Path = ["/assessmentFrameworks"],
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

%% @doc Creates an assessment report for the specified assessment.
-spec create_assessment_report(aws_client:aws_client(), binary() | list(), create_assessment_report_request()) ->
    {ok, create_assessment_report_response(), tuple()} |
    {error, any()} |
    {error, create_assessment_report_errors(), tuple()}.
create_assessment_report(Client, AssessmentId, Input) ->
    create_assessment_report(Client, AssessmentId, Input, []).

-spec create_assessment_report(aws_client:aws_client(), binary() | list(), create_assessment_report_request(), proplists:proplist()) ->
    {ok, create_assessment_report_response(), tuple()} |
    {error, any()} |
    {error, create_assessment_report_errors(), tuple()}.
create_assessment_report(Client, AssessmentId, Input0, Options0) ->
    Method = post,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/reports"],
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

%% @doc Creates a new custom control in Audit Manager.
-spec create_control(aws_client:aws_client(), create_control_request()) ->
    {ok, create_control_response(), tuple()} |
    {error, any()} |
    {error, create_control_errors(), tuple()}.
create_control(Client, Input) ->
    create_control(Client, Input, []).

-spec create_control(aws_client:aws_client(), create_control_request(), proplists:proplist()) ->
    {ok, create_control_response(), tuple()} |
    {error, any()} |
    {error, create_control_errors(), tuple()}.
create_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/controls"],
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

%% @doc Deletes an assessment in Audit Manager.
-spec delete_assessment(aws_client:aws_client(), binary() | list(), delete_assessment_request()) ->
    {ok, delete_assessment_response(), tuple()} |
    {error, any()} |
    {error, delete_assessment_errors(), tuple()}.
delete_assessment(Client, AssessmentId, Input) ->
    delete_assessment(Client, AssessmentId, Input, []).

-spec delete_assessment(aws_client:aws_client(), binary() | list(), delete_assessment_request(), proplists:proplist()) ->
    {ok, delete_assessment_response(), tuple()} |
    {error, any()} |
    {error, delete_assessment_errors(), tuple()}.
delete_assessment(Client, AssessmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), ""],
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

%% @doc Deletes a custom framework in Audit Manager.
-spec delete_assessment_framework(aws_client:aws_client(), binary() | list(), delete_assessment_framework_request()) ->
    {ok, delete_assessment_framework_response(), tuple()} |
    {error, any()} |
    {error, delete_assessment_framework_errors(), tuple()}.
delete_assessment_framework(Client, FrameworkId, Input) ->
    delete_assessment_framework(Client, FrameworkId, Input, []).

-spec delete_assessment_framework(aws_client:aws_client(), binary() | list(), delete_assessment_framework_request(), proplists:proplist()) ->
    {ok, delete_assessment_framework_response(), tuple()} |
    {error, any()} |
    {error, delete_assessment_framework_errors(), tuple()}.
delete_assessment_framework(Client, FrameworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/assessmentFrameworks/", aws_util:encode_uri(FrameworkId), ""],
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

%% @doc Deletes a share request for a custom framework in Audit Manager.
-spec delete_assessment_framework_share(aws_client:aws_client(), binary() | list(), delete_assessment_framework_share_request()) ->
    {ok, delete_assessment_framework_share_response(), tuple()} |
    {error, any()} |
    {error, delete_assessment_framework_share_errors(), tuple()}.
delete_assessment_framework_share(Client, RequestId, Input) ->
    delete_assessment_framework_share(Client, RequestId, Input, []).

-spec delete_assessment_framework_share(aws_client:aws_client(), binary() | list(), delete_assessment_framework_share_request(), proplists:proplist()) ->
    {ok, delete_assessment_framework_share_response(), tuple()} |
    {error, any()} |
    {error, delete_assessment_framework_share_errors(), tuple()}.
delete_assessment_framework_share(Client, RequestId, Input0, Options0) ->
    Method = delete,
    Path = ["/assessmentFrameworkShareRequests/", aws_util:encode_uri(RequestId), ""],
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
                     {<<"requestType">>, <<"requestType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an assessment report in Audit Manager.
%%
%% When you run the `DeleteAssessmentReport' operation, Audit Manager
%% attempts to delete the following data:
%%
%% The specified assessment report that’s stored in your S3 bucket
%%
%% The associated metadata that’s stored in Audit Manager
%%
%% If Audit Manager can’t access the assessment report in your S3 bucket, the
%% report
%% isn’t deleted. In this event, the `DeleteAssessmentReport' operation
%% doesn’t
%% fail. Instead, it proceeds to delete the associated metadata only. You
%% must then delete the
%% assessment report from the S3 bucket yourself.
%%
%% This scenario happens when Audit Manager receives a `403 (Forbidden)'
%% or
%% `404 (Not Found)' error from Amazon S3. To avoid this, make sure that
%% your S3 bucket is available, and that you configured the correct
%% permissions for Audit Manager to delete resources in your S3 bucket. For
%% an example permissions policy that
%% you can use, see Assessment report destination permissions:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/security_iam_id-based-policy-examples.html#full-administrator-access-assessment-report-destination
%% in the Audit Manager User Guide. For information about the issues that
%% could cause a
%% ```
%% 403 (Forbidden)''' or `404 (Not Found') error from Amazon
%% S3, see
%% List of Error Codes:
%% https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList
%% in the Amazon Simple Storage Service API
%% Reference.
-spec delete_assessment_report(aws_client:aws_client(), binary() | list(), binary() | list(), delete_assessment_report_request()) ->
    {ok, delete_assessment_report_response(), tuple()} |
    {error, any()} |
    {error, delete_assessment_report_errors(), tuple()}.
delete_assessment_report(Client, AssessmentId, AssessmentReportId, Input) ->
    delete_assessment_report(Client, AssessmentId, AssessmentReportId, Input, []).

-spec delete_assessment_report(aws_client:aws_client(), binary() | list(), binary() | list(), delete_assessment_report_request(), proplists:proplist()) ->
    {ok, delete_assessment_report_response(), tuple()} |
    {error, any()} |
    {error, delete_assessment_report_errors(), tuple()}.
delete_assessment_report(Client, AssessmentId, AssessmentReportId, Input0, Options0) ->
    Method = delete,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/reports/", aws_util:encode_uri(AssessmentReportId), ""],
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

%% @doc Deletes a custom control in Audit Manager.
%%
%% When you invoke this operation, the custom control is deleted from any
%% frameworks or
%% assessments that it’s currently part of. As a result, Audit Manager will
%% stop
%% collecting evidence for that custom control in all of your assessments.
%% This includes
%% assessments that you previously created before you deleted the custom
%% control.
-spec delete_control(aws_client:aws_client(), binary() | list(), delete_control_request()) ->
    {ok, delete_control_response(), tuple()} |
    {error, any()} |
    {error, delete_control_errors(), tuple()}.
delete_control(Client, ControlId, Input) ->
    delete_control(Client, ControlId, Input, []).

-spec delete_control(aws_client:aws_client(), binary() | list(), delete_control_request(), proplists:proplist()) ->
    {ok, delete_control_response(), tuple()} |
    {error, any()} |
    {error, delete_control_errors(), tuple()}.
delete_control(Client, ControlId, Input0, Options0) ->
    Method = delete,
    Path = ["/controls/", aws_util:encode_uri(ControlId), ""],
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

%% @doc Deregisters an account in Audit Manager.
%%
%% Before you deregister, you can use the UpdateSettings:
%% https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_UpdateSettings.html
%% API operation to set your preferred data retention policy. By
%% default, Audit Manager retains your data. If you want to delete your data,
%% you can
%% use the `DeregistrationPolicy' attribute to request the deletion of
%% your
%% data.
%%
%% For more information about data retention, see Data
%% Protection:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/data-protection.html
%% in the Audit Manager User Guide.
-spec deregister_account(aws_client:aws_client(), deregister_account_request()) ->
    {ok, deregister_account_response(), tuple()} |
    {error, any()} |
    {error, deregister_account_errors(), tuple()}.
deregister_account(Client, Input) ->
    deregister_account(Client, Input, []).

-spec deregister_account(aws_client:aws_client(), deregister_account_request(), proplists:proplist()) ->
    {ok, deregister_account_response(), tuple()} |
    {error, any()} |
    {error, deregister_account_errors(), tuple()}.
deregister_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/account/deregisterAccount"],
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

%% @doc Removes the specified Amazon Web Services account as a delegated
%% administrator for
%% Audit Manager.
%%
%% When you remove a delegated administrator from your Audit Manager
%% settings, you
%% continue to have access to the evidence that you previously collected
%% under that account.
%% This is also the case when you deregister a delegated administrator from
%% Organizations. However, Audit Manager stops collecting and attaching
%% evidence to
%% that delegated administrator account moving forward.
%%
%% Keep in mind the following cleanup task if you use evidence finder:
%%
%% Before you use your management account to remove a delegated
%% administrator, make sure
%% that the current delegated administrator account signs in to Audit Manager
%% and
%% disables evidence finder first. Disabling evidence finder automatically
%% deletes the
%% event data store that was created in their account when they enabled
%% evidence finder. If
%% this task isn’t completed, the event data store remains in their account.
%% In this case,
%% we recommend that the original delegated administrator goes to CloudTrail
%% Lake
%% and manually deletes the
%% event data store:
%% https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-eds-disable-termination.html.
%%
%% This cleanup task is necessary to ensure that you don't end up with
%% multiple event
%% data stores. Audit Manager ignores an unused event data store after you
%% remove or
%% change a delegated administrator account. However, the unused event data
%% store continues
%% to incur storage costs from CloudTrail Lake if you don't delete it.
%%
%% When you deregister a delegated administrator account for Audit Manager,
%% the data
%% for that account isn’t deleted. If you want to delete resource data for a
%% delegated
%% administrator account, you must perform that task separately before you
%% deregister the
%% account. Either, you can do this in the Audit Manager console. Or, you can
%% use one of
%% the delete API operations that are provided by Audit Manager.
%%
%% To delete your Audit Manager resource data, see the following
%% instructions:
%%
%% DeleteAssessment:
%% https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessment.html
%% (see also: Deleting an
%% assessment:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html
%% in the Audit Manager User
%% Guide)
%%
%% DeleteAssessmentFramework:
%% https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFramework.html
%% (see also: Deleting a
%% custom framework:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html
%% in the Audit Manager User
%% Guide)
%%
%% DeleteAssessmentFrameworkShare:
%% https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFrameworkShare.html
%% (see also: Deleting a share request:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html
%% in the Audit Manager User
%% Guide)
%%
%% DeleteAssessmentReport:
%% https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentReport.html
%% (see also: Deleting an assessment report:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps
%% in the Audit Manager User
%% Guide)
%%
%% DeleteControl:
%% https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteControl.html
%% (see also: Deleting a custom
%% control:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html
%% in the Audit Manager User
%% Guide)
%%
%% At this time, Audit Manager doesn't provide an option to delete
%% evidence for a
%% specific delegated administrator. Instead, when your management account
%% deregisters Audit Manager, we perform a cleanup for the current delegated
%% administrator account at the
%% time of deregistration.
-spec deregister_organization_admin_account(aws_client:aws_client(), deregister_organization_admin_account_request()) ->
    {ok, deregister_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, deregister_organization_admin_account_errors(), tuple()}.
deregister_organization_admin_account(Client, Input) ->
    deregister_organization_admin_account(Client, Input, []).

-spec deregister_organization_admin_account(aws_client:aws_client(), deregister_organization_admin_account_request(), proplists:proplist()) ->
    {ok, deregister_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, deregister_organization_admin_account_errors(), tuple()}.
deregister_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/account/deregisterOrganizationAdminAccount"],
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

%% @doc Disassociates an evidence folder from the specified assessment report
%% in Audit Manager.
-spec disassociate_assessment_report_evidence_folder(aws_client:aws_client(), binary() | list(), disassociate_assessment_report_evidence_folder_request()) ->
    {ok, disassociate_assessment_report_evidence_folder_response(), tuple()} |
    {error, any()} |
    {error, disassociate_assessment_report_evidence_folder_errors(), tuple()}.
disassociate_assessment_report_evidence_folder(Client, AssessmentId, Input) ->
    disassociate_assessment_report_evidence_folder(Client, AssessmentId, Input, []).

-spec disassociate_assessment_report_evidence_folder(aws_client:aws_client(), binary() | list(), disassociate_assessment_report_evidence_folder_request(), proplists:proplist()) ->
    {ok, disassociate_assessment_report_evidence_folder_response(), tuple()} |
    {error, any()} |
    {error, disassociate_assessment_report_evidence_folder_errors(), tuple()}.
disassociate_assessment_report_evidence_folder(Client, AssessmentId, Input0, Options0) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/disassociateFromAssessmentReport"],
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

%% @doc Gets the registration status of an account in Audit Manager.
-spec get_account_status(aws_client:aws_client()) ->
    {ok, get_account_status_response(), tuple()} |
    {error, any()} |
    {error, get_account_status_errors(), tuple()}.
get_account_status(Client)
  when is_map(Client) ->
    get_account_status(Client, #{}, #{}).

-spec get_account_status(aws_client:aws_client(), map(), map()) ->
    {ok, get_account_status_response(), tuple()} |
    {error, any()} |
    {error, get_account_status_errors(), tuple()}.
get_account_status(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_status(Client, QueryMap, HeadersMap, []).

-spec get_account_status(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_account_status_response(), tuple()} |
    {error, any()} |
    {error, get_account_status_errors(), tuple()}.
get_account_status(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/account/status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified assessment.
-spec get_assessment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_errors(), tuple()}.
get_assessment(Client, AssessmentId)
  when is_map(Client) ->
    get_assessment(Client, AssessmentId, #{}, #{}).

-spec get_assessment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_errors(), tuple()}.
get_assessment(Client, AssessmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_assessment(Client, AssessmentId, QueryMap, HeadersMap, []).

-spec get_assessment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_errors(), tuple()}.
get_assessment(Client, AssessmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified framework.
-spec get_assessment_framework(aws_client:aws_client(), binary() | list()) ->
    {ok, get_assessment_framework_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_framework_errors(), tuple()}.
get_assessment_framework(Client, FrameworkId)
  when is_map(Client) ->
    get_assessment_framework(Client, FrameworkId, #{}, #{}).

-spec get_assessment_framework(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_assessment_framework_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_framework_errors(), tuple()}.
get_assessment_framework(Client, FrameworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_assessment_framework(Client, FrameworkId, QueryMap, HeadersMap, []).

-spec get_assessment_framework(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_assessment_framework_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_framework_errors(), tuple()}.
get_assessment_framework(Client, FrameworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessmentFrameworks/", aws_util:encode_uri(FrameworkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the URL of an assessment report in Audit Manager.
-spec get_assessment_report_url(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_assessment_report_url_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_report_url_errors(), tuple()}.
get_assessment_report_url(Client, AssessmentId, AssessmentReportId)
  when is_map(Client) ->
    get_assessment_report_url(Client, AssessmentId, AssessmentReportId, #{}, #{}).

-spec get_assessment_report_url(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_assessment_report_url_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_report_url_errors(), tuple()}.
get_assessment_report_url(Client, AssessmentId, AssessmentReportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_assessment_report_url(Client, AssessmentId, AssessmentReportId, QueryMap, HeadersMap, []).

-spec get_assessment_report_url(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_assessment_report_url_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_report_url_errors(), tuple()}.
get_assessment_report_url(Client, AssessmentId, AssessmentReportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/reports/", aws_util:encode_uri(AssessmentReportId), "/url"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of changelogs from Audit Manager.
-spec get_change_logs(aws_client:aws_client(), binary() | list()) ->
    {ok, get_change_logs_response(), tuple()} |
    {error, any()} |
    {error, get_change_logs_errors(), tuple()}.
get_change_logs(Client, AssessmentId)
  when is_map(Client) ->
    get_change_logs(Client, AssessmentId, #{}, #{}).

-spec get_change_logs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_change_logs_response(), tuple()} |
    {error, any()} |
    {error, get_change_logs_errors(), tuple()}.
get_change_logs(Client, AssessmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_change_logs(Client, AssessmentId, QueryMap, HeadersMap, []).

-spec get_change_logs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_change_logs_response(), tuple()} |
    {error, any()} |
    {error, get_change_logs_errors(), tuple()}.
get_change_logs(Client, AssessmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/changelogs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"controlId">>, maps:get(<<"controlId">>, QueryMap, undefined)},
        {<<"controlSetId">>, maps:get(<<"controlSetId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified control.
-spec get_control(aws_client:aws_client(), binary() | list()) ->
    {ok, get_control_response(), tuple()} |
    {error, any()} |
    {error, get_control_errors(), tuple()}.
get_control(Client, ControlId)
  when is_map(Client) ->
    get_control(Client, ControlId, #{}, #{}).

-spec get_control(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_control_response(), tuple()} |
    {error, any()} |
    {error, get_control_errors(), tuple()}.
get_control(Client, ControlId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_control(Client, ControlId, QueryMap, HeadersMap, []).

-spec get_control(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_control_response(), tuple()} |
    {error, any()} |
    {error, get_control_errors(), tuple()}.
get_control(Client, ControlId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/controls/", aws_util:encode_uri(ControlId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of delegations from an audit owner to a delegate.
-spec get_delegations(aws_client:aws_client()) ->
    {ok, get_delegations_response(), tuple()} |
    {error, any()} |
    {error, get_delegations_errors(), tuple()}.
get_delegations(Client)
  when is_map(Client) ->
    get_delegations(Client, #{}, #{}).

-spec get_delegations(aws_client:aws_client(), map(), map()) ->
    {ok, get_delegations_response(), tuple()} |
    {error, any()} |
    {error, get_delegations_errors(), tuple()}.
get_delegations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_delegations(Client, QueryMap, HeadersMap, []).

-spec get_delegations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_delegations_response(), tuple()} |
    {error, any()} |
    {error, get_delegations_errors(), tuple()}.
get_delegations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/delegations"],
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

%% @doc Gets information about a specified evidence item.
-spec get_evidence(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_evidence_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_errors(), tuple()}.
get_evidence(Client, AssessmentId, ControlSetId, EvidenceFolderId, EvidenceId)
  when is_map(Client) ->
    get_evidence(Client, AssessmentId, ControlSetId, EvidenceFolderId, EvidenceId, #{}, #{}).

-spec get_evidence(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_evidence_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_errors(), tuple()}.
get_evidence(Client, AssessmentId, ControlSetId, EvidenceFolderId, EvidenceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_evidence(Client, AssessmentId, ControlSetId, EvidenceFolderId, EvidenceId, QueryMap, HeadersMap, []).

-spec get_evidence(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_evidence_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_errors(), tuple()}.
get_evidence(Client, AssessmentId, ControlSetId, EvidenceFolderId, EvidenceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/evidenceFolders/", aws_util:encode_uri(EvidenceFolderId), "/evidence/", aws_util:encode_uri(EvidenceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets all evidence from a specified evidence folder in Audit Manager.
-spec get_evidence_by_evidence_folder(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_evidence_by_evidence_folder_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_by_evidence_folder_errors(), tuple()}.
get_evidence_by_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId)
  when is_map(Client) ->
    get_evidence_by_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, #{}, #{}).

-spec get_evidence_by_evidence_folder(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_evidence_by_evidence_folder_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_by_evidence_folder_errors(), tuple()}.
get_evidence_by_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_evidence_by_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, QueryMap, HeadersMap, []).

-spec get_evidence_by_evidence_folder(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_evidence_by_evidence_folder_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_by_evidence_folder_errors(), tuple()}.
get_evidence_by_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/evidenceFolders/", aws_util:encode_uri(EvidenceFolderId), "/evidence"],
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

%% @doc Creates a presigned Amazon S3 URL that can be used to upload a file
%% as manual
%% evidence.
%%
%% For instructions on how to use this operation, see Upload a file from your
%% browser :
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#how-to-upload-manual-evidence-files
%% in the Audit Manager User
%% Guide.
%%
%% The following restrictions apply to this operation:
%%
%% Maximum size of an individual evidence file: 100 MB
%%
%% Number of daily manual evidence uploads per control: 100
%%
%% Supported file formats: See Supported file types for manual evidence:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files
%% in the Audit Manager User Guide
%%
%% For more information about Audit Manager service restrictions, see Quotas
%% and
%% restrictions for Audit Manager:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html.
-spec get_evidence_file_upload_url(aws_client:aws_client(), binary() | list()) ->
    {ok, get_evidence_file_upload_url_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_file_upload_url_errors(), tuple()}.
get_evidence_file_upload_url(Client, FileName)
  when is_map(Client) ->
    get_evidence_file_upload_url(Client, FileName, #{}, #{}).

-spec get_evidence_file_upload_url(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_evidence_file_upload_url_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_file_upload_url_errors(), tuple()}.
get_evidence_file_upload_url(Client, FileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_evidence_file_upload_url(Client, FileName, QueryMap, HeadersMap, []).

-spec get_evidence_file_upload_url(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_evidence_file_upload_url_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_file_upload_url_errors(), tuple()}.
get_evidence_file_upload_url(Client, FileName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/evidenceFileUploadUrl"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"fileName">>, FileName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an evidence folder from a specified assessment in Audit Manager.
-spec get_evidence_folder(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_evidence_folder_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_folder_errors(), tuple()}.
get_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId)
  when is_map(Client) ->
    get_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, #{}, #{}).

-spec get_evidence_folder(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_evidence_folder_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_folder_errors(), tuple()}.
get_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, QueryMap, HeadersMap, []).

-spec get_evidence_folder(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_evidence_folder_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_folder_errors(), tuple()}.
get_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/evidenceFolders/", aws_util:encode_uri(EvidenceFolderId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the evidence folders from a specified assessment in Audit
%% Manager.
-spec get_evidence_folders_by_assessment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_evidence_folders_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_folders_by_assessment_errors(), tuple()}.
get_evidence_folders_by_assessment(Client, AssessmentId)
  when is_map(Client) ->
    get_evidence_folders_by_assessment(Client, AssessmentId, #{}, #{}).

-spec get_evidence_folders_by_assessment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_evidence_folders_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_folders_by_assessment_errors(), tuple()}.
get_evidence_folders_by_assessment(Client, AssessmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_evidence_folders_by_assessment(Client, AssessmentId, QueryMap, HeadersMap, []).

-spec get_evidence_folders_by_assessment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_evidence_folders_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_folders_by_assessment_errors(), tuple()}.
get_evidence_folders_by_assessment(Client, AssessmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/evidenceFolders"],
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

%% @doc Gets a list of evidence folders that are associated with a specified
%% control in an
%% Audit Manager assessment.
-spec get_evidence_folders_by_assessment_control(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_evidence_folders_by_assessment_control_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_folders_by_assessment_control_errors(), tuple()}.
get_evidence_folders_by_assessment_control(Client, AssessmentId, ControlId, ControlSetId)
  when is_map(Client) ->
    get_evidence_folders_by_assessment_control(Client, AssessmentId, ControlId, ControlSetId, #{}, #{}).

-spec get_evidence_folders_by_assessment_control(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_evidence_folders_by_assessment_control_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_folders_by_assessment_control_errors(), tuple()}.
get_evidence_folders_by_assessment_control(Client, AssessmentId, ControlId, ControlSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_evidence_folders_by_assessment_control(Client, AssessmentId, ControlId, ControlSetId, QueryMap, HeadersMap, []).

-spec get_evidence_folders_by_assessment_control(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_evidence_folders_by_assessment_control_response(), tuple()} |
    {error, any()} |
    {error, get_evidence_folders_by_assessment_control_errors(), tuple()}.
get_evidence_folders_by_assessment_control(Client, AssessmentId, ControlId, ControlSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/evidenceFolders-by-assessment-control/", aws_util:encode_uri(ControlSetId), "/", aws_util:encode_uri(ControlId), ""],
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

%% @doc Gets the latest analytics data for all your current active
%% assessments.
-spec get_insights(aws_client:aws_client()) ->
    {ok, get_insights_response(), tuple()} |
    {error, any()} |
    {error, get_insights_errors(), tuple()}.
get_insights(Client)
  when is_map(Client) ->
    get_insights(Client, #{}, #{}).

-spec get_insights(aws_client:aws_client(), map(), map()) ->
    {ok, get_insights_response(), tuple()} |
    {error, any()} |
    {error, get_insights_errors(), tuple()}.
get_insights(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_insights(Client, QueryMap, HeadersMap, []).

-spec get_insights(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_insights_response(), tuple()} |
    {error, any()} |
    {error, get_insights_errors(), tuple()}.
get_insights(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/insights"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the latest analytics data for a specific active assessment.
-spec get_insights_by_assessment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_insights_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_insights_by_assessment_errors(), tuple()}.
get_insights_by_assessment(Client, AssessmentId)
  when is_map(Client) ->
    get_insights_by_assessment(Client, AssessmentId, #{}, #{}).

-spec get_insights_by_assessment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_insights_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_insights_by_assessment_errors(), tuple()}.
get_insights_by_assessment(Client, AssessmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_insights_by_assessment(Client, AssessmentId, QueryMap, HeadersMap, []).

-spec get_insights_by_assessment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_insights_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_insights_by_assessment_errors(), tuple()}.
get_insights_by_assessment(Client, AssessmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/insights/assessments/", aws_util:encode_uri(AssessmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the name of the delegated Amazon Web Services administrator
%% account for a specified
%% organization.
-spec get_organization_admin_account(aws_client:aws_client()) ->
    {ok, get_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, get_organization_admin_account_errors(), tuple()}.
get_organization_admin_account(Client)
  when is_map(Client) ->
    get_organization_admin_account(Client, #{}, #{}).

-spec get_organization_admin_account(aws_client:aws_client(), map(), map()) ->
    {ok, get_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, get_organization_admin_account_errors(), tuple()}.
get_organization_admin_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_organization_admin_account(Client, QueryMap, HeadersMap, []).

-spec get_organization_admin_account(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, get_organization_admin_account_errors(), tuple()}.
get_organization_admin_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/account/organizationAdminAccount"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of the Amazon Web Services services from which Audit
%% Manager can collect
%% evidence.
%%
%% Audit Manager defines which Amazon Web Services services are in scope for
%% an
%% assessment. Audit Manager infers this scope by examining the assessment’s
%% controls and
%% their data sources, and then mapping this information to one or more of
%% the corresponding
%% Amazon Web Services services that are in this list.
%%
%% For information about why it's no longer possible to specify services
%% in scope manually, see
%% I can't edit the services in scope for my assessment:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/evidence-collection-issues.html#unable-to-edit-services
%% in
%% the Troubleshooting section of the Audit Manager user
%% guide.
-spec get_services_in_scope(aws_client:aws_client()) ->
    {ok, get_services_in_scope_response(), tuple()} |
    {error, any()} |
    {error, get_services_in_scope_errors(), tuple()}.
get_services_in_scope(Client)
  when is_map(Client) ->
    get_services_in_scope(Client, #{}, #{}).

-spec get_services_in_scope(aws_client:aws_client(), map(), map()) ->
    {ok, get_services_in_scope_response(), tuple()} |
    {error, any()} |
    {error, get_services_in_scope_errors(), tuple()}.
get_services_in_scope(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_services_in_scope(Client, QueryMap, HeadersMap, []).

-spec get_services_in_scope(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_services_in_scope_response(), tuple()} |
    {error, any()} |
    {error, get_services_in_scope_errors(), tuple()}.
get_services_in_scope(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the settings for a specified Amazon Web Services account.
-spec get_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_settings_response(), tuple()} |
    {error, any()} |
    {error, get_settings_errors(), tuple()}.
get_settings(Client, Attribute)
  when is_map(Client) ->
    get_settings(Client, Attribute, #{}, #{}).

-spec get_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_settings_response(), tuple()} |
    {error, any()} |
    {error, get_settings_errors(), tuple()}.
get_settings(Client, Attribute, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_settings(Client, Attribute, QueryMap, HeadersMap, []).

-spec get_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_settings_response(), tuple()} |
    {error, any()} |
    {error, get_settings_errors(), tuple()}.
get_settings(Client, Attribute, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/settings/", aws_util:encode_uri(Attribute), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the latest analytics data for controls within a specific
%% control domain and a
%% specific active assessment.
%%
%% Control insights are listed only if the control belongs to the control
%% domain and
%% assessment that was specified. Moreover, the control must have collected
%% evidence on the
%% `lastUpdated' date of `controlInsightsByAssessment'. If neither
%% of these conditions are met, no data is listed for that control.
-spec list_assessment_control_insights_by_control_domain(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_assessment_control_insights_by_control_domain_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_control_insights_by_control_domain_errors(), tuple()}.
list_assessment_control_insights_by_control_domain(Client, AssessmentId, ControlDomainId)
  when is_map(Client) ->
    list_assessment_control_insights_by_control_domain(Client, AssessmentId, ControlDomainId, #{}, #{}).

-spec list_assessment_control_insights_by_control_domain(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_assessment_control_insights_by_control_domain_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_control_insights_by_control_domain_errors(), tuple()}.
list_assessment_control_insights_by_control_domain(Client, AssessmentId, ControlDomainId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assessment_control_insights_by_control_domain(Client, AssessmentId, ControlDomainId, QueryMap, HeadersMap, []).

-spec list_assessment_control_insights_by_control_domain(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_assessment_control_insights_by_control_domain_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_control_insights_by_control_domain_errors(), tuple()}.
list_assessment_control_insights_by_control_domain(Client, AssessmentId, ControlDomainId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/insights/controls-by-assessment"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assessmentId">>, AssessmentId},
        {<<"controlDomainId">>, ControlDomainId},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of sent or received share requests for custom
%% frameworks in Audit Manager.
-spec list_assessment_framework_share_requests(aws_client:aws_client(), binary() | list()) ->
    {ok, list_assessment_framework_share_requests_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_framework_share_requests_errors(), tuple()}.
list_assessment_framework_share_requests(Client, RequestType)
  when is_map(Client) ->
    list_assessment_framework_share_requests(Client, RequestType, #{}, #{}).

-spec list_assessment_framework_share_requests(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_assessment_framework_share_requests_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_framework_share_requests_errors(), tuple()}.
list_assessment_framework_share_requests(Client, RequestType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assessment_framework_share_requests(Client, RequestType, QueryMap, HeadersMap, []).

-spec list_assessment_framework_share_requests(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_assessment_framework_share_requests_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_framework_share_requests_errors(), tuple()}.
list_assessment_framework_share_requests(Client, RequestType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessmentFrameworkShareRequests"],
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
        {<<"requestType">>, RequestType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the frameworks that are available in the Audit
%% Manager framework
%% library.
-spec list_assessment_frameworks(aws_client:aws_client(), binary() | list()) ->
    {ok, list_assessment_frameworks_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_frameworks_errors(), tuple()}.
list_assessment_frameworks(Client, FrameworkType)
  when is_map(Client) ->
    list_assessment_frameworks(Client, FrameworkType, #{}, #{}).

-spec list_assessment_frameworks(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_assessment_frameworks_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_frameworks_errors(), tuple()}.
list_assessment_frameworks(Client, FrameworkType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assessment_frameworks(Client, FrameworkType, QueryMap, HeadersMap, []).

-spec list_assessment_frameworks(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_assessment_frameworks_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_frameworks_errors(), tuple()}.
list_assessment_frameworks(Client, FrameworkType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessmentFrameworks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"frameworkType">>, FrameworkType},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of assessment reports created in Audit Manager.
-spec list_assessment_reports(aws_client:aws_client()) ->
    {ok, list_assessment_reports_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_reports_errors(), tuple()}.
list_assessment_reports(Client)
  when is_map(Client) ->
    list_assessment_reports(Client, #{}, #{}).

-spec list_assessment_reports(aws_client:aws_client(), map(), map()) ->
    {ok, list_assessment_reports_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_reports_errors(), tuple()}.
list_assessment_reports(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assessment_reports(Client, QueryMap, HeadersMap, []).

-spec list_assessment_reports(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_assessment_reports_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_reports_errors(), tuple()}.
list_assessment_reports(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessmentReports"],
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

%% @doc Returns a list of current and past assessments from Audit Manager.
-spec list_assessments(aws_client:aws_client()) ->
    {ok, list_assessments_response(), tuple()} |
    {error, any()} |
    {error, list_assessments_errors(), tuple()}.
list_assessments(Client)
  when is_map(Client) ->
    list_assessments(Client, #{}, #{}).

-spec list_assessments(aws_client:aws_client(), map(), map()) ->
    {ok, list_assessments_response(), tuple()} |
    {error, any()} |
    {error, list_assessments_errors(), tuple()}.
list_assessments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assessments(Client, QueryMap, HeadersMap, []).

-spec list_assessments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_assessments_response(), tuple()} |
    {error, any()} |
    {error, list_assessments_errors(), tuple()}.
list_assessments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assessments"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the latest analytics data for control domains across all of
%% your active
%% assessments.
%%
%% Audit Manager supports the control domains that are provided by Amazon Web
%% Services
%% Control Catalog. For information about how to find a list of available
%% control domains, see
%%
%% `ListDomains'
%% :
%% https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html
%% in the Amazon Web Services Control
%% Catalog API Reference.
%%
%% A control domain is listed only if at least one of the controls within
%% that domain
%% collected evidence on the `lastUpdated' date of
%% `controlDomainInsights'. If this condition isn’t met, no data is
%% listed
%% for that control domain.
-spec list_control_domain_insights(aws_client:aws_client()) ->
    {ok, list_control_domain_insights_response(), tuple()} |
    {error, any()} |
    {error, list_control_domain_insights_errors(), tuple()}.
list_control_domain_insights(Client)
  when is_map(Client) ->
    list_control_domain_insights(Client, #{}, #{}).

-spec list_control_domain_insights(aws_client:aws_client(), map(), map()) ->
    {ok, list_control_domain_insights_response(), tuple()} |
    {error, any()} |
    {error, list_control_domain_insights_errors(), tuple()}.
list_control_domain_insights(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_control_domain_insights(Client, QueryMap, HeadersMap, []).

-spec list_control_domain_insights(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_control_domain_insights_response(), tuple()} |
    {error, any()} |
    {error, list_control_domain_insights_errors(), tuple()}.
list_control_domain_insights(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/insights/control-domains"],
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

%% @doc Lists analytics data for control domains within a specified active
%% assessment.
%%
%% Audit Manager supports the control domains that are provided by Amazon Web
%% Services
%% Control Catalog. For information about how to find a list of available
%% control domains, see
%%
%% `ListDomains'
%% :
%% https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html
%% in the Amazon Web Services Control
%% Catalog API Reference.
%%
%% A control domain is listed only if at least one of the controls within
%% that domain
%% collected evidence on the `lastUpdated' date of
%% `controlDomainInsights'. If this condition isn’t met, no data is
%% listed
%% for that domain.
-spec list_control_domain_insights_by_assessment(aws_client:aws_client(), binary() | list()) ->
    {ok, list_control_domain_insights_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, list_control_domain_insights_by_assessment_errors(), tuple()}.
list_control_domain_insights_by_assessment(Client, AssessmentId)
  when is_map(Client) ->
    list_control_domain_insights_by_assessment(Client, AssessmentId, #{}, #{}).

-spec list_control_domain_insights_by_assessment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_control_domain_insights_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, list_control_domain_insights_by_assessment_errors(), tuple()}.
list_control_domain_insights_by_assessment(Client, AssessmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_control_domain_insights_by_assessment(Client, AssessmentId, QueryMap, HeadersMap, []).

-spec list_control_domain_insights_by_assessment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_control_domain_insights_by_assessment_response(), tuple()} |
    {error, any()} |
    {error, list_control_domain_insights_by_assessment_errors(), tuple()}.
list_control_domain_insights_by_assessment(Client, AssessmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/insights/control-domains-by-assessment"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assessmentId">>, AssessmentId},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the latest analytics data for controls within a specific
%% control domain across all
%% active assessments.
%%
%% Control insights are listed only if the control belongs to the control
%% domain that
%% was specified and the control collected evidence on the `lastUpdated'
%% date of
%% `controlInsightsMetadata'. If neither of these conditions are met, no
%% data
%% is listed for that control.
-spec list_control_insights_by_control_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, list_control_insights_by_control_domain_response(), tuple()} |
    {error, any()} |
    {error, list_control_insights_by_control_domain_errors(), tuple()}.
list_control_insights_by_control_domain(Client, ControlDomainId)
  when is_map(Client) ->
    list_control_insights_by_control_domain(Client, ControlDomainId, #{}, #{}).

-spec list_control_insights_by_control_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_control_insights_by_control_domain_response(), tuple()} |
    {error, any()} |
    {error, list_control_insights_by_control_domain_errors(), tuple()}.
list_control_insights_by_control_domain(Client, ControlDomainId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_control_insights_by_control_domain(Client, ControlDomainId, QueryMap, HeadersMap, []).

-spec list_control_insights_by_control_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_control_insights_by_control_domain_response(), tuple()} |
    {error, any()} |
    {error, list_control_insights_by_control_domain_errors(), tuple()}.
list_control_insights_by_control_domain(Client, ControlDomainId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/insights/controls"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"controlDomainId">>, ControlDomainId},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of controls from Audit Manager.
-spec list_controls(aws_client:aws_client(), binary() | list()) ->
    {ok, list_controls_response(), tuple()} |
    {error, any()} |
    {error, list_controls_errors(), tuple()}.
list_controls(Client, ControlType)
  when is_map(Client) ->
    list_controls(Client, ControlType, #{}, #{}).

-spec list_controls(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_controls_response(), tuple()} |
    {error, any()} |
    {error, list_controls_errors(), tuple()}.
list_controls(Client, ControlType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_controls(Client, ControlType, QueryMap, HeadersMap, []).

-spec list_controls(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_controls_response(), tuple()} |
    {error, any()} |
    {error, list_controls_errors(), tuple()}.
list_controls(Client, ControlType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/controls"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"controlCatalogId">>, maps:get(<<"controlCatalogId">>, QueryMap, undefined)},
        {<<"controlType">>, ControlType},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of keywords that are pre-mapped to the specified
%% control data
%% source.
-spec list_keywords_for_data_source(aws_client:aws_client(), binary() | list()) ->
    {ok, list_keywords_for_data_source_response(), tuple()} |
    {error, any()} |
    {error, list_keywords_for_data_source_errors(), tuple()}.
list_keywords_for_data_source(Client, Source)
  when is_map(Client) ->
    list_keywords_for_data_source(Client, Source, #{}, #{}).

-spec list_keywords_for_data_source(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_keywords_for_data_source_response(), tuple()} |
    {error, any()} |
    {error, list_keywords_for_data_source_errors(), tuple()}.
list_keywords_for_data_source(Client, Source, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_keywords_for_data_source(Client, Source, QueryMap, HeadersMap, []).

-spec list_keywords_for_data_source(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_keywords_for_data_source_response(), tuple()} |
    {error, any()} |
    {error, list_keywords_for_data_source_errors(), tuple()}.
list_keywords_for_data_source(Client, Source, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dataSourceKeywords"],
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
        {<<"source">>, Source}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all Audit Manager notifications.
-spec list_notifications(aws_client:aws_client()) ->
    {ok, list_notifications_response(), tuple()} |
    {error, any()} |
    {error, list_notifications_errors(), tuple()}.
list_notifications(Client)
  when is_map(Client) ->
    list_notifications(Client, #{}, #{}).

-spec list_notifications(aws_client:aws_client(), map(), map()) ->
    {ok, list_notifications_response(), tuple()} |
    {error, any()} |
    {error, list_notifications_errors(), tuple()}.
list_notifications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_notifications(Client, QueryMap, HeadersMap, []).

-spec list_notifications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_notifications_response(), tuple()} |
    {error, any()} |
    {error, list_notifications_errors(), tuple()}.
list_notifications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/notifications"],
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

%% @doc Returns a list of tags for the specified resource in Audit Manager.
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

%% @doc Enables Audit Manager for the specified Amazon Web Services account.
-spec register_account(aws_client:aws_client(), register_account_request()) ->
    {ok, register_account_response(), tuple()} |
    {error, any()} |
    {error, register_account_errors(), tuple()}.
register_account(Client, Input) ->
    register_account(Client, Input, []).

-spec register_account(aws_client:aws_client(), register_account_request(), proplists:proplist()) ->
    {ok, register_account_response(), tuple()} |
    {error, any()} |
    {error, register_account_errors(), tuple()}.
register_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/account/registerAccount"],
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

%% @doc Enables an Amazon Web Services account within the organization as the
%% delegated
%% administrator for Audit Manager.
-spec register_organization_admin_account(aws_client:aws_client(), register_organization_admin_account_request()) ->
    {ok, register_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, register_organization_admin_account_errors(), tuple()}.
register_organization_admin_account(Client, Input) ->
    register_organization_admin_account(Client, Input, []).

-spec register_organization_admin_account(aws_client:aws_client(), register_organization_admin_account_request(), proplists:proplist()) ->
    {ok, register_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, register_organization_admin_account_errors(), tuple()}.
register_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/account/registerOrganizationAdminAccount"],
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

%% @doc Creates a share request for a custom framework in Audit Manager.
%%
%% The share request specifies a recipient and notifies them that a custom
%% framework is
%% available. Recipients have 120 days to accept or decline the request. If
%% no action is
%% taken, the share request expires.
%%
%% When you create a share request, Audit Manager stores a snapshot of your
%% custom
%% framework in the US East (N. Virginia) Amazon Web Services Region. Audit
%% Manager also
%% stores a backup of the same snapshot in the US West (Oregon) Amazon Web
%% Services Region.
%%
%% Audit Manager deletes the snapshot and the backup snapshot when one of the
%% following
%% events occurs:
%%
%% The sender revokes the share request.
%%
%% The recipient declines the share request.
%%
%% The recipient encounters an error and doesn't successfully accept the
%% share
%% request.
%%
%% The share request expires before the recipient responds to the request.
%%
%% When a sender resends a share request:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/framework-sharing.html#framework-sharing-resend,
%% the snapshot is replaced with an updated version that
%% corresponds with the latest version of the custom framework.
%%
%% When a recipient accepts a share request, the snapshot is replicated into
%% their Amazon Web Services account under the Amazon Web Services Region
%% that was specified in the share
%% request.
%%
%% When you invoke the `StartAssessmentFrameworkShare' API, you are about
%% to
%% share a custom framework with another Amazon Web Services account. You may
%% not share a
%% custom framework that is derived from a standard framework if the standard
%% framework is
%% designated as not eligible for sharing by Amazon Web Services, unless you
%% have obtained
%% permission to do so from the owner of the standard framework. To learn
%% more about which
%% standard frameworks are eligible for sharing, see Framework sharing
%% eligibility:
%% https://docs.aws.amazon.com/audit-manager/latest/userguide/share-custom-framework-concepts-and-terminology.html#eligibility
%% in the Audit Manager User
%% Guide.
-spec start_assessment_framework_share(aws_client:aws_client(), binary() | list(), start_assessment_framework_share_request()) ->
    {ok, start_assessment_framework_share_response(), tuple()} |
    {error, any()} |
    {error, start_assessment_framework_share_errors(), tuple()}.
start_assessment_framework_share(Client, FrameworkId, Input) ->
    start_assessment_framework_share(Client, FrameworkId, Input, []).

-spec start_assessment_framework_share(aws_client:aws_client(), binary() | list(), start_assessment_framework_share_request(), proplists:proplist()) ->
    {ok, start_assessment_framework_share_response(), tuple()} |
    {error, any()} |
    {error, start_assessment_framework_share_errors(), tuple()}.
start_assessment_framework_share(Client, FrameworkId, Input0, Options0) ->
    Method = post,
    Path = ["/assessmentFrameworks/", aws_util:encode_uri(FrameworkId), "/shareRequests"],
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

%% @doc Tags the specified resource in Audit Manager.
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

%% @doc Removes a tag from a resource in Audit Manager.
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

%% @doc Edits an Audit Manager assessment.
-spec update_assessment(aws_client:aws_client(), binary() | list(), update_assessment_request()) ->
    {ok, update_assessment_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_errors(), tuple()}.
update_assessment(Client, AssessmentId, Input) ->
    update_assessment(Client, AssessmentId, Input, []).

-spec update_assessment(aws_client:aws_client(), binary() | list(), update_assessment_request(), proplists:proplist()) ->
    {ok, update_assessment_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_errors(), tuple()}.
update_assessment(Client, AssessmentId, Input0, Options0) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), ""],
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

%% @doc Updates a control within an assessment in Audit Manager.
-spec update_assessment_control(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_assessment_control_request()) ->
    {ok, update_assessment_control_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_control_errors(), tuple()}.
update_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input) ->
    update_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input, []).

-spec update_assessment_control(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_assessment_control_request(), proplists:proplist()) ->
    {ok, update_assessment_control_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_control_errors(), tuple()}.
update_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input0, Options0) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/controls/", aws_util:encode_uri(ControlId), ""],
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

%% @doc Updates the status of a control set in an Audit Manager assessment.
-spec update_assessment_control_set_status(aws_client:aws_client(), binary() | list(), binary() | list(), update_assessment_control_set_status_request()) ->
    {ok, update_assessment_control_set_status_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_control_set_status_errors(), tuple()}.
update_assessment_control_set_status(Client, AssessmentId, ControlSetId, Input) ->
    update_assessment_control_set_status(Client, AssessmentId, ControlSetId, Input, []).

-spec update_assessment_control_set_status(aws_client:aws_client(), binary() | list(), binary() | list(), update_assessment_control_set_status_request(), proplists:proplist()) ->
    {ok, update_assessment_control_set_status_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_control_set_status_errors(), tuple()}.
update_assessment_control_set_status(Client, AssessmentId, ControlSetId, Input0, Options0) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/status"],
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

%% @doc Updates a custom framework in Audit Manager.
-spec update_assessment_framework(aws_client:aws_client(), binary() | list(), update_assessment_framework_request()) ->
    {ok, update_assessment_framework_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_framework_errors(), tuple()}.
update_assessment_framework(Client, FrameworkId, Input) ->
    update_assessment_framework(Client, FrameworkId, Input, []).

-spec update_assessment_framework(aws_client:aws_client(), binary() | list(), update_assessment_framework_request(), proplists:proplist()) ->
    {ok, update_assessment_framework_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_framework_errors(), tuple()}.
update_assessment_framework(Client, FrameworkId, Input0, Options0) ->
    Method = put,
    Path = ["/assessmentFrameworks/", aws_util:encode_uri(FrameworkId), ""],
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

%% @doc Updates a share request for a custom framework in Audit Manager.
-spec update_assessment_framework_share(aws_client:aws_client(), binary() | list(), update_assessment_framework_share_request()) ->
    {ok, update_assessment_framework_share_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_framework_share_errors(), tuple()}.
update_assessment_framework_share(Client, RequestId, Input) ->
    update_assessment_framework_share(Client, RequestId, Input, []).

-spec update_assessment_framework_share(aws_client:aws_client(), binary() | list(), update_assessment_framework_share_request(), proplists:proplist()) ->
    {ok, update_assessment_framework_share_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_framework_share_errors(), tuple()}.
update_assessment_framework_share(Client, RequestId, Input0, Options0) ->
    Method = put,
    Path = ["/assessmentFrameworkShareRequests/", aws_util:encode_uri(RequestId), ""],
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

%% @doc Updates the status of an assessment in Audit Manager.
-spec update_assessment_status(aws_client:aws_client(), binary() | list(), update_assessment_status_request()) ->
    {ok, update_assessment_status_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_status_errors(), tuple()}.
update_assessment_status(Client, AssessmentId, Input) ->
    update_assessment_status(Client, AssessmentId, Input, []).

-spec update_assessment_status(aws_client:aws_client(), binary() | list(), update_assessment_status_request(), proplists:proplist()) ->
    {ok, update_assessment_status_response(), tuple()} |
    {error, any()} |
    {error, update_assessment_status_errors(), tuple()}.
update_assessment_status(Client, AssessmentId, Input0, Options0) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/status"],
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

%% @doc Updates a custom control in Audit Manager.
-spec update_control(aws_client:aws_client(), binary() | list(), update_control_request()) ->
    {ok, update_control_response(), tuple()} |
    {error, any()} |
    {error, update_control_errors(), tuple()}.
update_control(Client, ControlId, Input) ->
    update_control(Client, ControlId, Input, []).

-spec update_control(aws_client:aws_client(), binary() | list(), update_control_request(), proplists:proplist()) ->
    {ok, update_control_response(), tuple()} |
    {error, any()} |
    {error, update_control_errors(), tuple()}.
update_control(Client, ControlId, Input0, Options0) ->
    Method = put,
    Path = ["/controls/", aws_util:encode_uri(ControlId), ""],
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

%% @doc Updates Audit Manager settings for the current account.
-spec update_settings(aws_client:aws_client(), update_settings_request()) ->
    {ok, update_settings_response(), tuple()} |
    {error, any()} |
    {error, update_settings_errors(), tuple()}.
update_settings(Client, Input) ->
    update_settings(Client, Input, []).

-spec update_settings(aws_client:aws_client(), update_settings_request(), proplists:proplist()) ->
    {ok, update_settings_response(), tuple()} |
    {error, any()} |
    {error, update_settings_errors(), tuple()}.
update_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/settings"],
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

%% @doc Validates the integrity of an assessment report in Audit Manager.
-spec validate_assessment_report_integrity(aws_client:aws_client(), validate_assessment_report_integrity_request()) ->
    {ok, validate_assessment_report_integrity_response(), tuple()} |
    {error, any()} |
    {error, validate_assessment_report_integrity_errors(), tuple()}.
validate_assessment_report_integrity(Client, Input) ->
    validate_assessment_report_integrity(Client, Input, []).

-spec validate_assessment_report_integrity(aws_client:aws_client(), validate_assessment_report_integrity_request(), proplists:proplist()) ->
    {ok, validate_assessment_report_integrity_response(), tuple()} |
    {error, any()} |
    {error, validate_assessment_report_integrity_errors(), tuple()}.
validate_assessment_report_integrity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/assessmentReports/integrity"],
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
    Client1 = Client#{service => <<"auditmanager">>},
    Host = build_host(<<"auditmanager">>, Client1),
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
