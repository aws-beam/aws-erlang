%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Backup
%%
%% Backup is a unified backup service designed to protect Amazon Web Services
%% services and their associated data.
%%
%% Backup simplifies the creation, migration,
%% restoration, and deletion of backups, while also providing reporting and
%% auditing.
-module(aws_backup).

-export([associate_backup_vault_mpa_approval_team/3,
         associate_backup_vault_mpa_approval_team/4,
         cancel_legal_hold/3,
         cancel_legal_hold/4,
         create_backup_plan/2,
         create_backup_plan/3,
         create_backup_selection/3,
         create_backup_selection/4,
         create_backup_vault/3,
         create_backup_vault/4,
         create_framework/2,
         create_framework/3,
         create_legal_hold/2,
         create_legal_hold/3,
         create_logically_air_gapped_backup_vault/3,
         create_logically_air_gapped_backup_vault/4,
         create_report_plan/2,
         create_report_plan/3,
         create_restore_access_backup_vault/2,
         create_restore_access_backup_vault/3,
         create_restore_testing_plan/2,
         create_restore_testing_plan/3,
         create_restore_testing_selection/3,
         create_restore_testing_selection/4,
         delete_backup_plan/3,
         delete_backup_plan/4,
         delete_backup_selection/4,
         delete_backup_selection/5,
         delete_backup_vault/3,
         delete_backup_vault/4,
         delete_backup_vault_access_policy/3,
         delete_backup_vault_access_policy/4,
         delete_backup_vault_lock_configuration/3,
         delete_backup_vault_lock_configuration/4,
         delete_backup_vault_notifications/3,
         delete_backup_vault_notifications/4,
         delete_framework/3,
         delete_framework/4,
         delete_recovery_point/4,
         delete_recovery_point/5,
         delete_report_plan/3,
         delete_report_plan/4,
         delete_restore_testing_plan/3,
         delete_restore_testing_plan/4,
         delete_restore_testing_selection/4,
         delete_restore_testing_selection/5,
         describe_backup_job/2,
         describe_backup_job/4,
         describe_backup_job/5,
         describe_backup_vault/2,
         describe_backup_vault/4,
         describe_backup_vault/5,
         describe_copy_job/2,
         describe_copy_job/4,
         describe_copy_job/5,
         describe_framework/2,
         describe_framework/4,
         describe_framework/5,
         describe_global_settings/1,
         describe_global_settings/3,
         describe_global_settings/4,
         describe_protected_resource/2,
         describe_protected_resource/4,
         describe_protected_resource/5,
         describe_recovery_point/3,
         describe_recovery_point/5,
         describe_recovery_point/6,
         describe_region_settings/1,
         describe_region_settings/3,
         describe_region_settings/4,
         describe_report_job/2,
         describe_report_job/4,
         describe_report_job/5,
         describe_report_plan/2,
         describe_report_plan/4,
         describe_report_plan/5,
         describe_restore_job/2,
         describe_restore_job/4,
         describe_restore_job/5,
         disassociate_backup_vault_mpa_approval_team/3,
         disassociate_backup_vault_mpa_approval_team/4,
         disassociate_recovery_point/4,
         disassociate_recovery_point/5,
         disassociate_recovery_point_from_parent/4,
         disassociate_recovery_point_from_parent/5,
         export_backup_plan_template/2,
         export_backup_plan_template/4,
         export_backup_plan_template/5,
         get_backup_plan/2,
         get_backup_plan/4,
         get_backup_plan/5,
         get_backup_plan_from_json/2,
         get_backup_plan_from_json/3,
         get_backup_plan_from_template/2,
         get_backup_plan_from_template/4,
         get_backup_plan_from_template/5,
         get_backup_selection/3,
         get_backup_selection/5,
         get_backup_selection/6,
         get_backup_vault_access_policy/2,
         get_backup_vault_access_policy/4,
         get_backup_vault_access_policy/5,
         get_backup_vault_notifications/2,
         get_backup_vault_notifications/4,
         get_backup_vault_notifications/5,
         get_legal_hold/2,
         get_legal_hold/4,
         get_legal_hold/5,
         get_recovery_point_index_details/3,
         get_recovery_point_index_details/5,
         get_recovery_point_index_details/6,
         get_recovery_point_restore_metadata/3,
         get_recovery_point_restore_metadata/5,
         get_recovery_point_restore_metadata/6,
         get_restore_job_metadata/2,
         get_restore_job_metadata/4,
         get_restore_job_metadata/5,
         get_restore_testing_inferred_metadata/3,
         get_restore_testing_inferred_metadata/5,
         get_restore_testing_inferred_metadata/6,
         get_restore_testing_plan/2,
         get_restore_testing_plan/4,
         get_restore_testing_plan/5,
         get_restore_testing_selection/3,
         get_restore_testing_selection/5,
         get_restore_testing_selection/6,
         get_supported_resource_types/1,
         get_supported_resource_types/3,
         get_supported_resource_types/4,
         list_backup_job_summaries/1,
         list_backup_job_summaries/3,
         list_backup_job_summaries/4,
         list_backup_jobs/1,
         list_backup_jobs/3,
         list_backup_jobs/4,
         list_backup_plan_templates/1,
         list_backup_plan_templates/3,
         list_backup_plan_templates/4,
         list_backup_plan_versions/2,
         list_backup_plan_versions/4,
         list_backup_plan_versions/5,
         list_backup_plans/1,
         list_backup_plans/3,
         list_backup_plans/4,
         list_backup_selections/2,
         list_backup_selections/4,
         list_backup_selections/5,
         list_backup_vaults/1,
         list_backup_vaults/3,
         list_backup_vaults/4,
         list_copy_job_summaries/1,
         list_copy_job_summaries/3,
         list_copy_job_summaries/4,
         list_copy_jobs/1,
         list_copy_jobs/3,
         list_copy_jobs/4,
         list_frameworks/1,
         list_frameworks/3,
         list_frameworks/4,
         list_indexed_recovery_points/1,
         list_indexed_recovery_points/3,
         list_indexed_recovery_points/4,
         list_legal_holds/1,
         list_legal_holds/3,
         list_legal_holds/4,
         list_protected_resources/1,
         list_protected_resources/3,
         list_protected_resources/4,
         list_protected_resources_by_backup_vault/2,
         list_protected_resources_by_backup_vault/4,
         list_protected_resources_by_backup_vault/5,
         list_recovery_points_by_backup_vault/2,
         list_recovery_points_by_backup_vault/4,
         list_recovery_points_by_backup_vault/5,
         list_recovery_points_by_legal_hold/2,
         list_recovery_points_by_legal_hold/4,
         list_recovery_points_by_legal_hold/5,
         list_recovery_points_by_resource/2,
         list_recovery_points_by_resource/4,
         list_recovery_points_by_resource/5,
         list_report_jobs/1,
         list_report_jobs/3,
         list_report_jobs/4,
         list_report_plans/1,
         list_report_plans/3,
         list_report_plans/4,
         list_restore_access_backup_vaults/2,
         list_restore_access_backup_vaults/4,
         list_restore_access_backup_vaults/5,
         list_restore_job_summaries/1,
         list_restore_job_summaries/3,
         list_restore_job_summaries/4,
         list_restore_jobs/1,
         list_restore_jobs/3,
         list_restore_jobs/4,
         list_restore_jobs_by_protected_resource/2,
         list_restore_jobs_by_protected_resource/4,
         list_restore_jobs_by_protected_resource/5,
         list_restore_testing_plans/1,
         list_restore_testing_plans/3,
         list_restore_testing_plans/4,
         list_restore_testing_selections/2,
         list_restore_testing_selections/4,
         list_restore_testing_selections/5,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         put_backup_vault_access_policy/3,
         put_backup_vault_access_policy/4,
         put_backup_vault_lock_configuration/3,
         put_backup_vault_lock_configuration/4,
         put_backup_vault_notifications/3,
         put_backup_vault_notifications/4,
         put_restore_validation_result/3,
         put_restore_validation_result/4,
         revoke_restore_access_backup_vault/4,
         revoke_restore_access_backup_vault/5,
         start_backup_job/2,
         start_backup_job/3,
         start_copy_job/2,
         start_copy_job/3,
         start_report_job/3,
         start_report_job/4,
         start_restore_job/2,
         start_restore_job/3,
         stop_backup_job/3,
         stop_backup_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_backup_plan/3,
         update_backup_plan/4,
         update_framework/3,
         update_framework/4,
         update_global_settings/2,
         update_global_settings/3,
         update_recovery_point_index_settings/4,
         update_recovery_point_index_settings/5,
         update_recovery_point_lifecycle/4,
         update_recovery_point_lifecycle/5,
         update_region_settings/2,
         update_region_settings/3,
         update_report_plan/3,
         update_report_plan/4,
         update_restore_testing_plan/3,
         update_restore_testing_plan/4,
         update_restore_testing_selection/4,
         update_restore_testing_selection/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_restore_testing_plans_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_restore_testing_plans_input() :: #{binary() => any()}.


%% Example:
%% report_job() :: #{
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ReportDestination">> => report_destination(),
%%   <<"ReportJobId">> => string(),
%%   <<"ReportPlanArn">> => string(),
%%   <<"ReportTemplate">> => string(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type report_job() :: #{binary() => any()}.


%% Example:
%% recovery_point_member() :: #{
%%   <<"BackupVaultName">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type recovery_point_member() :: #{binary() => any()}.


%% Example:
%% missing_parameter_value_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Context">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type missing_parameter_value_exception() :: #{binary() => any()}.


%% Example:
%% list_indexed_recovery_points_input() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"IndexStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"SourceResourceArn">> => string()
%% }
-type list_indexed_recovery_points_input() :: #{binary() => any()}.


%% Example:
%% delete_backup_plan_output() :: #{
%%   <<"BackupPlanArn">> => string(),
%%   <<"BackupPlanId">> => string(),
%%   <<"DeletionDate">> => non_neg_integer(),
%%   <<"VersionId">> => string()
%% }
-type delete_backup_plan_output() :: #{binary() => any()}.


%% Example:
%% backup_plan_input() :: #{
%%   <<"AdvancedBackupSettings">> => list(advanced_backup_setting()),
%%   <<"BackupPlanName">> => string(),
%%   <<"Rules">> => list(backup_rule_input())
%% }
-type backup_plan_input() :: #{binary() => any()}.


%% Example:
%% backup_plans_list_member() :: #{
%%   <<"AdvancedBackupSettings">> => list(advanced_backup_setting()),
%%   <<"BackupPlanArn">> => string(),
%%   <<"BackupPlanId">> => string(),
%%   <<"BackupPlanName">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"DeletionDate">> => non_neg_integer(),
%%   <<"LastExecutionDate">> => non_neg_integer(),
%%   <<"VersionId">> => string()
%% }
-type backup_plans_list_member() :: #{binary() => any()}.

%% Example:
%% get_restore_job_metadata_input() :: #{}
-type get_restore_job_metadata_input() :: #{}.

%% Example:
%% get_restore_testing_plan_input() :: #{}
-type get_restore_testing_plan_input() :: #{}.


%% Example:
%% describe_recovery_point_input() :: #{
%%   <<"BackupVaultAccountId">> => string()
%% }
-type describe_recovery_point_input() :: #{binary() => any()}.


%% Example:
%% list_backup_vaults_output() :: #{
%%   <<"BackupVaultList">> => list(backup_vault_list_member()),
%%   <<"NextToken">> => string()
%% }
-type list_backup_vaults_output() :: #{binary() => any()}.


%% Example:
%% update_recovery_point_lifecycle_input() :: #{
%%   <<"Lifecycle">> => lifecycle()
%% }
-type update_recovery_point_lifecycle_input() :: #{binary() => any()}.


%% Example:
%% recovery_point_creator() :: #{
%%   <<"BackupPlanArn">> => string(),
%%   <<"BackupPlanId">> => string(),
%%   <<"BackupPlanVersion">> => string(),
%%   <<"BackupRuleId">> => string()
%% }
-type recovery_point_creator() :: #{binary() => any()}.


%% Example:
%% start_backup_job_input() :: #{
%%   <<"BackupOptions">> => map(),
%%   <<"BackupVaultName">> := string(),
%%   <<"CompleteWindowMinutes">> => float(),
%%   <<"IamRoleArn">> := string(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"Index">> => list(any()),
%%   <<"Lifecycle">> => lifecycle(),
%%   <<"RecoveryPointTags">> => map(),
%%   <<"ResourceArn">> := string(),
%%   <<"StartWindowMinutes">> => float()
%% }
-type start_backup_job_input() :: #{binary() => any()}.


%% Example:
%% copy_job() :: #{
%%   <<"AccountId">> => string(),
%%   <<"BackupSizeInBytes">> => float(),
%%   <<"ChildJobsInState">> => map(),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CompositeMemberIdentifier">> => string(),
%%   <<"CopyJobId">> => string(),
%%   <<"CreatedBy">> => recovery_point_creator(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"DestinationBackupVaultArn">> => string(),
%%   <<"DestinationRecoveryPointArn">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"IsParent">> => boolean(),
%%   <<"MessageCategory">> => string(),
%%   <<"NumberOfChildJobs">> => float(),
%%   <<"ParentJobId">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"SourceBackupVaultArn">> => string(),
%%   <<"SourceRecoveryPointArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type copy_job() :: #{binary() => any()}.


%% Example:
%% list_protected_resources_by_backup_vault_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(protected_resource())
%% }
-type list_protected_resources_by_backup_vault_output() :: #{binary() => any()}.


%% Example:
%% create_report_plan_output() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ReportPlanArn">> => string(),
%%   <<"ReportPlanName">> => string()
%% }
-type create_report_plan_output() :: #{binary() => any()}.


%% Example:
%% create_restore_testing_selection_input() :: #{
%%   <<"CreatorRequestId">> => [string()],
%%   <<"RestoreTestingSelection">> := restore_testing_selection_for_create()
%% }
-type create_restore_testing_selection_input() :: #{binary() => any()}.


%% Example:
%% describe_region_settings_output() :: #{
%%   <<"ResourceTypeManagementPreference">> => map(),
%%   <<"ResourceTypeOptInPreference">> => map()
%% }
-type describe_region_settings_output() :: #{binary() => any()}.

%% Example:
%% delete_restore_testing_plan_input() :: #{}
-type delete_restore_testing_plan_input() :: #{}.


%% Example:
%% create_backup_plan_output() :: #{
%%   <<"AdvancedBackupSettings">> => list(advanced_backup_setting()),
%%   <<"BackupPlanArn">> => string(),
%%   <<"BackupPlanId">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"VersionId">> => string()
%% }
-type create_backup_plan_output() :: #{binary() => any()}.


%% Example:
%% start_restore_job_input() :: #{
%%   <<"CopySourceTagsToRestoredResource">> => boolean(),
%%   <<"IamRoleArn">> => string(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"Metadata">> := map(),
%%   <<"RecoveryPointArn">> := string(),
%%   <<"ResourceType">> => string()
%% }
-type start_restore_job_input() :: #{binary() => any()}.


%% Example:
%% backup_plan() :: #{
%%   <<"AdvancedBackupSettings">> => list(advanced_backup_setting()),
%%   <<"BackupPlanName">> => string(),
%%   <<"Rules">> => list(backup_rule())
%% }
-type backup_plan() :: #{binary() => any()}.


%% Example:
%% recovery_point_by_backup_vault() :: #{
%%   <<"BackupSizeInBytes">> => float(),
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"CalculatedLifecycle">> => calculated_lifecycle(),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CompositeMemberIdentifier">> => string(),
%%   <<"CreatedBy">> => recovery_point_creator(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"IndexStatus">> => list(any()),
%%   <<"IndexStatusMessage">> => string(),
%%   <<"InitiationDate">> => non_neg_integer(),
%%   <<"IsEncrypted">> => boolean(),
%%   <<"IsParent">> => boolean(),
%%   <<"LastRestoreTime">> => non_neg_integer(),
%%   <<"Lifecycle">> => lifecycle(),
%%   <<"ParentRecoveryPointArn">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"SourceBackupVaultArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"VaultType">> => list(any())
%% }
-type recovery_point_by_backup_vault() :: #{binary() => any()}.


%% Example:
%% restore_testing_selection_for_list() :: #{
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"IamRoleArn">> => [string()],
%%   <<"ProtectedResourceType">> => [string()],
%%   <<"RestoreTestingPlanName">> => [string()],
%%   <<"RestoreTestingSelectionName">> => [string()],
%%   <<"ValidationWindowHours">> => integer()
%% }
-type restore_testing_selection_for_list() :: #{binary() => any()}.


%% Example:
%% list_report_jobs_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReportJobs">> => list(report_job())
%% }
-type list_report_jobs_output() :: #{binary() => any()}.


%% Example:
%% get_backup_plan_input() :: #{
%%   <<"VersionId">> => string()
%% }
-type get_backup_plan_input() :: #{binary() => any()}.


%% Example:
%% start_report_job_output() :: #{
%%   <<"ReportJobId">> => string()
%% }
-type start_report_job_output() :: #{binary() => any()}.


%% Example:
%% list_backup_plan_templates_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_backup_plan_templates_input() :: #{binary() => any()}.


%% Example:
%% get_restore_job_metadata_output() :: #{
%%   <<"Metadata">> => map(),
%%   <<"RestoreJobId">> => string()
%% }
-type get_restore_job_metadata_output() :: #{binary() => any()}.


%% Example:
%% get_backup_plan_from_json_output() :: #{
%%   <<"BackupPlan">> => backup_plan()
%% }
-type get_backup_plan_from_json_output() :: #{binary() => any()}.


%% Example:
%% already_exists_exception() :: #{
%%   <<"Arn">> => string(),
%%   <<"Code">> => string(),
%%   <<"Context">> => string(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.


%% Example:
%% restore_testing_plan_for_list() :: #{
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"LastExecutionTime">> => [non_neg_integer()],
%%   <<"LastUpdateTime">> => [non_neg_integer()],
%%   <<"RestoreTestingPlanArn">> => [string()],
%%   <<"RestoreTestingPlanName">> => [string()],
%%   <<"ScheduleExpression">> => [string()],
%%   <<"ScheduleExpressionTimezone">> => [string()],
%%   <<"StartWindowHours">> => integer()
%% }
-type restore_testing_plan_for_list() :: #{binary() => any()}.


%% Example:
%% restore_testing_plan_for_update() :: #{
%%   <<"RecoveryPointSelection">> => restore_testing_recovery_point_selection(),
%%   <<"ScheduleExpression">> => [string()],
%%   <<"ScheduleExpressionTimezone">> => [string()],
%%   <<"StartWindowHours">> => integer()
%% }
-type restore_testing_plan_for_update() :: #{binary() => any()}.


%% Example:
%% report_plan() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeploymentStatus">> => string(),
%%   <<"LastAttemptedExecutionTime">> => non_neg_integer(),
%%   <<"LastSuccessfulExecutionTime">> => non_neg_integer(),
%%   <<"ReportDeliveryChannel">> => report_delivery_channel(),
%%   <<"ReportPlanArn">> => string(),
%%   <<"ReportPlanDescription">> => string(),
%%   <<"ReportPlanName">> => string(),
%%   <<"ReportSetting">> => report_setting()
%% }
-type report_plan() :: #{binary() => any()}.


%% Example:
%% report_destination() :: #{
%%   <<"S3BucketName">> => string(),
%%   <<"S3Keys">> => list(string())
%% }
-type report_destination() :: #{binary() => any()}.

%% Example:
%% describe_global_settings_input() :: #{}
-type describe_global_settings_input() :: #{}.

%% Example:
%% disassociate_recovery_point_input() :: #{}
-type disassociate_recovery_point_input() :: #{}.


%% Example:
%% protected_resource() :: #{
%%   <<"LastBackupTime">> => non_neg_integer(),
%%   <<"LastBackupVaultArn">> => string(),
%%   <<"LastRecoveryPointArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type protected_resource() :: #{binary() => any()}.

%% Example:
%% stop_backup_job_input() :: #{}
-type stop_backup_job_input() :: #{}.


%% Example:
%% create_backup_vault_input() :: #{
%%   <<"BackupVaultTags">> => map(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"EncryptionKeyArn">> => string()
%% }
-type create_backup_vault_input() :: #{binary() => any()}.


%% Example:
%% get_backup_plan_output() :: #{
%%   <<"AdvancedBackupSettings">> => list(advanced_backup_setting()),
%%   <<"BackupPlan">> => backup_plan(),
%%   <<"BackupPlanArn">> => string(),
%%   <<"BackupPlanId">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"DeletionDate">> => non_neg_integer(),
%%   <<"LastExecutionDate">> => non_neg_integer(),
%%   <<"VersionId">> => string()
%% }
-type get_backup_plan_output() :: #{binary() => any()}.

%% Example:
%% describe_framework_input() :: #{}
-type describe_framework_input() :: #{}.


%% Example:
%% list_backup_plans_output() :: #{
%%   <<"BackupPlansList">> => list(backup_plans_list_member()),
%%   <<"NextToken">> => string()
%% }
-type list_backup_plans_output() :: #{binary() => any()}.


