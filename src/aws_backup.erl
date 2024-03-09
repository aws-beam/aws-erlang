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

-export([cancel_legal_hold/3,
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

%%====================================================================
%% API
%%====================================================================

%% @doc This action removes the specified legal hold on a recovery point.
%%
%% This action can only be performed by a user with sufficient permissions.
cancel_legal_hold(Client, LegalHoldId, Input) ->
    cancel_legal_hold(Client, LegalHoldId, Input, []).
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
create_backup_plan(Client, Input) ->
    create_backup_plan(Client, Input, []).
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
create_backup_selection(Client, BackupPlanId, Input) ->
    create_backup_selection(Client, BackupPlanId, Input, []).
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
create_backup_vault(Client, BackupVaultName, Input) ->
    create_backup_vault(Client, BackupVaultName, Input, []).
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
create_framework(Client, Input) ->
    create_framework(Client, Input, []).
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

%% @doc This action creates a legal hold on a recovery point (backup).
%%
%% A legal hold
%% is a restraint on altering or deleting a backup until an authorized user
%% cancels the
%% legal hold. Any actions to delete or disassociate a recovery point will
%% fail with
%% an error if one or more active legal holds are on the recovery point.
create_legal_hold(Client, Input) ->
    create_legal_hold(Client, Input, []).
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

%% @doc This request creates a logical container to where backups may be
%% copied.
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
create_logically_air_gapped_backup_vault(Client, BackupVaultName, Input) ->
    create_logically_air_gapped_backup_vault(Client, BackupVaultName, Input, []).
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
create_report_plan(Client, Input) ->
    create_report_plan(Client, Input, []).
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

%% @doc This is the first of two steps to create a restore testing
%% plan; once this request is successful, finish the procedure with
%% request CreateRestoreTestingSelection.
%%
%% You must include the parameter RestoreTestingPlan. You may
%% optionally include CreatorRequestId and Tags.
create_restore_testing_plan(Client, Input) ->
    create_restore_testing_plan(Client, Input, []).
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
create_restore_testing_selection(Client, RestoreTestingPlanName, Input) ->
    create_restore_testing_selection(Client, RestoreTestingPlanName, Input, []).
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
delete_backup_plan(Client, BackupPlanId, Input) ->
    delete_backup_plan(Client, BackupPlanId, Input, []).
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
delete_backup_selection(Client, BackupPlanId, SelectionId, Input) ->
    delete_backup_selection(Client, BackupPlanId, SelectionId, Input, []).
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
delete_backup_vault(Client, BackupVaultName, Input) ->
    delete_backup_vault(Client, BackupVaultName, Input, []).
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
delete_backup_vault_access_policy(Client, BackupVaultName, Input) ->
    delete_backup_vault_access_policy(Client, BackupVaultName, Input, []).
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
delete_backup_vault_lock_configuration(Client, BackupVaultName, Input) ->
    delete_backup_vault_lock_configuration(Client, BackupVaultName, Input, []).
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
delete_backup_vault_notifications(Client, BackupVaultName, Input) ->
    delete_backup_vault_notifications(Client, BackupVaultName, Input, []).
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
delete_framework(Client, FrameworkName, Input) ->
    delete_framework(Client, FrameworkName, Input, []).
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
delete_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input) ->
    delete_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input, []).
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
delete_report_plan(Client, ReportPlanName, Input) ->
    delete_report_plan(Client, ReportPlanName, Input, []).
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
delete_restore_testing_plan(Client, RestoreTestingPlanName, Input) ->
    delete_restore_testing_plan(Client, RestoreTestingPlanName, Input, []).
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
delete_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, Input) ->
    delete_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, Input, []).
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
describe_backup_job(Client, BackupJobId)
  when is_map(Client) ->
    describe_backup_job(Client, BackupJobId, #{}, #{}).

describe_backup_job(Client, BackupJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_backup_job(Client, BackupJobId, QueryMap, HeadersMap, []).

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
describe_backup_vault(Client, BackupVaultName)
  when is_map(Client) ->
    describe_backup_vault(Client, BackupVaultName, #{}, #{}).

describe_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap, []).

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
describe_copy_job(Client, CopyJobId)
  when is_map(Client) ->
    describe_copy_job(Client, CopyJobId, #{}, #{}).

describe_copy_job(Client, CopyJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_copy_job(Client, CopyJobId, QueryMap, HeadersMap, []).

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
describe_framework(Client, FrameworkName)
  when is_map(Client) ->
    describe_framework(Client, FrameworkName, #{}, #{}).

describe_framework(Client, FrameworkName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_framework(Client, FrameworkName, QueryMap, HeadersMap, []).

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
describe_global_settings(Client)
  when is_map(Client) ->
    describe_global_settings(Client, #{}, #{}).

describe_global_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_global_settings(Client, QueryMap, HeadersMap, []).

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
describe_protected_resource(Client, ResourceArn)
  when is_map(Client) ->
    describe_protected_resource(Client, ResourceArn, #{}, #{}).

describe_protected_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_protected_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

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
describe_recovery_point(Client, BackupVaultName, RecoveryPointArn)
  when is_map(Client) ->
    describe_recovery_point(Client, BackupVaultName, RecoveryPointArn, #{}, #{}).

describe_recovery_point(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_recovery_point(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, []).

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
describe_region_settings(Client)
  when is_map(Client) ->
    describe_region_settings(Client, #{}, #{}).

describe_region_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_region_settings(Client, QueryMap, HeadersMap, []).

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
describe_report_job(Client, ReportJobId)
  when is_map(Client) ->
    describe_report_job(Client, ReportJobId, #{}, #{}).

describe_report_job(Client, ReportJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_report_job(Client, ReportJobId, QueryMap, HeadersMap, []).

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
describe_report_plan(Client, ReportPlanName)
  when is_map(Client) ->
    describe_report_plan(Client, ReportPlanName, #{}, #{}).

describe_report_plan(Client, ReportPlanName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_report_plan(Client, ReportPlanName, QueryMap, HeadersMap, []).

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
describe_restore_job(Client, RestoreJobId)
  when is_map(Client) ->
    describe_restore_job(Client, RestoreJobId, #{}, #{}).

describe_restore_job(Client, RestoreJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_restore_job(Client, RestoreJobId, QueryMap, HeadersMap, []).

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
disassociate_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input) ->
    disassociate_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input, []).
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
disassociate_recovery_point_from_parent(Client, BackupVaultName, RecoveryPointArn, Input) ->
    disassociate_recovery_point_from_parent(Client, BackupVaultName, RecoveryPointArn, Input, []).
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
export_backup_plan_template(Client, BackupPlanId)
  when is_map(Client) ->
    export_backup_plan_template(Client, BackupPlanId, #{}, #{}).

export_backup_plan_template(Client, BackupPlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_backup_plan_template(Client, BackupPlanId, QueryMap, HeadersMap, []).

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
get_backup_plan(Client, BackupPlanId)
  when is_map(Client) ->
    get_backup_plan(Client, BackupPlanId, #{}, #{}).

get_backup_plan(Client, BackupPlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backup_plan(Client, BackupPlanId, QueryMap, HeadersMap, []).

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
get_backup_plan_from_json(Client, Input) ->
    get_backup_plan_from_json(Client, Input, []).
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
get_backup_plan_from_template(Client, BackupPlanTemplateId)
  when is_map(Client) ->
    get_backup_plan_from_template(Client, BackupPlanTemplateId, #{}, #{}).

get_backup_plan_from_template(Client, BackupPlanTemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backup_plan_from_template(Client, BackupPlanTemplateId, QueryMap, HeadersMap, []).

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
get_backup_selection(Client, BackupPlanId, SelectionId)
  when is_map(Client) ->
    get_backup_selection(Client, BackupPlanId, SelectionId, #{}, #{}).

get_backup_selection(Client, BackupPlanId, SelectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backup_selection(Client, BackupPlanId, SelectionId, QueryMap, HeadersMap, []).

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
get_backup_vault_access_policy(Client, BackupVaultName)
  when is_map(Client) ->
    get_backup_vault_access_policy(Client, BackupVaultName, #{}, #{}).

get_backup_vault_access_policy(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backup_vault_access_policy(Client, BackupVaultName, QueryMap, HeadersMap, []).

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
get_backup_vault_notifications(Client, BackupVaultName)
  when is_map(Client) ->
    get_backup_vault_notifications(Client, BackupVaultName, #{}, #{}).

get_backup_vault_notifications(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backup_vault_notifications(Client, BackupVaultName, QueryMap, HeadersMap, []).

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
get_legal_hold(Client, LegalHoldId)
  when is_map(Client) ->
    get_legal_hold(Client, LegalHoldId, #{}, #{}).

get_legal_hold(Client, LegalHoldId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_legal_hold(Client, LegalHoldId, QueryMap, HeadersMap, []).

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

%% @doc Returns a set of metadata key-value pairs that were used to create
%% the backup.
get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn)
  when is_map(Client) ->
    get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn, #{}, #{}).

get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, []).

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
get_restore_job_metadata(Client, RestoreJobId)
  when is_map(Client) ->
    get_restore_job_metadata(Client, RestoreJobId, #{}, #{}).

get_restore_job_metadata(Client, RestoreJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_restore_job_metadata(Client, RestoreJobId, QueryMap, HeadersMap, []).

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
get_restore_testing_inferred_metadata(Client, BackupVaultName, RecoveryPointArn)
  when is_map(Client) ->
    get_restore_testing_inferred_metadata(Client, BackupVaultName, RecoveryPointArn, #{}, #{}).

get_restore_testing_inferred_metadata(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_restore_testing_inferred_metadata(Client, BackupVaultName, RecoveryPointArn, QueryMap, HeadersMap, []).

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
get_restore_testing_plan(Client, RestoreTestingPlanName)
  when is_map(Client) ->
    get_restore_testing_plan(Client, RestoreTestingPlanName, #{}, #{}).

get_restore_testing_plan(Client, RestoreTestingPlanName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_restore_testing_plan(Client, RestoreTestingPlanName, QueryMap, HeadersMap, []).

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
get_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName)
  when is_map(Client) ->
    get_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, #{}, #{}).

get_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, QueryMap, HeadersMap, []).

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
get_supported_resource_types(Client)
  when is_map(Client) ->
    get_supported_resource_types(Client, #{}, #{}).

get_supported_resource_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_supported_resource_types(Client, QueryMap, HeadersMap, []).

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
list_backup_job_summaries(Client)
  when is_map(Client) ->
    list_backup_job_summaries(Client, #{}, #{}).

list_backup_job_summaries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_job_summaries(Client, QueryMap, HeadersMap, []).

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
list_backup_jobs(Client)
  when is_map(Client) ->
    list_backup_jobs(Client, #{}, #{}).

list_backup_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_jobs(Client, QueryMap, HeadersMap, []).

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

%% @doc Returns metadata of your saved backup plan templates, including the
%% template ID, name,
%% and the creation and deletion dates.
list_backup_plan_templates(Client)
  when is_map(Client) ->
    list_backup_plan_templates(Client, #{}, #{}).

list_backup_plan_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_plan_templates(Client, QueryMap, HeadersMap, []).

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
list_backup_plan_versions(Client, BackupPlanId)
  when is_map(Client) ->
    list_backup_plan_versions(Client, BackupPlanId, #{}, #{}).

list_backup_plan_versions(Client, BackupPlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_plan_versions(Client, BackupPlanId, QueryMap, HeadersMap, []).

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

%% @doc Returns a list of all active backup plans for an authenticated
%% account.
%%
%% The list
%% contains information such as Amazon Resource Names (ARNs), plan IDs,
%% creation and deletion
%% dates, version IDs, plan names, and creator request IDs.
list_backup_plans(Client)
  when is_map(Client) ->
    list_backup_plans(Client, #{}, #{}).

list_backup_plans(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_plans(Client, QueryMap, HeadersMap, []).

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
list_backup_selections(Client, BackupPlanId)
  when is_map(Client) ->
    list_backup_selections(Client, BackupPlanId, #{}, #{}).

list_backup_selections(Client, BackupPlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_selections(Client, BackupPlanId, QueryMap, HeadersMap, []).

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
list_backup_vaults(Client)
  when is_map(Client) ->
    list_backup_vaults(Client, #{}, #{}).

list_backup_vaults(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backup_vaults(Client, QueryMap, HeadersMap, []).

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
list_copy_job_summaries(Client)
  when is_map(Client) ->
    list_copy_job_summaries(Client, #{}, #{}).

list_copy_job_summaries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_copy_job_summaries(Client, QueryMap, HeadersMap, []).

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
list_copy_jobs(Client)
  when is_map(Client) ->
    list_copy_jobs(Client, #{}, #{}).

list_copy_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_copy_jobs(Client, QueryMap, HeadersMap, []).

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
list_frameworks(Client)
  when is_map(Client) ->
    list_frameworks(Client, #{}, #{}).

list_frameworks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_frameworks(Client, QueryMap, HeadersMap, []).

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

%% @doc This action returns metadata about active and previous legal holds.
list_legal_holds(Client)
  when is_map(Client) ->
    list_legal_holds(Client, #{}, #{}).

list_legal_holds(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_legal_holds(Client, QueryMap, HeadersMap, []).

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
list_protected_resources(Client)
  when is_map(Client) ->
    list_protected_resources(Client, #{}, #{}).

list_protected_resources(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_protected_resources(Client, QueryMap, HeadersMap, []).

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
list_protected_resources_by_backup_vault(Client, BackupVaultName)
  when is_map(Client) ->
    list_protected_resources_by_backup_vault(Client, BackupVaultName, #{}, #{}).

list_protected_resources_by_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_protected_resources_by_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap, []).

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
list_recovery_points_by_backup_vault(Client, BackupVaultName)
  when is_map(Client) ->
    list_recovery_points_by_backup_vault(Client, BackupVaultName, #{}, #{}).

list_recovery_points_by_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recovery_points_by_backup_vault(Client, BackupVaultName, QueryMap, HeadersMap, []).

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
list_recovery_points_by_legal_hold(Client, LegalHoldId)
  when is_map(Client) ->
    list_recovery_points_by_legal_hold(Client, LegalHoldId, #{}, #{}).

list_recovery_points_by_legal_hold(Client, LegalHoldId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recovery_points_by_legal_hold(Client, LegalHoldId, QueryMap, HeadersMap, []).

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

%% @doc Returns detailed information about all the recovery points of the
%% type specified by a
%% resource Amazon Resource Name (ARN).
%%
%% For Amazon EFS and Amazon EC2, this action only lists recovery points
%% created by Backup.
list_recovery_points_by_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_recovery_points_by_resource(Client, ResourceArn, #{}, #{}).

list_recovery_points_by_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recovery_points_by_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

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
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about your report jobs.
list_report_jobs(Client)
  when is_map(Client) ->
    list_report_jobs(Client, #{}, #{}).

list_report_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_report_jobs(Client, QueryMap, HeadersMap, []).

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
list_report_plans(Client)
  when is_map(Client) ->
    list_report_plans(Client, #{}, #{}).

list_report_plans(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_report_plans(Client, QueryMap, HeadersMap, []).

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
list_restore_job_summaries(Client)
  when is_map(Client) ->
    list_restore_job_summaries(Client, #{}, #{}).

list_restore_job_summaries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_job_summaries(Client, QueryMap, HeadersMap, []).

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
list_restore_jobs(Client)
  when is_map(Client) ->
    list_restore_jobs(Client, #{}, #{}).

list_restore_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_jobs(Client, QueryMap, HeadersMap, []).

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
list_restore_jobs_by_protected_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_restore_jobs_by_protected_resource(Client, ResourceArn, #{}, #{}).

list_restore_jobs_by_protected_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_jobs_by_protected_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

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
list_restore_testing_plans(Client)
  when is_map(Client) ->
    list_restore_testing_plans(Client, #{}, #{}).

list_restore_testing_plans(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_testing_plans(Client, QueryMap, HeadersMap, []).

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
list_restore_testing_selections(Client, RestoreTestingPlanName)
  when is_map(Client) ->
    list_restore_testing_selections(Client, RestoreTestingPlanName, #{}, #{}).

list_restore_testing_selections(Client, RestoreTestingPlanName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_restore_testing_selections(Client, RestoreTestingPlanName, QueryMap, HeadersMap, []).

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

%% @doc Returns a list of key-value pairs assigned to a target recovery
%% point, backup plan, or
%% backup vault.
%%
%% `ListTags' only works for resource types that support full Backup
%% management of their backups. Those resource types are listed in the
%% &quot;Full Backup management&quot; section of the Feature
%% availability by resource:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
%% table.
list_tags(Client, ResourceArn)
  when is_map(Client) ->
    list_tags(Client, ResourceArn, #{}, #{}).

list_tags(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags(Client, ResourceArn, QueryMap, HeadersMap, []).

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
put_backup_vault_access_policy(Client, BackupVaultName, Input) ->
    put_backup_vault_access_policy(Client, BackupVaultName, Input, []).
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
%% Compliance Assessment.: samples/cohassetreport.zip
put_backup_vault_lock_configuration(Client, BackupVaultName, Input) ->
    put_backup_vault_lock_configuration(Client, BackupVaultName, Input, []).
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
put_backup_vault_notifications(Client, BackupVaultName, Input) ->
    put_backup_vault_notifications(Client, BackupVaultName, Input, []).
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
put_restore_validation_result(Client, RestoreJobId, Input) ->
    put_restore_validation_result(Client, RestoreJobId, Input, []).
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

%% @doc Starts an on-demand backup job for the specified resource.
start_backup_job(Client, Input) ->
    start_backup_job(Client, Input, []).
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
start_copy_job(Client, Input) ->
    start_copy_job(Client, Input, []).
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
start_report_job(Client, ReportPlanName, Input) ->
    start_report_job(Client, ReportPlanName, Input, []).
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
start_restore_job(Client, Input) ->
    start_restore_job(Client, Input, []).
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
%% Amazon FSx for Windows File Server, Amazon FSx for Lustre, FSx for ONTAP
%% , Amazon FSx for OpenZFS, Amazon DocumentDB (with MongoDB compatibility),
%% Amazon RDS, Amazon Aurora,
%% and Amazon Neptune.
stop_backup_job(Client, BackupJobId, Input) ->
    stop_backup_job(Client, BackupJobId, Input, []).
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

%% @doc Assigns a set of key-value pairs to a recovery point, backup plan, or
%% backup vault
%% identified by an Amazon Resource Name (ARN).
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
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
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
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

%% @doc Updates an existing backup plan identified by its `backupPlanId'
%% with the
%% input document in JSON format.
%%
%% The new version is uniquely identified by a
%% `VersionId'.
update_backup_plan(Client, BackupPlanId, Input) ->
    update_backup_plan(Client, BackupPlanId, Input, []).
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

%% @doc Updates an existing framework identified by its `FrameworkName'
%% with the
%% input document in JSON format.
update_framework(Client, FrameworkName, Input) ->
    update_framework(Client, FrameworkName, Input, []).
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
update_global_settings(Client, Input) ->
    update_global_settings(Client, Input, []).
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

%% @doc Sets the transition lifecycle of a recovery point.
%%
%% The lifecycle defines when a protected resource is transitioned to cold
%% storage and when
%% it expires. Backup transitions and expires backups automatically according
%% to
%% the lifecycle that you define.
%%
%% Backups transitioned to cold storage must be stored in cold storage for a
%% minimum of 90
%% days. Therefore, the “retention” setting must be 90 days greater than the
%% “transition to
%% cold after days” setting. The “transition to cold after days” setting
%% cannot be changed
%% after a backup has been transitioned to cold.
%%
%% Resource types that are able to be transitioned to cold storage are listed
%% in the &quot;Lifecycle to cold storage&quot;
%% section of the
%% Feature availability by resource:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
%% table. Backup ignores this expression for
%% other resource types.
%%
%% This operation does not support continuous backups.
update_recovery_point_lifecycle(Client, BackupVaultName, RecoveryPointArn, Input) ->
    update_recovery_point_lifecycle(Client, BackupVaultName, RecoveryPointArn, Input, []).
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
update_region_settings(Client, Input) ->
    update_region_settings(Client, Input, []).
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

%% @doc Updates an existing report plan identified by its
%% `ReportPlanName' with the
%% input document in JSON format.
update_report_plan(Client, ReportPlanName, Input) ->
    update_report_plan(Client, ReportPlanName, Input, []).
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
update_restore_testing_plan(Client, RestoreTestingPlanName, Input) ->
    update_restore_testing_plan(Client, RestoreTestingPlanName, Input, []).
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

%% @doc Most elements except the `RestoreTestingSelectionName'
%% can be updated with this request.
%%
%% `RestoreTestingSelection' can use either protected
%% resource ARNs or conditions, but not both. That is, if your selection
%% has `ProtectedResourceArns', requesting an update with the
%% parameter `ProtectedResourceConditions' will be
%% unsuccessful.
update_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, Input) ->
    update_restore_testing_selection(Client, RestoreTestingPlanName, RestoreTestingSelectionName, Input, []).
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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
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
