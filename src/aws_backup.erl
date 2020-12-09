%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Backup
%%
%% AWS Backup is a unified backup service designed to protect AWS services
%% and their associated data.
%%
%% AWS Backup simplifies the creation, migration, restoration, and deletion
%% of backups, while also providing reporting and auditing.
-module(aws_backup).

-export([create_backup_plan/2,
         create_backup_plan/3,
         create_backup_selection/3,
         create_backup_selection/4,
         create_backup_vault/3,
         create_backup_vault/4,
         delete_backup_plan/3,
         delete_backup_plan/4,
         delete_backup_selection/4,
         delete_backup_selection/5,
         delete_backup_vault/3,
         delete_backup_vault/4,
         delete_backup_vault_access_policy/3,
         delete_backup_vault_access_policy/4,
         delete_backup_vault_notifications/3,
         delete_backup_vault_notifications/4,
         delete_recovery_point/4,
         delete_recovery_point/5,
         describe_backup_job/2,
         describe_backup_job/3,
         describe_backup_vault/2,
         describe_backup_vault/3,
         describe_copy_job/2,
         describe_copy_job/3,
         describe_global_settings/1,
         describe_global_settings/2,
         describe_protected_resource/2,
         describe_protected_resource/3,
         describe_recovery_point/3,
         describe_recovery_point/4,
         describe_region_settings/1,
         describe_region_settings/2,
         describe_restore_job/2,
         describe_restore_job/3,
         export_backup_plan_template/2,
         export_backup_plan_template/3,
         get_backup_plan/3,
         get_backup_plan/4,
         get_backup_plan_from_json/2,
         get_backup_plan_from_json/3,
         get_backup_plan_from_template/2,
         get_backup_plan_from_template/3,
         get_backup_selection/3,
         get_backup_selection/4,
         get_backup_vault_access_policy/2,
         get_backup_vault_access_policy/3,
         get_backup_vault_notifications/2,
         get_backup_vault_notifications/3,
         get_recovery_point_restore_metadata/3,
         get_recovery_point_restore_metadata/4,
         get_supported_resource_types/1,
         get_supported_resource_types/2,
         list_backup_jobs/10,
         list_backup_jobs/11,
         list_backup_plan_templates/3,
         list_backup_plan_templates/4,
         list_backup_plan_versions/4,
         list_backup_plan_versions/5,
         list_backup_plans/4,
         list_backup_plans/5,
         list_backup_selections/4,
         list_backup_selections/5,
         list_backup_vaults/3,
         list_backup_vaults/4,
         list_copy_jobs/10,
         list_copy_jobs/11,
         list_protected_resources/3,
         list_protected_resources/4,
         list_recovery_points_by_backup_vault/9,
         list_recovery_points_by_backup_vault/10,
         list_recovery_points_by_resource/4,
         list_recovery_points_by_resource/5,
         list_restore_jobs/7,
         list_restore_jobs/8,
         list_tags/4,
         list_tags/5,
         put_backup_vault_access_policy/3,
         put_backup_vault_access_policy/4,
         put_backup_vault_notifications/3,
         put_backup_vault_notifications/4,
         start_backup_job/2,
         start_backup_job/3,
         start_copy_job/2,
         start_copy_job/3,
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
         update_global_settings/2,
         update_global_settings/3,
         update_recovery_point_lifecycle/4,
         update_recovery_point_lifecycle/5,
         update_region_settings/2,
         update_region_settings/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a backup plan using a backup plan name and backup rules.
%%
%% A backup plan is a document that contains information that AWS Backup uses
%% to schedule tasks that create recovery points for resources.
%%
%% If you call `CreateBackupPlan' with a plan that already exists, an
%% `AlreadyExistsException' is returned.
create_backup_plan(Client, Input) ->
    create_backup_plan(Client, Input, []).
create_backup_plan(Client, Input0, Options) ->
    Method = put,
    Path = ["/backup/plans/"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a JSON document that specifies a set of resources to assign
%% to a backup plan.
%%
%% Resources can be included by specifying patterns for a `ListOfTags' and
%% selected `Resources'.
%%
%% For example, consider the following patterns:
%%
%% <ul> <li> `Resources: "arn:aws:ec2:region:account-id:volume/volume-id"'
%%
%% </li> <li> `ConditionKey:"department"'
%%
%% `ConditionValue:"finance"'
%%
%% `ConditionType:"StringEquals"'
%%
%% </li> <li> `ConditionKey:"importance"'
%%
%% `ConditionValue:"critical"'
%%
%% `ConditionType:"StringEquals"'
%%
%% </li> </ul> Using these patterns would back up all Amazon Elastic Block
%% Store (Amazon EBS) volumes that are tagged as `"department=finance"',
%% `"importance=critical"', in addition to an EBS volume with the specified
%% volume ID.
%%
%% Resources and conditions are additive in that all resources that match the
%% pattern are selected. This shouldn't be confused with a logical AND, where
%% all conditions must match. The matching patterns are logically put
%% together using the OR operator. In other words, all patterns that match
%% are selected for backup.
create_backup_selection(Client, BackupPlanId, Input) ->
    create_backup_selection(Client, BackupPlanId, Input, []).
create_backup_selection(Client, BackupPlanId, Input0, Options) ->
    Method = put,
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/selections/"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a logical container where backups are stored.
%%
%% A `CreateBackupVault' request includes a name, optionally one or more
%% resource tags, an encryption key, and a request ID.
%%
%% Sensitive data, such as passport numbers, should not be included the name
%% of a backup vault.
create_backup_vault(Client, BackupVaultName, Input) ->
    create_backup_vault(Client, BackupVaultName, Input, []).
create_backup_vault(Client, BackupVaultName, Input0, Options) ->
    Method = put,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a backup plan.
%%
%% A backup plan can only be deleted after all associated selections of
%% resources have been deleted. Deleting a backup plan deletes the current
%% version of a backup plan. Previous versions, if any, will still exist.
delete_backup_plan(Client, BackupPlanId, Input) ->
    delete_backup_plan(Client, BackupPlanId, Input, []).
delete_backup_plan(Client, BackupPlanId, Input0, Options) ->
    Method = delete,
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the resource selection associated with a backup plan that is
%% specified by the `SelectionId'.
delete_backup_selection(Client, BackupPlanId, SelectionId, Input) ->
    delete_backup_selection(Client, BackupPlanId, SelectionId, Input, []).
delete_backup_selection(Client, BackupPlanId, SelectionId, Input0, Options) ->
    Method = delete,
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/selections/", aws_util:encode_uri(SelectionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the backup vault identified by its name.
%%
%% A vault can be deleted only if it is empty.
delete_backup_vault(Client, BackupVaultName, Input) ->
    delete_backup_vault(Client, BackupVaultName, Input, []).
delete_backup_vault(Client, BackupVaultName, Input0, Options) ->
    Method = delete,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the policy document that manages permissions on a backup
%% vault.
delete_backup_vault_access_policy(Client, BackupVaultName, Input) ->
    delete_backup_vault_access_policy(Client, BackupVaultName, Input, []).
delete_backup_vault_access_policy(Client, BackupVaultName, Input0, Options) ->
    Method = delete,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/access-policy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes event notifications for the specified backup vault.
delete_backup_vault_notifications(Client, BackupVaultName, Input) ->
    delete_backup_vault_notifications(Client, BackupVaultName, Input, []).
delete_backup_vault_notifications(Client, BackupVaultName, Input0, Options) ->
    Method = delete,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/notification-configuration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the recovery point specified by a recovery point ID.
delete_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input) ->
    delete_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input, []).
delete_recovery_point(Client, BackupVaultName, RecoveryPointArn, Input0, Options) ->
    Method = delete,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns backup job details for the specified `BackupJobId'.
describe_backup_job(Client, BackupJobId)
  when is_map(Client) ->
    describe_backup_job(Client, BackupJobId, []).
describe_backup_job(Client, BackupJobId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup-jobs/", aws_util:encode_uri(BackupJobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata about a backup vault specified by its name.
describe_backup_vault(Client, BackupVaultName)
  when is_map(Client) ->
    describe_backup_vault(Client, BackupVaultName, []).
describe_backup_vault(Client, BackupVaultName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata associated with creating a copy of a resource.
describe_copy_job(Client, CopyJobId)
  when is_map(Client) ->
    describe_copy_job(Client, CopyJobId, []).
describe_copy_job(Client, CopyJobId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/copy-jobs/", aws_util:encode_uri(CopyJobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The current feature settings for the AWS Account.
describe_global_settings(Client)
  when is_map(Client) ->
    describe_global_settings(Client, []).
describe_global_settings(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/global-settings"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a saved resource, including the last time
%% it was backed up, its Amazon Resource Name (ARN), and the AWS service type
%% of the saved resource.
describe_protected_resource(Client, ResourceArn)
  when is_map(Client) ->
    describe_protected_resource(Client, ResourceArn, []).
describe_protected_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata associated with a recovery point, including ID,
%% status, encryption, and lifecycle.
describe_recovery_point(Client, BackupVaultName, RecoveryPointArn)
  when is_map(Client) ->
    describe_recovery_point(Client, BackupVaultName, RecoveryPointArn, []).
describe_recovery_point(Client, BackupVaultName, RecoveryPointArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current service opt-in settings for the Region.
%%
%% If service-opt-in is enabled for a service, AWS Backup tries to protect
%% that service's resources in this Region, when the resource is included in
%% an on-demand backup or scheduled backup plan. Otherwise, AWS Backup does
%% not try to protect that service's resources in this Region, AWS Backup
%% does not try to protect that service's resources in this Region.
describe_region_settings(Client)
  when is_map(Client) ->
    describe_region_settings(Client, []).
describe_region_settings(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/account-settings"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata associated with a restore job that is specified by a
%% job ID.
describe_restore_job(Client, RestoreJobId)
  when is_map(Client) ->
    describe_restore_job(Client, RestoreJobId, []).
describe_restore_job(Client, RestoreJobId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restore-jobs/", aws_util:encode_uri(RestoreJobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the backup plan that is specified by the plan ID as a backup
%% template.
export_backup_plan_template(Client, BackupPlanId)
  when is_map(Client) ->
    export_backup_plan_template(Client, BackupPlanId, []).
export_backup_plan_template(Client, BackupPlanId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/toTemplate/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns `BackupPlan' details for the specified `BackupPlanId'.
%%
%% Returns the body of a backup plan in JSON format, in addition to plan
%% metadata.
get_backup_plan(Client, BackupPlanId, VersionId)
  when is_map(Client) ->
    get_backup_plan(Client, BackupPlanId, VersionId, []).
get_backup_plan(Client, BackupPlanId, VersionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"versionId">>, VersionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a valid JSON document specifying a backup plan or an error.
get_backup_plan_from_json(Client, Input) ->
    get_backup_plan_from_json(Client, Input, []).
get_backup_plan_from_json(Client, Input0, Options) ->
    Method = post,
    Path = ["/backup/template/json/toPlan"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the template specified by its `templateId' as a backup plan.
get_backup_plan_from_template(Client, BackupPlanTemplateId)
  when is_map(Client) ->
    get_backup_plan_from_template(Client, BackupPlanTemplateId, []).
get_backup_plan_from_template(Client, BackupPlanTemplateId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup/template/plans/", aws_util:encode_uri(BackupPlanTemplateId), "/toPlan"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns selection metadata and a document in JSON format that
%% specifies a list of resources that are associated with a backup plan.
get_backup_selection(Client, BackupPlanId, SelectionId)
  when is_map(Client) ->
    get_backup_selection(Client, BackupPlanId, SelectionId, []).
get_backup_selection(Client, BackupPlanId, SelectionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/selections/", aws_util:encode_uri(SelectionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the access policy document that is associated with the named
%% backup vault.
get_backup_vault_access_policy(Client, BackupVaultName)
  when is_map(Client) ->
    get_backup_vault_access_policy(Client, BackupVaultName, []).
get_backup_vault_access_policy(Client, BackupVaultName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/access-policy"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns event notifications for the specified backup vault.
get_backup_vault_notifications(Client, BackupVaultName)
  when is_map(Client) ->
    get_backup_vault_notifications(Client, BackupVaultName, []).
get_backup_vault_notifications(Client, BackupVaultName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/notification-configuration"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a set of metadata key-value pairs that were used to create
%% the backup.
get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn)
  when is_map(Client) ->
    get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn, []).
get_recovery_point_restore_metadata(Client, BackupVaultName, RecoveryPointArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), "/restore-metadata"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the AWS resource types supported by AWS Backup.
get_supported_resource_types(Client)
  when is_map(Client) ->
    get_supported_resource_types(Client, []).
get_supported_resource_types(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/supported-resource-types"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing backup jobs for an authenticated account.
list_backup_jobs(Client, ByAccountId, ByBackupVaultName, ByCreatedAfter, ByCreatedBefore, ByResourceArn, ByResourceType, ByState, MaxResults, NextToken)
  when is_map(Client) ->
    list_backup_jobs(Client, ByAccountId, ByBackupVaultName, ByCreatedAfter, ByCreatedBefore, ByResourceArn, ByResourceType, ByState, MaxResults, NextToken, []).
list_backup_jobs(Client, ByAccountId, ByBackupVaultName, ByCreatedAfter, ByCreatedBefore, ByResourceArn, ByResourceType, ByState, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup-jobs/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, ByAccountId},
        {<<"backupVaultName">>, ByBackupVaultName},
        {<<"createdAfter">>, ByCreatedAfter},
        {<<"createdBefore">>, ByCreatedBefore},
        {<<"resourceArn">>, ByResourceArn},
        {<<"resourceType">>, ByResourceType},
        {<<"state">>, ByState},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata of your saved backup plan templates, including the
%% template ID, name, and the creation and deletion dates.
list_backup_plan_templates(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_backup_plan_templates(Client, MaxResults, NextToken, []).
list_backup_plan_templates(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup/template/plans"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns version metadata of your backup plans, including Amazon
%% Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan
%% names, and version IDs.
list_backup_plan_versions(Client, BackupPlanId, MaxResults, NextToken)
  when is_map(Client) ->
    list_backup_plan_versions(Client, BackupPlanId, MaxResults, NextToken, []).
list_backup_plan_versions(Client, BackupPlanId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/versions/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of existing backup plans for an authenticated account.
%%
%% The list is populated only if the advanced option is set for the backup
%% plan. The list contains information such as Amazon Resource Names (ARNs),
%% plan IDs, creation and deletion dates, version IDs, plan names, and
%% creator request IDs.
list_backup_plans(Client, IncludeDeleted, MaxResults, NextToken)
  when is_map(Client) ->
    list_backup_plans(Client, IncludeDeleted, MaxResults, NextToken, []).
list_backup_plans(Client, IncludeDeleted, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup/plans/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"includeDeleted">>, IncludeDeleted},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array containing metadata of the resources associated with
%% the target backup plan.
list_backup_selections(Client, BackupPlanId, MaxResults, NextToken)
  when is_map(Client) ->
    list_backup_selections(Client, BackupPlanId, MaxResults, NextToken, []).
list_backup_selections(Client, BackupPlanId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), "/selections/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of recovery point storage containers along with
%% information about them.
list_backup_vaults(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_backup_vaults(Client, MaxResults, NextToken, []).
list_backup_vaults(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup-vaults/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata about your copy jobs.
list_copy_jobs(Client, ByAccountId, ByCreatedAfter, ByCreatedBefore, ByDestinationVaultArn, ByResourceArn, ByResourceType, ByState, MaxResults, NextToken)
  when is_map(Client) ->
    list_copy_jobs(Client, ByAccountId, ByCreatedAfter, ByCreatedBefore, ByDestinationVaultArn, ByResourceArn, ByResourceType, ByState, MaxResults, NextToken, []).
list_copy_jobs(Client, ByAccountId, ByCreatedAfter, ByCreatedBefore, ByDestinationVaultArn, ByResourceArn, ByResourceType, ByState, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/copy-jobs/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, ByAccountId},
        {<<"createdAfter">>, ByCreatedAfter},
        {<<"createdBefore">>, ByCreatedBefore},
        {<<"destinationVaultArn">>, ByDestinationVaultArn},
        {<<"resourceArn">>, ByResourceArn},
        {<<"resourceType">>, ByResourceType},
        {<<"state">>, ByState},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array of resources successfully backed up by AWS Backup,
%% including the time the resource was saved, an Amazon Resource Name (ARN)
%% of the resource, and a resource type.
list_protected_resources(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_protected_resources(Client, MaxResults, NextToken, []).
list_protected_resources(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/resources/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about the recovery points stored in a
%% backup vault.
list_recovery_points_by_backup_vault(Client, BackupVaultName, ByBackupPlanId, ByCreatedAfter, ByCreatedBefore, ByResourceArn, ByResourceType, MaxResults, NextToken)
  when is_map(Client) ->
    list_recovery_points_by_backup_vault(Client, BackupVaultName, ByBackupPlanId, ByCreatedAfter, ByCreatedBefore, ByResourceArn, ByResourceType, MaxResults, NextToken, []).
list_recovery_points_by_backup_vault(Client, BackupVaultName, ByBackupPlanId, ByCreatedAfter, ByCreatedBefore, ByResourceArn, ByResourceType, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"backupPlanId">>, ByBackupPlanId},
        {<<"createdAfter">>, ByCreatedAfter},
        {<<"createdBefore">>, ByCreatedBefore},
        {<<"resourceArn">>, ByResourceArn},
        {<<"resourceType">>, ByResourceType},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about recovery points of the type
%% specified by a resource Amazon Resource Name (ARN).
list_recovery_points_by_resource(Client, ResourceArn, MaxResults, NextToken)
  when is_map(Client) ->
    list_recovery_points_by_resource(Client, ResourceArn, MaxResults, NextToken, []).
list_recovery_points_by_resource(Client, ResourceArn, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/recovery-points/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of jobs that AWS Backup initiated to restore a saved
%% resource, including metadata about the recovery process.
list_restore_jobs(Client, ByAccountId, ByCreatedAfter, ByCreatedBefore, ByStatus, MaxResults, NextToken)
  when is_map(Client) ->
    list_restore_jobs(Client, ByAccountId, ByCreatedAfter, ByCreatedBefore, ByStatus, MaxResults, NextToken, []).
list_restore_jobs(Client, ByAccountId, ByCreatedAfter, ByCreatedBefore, ByStatus, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/restore-jobs/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, ByAccountId},
        {<<"createdAfter">>, ByCreatedAfter},
        {<<"createdBefore">>, ByCreatedBefore},
        {<<"status">>, ByStatus},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of key-value pairs assigned to a target recovery
%% point, backup plan, or backup vault.
%%
%% `ListTags' are currently only supported with Amazon EFS backups.
list_tags(Client, ResourceArn, MaxResults, NextToken)
  when is_map(Client) ->
    list_tags(Client, ResourceArn, MaxResults, NextToken, []).
list_tags(Client, ResourceArn, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), "/"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets a resource-based policy that is used to manage access
%% permissions on the target backup vault.
%%
%% Requires a backup vault name and an access policy document in JSON format.
put_backup_vault_access_policy(Client, BackupVaultName, Input) ->
    put_backup_vault_access_policy(Client, BackupVaultName, Input, []).
put_backup_vault_access_policy(Client, BackupVaultName, Input0, Options) ->
    Method = put,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/access-policy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Turns on notifications on a backup vault for the specified topic and
%% events.
put_backup_vault_notifications(Client, BackupVaultName, Input) ->
    put_backup_vault_notifications(Client, BackupVaultName, Input, []).
put_backup_vault_notifications(Client, BackupVaultName, Input0, Options) ->
    Method = put,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/notification-configuration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts an on-demand backup job for the specified resource.
start_backup_job(Client, Input) ->
    start_backup_job(Client, Input, []).
start_backup_job(Client, Input0, Options) ->
    Method = put,
    Path = ["/backup-jobs"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a job to create a one-time copy of the specified resource.
start_copy_job(Client, Input) ->
    start_copy_job(Client, Input, []).
start_copy_job(Client, Input0, Options) ->
    Method = put,
    Path = ["/copy-jobs"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Recovers the saved resource identified by an Amazon Resource Name
%% (ARN).
start_restore_job(Client, Input) ->
    start_restore_job(Client, Input, []).
start_restore_job(Client, Input0, Options) ->
    Method = put,
    Path = ["/restore-jobs"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Attempts to cancel a job to create a one-time backup of a resource.
stop_backup_job(Client, BackupJobId, Input) ->
    stop_backup_job(Client, BackupJobId, Input, []).
stop_backup_job(Client, BackupJobId, Input0, Options) ->
    Method = post,
    Path = ["/backup-jobs/", aws_util:encode_uri(BackupJobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns a set of key-value pairs to a recovery point, backup plan, or
%% backup vault identified by an Amazon Resource Name (ARN).
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a set of key-value pairs from a recovery point, backup plan,
%% or backup vault identified by an Amazon Resource Name (ARN)
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/untag/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing backup plan identified by its `backupPlanId' with
%% the input document in JSON format.
%%
%% The new version is uniquely identified by a `VersionId'.
update_backup_plan(Client, BackupPlanId, Input) ->
    update_backup_plan(Client, BackupPlanId, Input, []).
update_backup_plan(Client, BackupPlanId, Input0, Options) ->
    Method = post,
    Path = ["/backup/plans/", aws_util:encode_uri(BackupPlanId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the current global settings for the AWS Account.
%%
%% Use the `DescribeGlobalSettings' API to determine the current settings.
update_global_settings(Client, Input) ->
    update_global_settings(Client, Input, []).
update_global_settings(Client, Input0, Options) ->
    Method = put,
    Path = ["/global-settings"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the transition lifecycle of a recovery point.
%%
%% The lifecycle defines when a protected resource is transitioned to cold
%% storage and when it expires. AWS Backup transitions and expires backups
%% automatically according to the lifecycle that you define.
%%
%% Backups transitioned to cold storage must be stored in cold storage for a
%% minimum of 90 days. Therefore, the “expire after days” setting must be 90
%% days greater than the “transition to cold after days” setting. The
%% “transition to cold after days” setting cannot be changed after a backup
%% has been transitioned to cold.
update_recovery_point_lifecycle(Client, BackupVaultName, RecoveryPointArn, Input) ->
    update_recovery_point_lifecycle(Client, BackupVaultName, RecoveryPointArn, Input, []).
update_recovery_point_lifecycle(Client, BackupVaultName, RecoveryPointArn, Input0, Options) ->
    Method = post,
    Path = ["/backup-vaults/", aws_util:encode_uri(BackupVaultName), "/recovery-points/", aws_util:encode_uri(RecoveryPointArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the current service opt-in settings for the Region.
%%
%% If service-opt-in is enabled for a service, AWS Backup tries to protect
%% that service's resources in this Region, when the resource is included in
%% an on-demand backup or scheduled backup plan. Otherwise, AWS Backup does
%% not try to protect that service's resources in this Region. Use the
%% `DescribeRegionSettings' API to determine the resource types that are
%% supported.
update_region_settings(Client, Input) ->
    update_region_settings(Client, Input, []).
update_region_settings(Client, Input0, Options) ->
    Method = put,
    Path = ["/account-settings"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"backup">>},
    Host = build_host(<<"backup">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
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