%% Example:
%% list_backup_selections_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_backup_selections_input() :: #{binary() => any()}.


%% Example:
%% restore_job_summary() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Count">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Region">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any())
%% }
-type restore_job_summary() :: #{binary() => any()}.


%% Example:
%% create_backup_vault_output() :: #{
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"CreationDate">> => non_neg_integer()
%% }
-type create_backup_vault_output() :: #{binary() => any()}.


%% Example:
%% get_restore_testing_plan_output() :: #{
%%   <<"RestoreTestingPlan">> => restore_testing_plan_for_get()
%% }
-type get_restore_testing_plan_output() :: #{binary() => any()}.


%% Example:
%% condition_parameter() :: #{
%%   <<"ConditionKey">> => string(),
%%   <<"ConditionValue">> => string()
%% }
-type condition_parameter() :: #{binary() => any()}.


%% Example:
%% create_legal_hold_input() :: #{
%%   <<"Description">> := string(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"RecoveryPointSelection">> => recovery_point_selection(),
%%   <<"Tags">> => map(),
%%   <<"Title">> := string()
%% }
-type create_legal_hold_input() :: #{binary() => any()}.

%% Example:
%% delete_backup_selection_input() :: #{}
-type delete_backup_selection_input() :: #{}.


%% Example:
%% restore_jobs_list_member() :: #{
%%   <<"AccountId">> => string(),
%%   <<"BackupSizeInBytes">> => float(),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => restore_job_creator(),
%%   <<"CreatedResourceArn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"DeletionStatus">> => list(any()),
%%   <<"DeletionStatusMessage">> => string(),
%%   <<"ExpectedCompletionTimeMinutes">> => float(),
%%   <<"IamRoleArn">> => string(),
%%   <<"PercentDone">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"RecoveryPointCreationDate">> => non_neg_integer(),
%%   <<"ResourceType">> => string(),
%%   <<"RestoreJobId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"ValidationStatus">> => list(any()),
%%   <<"ValidationStatusMessage">> => string()
%% }
-type restore_jobs_list_member() :: #{binary() => any()}.


%% Example:
%% list_restore_testing_plans_output() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"RestoreTestingPlans">> => list(restore_testing_plan_for_list())
%% }
-type list_restore_testing_plans_output() :: #{binary() => any()}.


%% Example:
%% list_report_jobs_input() :: #{
%%   <<"ByCreationAfter">> => non_neg_integer(),
%%   <<"ByCreationBefore">> => non_neg_integer(),
%%   <<"ByReportPlanName">> => string(),
%%   <<"ByStatus">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_report_jobs_input() :: #{binary() => any()}.


%% Example:
%% update_recovery_point_index_settings_output() :: #{
%%   <<"BackupVaultName">> => string(),
%%   <<"Index">> => list(any()),
%%   <<"IndexStatus">> => list(any()),
%%   <<"RecoveryPointArn">> => string()
%% }
-type update_recovery_point_index_settings_output() :: #{binary() => any()}.


%% Example:
%% describe_backup_vault_output() :: #{
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"LatestMpaApprovalTeamUpdate">> => latest_mpa_approval_team_update(),
%%   <<"LockDate">> => non_neg_integer(),
%%   <<"Locked">> => boolean(),
%%   <<"MaxRetentionDays">> => float(),
%%   <<"MinRetentionDays">> => float(),
%%   <<"MpaApprovalTeamArn">> => string(),
%%   <<"MpaSessionArn">> => string(),
%%   <<"NumberOfRecoveryPoints">> => float(),
%%   <<"SourceBackupVaultArn">> => string(),
%%   <<"VaultState">> => list(any()),
%%   <<"VaultType">> => list(any())
%% }
-type describe_backup_vault_output() :: #{binary() => any()}.


%% Example:
%% list_restore_testing_selections_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_restore_testing_selections_input() :: #{binary() => any()}.


%% Example:
%% list_backup_job_summaries_input() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AggregationPeriod">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"MessageCategory">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"State">> => list(any())
%% }
-type list_backup_job_summaries_input() :: #{binary() => any()}.


%% Example:
%% put_backup_vault_notifications_input() :: #{
%%   <<"BackupVaultEvents">> := list(list(any())()),
%%   <<"SNSTopicArn">> := string()
%% }
-type put_backup_vault_notifications_input() :: #{binary() => any()}.


%% Example:
%% create_restore_access_backup_vault_output() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"RestoreAccessBackupVaultArn">> => string(),
%%   <<"RestoreAccessBackupVaultName">> => string(),
%%   <<"VaultState">> => list(any())
%% }
-type create_restore_access_backup_vault_output() :: #{binary() => any()}.

%% Example:
%% describe_protected_resource_input() :: #{}
-type describe_protected_resource_input() :: #{}.

%% Example:
%% cancel_legal_hold_output() :: #{}
-type cancel_legal_hold_output() :: #{}.


%% Example:
%% control_scope() :: #{
%%   <<"ComplianceResourceIds">> => list(string()),
%%   <<"ComplianceResourceTypes">> => list(string()),
%%   <<"Tags">> => map()
%% }
-type control_scope() :: #{binary() => any()}.


%% Example:
%% get_legal_hold_output() :: #{
%%   <<"CancelDescription">> => string(),
%%   <<"CancellationDate">> => non_neg_integer(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LegalHoldArn">> => string(),
%%   <<"LegalHoldId">> => string(),
%%   <<"RecoveryPointSelection">> => recovery_point_selection(),
%%   <<"RetainRecordUntil">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Title">> => string()
%% }
-type get_legal_hold_output() :: #{binary() => any()}.


%% Example:
%% disassociate_backup_vault_mpa_approval_team_input() :: #{
%%   <<"RequesterComment">> => string()
%% }
-type disassociate_backup_vault_mpa_approval_team_input() :: #{binary() => any()}.


%% Example:
%% framework_control() :: #{
%%   <<"ControlInputParameters">> => list(control_input_parameter()),
%%   <<"ControlName">> => string(),
%%   <<"ControlScope">> => control_scope()
%% }
-type framework_control() :: #{binary() => any()}.


%% Example:
%% list_backup_jobs_output() :: #{
%%   <<"BackupJobs">> => list(backup_job()),
%%   <<"NextToken">> => string()
%% }
-type list_backup_jobs_output() :: #{binary() => any()}.

%% Example:
%% get_backup_plan_from_template_input() :: #{}
-type get_backup_plan_from_template_input() :: #{}.


%% Example:
%% update_recovery_point_index_settings_input() :: #{
%%   <<"IamRoleArn">> => string(),
%%   <<"Index">> := list(any())
%% }
-type update_recovery_point_index_settings_input() :: #{binary() => any()}.


%% Example:
%% export_backup_plan_template_output() :: #{
%%   <<"BackupPlanTemplateJson">> => string()
%% }
-type export_backup_plan_template_output() :: #{binary() => any()}.


%% Example:
%% update_backup_plan_input() :: #{
%%   <<"BackupPlan">> := backup_plan_input()
%% }
-type update_backup_plan_input() :: #{binary() => any()}.


%% Example:
%% list_report_plans_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReportPlans">> => list(report_plan())
%% }
-type list_report_plans_output() :: #{binary() => any()}.


%% Example:
%% backup_selection() :: #{
%%   <<"Conditions">> => conditions(),
%%   <<"IamRoleArn">> => string(),
%%   <<"ListOfTags">> => list(condition()),
%%   <<"NotResources">> => list(string()),
%%   <<"Resources">> => list(string()),
%%   <<"SelectionName">> => string()
%% }
-type backup_selection() :: #{binary() => any()}.


%% Example:
%% update_region_settings_input() :: #{
%%   <<"ResourceTypeManagementPreference">> => map(),
%%   <<"ResourceTypeOptInPreference">> => map()
%% }
-type update_region_settings_input() :: #{binary() => any()}.


%% Example:
%% list_legal_holds_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_legal_holds_input() :: #{binary() => any()}.

%% Example:
%% get_recovery_point_index_details_input() :: #{}
-type get_recovery_point_index_details_input() :: #{}.


%% Example:
%% lifecycle() :: #{
%%   <<"DeleteAfterDays">> => float(),
%%   <<"MoveToColdStorageAfterDays">> => float(),
%%   <<"OptInToArchiveForSupportedResources">> => boolean()
%% }
-type lifecycle() :: #{binary() => any()}.


%% Example:
%% revoke_restore_access_backup_vault_input() :: #{
%%   <<"RequesterComment">> => string()
%% }
-type revoke_restore_access_backup_vault_input() :: #{binary() => any()}.


%% Example:
%% list_recovery_points_by_legal_hold_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_recovery_points_by_legal_hold_input() :: #{binary() => any()}.


%% Example:
%% create_backup_selection_output() :: #{
%%   <<"BackupPlanId">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"SelectionId">> => string()
%% }
-type create_backup_selection_output() :: #{binary() => any()}.

%% Example:
%% get_restore_testing_selection_input() :: #{}
-type get_restore_testing_selection_input() :: #{}.


%% Example:
%% protected_resource_conditions() :: #{
%%   <<"StringEquals">> => list(key_value()),
%%   <<"StringNotEquals">> => list(key_value())
%% }
-type protected_resource_conditions() :: #{binary() => any()}.


%% Example:
%% control_input_parameter() :: #{
%%   <<"ParameterName">> => string(),
%%   <<"ParameterValue">> => string()
%% }
-type control_input_parameter() :: #{binary() => any()}.


%% Example:
%% calculated_lifecycle() :: #{
%%   <<"DeleteAt">> => non_neg_integer(),
%%   <<"MoveToColdStorageAt">> => non_neg_integer()
%% }
-type calculated_lifecycle() :: #{binary() => any()}.


%% Example:
%% copy_action() :: #{
%%   <<"DestinationBackupVaultArn">> => string(),
%%   <<"Lifecycle">> => lifecycle()
%% }
-type copy_action() :: #{binary() => any()}.


%% Example:
%% update_framework_input() :: #{
%%   <<"FrameworkControls">> => list(framework_control()),
%%   <<"FrameworkDescription">> => string(),
%%   <<"IdempotencyToken">> => string()
%% }
-type update_framework_input() :: #{binary() => any()}.


%% Example:
%% latest_mpa_approval_team_update() :: #{
%%   <<"ExpiryDate">> => non_neg_integer(),
%%   <<"InitiationDate">> => non_neg_integer(),
%%   <<"MpaSessionArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type latest_mpa_approval_team_update() :: #{binary() => any()}.


%% Example:
%% get_restore_testing_inferred_metadata_input() :: #{
%%   <<"BackupVaultAccountId">> => [string()],
%%   <<"BackupVaultName">> := [string()],
%%   <<"RecoveryPointArn">> := [string()]
%% }
-type get_restore_testing_inferred_metadata_input() :: #{binary() => any()}.

%% Example:
%% get_backup_vault_access_policy_input() :: #{}
-type get_backup_vault_access_policy_input() :: #{}.


%% Example:
%% list_report_plans_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_report_plans_input() :: #{binary() => any()}.


%% Example:
%% create_backup_selection_input() :: #{
%%   <<"BackupSelection">> := backup_selection(),
%%   <<"CreatorRequestId">> => string()
%% }
-type create_backup_selection_input() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Context">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% put_backup_vault_access_policy_input() :: #{
%%   <<"Policy">> => string()
%% }
-type put_backup_vault_access_policy_input() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Context">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_restore_jobs_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RestoreJobs">> => list(restore_jobs_list_member())
%% }
-type list_restore_jobs_output() :: #{binary() => any()}.


%% Example:
%% start_restore_job_output() :: #{
%%   <<"RestoreJobId">> => string()
%% }
-type start_restore_job_output() :: #{binary() => any()}.


%% Example:
%% copy_job_summary() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Count">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MessageCategory">> => string(),
%%   <<"Region">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any())
%% }
-type copy_job_summary() :: #{binary() => any()}.


%% Example:
%% associate_backup_vault_mpa_approval_team_input() :: #{
%%   <<"MpaApprovalTeamArn">> := string(),
%%   <<"RequesterComment">> => string()
%% }
-type associate_backup_vault_mpa_approval_team_input() :: #{binary() => any()}.

%% Example:
%% delete_restore_testing_selection_input() :: #{}
-type delete_restore_testing_selection_input() :: #{}.


%% Example:
%% list_recovery_points_by_resource_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RecoveryPoints">> => list(recovery_point_by_resource())
%% }
-type list_recovery_points_by_resource_output() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Context">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% restore_access_backup_vault_list_member() :: #{
%%   <<"ApprovalDate">> => non_neg_integer(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"LatestRevokeRequest">> => latest_revoke_request(),
%%   <<"RestoreAccessBackupVaultArn">> => string(),
%%   <<"VaultState">> => list(any())
%% }
-type restore_access_backup_vault_list_member() :: #{binary() => any()}.


%% Example:
%% list_backup_selections_output() :: #{
%%   <<"BackupSelectionsList">> => list(backup_selections_list_member()),
%%   <<"NextToken">> => string()
%% }
-type list_backup_selections_output() :: #{binary() => any()}.


%% Example:
%% restore_testing_plan_for_get() :: #{
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"CreatorRequestId">> => [string()],
%%   <<"LastExecutionTime">> => [non_neg_integer()],
%%   <<"LastUpdateTime">> => [non_neg_integer()],
%%   <<"RecoveryPointSelection">> => restore_testing_recovery_point_selection(),
%%   <<"RestoreTestingPlanArn">> => [string()],
%%   <<"RestoreTestingPlanName">> => [string()],
%%   <<"ScheduleExpression">> => [string()],
%%   <<"ScheduleExpressionTimezone">> => [string()],
%%   <<"StartWindowHours">> => integer()
%% }
-type restore_testing_plan_for_get() :: #{binary() => any()}.


%% Example:
%% update_restore_testing_selection_output() :: #{
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"RestoreTestingPlanArn">> => [string()],
%%   <<"RestoreTestingPlanName">> => [string()],
%%   <<"RestoreTestingSelectionName">> => [string()],
%%   <<"UpdateTime">> => [non_neg_integer()]
%% }
-type update_restore_testing_selection_output() :: #{binary() => any()}.


%% Example:
%% describe_restore_job_output() :: #{
%%   <<"AccountId">> => string(),
%%   <<"BackupSizeInBytes">> => float(),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => restore_job_creator(),
%%   <<"CreatedResourceArn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"DeletionStatus">> => list(any()),
%%   <<"DeletionStatusMessage">> => string(),
%%   <<"ExpectedCompletionTimeMinutes">> => float(),
%%   <<"IamRoleArn">> => string(),
%%   <<"PercentDone">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"RecoveryPointCreationDate">> => non_neg_integer(),
%%   <<"ResourceType">> => string(),
%%   <<"RestoreJobId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"ValidationStatus">> => list(any()),
%%   <<"ValidationStatusMessage">> => string()
%% }
-type describe_restore_job_output() :: #{binary() => any()}.


%% Example:
%% restore_testing_selection_for_update() :: #{
%%   <<"IamRoleArn">> => [string()],
%%   <<"ProtectedResourceArns">> => list(string()),
%%   <<"ProtectedResourceConditions">> => protected_resource_conditions(),
%%   <<"RestoreMetadataOverrides">> => map(),
%%   <<"ValidationWindowHours">> => integer()
%% }
-type restore_testing_selection_for_update() :: #{binary() => any()}.


%% Example:
%% start_copy_job_output() :: #{
%%   <<"CopyJobId">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"IsParent">> => boolean()
%% }
-type start_copy_job_output() :: #{binary() => any()}.


%% Example:
%% list_restore_job_summaries_input() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AggregationPeriod">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"State">> => list(any())
%% }
-type list_restore_job_summaries_input() :: #{binary() => any()}.

%% Example:
%% disassociate_recovery_point_from_parent_input() :: #{}
-type disassociate_recovery_point_from_parent_input() :: #{}.


%% Example:
%% describe_backup_job_output() :: #{
%%   <<"AccountId">> => string(),
%%   <<"BackupJobId">> => string(),
%%   <<"BackupOptions">> => map(),
%%   <<"BackupSizeInBytes">> => float(),
%%   <<"BackupType">> => string(),
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"BytesTransferred">> => float(),
%%   <<"ChildJobsInState">> => map(),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => recovery_point_creator(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"ExpectedCompletionDate">> => non_neg_integer(),
%%   <<"IamRoleArn">> => string(),
%%   <<"InitiationDate">> => non_neg_integer(),
%%   <<"IsParent">> => boolean(),
%%   <<"MessageCategory">> => string(),
%%   <<"NumberOfChildJobs">> => float(),
%%   <<"ParentJobId">> => string(),
%%   <<"PercentDone">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"StartBy">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type describe_backup_job_output() :: #{binary() => any()}.


%% Example:
%% backup_selections_list_member() :: #{
%%   <<"BackupPlanId">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"SelectionId">> => string(),
%%   <<"SelectionName">> => string()
%% }
-type backup_selections_list_member() :: #{binary() => any()}.


%% Example:
%% create_framework_output() :: #{
%%   <<"FrameworkArn">> => string(),
%%   <<"FrameworkName">> => string()
%% }
-type create_framework_output() :: #{binary() => any()}.


%% Example:
%% list_copy_job_summaries_output() :: #{
%%   <<"AggregationPeriod">> => string(),
%%   <<"CopyJobSummaries">> => list(copy_job_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_copy_job_summaries_output() :: #{binary() => any()}.


%% Example:
%% describe_global_settings_output() :: #{
%%   <<"GlobalSettings">> => map(),
%%   <<"LastUpdateTime">> => non_neg_integer()
%% }
-type describe_global_settings_output() :: #{binary() => any()}.


%% Example:
%% get_supported_resource_types_output() :: #{
%%   <<"ResourceTypes">> => list(string())
%% }
-type get_supported_resource_types_output() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Context">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.


%% Example:
%% restore_testing_recovery_point_selection() :: #{
%%   <<"Algorithm">> => list(any()),
%%   <<"ExcludeVaults">> => list(string()),
%%   <<"IncludeVaults">> => list(string()),
%%   <<"RecoveryPointTypes">> => list(list(any())()),
%%   <<"SelectionWindowDays">> => integer()
%% }
-type restore_testing_recovery_point_selection() :: #{binary() => any()}.


%% Example:
%% dependency_failure_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Context">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type dependency_failure_exception() :: #{binary() => any()}.


%% Example:
%% create_restore_testing_selection_output() :: #{
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"RestoreTestingPlanArn">> => [string()],
%%   <<"RestoreTestingPlanName">> => [string()],
%%   <<"RestoreTestingSelectionName">> => [string()]
%% }
-type create_restore_testing_selection_output() :: #{binary() => any()}.


%% Example:
%% describe_report_job_output() :: #{
%%   <<"ReportJob">> => report_job()
%% }
-type describe_report_job_output() :: #{binary() => any()}.


%% Example:
%% get_restore_testing_inferred_metadata_output() :: #{
%%   <<"InferredMetadata">> => map()
%% }
-type get_restore_testing_inferred_metadata_output() :: #{binary() => any()}.


%% Example:
%% get_backup_vault_notifications_output() :: #{
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultEvents">> => list(list(any())()),
%%   <<"BackupVaultName">> => string(),
%%   <<"SNSTopicArn">> => string()
%% }
-type get_backup_vault_notifications_output() :: #{binary() => any()}.


%% Example:
%% advanced_backup_setting() :: #{
%%   <<"BackupOptions">> => map(),
%%   <<"ResourceType">> => string()
%% }
-type advanced_backup_setting() :: #{binary() => any()}.


%% Example:
%% recovery_point_selection() :: #{
%%   <<"DateRange">> => date_range(),
%%   <<"ResourceIdentifiers">> => list(string()),
%%   <<"VaultNames">> => list(string())
%% }
-type recovery_point_selection() :: #{binary() => any()}.


%% Example:
%% conditions() :: #{
%%   <<"StringEquals">> => list(condition_parameter()),
%%   <<"StringLike">> => list(condition_parameter()),
%%   <<"StringNotEquals">> => list(condition_parameter()),
%%   <<"StringNotLike">> => list(condition_parameter())
%% }
-type conditions() :: #{binary() => any()}.


%% Example:
%% update_restore_testing_plan_input() :: #{
%%   <<"RestoreTestingPlan">> := restore_testing_plan_for_update()
%% }
-type update_restore_testing_plan_input() :: #{binary() => any()}.

%% Example:
%% delete_backup_vault_input() :: #{}
-type delete_backup_vault_input() :: #{}.


%% Example:
%% get_backup_vault_access_policy_output() :: #{
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"Policy">> => string()
%% }
-type get_backup_vault_access_policy_output() :: #{binary() => any()}.


%% Example:
%% get_restore_testing_selection_output() :: #{
%%   <<"RestoreTestingSelection">> => restore_testing_selection_for_get()
%% }
-type get_restore_testing_selection_output() :: #{binary() => any()}.


