%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Macie
-module(aws_macie2).

-export([accept_invitation/2,
         accept_invitation/3,
         batch_get_custom_data_identifiers/2,
         batch_get_custom_data_identifiers/3,
         batch_update_automated_discovery_accounts/2,
         batch_update_automated_discovery_accounts/3,
         create_allow_list/2,
         create_allow_list/3,
         create_classification_job/2,
         create_classification_job/3,
         create_custom_data_identifier/2,
         create_custom_data_identifier/3,
         create_findings_filter/2,
         create_findings_filter/3,
         create_invitations/2,
         create_invitations/3,
         create_member/2,
         create_member/3,
         create_sample_findings/2,
         create_sample_findings/3,
         decline_invitations/2,
         decline_invitations/3,
         delete_allow_list/3,
         delete_allow_list/4,
         delete_custom_data_identifier/3,
         delete_custom_data_identifier/4,
         delete_findings_filter/3,
         delete_findings_filter/4,
         delete_invitations/2,
         delete_invitations/3,
         delete_member/3,
         delete_member/4,
         describe_buckets/2,
         describe_buckets/3,
         describe_classification_job/2,
         describe_classification_job/4,
         describe_classification_job/5,
         describe_organization_configuration/1,
         describe_organization_configuration/3,
         describe_organization_configuration/4,
         disable_macie/2,
         disable_macie/3,
         disable_organization_admin_account/2,
         disable_organization_admin_account/3,
         disassociate_from_administrator_account/2,
         disassociate_from_administrator_account/3,
         disassociate_from_master_account/2,
         disassociate_from_master_account/3,
         disassociate_member/3,
         disassociate_member/4,
         enable_macie/2,
         enable_macie/3,
         enable_organization_admin_account/2,
         enable_organization_admin_account/3,
         get_administrator_account/1,
         get_administrator_account/3,
         get_administrator_account/4,
         get_allow_list/2,
         get_allow_list/4,
         get_allow_list/5,
         get_automated_discovery_configuration/1,
         get_automated_discovery_configuration/3,
         get_automated_discovery_configuration/4,
         get_bucket_statistics/2,
         get_bucket_statistics/3,
         get_classification_export_configuration/1,
         get_classification_export_configuration/3,
         get_classification_export_configuration/4,
         get_classification_scope/2,
         get_classification_scope/4,
         get_classification_scope/5,
         get_custom_data_identifier/2,
         get_custom_data_identifier/4,
         get_custom_data_identifier/5,
         get_finding_statistics/2,
         get_finding_statistics/3,
         get_findings/2,
         get_findings/3,
         get_findings_filter/2,
         get_findings_filter/4,
         get_findings_filter/5,
         get_findings_publication_configuration/1,
         get_findings_publication_configuration/3,
         get_findings_publication_configuration/4,
         get_invitations_count/1,
         get_invitations_count/3,
         get_invitations_count/4,
         get_macie_session/1,
         get_macie_session/3,
         get_macie_session/4,
         get_master_account/1,
         get_master_account/3,
         get_master_account/4,
         get_member/2,
         get_member/4,
         get_member/5,
         get_resource_profile/2,
         get_resource_profile/4,
         get_resource_profile/5,
         get_reveal_configuration/1,
         get_reveal_configuration/3,
         get_reveal_configuration/4,
         get_sensitive_data_occurrences/2,
         get_sensitive_data_occurrences/4,
         get_sensitive_data_occurrences/5,
         get_sensitive_data_occurrences_availability/2,
         get_sensitive_data_occurrences_availability/4,
         get_sensitive_data_occurrences_availability/5,
         get_sensitivity_inspection_template/2,
         get_sensitivity_inspection_template/4,
         get_sensitivity_inspection_template/5,
         get_usage_statistics/2,
         get_usage_statistics/3,
         get_usage_totals/1,
         get_usage_totals/3,
         get_usage_totals/4,
         list_allow_lists/1,
         list_allow_lists/3,
         list_allow_lists/4,
         list_automated_discovery_accounts/1,
         list_automated_discovery_accounts/3,
         list_automated_discovery_accounts/4,
         list_classification_jobs/2,
         list_classification_jobs/3,
         list_classification_scopes/1,
         list_classification_scopes/3,
         list_classification_scopes/4,
         list_custom_data_identifiers/2,
         list_custom_data_identifiers/3,
         list_findings/2,
         list_findings/3,
         list_findings_filters/1,
         list_findings_filters/3,
         list_findings_filters/4,
         list_invitations/1,
         list_invitations/3,
         list_invitations/4,
         list_managed_data_identifiers/2,
         list_managed_data_identifiers/3,
         list_members/1,
         list_members/3,
         list_members/4,
         list_organization_admin_accounts/1,
         list_organization_admin_accounts/3,
         list_organization_admin_accounts/4,
         list_resource_profile_artifacts/2,
         list_resource_profile_artifacts/4,
         list_resource_profile_artifacts/5,
         list_resource_profile_detections/2,
         list_resource_profile_detections/4,
         list_resource_profile_detections/5,
         list_sensitivity_inspection_templates/1,
         list_sensitivity_inspection_templates/3,
         list_sensitivity_inspection_templates/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_classification_export_configuration/2,
         put_classification_export_configuration/3,
         put_findings_publication_configuration/2,
         put_findings_publication_configuration/3,
         search_resources/2,
         search_resources/3,
         tag_resource/3,
         tag_resource/4,
         test_custom_data_identifier/2,
         test_custom_data_identifier/3,
         untag_resource/3,
         untag_resource/4,
         update_allow_list/3,
         update_allow_list/4,
         update_automated_discovery_configuration/2,
         update_automated_discovery_configuration/3,
         update_classification_job/3,
         update_classification_job/4,
         update_classification_scope/3,
         update_classification_scope/4,
         update_findings_filter/3,
         update_findings_filter/4,
         update_macie_session/2,
         update_macie_session/3,
         update_member_session/3,
         update_member_session/4,
         update_organization_configuration/2,
         update_organization_configuration/3,
         update_resource_profile/2,
         update_resource_profile/3,
         update_resource_profile_detections/2,
         update_resource_profile_detections/3,
         update_reveal_configuration/2,
         update_reveal_configuration/3,
         update_sensitivity_inspection_template/3,
         update_sensitivity_inspection_template/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_resource_profile_artifacts_response() :: #{
%%   <<"artifacts">> => list(resource_profile_artifact()),
%%   <<"nextToken">> => string()
%% }
-type list_resource_profile_artifacts_response() :: #{binary() => any()}.

%% Example:
%% disassociate_from_master_account_request() :: #{}
-type disassociate_from_master_account_request() :: #{}.


%% Example:
%% tag_value_pair() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag_value_pair() :: #{binary() => any()}.


%% Example:
%% search_resources_request() :: #{
%%   <<"bucketCriteria">> => search_resources_bucket_criteria(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortCriteria">> => search_resources_sort_criteria()
%% }
-type search_resources_request() :: #{binary() => any()}.


%% Example:
%% get_findings_filter_response() :: #{
%%   <<"action">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"description">> => string(),
%%   <<"findingCriteria">> => finding_criteria(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"position">> => integer(),
%%   <<"tags">> => map()
%% }
-type get_findings_filter_response() :: #{binary() => any()}.


%% Example:
%% describe_buckets_request() :: #{
%%   <<"criteria">> => map(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortCriteria">> => bucket_sort_criteria()
%% }
-type describe_buckets_request() :: #{binary() => any()}.


%% Example:
%% object_count_by_encryption_type() :: #{
%%   <<"customerManaged">> => float(),
%%   <<"kmsManaged">> => float(),
%%   <<"s3Managed">> => float(),
%%   <<"unencrypted">> => float(),
%%   <<"unknown">> => float()
%% }
-type object_count_by_encryption_type() :: #{binary() => any()}.


%% Example:
%% session_context() :: #{
%%   <<"attributes">> => session_context_attributes(),
%%   <<"sessionIssuer">> => session_issuer()
%% }
-type session_context() :: #{binary() => any()}.


%% Example:
%% bucket_statistics_by_sensitivity() :: #{
%%   <<"classificationError">> => sensitivity_aggregations(),
%%   <<"notClassified">> => sensitivity_aggregations(),
%%   <<"notSensitive">> => sensitivity_aggregations(),
%%   <<"sensitive">> => sensitivity_aggregations()
%% }
-type bucket_statistics_by_sensitivity() :: #{binary() => any()}.


%% Example:
%% ip_country() :: #{
%%   <<"code">> => string(),
%%   <<"name">> => string()
%% }
-type ip_country() :: #{binary() => any()}.


%% Example:
%% create_member_response() :: #{
%%   <<"arn">> => string()
%% }
-type create_member_response() :: #{binary() => any()}.

%% Example:
%% update_resource_profile_response() :: #{}
-type update_resource_profile_response() :: #{}.


%% Example:
%% get_usage_statistics_request() :: #{
%%   <<"filterBy">> => list(usage_statistics_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => usage_statistics_sort_by(),
%%   <<"timeRange">> => list(any())
%% }
-type get_usage_statistics_request() :: #{binary() => any()}.


%% Example:
%% record() :: #{
%%   <<"jsonPath">> => string(),
%%   <<"recordIndex">> => float()
%% }
-type record() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% describe_classification_job_response() :: #{
%%   <<"allowListIds">> => list(string()),
%%   <<"clientToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"customDataIdentifierIds">> => list(string()),
%%   <<"description">> => string(),
%%   <<"initialRun">> => boolean(),
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string(),
%%   <<"jobStatus">> => list(any()),
%%   <<"jobType">> => list(any()),
%%   <<"lastRunErrorStatus">> => last_run_error_status(),
%%   <<"lastRunTime">> => non_neg_integer(),
%%   <<"managedDataIdentifierIds">> => list(string()),
%%   <<"managedDataIdentifierSelector">> => list(any()),
%%   <<"name">> => string(),
%%   <<"s3JobDefinition">> => s3_job_definition(),
%%   <<"samplingPercentage">> => integer(),
%%   <<"scheduleFrequency">> => job_schedule_frequency(),
%%   <<"statistics">> => statistics(),
%%   <<"tags">> => map(),
%%   <<"userPausedDetails">> => user_paused_details()
%% }
-type describe_classification_job_response() :: #{binary() => any()}.


%% Example:
%% usage_statistics_filter() :: #{
%%   <<"comparator">> => list(any()),
%%   <<"key">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type usage_statistics_filter() :: #{binary() => any()}.

%% Example:
%% delete_findings_filter_response() :: #{}
-type delete_findings_filter_response() :: #{}.


%% Example:
%% ip_city() :: #{
%%   <<"name">> => string()
%% }
-type ip_city() :: #{binary() => any()}.


%% Example:
%% create_member_request() :: #{
%%   <<"account">> := account_detail(),
%%   <<"tags">> => map()
%% }
-type create_member_request() :: #{binary() => any()}.


%% Example:
%% range() :: #{
%%   <<"end">> => float(),
%%   <<"start">> => float(),
%%   <<"startColumn">> => float()
%% }
-type range() :: #{binary() => any()}.


%% Example:
%% bucket_count_policy_allows_unencrypted_object_uploads() :: #{
%%   <<"allowsUnencryptedObjectUploads">> => float(),
%%   <<"deniesUnencryptedObjectUploads">> => float(),
%%   <<"unknown">> => float()
%% }
-type bucket_count_policy_allows_unencrypted_object_uploads() :: #{binary() => any()}.


%% Example:
%% decline_invitations_response() :: #{
%%   <<"unprocessedAccounts">> => list(unprocessed_account())
%% }
-type decline_invitations_response() :: #{binary() => any()}.


%% Example:
%% retrieval_configuration() :: #{
%%   <<"externalId">> => string(),
%%   <<"retrievalMode">> => list(any()),
%%   <<"roleName">> => string()
%% }
-type retrieval_configuration() :: #{binary() => any()}.


%% Example:
%% s3_bucket_definition_for_job() :: #{
%%   <<"accountId">> => string(),
%%   <<"buckets">> => list(string())
%% }
-type s3_bucket_definition_for_job() :: #{binary() => any()}.

%% Example:
%% update_classification_scope_response() :: #{}
-type update_classification_scope_response() :: #{}.

%% Example:
%% disable_organization_admin_account_response() :: #{}
-type disable_organization_admin_account_response() :: #{}.


%% Example:
%% list_jobs_filter_term() :: #{
%%   <<"comparator">> => list(any()),
%%   <<"key">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type list_jobs_filter_term() :: #{binary() => any()}.

%% Example:
%% describe_organization_configuration_request() :: #{}
-type describe_organization_configuration_request() :: #{}.


%% Example:
%% aws_account() :: #{
%%   <<"accountId">> => string(),
%%   <<"principalId">> => string()
%% }
-type aws_account() :: #{binary() => any()}.


%% Example:
%% get_reveal_configuration_response() :: #{
%%   <<"configuration">> => reveal_configuration(),
%%   <<"retrievalConfiguration">> => retrieval_configuration()
%% }
-type get_reveal_configuration_response() :: #{binary() => any()}.


%% Example:
%% delete_allow_list_request() :: #{
%%   <<"ignoreJobChecks">> => string()
%% }
-type delete_allow_list_request() :: #{binary() => any()}.


%% Example:
%% resources_affected() :: #{
%%   <<"s3Bucket">> => s3_bucket(),
%%   <<"s3Object">> => s3_object()
%% }
-type resources_affected() :: #{binary() => any()}.


%% Example:
%% usage_total() :: #{
%%   <<"currency">> => list(any()),
%%   <<"estimatedCost">> => string(),
%%   <<"type">> => list(any())
%% }
-type usage_total() :: #{binary() => any()}.


%% Example:
%% list_sensitivity_inspection_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_sensitivity_inspection_templates_request() :: #{binary() => any()}.


%% Example:
%% admin_account() :: #{
%%   <<"accountId">> => string(),
%%   <<"status">> => list(any())
%% }
-type admin_account() :: #{binary() => any()}.


%% Example:
%% s3_classification_scope_exclusion() :: #{
%%   <<"bucketNames">> => list(string())
%% }
-type s3_classification_scope_exclusion() :: #{binary() => any()}.


%% Example:
%% get_sensitivity_inspection_template_response() :: #{
%%   <<"description">> => string(),
%%   <<"excludes">> => sensitivity_inspection_template_excludes(),
%%   <<"includes">> => sensitivity_inspection_template_includes(),
%%   <<"name">> => string(),
%%   <<"sensitivityInspectionTemplateId">> => string()
%% }
-type get_sensitivity_inspection_template_response() :: #{binary() => any()}.


%% Example:
%% sensitivity_aggregations() :: #{
%%   <<"classifiableSizeInBytes">> => float(),
%%   <<"publiclyAccessibleCount">> => float(),
%%   <<"totalCount">> => float(),
%%   <<"totalSizeInBytes">> => float()
%% }
-type sensitivity_aggregations() :: #{binary() => any()}.


%% Example:
%% classification_result() :: #{
%%   <<"additionalOccurrences">> => boolean(),
%%   <<"customDataIdentifiers">> => custom_data_identifiers(),
%%   <<"mimeType">> => string(),
%%   <<"sensitiveData">> => list(sensitive_data_item()),
%%   <<"sizeClassified">> => float(),
%%   <<"status">> => classification_result_status()
%% }
-type classification_result() :: #{binary() => any()}.


%% Example:
%% classification_result_status() :: #{
%%   <<"code">> => string(),
%%   <<"reason">> => string()
%% }
-type classification_result_status() :: #{binary() => any()}.

%% Example:
%% delete_custom_data_identifier_request() :: #{}
-type delete_custom_data_identifier_request() :: #{}.


%% Example:
%% bucket_count_by_shared_access_type() :: #{
%%   <<"external">> => float(),
%%   <<"internal">> => float(),
%%   <<"notShared">> => float(),
%%   <<"unknown">> => float()
%% }
-type bucket_count_by_shared_access_type() :: #{binary() => any()}.