%% Example:
%% list_indexed_recovery_points_output() :: #{
%%   <<"IndexedRecoveryPoints">> => list(indexed_recovery_point()),
%%   <<"NextToken">> => string()
%% }
-type list_indexed_recovery_points_output() :: #{binary() => any()}.


%% Example:
%% report_delivery_channel() :: #{
%%   <<"Formats">> => list(string()),
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyPrefix">> => string()
%% }
-type report_delivery_channel() :: #{binary() => any()}.


%% Example:
%% list_protected_resources_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(protected_resource())
%% }
-type list_protected_resources_output() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Context">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% delete_framework_input() :: #{}
-type delete_framework_input() :: #{}.

%% Example:
%% delete_backup_vault_notifications_input() :: #{}
-type delete_backup_vault_notifications_input() :: #{}.


%% Example:
%% condition() :: #{
%%   <<"ConditionKey">> => string(),
%%   <<"ConditionType">> => list(any()),
%%   <<"ConditionValue">> => string()
%% }
-type condition() :: #{binary() => any()}.


%% Example:
%% invalid_resource_state_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Context">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type invalid_resource_state_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% list_backup_plan_versions_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_backup_plan_versions_input() :: #{binary() => any()}.


%% Example:
%% indexed_recovery_point() :: #{
%%   <<"BackupCreationDate">> => non_neg_integer(),
%%   <<"BackupVaultArn">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"IndexCreationDate">> => non_neg_integer(),
%%   <<"IndexStatus">> => list(any()),
%%   <<"IndexStatusMessage">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"SourceResourceArn">> => string()
%% }
-type indexed_recovery_point() :: #{binary() => any()}.


%% Example:
%% list_restore_jobs_input() :: #{
%%   <<"ByAccountId">> => string(),
%%   <<"ByCompleteAfter">> => non_neg_integer(),
%%   <<"ByCompleteBefore">> => non_neg_integer(),
%%   <<"ByCreatedAfter">> => non_neg_integer(),
%%   <<"ByCreatedBefore">> => non_neg_integer(),
%%   <<"ByResourceType">> => string(),
%%   <<"ByRestoreTestingPlanArn">> => string(),
%%   <<"ByStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_restore_jobs_input() :: #{binary() => any()}.

%% Example:
%% get_backup_selection_input() :: #{}
-type get_backup_selection_input() :: #{}.


%% Example:
%% get_backup_selection_output() :: #{
%%   <<"BackupPlanId">> => string(),
%%   <<"BackupSelection">> => backup_selection(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"SelectionId">> => string()
%% }
-type get_backup_selection_output() :: #{binary() => any()}.


%% Example:
%% recovery_point_by_resource() :: #{
%%   <<"BackupSizeBytes">> => float(),
%%   <<"BackupVaultName">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"IndexStatus">> => list(any()),
%%   <<"IndexStatusMessage">> => string(),
%%   <<"IsParent">> => boolean(),
%%   <<"ParentRecoveryPointArn">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"VaultType">> => list(any())
%% }
-type recovery_point_by_resource() :: #{binary() => any()}.


%% Example:
%% get_recovery_point_index_details_output() :: #{
%%   <<"BackupVaultArn">> => string(),
%%   <<"IndexCompletionDate">> => non_neg_integer(),
%%   <<"IndexCreationDate">> => non_neg_integer(),
%%   <<"IndexDeletionDate">> => non_neg_integer(),
%%   <<"IndexStatus">> => list(any()),
%%   <<"IndexStatusMessage">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"SourceResourceArn">> => string(),
%%   <<"TotalItemsIndexed">> => float()
%% }
-type get_recovery_point_index_details_output() :: #{binary() => any()}.


%% Example:
%% report_setting() :: #{
%%   <<"Accounts">> => list(string()),
%%   <<"FrameworkArns">> => list(string()),
%%   <<"NumberOfFrameworks">> => integer(),
%%   <<"OrganizationUnits">> => list(string()),
%%   <<"Regions">> => list(string()),
%%   <<"ReportTemplate">> => string()
%% }
-type report_setting() :: #{binary() => any()}.


%% Example:
%% list_recovery_points_by_backup_vault_input() :: #{
%%   <<"BackupVaultAccountId">> => string(),
%%   <<"ByBackupPlanId">> => string(),
%%   <<"ByCreatedAfter">> => non_neg_integer(),
%%   <<"ByCreatedBefore">> => non_neg_integer(),
%%   <<"ByParentRecoveryPointArn">> => string(),
%%   <<"ByResourceArn">> => string(),
%%   <<"ByResourceType">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_recovery_points_by_backup_vault_input() :: #{binary() => any()}.


%% Example:
%% framework() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeploymentStatus">> => string(),
%%   <<"FrameworkArn">> => string(),
%%   <<"FrameworkDescription">> => string(),
%%   <<"FrameworkName">> => string(),
%%   <<"NumberOfControls">> => integer()
%% }
-type framework() :: #{binary() => any()}.


%% Example:
%% restore_testing_selection_for_create() :: #{
%%   <<"IamRoleArn">> => [string()],
%%   <<"ProtectedResourceArns">> => list(string()),
%%   <<"ProtectedResourceConditions">> => protected_resource_conditions(),
%%   <<"ProtectedResourceType">> => [string()],
%%   <<"RestoreMetadataOverrides">> => map(),
%%   <<"RestoreTestingSelectionName">> => [string()],
%%   <<"ValidationWindowHours">> => integer()
%% }
-type restore_testing_selection_for_create() :: #{binary() => any()}.


%% Example:
%% list_frameworks_output() :: #{
%%   <<"Frameworks">> => list(framework()),
%%   <<"NextToken">> => string()
%% }
-type list_frameworks_output() :: #{binary() => any()}.


%% Example:
%% backup_vault_list_member() :: #{
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"LockDate">> => non_neg_integer(),
%%   <<"Locked">> => boolean(),
%%   <<"MaxRetentionDays">> => float(),
%%   <<"MinRetentionDays">> => float(),
%%   <<"NumberOfRecoveryPoints">> => float(),
%%   <<"VaultState">> => list(any()),
%%   <<"VaultType">> => list(any())
%% }
-type backup_vault_list_member() :: #{binary() => any()}.

%% Example:
%% describe_copy_job_input() :: #{}
-type describe_copy_job_input() :: #{}.


%% Example:
%% list_copy_job_summaries_input() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AggregationPeriod">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"MessageCategory">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"State">> => list(any())
%% }
-type list_copy_job_summaries_input() :: #{binary() => any()}.


%% Example:
%% list_legal_holds_output() :: #{
%%   <<"LegalHolds">> => list(legal_hold()),
%%   <<"NextToken">> => string()
%% }
-type list_legal_holds_output() :: #{binary() => any()}.

%% Example:
%% delete_backup_vault_access_policy_input() :: #{}
-type delete_backup_vault_access_policy_input() :: #{}.


%% Example:
%% backup_rule() :: #{
%%   <<"CompletionWindowMinutes">> => float(),
%%   <<"CopyActions">> => list(copy_action()),
%%   <<"EnableContinuousBackup">> => boolean(),
%%   <<"IndexActions">> => list(index_action()),
%%   <<"Lifecycle">> => lifecycle(),
%%   <<"RecoveryPointTags">> => map(),
%%   <<"RuleId">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"ScheduleExpressionTimezone">> => string(),
%%   <<"StartWindowMinutes">> => float(),
%%   <<"TargetBackupVaultName">> => string()
%% }
-type backup_rule() :: #{binary() => any()}.


%% Example:
%% get_backup_plan_from_template_output() :: #{
%%   <<"BackupPlanDocument">> => backup_plan()
%% }
-type get_backup_plan_from_template_output() :: #{binary() => any()}.


%% Example:
%% update_report_plan_input() :: #{
%%   <<"IdempotencyToken">> => string(),
%%   <<"ReportDeliveryChannel">> => report_delivery_channel(),
%%   <<"ReportPlanDescription">> => string(),
%%   <<"ReportSetting">> => report_setting()
%% }
-type update_report_plan_input() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"TagKeyList">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% describe_report_plan_input() :: #{}
-type describe_report_plan_input() :: #{}.


%% Example:
%% list_recovery_points_by_resource_input() :: #{
%%   <<"ManagedByAWSBackupOnly">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_recovery_points_by_resource_input() :: #{binary() => any()}.


%% Example:
%% list_recovery_points_by_legal_hold_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RecoveryPoints">> => list(recovery_point_member())
%% }
-type list_recovery_points_by_legal_hold_output() :: #{binary() => any()}.


%% Example:
%% create_legal_hold_output() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LegalHoldArn">> => string(),
%%   <<"LegalHoldId">> => string(),
%%   <<"RecoveryPointSelection">> => recovery_point_selection(),
%%   <<"Status">> => list(any()),
%%   <<"Title">> => string()
%% }
-type create_legal_hold_output() :: #{binary() => any()}.


%% Example:
%% update_global_settings_input() :: #{
%%   <<"GlobalSettings">> => map()
%% }
-type update_global_settings_input() :: #{binary() => any()}.


%% Example:
%% list_copy_jobs_input() :: #{
%%   <<"ByAccountId">> => string(),
%%   <<"ByCompleteAfter">> => non_neg_integer(),
%%   <<"ByCompleteBefore">> => non_neg_integer(),
%%   <<"ByCreatedAfter">> => non_neg_integer(),
%%   <<"ByCreatedBefore">> => non_neg_integer(),
%%   <<"ByDestinationVaultArn">> => string(),
%%   <<"ByMessageCategory">> => string(),
%%   <<"ByParentJobId">> => string(),
%%   <<"ByResourceArn">> => string(),
%%   <<"ByResourceType">> => string(),
%%   <<"ByState">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_copy_jobs_input() :: #{binary() => any()}.


%% Example:
%% get_recovery_point_restore_metadata_input() :: #{
%%   <<"BackupVaultAccountId">> => string()
%% }
-type get_recovery_point_restore_metadata_input() :: #{binary() => any()}.


%% Example:
%% list_backup_jobs_input() :: #{
%%   <<"ByAccountId">> => string(),
%%   <<"ByBackupVaultName">> => string(),
%%   <<"ByCompleteAfter">> => non_neg_integer(),
%%   <<"ByCompleteBefore">> => non_neg_integer(),
%%   <<"ByCreatedAfter">> => non_neg_integer(),
%%   <<"ByCreatedBefore">> => non_neg_integer(),
%%   <<"ByMessageCategory">> => string(),
%%   <<"ByParentJobId">> => string(),
%%   <<"ByResourceArn">> => string(),
%%   <<"ByResourceType">> => string(),
%%   <<"ByState">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_backup_jobs_input() :: #{binary() => any()}.


%% Example:
%% start_copy_job_input() :: #{
%%   <<"DestinationBackupVaultArn">> := string(),
%%   <<"IamRoleArn">> := string(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"Lifecycle">> => lifecycle(),
%%   <<"RecoveryPointArn">> := string(),
%%   <<"SourceBackupVaultName">> := string()
%% }
-type start_copy_job_input() :: #{binary() => any()}.

%% Example:
%% delete_report_plan_input() :: #{}
-type delete_report_plan_input() :: #{}.


%% Example:
%% start_backup_job_output() :: #{
%%   <<"BackupJobId">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"IsParent">> => boolean(),
%%   <<"RecoveryPointArn">> => string()
%% }
-type start_backup_job_output() :: #{binary() => any()}.


%% Example:
%% list_restore_jobs_by_protected_resource_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RestoreJobs">> => list(restore_jobs_list_member())
%% }
-type list_restore_jobs_by_protected_resource_output() :: #{binary() => any()}.


%% Example:
%% list_restore_access_backup_vaults_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_restore_access_backup_vaults_input() :: #{binary() => any()}.

%% Example:
%% get_backup_vault_notifications_input() :: #{}
-type get_backup_vault_notifications_input() :: #{}.


%% Example:
%% create_framework_input() :: #{
%%   <<"FrameworkControls">> := list(framework_control()),
%%   <<"FrameworkDescription">> => string(),
%%   <<"FrameworkName">> := string(),
%%   <<"FrameworkTags">> => map(),
%%   <<"IdempotencyToken">> => string()
%% }
-type create_framework_input() :: #{binary() => any()}.


%% Example:
%% create_backup_plan_input() :: #{
%%   <<"BackupPlan">> := backup_plan_input(),
%%   <<"BackupPlanTags">> => map(),
%%   <<"CreatorRequestId">> => string()
%% }
-type create_backup_plan_input() :: #{binary() => any()}.


%% Example:
%% list_tags_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_tags_input() :: #{binary() => any()}.


%% Example:
%% describe_backup_vault_input() :: #{
%%   <<"BackupVaultAccountId">> => string()
%% }
-type describe_backup_vault_input() :: #{binary() => any()}.


%% Example:
%% list_copy_jobs_output() :: #{
%%   <<"CopyJobs">> => list(copy_job()),
%%   <<"NextToken">> => string()
%% }
-type list_copy_jobs_output() :: #{binary() => any()}.


%% Example:
%% list_backup_vaults_input() :: #{
%%   <<"ByShared">> => boolean(),
%%   <<"ByVaultType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_backup_vaults_input() :: #{binary() => any()}.


%% Example:
%% list_protected_resources_by_backup_vault_input() :: #{
%%   <<"BackupVaultAccountId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_protected_resources_by_backup_vault_input() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Context">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% backup_job_summary() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Count">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MessageCategory">> => string(),
%%   <<"Region">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any())
%% }
-type backup_job_summary() :: #{binary() => any()}.


%% Example:
%% describe_protected_resource_output() :: #{
%%   <<"LastBackupTime">> => non_neg_integer(),
%%   <<"LastBackupVaultArn">> => string(),
%%   <<"LastRecoveryPointArn">> => string(),
%%   <<"LatestRestoreExecutionTimeMinutes">> => float(),
%%   <<"LatestRestoreJobCreationDate">> => non_neg_integer(),
%%   <<"LatestRestoreRecoveryPointCreationDate">> => non_neg_integer(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type describe_protected_resource_output() :: #{binary() => any()}.


%% Example:
%% restore_job_creator() :: #{
%%   <<"RestoreTestingPlanArn">> => string()
%% }
-type restore_job_creator() :: #{binary() => any()}.


%% Example:
%% create_logically_air_gapped_backup_vault_output() :: #{
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"VaultState">> => list(any())
%% }
-type create_logically_air_gapped_backup_vault_output() :: #{binary() => any()}.


%% Example:
%% backup_rule_input() :: #{
%%   <<"CompletionWindowMinutes">> => float(),
%%   <<"CopyActions">> => list(copy_action()),
%%   <<"EnableContinuousBackup">> => boolean(),
%%   <<"IndexActions">> => list(index_action()),
%%   <<"Lifecycle">> => lifecycle(),
%%   <<"RecoveryPointTags">> => map(),
%%   <<"RuleName">> => string(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"ScheduleExpressionTimezone">> => string(),
%%   <<"StartWindowMinutes">> => float(),
%%   <<"TargetBackupVaultName">> => string()
%% }
-type backup_rule_input() :: #{binary() => any()}.


%% Example:
%% restore_testing_plan_for_create() :: #{
%%   <<"RecoveryPointSelection">> => restore_testing_recovery_point_selection(),
%%   <<"RestoreTestingPlanName">> => [string()],
%%   <<"ScheduleExpression">> => [string()],
%%   <<"ScheduleExpressionTimezone">> => [string()],
%%   <<"StartWindowHours">> => integer()
%% }
-type restore_testing_plan_for_create() :: #{binary() => any()}.


%% Example:
%% legal_hold() :: #{
%%   <<"CancellationDate">> => non_neg_integer(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LegalHoldArn">> => string(),
%%   <<"LegalHoldId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Title">> => string()
%% }
-type legal_hold() :: #{binary() => any()}.


%% Example:
%% list_backup_plan_versions_output() :: #{
%%   <<"BackupPlanVersionsList">> => list(backup_plans_list_member()),
%%   <<"NextToken">> => string()
%% }
-type list_backup_plan_versions_output() :: #{binary() => any()}.


%% Example:
%% update_framework_output() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FrameworkArn">> => string(),
%%   <<"FrameworkName">> => string()
%% }
-type update_framework_output() :: #{binary() => any()}.


%% Example:
%% list_frameworks_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_frameworks_input() :: #{binary() => any()}.


%% Example:
%% backup_plan_templates_list_member() :: #{
%%   <<"BackupPlanTemplateId">> => string(),
%%   <<"BackupPlanTemplateName">> => string()
%% }
-type backup_plan_templates_list_member() :: #{binary() => any()}.


%% Example:
%% list_backup_job_summaries_output() :: #{
%%   <<"AggregationPeriod">> => string(),
%%   <<"BackupJobSummaries">> => list(backup_job_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_backup_job_summaries_output() :: #{binary() => any()}.


%% Example:
%% list_recovery_points_by_backup_vault_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RecoveryPoints">> => list(recovery_point_by_backup_vault())
%% }
-type list_recovery_points_by_backup_vault_output() :: #{binary() => any()}.


%% Example:
%% key_value() :: #{
%%   <<"Key">> => [string()],
%%   <<"Value">> => [string()]
%% }
-type key_value() :: #{binary() => any()}.


%% Example:
%% start_report_job_input() :: #{
%%   <<"IdempotencyToken">> => string()
%% }
-type start_report_job_input() :: #{binary() => any()}.


%% Example:
%% create_report_plan_input() :: #{
%%   <<"IdempotencyToken">> => string(),
%%   <<"ReportDeliveryChannel">> := report_delivery_channel(),
%%   <<"ReportPlanDescription">> => string(),
%%   <<"ReportPlanName">> := string(),
%%   <<"ReportPlanTags">> => map(),
%%   <<"ReportSetting">> := report_setting()
%% }
-type create_report_plan_input() :: #{binary() => any()}.


%% Example:
%% backup_job() :: #{
%%   <<"AccountId">> => string(),
%%   <<"BackupJobId">> => string(),
%%   <<"BackupOptions">> => map(),
%%   <<"BackupSizeInBytes">> => float(),
%%   <<"BackupType">> => string(),
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"BytesTransferred">> => float(),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CreatedBy">> => recovery_point_creator(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"ExpectedCompletionDate">> => non_neg_integer(),
%%   <<"IamRoleArn">> => string(),
%%   <<"InitiationDate">> => non_neg_integer(),
%%   <<"IsParent">> => boolean(),
%%   <<"MessageCategory">> => string(),
%%   <<"ParentJobId">> => string(),
%%   <<"PercentDone">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"StartBy">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type backup_job() :: #{binary() => any()}.

%% Example:
%% delete_backup_plan_input() :: #{}
-type delete_backup_plan_input() :: #{}.

%% Example:
%% describe_region_settings_input() :: #{}
-type describe_region_settings_input() :: #{}.


%% Example:
%% list_restore_jobs_by_protected_resource_input() :: #{
%%   <<"ByRecoveryPointCreationDateAfter">> => non_neg_integer(),
%%   <<"ByRecoveryPointCreationDateBefore">> => non_neg_integer(),
%%   <<"ByStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_restore_jobs_by_protected_resource_input() :: #{binary() => any()}.


%% Example:
%% get_backup_plan_from_json_input() :: #{
%%   <<"BackupPlanTemplateJson">> := string()
%% }
-type get_backup_plan_from_json_input() :: #{binary() => any()}.


%% Example:
%% list_restore_job_summaries_output() :: #{
%%   <<"AggregationPeriod">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"RestoreJobSummaries">> => list(restore_job_summary())
%% }
-type list_restore_job_summaries_output() :: #{binary() => any()}.


%% Example:
%% describe_framework_output() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeploymentStatus">> => string(),
%%   <<"FrameworkArn">> => string(),
%%   <<"FrameworkControls">> => list(framework_control()),
%%   <<"FrameworkDescription">> => string(),
%%   <<"FrameworkName">> => string(),
%%   <<"FrameworkStatus">> => string(),
%%   <<"IdempotencyToken">> => string()
%% }
-type describe_framework_output() :: #{binary() => any()}.

%% Example:
%% describe_report_job_input() :: #{}
-type describe_report_job_input() :: #{}.

%% Example:
%% export_backup_plan_template_input() :: #{}
-type export_backup_plan_template_input() :: #{}.


%% Example:
%% update_restore_testing_plan_output() :: #{
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"RestoreTestingPlanArn">> => [string()],
%%   <<"RestoreTestingPlanName">> => [string()],
%%   <<"UpdateTime">> => [non_neg_integer()]
%% }
-type update_restore_testing_plan_output() :: #{binary() => any()}.


%% Example:
%% date_range() :: #{
%%   <<"FromDate">> => non_neg_integer(),
%%   <<"ToDate">> => non_neg_integer()
%% }
-type date_range() :: #{binary() => any()}.


%% Example:
%% update_recovery_point_lifecycle_output() :: #{
%%   <<"BackupVaultArn">> => string(),
%%   <<"CalculatedLifecycle">> => calculated_lifecycle(),
%%   <<"Lifecycle">> => lifecycle(),
%%   <<"RecoveryPointArn">> => string()
%% }
-type update_recovery_point_lifecycle_output() :: #{binary() => any()}.