%% Example:
%% get_administrator_account_request() :: #{}
-type get_administrator_account_request() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% managed_data_identifier_summary() :: #{
%%   <<"category">> => list(any()),
%%   <<"id">> => string()
%% }
-type managed_data_identifier_summary() :: #{binary() => any()}.


%% Example:
%% bucket_sort_criteria() :: #{
%%   <<"attributeName">> => string(),
%%   <<"orderBy">> => list(any())
%% }
-type bucket_sort_criteria() :: #{binary() => any()}.


%% Example:
%% update_member_session_request() :: #{
%%   <<"status">> := list(any())
%% }
-type update_member_session_request() :: #{binary() => any()}.


%% Example:
%% bucket_criteria_additional_properties() :: #{
%%   <<"eq">> => list(string()),
%%   <<"gt">> => float(),
%%   <<"gte">> => float(),
%%   <<"lt">> => float(),
%%   <<"lte">> => float(),
%%   <<"neq">> => list(string()),
%%   <<"prefix">> => string()
%% }
-type bucket_criteria_additional_properties() :: #{binary() => any()}.


%% Example:
%% account_level_permissions() :: #{
%%   <<"blockPublicAccess">> => block_public_access()
%% }
-type account_level_permissions() :: #{binary() => any()}.

%% Example:
%% update_macie_session_response() :: #{}
-type update_macie_session_response() :: #{}.

%% Example:
%% get_findings_publication_configuration_request() :: #{}
-type get_findings_publication_configuration_request() :: #{}.


%% Example:
%% bucket_metadata() :: #{
%%   <<"accountId">> => string(),
%%   <<"allowsUnencryptedObjectUploads">> => list(any()),
%%   <<"automatedDiscoveryMonitoringStatus">> => list(any()),
%%   <<"bucketArn">> => string(),
%%   <<"bucketCreatedAt">> => non_neg_integer(),
%%   <<"bucketName">> => string(),
%%   <<"classifiableObjectCount">> => float(),
%%   <<"classifiableSizeInBytes">> => float(),
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"jobDetails">> => job_details(),
%%   <<"lastAutomatedDiscoveryTime">> => non_neg_integer(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"objectCount">> => float(),
%%   <<"objectCountByEncryptionType">> => object_count_by_encryption_type(),
%%   <<"publicAccess">> => bucket_public_access(),
%%   <<"region">> => string(),
%%   <<"replicationDetails">> => replication_details(),
%%   <<"sensitivityScore">> => integer(),
%%   <<"serverSideEncryption">> => bucket_server_side_encryption(),
%%   <<"sharedAccess">> => list(any()),
%%   <<"sizeInBytes">> => float(),
%%   <<"sizeInBytesCompressed">> => float(),
%%   <<"tags">> => list(key_value_pair()),
%%   <<"unclassifiableObjectCount">> => object_level_statistics(),
%%   <<"unclassifiableObjectSizeInBytes">> => object_level_statistics(),
%%   <<"versioning">> => boolean()
%% }
-type bucket_metadata() :: #{binary() => any()}.


%% Example:
%% batch_get_custom_data_identifiers_request() :: #{
%%   <<"ids">> => list(string())
%% }
-type batch_get_custom_data_identifiers_request() :: #{binary() => any()}.


%% Example:
%% tag_scope_term() :: #{
%%   <<"comparator">> => list(any()),
%%   <<"key">> => string(),
%%   <<"tagValues">> => list(tag_value_pair()),
%%   <<"target">> => list(any())
%% }
-type tag_scope_term() :: #{binary() => any()}.

%% Example:
%% get_sensitivity_inspection_template_request() :: #{}
-type get_sensitivity_inspection_template_request() :: #{}.


%% Example:
%% suppress_data_identifier() :: #{
%%   <<"id">> => string(),
%%   <<"type">> => list(any())
%% }
-type suppress_data_identifier() :: #{binary() => any()}.


%% Example:
%% get_bucket_statistics_request() :: #{
%%   <<"accountId">> => string()
%% }
-type get_bucket_statistics_request() :: #{binary() => any()}.


%% Example:
%% invitation() :: #{
%%   <<"accountId">> => string(),
%%   <<"invitationId">> => string(),
%%   <<"invitedAt">> => non_neg_integer(),
%%   <<"relationshipStatus">> => list(any())
%% }
-type invitation() :: #{binary() => any()}.

%% Example:
%% disassociate_from_master_account_response() :: #{}
-type disassociate_from_master_account_response() :: #{}.

%% Example:
%% delete_member_request() :: #{}
-type delete_member_request() :: #{}.


%% Example:
%% update_allow_list_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type update_allow_list_response() :: #{binary() => any()}.


%% Example:
%% usage_by_account() :: #{
%%   <<"currency">> => list(any()),
%%   <<"estimatedCost">> => string(),
%%   <<"serviceLimit">> => service_limit(),
%%   <<"type">> => list(any())
%% }
-type usage_by_account() :: #{binary() => any()}.


%% Example:
%% list_custom_data_identifiers_response() :: #{
%%   <<"items">> => list(custom_data_identifier_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_custom_data_identifiers_response() :: #{binary() => any()}.


%% Example:
%% server_side_encryption() :: #{
%%   <<"encryptionType">> => list(any()),
%%   <<"kmsMasterKeyId">> => string()
%% }
-type server_side_encryption() :: #{binary() => any()}.


%% Example:
%% batch_update_automated_discovery_accounts_request() :: #{
%%   <<"accounts">> => list(automated_discovery_account_update())
%% }
-type batch_update_automated_discovery_accounts_request() :: #{binary() => any()}.


%% Example:
%% sensitivity_inspection_template_excludes() :: #{
%%   <<"managedDataIdentifierIds">> => list(string())
%% }
-type sensitivity_inspection_template_excludes() :: #{binary() => any()}.


%% Example:
%% s3_object() :: #{
%%   <<"bucketArn">> => string(),
%%   <<"eTag">> => string(),
%%   <<"extension">> => string(),
%%   <<"key">> => string(),
%%   <<"lastModified">> => non_neg_integer(),
%%   <<"path">> => string(),
%%   <<"publicAccess">> => boolean(),
%%   <<"serverSideEncryption">> => server_side_encryption(),
%%   <<"size">> => float(),
%%   <<"storageClass">> => list(any()),
%%   <<"tags">> => list(key_value_pair()),
%%   <<"versionId">> => string()
%% }
-type s3_object() :: #{binary() => any()}.


%% Example:
%% list_findings_response() :: #{
%%   <<"findingIds">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_findings_response() :: #{binary() => any()}.


%% Example:
%% security_hub_configuration() :: #{
%%   <<"publishClassificationFindings">> => boolean(),
%%   <<"publishPolicyFindings">> => boolean()
%% }
-type security_hub_configuration() :: #{binary() => any()}.


%% Example:
%% usage_statistics_sort_by() :: #{
%%   <<"key">> => list(any()),
%%   <<"orderBy">> => list(any())
%% }
-type usage_statistics_sort_by() :: #{binary() => any()}.


%% Example:
%% cell() :: #{
%%   <<"cellReference">> => string(),
%%   <<"column">> => float(),
%%   <<"columnName">> => string(),
%%   <<"row">> => float()
%% }
-type cell() :: #{binary() => any()}.


%% Example:
%% user_identity() :: #{
%%   <<"assumedRole">> => assumed_role(),
%%   <<"awsAccount">> => aws_account(),
%%   <<"awsService">> => aws_service(),
%%   <<"federatedUser">> => federated_user(),
%%   <<"iamUser">> => iam_user(),
%%   <<"root">> => user_identity_root(),
%%   <<"type">> => list(any())
%% }
-type user_identity() :: #{binary() => any()}.


%% Example:
%% list_jobs_sort_criteria() :: #{
%%   <<"attributeName">> => list(any()),
%%   <<"orderBy">> => list(any())
%% }
-type list_jobs_sort_criteria() :: #{binary() => any()}.


%% Example:
%% automated_discovery_account_update() :: #{
%%   <<"accountId">> => string(),
%%   <<"status">> => list(any())
%% }
-type automated_discovery_account_update() :: #{binary() => any()}.


%% Example:
%% get_findings_request() :: #{
%%   <<"findingIds">> := list(string()),
%%   <<"sortCriteria">> => sort_criteria()
%% }
-type get_findings_request() :: #{binary() => any()}.


%% Example:
%% monthly_schedule() :: #{
%%   <<"dayOfMonth">> => integer()
%% }
-type monthly_schedule() :: #{binary() => any()}.


%% Example:
%% criteria_block_for_job() :: #{
%%   <<"and">> => list(criteria_for_job())
%% }
-type criteria_block_for_job() :: #{binary() => any()}.


%% Example:
%% account_detail() :: #{
%%   <<"accountId">> => string(),
%%   <<"email">> => string()
%% }
-type account_detail() :: #{binary() => any()}.


%% Example:
%% list_classification_jobs_request() :: #{
%%   <<"filterCriteria">> => list_jobs_filter_criteria(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortCriteria">> => list_jobs_sort_criteria()
%% }
-type list_classification_jobs_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_automated_discovery_configuration_response() :: #{
%%   <<"autoEnableOrganizationMembers">> => list(any()),
%%   <<"classificationScopeId">> => string(),
%%   <<"disabledAt">> => non_neg_integer(),
%%   <<"firstEnabledAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"sensitivityInspectionTemplateId">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_automated_discovery_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_resource_profile_detections_response() :: #{
%%   <<"detections">> => list(detection()),
%%   <<"nextToken">> => string()
%% }
-type list_resource_profile_detections_response() :: #{binary() => any()}.


%% Example:
%% s3_bucket_criteria_for_job() :: #{
%%   <<"excludes">> => criteria_block_for_job(),
%%   <<"includes">> => criteria_block_for_job()
%% }
-type s3_bucket_criteria_for_job() :: #{binary() => any()}.


%% Example:
%% bucket_public_access() :: #{
%%   <<"effectivePermission">> => list(any()),
%%   <<"permissionConfiguration">> => bucket_permission_configuration()
%% }
-type bucket_public_access() :: #{binary() => any()}.

%% Example:
%% get_classification_scope_request() :: #{}
-type get_classification_scope_request() :: #{}.


%% Example:
%% disable_organization_admin_account_request() :: #{
%%   <<"adminAccountId">> := string()
%% }
-type disable_organization_admin_account_request() :: #{binary() => any()}.


%% Example:
%% search_resources_sort_criteria() :: #{
%%   <<"attributeName">> => list(any()),
%%   <<"orderBy">> => list(any())
%% }
-type search_resources_sort_criteria() :: #{binary() => any()}.


%% Example:
%% custom_detection() :: #{
%%   <<"arn">> => string(),
%%   <<"count">> => float(),
%%   <<"name">> => string(),
%%   <<"occurrences">> => occurrences()
%% }
-type custom_detection() :: #{binary() => any()}.


%% Example:
%% scoping() :: #{
%%   <<"excludes">> => job_scoping_block(),
%%   <<"includes">> => job_scoping_block()
%% }
-type scoping() :: #{binary() => any()}.


%% Example:
%% allow_list_status() :: #{
%%   <<"code">> => list(any()),
%%   <<"description">> => string()
%% }
-type allow_list_status() :: #{binary() => any()}.


%% Example:
%% iam_user() :: #{
%%   <<"accountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"principalId">> => string(),
%%   <<"userName">> => string()
%% }
-type iam_user() :: #{binary() => any()}.


%% Example:
%% custom_data_identifier_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type custom_data_identifier_summary() :: #{binary() => any()}.


%% Example:
%% finding_statistics_sort_criteria() :: #{
%%   <<"attributeName">> => list(any()),
%%   <<"orderBy">> => list(any())
%% }
-type finding_statistics_sort_criteria() :: #{binary() => any()}.


%% Example:
%% finding_actor() :: #{
%%   <<"domainDetails">> => domain_details(),
%%   <<"ipAddressDetails">> => ip_address_details(),
%%   <<"userIdentity">> => user_identity()
%% }
-type finding_actor() :: #{binary() => any()}.


%% Example:
%% session_context_attributes() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"mfaAuthenticated">> => boolean()
%% }
-type session_context_attributes() :: #{binary() => any()}.


%% Example:
%% create_custom_data_identifier_response() :: #{
%%   <<"customDataIdentifierId">> => string()
%% }
-type create_custom_data_identifier_response() :: #{binary() => any()}.


%% Example:
%% severity() :: #{
%%   <<"description">> => list(any()),
%%   <<"score">> => float()
%% }
-type severity() :: #{binary() => any()}.


%% Example:
%% enable_macie_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"findingPublishingFrequency">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type enable_macie_request() :: #{binary() => any()}.

%% Example:
%% delete_findings_filter_request() :: #{}
-type delete_findings_filter_request() :: #{}.


%% Example:
%% create_allow_list_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type create_allow_list_response() :: #{binary() => any()}.


%% Example:
%% classification_export_configuration() :: #{
%%   <<"s3Destination">> => s3_destination()
%% }
-type classification_export_configuration() :: #{binary() => any()}.


%% Example:
%% bucket_count_by_encryption_type() :: #{
%%   <<"kmsManaged">> => float(),
%%   <<"s3Managed">> => float(),
%%   <<"unencrypted">> => float(),
%%   <<"unknown">> => float()
%% }
-type bucket_count_by_encryption_type() :: #{binary() => any()}.


%% Example:
%% search_resources_response() :: #{
%%   <<"matchingResources">> => list(matching_resource()),
%%   <<"nextToken">> => string()
%% }
-type search_resources_response() :: #{binary() => any()}.


%% Example:
%% update_classification_scope_request() :: #{
%%   <<"s3">> => s3_classification_scope_update()
%% }
-type update_classification_scope_request() :: #{binary() => any()}.

%% Example:
%% update_classification_job_response() :: #{}
-type update_classification_job_response() :: #{}.


%% Example:
%% api_call_details() :: #{
%%   <<"api">> => string(),
%%   <<"apiServiceName">> => string(),
%%   <<"firstSeen">> => non_neg_integer(),
%%   <<"lastSeen">> => non_neg_integer()
%% }
-type api_call_details() :: #{binary() => any()}.


%% Example:
%% get_resource_profile_response() :: #{
%%   <<"profileUpdatedAt">> => non_neg_integer(),
%%   <<"sensitivityScore">> => integer(),
%%   <<"sensitivityScoreOverridden">> => boolean(),
%%   <<"statistics">> => resource_statistics()
%% }
-type get_resource_profile_response() :: #{binary() => any()}.


%% Example:
%% simple_scope_term() :: #{
%%   <<"comparator">> => list(any()),
%%   <<"key">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type simple_scope_term() :: #{binary() => any()}.


%% Example:
%% test_custom_data_identifier_request() :: #{
%%   <<"ignoreWords">> => list(string()),
%%   <<"keywords">> => list(string()),
%%   <<"maximumMatchDistance">> => integer(),
%%   <<"regex">> := string(),
%%   <<"sampleText">> := string()
%% }
-type test_custom_data_identifier_request() :: #{binary() => any()}.


%% Example:
%% list_automated_discovery_accounts_response() :: #{
%%   <<"items">> => list(automated_discovery_account()),
%%   <<"nextToken">> => string()
%% }
-type list_automated_discovery_accounts_response() :: #{binary() => any()}.

%% Example:
%% disassociate_from_administrator_account_response() :: #{}
-type disassociate_from_administrator_account_response() :: #{}.

%% Example:
%% get_custom_data_identifier_request() :: #{}
-type get_custom_data_identifier_request() :: #{}.


%% Example:
%% job_summary() :: #{
%%   <<"bucketCriteria">> => s3_bucket_criteria_for_job(),
%%   <<"bucketDefinitions">> => list(s3_bucket_definition_for_job()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"jobStatus">> => list(any()),
%%   <<"jobType">> => list(any()),
%%   <<"lastRunErrorStatus">> => last_run_error_status(),
%%   <<"name">> => string(),
%%   <<"userPausedDetails">> => user_paused_details()
%% }
-type job_summary() :: #{binary() => any()}.