%% Example:
%% list_restore_testing_selections_output() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"RestoreTestingSelections">> => list(restore_testing_selection_for_list())
%% }
-type list_restore_testing_selections_output() :: #{binary() => any()}.


%% Example:
%% describe_recovery_point_output() :: #{
%%   <<"BackupSizeInBytes">> => float(),
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"CalculatedLifecycle">> => calculated_lifecycle(),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CompositeMemberIdentifier">> => string(),
%%   <<"CreatedBy">> => recovery_point_creator(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"IndexStatus">> => list(any()),
%%   <<"IndexStatusMessage">> => string(),
%%   <<"InitiationDate">> => non_neg_integer(),
%%   <<"IsEncrypted">> => boolean(),
%%   <<"IsParent">> => boolean(),
%%   <<"LastRestoreTime">> => non_neg_integer(),
%%   <<"Lifecycle">> => lifecycle(),
%%   <<"ParentRecoveryPointArn">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"SourceBackupVaultArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"StorageClass">> => list(any()),
%%   <<"VaultType">> => list(any())
%% }
-type describe_recovery_point_output() :: #{binary() => any()}.


%% Example:
%% latest_revoke_request() :: #{
%%   <<"ExpiryDate">> => non_neg_integer(),
%%   <<"InitiationDate">> => non_neg_integer(),
%%   <<"MpaSessionArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type latest_revoke_request() :: #{binary() => any()}.


%% Example:
%% describe_copy_job_output() :: #{
%%   <<"CopyJob">> => copy_job()
%% }
-type describe_copy_job_output() :: #{binary() => any()}.


%% Example:
%% cancel_legal_hold_input() :: #{
%%   <<"CancelDescription">> := string(),
%%   <<"RetainRecordInDays">> => float()
%% }
-type cancel_legal_hold_input() :: #{binary() => any()}.


%% Example:
%% list_tags_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_tags_output() :: #{binary() => any()}.


%% Example:
%% create_restore_testing_plan_input() :: #{
%%   <<"CreatorRequestId">> => [string()],
%%   <<"RestoreTestingPlan">> := restore_testing_plan_for_create(),
%%   <<"Tags">> => map()
%% }
-type create_restore_testing_plan_input() :: #{binary() => any()}.

%% Example:
%% get_legal_hold_input() :: #{}
-type get_legal_hold_input() :: #{}.


%% Example:
%% create_restore_access_backup_vault_input() :: #{
%%   <<"BackupVaultName">> => string(),
%%   <<"BackupVaultTags">> => map(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"RequesterComment">> => string(),
%%   <<"SourceBackupVaultArn">> := string()
%% }
-type create_restore_access_backup_vault_input() :: #{binary() => any()}.


%% Example:
%% restore_testing_selection_for_get() :: #{
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"CreatorRequestId">> => [string()],
%%   <<"IamRoleArn">> => [string()],
%%   <<"ProtectedResourceArns">> => list(string()),
%%   <<"ProtectedResourceConditions">> => protected_resource_conditions(),
%%   <<"ProtectedResourceType">> => [string()],
%%   <<"RestoreMetadataOverrides">> => map(),
%%   <<"RestoreTestingPlanName">> => [string()],
%%   <<"RestoreTestingSelectionName">> => [string()],
%%   <<"ValidationWindowHours">> => integer()
%% }
-type restore_testing_selection_for_get() :: #{binary() => any()}.


%% Example:
%% get_recovery_point_restore_metadata_output() :: #{
%%   <<"BackupVaultArn">> => string(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"RestoreMetadata">> => map()
%% }
-type get_recovery_point_restore_metadata_output() :: #{binary() => any()}.


%% Example:
%% create_restore_testing_plan_output() :: #{
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"RestoreTestingPlanArn">> => [string()],
%%   <<"RestoreTestingPlanName">> => [string()]
%% }
-type create_restore_testing_plan_output() :: #{binary() => any()}.

%% Example:
%% delete_backup_vault_lock_configuration_input() :: #{}
-type delete_backup_vault_lock_configuration_input() :: #{}.


%% Example:
%% index_action() :: #{
%%   <<"ResourceTypes">> => list(string())
%% }
-type index_action() :: #{binary() => any()}.


%% Example:
%% list_protected_resources_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_protected_resources_input() :: #{binary() => any()}.

%% Example:
%% delete_recovery_point_input() :: #{}
-type delete_recovery_point_input() :: #{}.


%% Example:
%% update_report_plan_output() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ReportPlanArn">> => string(),
%%   <<"ReportPlanName">> => string()
%% }
-type update_report_plan_output() :: #{binary() => any()}.


%% Example:
%% list_backup_plan_templates_output() :: #{
%%   <<"BackupPlanTemplatesList">> => list(backup_plan_templates_list_member()),
%%   <<"NextToken">> => string()
%% }
-type list_backup_plan_templates_output() :: #{binary() => any()}.


%% Example:
%% list_backup_plans_input() :: #{
%%   <<"IncludeDeleted">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_backup_plans_input() :: #{binary() => any()}.

%% Example:
%% describe_backup_job_input() :: #{}
-type describe_backup_job_input() :: #{}.


%% Example:
%% create_logically_air_gapped_backup_vault_input() :: #{
%%   <<"BackupVaultTags">> => map(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"MaxRetentionDays">> := float(),
%%   <<"MinRetentionDays">> := float()
%% }
-type create_logically_air_gapped_backup_vault_input() :: #{binary() => any()}.


%% Example:
%% describe_report_plan_output() :: #{
%%   <<"ReportPlan">> => report_plan()
%% }
-type describe_report_plan_output() :: #{binary() => any()}.


%% Example:
%% update_restore_testing_selection_input() :: #{
%%   <<"RestoreTestingSelection">> := restore_testing_selection_for_update()
%% }
-type update_restore_testing_selection_input() :: #{binary() => any()}.


%% Example:
%% put_backup_vault_lock_configuration_input() :: #{
%%   <<"ChangeableForDays">> => float(),
%%   <<"MaxRetentionDays">> => float(),
%%   <<"MinRetentionDays">> => float()
%% }
-type put_backup_vault_lock_configuration_input() :: #{binary() => any()}.

%% Example:
%% describe_restore_job_input() :: #{}
-type describe_restore_job_input() :: #{}.


%% Example:
%% update_backup_plan_output() :: #{
%%   <<"AdvancedBackupSettings">> => list(advanced_backup_setting()),
%%   <<"BackupPlanArn">> => string(),
%%   <<"BackupPlanId">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"VersionId">> => string()
%% }
-type update_backup_plan_output() :: #{binary() => any()}.


%% Example:
%% list_restore_access_backup_vaults_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RestoreAccessBackupVaults">> => list(restore_access_backup_vault_list_member())
%% }
-type list_restore_access_backup_vaults_output() :: #{binary() => any()}.


%% Example:
%% put_restore_validation_result_input() :: #{
%%   <<"ValidationStatus">> := list(any()),
%%   <<"ValidationStatusMessage">> => string()
%% }
-type put_restore_validation_result_input() :: #{binary() => any()}.

-type associate_backup_vault_mpa_approval_team_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type cancel_legal_hold_errors() ::
    invalid_resource_state_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type create_backup_plan_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    already_exists_exception() | 
    missing_parameter_value_exception().

-type create_backup_selection_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    already_exists_exception() | 
    missing_parameter_value_exception().

-type create_backup_vault_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    already_exists_exception() | 
    missing_parameter_value_exception().

-type create_framework_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    already_exists_exception() | 
    missing_parameter_value_exception().

-type create_legal_hold_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_parameter_value_exception().

-type create_logically_air_gapped_backup_vault_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    already_exists_exception() | 
    missing_parameter_value_exception().

-type create_report_plan_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    already_exists_exception() | 
    missing_parameter_value_exception().

-type create_restore_access_backup_vault_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    already_exists_exception() | 
    missing_parameter_value_exception().

-type create_restore_testing_plan_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    conflict_exception() | 
    already_exists_exception() | 
    missing_parameter_value_exception().

-type create_restore_testing_selection_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    already_exists_exception() | 
    missing_parameter_value_exception().

-type delete_backup_plan_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type delete_backup_selection_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type delete_backup_vault_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type delete_backup_vault_access_policy_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type delete_backup_vault_lock_configuration_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type delete_backup_vault_notifications_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type delete_framework_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    missing_parameter_value_exception().

-type delete_recovery_point_errors() ::
    invalid_resource_state_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type delete_report_plan_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    missing_parameter_value_exception().

-type delete_restore_testing_plan_errors() ::
    service_unavailable_exception() | 
    invalid_request_exception().

-type delete_restore_testing_selection_errors() ::
    service_unavailable_exception() | 
    resource_not_found_exception().

-type describe_backup_job_errors() ::
    service_unavailable_exception() | 
    dependency_failure_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type describe_backup_vault_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type describe_copy_job_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type describe_framework_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type describe_global_settings_errors() ::
    service_unavailable_exception() | 
    invalid_request_exception().

-type describe_protected_resource_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type describe_recovery_point_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type describe_region_settings_errors() ::
    service_unavailable_exception().

-type describe_report_job_errors() ::
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type describe_report_plan_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type describe_restore_job_errors() ::
    service_unavailable_exception() | 
    dependency_failure_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type disassociate_backup_vault_mpa_approval_team_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type disassociate_recovery_point_errors() ::
    invalid_resource_state_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type disassociate_recovery_point_from_parent_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type export_backup_plan_template_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_backup_plan_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_backup_plan_from_json_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    missing_parameter_value_exception().

-type get_backup_plan_from_template_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_backup_selection_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_backup_vault_access_policy_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_backup_vault_notifications_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_legal_hold_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_recovery_point_index_details_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_recovery_point_restore_metadata_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_restore_job_metadata_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_restore_testing_inferred_metadata_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type get_restore_testing_plan_errors() ::
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_restore_testing_selection_errors() ::
    service_unavailable_exception() | 
    resource_not_found_exception().

-type get_supported_resource_types_errors() ::
    service_unavailable_exception().

-type list_backup_job_summaries_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception().

-type list_backup_jobs_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception().

-type list_backup_plan_templates_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_backup_plan_versions_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_backup_plans_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_backup_selections_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_backup_vaults_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_copy_job_summaries_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception().

-type list_copy_jobs_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception().

-type list_frameworks_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception().

-type list_indexed_recovery_points_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type list_legal_holds_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception().

-type list_protected_resources_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception().

-type list_protected_resources_by_backup_vault_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type list_recovery_points_by_backup_vault_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_recovery_points_by_legal_hold_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_parameter_value_exception().

-type list_recovery_points_by_resource_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_report_jobs_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type list_report_plans_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception().

-type list_restore_access_backup_vaults_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_restore_job_summaries_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception().

-type list_restore_jobs_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_restore_jobs_by_protected_resource_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type list_restore_testing_plans_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception().

-type list_restore_testing_selections_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type list_tags_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type put_backup_vault_access_policy_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type put_backup_vault_lock_configuration_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type put_backup_vault_notifications_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type put_restore_validation_result_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type revoke_restore_access_backup_vault_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type start_backup_job_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type start_copy_job_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type start_report_job_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type start_restore_job_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type stop_backup_job_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type untag_resource_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type update_backup_plan_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type update_framework_errors() ::
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    already_exists_exception() | 
    missing_parameter_value_exception().

-type update_global_settings_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    missing_parameter_value_exception().

-type update_recovery_point_index_settings_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type update_recovery_point_lifecycle_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    missing_parameter_value_exception().

-type update_region_settings_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    missing_parameter_value_exception().

-type update_report_plan_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    missing_parameter_value_exception().

-type update_restore_testing_plan_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    missing_parameter_value_exception().

-type update_restore_testing_selection_errors() ::
    service_unavailable_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    missing_parameter_value_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an MPA approval team with a backup vault.
-spec associate_backup_vault_mpa_approval_team(aws_client:aws_client(), binary() | list(), associate_backup_vault_mpa_approval_team_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_backup_vault_mpa_approval_team_errors(), tuple()}.
associate_backup_vault_mpa_approval_team(Client, BackupVaultName, Input) ->
    associate_backup_vault_mpa_approval_team(Client, BackupVaultName, Input, []).

-spec associate_backup_vault_mpa_approval_team(aws_client:aws_client(), binary() | list(), associate_backup_vault_mpa_approval_team_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_backup_vault_mpa_approval_team_errors(), tuple()}.
associate_backup_vault_mpa_approval_team(Client, BackupVaultName, Input0, Options0) ->
    Method = put,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/mpaApprovalTeam"],
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

%% @doc Removes the specified legal hold on a recovery point.
%%
%% This action can only be performed
%% by a user with sufficient permissions.
-spec cancel_legal_hold(aws_client:aws_client(), binary() | list(), cancel_legal_hold_input()) ->
    {ok, cancel_legal_hold_output(), tuple()} |
    {error, any()} |
    {error, cancel_legal_hold_errors(), tuple()}.
cancel_legal_hold(Client, LegalHoldId, Input) ->
    cancel_legal_hold(Client, LegalHoldId, Input, []).

-spec cancel_legal_hold(aws_client:aws_client(), binary() | list(), cancel_legal_hold_input(), proplists:proplist()) ->
    {ok, cancel_legal_hold_output(), tuple()} |
    {error, any()} |
    {error, cancel_legal_hold_errors(), tuple()}.