%% Example:
%% list_automated_discovery_accounts_request() :: #{
%%   <<"accountIds">> => list(string()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_automated_discovery_accounts_request() :: #{binary() => any()}.

%% Example:
%% update_sensitivity_inspection_template_response() :: #{}
-type update_sensitivity_inspection_template_response() :: #{}.


%% Example:
%% create_custom_data_identifier_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"ignoreWords">> => list(string()),
%%   <<"keywords">> => list(string()),
%%   <<"maximumMatchDistance">> => integer(),
%%   <<"name">> := string(),
%%   <<"regex">> := string(),
%%   <<"severityLevels">> => list(severity_level()),
%%   <<"tags">> => map()
%% }
-type create_custom_data_identifier_request() :: #{binary() => any()}.


%% Example:
%% occurrences() :: #{
%%   <<"cells">> => list(cell()),
%%   <<"lineRanges">> => list(range()),
%%   <<"offsetRanges">> => list(range()),
%%   <<"pages">> => list(page()),
%%   <<"records">> => list(record())
%% }
-type occurrences() :: #{binary() => any()}.

%% Example:
%% get_allow_list_request() :: #{}
-type get_allow_list_request() :: #{}.


%% Example:
%% job_scope_term() :: #{
%%   <<"simpleScopeTerm">> => simple_scope_term(),
%%   <<"tagScopeTerm">> => tag_scope_term()
%% }
-type job_scope_term() :: #{binary() => any()}.


%% Example:
%% describe_organization_configuration_response() :: #{
%%   <<"autoEnable">> => boolean(),
%%   <<"maxAccountLimitReached">> => boolean()
%% }
-type describe_organization_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_sensitive_data_occurrences_request() :: #{}
-type get_sensitive_data_occurrences_request() :: #{}.


%% Example:
%% s3_classification_scope() :: #{
%%   <<"excludes">> => s3_classification_scope_exclusion()
%% }
-type s3_classification_scope() :: #{binary() => any()}.


%% Example:
%% list_findings_filters_response() :: #{
%%   <<"findingsFilterListItems">> => list(findings_filter_list_item()),
%%   <<"nextToken">> => string()
%% }
-type list_findings_filters_response() :: #{binary() => any()}.


%% Example:
%% get_classification_export_configuration_response() :: #{
%%   <<"configuration">> => classification_export_configuration()
%% }
-type get_classification_export_configuration_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% list_classification_scopes_request() :: #{
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_classification_scopes_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_managed_data_identifiers_request() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_managed_data_identifiers_request() :: #{binary() => any()}.


%% Example:
%% update_findings_filter_request() :: #{
%%   <<"action">> => list(any()),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"findingCriteria">> => finding_criteria(),
%%   <<"name">> => string(),
%%   <<"position">> => integer()
%% }
-type update_findings_filter_request() :: #{binary() => any()}.

%% Example:
%% disable_macie_request() :: #{}
-type disable_macie_request() :: #{}.

%% Example:
%% get_macie_session_request() :: #{}
-type get_macie_session_request() :: #{}.


%% Example:
%% create_findings_filter_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type create_findings_filter_response() :: #{binary() => any()}.


%% Example:
%% search_resources_tag_criterion() :: #{
%%   <<"comparator">> => list(any()),
%%   <<"tagValues">> => list(search_resources_tag_criterion_pair())
%% }
-type search_resources_tag_criterion() :: #{binary() => any()}.

%% Example:
%% delete_allow_list_response() :: #{}
-type delete_allow_list_response() :: #{}.


%% Example:
%% s3_bucket() :: #{
%%   <<"allowsUnencryptedObjectUploads">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"defaultServerSideEncryption">> => server_side_encryption(),
%%   <<"name">> => string(),
%%   <<"owner">> => s3_bucket_owner(),
%%   <<"publicAccess">> => bucket_public_access(),
%%   <<"tags">> => list(key_value_pair())
%% }
-type s3_bucket() :: #{binary() => any()}.


%% Example:
%% object_level_statistics() :: #{
%%   <<"fileType">> => float(),
%%   <<"storageClass">> => float(),
%%   <<"total">> => float()
%% }
-type object_level_statistics() :: #{binary() => any()}.


%% Example:
%% bucket_server_side_encryption() :: #{
%%   <<"kmsMasterKeyId">> => string(),
%%   <<"type">> => list(any())
%% }
-type bucket_server_side_encryption() :: #{binary() => any()}.


%% Example:
%% get_macie_session_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"findingPublishingFrequency">> => list(any()),
%%   <<"serviceRole">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_macie_session_response() :: #{binary() => any()}.


%% Example:
%% aws_service() :: #{
%%   <<"invokedBy">> => string()
%% }
-type aws_service() :: #{binary() => any()}.


%% Example:
%% sensitivity_inspection_templates_entry() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type sensitivity_inspection_templates_entry() :: #{binary() => any()}.


%% Example:
%% batch_get_custom_data_identifier_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deleted">> => boolean(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type batch_get_custom_data_identifier_summary() :: #{binary() => any()}.


%% Example:
%% search_resources_bucket_criteria() :: #{
%%   <<"excludes">> => search_resources_criteria_block(),
%%   <<"includes">> => search_resources_criteria_block()
%% }
-type search_resources_bucket_criteria() :: #{binary() => any()}.


%% Example:
%% federated_user() :: #{
%%   <<"accessKeyId">> => string(),
%%   <<"accountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"principalId">> => string(),
%%   <<"sessionContext">> => session_context()
%% }
-type federated_user() :: #{binary() => any()}.


%% Example:
%% update_resource_profile_detections_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"suppressDataIdentifiers">> => list(suppress_data_identifier())
%% }
-type update_resource_profile_detections_request() :: #{binary() => any()}.


%% Example:
%% get_findings_response() :: #{
%%   <<"findings">> => list(finding())
%% }
-type get_findings_response() :: #{binary() => any()}.


%% Example:
%% put_findings_publication_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"securityHubConfiguration">> => security_hub_configuration()
%% }
-type put_findings_publication_configuration_request() :: #{binary() => any()}.


%% Example:
%% bucket_policy() :: #{
%%   <<"allowsPublicReadAccess">> => boolean(),
%%   <<"allowsPublicWriteAccess">> => boolean()
%% }
-type bucket_policy() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% findings_filter_list_item() :: #{
%%   <<"action">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type findings_filter_list_item() :: #{binary() => any()}.


%% Example:
%% list_allow_lists_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_allow_lists_request() :: #{binary() => any()}.


%% Example:
%% user_identity_root() :: #{
%%   <<"accountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"principalId">> => string()
%% }
-type user_identity_root() :: #{binary() => any()}.


%% Example:
%% list_jobs_filter_criteria() :: #{
%%   <<"excludes">> => list(list_jobs_filter_term()),
%%   <<"includes">> => list(list_jobs_filter_term())
%% }
-type list_jobs_filter_criteria() :: #{binary() => any()}.


%% Example:
%% create_findings_filter_request() :: #{
%%   <<"action">> := list(any()),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"findingCriteria">> := finding_criteria(),
%%   <<"name">> := string(),
%%   <<"position">> => integer(),
%%   <<"tags">> => map()
%% }
-type create_findings_filter_request() :: #{binary() => any()}.


%% Example:
%% get_sensitive_data_occurrences_response() :: #{
%%   <<"error">> => string(),
%%   <<"sensitiveDataOccurrences">> => map(),
%%   <<"status">> => list(any())
%% }
-type get_sensitive_data_occurrences_response() :: #{binary() => any()}.


%% Example:
%% update_findings_filter_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type update_findings_filter_response() :: #{binary() => any()}.


%% Example:
%% search_resources_tag_criterion_pair() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type search_resources_tag_criterion_pair() :: #{binary() => any()}.


%% Example:
%% automated_discovery_account_update_error() :: #{
%%   <<"accountId">> => string(),
%%   <<"errorCode">> => list(any())
%% }
-type automated_discovery_account_update_error() :: #{binary() => any()}.


%% Example:
%% list_managed_data_identifiers_response() :: #{
%%   <<"items">> => list(managed_data_identifier_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_data_identifiers_response() :: #{binary() => any()}.


%% Example:
%% allow_list_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type allow_list_summary() :: #{binary() => any()}.


%% Example:
%% classification_details() :: #{
%%   <<"detailedResultsLocation">> => string(),
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string(),
%%   <<"originType">> => list(any()),
%%   <<"result">> => classification_result()
%% }
-type classification_details() :: #{binary() => any()}.


%% Example:
%% finding() :: #{
%%   <<"accountId">> => string(),
%%   <<"archived">> => boolean(),
%%   <<"category">> => list(any()),
%%   <<"classificationDetails">> => classification_details(),
%%   <<"count">> => float(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"partition">> => string(),
%%   <<"policyDetails">> => policy_details(),
%%   <<"region">> => string(),
%%   <<"resourcesAffected">> => resources_affected(),
%%   <<"sample">> => boolean(),
%%   <<"schemaVersion">> => string(),
%%   <<"severity">> => severity(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type finding() :: #{binary() => any()}.

%% Example:
%% describe_classification_job_request() :: #{}
-type describe_classification_job_request() :: #{}.

%% Example:
%% update_automated_discovery_configuration_response() :: #{}
-type update_automated_discovery_configuration_response() :: #{}.


%% Example:
%% update_macie_session_request() :: #{
%%   <<"findingPublishingFrequency">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type update_macie_session_request() :: #{binary() => any()}.


%% Example:
%% ip_geo_location() :: #{
%%   <<"lat">> => float(),
%%   <<"lon">> => float()
%% }
-type ip_geo_location() :: #{binary() => any()}.


%% Example:
%% resource_profile_artifact() :: #{
%%   <<"arn">> => string(),
%%   <<"classificationResultStatus">> => string(),
%%   <<"sensitive">> => boolean()
%% }
-type resource_profile_artifact() :: #{binary() => any()}.

%% Example:
%% update_member_session_response() :: #{}
-type update_member_session_response() :: #{}.


%% Example:
%% get_finding_statistics_request() :: #{
%%   <<"findingCriteria">> => finding_criteria(),
%%   <<"groupBy">> := list(any()),
%%   <<"size">> => integer(),
%%   <<"sortCriteria">> => finding_statistics_sort_criteria()
%% }
-type get_finding_statistics_request() :: #{binary() => any()}.


%% Example:
%% list_resource_profile_artifacts_request() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> := string()
%% }
-type list_resource_profile_artifacts_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_findings_request() :: #{
%%   <<"findingCriteria">> => finding_criteria(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortCriteria">> => sort_criteria()
%% }
-type list_findings_request() :: #{binary() => any()}.


%% Example:
%% describe_buckets_response() :: #{
%%   <<"buckets">> => list(bucket_metadata()),
%%   <<"nextToken">> => string()
%% }
-type describe_buckets_response() :: #{binary() => any()}.


%% Example:
%% list_custom_data_identifiers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_custom_data_identifiers_request() :: #{binary() => any()}.


%% Example:
%% update_retrieval_configuration() :: #{
%%   <<"retrievalMode">> => list(any()),
%%   <<"roleName">> => string()
%% }
-type update_retrieval_configuration() :: #{binary() => any()}.


%% Example:
%% test_custom_data_identifier_response() :: #{
%%   <<"matchCount">> => integer()
%% }
-type test_custom_data_identifier_response() :: #{binary() => any()}.

%% Example:
%% get_findings_filter_request() :: #{}
-type get_findings_filter_request() :: #{}.

%% Example:
%% get_member_request() :: #{}
-type get_member_request() :: #{}.


%% Example:
%% s3_bucket_owner() :: #{
%%   <<"displayName">> => string(),
%%   <<"id">> => string()
%% }
-type s3_bucket_owner() :: #{binary() => any()}.

%% Example:
%% update_organization_configuration_response() :: #{}
-type update_organization_configuration_response() :: #{}.


%% Example:
%% get_finding_statistics_response() :: #{
%%   <<"countsByGroup">> => list(group_count())
%% }
-type get_finding_statistics_response() :: #{binary() => any()}.


%% Example:
%% get_usage_totals_request() :: #{
%%   <<"timeRange">> => string()
%% }
-type get_usage_totals_request() :: #{binary() => any()}.


%% Example:
%% detection() :: #{
%%   <<"arn">> => string(),
%%   <<"count">> => float(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"suppressed">> => boolean(),
%%   <<"type">> => list(any())
%% }
-type detection() :: #{binary() => any()}.


%% Example:
%% s3_classification_scope_exclusion_update() :: #{
%%   <<"bucketNames">> => list(string()),
%%   <<"operation">> => list(any())
%% }
-type s3_classification_scope_exclusion_update() :: #{binary() => any()}.


%% Example:
%% s3_destination() :: #{
%%   <<"bucketName">> => string(),
%%   <<"keyPrefix">> => string(),
%%   <<"kmsKeyArn">> => string()
%% }
-type s3_destination() :: #{binary() => any()}.

%% Example:
%% accept_invitation_response() :: #{}
-type accept_invitation_response() :: #{}.


%% Example:
%% resource_statistics() :: #{
%%   <<"totalBytesClassified">> => float(),
%%   <<"totalDetections">> => float(),
%%   <<"totalDetectionsSuppressed">> => float(),
%%   <<"totalItemsClassified">> => float(),
%%   <<"totalItemsSensitive">> => float(),
%%   <<"totalItemsSkipped">> => float(),
%%   <<"totalItemsSkippedInvalidEncryption">> => float(),
%%   <<"totalItemsSkippedInvalidKms">> => float(),
%%   <<"totalItemsSkippedPermissionDenied">> => float()
%% }
-type resource_statistics() :: #{binary() => any()}.


%% Example:
%% create_sample_findings_request() :: #{
%%   <<"findingTypes">> => list(list(any())())
%% }
-type create_sample_findings_request() :: #{binary() => any()}.


%% Example:
%% decline_invitations_request() :: #{
%%   <<"accountIds">> := list(string())
%% }
-type decline_invitations_request() :: #{binary() => any()}.


%% Example:
%% sensitive_data_item() :: #{
%%   <<"category">> => list(any()),
%%   <<"detections">> => list(default_detection()),
%%   <<"totalCount">> => float()
%% }
-type sensitive_data_item() :: #{binary() => any()}.


%% Example:
%% get_bucket_statistics_response() :: #{
%%   <<"bucketCount">> => float(),
%%   <<"bucketCountByEffectivePermission">> => bucket_count_by_effective_permission(),
%%   <<"bucketCountByEncryptionType">> => bucket_count_by_encryption_type(),
%%   <<"bucketCountByObjectEncryptionRequirement">> => bucket_count_policy_allows_unencrypted_object_uploads(),
%%   <<"bucketCountBySharedAccessType">> => bucket_count_by_shared_access_type(),
%%   <<"bucketStatisticsBySensitivity">> => bucket_statistics_by_sensitivity(),
%%   <<"classifiableObjectCount">> => float(),
%%   <<"classifiableSizeInBytes">> => float(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"objectCount">> => float(),
%%   <<"sizeInBytes">> => float(),
%%   <<"sizeInBytesCompressed">> => float(),
%%   <<"unclassifiableObjectCount">> => object_level_statistics(),
%%   <<"unclassifiableObjectSizeInBytes">> => object_level_statistics()
%% }
-type get_bucket_statistics_response() :: #{binary() => any()}.


%% Example:
%% update_automated_discovery_configuration_request() :: #{
%%   <<"autoEnableOrganizationMembers">> => list(any()),
%%   <<"status">> := list(any())
%% }
-type update_automated_discovery_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_master_account_response() :: #{
%%   <<"master">> => invitation()
%% }
-type get_master_account_response() :: #{binary() => any()}.


%% Example:
%% job_schedule_frequency() :: #{
%%   <<"dailySchedule">> => daily_schedule(),
%%   <<"monthlySchedule">> => monthly_schedule(),
%%   <<"weeklySchedule">> => weekly_schedule()
%% }
-type job_schedule_frequency() :: #{binary() => any()}.


%% Example:
%% job_details() :: #{
%%   <<"isDefinedInJob">> => list(any()),
%%   <<"isMonitoredByJob">> => list(any()),
%%   <<"lastJobId">> => string(),
%%   <<"lastJobRunTime">> => non_neg_integer()
%% }
-type job_details() :: #{binary() => any()}.


%% Example:
%% put_classification_export_configuration_response() :: #{
%%   <<"configuration">> => classification_export_configuration()
%% }
-type put_classification_export_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_classification_job_response() :: #{
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string()
%% }
-type create_classification_job_response() :: #{binary() => any()}.


%% Example:
%% allow_list_criteria() :: #{
%%   <<"regex">> => string(),
%%   <<"s3WordsList">> => s3_words_list()
%% }
-type allow_list_criteria() :: #{binary() => any()}.


%% Example:
%% delete_invitations_request() :: #{
%%   <<"accountIds">> := list(string())
%% }
-type delete_invitations_request() :: #{binary() => any()}.


%% Example:
%% classification_scope_summary() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type classification_scope_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_member_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"administratorAccountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"email">> => string(),
%%   <<"invitedAt">> => non_neg_integer(),
%%   <<"masterAccountId">> => string(),
%%   <<"relationshipStatus">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_member_response() :: #{binary() => any()}.


%% Example:
%% update_reveal_configuration_request() :: #{
%%   <<"configuration">> := reveal_configuration(),
%%   <<"retrievalConfiguration">> => update_retrieval_configuration()
%% }
-type update_reveal_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_organization_configuration_request() :: #{
%%   <<"autoEnable">> := boolean()
%% }
-type update_organization_configuration_request() :: #{binary() => any()}.


%% Example:
%% enable_organization_admin_account_request() :: #{
%%   <<"adminAccountId">> := string(),
%%   <<"clientToken">> => string()
%% }
-type enable_organization_admin_account_request() :: #{binary() => any()}.


%% Example:
%% sensitivity_inspection_template_includes() :: #{
%%   <<"allowListIds">> => list(string()),
%%   <<"customDataIdentifierIds">> => list(string()),
%%   <<"managedDataIdentifierIds">> => list(string())
%% }
-type sensitivity_inspection_template_includes() :: #{binary() => any()}.

%% Example:
%% delete_member_response() :: #{}
-type delete_member_response() :: #{}.


%% Example:
%% s3_classification_scope_update() :: #{
%%   <<"excludes">> => s3_classification_scope_exclusion_update()
%% }
-type s3_classification_scope_update() :: #{binary() => any()}.


%% Example:
%% search_resources_criteria() :: #{
%%   <<"simpleCriterion">> => search_resources_simple_criterion(),
%%   <<"tagCriterion">> => search_resources_tag_criterion()
%% }
-type search_resources_criteria() :: #{binary() => any()}.


%% Example:
%% delete_invitations_response() :: #{
%%   <<"unprocessedAccounts">> => list(unprocessed_account())
%% }
-type delete_invitations_response() :: #{binary() => any()}.


%% Example:
%% update_reveal_configuration_response() :: #{
%%   <<"configuration">> => reveal_configuration(),
%%   <<"retrievalConfiguration">> => retrieval_configuration()
%% }
-type update_reveal_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_organization_admin_accounts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_organization_admin_accounts_request() :: #{binary() => any()}.


%% Example:
%% batch_get_custom_data_identifiers_response() :: #{
%%   <<"customDataIdentifiers">> => list(batch_get_custom_data_identifier_summary()),
%%   <<"notFoundIdentifierIds">> => list(string())
%% }
-type batch_get_custom_data_identifiers_response() :: #{binary() => any()}.


%% Example:
%% sort_criteria() :: #{
%%   <<"attributeName">> => string(),
%%   <<"orderBy">> => list(any())
%% }
-type sort_criteria() :: #{binary() => any()}.


%% Example:
%% ip_owner() :: #{
%%   <<"asn">> => string(),
%%   <<"asnOrg">> => string(),
%%   <<"isp">> => string(),
%%   <<"org">> => string()
%% }
-type ip_owner() :: #{binary() => any()}.


%% Example:
%% criteria_for_job() :: #{
%%   <<"simpleCriterion">> => simple_criterion_for_job(),
%%   <<"tagCriterion">> => tag_criterion_for_job()
%% }
-type criteria_for_job() :: #{binary() => any()}.

%% Example:
%% get_sensitive_data_occurrences_availability_request() :: #{}
-type get_sensitive_data_occurrences_availability_request() :: #{}.


%% Example:
%% weekly_schedule() :: #{
%%   <<"dayOfWeek">> => list(any())
%% }
-type weekly_schedule() :: #{binary() => any()}.


%% Example:
%% unprocessable_entity_exception() :: #{
%%   <<"message">> => string()
%% }
-type unprocessable_entity_exception() :: #{binary() => any()}.

%% Example:
%% get_classification_export_configuration_request() :: #{}
-type get_classification_export_configuration_request() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_invitations_count_request() :: #{}
-type get_invitations_count_request() :: #{}.


%% Example:
%% default_detection() :: #{
%%   <<"count">> => float(),
%%   <<"occurrences">> => occurrences(),
%%   <<"type">> => string()
%% }
-type default_detection() :: #{binary() => any()}.


%% Example:
%% s3_words_list() :: #{
%%   <<"bucketName">> => string(),
%%   <<"objectKey">> => string()
%% }
-type s3_words_list() :: #{binary() => any()}.


%% Example:
%% accept_invitation_request() :: #{
%%   <<"administratorAccountId">> => string(),
%%   <<"invitationId">> := string(),
%%   <<"masterAccount">> => string()
%% }
-type accept_invitation_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_members_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"onlyAssociated">> => string()
%% }
-type list_members_request() :: #{binary() => any()}.


%% Example:
%% list_members_response() :: #{
%%   <<"members">> => list(member()),
%%   <<"nextToken">> => string()
%% }
-type list_members_response() :: #{binary() => any()}.


%% Example:
%% block_public_access() :: #{
%%   <<"blockPublicAcls">> => boolean(),
%%   <<"blockPublicPolicy">> => boolean(),
%%   <<"ignorePublicAcls">> => boolean(),
%%   <<"restrictPublicBuckets">> => boolean()
%% }
-type block_public_access() :: #{binary() => any()}.


%% Example:
%% last_run_error_status() :: #{
%%   <<"code">> => list(any())
%% }
-type last_run_error_status() :: #{binary() => any()}.


%% Example:
%% statistics() :: #{
%%   <<"approximateNumberOfObjectsToProcess">> => float(),
%%   <<"numberOfRuns">> => float()
%% }
-type statistics() :: #{binary() => any()}.


%% Example:
%% list_findings_filters_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_findings_filters_request() :: #{binary() => any()}.


%% Example:
%% update_sensitivity_inspection_template_request() :: #{
%%   <<"description">> => string(),
%%   <<"excludes">> => sensitivity_inspection_template_excludes(),
%%   <<"includes">> => sensitivity_inspection_template_includes()
%% }
-type update_sensitivity_inspection_template_request() :: #{binary() => any()}.


%% Example:
%% search_resources_criteria_block() :: #{
%%   <<"and">> => list(search_resources_criteria())
%% }
-type search_resources_criteria_block() :: #{binary() => any()}.


%% Example:
%% key_value_pair() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type key_value_pair() :: #{binary() => any()}.


%% Example:
%% list_resource_profile_detections_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> := string()
%% }
-type list_resource_profile_detections_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.

%% Example:
%% get_master_account_request() :: #{}
-type get_master_account_request() :: #{}.


%% Example:
%% s3_job_definition() :: #{
%%   <<"bucketCriteria">> => s3_bucket_criteria_for_job(),
%%   <<"bucketDefinitions">> => list(s3_bucket_definition_for_job()),
%%   <<"scoping">> => scoping()
%% }
-type s3_job_definition() :: #{binary() => any()}.


%% Example:
%% service_limit() :: #{
%%   <<"isServiceLimited">> => boolean(),
%%   <<"unit">> => list(any()),
%%   <<"value">> => float()
%% }
-type service_limit() :: #{binary() => any()}.

%% Example:
%% daily_schedule() :: #{}
-type daily_schedule() :: #{}.


%% Example:
%% get_invitations_count_response() :: #{
%%   <<"invitationsCount">> => float()
%% }
-type get_invitations_count_response() :: #{binary() => any()}.


%% Example:
%% get_sensitive_data_occurrences_availability_response() :: #{
%%   <<"code">> => list(any()),
%%   <<"reasons">> => list(list(any())())
%% }
-type get_sensitive_data_occurrences_availability_response() :: #{binary() => any()}.

%% Example:
%% update_resource_profile_detections_response() :: #{}
-type update_resource_profile_detections_response() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% get_findings_publication_configuration_response() :: #{
%%   <<"securityHubConfiguration">> => security_hub_configuration()
%% }
-type get_findings_publication_configuration_response() :: #{binary() => any()}.


%% Example:
%% severity_level() :: #{
%%   <<"occurrencesThreshold">> => float(),
%%   <<"severity">> => list(any())
%% }
-type severity_level() :: #{binary() => any()}.


%% Example:
%% list_invitations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_invitations_request() :: #{binary() => any()}.


%% Example:
%% get_classification_scope_response() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"s3">> => s3_classification_scope()
%% }
-type get_classification_scope_response() :: #{binary() => any()}.


%% Example:
%% finding_criteria() :: #{
%%   <<"criterion">> => map()
%% }
-type finding_criteria() :: #{binary() => any()}.


%% Example:
%% replication_details() :: #{
%%   <<"replicated">> => boolean(),
%%   <<"replicatedExternally">> => boolean(),
%%   <<"replicationAccounts">> => list(string())
%% }
-type replication_details() :: #{binary() => any()}.

%% Example:
%% create_sample_findings_response() :: #{}
-type create_sample_findings_response() :: #{}.


%% Example:
%% update_resource_profile_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"sensitivityScoreOverride">> => integer()
%% }
-type update_resource_profile_request() :: #{binary() => any()}.


%% Example:
%% get_usage_totals_response() :: #{
%%   <<"timeRange">> => list(any()),
%%   <<"usageTotals">> => list(usage_total())
%% }
-type get_usage_totals_response() :: #{binary() => any()}.


%% Example:
%% member() :: #{
%%   <<"accountId">> => string(),
%%   <<"administratorAccountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"email">> => string(),
%%   <<"invitedAt">> => non_neg_integer(),
%%   <<"masterAccountId">> => string(),
%%   <<"relationshipStatus">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type member() :: #{binary() => any()}.

%% Example:
%% enable_organization_admin_account_response() :: #{}
-type enable_organization_admin_account_response() :: #{}.


%% Example:
%% update_allow_list_request() :: #{
%%   <<"criteria">> := allow_list_criteria(),
%%   <<"description">> => string(),
%%   <<"name">> := string()
%% }
-type update_allow_list_request() :: #{binary() => any()}.


%% Example:
%% finding_action() :: #{
%%   <<"actionType">> => list(any()),
%%   <<"apiCallDetails">> => api_call_details()
%% }
-type finding_action() :: #{binary() => any()}.


%% Example:
%% ip_address_details() :: #{
%%   <<"ipAddressV4">> => string(),
%%   <<"ipCity">> => ip_city(),
%%   <<"ipCountry">> => ip_country(),
%%   <<"ipGeoLocation">> => ip_geo_location(),
%%   <<"ipOwner">> => ip_owner()
%% }
-type ip_address_details() :: #{binary() => any()}.


%% Example:
%% put_classification_export_configuration_request() :: #{
%%   <<"configuration">> := classification_export_configuration()
%% }
-type put_classification_export_configuration_request() :: #{binary() => any()}.


%% Example:
%% search_resources_simple_criterion() :: #{
%%   <<"comparator">> => list(any()),
%%   <<"key">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type search_resources_simple_criterion() :: #{binary() => any()}.


%% Example:
%% tag_criterion_for_job() :: #{
%%   <<"comparator">> => list(any()),
%%   <<"tagValues">> => list(tag_criterion_pair_for_job())
%% }
-type tag_criterion_for_job() :: #{binary() => any()}.


%% Example:
%% domain_details() :: #{
%%   <<"domainName">> => string()
%% }
-type domain_details() :: #{binary() => any()}.


%% Example:
%% criterion_additional_properties() :: #{
%%   <<"eq">> => list(string()),
%%   <<"eqExactMatch">> => list(string()),
%%   <<"gt">> => float(),
%%   <<"gte">> => float(),
%%   <<"lt">> => float(),
%%   <<"lte">> => float(),
%%   <<"neq">> => list(string())
%% }
-type criterion_additional_properties() :: #{binary() => any()}.


%% Example:
%% session_issuer() :: #{
%%   <<"accountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"principalId">> => string(),
%%   <<"type">> => string(),
%%   <<"userName">> => string()
%% }
-type session_issuer() :: #{binary() => any()}.

%% Example:
%% get_reveal_configuration_request() :: #{}
-type get_reveal_configuration_request() :: #{}.


%% Example:
%% assumed_role() :: #{
%%   <<"accessKeyId">> => string(),
%%   <<"accountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"principalId">> => string(),
%%   <<"sessionContext">> => session_context()
%% }
-type assumed_role() :: #{binary() => any()}.


%% Example:
%% unprocessed_account() :: #{
%%   <<"accountId">> => string(),
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string()
%% }
-type unprocessed_account() :: #{binary() => any()}.


%% Example:
%% batch_update_automated_discovery_accounts_response() :: #{
%%   <<"errors">> => list(automated_discovery_account_update_error())
%% }
-type batch_update_automated_discovery_accounts_response() :: #{binary() => any()}.


%% Example:
%% list_classification_scopes_response() :: #{
%%   <<"classificationScopes">> => list(classification_scope_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_classification_scopes_response() :: #{binary() => any()}.


%% Example:
%% bucket_permission_configuration() :: #{
%%   <<"accountLevelPermissions">> => account_level_permissions(),
%%   <<"bucketLevelPermissions">> => bucket_level_permissions()
%% }
-type bucket_permission_configuration() :: #{binary() => any()}.


%% Example:
%% user_paused_details() :: #{
%%   <<"jobExpiresAt">> => non_neg_integer(),
%%   <<"jobImminentExpirationHealthEventArn">> => string(),
%%   <<"jobPausedAt">> => non_neg_integer()
%% }
-type user_paused_details() :: #{binary() => any()}.


%% Example:
%% create_invitations_response() :: #{
%%   <<"unprocessedAccounts">> => list(unprocessed_account())
%% }
-type create_invitations_response() :: #{binary() => any()}.


%% Example:
%% get_allow_list_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"criteria">> => allow_list_criteria(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => allow_list_status(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_allow_list_response() :: #{binary() => any()}.


%% Example:
%% reveal_configuration() :: #{
%%   <<"kmsKeyId">> => string(),
%%   <<"status">> => list(any())
%% }
-type reveal_configuration() :: #{binary() => any()}.


%% Example:
%% get_resource_profile_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type get_resource_profile_request() :: #{binary() => any()}.

%% Example:
%% disassociate_member_response() :: #{}
-type disassociate_member_response() :: #{}.


%% Example:
%% bucket_level_permissions() :: #{
%%   <<"accessControlList">> => access_control_list(),
%%   <<"blockPublicAccess">> => block_public_access(),
%%   <<"bucketPolicy">> => bucket_policy()
%% }
-type bucket_level_permissions() :: #{binary() => any()}.


%% Example:
%% list_organization_admin_accounts_response() :: #{
%%   <<"adminAccounts">> => list(admin_account()),
%%   <<"nextToken">> => string()
%% }
-type list_organization_admin_accounts_response() :: #{binary() => any()}.