cancel_legal_hold(Client, LegalHoldId, Input0, Options0) ->
    Method = delete,
    Path = ["/legal-holds/", aws_util:encode_uri(LegalHoldId), ""],
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

    QueryMapping = [
                     {<<"cancelDescription">>, <<"CancelDescription">>},
                     {<<"retainRecordInDays">>, <<"RetainRecordInDays">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a backup plan using a backup plan name and backup rules.
%%
%% A backup plan is a
%% document that contains information that Backup uses to schedule tasks that
%% create recovery points for resources.
%%
%% If you call `CreateBackupPlan' with a plan that already exists, you
%% receive
%% an `AlreadyExistsException' exception.
-spec create_backup_plan(aws_client:aws_client(), create_backup_plan_input()) ->
    {ok, create_backup_plan_output(), tuple()} |
    {error, any()} |
    {error, create_backup_plan_errors(), tuple()}.
create_backup_plan(Client, Input) ->
    create_backup_plan(Client, Input, []).

-spec create_backup_plan(aws_client:aws_client(), create_backup_plan_input(), proplists:proplist()) ->
    {ok, create_backup_plan_output(), tuple()} |
    {error, any()} |
    {error, create_backup_plan_errors(), tuple()}.
create_backup_plan(Client, Input0, Options0) ->
    Method = put,
    Path = ["/backup/plans"],
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

%% @doc Creates a JSON document that specifies a set of resources to assign
%% to a backup plan.
%%
%% For examples, see Assigning resources programmatically:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json.
-spec create_backup_selection(aws_client:aws_client(), binary() | list(), create_backup_selection_input()) ->
    {ok, create_backup_selection_output(), tuple()} |
    {error, any()} |
    {error, create_backup_selection_errors(), tuple()}.
create_backup_selection(Client, BackupPlanId, Input) ->
    create_backup_selection(Client, BackupPlanId, Input, []).

-spec create_backup_selection(aws_client:aws_client(), binary() | list(), create_backup_selection_input(), proplists:proplist()) ->
    {ok, create_backup_selection_output(), tuple()} |
    {error, any()} |
    {error, create_backup_selection_errors(), tuple()}.
create_backup_selection(Client, BackupPlanId, Input0, Options0) ->
    Method = put,
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/selections"],
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

%% @doc Creates a logical container where backups are stored.
%%
%% A `CreateBackupVault'
%% request includes a name, optionally one or more resource tags, an
%% encryption key, and a
%% request ID.
%%
%% Do not include sensitive data, such as passport numbers, in the name of a
%% backup
%% vault.
-spec create_backup_vault(aws_client:aws_client(), binary() | list(), create_backup_vault_input()) ->
    {ok, create_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, create_backup_vault_errors(), tuple()}.
create_backup_vault(Client, BackupVaultName, Input) ->
    create_backup_vault(Client, BackupVaultName, Input, []).

-spec create_backup_vault(aws_client:aws_client(), binary() | list(), create_backup_vault_input(), proplists:proplist()) ->
    {ok, create_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, create_backup_vault_errors(), tuple()}.
create_backup_vault(Client, BackupVaultName, Input0, Options0) ->
    Method = put,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), ""],
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

%% @doc Creates a framework with one or more controls.
%%
%% A framework is a collection of controls
%% that you can use to evaluate your backup practices. By using pre-built
%% customizable
%% controls to define your policies, you can evaluate whether your backup
%% practices comply
%% with your policies and which resources are not yet in compliance.
-spec create_framework(aws_client:aws_client(), create_framework_input()) ->
    {ok, create_framework_output(), tuple()} |
    {error, any()} |
    {error, create_framework_errors(), tuple()}.
create_framework(Client, Input) ->
    create_framework(Client, Input, []).

-spec create_framework(aws_client:aws_client(), create_framework_input(), proplists:proplist()) ->
    {ok, create_framework_output(), tuple()} |
    {error, any()} |
    {error, create_framework_errors(), tuple()}.
create_framework(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/frameworks"],
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

%% @doc Creates a legal hold on a recovery point (backup).
%%
%% A legal hold is a restraint on
%% altering or deleting a backup until an authorized user cancels the legal
%% hold. Any actions
%% to delete or disassociate a recovery point will fail with an error if one
%% or more active
%% legal holds are on the recovery point.
-spec create_legal_hold(aws_client:aws_client(), create_legal_hold_input()) ->
    {ok, create_legal_hold_output(), tuple()} |
    {error, any()} |
    {error, create_legal_hold_errors(), tuple()}.
create_legal_hold(Client, Input) ->
    create_legal_hold(Client, Input, []).

-spec create_legal_hold(aws_client:aws_client(), create_legal_hold_input(), proplists:proplist()) ->
    {ok, create_legal_hold_output(), tuple()} |
    {error, any()} |
    {error, create_legal_hold_errors(), tuple()}.
create_legal_hold(Client, Input0, Options0) ->
    Method = post,
    Path = ["/legal-holds"],
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

%% @doc Creates a logical container to where backups may be copied.
%%
%% This request includes a name, the Region, the maximum number of retention
%% days, the
%% minimum number of retention days, and optionally can include tags and a
%% creator request
%% ID.
%%
%% Do not include sensitive data, such as passport numbers, in the name of a
%% backup
%% vault.
-spec create_logically_air_gapped_backup_vault(aws_client:aws_client(), binary() | list(), create_logically_air_gapped_backup_vault_input()) ->
    {ok, create_logically_air_gapped_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, create_logically_air_gapped_backup_vault_errors(), tuple()}.
create_logically_air_gapped_backup_vault(Client, BackupVaultName, Input) ->
    create_logically_air_gapped_backup_vault(Client, BackupVaultName, Input, []).

-spec create_logically_air_gapped_backup_vault(aws_client:aws_client(), binary() | list(), create_logically_air_gapped_backup_vault_input(), proplists:proplist()) ->
    {ok, create_logically_air_gapped_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, create_logically_air_gapped_backup_vault_errors(), tuple()}.
create_logically_air_gapped_backup_vault(Client, BackupVaultName, Input0, Options0) ->
    Method = put,
    Path = ["/logically-air-gapped-backup-vaults/", aws_util:encode_uri(BackupVaultName), ""],
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

%% @doc Creates a report plan.
%%
%% A report plan is a document that contains information about the
%% contents of the report and where Backup will deliver it.
%%
%% If you call `CreateReportPlan' with a plan that already exists, you
%% receive
%% an `AlreadyExistsException' exception.
-spec create_report_plan(aws_client:aws_client(), create_report_plan_input()) ->
    {ok, create_report_plan_output(), tuple()} |
    {error, any()} |
    {error, create_report_plan_errors(), tuple()}.
create_report_plan(Client, Input) ->
    create_report_plan(Client, Input, []).

-spec create_report_plan(aws_client:aws_client(), create_report_plan_input(), proplists:proplist()) ->
    {ok, create_report_plan_output(), tuple()} |
    {error, any()} |
    {error, create_report_plan_errors(), tuple()}.
create_report_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/report-plans"],
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

%% @doc Creates a restore access backup vault that provides temporary access
%% to recovery points in a logically air-gapped backup vault, subject to MPA
%% approval.
-spec create_restore_access_backup_vault(aws_client:aws_client(), create_restore_access_backup_vault_input()) ->
    {ok, create_restore_access_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, create_restore_access_backup_vault_errors(), tuple()}.
create_restore_access_backup_vault(Client, Input) ->
    create_restore_access_backup_vault(Client, Input, []).

-spec create_restore_access_backup_vault(aws_client:aws_client(), create_restore_access_backup_vault_input(), proplists:proplist()) ->
    {ok, create_restore_access_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, create_restore_access_backup_vault_errors(), tuple()}.
create_restore_access_backup_vault(Client, Input0, Options0) ->
    Method = put,
    Path = ["/restore-access-backup-vaults"],
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

%% @doc Creates a restore testing plan.
%%
%% The first of two steps to create a restore testing
%% plan. After this request is successful, finish the procedure using
%% CreateRestoreTestingSelection.
-spec create_restore_testing_plan(aws_client:aws_client(), create_restore_testing_plan_input()) ->
    {ok, create_restore_testing_plan_output(), tuple()} |
    {error, any()} |
    {error, create_restore_testing_plan_errors(), tuple()}.
create_restore_testing_plan(Client, Input) ->
    create_restore_testing_plan(Client, Input, []).

-spec create_restore_testing_plan(aws_client:aws_client(), create_restore_testing_plan_input(), proplists:proplist()) ->
    {ok, create_restore_testing_plan_output(), tuple()} |
    {error, any()} |
    {error, create_restore_testing_plan_errors(), tuple()}.
create_restore_testing_plan(Client, Input0, Options0) ->
    Method = put,
    Path = ["/restore-testing/plans"],
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

%% @doc This request can be sent after CreateRestoreTestingPlan request
%% returns successfully.
%%
%% This is the second part of creating a resource testing
%% plan, and it must be completed sequentially.
%%
%% This consists of `RestoreTestingSelectionName',
%% `ProtectedResourceType', and one of the following:
%%
%% `ProtectedResourceArns'
%%
%% `ProtectedResourceConditions'
%%
%% Each protected resource type can have one single value.
%%
%% A restore testing selection can include a wildcard value (&quot;*&quot;)
%% for
%% `ProtectedResourceArns' along with `ProtectedResourceConditions'.
%% Alternatively, you can include up to 30 specific protected resource ARNs
%% in
%% `ProtectedResourceArns'.
%%
%% Cannot select by both protected resource types AND specific ARNs.
%% Request will fail if both are included.
-spec create_restore_testing_selection(aws_client:aws_client(), binary() | list(), create_restore_testing_selection_input()) ->
    {ok, create_restore_testing_selection_output(), tuple()} |
    {error, any()} |
    {error, create_restore_testing_selection_errors(), tuple()}.
create_restore_testing_selection(Client, RestoreTestingPlanName, Input) ->
    create_restore_testing_selection(Client, RestoreTestingPlanName, Input, []).

-spec create_restore_testing_selection(aws_client:aws_client(), binary() | list(), create_restore_testing_selection_input(), proplists:proplist()) ->
    {ok, create_restore_testing_selection_output(), tuple()} |
    {error, any()} |
    {error, create_restore_testing_selection_errors(), tuple()}.
create_restore_testing_selection(Client, RestoreTestingPlanName, Input0, Options0) ->
    Method = put,
    Path = ["/restore-testing/plans/", aws_util:encode_uri(RestoreTestingPlanName), "/selections"],
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

%% @doc Deletes a backup plan.
%%
%% A backup plan can only be deleted after all associated selections
%% of resources have been deleted. Deleting a backup plan deletes the current
%% version of a
%% backup plan. Previous versions, if any, will still exist.
-spec delete_backup_plan(aws_client:aws_client(), binary() | list(), delete_backup_plan_input()) ->
    {ok, delete_backup_plan_output(), tuple()} |
    {error, any()} |
    {error, delete_backup_plan_errors(), tuple()}.
delete_backup_plan(Client, BackupPlanId, Input) ->
    delete_backup_plan(Client, BackupPlanId, Input, []).

-spec delete_backup_plan(aws_client:aws_client(), binary() | list(), delete_backup_plan_input(), proplists:proplist()) ->
    {ok, delete_backup_plan_output(), tuple()} |
    {error, any()} |
    {error, delete_backup_plan_errors(), tuple()}.
delete_backup_plan(Client, BackupPlanId, Input0, Options0) ->
    Method = delete,
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), ""],
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

%% @doc Deletes the resource selection associated with a backup plan that is
%% specified by the
%% `SelectionId'.
-spec delete_backup_selection(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backup_selection_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_backup_selection_errors(), tuple()}.
delete_backup_selection(Client, BackupPlanId, SelectionId, Input) ->
    delete_backup_selection(Client, BackupPlanId, SelectionId, Input, []).

-spec delete_backup_selection(aws_client:aws_client(), binary() | list(), binary() | list(), delete_backup_selection_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_backup_selection_errors(), tuple()}.
delete_backup_selection(Client, BackupPlanId, SelectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/selections/", aws_util:encode_uri(SelectionId), ""],
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

%% @doc Deletes the backup vault identified by its name.
%%
%% A vault can be deleted only if it is
%% empty.
-spec delete_backup_vault(aws_client:aws_client(), binary() | list(), delete_backup_vault_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_backup_vault_errors(), tuple()}.
delete_backup_vault(Client, BackupVaultName, Input) ->
    delete_backup_vault(Client, BackupVaultName, Input, []).

-spec delete_backup_vault(aws_client:aws_client(), binary() | list(), delete_backup_vault_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_backup_vault_errors(), tuple()}.
delete_backup_vault(Client, BackupVaultName, Input0, Options0) ->
    Method = delete,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), ""],
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

%% @doc Deletes the policy document that manages permissions on a backup
%% vault.
-spec delete_backup_vault_access_policy(aws_client:aws_client(), binary() | list(), delete_backup_vault_access_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_backup_vault_access_policy_errors(), tuple()}.
delete_backup_vault_access_policy(Client, BackupVaultName, Input) ->
    delete_backup_vault_access_policy(Client, BackupVaultName, Input, []).

-spec delete_backup_vault_access_policy(aws_client:aws_client(), binary() | list(), delete_backup_vault_access_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_backup_vault_access_policy_errors(), tuple()}.
delete_backup_vault_access_policy(Client, BackupVaultName, Input0, Options0) ->
    Method = delete,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/access-policy"],
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

%% @doc Deletes Backup Vault Lock from a backup vault specified by a backup
%% vault
%% name.
%%
%% If the Vault Lock configuration is immutable, then you cannot delete Vault
%% Lock using
%% API operations, and you will receive an `InvalidRequestException' if
%% you attempt
%% to do so. For more information, see Vault Lock:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html in
%% the
%% Backup Developer Guide.
-spec delete_backup_vault_lock_configuration(aws_client:aws_client(), binary() | list(), delete_backup_vault_lock_configuration_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_backup_vault_lock_configuration_errors(), tuple()}.
delete_backup_vault_lock_configuration(Client, BackupVaultName, Input) ->
    delete_backup_vault_lock_configuration(Client, BackupVaultName, Input, []).

-spec delete_backup_vault_lock_configuration(aws_client:aws_client(), binary() | list(), delete_backup_vault_lock_configuration_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_backup_vault_lock_configuration_errors(), tuple()}.
delete_backup_vault_lock_configuration(Client, BackupVaultName, Input0, Options0) ->
    Method = delete,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/vault-lock"],
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

%% @doc Deletes event notifications for the specified backup vault.
-spec delete_backup_vault_notifications(aws_client:aws_client(), binary() | list(), delete_backup_vault_notifications_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_backup_vault_notifications_errors(), tuple()}.
delete_backup_vault_notifications(Client, BackupVaultName, Input) ->
    delete_backup_vault_notifications(Client, BackupVaultName, Input, []).

-spec delete_backup_vault_notifications(aws_client:aws_client(), binary() | list(), delete_backup_vault_notifications_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_backup_vault_notifications_errors(), tuple()}.
delete_backup_vault_notifications(Client, BackupVaultName, Input0, Options0) ->
    Method = delete,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/notification-configuration"],
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

%% @doc Deletes the framework specified by a framework name.
-spec delete_framework(aws_client:aws_client(), binary() | list(), delete_framework_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_framework_errors(), tuple()}.
delete_framework(Client, FrameworkName, Input) ->
    delete_framework(Client, FrameworkName, Input, []).

-spec delete_framework(aws_client:aws_client(), binary() | list(), delete_framework_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_framework_errors(), tuple()}.
delete_framework(Client, FrameworkName, Input0, Options0) ->
    Method = delete,
    Path = ["/audit/frameworks/", aws_util:encode_uri(FrameworkName), ""],
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

%% @doc Deletes the recovery point specified by a recovery point ID.
%%
%% If the recovery point ID belongs to a continuous backup, calling this
%% endpoint deletes
%% the existing continuous backup and stops future continuous backup.
%%
%% When an IAM role's permissions are insufficient to call this API, the
%% service sends back
%% an HTTP 200 response with an empty HTTP body, but the recovery point is
%% not deleted.
%% Instead, it enters an `EXPIRED' state.
%%
%% `EXPIRED' recovery points can be deleted with this API once the IAM
%% role
%% has the `iam:CreateServiceLinkedRole' action. To learn more about
%% adding this role, see
%%
%% Troubleshooting manual deletions:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/deleting-backups.html#deleting-backups-troubleshooting.
%%
%% If the user or role is deleted or the permission within the role is
%% removed,
%% the deletion will not be successful and will enter an `EXPIRED' state.
-spec delete_recovery_point(aws_client:aws_client(), binary() | list(), binary() | list(), delete_recovery_point_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_recovery_point_errors(), tuple()}.
delete_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input) ->
    delete_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input, []).

-spec delete_recovery_point(aws_client:aws_client(), binary() | list(), binary() | list(), delete_recovery_point_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_recovery_point_errors(), tuple()}.
delete_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input0, Options0) ->
    Method = delete,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), ""],
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

%% @doc Deletes the report plan specified by a report plan name.
-spec delete_report_plan(aws_client:aws_client(), binary() | list(), delete_report_plan_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_report_plan_errors(), tuple()}.
delete_report_plan(Client, ReportPlanName, Input) ->
    delete_report_plan(Client, ReportPlanName, Input, []).

-spec delete_report_plan(aws_client:aws_client(), binary() | list(), delete_report_plan_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_report_plan_errors(), tuple()}.
delete_report_plan(Client, ReportPlanName, Input0, Options0) ->
    Method = delete,
    Path = ["/audit/report-plans/", aws_util:encode_uri(ReportPlanName), ""],
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

%% @doc This request deletes the specified restore testing plan.
%%
%% Deletion can only successfully occur if all associated
%% restore testing selections are deleted first.
-spec delete_restore_testing_plan(aws_client:aws_client(), binary() | list(), delete_restore_testing_plan_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_restore_testing_plan_errors(), tuple()}.
delete_restore_testing_plan(Client, RestoreTestingPlanName, Input) ->
    delete_restore_testing_plan(Client, RestoreTestingPlanName, Input, []).

-spec delete_restore_testing_plan(aws_client:aws_client(), binary() | list(), delete_restore_testing_plan_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_restore_testing_plan_errors(), tuple()}.
delete_restore_testing_plan(Client, RestoreTestingPlanName, Input0, Options0) ->
    Method = delete,
    Path = ["/restore-testing/plans/", aws_util:encode_uri(RestoreTestingPlanName), ""],
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

%% @doc Input the Restore Testing Plan name and Restore Testing Selection
%% name.
%%
%% All testing selections associated with a restore testing plan must
%% be deleted before the restore testing plan can be deleted.
-spec delete_restore_testing_selection(aws_client:aws_client(), binary() | list(), binary() | list(), delete_restore_testing_selection_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_restore_testing_selection_errors(), tuple()}.
delete_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, Input) ->
    delete_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, Input, []).

-spec delete_restore_testing_selection(aws_client:aws_client(), binary() | list(), binary() | list(), delete_restore_testing_selection_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_restore_testing_selection_errors(), tuple()}.
delete_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, Input0, Options0) ->
    Method = delete,
    Path = ["/restore-testing/plans/", aws_util:encode_uri(RestoreTestingPlanName), "/selections/", aws_util:encode_uri(RestoreTestingSelectionName), ""],
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

%% @doc Returns backup job details for the specified `BackupJobId'.
-spec describe_backup_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_backup_job_output(), tuple()} |
    {error, any()} |
    {error, describe_backup_job_errors(), tuple()}.
describe_backup_job(Client, BackupJobId)
  when is_map(Client) ->
    describe_backup_job(Client, BackupJobId, #{}, #{}).

-spec describe_backup_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_backup_job_output(), tuple()} |
    {error, any()} |
    {error, describe_backup_job_errors(), tuple()}.
describe_backup_job(Client, BackupJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_backup_job(Client, BackupJobId, QueryMap, HeadersMap, []).

-spec describe_backup_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_backup_job_output(), tuple()} |
    {error, any()} |
    {error, describe_backup_job_errors(), tuple()}.