%% Example:
%% list_allow_lists_response() :: #{
%%   <<"allowLists">> => list(allow_list_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_allow_lists_response() :: #{binary() => any()}.


%% Example:
%% matching_bucket() :: #{
%%   <<"accountId">> => string(),
%%   <<"automatedDiscoveryMonitoringStatus">> => list(any()),
%%   <<"bucketName">> => string(),
%%   <<"classifiableObjectCount">> => float(),
%%   <<"classifiableSizeInBytes">> => float(),
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"jobDetails">> => job_details(),
%%   <<"lastAutomatedDiscoveryTime">> => non_neg_integer(),
%%   <<"objectCount">> => float(),
%%   <<"objectCountByEncryptionType">> => object_count_by_encryption_type(),
%%   <<"sensitivityScore">> => integer(),
%%   <<"sizeInBytes">> => float(),
%%   <<"sizeInBytesCompressed">> => float(),
%%   <<"unclassifiableObjectCount">> => object_level_statistics(),
%%   <<"unclassifiableObjectSizeInBytes">> => object_level_statistics()
%% }
-type matching_bucket() :: #{binary() => any()}.

%% Example:
%% get_automated_discovery_configuration_request() :: #{}
-type get_automated_discovery_configuration_request() :: #{}.


%% Example:
%% get_custom_data_identifier_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deleted">> => boolean(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"ignoreWords">> => list(string()),
%%   <<"keywords">> => list(string()),
%%   <<"maximumMatchDistance">> => integer(),
%%   <<"name">> => string(),
%%   <<"regex">> => string(),
%%   <<"severityLevels">> => list(severity_level()),
%%   <<"tags">> => map()
%% }
-type get_custom_data_identifier_response() :: #{binary() => any()}.


%% Example:
%% list_sensitivity_inspection_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sensitivityInspectionTemplates">> => list(sensitivity_inspection_templates_entry())
%% }
-type list_sensitivity_inspection_templates_response() :: #{binary() => any()}.


%% Example:
%% custom_data_identifiers() :: #{
%%   <<"detections">> => list(custom_detection()),
%%   <<"totalCount">> => float()
%% }
-type custom_data_identifiers() :: #{binary() => any()}.

%% Example:
%% disassociate_from_administrator_account_request() :: #{}
-type disassociate_from_administrator_account_request() :: #{}.


%% Example:
%% access_control_list() :: #{
%%   <<"allowsPublicReadAccess">> => boolean(),
%%   <<"allowsPublicWriteAccess">> => boolean()
%% }
-type access_control_list() :: #{binary() => any()}.


%% Example:
%% usage_record() :: #{
%%   <<"accountId">> => string(),
%%   <<"automatedDiscoveryFreeTrialStartDate">> => non_neg_integer(),
%%   <<"freeTrialStartDate">> => non_neg_integer(),
%%   <<"usage">> => list(usage_by_account())
%% }
-type usage_record() :: #{binary() => any()}.


%% Example:
%% get_administrator_account_response() :: #{
%%   <<"administrator">> => invitation()
%% }
-type get_administrator_account_response() :: #{binary() => any()}.

%% Example:
%% delete_custom_data_identifier_response() :: #{}
-type delete_custom_data_identifier_response() :: #{}.


%% Example:
%% job_scoping_block() :: #{
%%   <<"and">> => list(job_scope_term())
%% }
-type job_scoping_block() :: #{binary() => any()}.

%% Example:
%% enable_macie_response() :: #{}
-type enable_macie_response() :: #{}.


%% Example:
%% tag_criterion_pair_for_job() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag_criterion_pair_for_job() :: #{binary() => any()}.


%% Example:
%% group_count() :: #{
%%   <<"count">> => float(),
%%   <<"groupKey">> => string()
%% }
-type group_count() :: #{binary() => any()}.


%% Example:
%% matching_resource() :: #{
%%   <<"matchingBucket">> => matching_bucket()
%% }
-type matching_resource() :: #{binary() => any()}.


%% Example:
%% page() :: #{
%%   <<"lineRange">> => range(),
%%   <<"offsetRange">> => range(),
%%   <<"pageNumber">> => float()
%% }
-type page() :: #{binary() => any()}.


%% Example:
%% policy_details() :: #{
%%   <<"action">> => finding_action(),
%%   <<"actor">> => finding_actor()
%% }
-type policy_details() :: #{binary() => any()}.


%% Example:
%% create_classification_job_request() :: #{
%%   <<"allowListIds">> => list(string()),
%%   <<"clientToken">> := string(),
%%   <<"customDataIdentifierIds">> => list(string()),
%%   <<"description">> => string(),
%%   <<"initialRun">> => boolean(),
%%   <<"jobType">> := list(any()),
%%   <<"managedDataIdentifierIds">> => list(string()),
%%   <<"managedDataIdentifierSelector">> => list(any()),
%%   <<"name">> := string(),
%%   <<"s3JobDefinition">> := s3_job_definition(),
%%   <<"samplingPercentage">> => integer(),
%%   <<"scheduleFrequency">> => job_schedule_frequency(),
%%   <<"tags">> => map()
%% }
-type create_classification_job_request() :: #{binary() => any()}.


%% Example:
%% bucket_count_by_effective_permission() :: #{
%%   <<"publiclyAccessible">> => float(),
%%   <<"publiclyReadable">> => float(),
%%   <<"publiclyWritable">> => float(),
%%   <<"unknown">> => float()
%% }
-type bucket_count_by_effective_permission() :: #{binary() => any()}.


%% Example:
%% simple_criterion_for_job() :: #{
%%   <<"comparator">> => list(any()),
%%   <<"key">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type simple_criterion_for_job() :: #{binary() => any()}.


%% Example:
%% detected_data_details() :: #{
%%   <<"value">> => string()
%% }
-type detected_data_details() :: #{binary() => any()}.


%% Example:
%% automated_discovery_account() :: #{
%%   <<"accountId">> => string(),
%%   <<"status">> => list(any())
%% }
-type automated_discovery_account() :: #{binary() => any()}.


%% Example:
%% update_classification_job_request() :: #{
%%   <<"jobStatus">> := list(any())
%% }
-type update_classification_job_request() :: #{binary() => any()}.


%% Example:
%% get_usage_statistics_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"records">> => list(usage_record()),
%%   <<"timeRange">> => list(any())
%% }
-type get_usage_statistics_response() :: #{binary() => any()}.


%% Example:
%% create_invitations_request() :: #{
%%   <<"accountIds">> := list(string()),
%%   <<"disableEmailNotification">> => boolean(),
%%   <<"message">> => string()
%% }
-type create_invitations_request() :: #{binary() => any()}.


%% Example:
%% create_allow_list_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"criteria">> := allow_list_criteria(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_allow_list_request() :: #{binary() => any()}.

%% Example:
%% put_findings_publication_configuration_response() :: #{}
-type put_findings_publication_configuration_response() :: #{}.


%% Example:
%% list_classification_jobs_response() :: #{
%%   <<"items">> => list(job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_classification_jobs_response() :: #{binary() => any()}.


%% Example:
%% list_invitations_response() :: #{
%%   <<"invitations">> => list(invitation()),
%%   <<"nextToken">> => string()
%% }
-type list_invitations_response() :: #{binary() => any()}.

%% Example:
%% disassociate_member_request() :: #{}
-type disassociate_member_request() :: #{}.

%% Example:
%% disable_macie_response() :: #{}
-type disable_macie_response() :: #{}.

-type accept_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_get_custom_data_identifiers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_update_automated_discovery_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_allow_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_classification_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_custom_data_identifier_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_findings_filter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_invitations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_sample_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type decline_invitations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_allow_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_custom_data_identifier_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_findings_filter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_invitations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_buckets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_classification_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_organization_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disable_macie_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disable_organization_admin_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_from_administrator_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_from_master_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type enable_macie_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type enable_organization_admin_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_administrator_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_allow_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_automated_discovery_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_bucket_statistics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_classification_export_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_classification_scope_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_custom_data_identifier_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_finding_statistics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_findings_filter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_findings_publication_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_invitations_count_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_macie_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_master_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_resource_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_reveal_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_sensitive_data_occurrences_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    unprocessable_entity_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_sensitive_data_occurrences_availability_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sensitivity_inspection_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_usage_statistics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_usage_totals_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_allow_lists_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_automated_discovery_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_classification_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_classification_scopes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_custom_data_identifiers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_findings_filters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_invitations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_members_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_organization_admin_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_resource_profile_artifacts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_resource_profile_detections_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_sensitivity_inspection_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type put_classification_export_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_findings_publication_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type search_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type test_custom_data_identifier_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_allow_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_automated_discovery_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_classification_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_classification_scope_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_findings_filter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_macie_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_member_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_organization_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_resource_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_resource_profile_detections_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_reveal_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_sensitivity_inspection_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts an Amazon Macie membership invitation that was received from
%% a specific account.
-spec accept_invitation(aws_client:aws_client(), accept_invitation_request()) ->
    {ok, accept_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_invitation_errors(), tuple()}.
accept_invitation(Client, Input) ->
    accept_invitation(Client, Input, []).

-spec accept_invitation(aws_client:aws_client(), accept_invitation_request(), proplists:proplist()) ->
    {ok, accept_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_invitation_errors(), tuple()}.
accept_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitations/accept"],
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

%% @doc Retrieves information about one or more custom data identifiers.
-spec batch_get_custom_data_identifiers(aws_client:aws_client(), batch_get_custom_data_identifiers_request()) ->
    {ok, batch_get_custom_data_identifiers_response(), tuple()} |
    {error, any()} |
    {error, batch_get_custom_data_identifiers_errors(), tuple()}.
batch_get_custom_data_identifiers(Client, Input) ->
    batch_get_custom_data_identifiers(Client, Input, []).

-spec batch_get_custom_data_identifiers(aws_client:aws_client(), batch_get_custom_data_identifiers_request(), proplists:proplist()) ->
    {ok, batch_get_custom_data_identifiers_response(), tuple()} |
    {error, any()} |
    {error, batch_get_custom_data_identifiers_errors(), tuple()}.
batch_get_custom_data_identifiers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/custom-data-identifiers/get"],
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

%% @doc Changes the status of automated sensitive data discovery for one or
%% more accounts.
-spec batch_update_automated_discovery_accounts(aws_client:aws_client(), batch_update_automated_discovery_accounts_request()) ->
    {ok, batch_update_automated_discovery_accounts_response(), tuple()} |
    {error, any()} |
    {error, batch_update_automated_discovery_accounts_errors(), tuple()}.
batch_update_automated_discovery_accounts(Client, Input) ->
    batch_update_automated_discovery_accounts(Client, Input, []).

-spec batch_update_automated_discovery_accounts(aws_client:aws_client(), batch_update_automated_discovery_accounts_request(), proplists:proplist()) ->
    {ok, batch_update_automated_discovery_accounts_response(), tuple()} |
    {error, any()} |
    {error, batch_update_automated_discovery_accounts_errors(), tuple()}.
batch_update_automated_discovery_accounts(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/automated-discovery/accounts"],
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

%% @doc Creates and defines the settings for an allow list.
-spec create_allow_list(aws_client:aws_client(), create_allow_list_request()) ->
    {ok, create_allow_list_response(), tuple()} |
    {error, any()} |
    {error, create_allow_list_errors(), tuple()}.
create_allow_list(Client, Input) ->
    create_allow_list(Client, Input, []).

-spec create_allow_list(aws_client:aws_client(), create_allow_list_request(), proplists:proplist()) ->
    {ok, create_allow_list_response(), tuple()} |
    {error, any()} |
    {error, create_allow_list_errors(), tuple()}.
create_allow_list(Client, Input0, Options0) ->
    Method = post,
    Path = ["/allow-lists"],
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

%% @doc Creates and defines the settings for a classification job.
-spec create_classification_job(aws_client:aws_client(), create_classification_job_request()) ->
    {ok, create_classification_job_response(), tuple()} |
    {error, any()} |
    {error, create_classification_job_errors(), tuple()}.
create_classification_job(Client, Input) ->
    create_classification_job(Client, Input, []).

-spec create_classification_job(aws_client:aws_client(), create_classification_job_request(), proplists:proplist()) ->
    {ok, create_classification_job_response(), tuple()} |
    {error, any()} |
    {error, create_classification_job_errors(), tuple()}.
create_classification_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/jobs"],
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

%% @doc Creates and defines the criteria and other settings for a custom data
%% identifier.
-spec create_custom_data_identifier(aws_client:aws_client(), create_custom_data_identifier_request()) ->
    {ok, create_custom_data_identifier_response(), tuple()} |
    {error, any()} |
    {error, create_custom_data_identifier_errors(), tuple()}.
create_custom_data_identifier(Client, Input) ->
    create_custom_data_identifier(Client, Input, []).

-spec create_custom_data_identifier(aws_client:aws_client(), create_custom_data_identifier_request(), proplists:proplist()) ->
    {ok, create_custom_data_identifier_response(), tuple()} |
    {error, any()} |
    {error, create_custom_data_identifier_errors(), tuple()}.
create_custom_data_identifier(Client, Input0, Options0) ->
    Method = post,
    Path = ["/custom-data-identifiers"],
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

%% @doc Creates and defines the criteria and other settings for a findings
%% filter.
-spec create_findings_filter(aws_client:aws_client(), create_findings_filter_request()) ->
    {ok, create_findings_filter_response(), tuple()} |
    {error, any()} |
    {error, create_findings_filter_errors(), tuple()}.
create_findings_filter(Client, Input) ->
    create_findings_filter(Client, Input, []).

-spec create_findings_filter(aws_client:aws_client(), create_findings_filter_request(), proplists:proplist()) ->
    {ok, create_findings_filter_response(), tuple()} |
    {error, any()} |
    {error, create_findings_filter_errors(), tuple()}.
create_findings_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findingsfilters"],
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

%% @doc Sends an Amazon Macie membership invitation to one or more accounts.
-spec create_invitations(aws_client:aws_client(), create_invitations_request()) ->
    {ok, create_invitations_response(), tuple()} |
    {error, any()} |
    {error, create_invitations_errors(), tuple()}.
create_invitations(Client, Input) ->
    create_invitations(Client, Input, []).

-spec create_invitations(aws_client:aws_client(), create_invitations_request(), proplists:proplist()) ->
    {ok, create_invitations_response(), tuple()} |
    {error, any()} |
    {error, create_invitations_errors(), tuple()}.
create_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitations"],
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

%% @doc Associates an account with an Amazon Macie administrator account.
-spec create_member(aws_client:aws_client(), create_member_request()) ->
    {ok, create_member_response(), tuple()} |
    {error, any()} |
    {error, create_member_errors(), tuple()}.
create_member(Client, Input) ->
    create_member(Client, Input, []).

-spec create_member(aws_client:aws_client(), create_member_request(), proplists:proplist()) ->
    {ok, create_member_response(), tuple()} |
    {error, any()} |
    {error, create_member_errors(), tuple()}.
create_member(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members"],
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

%% @doc Creates sample findings.
-spec create_sample_findings(aws_client:aws_client(), create_sample_findings_request()) ->
    {ok, create_sample_findings_response(), tuple()} |
    {error, any()} |
    {error, create_sample_findings_errors(), tuple()}.
create_sample_findings(Client, Input) ->
    create_sample_findings(Client, Input, []).

-spec create_sample_findings(aws_client:aws_client(), create_sample_findings_request(), proplists:proplist()) ->
    {ok, create_sample_findings_response(), tuple()} |
    {error, any()} |
    {error, create_sample_findings_errors(), tuple()}.
create_sample_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/sample"],
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

%% @doc Declines Amazon Macie membership invitations that were received from
%% specific accounts.
-spec decline_invitations(aws_client:aws_client(), decline_invitations_request()) ->
    {ok, decline_invitations_response(), tuple()} |
    {error, any()} |
    {error, decline_invitations_errors(), tuple()}.
decline_invitations(Client, Input) ->
    decline_invitations(Client, Input, []).

-spec decline_invitations(aws_client:aws_client(), decline_invitations_request(), proplists:proplist()) ->
    {ok, decline_invitations_response(), tuple()} |
    {error, any()} |
    {error, decline_invitations_errors(), tuple()}.
decline_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitations/decline"],
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

%% @doc Deletes an allow list.
-spec delete_allow_list(aws_client:aws_client(), binary() | list(), delete_allow_list_request()) ->
    {ok, delete_allow_list_response(), tuple()} |
    {error, any()} |
    {error, delete_allow_list_errors(), tuple()}.
delete_allow_list(Client, Id, Input) ->
    delete_allow_list(Client, Id, Input, []).

-spec delete_allow_list(aws_client:aws_client(), binary() | list(), delete_allow_list_request(), proplists:proplist()) ->
    {ok, delete_allow_list_response(), tuple()} |
    {error, any()} |
    {error, delete_allow_list_errors(), tuple()}.
delete_allow_list(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/allow-lists/", aws_util:encode_uri(Id), ""],
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
                     {<<"ignoreJobChecks">>, <<"ignoreJobChecks">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Soft deletes a custom data identifier.
-spec delete_custom_data_identifier(aws_client:aws_client(), binary() | list(), delete_custom_data_identifier_request()) ->
    {ok, delete_custom_data_identifier_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_data_identifier_errors(), tuple()}.
delete_custom_data_identifier(Client, Id, Input) ->
    delete_custom_data_identifier(Client, Id, Input, []).

-spec delete_custom_data_identifier(aws_client:aws_client(), binary() | list(), delete_custom_data_identifier_request(), proplists:proplist()) ->
    {ok, delete_custom_data_identifier_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_data_identifier_errors(), tuple()}.
delete_custom_data_identifier(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/custom-data-identifiers/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a findings filter.
-spec delete_findings_filter(aws_client:aws_client(), binary() | list(), delete_findings_filter_request()) ->
    {ok, delete_findings_filter_response(), tuple()} |
    {error, any()} |
    {error, delete_findings_filter_errors(), tuple()}.
delete_findings_filter(Client, Id, Input) ->
    delete_findings_filter(Client, Id, Input, []).

-spec delete_findings_filter(aws_client:aws_client(), binary() | list(), delete_findings_filter_request(), proplists:proplist()) ->
    {ok, delete_findings_filter_response(), tuple()} |
    {error, any()} |
    {error, delete_findings_filter_errors(), tuple()}.
delete_findings_filter(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/findingsfilters/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes Amazon Macie membership invitations that were received from
%% specific accounts.
-spec delete_invitations(aws_client:aws_client(), delete_invitations_request()) ->
    {ok, delete_invitations_response(), tuple()} |
    {error, any()} |
    {error, delete_invitations_errors(), tuple()}.
delete_invitations(Client, Input) ->
    delete_invitations(Client, Input, []).

-spec delete_invitations(aws_client:aws_client(), delete_invitations_request(), proplists:proplist()) ->
    {ok, delete_invitations_response(), tuple()} |
    {error, any()} |
    {error, delete_invitations_errors(), tuple()}.
delete_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitations/delete"],
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

%% @doc Deletes the association between an Amazon Macie administrator account
%% and an account.
-spec delete_member(aws_client:aws_client(), binary() | list(), delete_member_request()) ->
    {ok, delete_member_response(), tuple()} |
    {error, any()} |
    {error, delete_member_errors(), tuple()}.
delete_member(Client, Id, Input) ->
    delete_member(Client, Id, Input, []).

-spec delete_member(aws_client:aws_client(), binary() | list(), delete_member_request(), proplists:proplist()) ->
    {ok, delete_member_response(), tuple()} |
    {error, any()} |
    {error, delete_member_errors(), tuple()}.
delete_member(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/members/", aws_util:encode_uri(Id), ""],
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

%% @doc Retrieves (queries) statistical data and other information about one
%% or more S3 buckets that Amazon Macie monitors and analyzes for an account.
-spec describe_buckets(aws_client:aws_client(), describe_buckets_request()) ->
    {ok, describe_buckets_response(), tuple()} |
    {error, any()} |
    {error, describe_buckets_errors(), tuple()}.
describe_buckets(Client, Input) ->
    describe_buckets(Client, Input, []).

-spec describe_buckets(aws_client:aws_client(), describe_buckets_request(), proplists:proplist()) ->
    {ok, describe_buckets_response(), tuple()} |
    {error, any()} |
    {error, describe_buckets_errors(), tuple()}.
describe_buckets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datasources/s3"],
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

%% @doc Retrieves the status and settings for a classification job.
-spec describe_classification_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_classification_job_response(), tuple()} |
    {error, any()} |
    {error, describe_classification_job_errors(), tuple()}.
describe_classification_job(Client, JobId)
  when is_map(Client) ->
    describe_classification_job(Client, JobId, #{}, #{}).

-spec describe_classification_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_classification_job_response(), tuple()} |
    {error, any()} |
    {error, describe_classification_job_errors(), tuple()}.
describe_classification_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_classification_job(Client, JobId, QueryMap, HeadersMap, []).

-spec describe_classification_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_classification_job_response(), tuple()} |
    {error, any()} |
    {error, describe_classification_job_errors(), tuple()}.
describe_classification_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the Amazon Macie configuration settings for an organization
%% in Organizations.
-spec describe_organization_configuration(aws_client:aws_client()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client)
  when is_map(Client) ->
    describe_organization_configuration(Client, #{}, #{}).

-spec describe_organization_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_organization_configuration(Client, QueryMap, HeadersMap, []).

-spec describe_organization_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/admin/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disables Amazon Macie and deletes all settings and resources for a
%% Macie account.
-spec disable_macie(aws_client:aws_client(), disable_macie_request()) ->
    {ok, disable_macie_response(), tuple()} |
    {error, any()} |
    {error, disable_macie_errors(), tuple()}.
disable_macie(Client, Input) ->
    disable_macie(Client, Input, []).

-spec disable_macie(aws_client:aws_client(), disable_macie_request(), proplists:proplist()) ->
    {ok, disable_macie_response(), tuple()} |
    {error, any()} |
    {error, disable_macie_errors(), tuple()}.
disable_macie(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/macie"],
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

%% @doc Disables an account as the delegated Amazon Macie administrator
%% account for an organization in Organizations.
-spec disable_organization_admin_account(aws_client:aws_client(), disable_organization_admin_account_request()) ->
    {ok, disable_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, disable_organization_admin_account_errors(), tuple()}.
disable_organization_admin_account(Client, Input) ->
    disable_organization_admin_account(Client, Input, []).

-spec disable_organization_admin_account(aws_client:aws_client(), disable_organization_admin_account_request(), proplists:proplist()) ->
    {ok, disable_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, disable_organization_admin_account_errors(), tuple()}.
disable_organization_admin_account(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/admin"],
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
                     {<<"adminAccountId">>, <<"adminAccountId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a member account from its Amazon Macie administrator
%% account.
-spec disassociate_from_administrator_account(aws_client:aws_client(), disassociate_from_administrator_account_request()) ->
    {ok, disassociate_from_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_administrator_account_errors(), tuple()}.
disassociate_from_administrator_account(Client, Input) ->
    disassociate_from_administrator_account(Client, Input, []).

-spec disassociate_from_administrator_account(aws_client:aws_client(), disassociate_from_administrator_account_request(), proplists:proplist()) ->
    {ok, disassociate_from_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_administrator_account_errors(), tuple()}.
disassociate_from_administrator_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/administrator/disassociate"],
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

%% @doc (Deprecated) Disassociates a member account from its Amazon Macie
%% administrator account.
%%
%% This operation has been replaced by the
%% DisassociateFromAdministratorAccount operation.
-spec disassociate_from_master_account(aws_client:aws_client(), disassociate_from_master_account_request()) ->
    {ok, disassociate_from_master_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_master_account_errors(), tuple()}.
disassociate_from_master_account(Client, Input) ->
    disassociate_from_master_account(Client, Input, []).

-spec disassociate_from_master_account(aws_client:aws_client(), disassociate_from_master_account_request(), proplists:proplist()) ->
    {ok, disassociate_from_master_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_master_account_errors(), tuple()}.
disassociate_from_master_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/master/disassociate"],
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

%% @doc Disassociates an Amazon Macie administrator account from a member
%% account.
-spec disassociate_member(aws_client:aws_client(), binary() | list(), disassociate_member_request()) ->
    {ok, disassociate_member_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_errors(), tuple()}.
disassociate_member(Client, Id, Input) ->
    disassociate_member(Client, Id, Input, []).

-spec disassociate_member(aws_client:aws_client(), binary() | list(), disassociate_member_request(), proplists:proplist()) ->
    {ok, disassociate_member_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_errors(), tuple()}.
disassociate_member(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/members/disassociate/", aws_util:encode_uri(Id), ""],
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

%% @doc Enables Amazon Macie and specifies the configuration settings for a
%% Macie account.
-spec enable_macie(aws_client:aws_client(), enable_macie_request()) ->
    {ok, enable_macie_response(), tuple()} |
    {error, any()} |
    {error, enable_macie_errors(), tuple()}.
enable_macie(Client, Input) ->
    enable_macie(Client, Input, []).

-spec enable_macie(aws_client:aws_client(), enable_macie_request(), proplists:proplist()) ->
    {ok, enable_macie_response(), tuple()} |
    {error, any()} |
    {error, enable_macie_errors(), tuple()}.
enable_macie(Client, Input0, Options0) ->
    Method = post,
    Path = ["/macie"],
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

%% @doc Designates an account as the delegated Amazon Macie administrator
%% account for an organization in Organizations.
-spec enable_organization_admin_account(aws_client:aws_client(), enable_organization_admin_account_request()) ->
    {ok, enable_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, enable_organization_admin_account_errors(), tuple()}.
enable_organization_admin_account(Client, Input) ->
    enable_organization_admin_account(Client, Input, []).

-spec enable_organization_admin_account(aws_client:aws_client(), enable_organization_admin_account_request(), proplists:proplist()) ->
    {ok, enable_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, enable_organization_admin_account_errors(), tuple()}.
enable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/admin"],
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

%% @doc Retrieves information about the Amazon Macie administrator account
%% for an account.
-spec get_administrator_account(aws_client:aws_client()) ->
    {ok, get_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, get_administrator_account_errors(), tuple()}.
get_administrator_account(Client)
  when is_map(Client) ->
    get_administrator_account(Client, #{}, #{}).

-spec get_administrator_account(aws_client:aws_client(), map(), map()) ->
    {ok, get_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, get_administrator_account_errors(), tuple()}.
get_administrator_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_administrator_account(Client, QueryMap, HeadersMap, []).

-spec get_administrator_account(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, get_administrator_account_errors(), tuple()}.
get_administrator_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/administrator"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the settings and status of an allow list.
-spec get_allow_list(aws_client:aws_client(), binary() | list()) ->
    {ok, get_allow_list_response(), tuple()} |
    {error, any()} |
    {error, get_allow_list_errors(), tuple()}.
get_allow_list(Client, Id)
  when is_map(Client) ->
    get_allow_list(Client, Id, #{}, #{}).

-spec get_allow_list(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_allow_list_response(), tuple()} |
    {error, any()} |
    {error, get_allow_list_errors(), tuple()}.
get_allow_list(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_allow_list(Client, Id, QueryMap, HeadersMap, []).

-spec get_allow_list(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_allow_list_response(), tuple()} |
    {error, any()} |
    {error, get_allow_list_errors(), tuple()}.
get_allow_list(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/allow-lists/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration settings and status of automated
%% sensitive data discovery for an organization or standalone account.
-spec get_automated_discovery_configuration(aws_client:aws_client()) ->
    {ok, get_automated_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_automated_discovery_configuration_errors(), tuple()}.
get_automated_discovery_configuration(Client)
  when is_map(Client) ->
    get_automated_discovery_configuration(Client, #{}, #{}).

-spec get_automated_discovery_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_automated_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_automated_discovery_configuration_errors(), tuple()}.
get_automated_discovery_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_automated_discovery_configuration(Client, QueryMap, HeadersMap, []).

-spec get_automated_discovery_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_automated_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_automated_discovery_configuration_errors(), tuple()}.
get_automated_discovery_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/automated-discovery/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) aggregated statistical data about all the S3
%% buckets that Amazon Macie monitors and analyzes for an account.
-spec get_bucket_statistics(aws_client:aws_client(), get_bucket_statistics_request()) ->
    {ok, get_bucket_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_bucket_statistics_errors(), tuple()}.
get_bucket_statistics(Client, Input) ->
    get_bucket_statistics(Client, Input, []).

-spec get_bucket_statistics(aws_client:aws_client(), get_bucket_statistics_request(), proplists:proplist()) ->
    {ok, get_bucket_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_bucket_statistics_errors(), tuple()}.
get_bucket_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datasources/s3/statistics"],
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

%% @doc Retrieves the configuration settings for storing data classification
%% results.
-spec get_classification_export_configuration(aws_client:aws_client()) ->
    {ok, get_classification_export_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_classification_export_configuration_errors(), tuple()}.
get_classification_export_configuration(Client)
  when is_map(Client) ->
    get_classification_export_configuration(Client, #{}, #{}).

-spec get_classification_export_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_classification_export_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_classification_export_configuration_errors(), tuple()}.
get_classification_export_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_classification_export_configuration(Client, QueryMap, HeadersMap, []).

-spec get_classification_export_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_classification_export_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_classification_export_configuration_errors(), tuple()}.
get_classification_export_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/classification-export-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the classification scope settings for an account.
-spec get_classification_scope(aws_client:aws_client(), binary() | list()) ->
    {ok, get_classification_scope_response(), tuple()} |
    {error, any()} |
    {error, get_classification_scope_errors(), tuple()}.
get_classification_scope(Client, Id)
  when is_map(Client) ->
    get_classification_scope(Client, Id, #{}, #{}).

-spec get_classification_scope(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_classification_scope_response(), tuple()} |
    {error, any()} |
    {error, get_classification_scope_errors(), tuple()}.
get_classification_scope(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_classification_scope(Client, Id, QueryMap, HeadersMap, []).

-spec get_classification_scope(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_classification_scope_response(), tuple()} |
    {error, any()} |
    {error, get_classification_scope_errors(), tuple()}.
get_classification_scope(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/classification-scopes/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the criteria and other settings for a custom data
%% identifier.
-spec get_custom_data_identifier(aws_client:aws_client(), binary() | list()) ->
    {ok, get_custom_data_identifier_response(), tuple()} |
    {error, any()} |
    {error, get_custom_data_identifier_errors(), tuple()}.
get_custom_data_identifier(Client, Id)
  when is_map(Client) ->
    get_custom_data_identifier(Client, Id, #{}, #{}).

-spec get_custom_data_identifier(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_custom_data_identifier_response(), tuple()} |
    {error, any()} |
    {error, get_custom_data_identifier_errors(), tuple()}.
get_custom_data_identifier(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_custom_data_identifier(Client, Id, QueryMap, HeadersMap, []).

-spec get_custom_data_identifier(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_custom_data_identifier_response(), tuple()} |
    {error, any()} |
    {error, get_custom_data_identifier_errors(), tuple()}.
get_custom_data_identifier(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/custom-data-identifiers/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) aggregated statistical data about findings.
-spec get_finding_statistics(aws_client:aws_client(), get_finding_statistics_request()) ->
    {ok, get_finding_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_finding_statistics_errors(), tuple()}.
get_finding_statistics(Client, Input) ->
    get_finding_statistics(Client, Input, []).

-spec get_finding_statistics(aws_client:aws_client(), get_finding_statistics_request(), proplists:proplist()) ->
    {ok, get_finding_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_finding_statistics_errors(), tuple()}.
get_finding_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/statistics"],
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

%% @doc Retrieves the details of one or more findings.
-spec get_findings(aws_client:aws_client(), get_findings_request()) ->
    {ok, get_findings_response(), tuple()} |
    {error, any()} |
    {error, get_findings_errors(), tuple()}.
get_findings(Client, Input) ->
    get_findings(Client, Input, []).

-spec get_findings(aws_client:aws_client(), get_findings_request(), proplists:proplist()) ->
    {ok, get_findings_response(), tuple()} |
    {error, any()} |
    {error, get_findings_errors(), tuple()}.
get_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/describe"],
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

%% @doc Retrieves the criteria and other settings for a findings filter.
-spec get_findings_filter(aws_client:aws_client(), binary() | list()) ->
    {ok, get_findings_filter_response(), tuple()} |
    {error, any()} |
    {error, get_findings_filter_errors(), tuple()}.
get_findings_filter(Client, Id)
  when is_map(Client) ->
    get_findings_filter(Client, Id, #{}, #{}).

-spec get_findings_filter(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_findings_filter_response(), tuple()} |
    {error, any()} |
    {error, get_findings_filter_errors(), tuple()}.
get_findings_filter(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_findings_filter(Client, Id, QueryMap, HeadersMap, []).

-spec get_findings_filter(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_findings_filter_response(), tuple()} |
    {error, any()} |
    {error, get_findings_filter_errors(), tuple()}.
get_findings_filter(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/findingsfilters/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration settings for publishing findings to
%% Security Hub.
-spec get_findings_publication_configuration(aws_client:aws_client()) ->
    {ok, get_findings_publication_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_findings_publication_configuration_errors(), tuple()}.
get_findings_publication_configuration(Client)
  when is_map(Client) ->
    get_findings_publication_configuration(Client, #{}, #{}).

-spec get_findings_publication_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_findings_publication_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_findings_publication_configuration_errors(), tuple()}.
get_findings_publication_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_findings_publication_configuration(Client, QueryMap, HeadersMap, []).

-spec get_findings_publication_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_findings_publication_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_findings_publication_configuration_errors(), tuple()}.
get_findings_publication_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/findings-publication-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the count of Amazon Macie membership invitations that were
%% received by an account.
-spec get_invitations_count(aws_client:aws_client()) ->
    {ok, get_invitations_count_response(), tuple()} |
    {error, any()} |
    {error, get_invitations_count_errors(), tuple()}.
get_invitations_count(Client)
  when is_map(Client) ->
    get_invitations_count(Client, #{}, #{}).

-spec get_invitations_count(aws_client:aws_client(), map(), map()) ->
    {ok, get_invitations_count_response(), tuple()} |
    {error, any()} |
    {error, get_invitations_count_errors(), tuple()}.
get_invitations_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_invitations_count(Client, QueryMap, HeadersMap, []).

-spec get_invitations_count(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_invitations_count_response(), tuple()} |
    {error, any()} |
    {error, get_invitations_count_errors(), tuple()}.
get_invitations_count(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/invitations/count"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the status and configuration settings for an Amazon Macie
%% account.
-spec get_macie_session(aws_client:aws_client()) ->
    {ok, get_macie_session_response(), tuple()} |
    {error, any()} |
    {error, get_macie_session_errors(), tuple()}.
get_macie_session(Client)
  when is_map(Client) ->
    get_macie_session(Client, #{}, #{}).

-spec get_macie_session(aws_client:aws_client(), map(), map()) ->
    {ok, get_macie_session_response(), tuple()} |
    {error, any()} |
    {error, get_macie_session_errors(), tuple()}.
get_macie_session(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_macie_session(Client, QueryMap, HeadersMap, []).

-spec get_macie_session(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_macie_session_response(), tuple()} |
    {error, any()} |
    {error, get_macie_session_errors(), tuple()}.
get_macie_session(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/macie"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc (Deprecated) Retrieves information about the Amazon Macie
%% administrator account for an account.
%%
%% This operation has been replaced by the GetAdministratorAccount operation.
-spec get_master_account(aws_client:aws_client()) ->
    {ok, get_master_account_response(), tuple()} |
    {error, any()} |
    {error, get_master_account_errors(), tuple()}.
get_master_account(Client)
  when is_map(Client) ->
    get_master_account(Client, #{}, #{}).

-spec get_master_account(aws_client:aws_client(), map(), map()) ->
    {ok, get_master_account_response(), tuple()} |
    {error, any()} |
    {error, get_master_account_errors(), tuple()}.
get_master_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_master_account(Client, QueryMap, HeadersMap, []).

-spec get_master_account(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_master_account_response(), tuple()} |
    {error, any()} |
    {error, get_master_account_errors(), tuple()}.
get_master_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/master"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an account that's associated with an
%% Amazon Macie administrator account.
-spec get_member(aws_client:aws_client(), binary() | list()) ->
    {ok, get_member_response(), tuple()} |
    {error, any()} |
    {error, get_member_errors(), tuple()}.
get_member(Client, Id)
  when is_map(Client) ->
    get_member(Client, Id, #{}, #{}).

-spec get_member(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_member_response(), tuple()} |
    {error, any()} |
    {error, get_member_errors(), tuple()}.
get_member(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_member(Client, Id, QueryMap, HeadersMap, []).

-spec get_member(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_member_response(), tuple()} |
    {error, any()} |
    {error, get_member_errors(), tuple()}.
get_member(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/members/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) sensitive data discovery statistics and the
%% sensitivity score for an S3 bucket.
-spec get_resource_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_profile_response(), tuple()} |
    {error, any()} |
    {error, get_resource_profile_errors(), tuple()}.
get_resource_profile(Client, ResourceArn)
  when is_map(Client) ->
    get_resource_profile(Client, ResourceArn, #{}, #{}).

-spec get_resource_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_profile_response(), tuple()} |
    {error, any()} |
    {error, get_resource_profile_errors(), tuple()}.
get_resource_profile(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_profile(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec get_resource_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_profile_response(), tuple()} |
    {error, any()} |
    {error, get_resource_profile_errors(), tuple()}.
get_resource_profile(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resource-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the status and configuration settings for retrieving
%% occurrences of sensitive data reported by findings.
-spec get_reveal_configuration(aws_client:aws_client()) ->
    {ok, get_reveal_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_reveal_configuration_errors(), tuple()}.
get_reveal_configuration(Client)
  when is_map(Client) ->
    get_reveal_configuration(Client, #{}, #{}).

-spec get_reveal_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_reveal_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_reveal_configuration_errors(), tuple()}.
get_reveal_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reveal_configuration(Client, QueryMap, HeadersMap, []).

-spec get_reveal_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_reveal_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_reveal_configuration_errors(), tuple()}.
get_reveal_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reveal-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves occurrences of sensitive data reported by a finding.
-spec get_sensitive_data_occurrences(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sensitive_data_occurrences_response(), tuple()} |
    {error, any()} |
    {error, get_sensitive_data_occurrences_errors(), tuple()}.
get_sensitive_data_occurrences(Client, FindingId)
  when is_map(Client) ->
    get_sensitive_data_occurrences(Client, FindingId, #{}, #{}).

-spec get_sensitive_data_occurrences(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sensitive_data_occurrences_response(), tuple()} |
    {error, any()} |
    {error, get_sensitive_data_occurrences_errors(), tuple()}.
get_sensitive_data_occurrences(Client, FindingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sensitive_data_occurrences(Client, FindingId, QueryMap, HeadersMap, []).

-spec get_sensitive_data_occurrences(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sensitive_data_occurrences_response(), tuple()} |
    {error, any()} |
    {error, get_sensitive_data_occurrences_errors(), tuple()}.
get_sensitive_data_occurrences(Client, FindingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/findings/", aws_util:encode_uri(FindingId), "/reveal"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Checks whether occurrences of sensitive data can be retrieved for a
%% finding.
-spec get_sensitive_data_occurrences_availability(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sensitive_data_occurrences_availability_response(), tuple()} |
    {error, any()} |
    {error, get_sensitive_data_occurrences_availability_errors(), tuple()}.
get_sensitive_data_occurrences_availability(Client, FindingId)
  when is_map(Client) ->
    get_sensitive_data_occurrences_availability(Client, FindingId, #{}, #{}).

-spec get_sensitive_data_occurrences_availability(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sensitive_data_occurrences_availability_response(), tuple()} |
    {error, any()} |
    {error, get_sensitive_data_occurrences_availability_errors(), tuple()}.
get_sensitive_data_occurrences_availability(Client, FindingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sensitive_data_occurrences_availability(Client, FindingId, QueryMap, HeadersMap, []).

-spec get_sensitive_data_occurrences_availability(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sensitive_data_occurrences_availability_response(), tuple()} |
    {error, any()} |
    {error, get_sensitive_data_occurrences_availability_errors(), tuple()}.
get_sensitive_data_occurrences_availability(Client, FindingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/findings/", aws_util:encode_uri(FindingId), "/reveal/availability"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the settings for the sensitivity inspection template for an
%% account.
-spec get_sensitivity_inspection_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sensitivity_inspection_template_response(), tuple()} |
    {error, any()} |
    {error, get_sensitivity_inspection_template_errors(), tuple()}.
get_sensitivity_inspection_template(Client, Id)
  when is_map(Client) ->
    get_sensitivity_inspection_template(Client, Id, #{}, #{}).

-spec get_sensitivity_inspection_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sensitivity_inspection_template_response(), tuple()} |
    {error, any()} |
    {error, get_sensitivity_inspection_template_errors(), tuple()}.
get_sensitivity_inspection_template(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sensitivity_inspection_template(Client, Id, QueryMap, HeadersMap, []).

-spec get_sensitivity_inspection_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sensitivity_inspection_template_response(), tuple()} |
    {error, any()} |
    {error, get_sensitivity_inspection_template_errors(), tuple()}.
get_sensitivity_inspection_template(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/sensitivity-inspections/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) quotas and aggregated usage data for one or more
%% accounts.
-spec get_usage_statistics(aws_client:aws_client(), get_usage_statistics_request()) ->
    {ok, get_usage_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_usage_statistics_errors(), tuple()}.
get_usage_statistics(Client, Input) ->
    get_usage_statistics(Client, Input, []).

-spec get_usage_statistics(aws_client:aws_client(), get_usage_statistics_request(), proplists:proplist()) ->
    {ok, get_usage_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_usage_statistics_errors(), tuple()}.
get_usage_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/usage/statistics"],
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

%% @doc Retrieves (queries) aggregated usage data for an account.
-spec get_usage_totals(aws_client:aws_client()) ->
    {ok, get_usage_totals_response(), tuple()} |
    {error, any()} |
    {error, get_usage_totals_errors(), tuple()}.
get_usage_totals(Client)
  when is_map(Client) ->
    get_usage_totals(Client, #{}, #{}).

-spec get_usage_totals(aws_client:aws_client(), map(), map()) ->
    {ok, get_usage_totals_response(), tuple()} |
    {error, any()} |
    {error, get_usage_totals_errors(), tuple()}.
get_usage_totals(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage_totals(Client, QueryMap, HeadersMap, []).

-spec get_usage_totals(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_usage_totals_response(), tuple()} |
    {error, any()} |
    {error, get_usage_totals_errors(), tuple()}.
get_usage_totals(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/usage"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"timeRange">>, maps:get(<<"timeRange">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a subset of information about all the allow lists for an
%% account.
-spec list_allow_lists(aws_client:aws_client()) ->
    {ok, list_allow_lists_response(), tuple()} |
    {error, any()} |
    {error, list_allow_lists_errors(), tuple()}.
list_allow_lists(Client)
  when is_map(Client) ->
    list_allow_lists(Client, #{}, #{}).

-spec list_allow_lists(aws_client:aws_client(), map(), map()) ->
    {ok, list_allow_lists_response(), tuple()} |
    {error, any()} |
    {error, list_allow_lists_errors(), tuple()}.
list_allow_lists(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_allow_lists(Client, QueryMap, HeadersMap, []).

-spec list_allow_lists(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_allow_lists_response(), tuple()} |
    {error, any()} |
    {error, list_allow_lists_errors(), tuple()}.
list_allow_lists(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/allow-lists"],
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

%% @doc Retrieves the status of automated sensitive data discovery for one or
%% more accounts.
-spec list_automated_discovery_accounts(aws_client:aws_client()) ->
    {ok, list_automated_discovery_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_automated_discovery_accounts_errors(), tuple()}.
list_automated_discovery_accounts(Client)
  when is_map(Client) ->
    list_automated_discovery_accounts(Client, #{}, #{}).

-spec list_automated_discovery_accounts(aws_client:aws_client(), map(), map()) ->
    {ok, list_automated_discovery_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_automated_discovery_accounts_errors(), tuple()}.
list_automated_discovery_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_automated_discovery_accounts(Client, QueryMap, HeadersMap, []).

-spec list_automated_discovery_accounts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_automated_discovery_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_automated_discovery_accounts_errors(), tuple()}.
list_automated_discovery_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/automated-discovery/accounts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accountIds">>, maps:get(<<"accountIds">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a subset of information about one or more classification
%% jobs.
-spec list_classification_jobs(aws_client:aws_client(), list_classification_jobs_request()) ->
    {ok, list_classification_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_classification_jobs_errors(), tuple()}.
list_classification_jobs(Client, Input) ->
    list_classification_jobs(Client, Input, []).

-spec list_classification_jobs(aws_client:aws_client(), list_classification_jobs_request(), proplists:proplist()) ->
    {ok, list_classification_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_classification_jobs_errors(), tuple()}.
list_classification_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/jobs/list"],
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

%% @doc Retrieves a subset of information about the classification scope for
%% an account.
-spec list_classification_scopes(aws_client:aws_client()) ->
    {ok, list_classification_scopes_response(), tuple()} |
    {error, any()} |
    {error, list_classification_scopes_errors(), tuple()}.
list_classification_scopes(Client)
  when is_map(Client) ->
    list_classification_scopes(Client, #{}, #{}).

-spec list_classification_scopes(aws_client:aws_client(), map(), map()) ->
    {ok, list_classification_scopes_response(), tuple()} |
    {error, any()} |
    {error, list_classification_scopes_errors(), tuple()}.
list_classification_scopes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_classification_scopes(Client, QueryMap, HeadersMap, []).

-spec list_classification_scopes(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_classification_scopes_response(), tuple()} |
    {error, any()} |
    {error, list_classification_scopes_errors(), tuple()}.
list_classification_scopes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/classification-scopes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a subset of information about the custom data identifiers
%% for an account.
-spec list_custom_data_identifiers(aws_client:aws_client(), list_custom_data_identifiers_request()) ->
    {ok, list_custom_data_identifiers_response(), tuple()} |
    {error, any()} |
    {error, list_custom_data_identifiers_errors(), tuple()}.
list_custom_data_identifiers(Client, Input) ->
    list_custom_data_identifiers(Client, Input, []).

-spec list_custom_data_identifiers(aws_client:aws_client(), list_custom_data_identifiers_request(), proplists:proplist()) ->
    {ok, list_custom_data_identifiers_response(), tuple()} |
    {error, any()} |
    {error, list_custom_data_identifiers_errors(), tuple()}.
list_custom_data_identifiers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/custom-data-identifiers/list"],
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

%% @doc Retrieves a subset of information about one or more findings.
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
    Path = ["/findings"],
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

%% @doc Retrieves a subset of information about all the findings filters for
%% an account.
-spec list_findings_filters(aws_client:aws_client()) ->
    {ok, list_findings_filters_response(), tuple()} |
    {error, any()} |
    {error, list_findings_filters_errors(), tuple()}.
list_findings_filters(Client)
  when is_map(Client) ->
    list_findings_filters(Client, #{}, #{}).

-spec list_findings_filters(aws_client:aws_client(), map(), map()) ->
    {ok, list_findings_filters_response(), tuple()} |
    {error, any()} |
    {error, list_findings_filters_errors(), tuple()}.
list_findings_filters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_findings_filters(Client, QueryMap, HeadersMap, []).

-spec list_findings_filters(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_findings_filters_response(), tuple()} |
    {error, any()} |
    {error, list_findings_filters_errors(), tuple()}.
list_findings_filters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/findingsfilters"],
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

%% @doc Retrieves information about Amazon Macie membership invitations that
%% were received by an account.
-spec list_invitations(aws_client:aws_client()) ->
    {ok, list_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client)
  when is_map(Client) ->
    list_invitations(Client, #{}, #{}).

-spec list_invitations(aws_client:aws_client(), map(), map()) ->
    {ok, list_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_invitations(Client, QueryMap, HeadersMap, []).

-spec list_invitations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/invitations"],
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

%% @doc Retrieves information about all the managed data identifiers that
%% Amazon Macie currently provides.
-spec list_managed_data_identifiers(aws_client:aws_client(), list_managed_data_identifiers_request()) ->
    {ok, list_managed_data_identifiers_response(), tuple()} |
    {error, any()}.
list_managed_data_identifiers(Client, Input) ->
    list_managed_data_identifiers(Client, Input, []).

-spec list_managed_data_identifiers(aws_client:aws_client(), list_managed_data_identifiers_request(), proplists:proplist()) ->
    {ok, list_managed_data_identifiers_response(), tuple()} |
    {error, any()}.
list_managed_data_identifiers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/managed-data-identifiers/list"],
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

%% @doc Retrieves information about the accounts that are associated with an
%% Amazon Macie administrator account.
-spec list_members(aws_client:aws_client()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client)
  when is_map(Client) ->
    list_members(Client, #{}, #{}).

-spec list_members(aws_client:aws_client(), map(), map()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_members(Client, QueryMap, HeadersMap, []).

-spec list_members(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/members"],
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
        {<<"onlyAssociated">>, maps:get(<<"onlyAssociated">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the delegated Amazon Macie administrator
%% account for an organization in Organizations.
-spec list_organization_admin_accounts(aws_client:aws_client()) ->
    {ok, list_organization_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_admin_accounts_errors(), tuple()}.
list_organization_admin_accounts(Client)
  when is_map(Client) ->
    list_organization_admin_accounts(Client, #{}, #{}).

-spec list_organization_admin_accounts(aws_client:aws_client(), map(), map()) ->
    {ok, list_organization_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_admin_accounts_errors(), tuple()}.
list_organization_admin_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_organization_admin_accounts(Client, QueryMap, HeadersMap, []).

-spec list_organization_admin_accounts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_organization_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_admin_accounts_errors(), tuple()}.
list_organization_admin_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/admin"],
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

%% @doc Retrieves information about objects that Amazon Macie selected from
%% an S3 bucket for automated sensitive data discovery.
-spec list_resource_profile_artifacts(aws_client:aws_client(), binary() | list()) ->
    {ok, list_resource_profile_artifacts_response(), tuple()} |
    {error, any()} |
    {error, list_resource_profile_artifacts_errors(), tuple()}.
list_resource_profile_artifacts(Client, ResourceArn)
  when is_map(Client) ->
    list_resource_profile_artifacts(Client, ResourceArn, #{}, #{}).

-spec list_resource_profile_artifacts(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_resource_profile_artifacts_response(), tuple()} |
    {error, any()} |
    {error, list_resource_profile_artifacts_errors(), tuple()}.
list_resource_profile_artifacts(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_profile_artifacts(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_resource_profile_artifacts(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_profile_artifacts_response(), tuple()} |
    {error, any()} |
    {error, list_resource_profile_artifacts_errors(), tuple()}.
list_resource_profile_artifacts(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resource-profiles/artifacts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the types and amount of sensitive data
%% that Amazon Macie found in an S3 bucket.
-spec list_resource_profile_detections(aws_client:aws_client(), binary() | list()) ->
    {ok, list_resource_profile_detections_response(), tuple()} |
    {error, any()} |
    {error, list_resource_profile_detections_errors(), tuple()}.
list_resource_profile_detections(Client, ResourceArn)
  when is_map(Client) ->
    list_resource_profile_detections(Client, ResourceArn, #{}, #{}).

-spec list_resource_profile_detections(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_resource_profile_detections_response(), tuple()} |
    {error, any()} |
    {error, list_resource_profile_detections_errors(), tuple()}.
list_resource_profile_detections(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_profile_detections(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_resource_profile_detections(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_profile_detections_response(), tuple()} |
    {error, any()} |
    {error, list_resource_profile_detections_errors(), tuple()}.
list_resource_profile_detections(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resource-profiles/detections"],
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
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a subset of information about the sensitivity inspection
%% template for an account.
-spec list_sensitivity_inspection_templates(aws_client:aws_client()) ->
    {ok, list_sensitivity_inspection_templates_response(), tuple()} |
    {error, any()} |
    {error, list_sensitivity_inspection_templates_errors(), tuple()}.
list_sensitivity_inspection_templates(Client)
  when is_map(Client) ->
    list_sensitivity_inspection_templates(Client, #{}, #{}).

-spec list_sensitivity_inspection_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_sensitivity_inspection_templates_response(), tuple()} |
    {error, any()} |
    {error, list_sensitivity_inspection_templates_errors(), tuple()}.
list_sensitivity_inspection_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sensitivity_inspection_templates(Client, QueryMap, HeadersMap, []).

-spec list_sensitivity_inspection_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sensitivity_inspection_templates_response(), tuple()} |
    {error, any()} |
    {error, list_sensitivity_inspection_templates_errors(), tuple()}.
list_sensitivity_inspection_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/sensitivity-inspections"],
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

%% @doc Retrieves the tags (keys and values) that are associated with an
%% Amazon Macie resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
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

%% @doc Adds or updates the configuration settings for storing data
%% classification results.
-spec put_classification_export_configuration(aws_client:aws_client(), put_classification_export_configuration_request()) ->
    {ok, put_classification_export_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_classification_export_configuration_errors(), tuple()}.
put_classification_export_configuration(Client, Input) ->
    put_classification_export_configuration(Client, Input, []).

-spec put_classification_export_configuration(aws_client:aws_client(), put_classification_export_configuration_request(), proplists:proplist()) ->
    {ok, put_classification_export_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_classification_export_configuration_errors(), tuple()}.
put_classification_export_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/classification-export-configuration"],
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

%% @doc Updates the configuration settings for publishing findings to
%% Security Hub.
-spec put_findings_publication_configuration(aws_client:aws_client(), put_findings_publication_configuration_request()) ->
    {ok, put_findings_publication_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_findings_publication_configuration_errors(), tuple()}.
put_findings_publication_configuration(Client, Input) ->
    put_findings_publication_configuration(Client, Input, []).

-spec put_findings_publication_configuration(aws_client:aws_client(), put_findings_publication_configuration_request(), proplists:proplist()) ->
    {ok, put_findings_publication_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_findings_publication_configuration_errors(), tuple()}.
put_findings_publication_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/findings-publication-configuration"],
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

%% @doc Retrieves (queries) statistical data and other information about
%% Amazon Web Services resources that Amazon Macie monitors and analyzes for
%% an account.
-spec search_resources(aws_client:aws_client(), search_resources_request()) ->
    {ok, search_resources_response(), tuple()} |
    {error, any()} |
    {error, search_resources_errors(), tuple()}.
search_resources(Client, Input) ->
    search_resources(Client, Input, []).

-spec search_resources(aws_client:aws_client(), search_resources_request(), proplists:proplist()) ->
    {ok, search_resources_response(), tuple()} |
    {error, any()} |
    {error, search_resources_errors(), tuple()}.
search_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datasources/search-resources"],
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

%% @doc Adds or updates one or more tags (keys and values) that are
%% associated with an Amazon Macie resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()}.
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

%% @doc Tests criteria for a custom data identifier.
-spec test_custom_data_identifier(aws_client:aws_client(), test_custom_data_identifier_request()) ->
    {ok, test_custom_data_identifier_response(), tuple()} |
    {error, any()} |
    {error, test_custom_data_identifier_errors(), tuple()}.
test_custom_data_identifier(Client, Input) ->
    test_custom_data_identifier(Client, Input, []).

-spec test_custom_data_identifier(aws_client:aws_client(), test_custom_data_identifier_request(), proplists:proplist()) ->
    {ok, test_custom_data_identifier_response(), tuple()} |
    {error, any()} |
    {error, test_custom_data_identifier_errors(), tuple()}.
test_custom_data_identifier(Client, Input0, Options0) ->
    Method = post,
    Path = ["/custom-data-identifiers/test"],
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

%% @doc Removes one or more tags (keys and values) from an Amazon Macie
%% resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()}.
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for an allow list.
-spec update_allow_list(aws_client:aws_client(), binary() | list(), update_allow_list_request()) ->
    {ok, update_allow_list_response(), tuple()} |
    {error, any()} |
    {error, update_allow_list_errors(), tuple()}.
update_allow_list(Client, Id, Input) ->
    update_allow_list(Client, Id, Input, []).

-spec update_allow_list(aws_client:aws_client(), binary() | list(), update_allow_list_request(), proplists:proplist()) ->
    {ok, update_allow_list_response(), tuple()} |
    {error, any()} |
    {error, update_allow_list_errors(), tuple()}.
update_allow_list(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/allow-lists/", aws_util:encode_uri(Id), ""],
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

%% @doc Changes the configuration settings and status of automated sensitive
%% data discovery for an organization or standalone account.
-spec update_automated_discovery_configuration(aws_client:aws_client(), update_automated_discovery_configuration_request()) ->
    {ok, update_automated_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_automated_discovery_configuration_errors(), tuple()}.
update_automated_discovery_configuration(Client, Input) ->
    update_automated_discovery_configuration(Client, Input, []).

-spec update_automated_discovery_configuration(aws_client:aws_client(), update_automated_discovery_configuration_request(), proplists:proplist()) ->
    {ok, update_automated_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_automated_discovery_configuration_errors(), tuple()}.
update_automated_discovery_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/automated-discovery/configuration"],
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

%% @doc Changes the status of a classification job.
-spec update_classification_job(aws_client:aws_client(), binary() | list(), update_classification_job_request()) ->
    {ok, update_classification_job_response(), tuple()} |
    {error, any()} |
    {error, update_classification_job_errors(), tuple()}.
update_classification_job(Client, JobId, Input) ->
    update_classification_job(Client, JobId, Input, []).

-spec update_classification_job(aws_client:aws_client(), binary() | list(), update_classification_job_request(), proplists:proplist()) ->
    {ok, update_classification_job_response(), tuple()} |
    {error, any()} |
    {error, update_classification_job_errors(), tuple()}.
update_classification_job(Client, JobId, Input0, Options0) ->
    Method = patch,
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
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

%% @doc Updates the classification scope settings for an account.
-spec update_classification_scope(aws_client:aws_client(), binary() | list(), update_classification_scope_request()) ->
    {ok, update_classification_scope_response(), tuple()} |
    {error, any()} |
    {error, update_classification_scope_errors(), tuple()}.
update_classification_scope(Client, Id, Input) ->
    update_classification_scope(Client, Id, Input, []).

-spec update_classification_scope(aws_client:aws_client(), binary() | list(), update_classification_scope_request(), proplists:proplist()) ->
    {ok, update_classification_scope_response(), tuple()} |
    {error, any()} |
    {error, update_classification_scope_errors(), tuple()}.
update_classification_scope(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/classification-scopes/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates the criteria and other settings for a findings filter.
-spec update_findings_filter(aws_client:aws_client(), binary() | list(), update_findings_filter_request()) ->
    {ok, update_findings_filter_response(), tuple()} |
    {error, any()} |
    {error, update_findings_filter_errors(), tuple()}.
update_findings_filter(Client, Id, Input) ->
    update_findings_filter(Client, Id, Input, []).

-spec update_findings_filter(aws_client:aws_client(), binary() | list(), update_findings_filter_request(), proplists:proplist()) ->
    {ok, update_findings_filter_response(), tuple()} |
    {error, any()} |
    {error, update_findings_filter_errors(), tuple()}.
update_findings_filter(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/findingsfilters/", aws_util:encode_uri(Id), ""],
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

%% @doc Suspends or re-enables Amazon Macie, or updates the configuration
%% settings for a Macie account.
-spec update_macie_session(aws_client:aws_client(), update_macie_session_request()) ->
    {ok, update_macie_session_response(), tuple()} |
    {error, any()} |
    {error, update_macie_session_errors(), tuple()}.
update_macie_session(Client, Input) ->
    update_macie_session(Client, Input, []).

-spec update_macie_session(aws_client:aws_client(), update_macie_session_request(), proplists:proplist()) ->
    {ok, update_macie_session_response(), tuple()} |
    {error, any()} |
    {error, update_macie_session_errors(), tuple()}.
update_macie_session(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/macie"],
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

%% @doc Enables an Amazon Macie administrator to suspend or re-enable Macie
%% for a member account.
-spec update_member_session(aws_client:aws_client(), binary() | list(), update_member_session_request()) ->
    {ok, update_member_session_response(), tuple()} |
    {error, any()} |
    {error, update_member_session_errors(), tuple()}.
update_member_session(Client, Id, Input) ->
    update_member_session(Client, Id, Input, []).

-spec update_member_session(aws_client:aws_client(), binary() | list(), update_member_session_request(), proplists:proplist()) ->
    {ok, update_member_session_response(), tuple()} |
    {error, any()} |
    {error, update_member_session_errors(), tuple()}.
update_member_session(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/macie/members/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates the Amazon Macie configuration settings for an organization
%% in Organizations.
-spec update_organization_configuration(aws_client:aws_client(), update_organization_configuration_request()) ->
    {ok, update_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_organization_configuration_errors(), tuple()}.
update_organization_configuration(Client, Input) ->
    update_organization_configuration(Client, Input, []).

-spec update_organization_configuration(aws_client:aws_client(), update_organization_configuration_request(), proplists:proplist()) ->
    {ok, update_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_organization_configuration_errors(), tuple()}.
update_organization_configuration(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/admin/configuration"],
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

%% @doc Updates the sensitivity score for an S3 bucket.
-spec update_resource_profile(aws_client:aws_client(), update_resource_profile_request()) ->
    {ok, update_resource_profile_response(), tuple()} |
    {error, any()} |
    {error, update_resource_profile_errors(), tuple()}.
update_resource_profile(Client, Input) ->
    update_resource_profile(Client, Input, []).

-spec update_resource_profile(aws_client:aws_client(), update_resource_profile_request(), proplists:proplist()) ->
    {ok, update_resource_profile_response(), tuple()} |
    {error, any()} |
    {error, update_resource_profile_errors(), tuple()}.
update_resource_profile(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/resource-profiles"],
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
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the sensitivity scoring settings for an S3 bucket.
-spec update_resource_profile_detections(aws_client:aws_client(), update_resource_profile_detections_request()) ->
    {ok, update_resource_profile_detections_response(), tuple()} |
    {error, any()} |
    {error, update_resource_profile_detections_errors(), tuple()}.
update_resource_profile_detections(Client, Input) ->
    update_resource_profile_detections(Client, Input, []).

-spec update_resource_profile_detections(aws_client:aws_client(), update_resource_profile_detections_request(), proplists:proplist()) ->
    {ok, update_resource_profile_detections_response(), tuple()} |
    {error, any()} |
    {error, update_resource_profile_detections_errors(), tuple()}.
update_resource_profile_detections(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/resource-profiles/detections"],
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
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status and configuration settings for retrieving
%% occurrences of sensitive data reported by findings.
-spec update_reveal_configuration(aws_client:aws_client(), update_reveal_configuration_request()) ->
    {ok, update_reveal_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_reveal_configuration_errors(), tuple()}.
update_reveal_configuration(Client, Input) ->
    update_reveal_configuration(Client, Input, []).

-spec update_reveal_configuration(aws_client:aws_client(), update_reveal_configuration_request(), proplists:proplist()) ->
    {ok, update_reveal_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_reveal_configuration_errors(), tuple()}.
update_reveal_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/reveal-configuration"],
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

%% @doc Updates the settings for the sensitivity inspection template for an
%% account.
-spec update_sensitivity_inspection_template(aws_client:aws_client(), binary() | list(), update_sensitivity_inspection_template_request()) ->
    {ok, update_sensitivity_inspection_template_response(), tuple()} |
    {error, any()} |
    {error, update_sensitivity_inspection_template_errors(), tuple()}.
update_sensitivity_inspection_template(Client, Id, Input) ->
    update_sensitivity_inspection_template(Client, Id, Input, []).

-spec update_sensitivity_inspection_template(aws_client:aws_client(), binary() | list(), update_sensitivity_inspection_template_request(), proplists:proplist()) ->
    {ok, update_sensitivity_inspection_template_response(), tuple()} |
    {error, any()} |
    {error, update_sensitivity_inspection_template_errors(), tuple()}.
update_sensitivity_inspection_template(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/templates/sensitivity-inspections/", aws_util:encode_uri(Id), ""],
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
    Client1 = Client#{service => <<"macie2">>},
    Host = build_host(<<"macie2">>, Client1),
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