describe_backup_job(Client, BackupJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-jobs/", aws_util:encode_uri(BackupJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata about a backup vault specified by its name.
-spec describe_backup_vault(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, describe_backup_vault_errors(), tuple()}.
describe_backup_vault(Client, BackupVaultName)
  when is_map(Client) ->
    describe_backup_vault(Client, BackupVaultName, #{}, #{}).

-spec describe_backup_vault(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, describe_backup_vault_errors(), tuple()}.
describe_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap, []).

-spec describe_backup_vault(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, describe_backup_vault_errors(), tuple()}.
describe_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"backupVaultAccountId">>, maps:get(<<"backupVaultAccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata associated with creating a copy of a resource.
-spec describe_copy_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_copy_job_output(), tuple()} |
    {error, any()} |
    {error, describe_copy_job_errors(), tuple()}.
describe_copy_job(Client, CopyJobId)
  when is_map(Client) ->
    describe_copy_job(Client, CopyJobId, #{}, #{}).

-spec describe_copy_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_copy_job_output(), tuple()} |
    {error, any()} |
    {error, describe_copy_job_errors(), tuple()}.
describe_copy_job(Client, CopyJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_copy_job(Client, CopyJobId, QueryMap, HeadersMap, []).

-spec describe_copy_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_copy_job_output(), tuple()} |
    {error, any()} |
    {error, describe_copy_job_errors(), tuple()}.
describe_copy_job(Client, CopyJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/copy-jobs/", aws_util:encode_uri(CopyJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the framework details for the specified `FrameworkName'.
-spec describe_framework(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_framework_output(), tuple()} |
    {error, any()} |
    {error, describe_framework_errors(), tuple()}.
describe_framework(Client, FrameworkName)
  when is_map(Client) ->
    describe_framework(Client, FrameworkName, #{}, #{}).

-spec describe_framework(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_framework_output(), tuple()} |
    {error, any()} |
    {error, describe_framework_errors(), tuple()}.
describe_framework(Client, FrameworkName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_framework(Client, FrameworkName, QueryMap, HeadersMap, []).

-spec describe_framework(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_framework_output(), tuple()} |
    {error, any()} |
    {error, describe_framework_errors(), tuple()}.
describe_framework(Client, FrameworkName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/frameworks/", aws_util:encode_uri(FrameworkName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes whether the Amazon Web Services account is opted in to
%% cross-account backup.
%%
%% Returns an error if the account is not a member of an Organizations
%% organization.
%% Example: `describe-global-settings --region us-west-2'
-spec describe_global_settings(aws_client:aws_client()) ->
    {ok, describe_global_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_global_settings_errors(), tuple()}.
describe_global_settings(Client)
  when is_map(Client) ->
    describe_global_settings(Client, #{}, #{}).

-spec describe_global_settings(aws_client:aws_client(), map(), map()) ->
    {ok, describe_global_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_global_settings_errors(), tuple()}.
describe_global_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_global_settings(Client, QueryMap, HeadersMap, []).

-spec describe_global_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_global_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_global_settings_errors(), tuple()}.
describe_global_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a saved resource, including the last time
%% it was backed up,
%% its Amazon Resource Name (ARN), and the Amazon Web Services service type
%% of the saved
%% resource.
-spec describe_protected_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_protected_resource_output(), tuple()} |
    {error, any()} |
    {error, describe_protected_resource_errors(), tuple()}.
describe_protected_resource(Client, ResourceArn)
  when is_map(Client) ->
    describe_protected_resource(Client, ResourceArn, #{}, #{}).

-spec describe_protected_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_protected_resource_output(), tuple()} |
    {error, any()} |
    {error, describe_protected_resource_errors(), tuple()}.
describe_protected_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_protected_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec describe_protected_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_protected_resource_output(), tuple()} |
    {error, any()} |
    {error, describe_protected_resource_errors(), tuple()}.
describe_protected_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata associated with a recovery point, including ID,
%% status, encryption, and
%% lifecycle.
-spec describe_recovery_point(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_recovery_point_output(), tuple()} |
    {error, any()} |
    {error, describe_recovery_point_errors(), tuple()}.
describe_recovery_point(Client, BackupVaultName, RecoveryPointArn)
  when is_map(Client) ->
    describe_recovery_point(Client, BackupVaultName, RecoveryPointArn, #{}, #{}).

-spec describe_recovery_point(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_recovery_point_output(), tuple()} |
    {error, any()} |
    {error, describe_recovery_point_errors(), tuple()}.
describe_recovery_point(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_recovery_point(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, []).

-spec describe_recovery_point(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_recovery_point_output(), tuple()} |
    {error, any()} |
    {error, describe_recovery_point_errors(), tuple()}.
describe_recovery_point(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"backupVaultAccountId">>, maps:get(<<"backupVaultAccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current service opt-in settings for the Region.
%%
%% If service opt-in is enabled
%% for a service, Backup tries to protect that service's resources in
%% this Region,
%% when the resource is included in an on-demand backup or scheduled backup
%% plan. Otherwise,
%% Backup does not try to protect that service's resources in this
%% Region.
-spec describe_region_settings(aws_client:aws_client()) ->
    {ok, describe_region_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_region_settings_errors(), tuple()}.
describe_region_settings(Client)
  when is_map(Client) ->
    describe_region_settings(Client, #{}, #{}).

-spec describe_region_settings(aws_client:aws_client(), map(), map()) ->
    {ok, describe_region_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_region_settings_errors(), tuple()}.
describe_region_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_region_settings(Client, QueryMap, HeadersMap, []).

-spec describe_region_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_region_settings_output(), tuple()} |
    {error, any()} |
    {error, describe_region_settings_errors(), tuple()}.
describe_region_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/account-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details associated with creating a report as specified by
%% its
%% `ReportJobId'.
-spec describe_report_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_report_job_output(), tuple()} |
    {error, any()} |
    {error, describe_report_job_errors(), tuple()}.
describe_report_job(Client, ReportJobId)
  when is_map(Client) ->
    describe_report_job(Client, ReportJobId, #{}, #{}).

-spec describe_report_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_report_job_output(), tuple()} |
    {error, any()} |
    {error, describe_report_job_errors(), tuple()}.
describe_report_job(Client, ReportJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_report_job(Client, ReportJobId, QueryMap, HeadersMap, []).

-spec describe_report_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_report_job_output(), tuple()} |
    {error, any()} |
    {error, describe_report_job_errors(), tuple()}.
describe_report_job(Client, ReportJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/report-jobs/", aws_util:encode_uri(ReportJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all report plans for an Amazon Web Services account
%% and Amazon Web Services Region.
-spec describe_report_plan(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_report_plan_output(), tuple()} |
    {error, any()} |
    {error, describe_report_plan_errors(), tuple()}.
describe_report_plan(Client, ReportPlanName)
  when is_map(Client) ->
    describe_report_plan(Client, ReportPlanName, #{}, #{}).

-spec describe_report_plan(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_report_plan_output(), tuple()} |
    {error, any()} |
    {error, describe_report_plan_errors(), tuple()}.
describe_report_plan(Client, ReportPlanName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_report_plan(Client, ReportPlanName, QueryMap, HeadersMap, []).

-spec describe_report_plan(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_report_plan_output(), tuple()} |
    {error, any()} |
    {error, describe_report_plan_errors(), tuple()}.
describe_report_plan(Client, ReportPlanName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/report-plans/", aws_util:encode_uri(ReportPlanName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata associated with a restore job that is specified by a
%% job ID.
-spec describe_restore_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_restore_job_output(), tuple()} |
    {error, any()} |
    {error, describe_restore_job_errors(), tuple()}.
describe_restore_job(Client, RestoreJobId)
  when is_map(Client) ->
    describe_restore_job(Client, RestoreJobId, #{}, #{}).

-spec describe_restore_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_restore_job_output(), tuple()} |
    {error, any()} |
    {error, describe_restore_job_errors(), tuple()}.
describe_restore_job(Client, RestoreJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_restore_job(Client, RestoreJobId, QueryMap, HeadersMap, []).

-spec describe_restore_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_restore_job_output(), tuple()} |
    {error, any()} |
    {error, describe_restore_job_errors(), tuple()}.
describe_restore_job(Client, RestoreJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-jobs/", aws_util:encode_uri(RestoreJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the association between an MPA approval team and a backup
%% vault, disabling the MPA approval workflow for restore operations.
-spec disassociate_backup_vault_mpa_approval_team(aws_client:aws_client(), binary() | list(), disassociate_backup_vault_mpa_approval_team_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_backup_vault_mpa_approval_team_errors(), tuple()}.
disassociate_backup_vault_mpa_approval_team(Client, BackupVaultName, Input) ->
    disassociate_backup_vault_mpa_approval_team(Client, BackupVaultName, Input, []).

-spec disassociate_backup_vault_mpa_approval_team(aws_client:aws_client(), binary() | list(), disassociate_backup_vault_mpa_approval_team_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_backup_vault_mpa_approval_team_errors(), tuple()}.
disassociate_backup_vault_mpa_approval_team(Client, BackupVaultName, Input0, Options0) ->
    Method = post,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/mpaApprovalTeam?delete"],
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

%% @doc Deletes the specified continuous backup recovery point from Backup
%% and
%% releases control of that continuous backup to the source service, such as
%% Amazon RDS.
%%
%% The source service will continue to create and retain continuous backups
%% using the
%% lifecycle that you specified in your original backup plan.
%%
%% Does not support snapshot backup recovery points.
-spec disassociate_recovery_point(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_recovery_point_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_recovery_point_errors(), tuple()}.
disassociate_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input) ->
    disassociate_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input, []).

-spec disassociate_recovery_point(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_recovery_point_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_recovery_point_errors(), tuple()}.
disassociate_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input0, Options0) ->
    Method = post,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), "/disassociate"],
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

%% @doc This action to a specific child (nested) recovery point removes the
%% relationship
%% between the specified recovery point and its parent (composite) recovery
%% point.
-spec disassociate_recovery_point_from_parent(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_recovery_point_from_parent_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_recovery_point_from_parent_errors(), tuple()}.
disassociate_recovery_point_from_parent(Client, BackupVaultName, RecoveryPointArn, Input) ->
    disassociate_recovery_point_from_parent(Client, BackupVaultName, RecoveryPointArn, Input, []).

-spec disassociate_recovery_point_from_parent(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_recovery_point_from_parent_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_recovery_point_from_parent_errors(), tuple()}.
disassociate_recovery_point_from_parent(Client, BackupVaultName, RecoveryPointArn, Input0, Options0) ->
    Method = delete,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), "/parentAssociation"],
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

%% @doc Returns the backup plan that is specified by the plan ID as a backup
%% template.
-spec export_backup_plan_template(aws_client:aws_client(), binary() | list()) ->
    {ok, export_backup_plan_template_output(), tuple()} |
    {error, any()} |
    {error, export_backup_plan_template_errors(), tuple()}.
export_backup_plan_template(Client, BackupPlanId)
  when is_map(Client) ->
    export_backup_plan_template(Client, BackupPlanId, #{}, #{}).

-spec export_backup_plan_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, export_backup_plan_template_output(), tuple()} |
    {error, any()} |
    {error, export_backup_plan_template_errors(), tuple()}.
export_backup_plan_template(Client, BackupPlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_backup_plan_template(Client, BackupPlanId, QueryMap, HeadersMap, []).

-spec export_backup_plan_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, export_backup_plan_template_output(), tuple()} |
    {error, any()} |
    {error, export_backup_plan_template_errors(), tuple()}.
export_backup_plan_template(Client, BackupPlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/toTemplate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns `BackupPlan' details for the specified
%% `BackupPlanId'.
%%
%% The
%% details are the body of a backup plan in JSON format, in addition to plan
%% metadata.
-spec get_backup_plan(aws_client:aws_client(), binary() | list()) ->
    {ok, get_backup_plan_output(), tuple()} |
    {error, any()} |
    {error, get_backup_plan_errors(), tuple()}.
get_backup_plan(Client, BackupPlanId)
  when is_map(Client) ->
    get_backup_plan(Client, BackupPlanId, #{}, #{}).

-spec get_backup_plan(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_backup_plan_output(), tuple()} |
    {error, any()} |
    {error, get_backup_plan_errors(), tuple()}.
get_backup_plan(Client, BackupPlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backup_plan(Client, BackupPlanId, QueryMap, HeadersMap, []).

-spec get_backup_plan(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_backup_plan_output(), tuple()} |
    {error, any()} |
    {error, get_backup_plan_errors(), tuple()}.
get_backup_plan(Client, BackupPlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"versionId">>, maps:get(<<"versionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a valid JSON document specifying a backup plan or an error.
-spec get_backup_plan_from_json(aws_client:aws_client(), get_backup_plan_from_json_input()) ->
    {ok, get_backup_plan_from_json_output(), tuple()} |
    {error, any()} |
    {error, get_backup_plan_from_json_errors(), tuple()}.
get_backup_plan_from_json(Client, Input) ->
    get_backup_plan_from_json(Client, Input, []).

-spec get_backup_plan_from_json(aws_client:aws_client(), get_backup_plan_from_json_input(), proplists:proplist()) ->
    {ok, get_backup_plan_from_json_output(), tuple()} |
    {error, any()} |
    {error, get_backup_plan_from_json_errors(), tuple()}.
get_backup_plan_from_json(Client, Input0, Options0) ->
    Method = post,
    Path = ["/backup/template/json/toPlan"],
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

%% @doc Returns the template specified by its `templateId' as a backup
%% plan.
-spec get_backup_plan_from_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_backup_plan_from_template_output(), tuple()} |
    {error, any()} |
    {error, get_backup_plan_from_template_errors(), tuple()}.
get_backup_plan_from_template(Client, BackupPlanTemplateId)
  when is_map(Client) ->
    get_backup_plan_from_template(Client, BackupPlanTemplateId, #{}, #{}).

-spec get_backup_plan_from_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_backup_plan_from_template_output(), tuple()} |
    {error, any()} |
    {error, get_backup_plan_from_template_errors(), tuple()}.
get_backup_plan_from_template(Client, BackupPlanTemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backup_plan_from_template(Client, BackupPlanTemplateId, QueryMap, HeadersMap, []).

-spec get_backup_plan_from_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_backup_plan_from_template_output(), tuple()} |
    {error, any()} |
    {error, get_backup_plan_from_template_errors(), tuple()}.
get_backup_plan_from_template(Client, BackupPlanTemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup/template/plans/", aws_util:encode_uri(BackupPlanTemplateId), "/toPlan"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns selection metadata and a document in JSON format that
%% specifies a list of
%% resources that are associated with a backup plan.
-spec get_backup_selection(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_backup_selection_output(), tuple()} |
    {error, any()} |
    {error, get_backup_selection_errors(), tuple()}.
get_backup_selection(Client, BackupPlanId, SelectionId)
  when is_map(Client) ->
    get_backup_selection(Client, BackupPlanId, SelectionId, #{}, #{}).

-spec get_backup_selection(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_backup_selection_output(), tuple()} |
    {error, any()} |
    {error, get_backup_selection_errors(), tuple()}.
get_backup_selection(Client, BackupPlanId, SelectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backup_selection(Client, BackupPlanId, SelectionId, QueryMap, HeadersMap, []).

-spec get_backup_selection(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_backup_selection_output(), tuple()} |
    {error, any()} |
    {error, get_backup_selection_errors(), tuple()}.
get_backup_selection(Client, BackupPlanId, SelectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/selections/", aws_util:encode_uri(SelectionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the access policy document that is associated with the named
%% backup
%% vault.
-spec get_backup_vault_access_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_backup_vault_access_policy_output(), tuple()} |
    {error, any()} |
    {error, get_backup_vault_access_policy_errors(), tuple()}.
get_backup_vault_access_policy(Client, BackupVaultName)
  when is_map(Client) ->
    get_backup_vault_access_policy(Client, BackupVaultName, #{}, #{}).

-spec get_backup_vault_access_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_backup_vault_access_policy_output(), tuple()} |
    {error, any()} |
    {error, get_backup_vault_access_policy_errors(), tuple()}.
get_backup_vault_access_policy(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backup_vault_access_policy(Client, BackupVaultName, QueryMap, HeadersMap, []).

-spec get_backup_vault_access_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_backup_vault_access_policy_output(), tuple()} |
    {error, any()} |
    {error, get_backup_vault_access_policy_errors(), tuple()}.
get_backup_vault_access_policy(Client, BackupVaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/access-policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns event notifications for the specified backup vault.
-spec get_backup_vault_notifications(aws_client:aws_client(), binary() | list()) ->
    {ok, get_backup_vault_notifications_output(), tuple()} |
    {error, any()} |
    {error, get_backup_vault_notifications_errors(), tuple()}.
get_backup_vault_notifications(Client, BackupVaultName)
  when is_map(Client) ->
    get_backup_vault_notifications(Client, BackupVaultName, #{}, #{}).

-spec get_backup_vault_notifications(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_backup_vault_notifications_output(), tuple()} |
    {error, any()} |
    {error, get_backup_vault_notifications_errors(), tuple()}.
get_backup_vault_notifications(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backup_vault_notifications(Client, BackupVaultName, QueryMap, HeadersMap, []).

-spec get_backup_vault_notifications(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_backup_vault_notifications_output(), tuple()} |
    {error, any()} |
    {error, get_backup_vault_notifications_errors(), tuple()}.
get_backup_vault_notifications(Client, BackupVaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/notification-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This action returns details for a specified legal hold.
%%
%% The details are the
%% body of a legal hold in JSON format, in addition to metadata.
-spec get_legal_hold(aws_client:aws_client(), binary() | list()) ->
    {ok, get_legal_hold_output(), tuple()} |
    {error, any()} |
    {error, get_legal_hold_errors(), tuple()}.
get_legal_hold(Client, LegalHoldId)
  when is_map(Client) ->
    get_legal_hold(Client, LegalHoldId, #{}, #{}).

-spec get_legal_hold(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_legal_hold_output(), tuple()} |
    {error, any()} |
    {error, get_legal_hold_errors(), tuple()}.
get_legal_hold(Client, LegalHoldId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_legal_hold(Client, LegalHoldId, QueryMap, HeadersMap, []).

-spec get_legal_hold(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_legal_hold_output(), tuple()} |
    {error, any()} |
    {error, get_legal_hold_errors(), tuple()}.
get_legal_hold(Client, LegalHoldId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/legal-holds/", aws_util:encode_uri(LegalHoldId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns the metadata and details specific to
%% the backup index associated with the specified recovery point.
-spec get_recovery_point_index_details(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_recovery_point_index_details_output(), tuple()} |
    {error, any()} |
    {error, get_recovery_point_index_details_errors(), tuple()}.
get_recovery_point_index_details(Client, BackupVaultName, RecoveryPointArn)
  when is_map(Client) ->
    get_recovery_point_index_details(Client, BackupVaultName, RecoveryPointArn, #{}, #{}).

-spec get_recovery_point_index_details(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_recovery_point_index_details_output(), tuple()} |
    {error, any()} |
    {error, get_recovery_point_index_details_errors(), tuple()}.
get_recovery_point_index_details(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recovery_point_index_details(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, []).

-spec get_recovery_point_index_details(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_recovery_point_index_details_output(), tuple()} |
    {error, any()} |
    {error, get_recovery_point_index_details_errors(), tuple()}.
get_recovery_point_index_details(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), "/index"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a set of metadata key-value pairs that were used to create
%% the backup.
-spec get_recovery_point_restore_metadata(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_recovery_point_restore_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_recovery_point_restore_metadata_errors(), tuple()}.
get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn)
  when is_map(Client) ->
    get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn, #{}, #{}).

-spec get_recovery_point_restore_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_recovery_point_restore_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_recovery_point_restore_metadata_errors(), tuple()}.
get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, []).

-spec get_recovery_point_restore_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_recovery_point_restore_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_recovery_point_restore_metadata_errors(), tuple()}.
get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), "/restore-metadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"backupVaultAccountId">>, maps:get(<<"backupVaultAccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This request returns the metadata for the specified restore job.
-spec get_restore_job_metadata(aws_client:aws_client(), binary() | list()) ->
    {ok, get_restore_job_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_restore_job_metadata_errors(), tuple()}.
get_restore_job_metadata(Client, RestoreJobId)
  when is_map(Client) ->
    get_restore_job_metadata(Client, RestoreJobId, #{}, #{}).

-spec get_restore_job_metadata(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_restore_job_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_restore_job_metadata_errors(), tuple()}.
get_restore_job_metadata(Client, RestoreJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_restore_job_metadata(Client, RestoreJobId, QueryMap, HeadersMap, []).

-spec get_restore_job_metadata(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_restore_job_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_restore_job_metadata_errors(), tuple()}.
get_restore_job_metadata(Client, RestoreJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-jobs/", aws_util:encode_uri(RestoreJobId), "/metadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This request returns the minimal required set of metadata needed to
%% start a restore job with secure default settings.
%%
%% `BackupVaultName'
%% and `RecoveryPointArn' are required parameters.
%% `BackupVaultAccountId' is an optional parameter.
-spec get_restore_testing_inferred_metadata(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_restore_testing_inferred_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_restore_testing_inferred_metadata_errors(), tuple()}.
get_restore_testing_inferred_metadata(Client, BackupVaultName, RecoveryPointArn)
  when is_map(Client) ->
    get_restore_testing_inferred_metadata(Client, BackupVaultName, RecoveryPointArn, #{}, #{}).

-spec get_restore_testing_inferred_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_restore_testing_inferred_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_restore_testing_inferred_metadata_errors(), tuple()}.
get_restore_testing_inferred_metadata(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_restore_testing_inferred_metadata(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, []).

-spec get_restore_testing_inferred_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_restore_testing_inferred_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_restore_testing_inferred_metadata_errors(), tuple()}.
get_restore_testing_inferred_metadata(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-testing/inferred-metadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"BackupVaultAccountId">>, maps:get(<<"BackupVaultAccountId">>, QueryMap, undefined)},
        {<<"BackupVaultName">>, BackupVaultName},
        {<<"RecoveryPointArn">>, RecoveryPointArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns `RestoreTestingPlan' details for the specified
%% `RestoreTestingPlanName'.
%%
%% The details are the body of a restore testing plan
%% in JSON format, in addition to plan metadata.
-spec get_restore_testing_plan(aws_client:aws_client(), binary() | list()) ->
    {ok, get_restore_testing_plan_output(), tuple()} |
    {error, any()} |
    {error, get_restore_testing_plan_errors(), tuple()}.
get_restore_testing_plan(Client, RestoreTestingPlanName)
  when is_map(Client) ->
    get_restore_testing_plan(Client, RestoreTestingPlanName, #{}, #{}).

-spec get_restore_testing_plan(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_restore_testing_plan_output(), tuple()} |
    {error, any()} |
    {error, get_restore_testing_plan_errors(), tuple()}.
get_restore_testing_plan(Client, RestoreTestingPlanName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_restore_testing_plan(Client, RestoreTestingPlanName, QueryMap, HeadersMap, []).

-spec get_restore_testing_plan(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_restore_testing_plan_output(), tuple()} |
    {error, any()} |
    {error, get_restore_testing_plan_errors(), tuple()}.
get_restore_testing_plan(Client, RestoreTestingPlanName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-testing/plans/", aws_util:encode_uri(RestoreTestingPlanName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns RestoreTestingSelection, which displays resources
%% and elements of the restore testing plan.
-spec get_restore_testing_selection(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_restore_testing_selection_output(), tuple()} |
    {error, any()} |
    {error, get_restore_testing_selection_errors(), tuple()}.
get_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName)
  when is_map(Client) ->
    get_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, #{}, #{}).

-spec get_restore_testing_selection(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_restore_testing_selection_output(), tuple()} |
    {error, any()} |
    {error, get_restore_testing_selection_errors(), tuple()}.
get_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, QueryMap, HeadersMap, []).

-spec get_restore_testing_selection(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_restore_testing_selection_output(), tuple()} |
    {error, any()} |
    {error, get_restore_testing_selection_errors(), tuple()}.
get_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-testing/plans/", aws_util:encode_uri(RestoreTestingPlanName), "/selections/", aws_util:encode_uri(RestoreTestingSelectionName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the Amazon Web Services resource types supported by Backup.
-spec get_supported_resource_types(aws_client:aws_client()) ->
    {ok, get_supported_resource_types_output(), tuple()} |
    {error, any()} |
    {error, get_supported_resource_types_errors(), tuple()}.
get_supported_resource_types(Client)
  when is_map(Client) ->
    get_supported_resource_types(Client, #{}, #{}).

-spec get_supported_resource_types(aws_client:aws_client(), map(), map()) ->
    {ok, get_supported_resource_types_output(), tuple()} |
    {error, any()} |
    {error, get_supported_resource_types_errors(), tuple()}.
get_supported_resource_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_supported_resource_types(Client, QueryMap, HeadersMap, []).

-spec get_supported_resource_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_supported_resource_types_output(), tuple()} |
    {error, any()} |
    {error, get_supported_resource_types_errors(), tuple()}.
get_supported_resource_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/supported-resource-types"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This is a request for a summary of backup jobs created
%% or running within the most recent 30 days.
%%
%% You can
%% include parameters AccountID, State, ResourceType, MessageCategory,
%% AggregationPeriod, MaxResults, or NextToken to filter
%% results.
%%
%% This request returns a summary that contains
%% Region, Account, State, ResourceType, MessageCategory,
%% StartTime, EndTime, and Count of included jobs.
-spec list_backup_job_summaries(aws_client:aws_client()) ->
    {ok, list_backup_job_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_backup_job_summaries_errors(), tuple()}.
list_backup_job_summaries(Client)
  when is_map(Client) ->
    list_backup_job_summaries(Client, #{}, #{}).

-spec list_backup_job_summaries(aws_client:aws_client(), map(), map()) ->
    {ok, list_backup_job_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_backup_job_summaries_errors(), tuple()}.
list_backup_job_summaries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_job_summaries(Client, QueryMap, HeadersMap, []).

-spec list_backup_job_summaries(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_backup_job_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_backup_job_summaries_errors(), tuple()}.
list_backup_job_summaries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/backup-job-summaries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AccountId">>, maps:get(<<"AccountId">>, QueryMap, undefined)},
        {<<"AggregationPeriod">>, maps:get(<<"AggregationPeriod">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"MessageCategory">>, maps:get(<<"MessageCategory">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"ResourceType">>, maps:get(<<"ResourceType">>, QueryMap, undefined)},
        {<<"State">>, maps:get(<<"State">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing backup jobs for an authenticated account
%% for the last 30
%% days.
%%
%% For a longer period of time, consider using these monitoring tools:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html.
-spec list_backup_jobs(aws_client:aws_client()) ->
    {ok, list_backup_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_backup_jobs_errors(), tuple()}.
list_backup_jobs(Client)
  when is_map(Client) ->
    list_backup_jobs(Client, #{}, #{}).

-spec list_backup_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_backup_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_backup_jobs_errors(), tuple()}.
list_backup_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_jobs(Client, QueryMap, HeadersMap, []).

-spec list_backup_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_backup_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_backup_jobs_errors(), tuple()}.
list_backup_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, maps:get(<<"accountId">>, QueryMap, undefined)},
        {<<"backupVaultName">>, maps:get(<<"backupVaultName">>, QueryMap, undefined)},
        {<<"completeAfter">>, maps:get(<<"completeAfter">>, QueryMap, undefined)},
        {<<"completeBefore">>, maps:get(<<"completeBefore">>, QueryMap, undefined)},
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"messageCategory">>, maps:get(<<"messageCategory">>, QueryMap, undefined)},
        {<<"parentJobId">>, maps:get(<<"parentJobId">>, QueryMap, undefined)},
        {<<"resourceArn">>, maps:get(<<"resourceArn">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the backup plan templates.
-spec list_backup_plan_templates(aws_client:aws_client()) ->
    {ok, list_backup_plan_templates_output(), tuple()} |
    {error, any()} |
    {error, list_backup_plan_templates_errors(), tuple()}.
list_backup_plan_templates(Client)
  when is_map(Client) ->
    list_backup_plan_templates(Client, #{}, #{}).

-spec list_backup_plan_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_backup_plan_templates_output(), tuple()} |
    {error, any()} |
    {error, list_backup_plan_templates_errors(), tuple()}.
list_backup_plan_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_plan_templates(Client, QueryMap, HeadersMap, []).

-spec list_backup_plan_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_backup_plan_templates_output(), tuple()} |
    {error, any()} |
    {error, list_backup_plan_templates_errors(), tuple()}.
list_backup_plan_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup/template/plans"],
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

%% @doc Returns version metadata of your backup plans, including Amazon
%% Resource Names (ARNs),
%% backup plan IDs, creation and deletion dates, plan names, and version IDs.
-spec list_backup_plan_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_backup_plan_versions_output(), tuple()} |
    {error, any()} |
    {error, list_backup_plan_versions_errors(), tuple()}.
list_backup_plan_versions(Client, BackupPlanId)
  when is_map(Client) ->
    list_backup_plan_versions(Client, BackupPlanId, #{}, #{}).

-spec list_backup_plan_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_backup_plan_versions_output(), tuple()} |
    {error, any()} |
    {error, list_backup_plan_versions_errors(), tuple()}.
list_backup_plan_versions(Client, BackupPlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_plan_versions(Client, BackupPlanId, QueryMap, HeadersMap, []).

-spec list_backup_plan_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_backup_plan_versions_output(), tuple()} |
    {error, any()} |
    {error, list_backup_plan_versions_errors(), tuple()}.
list_backup_plan_versions(Client, BackupPlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/versions"],
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

%% @doc Lists the active backup plans for the account.
-spec list_backup_plans(aws_client:aws_client()) ->
    {ok, list_backup_plans_output(), tuple()} |
    {error, any()} |
    {error, list_backup_plans_errors(), tuple()}.
list_backup_plans(Client)
  when is_map(Client) ->
    list_backup_plans(Client, #{}, #{}).

-spec list_backup_plans(aws_client:aws_client(), map(), map()) ->
    {ok, list_backup_plans_output(), tuple()} |
    {error, any()} |
    {error, list_backup_plans_errors(), tuple()}.
list_backup_plans(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_plans(Client, QueryMap, HeadersMap, []).

-spec list_backup_plans(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_backup_plans_output(), tuple()} |
    {error, any()} |
    {error, list_backup_plans_errors(), tuple()}.
list_backup_plans(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup/plans"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeDeleted">>, maps:get(<<"includeDeleted">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array containing metadata of the resources associated with
%% the target backup
%% plan.
-spec list_backup_selections(aws_client:aws_client(), binary() | list()) ->
    {ok, list_backup_selections_output(), tuple()} |
    {error, any()} |
    {error, list_backup_selections_errors(), tuple()}.
list_backup_selections(Client, BackupPlanId)
  when is_map(Client) ->
    list_backup_selections(Client, BackupPlanId, #{}, #{}).

-spec list_backup_selections(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_backup_selections_output(), tuple()} |
    {error, any()} |
    {error, list_backup_selections_errors(), tuple()}.
list_backup_selections(Client, BackupPlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_selections(Client, BackupPlanId, QueryMap, HeadersMap, []).

-spec list_backup_selections(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_backup_selections_output(), tuple()} |
    {error, any()} |
    {error, list_backup_selections_errors(), tuple()}.
list_backup_selections(Client, BackupPlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/selections"],
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

%% @doc Returns a list of recovery point storage containers along with
%% information about
%% them.
-spec list_backup_vaults(aws_client:aws_client()) ->
    {ok, list_backup_vaults_output(), tuple()} |
    {error, any()} |
    {error, list_backup_vaults_errors(), tuple()}.
list_backup_vaults(Client)
  when is_map(Client) ->
    list_backup_vaults(Client, #{}, #{}).

-spec list_backup_vaults(aws_client:aws_client(), map(), map()) ->
    {ok, list_backup_vaults_output(), tuple()} |
    {error, any()} |
    {error, list_backup_vaults_errors(), tuple()}.
list_backup_vaults(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_vaults(Client, QueryMap, HeadersMap, []).

-spec list_backup_vaults(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_backup_vaults_output(), tuple()} |
    {error, any()} |
    {error, list_backup_vaults_errors(), tuple()}.
list_backup_vaults(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-vaults"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"shared">>, maps:get(<<"shared">>, QueryMap, undefined)},
        {<<"vaultType">>, maps:get(<<"vaultType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This request obtains a list of copy jobs created
%% or running within the the most recent 30 days.
%%
%% You can
%% include parameters AccountID, State, ResourceType, MessageCategory,
%% AggregationPeriod, MaxResults, or NextToken to filter
%% results.
%%
%% This request returns a summary that contains
%% Region, Account, State, RestourceType, MessageCategory,
%% StartTime, EndTime, and Count of included jobs.
-spec list_copy_job_summaries(aws_client:aws_client()) ->
    {ok, list_copy_job_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_copy_job_summaries_errors(), tuple()}.
list_copy_job_summaries(Client)
  when is_map(Client) ->
    list_copy_job_summaries(Client, #{}, #{}).

-spec list_copy_job_summaries(aws_client:aws_client(), map(), map()) ->
    {ok, list_copy_job_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_copy_job_summaries_errors(), tuple()}.
list_copy_job_summaries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_copy_job_summaries(Client, QueryMap, HeadersMap, []).

-spec list_copy_job_summaries(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_copy_job_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_copy_job_summaries_errors(), tuple()}.
list_copy_job_summaries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/copy-job-summaries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AccountId">>, maps:get(<<"AccountId">>, QueryMap, undefined)},
        {<<"AggregationPeriod">>, maps:get(<<"AggregationPeriod">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"MessageCategory">>, maps:get(<<"MessageCategory">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"ResourceType">>, maps:get(<<"ResourceType">>, QueryMap, undefined)},
        {<<"State">>, maps:get(<<"State">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata about your copy jobs.
-spec list_copy_jobs(aws_client:aws_client()) ->
    {ok, list_copy_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_copy_jobs_errors(), tuple()}.
list_copy_jobs(Client)
  when is_map(Client) ->
    list_copy_jobs(Client, #{}, #{}).

-spec list_copy_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_copy_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_copy_jobs_errors(), tuple()}.
list_copy_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_copy_jobs(Client, QueryMap, HeadersMap, []).

-spec list_copy_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_copy_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_copy_jobs_errors(), tuple()}.
list_copy_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/copy-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, maps:get(<<"accountId">>, QueryMap, undefined)},
        {<<"completeAfter">>, maps:get(<<"completeAfter">>, QueryMap, undefined)},
        {<<"completeBefore">>, maps:get(<<"completeBefore">>, QueryMap, undefined)},
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"destinationVaultArn">>, maps:get(<<"destinationVaultArn">>, QueryMap, undefined)},
        {<<"messageCategory">>, maps:get(<<"messageCategory">>, QueryMap, undefined)},
        {<<"parentJobId">>, maps:get(<<"parentJobId">>, QueryMap, undefined)},
        {<<"resourceArn">>, maps:get(<<"resourceArn">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all frameworks for an Amazon Web Services account
%% and Amazon Web Services Region.
-spec list_frameworks(aws_client:aws_client()) ->
    {ok, list_frameworks_output(), tuple()} |
    {error, any()} |
    {error, list_frameworks_errors(), tuple()}.
list_frameworks(Client)
  when is_map(Client) ->
    list_frameworks(Client, #{}, #{}).

-spec list_frameworks(aws_client:aws_client(), map(), map()) ->
    {ok, list_frameworks_output(), tuple()} |
    {error, any()} |
    {error, list_frameworks_errors(), tuple()}.
list_frameworks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_frameworks(Client, QueryMap, HeadersMap, []).

-spec list_frameworks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_frameworks_output(), tuple()} |
    {error, any()} |
    {error, list_frameworks_errors(), tuple()}.
list_frameworks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/frameworks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns a list of recovery points that have an
%% associated index, belonging to the specified account.
%%
%% Optional parameters you can include are: MaxResults;
%% NextToken; SourceResourceArns; CreatedBefore; CreatedAfter;
%% and ResourceType.
-spec list_indexed_recovery_points(aws_client:aws_client()) ->
    {ok, list_indexed_recovery_points_output(), tuple()} |
    {error, any()} |
    {error, list_indexed_recovery_points_errors(), tuple()}.
list_indexed_recovery_points(Client)
  when is_map(Client) ->
    list_indexed_recovery_points(Client, #{}, #{}).

-spec list_indexed_recovery_points(aws_client:aws_client(), map(), map()) ->
    {ok, list_indexed_recovery_points_output(), tuple()} |
    {error, any()} |
    {error, list_indexed_recovery_points_errors(), tuple()}.
list_indexed_recovery_points(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_indexed_recovery_points(Client, QueryMap, HeadersMap, []).

-spec list_indexed_recovery_points(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_indexed_recovery_points_output(), tuple()} |
    {error, any()} |
    {error, list_indexed_recovery_points_errors(), tuple()}.
list_indexed_recovery_points(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/indexes/recovery-point"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"indexStatus">>, maps:get(<<"indexStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)},
        {<<"sourceResourceArn">>, maps:get(<<"sourceResourceArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This action returns metadata about active and previous legal holds.
-spec list_legal_holds(aws_client:aws_client()) ->
    {ok, list_legal_holds_output(), tuple()} |
    {error, any()} |
    {error, list_legal_holds_errors(), tuple()}.
list_legal_holds(Client)
  when is_map(Client) ->
    list_legal_holds(Client, #{}, #{}).

-spec list_legal_holds(aws_client:aws_client(), map(), map()) ->
    {ok, list_legal_holds_output(), tuple()} |
    {error, any()} |
    {error, list_legal_holds_errors(), tuple()}.
list_legal_holds(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_legal_holds(Client, QueryMap, HeadersMap, []).

-spec list_legal_holds(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_legal_holds_output(), tuple()} |
    {error, any()} |
    {error, list_legal_holds_errors(), tuple()}.
list_legal_holds(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/legal-holds"],
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

%% @doc Returns an array of resources successfully backed up by Backup,
%% including
%% the time the resource was saved, an Amazon Resource Name (ARN) of the
%% resource, and a
%% resource type.
-spec list_protected_resources(aws_client:aws_client()) ->
    {ok, list_protected_resources_output(), tuple()} |
    {error, any()} |
    {error, list_protected_resources_errors(), tuple()}.
list_protected_resources(Client)
  when is_map(Client) ->
    list_protected_resources(Client, #{}, #{}).

-spec list_protected_resources(aws_client:aws_client(), map(), map()) ->
    {ok, list_protected_resources_output(), tuple()} |
    {error, any()} |
    {error, list_protected_resources_errors(), tuple()}.
list_protected_resources(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_protected_resources(Client, QueryMap, HeadersMap, []).

-spec list_protected_resources(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_protected_resources_output(), tuple()} |
    {error, any()} |
    {error, list_protected_resources_errors(), tuple()}.
list_protected_resources(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resources"],
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

%% @doc This request lists the protected resources corresponding to each
%% backup vault.
-spec list_protected_resources_by_backup_vault(aws_client:aws_client(), binary() | list()) ->
    {ok, list_protected_resources_by_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, list_protected_resources_by_backup_vault_errors(), tuple()}.
list_protected_resources_by_backup_vault(Client, BackupVaultName)
  when is_map(Client) ->
    list_protected_resources_by_backup_vault(Client, BackupVaultName, #{}, #{}).

-spec list_protected_resources_by_backup_vault(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_protected_resources_by_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, list_protected_resources_by_backup_vault_errors(), tuple()}.
list_protected_resources_by_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_protected_resources_by_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap, []).

-spec list_protected_resources_by_backup_vault(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_protected_resources_by_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, list_protected_resources_by_backup_vault_errors(), tuple()}.
list_protected_resources_by_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/resources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"backupVaultAccountId">>, maps:get(<<"backupVaultAccountId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about the recovery points stored in a
%% backup vault.
-spec list_recovery_points_by_backup_vault(aws_client:aws_client(), binary() | list()) ->
    {ok, list_recovery_points_by_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_by_backup_vault_errors(), tuple()}.
list_recovery_points_by_backup_vault(Client, BackupVaultName)
  when is_map(Client) ->
    list_recovery_points_by_backup_vault(Client, BackupVaultName, #{}, #{}).

-spec list_recovery_points_by_backup_vault(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_recovery_points_by_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_by_backup_vault_errors(), tuple()}.
list_recovery_points_by_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recovery_points_by_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap, []).

-spec list_recovery_points_by_backup_vault(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_recovery_points_by_backup_vault_output(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_by_backup_vault_errors(), tuple()}.
list_recovery_points_by_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"backupVaultAccountId">>, maps:get(<<"backupVaultAccountId">>, QueryMap, undefined)},
        {<<"backupPlanId">>, maps:get(<<"backupPlanId">>, QueryMap, undefined)},
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"parentRecoveryPointArn">>, maps:get(<<"parentRecoveryPointArn">>, QueryMap, undefined)},
        {<<"resourceArn">>, maps:get(<<"resourceArn">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This action returns recovery point ARNs (Amazon Resource Names) of
%% the
%% specified legal hold.
-spec list_recovery_points_by_legal_hold(aws_client:aws_client(), binary() | list()) ->
    {ok, list_recovery_points_by_legal_hold_output(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_by_legal_hold_errors(), tuple()}.
list_recovery_points_by_legal_hold(Client, LegalHoldId)
  when is_map(Client) ->
    list_recovery_points_by_legal_hold(Client, LegalHoldId, #{}, #{}).

-spec list_recovery_points_by_legal_hold(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_recovery_points_by_legal_hold_output(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_by_legal_hold_errors(), tuple()}.
list_recovery_points_by_legal_hold(Client, LegalHoldId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recovery_points_by_legal_hold(Client, LegalHoldId, QueryMap, HeadersMap, []).

-spec list_recovery_points_by_legal_hold(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_recovery_points_by_legal_hold_output(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_by_legal_hold_errors(), tuple()}.
list_recovery_points_by_legal_hold(Client, LegalHoldId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/legal-holds/", aws_util:encode_uri(LegalHoldId), "/recovery-points"],
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

%% @doc The information about the recovery points of the type specified by a
%% resource Amazon Resource Name (ARN).
%%
%% For Amazon EFS and Amazon EC2, this action only lists recovery points
%% created by Backup.
-spec list_recovery_points_by_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_recovery_points_by_resource_output(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_by_resource_errors(), tuple()}.
list_recovery_points_by_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_recovery_points_by_resource(Client, ResourceArn, #{}, #{}).

-spec list_recovery_points_by_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_recovery_points_by_resource_output(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_by_resource_errors(), tuple()}.
list_recovery_points_by_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recovery_points_by_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_recovery_points_by_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_recovery_points_by_resource_output(), tuple()} |
    {error, any()} |
    {error, list_recovery_points_by_resource_errors(), tuple()}.
list_recovery_points_by_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/recovery-points"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"managedByAWSBackupOnly">>, maps:get(<<"managedByAWSBackupOnly">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about your report jobs.
-spec list_report_jobs(aws_client:aws_client()) ->
    {ok, list_report_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_report_jobs_errors(), tuple()}.
list_report_jobs(Client)
  when is_map(Client) ->
    list_report_jobs(Client, #{}, #{}).

-spec list_report_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_report_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_report_jobs_errors(), tuple()}.
list_report_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_report_jobs(Client, QueryMap, HeadersMap, []).

-spec list_report_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_report_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_report_jobs_errors(), tuple()}.
list_report_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/report-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"CreationAfter">>, maps:get(<<"CreationAfter">>, QueryMap, undefined)},
        {<<"CreationBefore">>, maps:get(<<"CreationBefore">>, QueryMap, undefined)},
        {<<"ReportPlanName">>, maps:get(<<"ReportPlanName">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of your report plans.
%%
%% For detailed information about a single report
%% plan, use `DescribeReportPlan'.
-spec list_report_plans(aws_client:aws_client()) ->
    {ok, list_report_plans_output(), tuple()} |
    {error, any()} |
    {error, list_report_plans_errors(), tuple()}.
list_report_plans(Client)
  when is_map(Client) ->
    list_report_plans(Client, #{}, #{}).

-spec list_report_plans(aws_client:aws_client(), map(), map()) ->
    {ok, list_report_plans_output(), tuple()} |
    {error, any()} |
    {error, list_report_plans_errors(), tuple()}.
list_report_plans(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_report_plans(Client, QueryMap, HeadersMap, []).

-spec list_report_plans(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_report_plans_output(), tuple()} |
    {error, any()} |
    {error, list_report_plans_errors(), tuple()}.
list_report_plans(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/report-plans"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of restore access backup vaults associated with a
%% specified backup vault.
-spec list_restore_access_backup_vaults(aws_client:aws_client(), binary() | list()) ->
    {ok, list_restore_access_backup_vaults_output(), tuple()} |
    {error, any()} |
    {error, list_restore_access_backup_vaults_errors(), tuple()}.
list_restore_access_backup_vaults(Client, BackupVaultName)
  when is_map(Client) ->
    list_restore_access_backup_vaults(Client, BackupVaultName, #{}, #{}).

-spec list_restore_access_backup_vaults(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_restore_access_backup_vaults_output(), tuple()} |
    {error, any()} |
    {error, list_restore_access_backup_vaults_errors(), tuple()}.
list_restore_access_backup_vaults(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_access_backup_vaults(Client, BackupVaultName, QueryMap, HeadersMap, []).

-spec list_restore_access_backup_vaults(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_restore_access_backup_vaults_output(), tuple()} |
    {error, any()} |
    {error, list_restore_access_backup_vaults_errors(), tuple()}.
list_restore_access_backup_vaults(Client, BackupVaultName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/logically-air-gapped-backup-vaults/", aws_util:encode_uri(BackupVaultName), "/restore-access-backup-vaults"],
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

%% @doc This request obtains a summary of restore jobs created
%% or running within the the most recent 30 days.
%%
%% You can
%% include parameters AccountID, State, ResourceType,
%% AggregationPeriod, MaxResults, or NextToken to filter
%% results.
%%
%% This request returns a summary that contains
%% Region, Account, State, RestourceType, MessageCategory,
%% StartTime, EndTime, and Count of included jobs.
-spec list_restore_job_summaries(aws_client:aws_client()) ->
    {ok, list_restore_job_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_restore_job_summaries_errors(), tuple()}.
list_restore_job_summaries(Client)
  when is_map(Client) ->
    list_restore_job_summaries(Client, #{}, #{}).

-spec list_restore_job_summaries(aws_client:aws_client(), map(), map()) ->
    {ok, list_restore_job_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_restore_job_summaries_errors(), tuple()}.
list_restore_job_summaries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_job_summaries(Client, QueryMap, HeadersMap, []).

-spec list_restore_job_summaries(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_restore_job_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_restore_job_summaries_errors(), tuple()}.
list_restore_job_summaries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/restore-job-summaries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AccountId">>, maps:get(<<"AccountId">>, QueryMap, undefined)},
        {<<"AggregationPeriod">>, maps:get(<<"AggregationPeriod">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"ResourceType">>, maps:get(<<"ResourceType">>, QueryMap, undefined)},
        {<<"State">>, maps:get(<<"State">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of jobs that Backup initiated to restore a saved
%% resource,
%% including details about the recovery process.
-spec list_restore_jobs(aws_client:aws_client()) ->
    {ok, list_restore_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_restore_jobs_errors(), tuple()}.
list_restore_jobs(Client)
  when is_map(Client) ->
    list_restore_jobs(Client, #{}, #{}).

-spec list_restore_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_restore_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_restore_jobs_errors(), tuple()}.
list_restore_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_jobs(Client, QueryMap, HeadersMap, []).

-spec list_restore_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_restore_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_restore_jobs_errors(), tuple()}.
list_restore_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, maps:get(<<"accountId">>, QueryMap, undefined)},
        {<<"completeAfter">>, maps:get(<<"completeAfter">>, QueryMap, undefined)},
        {<<"completeBefore">>, maps:get(<<"completeBefore">>, QueryMap, undefined)},
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)},
        {<<"restoreTestingPlanArn">>, maps:get(<<"restoreTestingPlanArn">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This returns restore jobs that contain the specified protected
%% resource.
%%
%% You must include `ResourceArn'. You can optionally include
%% `NextToken', `ByStatus', `MaxResults',
%% `ByRecoveryPointCreationDateAfter' , and
%% `ByRecoveryPointCreationDateBefore'.
-spec list_restore_jobs_by_protected_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_restore_jobs_by_protected_resource_output(), tuple()} |
    {error, any()} |
    {error, list_restore_jobs_by_protected_resource_errors(), tuple()}.
list_restore_jobs_by_protected_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_restore_jobs_by_protected_resource(Client, ResourceArn, #{}, #{}).

-spec list_restore_jobs_by_protected_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_restore_jobs_by_protected_resource_output(), tuple()} |
    {error, any()} |
    {error, list_restore_jobs_by_protected_resource_errors(), tuple()}.
list_restore_jobs_by_protected_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_jobs_by_protected_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_restore_jobs_by_protected_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_restore_jobs_by_protected_resource_output(), tuple()} |
    {error, any()} |
    {error, list_restore_jobs_by_protected_resource_errors(), tuple()}.
list_restore_jobs_by_protected_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/restore-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"recoveryPointCreationDateAfter">>, maps:get(<<"recoveryPointCreationDateAfter">>, QueryMap, undefined)},
        {<<"recoveryPointCreationDateBefore">>, maps:get(<<"recoveryPointCreationDateBefore">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of restore testing plans.
-spec list_restore_testing_plans(aws_client:aws_client()) ->
    {ok, list_restore_testing_plans_output(), tuple()} |
    {error, any()} |
    {error, list_restore_testing_plans_errors(), tuple()}.
list_restore_testing_plans(Client)
  when is_map(Client) ->
    list_restore_testing_plans(Client, #{}, #{}).

-spec list_restore_testing_plans(aws_client:aws_client(), map(), map()) ->
    {ok, list_restore_testing_plans_output(), tuple()} |
    {error, any()} |
    {error, list_restore_testing_plans_errors(), tuple()}.
list_restore_testing_plans(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_testing_plans(Client, QueryMap, HeadersMap, []).

-spec list_restore_testing_plans(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_restore_testing_plans_output(), tuple()} |
    {error, any()} |
    {error, list_restore_testing_plans_errors(), tuple()}.
list_restore_testing_plans(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-testing/plans"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of restore testing selections.
%%
%% Can be filtered
%% by `MaxResults' and `RestoreTestingPlanName'.
-spec list_restore_testing_selections(aws_client:aws_client(), binary() | list()) ->
    {ok, list_restore_testing_selections_output(), tuple()} |
    {error, any()} |
    {error, list_restore_testing_selections_errors(), tuple()}.
list_restore_testing_selections(Client, RestoreTestingPlanName)
  when is_map(Client) ->
    list_restore_testing_selections(Client, RestoreTestingPlanName, #{}, #{}).

-spec list_restore_testing_selections(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_restore_testing_selections_output(), tuple()} |
    {error, any()} |
    {error, list_restore_testing_selections_errors(), tuple()}.
list_restore_testing_selections(Client, RestoreTestingPlanName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_testing_selections(Client, RestoreTestingPlanName, QueryMap, HeadersMap, []).

-spec list_restore_testing_selections(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_restore_testing_selections_output(), tuple()} |
    {error, any()} |
    {error, list_restore_testing_selections_errors(), tuple()}.
list_restore_testing_selections(Client, RestoreTestingPlanName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/restore-testing/plans/", aws_util:encode_uri(RestoreTestingPlanName), "/selections"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the tags assigned to the resource, such as a target recovery
%% point, backup plan,
%% or backup vault.
%%
%% This operation returns results depending on the resource type used in the
%% value for
%% `resourceArn'. For example, recovery points of Amazon DynamoDB with
%% Advanced Settings have an ARN (Amazon Resource Name) that begins with
%% `arn:aws:backup'. Recovery points (backups) of DynamoDB without
%% Advanced Settings enabled have an ARN that begins with
%% `arn:aws:dynamodb'.
%%
%% When this operation is called and when you include values of
%% `resourceArn'
%% that have an ARN other than `arn:aws:backup', it may return one of the
%% exceptions listed below. To prevent this exception, include only values
%% representing
%% resource types that are fully managed by Backup. These have an ARN that
%% begins
%% `arn:aws:backup' and they are noted in the Feature availability by
%% resource:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
%% table.
-spec list_tags(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_output(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, ResourceArn)
  when is_map(Client) ->
    list_tags(Client, ResourceArn, #{}, #{}).

-spec list_tags(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_output(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_output(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Sets a resource-based policy that is used to manage access
%% permissions on the target
%% backup vault.
%%
%% Requires a backup vault name and an access policy document in JSON
%% format.
-spec put_backup_vault_access_policy(aws_client:aws_client(), binary() | list(), put_backup_vault_access_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_backup_vault_access_policy_errors(), tuple()}.
put_backup_vault_access_policy(Client, BackupVaultName, Input) ->
    put_backup_vault_access_policy(Client, BackupVaultName, Input, []).

-spec put_backup_vault_access_policy(aws_client:aws_client(), binary() | list(), put_backup_vault_access_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_backup_vault_access_policy_errors(), tuple()}.
put_backup_vault_access_policy(Client, BackupVaultName, Input0, Options0) ->
    Method = put,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/access-policy"],
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

%% @doc Applies Backup Vault Lock to a backup vault, preventing attempts to
%% delete
%% any recovery point stored in or created in a backup vault.
%%
%% Vault Lock also prevents
%% attempts to update the lifecycle policy that controls the retention period
%% of any recovery
%% point currently stored in a backup vault. If specified, Vault Lock
%% enforces a minimum and
%% maximum retention period for future backup and copy jobs that target a
%% backup vault.
%%
%% Backup Vault Lock has been assessed by Cohasset Associates for use in
%% environments
%% that are subject to SEC 17a-4, CFTC, and FINRA regulations. For more
%% information about
%% how Backup Vault Lock relates to these regulations, see the
%% Cohasset Associates
%% Compliance Assessment.:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/samples/cohassetreport.zip
%%
%% For more information, see Backup Vault Lock:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html.
-spec put_backup_vault_lock_configuration(aws_client:aws_client(), binary() | list(), put_backup_vault_lock_configuration_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_backup_vault_lock_configuration_errors(), tuple()}.
put_backup_vault_lock_configuration(Client, BackupVaultName, Input) ->
    put_backup_vault_lock_configuration(Client, BackupVaultName, Input, []).

-spec put_backup_vault_lock_configuration(aws_client:aws_client(), binary() | list(), put_backup_vault_lock_configuration_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_backup_vault_lock_configuration_errors(), tuple()}.
put_backup_vault_lock_configuration(Client, BackupVaultName, Input0, Options0) ->
    Method = put,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/vault-lock"],
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

%% @doc Turns on notifications on a backup vault for the specified topic and
%% events.
-spec put_backup_vault_notifications(aws_client:aws_client(), binary() | list(), put_backup_vault_notifications_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_backup_vault_notifications_errors(), tuple()}.
put_backup_vault_notifications(Client, BackupVaultName, Input) ->
    put_backup_vault_notifications(Client, BackupVaultName, Input, []).

-spec put_backup_vault_notifications(aws_client:aws_client(), binary() | list(), put_backup_vault_notifications_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_backup_vault_notifications_errors(), tuple()}.
put_backup_vault_notifications(Client, BackupVaultName, Input0, Options0) ->
    Method = put,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/notification-configuration"],
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

%% @doc This request allows you to send your independent self-run
%% restore test validation results.
%%
%% `RestoreJobId' and `ValidationStatus'
%% are required. Optionally, you can input a
%% `ValidationStatusMessage'.
-spec put_restore_validation_result(aws_client:aws_client(), binary() | list(), put_restore_validation_result_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_restore_validation_result_errors(), tuple()}.
put_restore_validation_result(Client, RestoreJobId, Input) ->
    put_restore_validation_result(Client, RestoreJobId, Input, []).

-spec put_restore_validation_result(aws_client:aws_client(), binary() | list(), put_restore_validation_result_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_restore_validation_result_errors(), tuple()}.
put_restore_validation_result(Client, RestoreJobId, Input0, Options0) ->
    Method = put,
    Path = ["/restore-jobs/", aws_util:encode_uri(RestoreJobId), "/validations"],
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

%% @doc Revokes access to a restore access backup vault, removing the ability
%% to restore from its recovery points and permanently deleting the vault.
-spec revoke_restore_access_backup_vault(aws_client:aws_client(), binary() | list(), binary() | list(), revoke_restore_access_backup_vault_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_restore_access_backup_vault_errors(), tuple()}.
revoke_restore_access_backup_vault(Client, BackupVaultName, RestoreAccessBackupVaultArn, Input) ->
    revoke_restore_access_backup_vault(Client, BackupVaultName, RestoreAccessBackupVaultArn, Input, []).

-spec revoke_restore_access_backup_vault(aws_client:aws_client(), binary() | list(), binary() | list(), revoke_restore_access_backup_vault_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, revoke_restore_access_backup_vault_errors(), tuple()}.
revoke_restore_access_backup_vault(Client, BackupVaultName, RestoreAccessBackupVaultArn, Input0, Options0) ->
    Method = delete,
    Path = ["/logically-air-gapped-backup-vaults/", aws_util:encode_uri(BackupVaultName), "/restore-access-backup-vaults/", aws_util:encode_uri(RestoreAccessBackupVaultArn), ""],
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
                     {<<"requesterComment">>, <<"RequesterComment">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts an on-demand backup job for the specified resource.
-spec start_backup_job(aws_client:aws_client(), start_backup_job_input()) ->
    {ok, start_backup_job_output(), tuple()} |
    {error, any()} |
    {error, start_backup_job_errors(), tuple()}.
start_backup_job(Client, Input) ->
    start_backup_job(Client, Input, []).

-spec start_backup_job(aws_client:aws_client(), start_backup_job_input(), proplists:proplist()) ->
    {ok, start_backup_job_output(), tuple()} |
    {error, any()} |
    {error, start_backup_job_errors(), tuple()}.
start_backup_job(Client, Input0, Options0) ->
    Method = put,
    Path = ["/backup-jobs"],
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

%% @doc Starts a job to create a one-time copy of the specified resource.
%%
%% Does not support continuous backups.
-spec start_copy_job(aws_client:aws_client(), start_copy_job_input()) ->
    {ok, start_copy_job_output(), tuple()} |
    {error, any()} |
    {error, start_copy_job_errors(), tuple()}.
start_copy_job(Client, Input) ->
    start_copy_job(Client, Input, []).

-spec start_copy_job(aws_client:aws_client(), start_copy_job_input(), proplists:proplist()) ->
    {ok, start_copy_job_output(), tuple()} |
    {error, any()} |
    {error, start_copy_job_errors(), tuple()}.
start_copy_job(Client, Input0, Options0) ->
    Method = put,
    Path = ["/copy-jobs"],
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

%% @doc Starts an on-demand report job for the specified report plan.
-spec start_report_job(aws_client:aws_client(), binary() | list(), start_report_job_input()) ->
    {ok, start_report_job_output(), tuple()} |
    {error, any()} |
    {error, start_report_job_errors(), tuple()}.
start_report_job(Client, ReportPlanName, Input) ->
    start_report_job(Client, ReportPlanName, Input, []).

-spec start_report_job(aws_client:aws_client(), binary() | list(), start_report_job_input(), proplists:proplist()) ->
    {ok, start_report_job_output(), tuple()} |
    {error, any()} |
    {error, start_report_job_errors(), tuple()}.
start_report_job(Client, ReportPlanName, Input0, Options0) ->
    Method = post,
    Path = ["/audit/report-jobs/", aws_util:encode_uri(ReportPlanName), ""],
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

%% @doc Recovers the saved resource identified by an Amazon Resource Name
%% (ARN).
-spec start_restore_job(aws_client:aws_client(), start_restore_job_input()) ->
    {ok, start_restore_job_output(), tuple()} |
    {error, any()} |
    {error, start_restore_job_errors(), tuple()}.
start_restore_job(Client, Input) ->
    start_restore_job(Client, Input, []).

-spec start_restore_job(aws_client:aws_client(), start_restore_job_input(), proplists:proplist()) ->
    {ok, start_restore_job_output(), tuple()} |
    {error, any()} |
    {error, start_restore_job_errors(), tuple()}.
start_restore_job(Client, Input0, Options0) ->
    Method = put,
    Path = ["/restore-jobs"],
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

%% @doc Attempts to cancel a job to create a one-time backup of a resource.
%%
%% This action is not supported for the following services:
%%
%% Amazon Aurora
%%
%% Amazon DocumentDB (with MongoDB compatibility)
%%
%% Amazon FSx for Lustre
%%
%% Amazon FSx for NetApp ONTAP
%%
%% Amazon FSx for OpenZFS
%%
%% Amazon FSx for Windows File Server
%%
%% Amazon Neptune
%%
%% SAP HANA databases on Amazon EC2 instances
%%
%% Amazon RDS
-spec stop_backup_job(aws_client:aws_client(), binary() | list(), stop_backup_job_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_backup_job_errors(), tuple()}.
stop_backup_job(Client, BackupJobId, Input) ->
    stop_backup_job(Client, BackupJobId, Input, []).

-spec stop_backup_job(aws_client:aws_client(), binary() | list(), stop_backup_job_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_backup_job_errors(), tuple()}.
stop_backup_job(Client, BackupJobId, Input0, Options0) ->
    Method = post,
    Path = ["/backup-jobs/", aws_util:encode_uri(BackupJobId), ""],
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

%% @doc Assigns a set of key-value pairs to a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
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

%% @doc Removes a set of key-value pairs from a recovery point, backup plan,
%% or backup vault
%% identified by an Amazon Resource Name (ARN)
%%
%% This API is not supported for recovery points for resource types
%% including Aurora, Amazon DocumentDB.
%%
%% Amazon EBS,
%% Amazon FSx, Neptune, and Amazon RDS.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/untag/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Updates the specified backup plan.
%%
%% The new version is uniquely identified by its ID.
-spec update_backup_plan(aws_client:aws_client(), binary() | list(), update_backup_plan_input()) ->
    {ok, update_backup_plan_output(), tuple()} |
    {error, any()} |
    {error, update_backup_plan_errors(), tuple()}.
update_backup_plan(Client, BackupPlanId, Input) ->
    update_backup_plan(Client, BackupPlanId, Input, []).

-spec update_backup_plan(aws_client:aws_client(), binary() | list(), update_backup_plan_input(), proplists:proplist()) ->
    {ok, update_backup_plan_output(), tuple()} |
    {error, any()} |
    {error, update_backup_plan_errors(), tuple()}.
update_backup_plan(Client, BackupPlanId, Input0, Options0) ->
    Method = post,
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), ""],
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

%% @doc Updates the specified framework.
-spec update_framework(aws_client:aws_client(), binary() | list(), update_framework_input()) ->
    {ok, update_framework_output(), tuple()} |
    {error, any()} |
    {error, update_framework_errors(), tuple()}.
update_framework(Client, FrameworkName, Input) ->
    update_framework(Client, FrameworkName, Input, []).

-spec update_framework(aws_client:aws_client(), binary() | list(), update_framework_input(), proplists:proplist()) ->
    {ok, update_framework_output(), tuple()} |
    {error, any()} |
    {error, update_framework_errors(), tuple()}.
update_framework(Client, FrameworkName, Input0, Options0) ->
    Method = put,
    Path = ["/audit/frameworks/", aws_util:encode_uri(FrameworkName), ""],
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

%% @doc Updates whether the Amazon Web Services account is opted in to
%% cross-account backup.
%%
%% Returns an error if the account is not an Organizations management
%% account. Use the
%% `DescribeGlobalSettings' API to determine the current settings.
-spec update_global_settings(aws_client:aws_client(), update_global_settings_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_global_settings_errors(), tuple()}.
update_global_settings(Client, Input) ->
    update_global_settings(Client, Input, []).

-spec update_global_settings(aws_client:aws_client(), update_global_settings_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_global_settings_errors(), tuple()}.
update_global_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/global-settings"],
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

%% @doc This operation updates the settings of a recovery point index.
%%
%% Required: BackupVaultName, RecoveryPointArn, and IAMRoleArn
-spec update_recovery_point_index_settings(aws_client:aws_client(), binary() | list(), binary() | list(), update_recovery_point_index_settings_input()) ->
    {ok, update_recovery_point_index_settings_output(), tuple()} |
    {error, any()} |
    {error, update_recovery_point_index_settings_errors(), tuple()}.
update_recovery_point_index_settings(Client, BackupVaultName, RecoveryPointArn, Input) ->
    update_recovery_point_index_settings(Client, BackupVaultName, RecoveryPointArn, Input, []).

-spec update_recovery_point_index_settings(aws_client:aws_client(), binary() | list(), binary() | list(), update_recovery_point_index_settings_input(), proplists:proplist()) ->
    {ok, update_recovery_point_index_settings_output(), tuple()} |
    {error, any()} |
    {error, update_recovery_point_index_settings_errors(), tuple()}.
update_recovery_point_index_settings(Client, BackupVaultName, RecoveryPointArn, Input0, Options0) ->
    Method = post,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), "/index"],
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

%% @doc Sets the transition lifecycle of a recovery point.
%%
%% The lifecycle defines when a protected resource is transitioned to cold
%% storage and when
%% it expires. Backup transitions and expires backups automatically according
%% to
%% the lifecycle that you define.
%%
%% Resource types that can transition to cold storage are listed in the
%% Feature availability by resource:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
%% table. Backup ignores this expression for
%% other resource types.
%%
%% Backups transitioned to cold storage must be stored in cold storage for a
%% minimum of 90
%% days. Therefore, the “retention” setting must be 90 days greater than the
%% “transition to
%% cold after days” setting. The “transition to cold after days” setting
%% cannot be changed
%% after a backup has been transitioned to cold.
%%
%% If your lifecycle currently uses the parameters `DeleteAfterDays' and
%% `MoveToColdStorageAfterDays', include these parameters and their
%% values when you call
%% this operation. Not including them may result in your plan updating with
%% null values.
%%
%% This operation does not support continuous backups.
-spec update_recovery_point_lifecycle(aws_client:aws_client(), binary() | list(), binary() | list(), update_recovery_point_lifecycle_input()) ->
    {ok, update_recovery_point_lifecycle_output(), tuple()} |
    {error, any()} |
    {error, update_recovery_point_lifecycle_errors(), tuple()}.
update_recovery_point_lifecycle(Client, BackupVaultName, RecoveryPointArn, Input) ->
    update_recovery_point_lifecycle(Client, BackupVaultName, RecoveryPointArn, Input, []).

-spec update_recovery_point_lifecycle(aws_client:aws_client(), binary() | list(), binary() | list(), update_recovery_point_lifecycle_input(), proplists:proplist()) ->
    {ok, update_recovery_point_lifecycle_output(), tuple()} |
    {error, any()} |
    {error, update_recovery_point_lifecycle_errors(), tuple()}.
update_recovery_point_lifecycle(Client, BackupVaultName, RecoveryPointArn, Input0, Options0) ->
    Method = post,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), ""],
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

%% @doc Updates the current service opt-in settings for the Region.
%%
%% Use
%% the `DescribeRegionSettings' API to determine the resource types that
%% are
%% supported.
-spec update_region_settings(aws_client:aws_client(), update_region_settings_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_region_settings_errors(), tuple()}.
update_region_settings(Client, Input) ->
    update_region_settings(Client, Input, []).

-spec update_region_settings(aws_client:aws_client(), update_region_settings_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_region_settings_errors(), tuple()}.
update_region_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/account-settings"],
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

%% @doc Updates the specified report plan.
-spec update_report_plan(aws_client:aws_client(), binary() | list(), update_report_plan_input()) ->
    {ok, update_report_plan_output(), tuple()} |
    {error, any()} |
    {error, update_report_plan_errors(), tuple()}.
update_report_plan(Client, ReportPlanName, Input) ->
    update_report_plan(Client, ReportPlanName, Input, []).

-spec update_report_plan(aws_client:aws_client(), binary() | list(), update_report_plan_input(), proplists:proplist()) ->
    {ok, update_report_plan_output(), tuple()} |
    {error, any()} |
    {error, update_report_plan_errors(), tuple()}.
update_report_plan(Client, ReportPlanName, Input0, Options0) ->
    Method = put,
    Path = ["/audit/report-plans/", aws_util:encode_uri(ReportPlanName), ""],
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

%% @doc This request will send changes to your specified restore testing
%% plan.
%%
%% `RestoreTestingPlanName'
%% cannot be updated after it is created.
%%
%% `RecoveryPointSelection' can contain:
%%
%% `Algorithm'
%%
%% `ExcludeVaults'
%%
%% `IncludeVaults'
%%
%% `RecoveryPointTypes'
%%
%% `SelectionWindowDays'
-spec update_restore_testing_plan(aws_client:aws_client(), binary() | list(), update_restore_testing_plan_input()) ->
    {ok, update_restore_testing_plan_output(), tuple()} |
    {error, any()} |
    {error, update_restore_testing_plan_errors(), tuple()}.
update_restore_testing_plan(Client, RestoreTestingPlanName, Input) ->
    update_restore_testing_plan(Client, RestoreTestingPlanName, Input, []).

-spec update_restore_testing_plan(aws_client:aws_client(), binary() | list(), update_restore_testing_plan_input(), proplists:proplist()) ->
    {ok, update_restore_testing_plan_output(), tuple()} |
    {error, any()} |
    {error, update_restore_testing_plan_errors(), tuple()}.
update_restore_testing_plan(Client, RestoreTestingPlanName, Input0, Options0) ->
    Method = put,
    Path = ["/restore-testing/plans/", aws_util:encode_uri(RestoreTestingPlanName), ""],
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

%% @doc Updates the specified restore testing selection.
%%
%% Most elements except the `RestoreTestingSelectionName'
%% can be updated with this request.
%%
%% You can use either protected resource ARNs or conditions, but not both.
-spec update_restore_testing_selection(aws_client:aws_client(), binary() | list(), binary() | list(), update_restore_testing_selection_input()) ->
    {ok, update_restore_testing_selection_output(), tuple()} |
    {error, any()} |
    {error, update_restore_testing_selection_errors(), tuple()}.
update_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, Input) ->
    update_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, Input, []).

-spec update_restore_testing_selection(aws_client:aws_client(), binary() | list(), binary() | list(), update_restore_testing_selection_input(), proplists:proplist()) ->
    {ok, update_restore_testing_selection_output(), tuple()} |
    {error, any()} |
    {error, update_restore_testing_selection_errors(), tuple()}.
update_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, Input0, Options0) ->
    Method = put,
    Path = ["/restore-testing/plans/", aws_util:encode_uri(RestoreTestingPlanName), "/selections/", aws_util:encode_uri(RestoreTestingSelectionName), ""],
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
    Client1 = Client#{service => <<"backup">>},
    Host = build_host(<<"backup">>, Client1),
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
