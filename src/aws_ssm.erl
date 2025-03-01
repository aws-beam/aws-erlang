%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Systems Manager is the operations hub for your
%% Amazon Web Services applications and resources and a secure
%% end-to-end management solution for hybrid cloud environments that enables
%% safe and secure
%% operations at scale.
%%
%% This reference is intended to be used with the Amazon Web Services Systems
%% Manager User Guide:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/. To get
%% started, see Setting up Amazon Web Services Systems Manager:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html.
%%
%% == Related resources ==
%%
%% For information about each of the tools that comprise Systems Manager, see
%% Using
%% Systems Manager tools:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-tools.html
%% in the Amazon Web Services Systems Manager User Guide.
%%
%% For details about predefined runbooks for Automation, a tool in Amazon Web
%% Services Systems Manager, see the
%%
%% Systems Manager Automation runbook reference:
%% https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-runbook-reference.html
%% .
%%
%% For information about AppConfig, a tool in Systems Manager, see the
%% AppConfig User Guide:
%% https://docs.aws.amazon.com/appconfig/latest/userguide/
%%
%% and the
%% AppConfig
%% API Reference:
%% https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/
%% .
%%
%% For information about Incident Manager, a tool in Systems Manager, see the
%% Systems Manager Incident Manager User
%% Guide: https://docs.aws.amazon.com/incident-manager/latest/userguide/
%% and the
%% Systems Manager Incident Manager API
%% Reference:
%% https://docs.aws.amazon.com/incident-manager/latest/APIReference/
%% .
-module(aws_ssm).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         associate_ops_item_related_item/2,
         associate_ops_item_related_item/3,
         cancel_command/2,
         cancel_command/3,
         cancel_maintenance_window_execution/2,
         cancel_maintenance_window_execution/3,
         create_activation/2,
         create_activation/3,
         create_association/2,
         create_association/3,
         create_association_batch/2,
         create_association_batch/3,
         create_document/2,
         create_document/3,
         create_maintenance_window/2,
         create_maintenance_window/3,
         create_ops_item/2,
         create_ops_item/3,
         create_ops_metadata/2,
         create_ops_metadata/3,
         create_patch_baseline/2,
         create_patch_baseline/3,
         create_resource_data_sync/2,
         create_resource_data_sync/3,
         delete_activation/2,
         delete_activation/3,
         delete_association/2,
         delete_association/3,
         delete_document/2,
         delete_document/3,
         delete_inventory/2,
         delete_inventory/3,
         delete_maintenance_window/2,
         delete_maintenance_window/3,
         delete_ops_item/2,
         delete_ops_item/3,
         delete_ops_metadata/2,
         delete_ops_metadata/3,
         delete_parameter/2,
         delete_parameter/3,
         delete_parameters/2,
         delete_parameters/3,
         delete_patch_baseline/2,
         delete_patch_baseline/3,
         delete_resource_data_sync/2,
         delete_resource_data_sync/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         deregister_managed_instance/2,
         deregister_managed_instance/3,
         deregister_patch_baseline_for_patch_group/2,
         deregister_patch_baseline_for_patch_group/3,
         deregister_target_from_maintenance_window/2,
         deregister_target_from_maintenance_window/3,
         deregister_task_from_maintenance_window/2,
         deregister_task_from_maintenance_window/3,
         describe_activations/2,
         describe_activations/3,
         describe_association/2,
         describe_association/3,
         describe_association_execution_targets/2,
         describe_association_execution_targets/3,
         describe_association_executions/2,
         describe_association_executions/3,
         describe_automation_executions/2,
         describe_automation_executions/3,
         describe_automation_step_executions/2,
         describe_automation_step_executions/3,
         describe_available_patches/2,
         describe_available_patches/3,
         describe_document/2,
         describe_document/3,
         describe_document_permission/2,
         describe_document_permission/3,
         describe_effective_instance_associations/2,
         describe_effective_instance_associations/3,
         describe_effective_patches_for_patch_baseline/2,
         describe_effective_patches_for_patch_baseline/3,
         describe_instance_associations_status/2,
         describe_instance_associations_status/3,
         describe_instance_information/2,
         describe_instance_information/3,
         describe_instance_patch_states/2,
         describe_instance_patch_states/3,
         describe_instance_patch_states_for_patch_group/2,
         describe_instance_patch_states_for_patch_group/3,
         describe_instance_patches/2,
         describe_instance_patches/3,
         describe_instance_properties/2,
         describe_instance_properties/3,
         describe_inventory_deletions/2,
         describe_inventory_deletions/3,
         describe_maintenance_window_execution_task_invocations/2,
         describe_maintenance_window_execution_task_invocations/3,
         describe_maintenance_window_execution_tasks/2,
         describe_maintenance_window_execution_tasks/3,
         describe_maintenance_window_executions/2,
         describe_maintenance_window_executions/3,
         describe_maintenance_window_schedule/2,
         describe_maintenance_window_schedule/3,
         describe_maintenance_window_targets/2,
         describe_maintenance_window_targets/3,
         describe_maintenance_window_tasks/2,
         describe_maintenance_window_tasks/3,
         describe_maintenance_windows/2,
         describe_maintenance_windows/3,
         describe_maintenance_windows_for_target/2,
         describe_maintenance_windows_for_target/3,
         describe_ops_items/2,
         describe_ops_items/3,
         describe_parameters/2,
         describe_parameters/3,
         describe_patch_baselines/2,
         describe_patch_baselines/3,
         describe_patch_group_state/2,
         describe_patch_group_state/3,
         describe_patch_groups/2,
         describe_patch_groups/3,
         describe_patch_properties/2,
         describe_patch_properties/3,
         describe_sessions/2,
         describe_sessions/3,
         disassociate_ops_item_related_item/2,
         disassociate_ops_item_related_item/3,
         get_automation_execution/2,
         get_automation_execution/3,
         get_calendar_state/2,
         get_calendar_state/3,
         get_command_invocation/2,
         get_command_invocation/3,
         get_connection_status/2,
         get_connection_status/3,
         get_default_patch_baseline/2,
         get_default_patch_baseline/3,
         get_deployable_patch_snapshot_for_instance/2,
         get_deployable_patch_snapshot_for_instance/3,
         get_document/2,
         get_document/3,
         get_execution_preview/2,
         get_execution_preview/3,
         get_inventory/2,
         get_inventory/3,
         get_inventory_schema/2,
         get_inventory_schema/3,
         get_maintenance_window/2,
         get_maintenance_window/3,
         get_maintenance_window_execution/2,
         get_maintenance_window_execution/3,
         get_maintenance_window_execution_task/2,
         get_maintenance_window_execution_task/3,
         get_maintenance_window_execution_task_invocation/2,
         get_maintenance_window_execution_task_invocation/3,
         get_maintenance_window_task/2,
         get_maintenance_window_task/3,
         get_ops_item/2,
         get_ops_item/3,
         get_ops_metadata/2,
         get_ops_metadata/3,
         get_ops_summary/2,
         get_ops_summary/3,
         get_parameter/2,
         get_parameter/3,
         get_parameter_history/2,
         get_parameter_history/3,
         get_parameters/2,
         get_parameters/3,
         get_parameters_by_path/2,
         get_parameters_by_path/3,
         get_patch_baseline/2,
         get_patch_baseline/3,
         get_patch_baseline_for_patch_group/2,
         get_patch_baseline_for_patch_group/3,
         get_resource_policies/2,
         get_resource_policies/3,
         get_service_setting/2,
         get_service_setting/3,
         label_parameter_version/2,
         label_parameter_version/3,
         list_association_versions/2,
         list_association_versions/3,
         list_associations/2,
         list_associations/3,
         list_command_invocations/2,
         list_command_invocations/3,
         list_commands/2,
         list_commands/3,
         list_compliance_items/2,
         list_compliance_items/3,
         list_compliance_summaries/2,
         list_compliance_summaries/3,
         list_document_metadata_history/2,
         list_document_metadata_history/3,
         list_document_versions/2,
         list_document_versions/3,
         list_documents/2,
         list_documents/3,
         list_inventory_entries/2,
         list_inventory_entries/3,
         list_nodes/2,
         list_nodes/3,
         list_nodes_summary/2,
         list_nodes_summary/3,
         list_ops_item_events/2,
         list_ops_item_events/3,
         list_ops_item_related_items/2,
         list_ops_item_related_items/3,
         list_ops_metadata/2,
         list_ops_metadata/3,
         list_resource_compliance_summaries/2,
         list_resource_compliance_summaries/3,
         list_resource_data_sync/2,
         list_resource_data_sync/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_document_permission/2,
         modify_document_permission/3,
         put_compliance_items/2,
         put_compliance_items/3,
         put_inventory/2,
         put_inventory/3,
         put_parameter/2,
         put_parameter/3,
         put_resource_policy/2,
         put_resource_policy/3,
         register_default_patch_baseline/2,
         register_default_patch_baseline/3,
         register_patch_baseline_for_patch_group/2,
         register_patch_baseline_for_patch_group/3,
         register_target_with_maintenance_window/2,
         register_target_with_maintenance_window/3,
         register_task_with_maintenance_window/2,
         register_task_with_maintenance_window/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_service_setting/2,
         reset_service_setting/3,
         resume_session/2,
         resume_session/3,
         send_automation_signal/2,
         send_automation_signal/3,
         send_command/2,
         send_command/3,
         start_associations_once/2,
         start_associations_once/3,
         start_automation_execution/2,
         start_automation_execution/3,
         start_change_request_execution/2,
         start_change_request_execution/3,
         start_execution_preview/2,
         start_execution_preview/3,
         start_session/2,
         start_session/3,
         stop_automation_execution/2,
         stop_automation_execution/3,
         terminate_session/2,
         terminate_session/3,
         unlabel_parameter_version/2,
         unlabel_parameter_version/3,
         update_association/2,
         update_association/3,
         update_association_status/2,
         update_association_status/3,
         update_document/2,
         update_document/3,
         update_document_default_version/2,
         update_document_default_version/3,
         update_document_metadata/2,
         update_document_metadata/3,
         update_maintenance_window/2,
         update_maintenance_window/3,
         update_maintenance_window_target/2,
         update_maintenance_window_target/3,
         update_maintenance_window_task/2,
         update_maintenance_window_task/3,
         update_managed_instance_role/2,
         update_managed_instance_role/3,
         update_ops_item/2,
         update_ops_item/3,
         update_ops_metadata/2,
         update_ops_metadata/3,
         update_patch_baseline/2,
         update_patch_baseline/3,
         update_resource_data_sync/2,
         update_resource_data_sync/3,
         update_service_setting/2,
         update_service_setting/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_automation_execution_result() :: #{
%%   <<"AutomationExecution">> => automation_execution()
%% }
-type get_automation_execution_result() :: #{binary() => any()}.

%% Example:
%% send_automation_signal_result() :: #{

%% }
-type send_automation_signal_result() :: #{binary() => any()}.

%% Example:
%% invalid_instance_property_filter_value() :: #{
%%   <<"message">> => string()
%% }
-type invalid_instance_property_filter_value() :: #{binary() => any()}.

%% Example:
%% get_maintenance_window_execution_task_invocation_request() :: #{
%%   <<"InvocationId">> := string(),
%%   <<"TaskId">> := string(),
%%   <<"WindowExecutionId">> := string()
%% }
-type get_maintenance_window_execution_task_invocation_request() :: #{binary() => any()}.

%% Example:
%% register_default_patch_baseline_result() :: #{
%%   <<"BaselineId">> => string()
%% }
-type register_default_patch_baseline_result() :: #{binary() => any()}.

%% Example:
%% list_command_invocations_request() :: #{
%%   <<"CommandId">> => string(),
%%   <<"Details">> => boolean(),
%%   <<"Filters">> => list(command_filter()()),
%%   <<"InstanceId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_command_invocations_request() :: #{binary() => any()}.

%% Example:
%% compliance_string_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type compliance_string_filter() :: #{binary() => any()}.

%% Example:
%% notification_config() :: #{
%%   <<"NotificationArn">> => string(),
%%   <<"NotificationEvents">> => list(list(any())()),
%%   <<"NotificationType">> => list(any())
%% }
-type notification_config() :: #{binary() => any()}.

%% Example:
%% deregister_target_from_maintenance_window_request() :: #{
%%   <<"Safe">> => boolean(),
%%   <<"WindowId">> := string(),
%%   <<"WindowTargetId">> := string()
%% }
-type deregister_target_from_maintenance_window_request() :: #{binary() => any()}.

%% Example:
%% parent_step_details() :: #{
%%   <<"Action">> => string(),
%%   <<"Iteration">> => integer(),
%%   <<"IteratorValue">> => string(),
%%   <<"StepExecutionId">> => string(),
%%   <<"StepName">> => string()
%% }
-type parent_step_details() :: #{binary() => any()}.

%% Example:
%% cancel_maintenance_window_execution_result() :: #{
%%   <<"WindowExecutionId">> => string()
%% }
-type cancel_maintenance_window_execution_result() :: #{binary() => any()}.

%% Example:
%% list_ops_item_events_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(ops_item_event_summary()())
%% }
-type list_ops_item_events_response() :: #{binary() => any()}.

%% Example:
%% describe_inventory_deletions_request() :: #{
%%   <<"DeletionId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_inventory_deletions_request() :: #{binary() => any()}.

%% Example:
%% register_target_with_maintenance_window_result() :: #{
%%   <<"WindowTargetId">> => string()
%% }
-type register_target_with_maintenance_window_result() :: #{binary() => any()}.

%% Example:
%% start_associations_once_result() :: #{

%% }
-type start_associations_once_result() :: #{binary() => any()}.

%% Example:
%% create_patch_baseline_request() :: #{
%%   <<"ApprovalRules">> => patch_rule_group(),
%%   <<"ApprovedPatches">> => list(string()()),
%%   <<"ApprovedPatchesComplianceLevel">> => list(any()),
%%   <<"ApprovedPatchesEnableNonSecurity">> => boolean(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"GlobalFilters">> => patch_filter_group(),
%%   <<"Name">> := string(),
%%   <<"OperatingSystem">> => list(any()),
%%   <<"RejectedPatches">> => list(string()()),
%%   <<"RejectedPatchesAction">> => list(any()),
%%   <<"Sources">> => list(patch_source()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_patch_baseline_request() :: #{binary() => any()}.

%% Example:
%% invalid_association() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_association() :: #{binary() => any()}.

%% Example:
%% update_association_status_result() :: #{
%%   <<"AssociationDescription">> => association_description()
%% }
-type update_association_status_result() :: #{binary() => any()}.

%% Example:
%% node_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type node_filter() :: #{binary() => any()}.

%% Example:
%% update_maintenance_window_task_request() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"CutoffBehavior">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"Replace">> => boolean(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"Targets">> => list(target()()),
%%   <<"TaskArn">> => string(),
%%   <<"TaskInvocationParameters">> => maintenance_window_task_invocation_parameters(),
%%   <<"TaskParameters">> => map(),
%%   <<"WindowId">> := string(),
%%   <<"WindowTaskId">> := string()
%% }
-type update_maintenance_window_task_request() :: #{binary() => any()}.

%% Example:
%% get_maintenance_window_execution_request() :: #{
%%   <<"WindowExecutionId">> := string()
%% }
-type get_maintenance_window_execution_request() :: #{binary() => any()}.

%% Example:
%% inventory_item_attribute() :: #{
%%   <<"DataType">> => list(any()),
%%   <<"Name">> => string()
%% }
-type inventory_item_attribute() :: #{binary() => any()}.

%% Example:
%% get_default_patch_baseline_request() :: #{
%%   <<"OperatingSystem">> => list(any())
%% }
-type get_default_patch_baseline_request() :: #{binary() => any()}.

%% Example:
%% get_parameters_result() :: #{
%%   <<"InvalidParameters">> => list(string()()),
%%   <<"Parameters">> => list(parameter()())
%% }
-type get_parameters_result() :: #{binary() => any()}.

%% Example:
%% metadata_value() :: #{
%%   <<"Value">> => string()
%% }
-type metadata_value() :: #{binary() => any()}.

%% Example:
%% get_maintenance_window_task_request() :: #{
%%   <<"WindowId">> := string(),
%%   <<"WindowTaskId">> := string()
%% }
-type get_maintenance_window_task_request() :: #{binary() => any()}.

%% Example:
%% start_execution_preview_response() :: #{
%%   <<"ExecutionPreviewId">> => string()
%% }
-type start_execution_preview_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{

%% }
-type delete_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% patch_group_patch_baseline_mapping() :: #{
%%   <<"BaselineIdentity">> => patch_baseline_identity(),
%%   <<"PatchGroup">> => string()
%% }
-type patch_group_patch_baseline_mapping() :: #{binary() => any()}.

%% Example:
%% parameter_metadata() :: #{
%%   <<"ARN">> => string(),
%%   <<"AllowedPattern">> => string(),
%%   <<"DataType">> => string(),
%%   <<"Description">> => string(),
%%   <<"KeyId">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"LastModifiedUser">> => string(),
%%   <<"Name">> => string(),
%%   <<"Policies">> => list(parameter_inline_policy()()),
%%   <<"Tier">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"Version">> => float()
%% }
-type parameter_metadata() :: #{binary() => any()}.

%% Example:
%% max_document_size_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type max_document_size_exceeded() :: #{binary() => any()}.

%% Example:
%% start_execution_preview_request() :: #{
%%   <<"DocumentName">> := string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"ExecutionInputs">> => list()
%% }
-type start_execution_preview_request() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_already_exists_exception() :: #{
%%   <<"SyncName">> => string()
%% }
-type resource_data_sync_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% describe_available_patches_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Patches">> => list(patch()())
%% }
-type describe_available_patches_result() :: #{binary() => any()}.

%% Example:
%% delete_association_result() :: #{

%% }
-type delete_association_result() :: #{binary() => any()}.

%% Example:
%% describe_patch_properties_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Properties">> => list(map()())
%% }
-type describe_patch_properties_result() :: #{binary() => any()}.

%% Example:
%% update_resource_data_sync_result() :: #{

%% }
-type update_resource_data_sync_result() :: #{binary() => any()}.

%% Example:
%% describe_activations_filter() :: #{
%%   <<"FilterKey">> => list(any()),
%%   <<"FilterValues">> => list(string()())
%% }
-type describe_activations_filter() :: #{binary() => any()}.

%% Example:
%% ops_item() :: #{
%%   <<"ActualEndTime">> => non_neg_integer(),
%%   <<"ActualStartTime">> => non_neg_integer(),
%%   <<"Category">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Notifications">> => list(ops_item_notification()()),
%%   <<"OperationalData">> => map(),
%%   <<"OpsItemArn">> => string(),
%%   <<"OpsItemId">> => string(),
%%   <<"OpsItemType">> => string(),
%%   <<"PlannedEndTime">> => non_neg_integer(),
%%   <<"PlannedStartTime">> => non_neg_integer(),
%%   <<"Priority">> => integer(),
%%   <<"RelatedOpsItems">> => list(related_ops_item()()),
%%   <<"Severity">> => string(),
%%   <<"Source">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Title">> => string(),
%%   <<"Version">> => string()
%% }
-type ops_item() :: #{binary() => any()}.

%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% get_service_setting_result() :: #{
%%   <<"ServiceSetting">> => service_setting()
%% }
-type get_service_setting_result() :: #{binary() => any()}.

%% Example:
%% start_associations_once_request() :: #{
%%   <<"AssociationIds">> := list(string()())
%% }
-type start_associations_once_request() :: #{binary() => any()}.

%% Example:
%% update_document_result() :: #{
%%   <<"DocumentDescription">> => document_description()
%% }
-type update_document_result() :: #{binary() => any()}.

%% Example:
%% invalid_policy_attribute_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_policy_attribute_exception() :: #{binary() => any()}.

%% Example:
%% describe_association_request() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"AssociationVersion">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"Name">> => string()
%% }
-type describe_association_request() :: #{binary() => any()}.

%% Example:
%% invalid_plugin_name() :: #{

%% }
-type invalid_plugin_name() :: #{binary() => any()}.

%% Example:
%% invalid_type_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_type_name_exception() :: #{binary() => any()}.

%% Example:
%% put_parameter_request() :: #{
%%   <<"AllowedPattern">> => string(),
%%   <<"DataType">> => string(),
%%   <<"Description">> => string(),
%%   <<"KeyId">> => string(),
%%   <<"Name">> := string(),
%%   <<"Overwrite">> => boolean(),
%%   <<"Policies">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Tier">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"Value">> := string()
%% }
-type put_parameter_request() :: #{binary() => any()}.

%% Example:
%% instance_property_filter() :: #{
%%   <<"key">> => list(any()),
%%   <<"valueSet">> => list(string()())
%% }
-type instance_property_filter() :: #{binary() => any()}.

%% Example:
%% maintenance_window_execution() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string(),
%%   <<"WindowExecutionId">> => string(),
%%   <<"WindowId">> => string()
%% }
-type maintenance_window_execution() :: #{binary() => any()}.

%% Example:
%% unlabel_parameter_version_request() :: #{
%%   <<"Labels">> := list(string()()),
%%   <<"Name">> := string(),
%%   <<"ParameterVersion">> := float()
%% }
-type unlabel_parameter_version_request() :: #{binary() => any()}.

%% Example:
%% invalid_item_content_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"TypeName">> => string()
%% }
-type invalid_item_content_exception() :: #{binary() => any()}.

%% Example:
%% list_nodes_summary_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summary">> => list(map()())
%% }
-type list_nodes_summary_result() :: #{binary() => any()}.

%% Example:
%% get_ops_item_request() :: #{
%%   <<"OpsItemArn">> => string(),
%%   <<"OpsItemId">> := string()
%% }
-type get_ops_item_request() :: #{binary() => any()}.

%% Example:
%% start_session_request() :: #{
%%   <<"DocumentName">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"Reason">> => string(),
%%   <<"Target">> := string()
%% }
-type start_session_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_patch_states_request() :: #{
%%   <<"InstanceIds">> := list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_patch_states_request() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_s3_destination() :: #{
%%   <<"AWSKMSKeyARN">> => string(),
%%   <<"BucketName">> => string(),
%%   <<"DestinationDataSharing">> => resource_data_sync_destination_data_sharing(),
%%   <<"Prefix">> => string(),
%%   <<"Region">> => string(),
%%   <<"SyncFormat">> => list(any())
%% }
-type resource_data_sync_s3_destination() :: #{binary() => any()}.

%% Example:
%% delete_ops_item_response() :: #{

%% }
-type delete_ops_item_response() :: #{binary() => any()}.

%% Example:
%% incompatible_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type incompatible_policy_exception() :: #{binary() => any()}.

%% Example:
%% step_execution_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type step_execution_filter() :: #{binary() => any()}.

%% Example:
%% parameter_not_found() :: #{
%%   <<"message">> => string()
%% }
-type parameter_not_found() :: #{binary() => any()}.

%% Example:
%% inventory_group() :: #{
%%   <<"Filters">> => list(inventory_filter()()),
%%   <<"Name">> => string()
%% }
-type inventory_group() :: #{binary() => any()}.

%% Example:
%% ops_item_access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ops_item_access_denied_exception() :: #{binary() => any()}.

%% Example:
%% malformed_resource_policy_document_exception() :: #{
%%   <<"Message">> => string()
%% }
-type malformed_resource_policy_document_exception() :: #{binary() => any()}.

%% Example:
%% ops_item_identity() :: #{
%%   <<"Arn">> => string()
%% }
-type ops_item_identity() :: #{binary() => any()}.

%% Example:
%% invalid_result_attribute_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_result_attribute_exception() :: #{binary() => any()}.

%% Example:
%% delete_parameter_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_parameter_request() :: #{binary() => any()}.

%% Example:
%% deregister_task_from_maintenance_window_result() :: #{
%%   <<"WindowId">> => string(),
%%   <<"WindowTaskId">> => string()
%% }
-type deregister_task_from_maintenance_window_result() :: #{binary() => any()}.

%% Example:
%% update_ops_metadata_request() :: #{
%%   <<"KeysToDelete">> => list(string()()),
%%   <<"MetadataToUpdate">> => map(),
%%   <<"OpsMetadataArn">> := string()
%% }
-type update_ops_metadata_request() :: #{binary() => any()}.

%% Example:
%% invalid_target() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_target() :: #{binary() => any()}.

%% Example:
%% inventory_result_entity() :: #{
%%   <<"Data">> => map(),
%%   <<"Id">> => string()
%% }
-type inventory_result_entity() :: #{binary() => any()}.

%% Example:
%% deregister_patch_baseline_for_patch_group_request() :: #{
%%   <<"BaselineId">> := string(),
%%   <<"PatchGroup">> := string()
%% }
-type deregister_patch_baseline_for_patch_group_request() :: #{binary() => any()}.

%% Example:
%% list_resource_compliance_summaries_request() :: #{
%%   <<"Filters">> => list(compliance_string_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resource_compliance_summaries_request() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% cloud_watch_output_config() :: #{
%%   <<"CloudWatchLogGroupName">> => string(),
%%   <<"CloudWatchOutputEnabled">> => boolean()
%% }
-type cloud_watch_output_config() :: #{binary() => any()}.

%% Example:
%% document_review_comment_source() :: #{
%%   <<"Content">> => string(),
%%   <<"Type">> => list(any())
%% }
-type document_review_comment_source() :: #{binary() => any()}.

%% Example:
%% account_sharing_info() :: #{
%%   <<"AccountId">> => string(),
%%   <<"SharedDocumentVersion">> => string()
%% }
-type account_sharing_info() :: #{binary() => any()}.

%% Example:
%% invalid_tag() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_tag() :: #{binary() => any()}.

%% Example:
%% describe_instance_associations_status_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_associations_status_request() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_item() :: #{
%%   <<"LastStatus">> => list(any()),
%%   <<"LastSuccessfulSyncTime">> => non_neg_integer(),
%%   <<"LastSyncStatusMessage">> => string(),
%%   <<"LastSyncTime">> => non_neg_integer(),
%%   <<"S3Destination">> => resource_data_sync_s3_destination(),
%%   <<"SyncCreatedTime">> => non_neg_integer(),
%%   <<"SyncLastModifiedTime">> => non_neg_integer(),
%%   <<"SyncName">> => string(),
%%   <<"SyncSource">> => resource_data_sync_source_with_state(),
%%   <<"SyncType">> => string()
%% }
-type resource_data_sync_item() :: #{binary() => any()}.

%% Example:
%% ops_metadata_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type ops_metadata_filter() :: #{binary() => any()}.

%% Example:
%% unsupported_parameter_type() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_parameter_type() :: #{binary() => any()}.

%% Example:
%% document_parameter() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type document_parameter() :: #{binary() => any()}.

%% Example:
%% document_version_limit_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type document_version_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% compliance_item() :: #{
%%   <<"ComplianceType">> => string(),
%%   <<"Details">> => map(),
%%   <<"ExecutionSummary">> => compliance_execution_summary(),
%%   <<"Id">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"Severity">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Title">> => string()
%% }
-type compliance_item() :: #{binary() => any()}.

%% Example:
%% logging_info() :: #{
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyPrefix">> => string(),
%%   <<"S3Region">> => string()
%% }
-type logging_info() :: #{binary() => any()}.

%% Example:
%% register_default_patch_baseline_request() :: #{
%%   <<"BaselineId">> := string()
%% }
-type register_default_patch_baseline_request() :: #{binary() => any()}.

%% Example:
%% already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.

%% Example:
%% resume_session_request() :: #{
%%   <<"SessionId">> := string()
%% }
-type resume_session_request() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_targets_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Targets">> => list(maintenance_window_target()())
%% }
-type describe_maintenance_window_targets_result() :: #{binary() => any()}.

%% Example:
%% describe_parameters_request() :: #{
%%   <<"Filters">> => list(parameters_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ParameterFilters">> => list(parameter_string_filter()()),
%%   <<"Shared">> => boolean()
%% }
-type describe_parameters_request() :: #{binary() => any()}.

%% Example:
%% resource_policy_limit_exceeded_exception() :: #{
%%   <<"Limit">> => integer(),
%%   <<"LimitType">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_policy_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% alarm() :: #{
%%   <<"Name">> => string()
%% }
-type alarm() :: #{binary() => any()}.

%% Example:
%% automation_execution_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type automation_execution_filter() :: #{binary() => any()}.

%% Example:
%% inventory_deletion_summary_item() :: #{
%%   <<"Count">> => integer(),
%%   <<"RemainingCount">> => integer(),
%%   <<"Version">> => string()
%% }
-type inventory_deletion_summary_item() :: #{binary() => any()}.

%% Example:
%% describe_association_result() :: #{
%%   <<"AssociationDescription">> => association_description()
%% }
-type describe_association_result() :: #{binary() => any()}.

%% Example:
%% list_association_versions_request() :: #{
%%   <<"AssociationId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_association_versions_request() :: #{binary() => any()}.

%% Example:
%% resource_policy_invalid_parameter_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ParameterNames">> => list(string()())
%% }
-type resource_policy_invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% non_compliant_summary() :: #{
%%   <<"NonCompliantCount">> => integer(),
%%   <<"SeveritySummary">> => severity_summary()
%% }
-type non_compliant_summary() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_execution_task_invocations_request() :: #{
%%   <<"Filters">> => list(maintenance_window_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TaskId">> := string(),
%%   <<"WindowExecutionId">> := string()
%% }
-type describe_maintenance_window_execution_task_invocations_request() :: #{binary() => any()}.

%% Example:
%% related_ops_item() :: #{
%%   <<"OpsItemId">> => string()
%% }
-type related_ops_item() :: #{binary() => any()}.

%% Example:
%% get_maintenance_window_request() :: #{
%%   <<"WindowId">> := string()
%% }
-type get_maintenance_window_request() :: #{binary() => any()}.

%% Example:
%% patch_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type patch_filter() :: #{binary() => any()}.

%% Example:
%% ops_result_attribute() :: #{
%%   <<"TypeName">> => string()
%% }
-type ops_result_attribute() :: #{binary() => any()}.

%% Example:
%% ops_entity() :: #{
%%   <<"Data">> => map(),
%%   <<"Id">> => string()
%% }
-type ops_entity() :: #{binary() => any()}.

%% Example:
%% document_reviewer_response_source() :: #{
%%   <<"Comment">> => list(document_review_comment_source()()),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"ReviewStatus">> => list(any()),
%%   <<"Reviewer">> => string(),
%%   <<"UpdatedTime">> => non_neg_integer()
%% }
-type document_reviewer_response_source() :: #{binary() => any()}.

%% Example:
%% activation() :: #{
%%   <<"ActivationId">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DefaultInstanceName">> => string(),
%%   <<"Description">> => string(),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"Expired">> => boolean(),
%%   <<"IamRole">> => string(),
%%   <<"RegistrationLimit">> => integer(),
%%   <<"RegistrationsCount">> => integer(),
%%   <<"Tags">> => list(tag()())
%% }
-type activation() :: #{binary() => any()}.

%% Example:
%% describe_available_patches_request() :: #{
%%   <<"Filters">> => list(patch_orchestrator_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_available_patches_request() :: #{binary() => any()}.

%% Example:
%% update_patch_baseline_request() :: #{
%%   <<"ApprovalRules">> => patch_rule_group(),
%%   <<"ApprovedPatches">> => list(string()()),
%%   <<"ApprovedPatchesComplianceLevel">> => list(any()),
%%   <<"ApprovedPatchesEnableNonSecurity">> => boolean(),
%%   <<"BaselineId">> := string(),
%%   <<"Description">> => string(),
%%   <<"GlobalFilters">> => patch_filter_group(),
%%   <<"Name">> => string(),
%%   <<"RejectedPatches">> => list(string()()),
%%   <<"RejectedPatchesAction">> => list(any()),
%%   <<"Replace">> => boolean(),
%%   <<"Sources">> => list(patch_source()())
%% }
-type update_patch_baseline_request() :: #{binary() => any()}.

%% Example:
%% association_status() :: #{
%%   <<"AdditionalInfo">> => string(),
%%   <<"Date">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Name">> => list(any())
%% }
-type association_status() :: #{binary() => any()}.

%% Example:
%% inventory_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type inventory_filter() :: #{binary() => any()}.

%% Example:
%% update_maintenance_window_target_result() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"OwnerInformation">> => string(),
%%   <<"Targets">> => list(target()()),
%%   <<"WindowId">> => string(),
%%   <<"WindowTargetId">> => string()
%% }
-type update_maintenance_window_target_result() :: #{binary() => any()}.

%% Example:
%% instance_association_output_location() :: #{
%%   <<"S3Location">> => s3_output_location()
%% }
-type instance_association_output_location() :: #{binary() => any()}.

%% Example:
%% associate_ops_item_related_item_response() :: #{
%%   <<"AssociationId">> => string()
%% }
-type associate_ops_item_related_item_response() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"Tags">> := list(tag()())
%% }
-type add_tags_to_resource_request() :: #{binary() => any()}.

%% Example:
%% document_permission_limit() :: #{
%%   <<"Message">> => string()
%% }
-type document_permission_limit() :: #{binary() => any()}.

%% Example:
%% result_attribute() :: #{
%%   <<"TypeName">> => string()
%% }
-type result_attribute() :: #{binary() => any()}.

%% Example:
%% get_parameter_history_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"WithDecryption">> => boolean()
%% }
-type get_parameter_history_request() :: #{binary() => any()}.

%% Example:
%% association_execution_target() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"AssociationVersion">> => string(),
%%   <<"DetailedStatus">> => string(),
%%   <<"ExecutionId">> => string(),
%%   <<"LastExecutionDate">> => non_neg_integer(),
%%   <<"OutputSource">> => output_source(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"Status">> => string()
%% }
-type association_execution_target() :: #{binary() => any()}.

%% Example:
%% send_command_result() :: #{
%%   <<"Command">> => command()
%% }
-type send_command_result() :: #{binary() => any()}.

%% Example:
%% association_limit_exceeded() :: #{

%% }
-type association_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% describe_patch_properties_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OperatingSystem">> := list(any()),
%%   <<"PatchSet">> => list(any()),
%%   <<"Property">> := list(any())
%% }
-type describe_patch_properties_request() :: #{binary() => any()}.

%% Example:
%% maintenance_window_task_parameter_value_expression() :: #{
%%   <<"Values">> => list(string()())
%% }
-type maintenance_window_task_parameter_value_expression() :: #{binary() => any()}.

%% Example:
%% unsupported_feature_required_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_feature_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_document() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_document() :: #{binary() => any()}.

%% Example:
%% invalid_document_content() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_document_content() :: #{binary() => any()}.

%% Example:
%% unsupported_inventory_item_context_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"TypeName">> => string()
%% }
-type unsupported_inventory_item_context_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameters() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameters() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_data_sync_conflict_exception() :: #{binary() => any()}.

%% Example:
%% get_patch_baseline_request() :: #{
%%   <<"BaselineId">> := string()
%% }
-type get_patch_baseline_request() :: #{binary() => any()}.

%% Example:
%% invalid_delete_inventory_parameters_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_delete_inventory_parameters_exception() :: #{binary() => any()}.

%% Example:
%% parameter_inline_policy() :: #{
%%   <<"PolicyStatus">> => string(),
%%   <<"PolicyText">> => string(),
%%   <<"PolicyType">> => string()
%% }
-type parameter_inline_policy() :: #{binary() => any()}.

%% Example:
%% association_version_info() :: #{
%%   <<"ApplyOnlyAtCronInterval">> => boolean(),
%%   <<"AssociationId">> => string(),
%%   <<"AssociationName">> => string(),
%%   <<"AssociationVersion">> => string(),
%%   <<"CalendarNames">> => list(string()()),
%%   <<"ComplianceSeverity">> => list(any()),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DocumentVersion">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputLocation">> => instance_association_output_location(),
%%   <<"Parameters">> => map(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"SyncCompliance">> => list(any()),
%%   <<"TargetLocations">> => list(target_location()()),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"Targets">> => list(target()())
%% }
-type association_version_info() :: #{binary() => any()}.

%% Example:
%% instance_association_status_info() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"AssociationName">> => string(),
%%   <<"AssociationVersion">> => string(),
%%   <<"DetailedStatus">> => string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"ErrorCode">> => string(),
%%   <<"ExecutionDate">> => non_neg_integer(),
%%   <<"ExecutionSummary">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputUrl">> => instance_association_output_url(),
%%   <<"Status">> => string()
%% }
-type instance_association_status_info() :: #{binary() => any()}.

%% Example:
%% get_ops_summary_request() :: #{
%%   <<"Aggregators">> => list(ops_aggregator()()),
%%   <<"Filters">> => list(ops_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResultAttributes">> => list(ops_result_attribute()()),
%%   <<"SyncName">> => string()
%% }
-type get_ops_summary_request() :: #{binary() => any()}.

%% Example:
%% update_document_request() :: #{
%%   <<"Attachments">> => list(attachments_source()()),
%%   <<"Content">> := string(),
%%   <<"DisplayName">> => string(),
%%   <<"DocumentFormat">> => list(any()),
%%   <<"DocumentVersion">> => string(),
%%   <<"Name">> := string(),
%%   <<"TargetType">> => string(),
%%   <<"VersionName">> => string()
%% }
-type update_document_request() :: #{binary() => any()}.

%% Example:
%% patch_orchestrator_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type patch_orchestrator_filter() :: #{binary() => any()}.

%% Example:
%% delete_parameters_request() :: #{
%%   <<"Names">> := list(string()())
%% }
-type delete_parameters_request() :: #{binary() => any()}.

%% Example:
%% parameter_string_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Option">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type parameter_string_filter() :: #{binary() => any()}.

%% Example:
%% attachment_information() :: #{
%%   <<"Name">> => string()
%% }
-type attachment_information() :: #{binary() => any()}.

%% Example:
%% invalid_document_version() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_document_version() :: #{binary() => any()}.

%% Example:
%% automation_execution_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type automation_execution_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_patch_baselines_request() :: #{
%%   <<"Filters">> => list(patch_orchestrator_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_patch_baselines_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_information_request() :: #{
%%   <<"Filters">> => list(instance_information_string_filter()()),
%%   <<"InstanceInformationFilterList">> => list(instance_information_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_information_request() :: #{binary() => any()}.

%% Example:
%% policies_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type policies_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_source_with_state() :: #{
%%   <<"AwsOrganizationsSource">> => resource_data_sync_aws_organizations_source(),
%%   <<"EnableAllOpsDataSources">> => boolean(),
%%   <<"IncludeFutureRegions">> => boolean(),
%%   <<"SourceRegions">> => list(string()()),
%%   <<"SourceType">> => string(),
%%   <<"State">> => string()
%% }
-type resource_data_sync_source_with_state() :: #{binary() => any()}.

%% Example:
%% association_overview() :: #{
%%   <<"AssociationStatusAggregatedCount">> => map(),
%%   <<"DetailedStatus">> => string(),
%%   <<"Status">> => string()
%% }
-type association_overview() :: #{binary() => any()}.

%% Example:
%% inventory_aggregator() :: #{
%%   <<"Aggregators">> => list(inventory_aggregator()()),
%%   <<"Expression">> => string(),
%%   <<"Groups">> => list(inventory_group()())
%% }
-type inventory_aggregator() :: #{binary() => any()}.

%% Example:
%% send_automation_signal_request() :: #{
%%   <<"AutomationExecutionId">> := string(),
%%   <<"Payload">> => map(),
%%   <<"SignalType">> := list(any())
%% }
-type send_automation_signal_request() :: #{binary() => any()}.

%% Example:
%% instance_patch_state_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type instance_patch_state_filter() :: #{binary() => any()}.

%% Example:
%% describe_automation_executions_result() :: #{
%%   <<"AutomationExecutionMetadataList">> => list(automation_execution_metadata()()),
%%   <<"NextToken">> => string()
%% }
-type describe_automation_executions_result() :: #{binary() => any()}.

%% Example:
%% list_ops_metadata_request() :: #{
%%   <<"Filters">> => list(ops_metadata_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_ops_metadata_request() :: #{binary() => any()}.

%% Example:
%% label_parameter_version_request() :: #{
%%   <<"Labels">> := list(string()()),
%%   <<"Name">> := string(),
%%   <<"ParameterVersion">> => float()
%% }
-type label_parameter_version_request() :: #{binary() => any()}.

%% Example:
%% delete_document_request() :: #{
%%   <<"DocumentVersion">> => string(),
%%   <<"Force">> => boolean(),
%%   <<"Name">> := string(),
%%   <<"VersionName">> => string()
%% }
-type delete_document_request() :: #{binary() => any()}.

%% Example:
%% get_connection_status_request() :: #{
%%   <<"Target">> := string()
%% }
-type get_connection_status_request() :: #{binary() => any()}.

%% Example:
%% create_association_batch_result() :: #{
%%   <<"Failed">> => list(failed_create_association()()),
%%   <<"Successful">> => list(association_description()())
%% }
-type create_association_batch_result() :: #{binary() => any()}.

%% Example:
%% inventory_item_schema() :: #{
%%   <<"Attributes">> => list(inventory_item_attribute()()),
%%   <<"DisplayName">> => string(),
%%   <<"TypeName">> => string(),
%%   <<"Version">> => string()
%% }
-type inventory_item_schema() :: #{binary() => any()}.

%% Example:
%% get_resource_policies_response_entry() :: #{
%%   <<"Policy">> => string(),
%%   <<"PolicyHash">> => string(),
%%   <<"PolicyId">> => string()
%% }
-type get_resource_policies_response_entry() :: #{binary() => any()}.

%% Example:
%% duplicate_document_content() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_document_content() :: #{binary() => any()}.

%% Example:
%% create_association_batch_request() :: #{
%%   <<"Entries">> := list(create_association_batch_request_entry()())
%% }
-type create_association_batch_request() :: #{binary() => any()}.

%% Example:
%% association_execution_does_not_exist() :: #{
%%   <<"Message">> => string()
%% }
-type association_execution_does_not_exist() :: #{binary() => any()}.

%% Example:
%% maintenance_window_step_functions_parameters() :: #{
%%   <<"Input">> => string(),
%%   <<"Name">> => string()
%% }
-type maintenance_window_step_functions_parameters() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_invalid_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_data_sync_invalid_configuration_exception() :: #{binary() => any()}.

%% Example:
%% effective_patch() :: #{
%%   <<"Patch">> => patch(),
%%   <<"PatchStatus">> => patch_status()
%% }
-type effective_patch() :: #{binary() => any()}.

%% Example:
%% delete_ops_metadata_request() :: #{
%%   <<"OpsMetadataArn">> := string()
%% }
-type delete_ops_metadata_request() :: #{binary() => any()}.

%% Example:
%% document_identifier() :: #{
%%   <<"Author">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"DocumentFormat">> => list(any()),
%%   <<"DocumentType">> => list(any()),
%%   <<"DocumentVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"PlatformTypes">> => list(list(any())()),
%%   <<"Requires">> => list(document_requires()()),
%%   <<"ReviewStatus">> => list(any()),
%%   <<"SchemaVersion">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetType">> => string(),
%%   <<"VersionName">> => string()
%% }
-type document_identifier() :: #{binary() => any()}.

%% Example:
%% total_size_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type total_size_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% ops_aggregator() :: #{
%%   <<"AggregatorType">> => string(),
%%   <<"Aggregators">> => list(ops_aggregator()()),
%%   <<"AttributeName">> => string(),
%%   <<"Filters">> => list(ops_filter()()),
%%   <<"TypeName">> => string(),
%%   <<"Values">> => map()
%% }
-type ops_aggregator() :: #{binary() => any()}.

%% Example:
%% failure_details() :: #{
%%   <<"Details">> => map(),
%%   <<"FailureStage">> => string(),
%%   <<"FailureType">> => string()
%% }
-type failure_details() :: #{binary() => any()}.

%% Example:
%% delete_maintenance_window_request() :: #{
%%   <<"WindowId">> := string()
%% }
-type delete_maintenance_window_request() :: #{binary() => any()}.

%% Example:
%% put_inventory_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"Items">> := list(inventory_item()())
%% }
-type put_inventory_request() :: #{binary() => any()}.

%% Example:
%% list_resource_compliance_summaries_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceComplianceSummaryItems">> => list(resource_compliance_summary_item()())
%% }
-type list_resource_compliance_summaries_result() :: #{binary() => any()}.

%% Example:
%% create_maintenance_window_result() :: #{
%%   <<"WindowId">> => string()
%% }
-type create_maintenance_window_result() :: #{binary() => any()}.

%% Example:
%% ops_metadata_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type ops_metadata_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_commands_request() :: #{
%%   <<"CommandId">> => string(),
%%   <<"Filters">> => list(command_filter()()),
%%   <<"InstanceId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_commands_request() :: #{binary() => any()}.

%% Example:
%% describe_patch_groups_request() :: #{
%%   <<"Filters">> => list(patch_orchestrator_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_patch_groups_request() :: #{binary() => any()}.

%% Example:
%% invalid_resource_type() :: #{

%% }
-type invalid_resource_type() :: #{binary() => any()}.

%% Example:
%% compliance_summary_item() :: #{
%%   <<"ComplianceType">> => string(),
%%   <<"CompliantSummary">> => compliant_summary(),
%%   <<"NonCompliantSummary">> => non_compliant_summary()
%% }
-type compliance_summary_item() :: #{binary() => any()}.

%% Example:
%% associate_ops_item_related_item_request() :: #{
%%   <<"AssociationType">> := string(),
%%   <<"OpsItemId">> := string(),
%%   <<"ResourceType">> := string(),
%%   <<"ResourceUri">> := string()
%% }
-type associate_ops_item_related_item_request() :: #{binary() => any()}.

%% Example:
%% create_ops_item_response() :: #{
%%   <<"OpsItemArn">> => string(),
%%   <<"OpsItemId">> => string()
%% }
-type create_ops_item_response() :: #{binary() => any()}.

%% Example:
%% invalid_resource_id() :: #{

%% }
-type invalid_resource_id() :: #{binary() => any()}.

%% Example:
%% list_document_metadata_history_request() :: #{
%%   <<"DocumentVersion">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"Metadata">> := list(any()),
%%   <<"Name">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_document_metadata_history_request() :: #{binary() => any()}.

%% Example:
%% delete_parameters_result() :: #{
%%   <<"DeletedParameters">> => list(string()()),
%%   <<"InvalidParameters">> => list(string()())
%% }
-type delete_parameters_result() :: #{binary() => any()}.

%% Example:
%% association_execution_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type association_execution_filter() :: #{binary() => any()}.

%% Example:
%% association_version_limit_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type association_version_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% list_association_versions_result() :: #{
%%   <<"AssociationVersions">> => list(association_version_info()()),
%%   <<"NextToken">> => string()
%% }
-type list_association_versions_result() :: #{binary() => any()}.

%% Example:
%% delete_association_request() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"Name">> => string()
%% }
-type delete_association_request() :: #{binary() => any()}.

%% Example:
%% invalid_filter_value() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_filter_value() :: #{binary() => any()}.

%% Example:
%% get_default_patch_baseline_result() :: #{
%%   <<"BaselineId">> => string(),
%%   <<"OperatingSystem">> => list(any())
%% }
-type get_default_patch_baseline_result() :: #{binary() => any()}.

%% Example:
%% delete_activation_result() :: #{

%% }
-type delete_activation_result() :: #{binary() => any()}.

%% Example:
%% custom_schema_count_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type custom_schema_count_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_execution_preview_request() :: #{
%%   <<"ExecutionPreviewId">> := string()
%% }
-type get_execution_preview_request() :: #{binary() => any()}.

%% Example:
%% cancel_maintenance_window_execution_request() :: #{
%%   <<"WindowExecutionId">> := string()
%% }
-type cancel_maintenance_window_execution_request() :: #{binary() => any()}.

%% Example:
%% get_document_result() :: #{
%%   <<"AttachmentsContent">> => list(attachment_content()()),
%%   <<"Content">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"DocumentFormat">> => list(any()),
%%   <<"DocumentType">> => list(any()),
%%   <<"DocumentVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"Requires">> => list(document_requires()()),
%%   <<"ReviewStatus">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusInformation">> => string(),
%%   <<"VersionName">> => string()
%% }
-type get_document_result() :: #{binary() => any()}.

%% Example:
%% describe_patch_group_state_result() :: #{
%%   <<"Instances">> => integer(),
%%   <<"InstancesWithCriticalNonCompliantPatches">> => integer(),
%%   <<"InstancesWithFailedPatches">> => integer(),
%%   <<"InstancesWithInstalledOtherPatches">> => integer(),
%%   <<"InstancesWithInstalledPatches">> => integer(),
%%   <<"InstancesWithInstalledPendingRebootPatches">> => integer(),
%%   <<"InstancesWithInstalledRejectedPatches">> => integer(),
%%   <<"InstancesWithMissingPatches">> => integer(),
%%   <<"InstancesWithNotApplicablePatches">> => integer(),
%%   <<"InstancesWithOtherNonCompliantPatches">> => integer(),
%%   <<"InstancesWithSecurityNonCompliantPatches">> => integer(),
%%   <<"InstancesWithUnreportedNotApplicablePatches">> => integer()
%% }
-type describe_patch_group_state_result() :: #{binary() => any()}.

%% Example:
%% parameter_version_not_found() :: #{
%%   <<"message">> => string()
%% }
-type parameter_version_not_found() :: #{binary() => any()}.

%% Example:
%% start_automation_execution_request() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"ClientToken">> => string(),
%%   <<"DocumentName">> := string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"Parameters">> => map(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetLocations">> => list(target_location()()),
%%   <<"TargetLocationsURL">> => string(),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"TargetParameterName">> => string(),
%%   <<"Targets">> => list(target()())
%% }
-type start_automation_execution_request() :: #{binary() => any()}.

%% Example:
%% automation_execution_preview() :: #{
%%   <<"Regions">> => list(string()()),
%%   <<"StepPreviews">> => map(),
%%   <<"TargetPreviews">> => list(target_preview()()),
%%   <<"TotalAccounts">> => integer()
%% }
-type automation_execution_preview() :: #{binary() => any()}.

%% Example:
%% list_nodes_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Nodes">> => list(ssm_node()())
%% }
-type list_nodes_result() :: #{binary() => any()}.

%% Example:
%% instance_aggregated_association_overview() :: #{
%%   <<"DetailedStatus">> => string(),
%%   <<"InstanceAssociationStatusAggregatedCount">> => map()
%% }
-type instance_aggregated_association_overview() :: #{binary() => any()}.

%% Example:
%% get_inventory_schema_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Schemas">> => list(inventory_item_schema()())
%% }
-type get_inventory_schema_result() :: #{binary() => any()}.

%% Example:
%% create_resource_data_sync_request() :: #{
%%   <<"S3Destination">> => resource_data_sync_s3_destination(),
%%   <<"SyncName">> := string(),
%%   <<"SyncSource">> => resource_data_sync_source(),
%%   <<"SyncType">> => string()
%% }
-type create_resource_data_sync_request() :: #{binary() => any()}.

%% Example:
%% deregister_patch_baseline_for_patch_group_result() :: #{
%%   <<"BaselineId">> => string(),
%%   <<"PatchGroup">> => string()
%% }
-type deregister_patch_baseline_for_patch_group_result() :: #{binary() => any()}.

%% Example:
%% terminate_session_request() :: #{
%%   <<"SessionId">> := string()
%% }
-type terminate_session_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_patches_request() :: #{
%%   <<"Filters">> => list(patch_orchestrator_filter()()),
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_patches_request() :: #{binary() => any()}.

%% Example:
%% instance_patch_state() :: #{
%%   <<"BaselineId">> => string(),
%%   <<"CriticalNonCompliantCount">> => integer(),
%%   <<"FailedCount">> => integer(),
%%   <<"InstallOverrideList">> => string(),
%%   <<"InstalledCount">> => integer(),
%%   <<"InstalledOtherCount">> => integer(),
%%   <<"InstalledPendingRebootCount">> => integer(),
%%   <<"InstalledRejectedCount">> => integer(),
%%   <<"InstanceId">> => string(),
%%   <<"LastNoRebootInstallOperationTime">> => non_neg_integer(),
%%   <<"MissingCount">> => integer(),
%%   <<"NotApplicableCount">> => integer(),
%%   <<"Operation">> => list(any()),
%%   <<"OperationEndTime">> => non_neg_integer(),
%%   <<"OperationStartTime">> => non_neg_integer(),
%%   <<"OtherNonCompliantCount">> => integer(),
%%   <<"OwnerInformation">> => string(),
%%   <<"PatchGroup">> => string(),
%%   <<"RebootOption">> => list(any()),
%%   <<"SecurityNonCompliantCount">> => integer(),
%%   <<"SnapshotId">> => string(),
%%   <<"UnreportedNotApplicableCount">> => integer()
%% }
-type instance_patch_state() :: #{binary() => any()}.

%% Example:
%% describe_activations_request() :: #{
%%   <<"Filters">> => list(describe_activations_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_activations_request() :: #{binary() => any()}.

%% Example:
%% idempotent_parameter_mismatch() :: #{
%%   <<"Message">> => string()
%% }
-type idempotent_parameter_mismatch() :: #{binary() => any()}.

%% Example:
%% target() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type target() :: #{binary() => any()}.

%% Example:
%% get_maintenance_window_result() :: #{
%%   <<"AllowUnassociatedTargets">> => boolean(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Cutoff">> => integer(),
%%   <<"Description">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"EndDate">> => string(),
%%   <<"ModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NextExecutionTime">> => string(),
%%   <<"Schedule">> => string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"ScheduleTimezone">> => string(),
%%   <<"StartDate">> => string(),
%%   <<"WindowId">> => string()
%% }
-type get_maintenance_window_result() :: #{binary() => any()}.

%% Example:
%% create_ops_metadata_request() :: #{
%%   <<"Metadata">> => map(),
%%   <<"ResourceId">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_ops_metadata_request() :: #{binary() => any()}.

%% Example:
%% automation_execution() :: #{
%%   <<"Parameters">> => map(),
%%   <<"MaxErrors">> => string(),
%%   <<"AutomationExecutionId">> => string(),
%%   <<"ExecutionStartTime">> => non_neg_integer(),
%%   <<"ExecutedBy">> => string(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"CurrentAction">> => string(),
%%   <<"TargetLocationsURL">> => string(),
%%   <<"CurrentStepName">> => string(),
%%   <<"Outputs">> => map(),
%%   <<"ResolvedTargets">> => resolved_targets(),
%%   <<"TargetParameterName">> => string(),
%%   <<"StepExecutionsTruncated">> => boolean(),
%%   <<"TargetLocations">> => list(target_location()()),
%%   <<"TriggeredAlarms">> => list(alarm_state_information()()),
%%   <<"StepExecutions">> => list(step_execution()()),
%%   <<"ExecutionEndTime">> => non_neg_integer(),
%%   <<"DocumentName">> => string(),
%%   <<"ScheduledTime">> => non_neg_integer(),
%%   <<"AssociationId">> => string(),
%%   <<"ParentAutomationExecutionId">> => string(),
%%   <<"Runbooks">> => list(runbook()()),
%%   <<"ProgressCounters">> => progress_counters(),
%%   <<"ChangeRequestName">> => string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"Variables">> => map(),
%%   <<"AutomationExecutionStatus">> => list(any()),
%%   <<"Targets">> => list(target()()),
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"FailureMessage">> => string(),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"Target">> => string(),
%%   <<"OpsItemId">> => string(),
%%   <<"AutomationSubtype">> => list(any()),
%%   <<"Mode">> => list(any())
%% }
-type automation_execution() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_tasks_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tasks">> => list(maintenance_window_task()())
%% }
-type describe_maintenance_window_tasks_result() :: #{binary() => any()}.

%% Example:
%% describe_association_execution_targets_result() :: #{
%%   <<"AssociationExecutionTargets">> => list(association_execution_target()()),
%%   <<"NextToken">> => string()
%% }
-type describe_association_execution_targets_result() :: #{binary() => any()}.

%% Example:
%% describe_patch_groups_result() :: #{
%%   <<"Mappings">> => list(patch_group_patch_baseline_mapping()()),
%%   <<"NextToken">> => string()
%% }
-type describe_patch_groups_result() :: #{binary() => any()}.

%% Example:
%% invocation_does_not_exist() :: #{

%% }
-type invocation_does_not_exist() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_executions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WindowExecutions">> => list(maintenance_window_execution()())
%% }
-type describe_maintenance_window_executions_result() :: #{binary() => any()}.

%% Example:
%% s3_output_location() :: #{
%%   <<"OutputS3BucketName">> => string(),
%%   <<"OutputS3KeyPrefix">> => string(),
%%   <<"OutputS3Region">> => string()
%% }
-type s3_output_location() :: #{binary() => any()}.

%% Example:
%% terminate_session_response() :: #{
%%   <<"SessionId">> => string()
%% }
-type terminate_session_response() :: #{binary() => any()}.

%% Example:
%% delete_patch_baseline_request() :: #{
%%   <<"BaselineId">> := string()
%% }
-type delete_patch_baseline_request() :: #{binary() => any()}.

%% Example:
%% get_document_request() :: #{
%%   <<"DocumentFormat">> => list(any()),
%%   <<"DocumentVersion">> => string(),
%%   <<"Name">> := string(),
%%   <<"VersionName">> => string()
%% }
-type get_document_request() :: #{binary() => any()}.

%% Example:
%% reset_service_setting_result() :: #{
%%   <<"ServiceSetting">> => service_setting()
%% }
-type reset_service_setting_result() :: #{binary() => any()}.

%% Example:
%% document_metadata_response_info() :: #{
%%   <<"ReviewerResponse">> => list(document_reviewer_response_source()())
%% }
-type document_metadata_response_info() :: #{binary() => any()}.

%% Example:
%% baseline_override() :: #{
%%   <<"ApprovalRules">> => patch_rule_group(),
%%   <<"ApprovedPatches">> => list(string()()),
%%   <<"ApprovedPatchesComplianceLevel">> => list(any()),
%%   <<"ApprovedPatchesEnableNonSecurity">> => boolean(),
%%   <<"GlobalFilters">> => patch_filter_group(),
%%   <<"OperatingSystem">> => list(any()),
%%   <<"RejectedPatches">> => list(string()()),
%%   <<"RejectedPatchesAction">> => list(any()),
%%   <<"Sources">> => list(patch_source()())
%% }
-type baseline_override() :: #{binary() => any()}.

%% Example:
%% get_parameters_by_path_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ParameterFilters">> => list(parameter_string_filter()()),
%%   <<"Path">> := string(),
%%   <<"Recursive">> => boolean(),
%%   <<"WithDecryption">> => boolean()
%% }
-type get_parameters_by_path_request() :: #{binary() => any()}.

%% Example:
%% ops_item_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ops_item_not_found_exception() :: #{binary() => any()}.

%% Example:
%% runbook() :: #{
%%   <<"DocumentName">> => string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"TargetLocations">> => list(target_location()()),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"TargetParameterName">> => string(),
%%   <<"Targets">> => list(target()())
%% }
-type runbook() :: #{binary() => any()}.

%% Example:
%% describe_automation_step_executions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StepExecutions">> => list(step_execution()())
%% }
-type describe_automation_step_executions_result() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_schedule_request() :: #{
%%   <<"Filters">> => list(patch_orchestrator_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Targets">> => list(target()()),
%%   <<"WindowId">> => string()
%% }
-type describe_maintenance_window_schedule_request() :: #{binary() => any()}.

%% Example:
%% ops_item_conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ops_item_conflict_exception() :: #{binary() => any()}.

%% Example:
%% register_task_with_maintenance_window_request() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"ClientToken">> => string(),
%%   <<"CutoffBehavior">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"Targets">> => list(target()()),
%%   <<"TaskArn">> := string(),
%%   <<"TaskInvocationParameters">> => maintenance_window_task_invocation_parameters(),
%%   <<"TaskParameters">> => map(),
%%   <<"TaskType">> := list(any()),
%%   <<"WindowId">> := string()
%% }
-type register_task_with_maintenance_window_request() :: #{binary() => any()}.

%% Example:
%% invalid_aggregator_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_aggregator_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% invalid_option_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_option_exception() :: #{binary() => any()}.

%% Example:
%% unsupported_calendar_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_calendar_exception() :: #{binary() => any()}.

%% Example:
%% invalid_schedule() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_schedule() :: #{binary() => any()}.

%% Example:
%% get_service_setting_request() :: #{
%%   <<"SettingId">> := string()
%% }
-type get_service_setting_request() :: #{binary() => any()}.

%% Example:
%% instance_information() :: #{
%%   <<"ActivationId">> => string(),
%%   <<"AgentVersion">> => string(),
%%   <<"AssociationOverview">> => instance_aggregated_association_overview(),
%%   <<"AssociationStatus">> => string(),
%%   <<"ComputerName">> => string(),
%%   <<"IPAddress">> => string(),
%%   <<"IamRole">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"IsLatestVersion">> => boolean(),
%%   <<"LastAssociationExecutionDate">> => non_neg_integer(),
%%   <<"LastPingDateTime">> => non_neg_integer(),
%%   <<"LastSuccessfulAssociationExecutionDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PingStatus">> => list(any()),
%%   <<"PlatformName">> => string(),
%%   <<"PlatformType">> => list(any()),
%%   <<"PlatformVersion">> => string(),
%%   <<"RegistrationDate">> => non_neg_integer(),
%%   <<"ResourceType">> => list(any()),
%%   <<"SourceId">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type instance_information() :: #{binary() => any()}.

%% Example:
%% invalid_role() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_role() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_tasks_request() :: #{
%%   <<"Filters">> => list(maintenance_window_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WindowId">> := string()
%% }
-type describe_maintenance_window_tasks_request() :: #{binary() => any()}.

%% Example:
%% command_filter() :: #{
%%   <<"key">> => list(any()),
%%   <<"value">> => string()
%% }
-type command_filter() :: #{binary() => any()}.

%% Example:
%% too_many_tags_error() :: #{

%% }
-type too_many_tags_error() :: #{binary() => any()}.

%% Example:
%% update_resource_data_sync_request() :: #{
%%   <<"SyncName">> := string(),
%%   <<"SyncSource">> := resource_data_sync_source(),
%%   <<"SyncType">> := string()
%% }
-type update_resource_data_sync_request() :: #{binary() => any()}.

%% Example:
%% ops_item_summary() :: #{
%%   <<"ActualEndTime">> => non_neg_integer(),
%%   <<"ActualStartTime">> => non_neg_integer(),
%%   <<"Category">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"OperationalData">> => map(),
%%   <<"OpsItemId">> => string(),
%%   <<"OpsItemType">> => string(),
%%   <<"PlannedEndTime">> => non_neg_integer(),
%%   <<"PlannedStartTime">> => non_neg_integer(),
%%   <<"Priority">> => integer(),
%%   <<"Severity">> => string(),
%%   <<"Source">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Title">> => string()
%% }
-type ops_item_summary() :: #{binary() => any()}.

%% Example:
%% register_patch_baseline_for_patch_group_result() :: #{
%%   <<"BaselineId">> => string(),
%%   <<"PatchGroup">> => string()
%% }
-type register_patch_baseline_for_patch_group_result() :: #{binary() => any()}.

%% Example:
%% ops_metadata_invalid_argument_exception() :: #{
%%   <<"message">> => string()
%% }
-type ops_metadata_invalid_argument_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% describe_patch_group_state_request() :: #{
%%   <<"PatchGroup">> := string()
%% }
-type describe_patch_group_state_request() :: #{binary() => any()}.

%% Example:
%% update_service_setting_request() :: #{
%%   <<"SettingId">> := string(),
%%   <<"SettingValue">> := string()
%% }
-type update_service_setting_request() :: #{binary() => any()}.

%% Example:
%% create_document_result() :: #{
%%   <<"DocumentDescription">> => document_description()
%% }
-type create_document_result() :: #{binary() => any()}.

%% Example:
%% deregister_managed_instance_result() :: #{

%% }
-type deregister_managed_instance_result() :: #{binary() => any()}.

%% Example:
%% invalid_deletion_id_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_deletion_id_exception() :: #{binary() => any()}.

%% Example:
%% compliance_item_entry() :: #{
%%   <<"Details">> => map(),
%%   <<"Id">> => string(),
%%   <<"Severity">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Title">> => string()
%% }
-type compliance_item_entry() :: #{binary() => any()}.

%% Example:
%% get_parameter_result() :: #{
%%   <<"Parameter">> => parameter()
%% }
-type get_parameter_result() :: #{binary() => any()}.

%% Example:
%% ops_item_event_summary() :: #{
%%   <<"CreatedBy">> => ops_item_identity(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Detail">> => string(),
%%   <<"DetailType">> => string(),
%%   <<"EventId">> => string(),
%%   <<"OpsItemId">> => string(),
%%   <<"Source">> => string()
%% }
-type ops_item_event_summary() :: #{binary() => any()}.

%% Example:
%% parameter_already_exists() :: #{
%%   <<"message">> => string()
%% }
-type parameter_already_exists() :: #{binary() => any()}.

%% Example:
%% invalid_activation_id() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_activation_id() :: #{binary() => any()}.

%% Example:
%% modify_document_permission_request() :: #{
%%   <<"AccountIdsToAdd">> => list(string()()),
%%   <<"AccountIdsToRemove">> => list(string()()),
%%   <<"Name">> := string(),
%%   <<"PermissionType">> := list(any()),
%%   <<"SharedDocumentVersion">> => string()
%% }
-type modify_document_permission_request() :: #{binary() => any()}.

%% Example:
%% ops_metadata_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type ops_metadata_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% node_aggregator() :: #{
%%   <<"AggregatorType">> => list(any()),
%%   <<"Aggregators">> => list(node_aggregator()()),
%%   <<"AttributeName">> => list(any()),
%%   <<"TypeName">> => list(any())
%% }
-type node_aggregator() :: #{binary() => any()}.

%% Example:
%% send_command_request() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"CloudWatchOutputConfig">> => cloud_watch_output_config(),
%%   <<"Comment">> => string(),
%%   <<"DocumentHash">> => string(),
%%   <<"DocumentHashType">> => list(any()),
%%   <<"DocumentName">> := string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"InstanceIds">> => list(string()()),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"NotificationConfig">> => notification_config(),
%%   <<"OutputS3BucketName">> => string(),
%%   <<"OutputS3KeyPrefix">> => string(),
%%   <<"OutputS3Region">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"Targets">> => list(target()()),
%%   <<"TimeoutSeconds">> => integer()
%% }
-type send_command_request() :: #{binary() => any()}.

%% Example:
%% duplicate_instance_id() :: #{

%% }
-type duplicate_instance_id() :: #{binary() => any()}.

%% Example:
%% get_ops_metadata_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OpsMetadataArn">> := string()
%% }
-type get_ops_metadata_request() :: #{binary() => any()}.

%% Example:
%% inventory_deletion_status_item() :: #{
%%   <<"DeletionId">> => string(),
%%   <<"DeletionStartTime">> => non_neg_integer(),
%%   <<"DeletionSummary">> => inventory_deletion_summary(),
%%   <<"LastStatus">> => list(any()),
%%   <<"LastStatusMessage">> => string(),
%%   <<"LastStatusUpdateTime">> => non_neg_integer(),
%%   <<"TypeName">> => string()
%% }
-type inventory_deletion_status_item() :: #{binary() => any()}.

%% Example:
%% ops_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type ops_filter() :: #{binary() => any()}.

%% Example:
%% document_default_version_description() :: #{
%%   <<"DefaultVersion">> => string(),
%%   <<"DefaultVersionName">> => string(),
%%   <<"Name">> => string()
%% }
-type document_default_version_description() :: #{binary() => any()}.

%% Example:
%% resource_compliance_summary_item() :: #{
%%   <<"ComplianceType">> => string(),
%%   <<"CompliantSummary">> => compliant_summary(),
%%   <<"ExecutionSummary">> => compliance_execution_summary(),
%%   <<"NonCompliantSummary">> => non_compliant_summary(),
%%   <<"OverallSeverity">> => list(any()),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"Status">> => list(any())
%% }
-type resource_compliance_summary_item() :: #{binary() => any()}.

%% Example:
%% patch() :: #{
%%   <<"AdvisoryIds">> => list(string()()),
%%   <<"Arch">> => string(),
%%   <<"BugzillaIds">> => list(string()()),
%%   <<"CVEIds">> => list(string()()),
%%   <<"Classification">> => string(),
%%   <<"ContentUrl">> => string(),
%%   <<"Description">> => string(),
%%   <<"Epoch">> => integer(),
%%   <<"Id">> => string(),
%%   <<"KbNumber">> => string(),
%%   <<"Language">> => string(),
%%   <<"MsrcNumber">> => string(),
%%   <<"MsrcSeverity">> => string(),
%%   <<"Name">> => string(),
%%   <<"Product">> => string(),
%%   <<"ProductFamily">> => string(),
%%   <<"Release">> => string(),
%%   <<"ReleaseDate">> => non_neg_integer(),
%%   <<"Repository">> => string(),
%%   <<"Severity">> => string(),
%%   <<"Title">> => string(),
%%   <<"Vendor">> => string(),
%%   <<"Version">> => string()
%% }
-type patch() :: #{binary() => any()}.

%% Example:
%% list_commands_result() :: #{
%%   <<"Commands">> => list(command()()),
%%   <<"NextToken">> => string()
%% }
-type list_commands_result() :: #{binary() => any()}.

%% Example:
%% get_calendar_state_request() :: #{
%%   <<"AtTime">> => string(),
%%   <<"CalendarNames">> := list(string()())
%% }
-type get_calendar_state_request() :: #{binary() => any()}.

%% Example:
%% list_nodes_summary_request() :: #{
%%   <<"Aggregators">> := list(node_aggregator()()),
%%   <<"Filters">> => list(node_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SyncName">> => string()
%% }
-type list_nodes_summary_request() :: #{binary() => any()}.

%% Example:
%% get_inventory_request() :: #{
%%   <<"Aggregators">> => list(inventory_aggregator()()),
%%   <<"Filters">> => list(inventory_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResultAttributes">> => list(result_attribute()())
%% }
-type get_inventory_request() :: #{binary() => any()}.

%% Example:
%% get_patch_baseline_for_patch_group_result() :: #{
%%   <<"BaselineId">> => string(),
%%   <<"OperatingSystem">> => list(any()),
%%   <<"PatchGroup">> => string()
%% }
-type get_patch_baseline_for_patch_group_result() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_execution_tasks_request() :: #{
%%   <<"Filters">> => list(maintenance_window_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WindowExecutionId">> := string()
%% }
-type describe_maintenance_window_execution_tasks_request() :: #{binary() => any()}.

%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_maintenance_window_request() :: #{
%%   <<"AllowUnassociatedTargets">> => boolean(),
%%   <<"Cutoff">> => integer(),
%%   <<"Description">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"EndDate">> => string(),
%%   <<"Name">> => string(),
%%   <<"Replace">> => boolean(),
%%   <<"Schedule">> => string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"ScheduleTimezone">> => string(),
%%   <<"StartDate">> => string(),
%%   <<"WindowId">> := string()
%% }
-type update_maintenance_window_request() :: #{binary() => any()}.

%% Example:
%% get_parameter_history_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Parameters">> => list(parameter_history()())
%% }
-type get_parameter_history_result() :: #{binary() => any()}.

%% Example:
%% deregister_target_from_maintenance_window_result() :: #{
%%   <<"WindowId">> => string(),
%%   <<"WindowTargetId">> => string()
%% }
-type deregister_target_from_maintenance_window_result() :: #{binary() => any()}.

%% Example:
%% deregister_managed_instance_request() :: #{
%%   <<"InstanceId">> := string()
%% }
-type deregister_managed_instance_request() :: #{binary() => any()}.

%% Example:
%% association_execution_targets_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Value">> => string()
%% }
-type association_execution_targets_filter() :: #{binary() => any()}.

%% Example:
%% review_information() :: #{
%%   <<"ReviewedTime">> => non_neg_integer(),
%%   <<"Reviewer">> => string(),
%%   <<"Status">> => list(any())
%% }
-type review_information() :: #{binary() => any()}.

%% Example:
%% register_task_with_maintenance_window_result() :: #{
%%   <<"WindowTaskId">> => string()
%% }
-type register_task_with_maintenance_window_result() :: #{binary() => any()}.

%% Example:
%% create_maintenance_window_request() :: #{
%%   <<"AllowUnassociatedTargets">> := boolean(),
%%   <<"ClientToken">> => string(),
%%   <<"Cutoff">> := integer(),
%%   <<"Description">> => string(),
%%   <<"Duration">> := integer(),
%%   <<"EndDate">> => string(),
%%   <<"Name">> := string(),
%%   <<"Schedule">> := string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"ScheduleTimezone">> => string(),
%%   <<"StartDate">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_maintenance_window_request() :: #{binary() => any()}.

%% Example:
%% describe_ops_items_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OpsItemSummaries">> => list(ops_item_summary()())
%% }
-type describe_ops_items_response() :: #{binary() => any()}.

%% Example:
%% document_reviews() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Comment">> => list(document_review_comment_source()())
%% }
-type document_reviews() :: #{binary() => any()}.

%% Example:
%% invalid_activation() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_activation() :: #{binary() => any()}.

%% Example:
%% unsupported_inventory_schema_version_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_inventory_schema_version_exception() :: #{binary() => any()}.

%% Example:
%% delete_parameter_result() :: #{

%% }
-type delete_parameter_result() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_organizational_unit() :: #{
%%   <<"OrganizationalUnitId">> => string()
%% }
-type resource_data_sync_organizational_unit() :: #{binary() => any()}.

%% Example:
%% describe_instance_patch_states_result() :: #{
%%   <<"InstancePatchStates">> => list(instance_patch_state()()),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_patch_states_result() :: #{binary() => any()}.

%% Example:
%% invalid_filter_option() :: #{
%%   <<"message">> => string()
%% }
-type invalid_filter_option() :: #{binary() => any()}.

%% Example:
%% ops_metadata() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"LastModifiedUser">> => string(),
%%   <<"OpsMetadataArn">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type ops_metadata() :: #{binary() => any()}.

%% Example:
%% invalid_key_id() :: #{
%%   <<"message">> => string()
%% }
-type invalid_key_id() :: #{binary() => any()}.

%% Example:
%% invalid_allowed_pattern_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_allowed_pattern_exception() :: #{binary() => any()}.

%% Example:
%% update_ops_metadata_result() :: #{
%%   <<"OpsMetadataArn">> => string()
%% }
-type update_ops_metadata_result() :: #{binary() => any()}.

%% Example:
%% ops_item_related_item_association_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ops_item_related_item_association_not_found_exception() :: #{binary() => any()}.

%% Example:
%% ops_item_related_item_already_exists_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"OpsItemId">> => string(),
%%   <<"ResourceUri">> => string()
%% }
-type ops_item_related_item_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% parameter() :: #{
%%   <<"ARN">> => string(),
%%   <<"DataType">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Selector">> => string(),
%%   <<"SourceResult">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string(),
%%   <<"Version">> => float()
%% }
-type parameter() :: #{binary() => any()}.

%% Example:
%% describe_automation_step_executions_request() :: #{
%%   <<"AutomationExecutionId">> := string(),
%%   <<"Filters">> => list(step_execution_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ReverseOrder">> => boolean()
%% }
-type describe_automation_step_executions_request() :: #{binary() => any()}.

%% Example:
%% get_connection_status_response() :: #{
%%   <<"Status">> => list(any()),
%%   <<"Target">> => string()
%% }
-type get_connection_status_response() :: #{binary() => any()}.

%% Example:
%% describe_instance_properties_result() :: #{
%%   <<"InstanceProperties">> => list(instance_property()()),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_properties_result() :: #{binary() => any()}.

%% Example:
%% parameters_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type parameters_filter() :: #{binary() => any()}.

%% Example:
%% association() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"AssociationName">> => string(),
%%   <<"AssociationVersion">> => string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"InstanceId">> => string(),
%%   <<"LastExecutionDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Overview">> => association_overview(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"Targets">> => list(target()())
%% }
-type association() :: #{binary() => any()}.

%% Example:
%% list_nodes_request() :: #{
%%   <<"Filters">> => list(node_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SyncName">> => string()
%% }
-type list_nodes_request() :: #{binary() => any()}.

%% Example:
%% get_command_invocation_request() :: #{
%%   <<"CommandId">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"PluginName">> => string()
%% }
-type get_command_invocation_request() :: #{binary() => any()}.

%% Example:
%% describe_ops_items_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OpsItemFilters">> => list(ops_item_filter()())
%% }
-type describe_ops_items_request() :: #{binary() => any()}.

%% Example:
%% get_maintenance_window_execution_result() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string(),
%%   <<"TaskIds">> => list(string()()),
%%   <<"WindowExecutionId">> => string()
%% }
-type get_maintenance_window_execution_result() :: #{binary() => any()}.

%% Example:
%% list_associations_result() :: #{
%%   <<"Associations">> => list(association()()),
%%   <<"NextToken">> => string()
%% }
-type list_associations_result() :: #{binary() => any()}.

%% Example:
%% update_managed_instance_role_request() :: #{
%%   <<"IamRole">> := string(),
%%   <<"InstanceId">> := string()
%% }
-type update_managed_instance_role_request() :: #{binary() => any()}.

%% Example:
%% list_document_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_document_versions_request() :: #{binary() => any()}.

%% Example:
%% ops_metadata_key_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type ops_metadata_key_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_document_schema_version() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_document_schema_version() :: #{binary() => any()}.

%% Example:
%% create_activation_request() :: #{
%%   <<"DefaultInstanceName">> => string(),
%%   <<"Description">> => string(),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"IamRole">> := string(),
%%   <<"RegistrationLimit">> => integer(),
%%   <<"RegistrationMetadata">> => list(registration_metadata_item()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_activation_request() :: #{binary() => any()}.

%% Example:
%% get_parameters_request() :: #{
%%   <<"Names">> := list(string()()),
%%   <<"WithDecryption">> => boolean()
%% }
-type get_parameters_request() :: #{binary() => any()}.

%% Example:
%% automation_step_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type automation_step_not_found_exception() :: #{binary() => any()}.

%% Example:
%% inventory_deletion_summary() :: #{
%%   <<"RemainingCount">> => integer(),
%%   <<"SummaryItems">> => list(inventory_deletion_summary_item()()),
%%   <<"TotalCount">> => integer()
%% }
-type inventory_deletion_summary() :: #{binary() => any()}.

%% Example:
%% document_filter() :: #{
%%   <<"key">> => list(any()),
%%   <<"value">> => string()
%% }
-type document_filter() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_execution_tasks_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WindowExecutionTaskIdentities">> => list(maintenance_window_execution_task_identity()())
%% }
-type describe_maintenance_window_execution_tasks_result() :: #{binary() => any()}.

%% Example:
%% get_patch_baseline_for_patch_group_request() :: #{
%%   <<"OperatingSystem">> => list(any()),
%%   <<"PatchGroup">> := string()
%% }
-type get_patch_baseline_for_patch_group_request() :: #{binary() => any()}.

%% Example:
%% get_command_invocation_result() :: #{
%%   <<"CloudWatchOutputConfig">> => cloud_watch_output_config(),
%%   <<"CommandId">> => string(),
%%   <<"Comment">> => string(),
%%   <<"DocumentName">> => string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"ExecutionElapsedTime">> => string(),
%%   <<"ExecutionEndDateTime">> => string(),
%%   <<"ExecutionStartDateTime">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"PluginName">> => string(),
%%   <<"ResponseCode">> => integer(),
%%   <<"StandardErrorContent">> => string(),
%%   <<"StandardErrorUrl">> => string(),
%%   <<"StandardOutputContent">> => string(),
%%   <<"StandardOutputUrl">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string()
%% }
-type get_command_invocation_result() :: #{binary() => any()}.

%% Example:
%% put_compliance_items_result() :: #{

%% }
-type put_compliance_items_result() :: #{binary() => any()}.

%% Example:
%% describe_effective_patches_for_patch_baseline_request() :: #{
%%   <<"BaselineId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_effective_patches_for_patch_baseline_request() :: #{binary() => any()}.

%% Example:
%% hierarchy_level_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type hierarchy_level_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% resource_policy_conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_policy_conflict_exception() :: #{binary() => any()}.

%% Example:
%% create_resource_data_sync_result() :: #{

%% }
-type create_resource_data_sync_result() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_executions_request() :: #{
%%   <<"Filters">> => list(maintenance_window_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WindowId">> := string()
%% }
-type describe_maintenance_window_executions_request() :: #{binary() => any()}.

%% Example:
%% get_maintenance_window_execution_task_result() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"ServiceRole">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskExecutionId">> => string(),
%%   <<"TaskParameters">> => list(map()()),
%%   <<"TriggeredAlarms">> => list(alarm_state_information()()),
%%   <<"Type">> => list(any()),
%%   <<"WindowExecutionId">> => string()
%% }
-type get_maintenance_window_execution_task_result() :: #{binary() => any()}.

%% Example:
%% get_deployable_patch_snapshot_for_instance_result() :: #{
%%   <<"InstanceId">> => string(),
%%   <<"Product">> => string(),
%%   <<"SnapshotDownloadUrl">> => string(),
%%   <<"SnapshotId">> => string()
%% }
-type get_deployable_patch_snapshot_for_instance_result() :: #{binary() => any()}.

%% Example:
%% patch_rule_group() :: #{
%%   <<"PatchRules">> => list(patch_rule()())
%% }
-type patch_rule_group() :: #{binary() => any()}.

%% Example:
%% registration_metadata_item() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type registration_metadata_item() :: #{binary() => any()}.

%% Example:
%% command_plugin() :: #{
%%   <<"Name">> => string(),
%%   <<"Output">> => string(),
%%   <<"OutputS3BucketName">> => string(),
%%   <<"OutputS3KeyPrefix">> => string(),
%%   <<"OutputS3Region">> => string(),
%%   <<"ResponseCode">> => integer(),
%%   <<"ResponseFinishDateTime">> => non_neg_integer(),
%%   <<"ResponseStartDateTime">> => non_neg_integer(),
%%   <<"StandardErrorUrl">> => string(),
%%   <<"StandardOutputUrl">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string()
%% }
-type command_plugin() :: #{binary() => any()}.

%% Example:
%% get_patch_baseline_result() :: #{
%%   <<"ApprovalRules">> => patch_rule_group(),
%%   <<"ApprovedPatches">> => list(string()()),
%%   <<"ApprovedPatchesComplianceLevel">> => list(any()),
%%   <<"ApprovedPatchesEnableNonSecurity">> => boolean(),
%%   <<"BaselineId">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"GlobalFilters">> => patch_filter_group(),
%%   <<"ModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OperatingSystem">> => list(any()),
%%   <<"PatchGroups">> => list(string()()),
%%   <<"RejectedPatches">> => list(string()()),
%%   <<"RejectedPatchesAction">> => list(any()),
%%   <<"Sources">> => list(patch_source()())
%% }
-type get_patch_baseline_result() :: #{binary() => any()}.

%% Example:
%% list_documents_request() :: #{
%%   <<"DocumentFilterList">> => list(document_filter()()),
%%   <<"Filters">> => list(document_key_values_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_documents_request() :: #{binary() => any()}.

%% Example:
%% invalid_command_id() :: #{

%% }
-type invalid_command_id() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"TagKeys">> := list(string()())
%% }
-type remove_tags_from_resource_request() :: #{binary() => any()}.

%% Example:
%% instance_information_string_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type instance_information_string_filter() :: #{binary() => any()}.

%% Example:
%% automation_execution_inputs() :: #{
%%   <<"Parameters">> => map(),
%%   <<"TargetLocations">> => list(target_location()()),
%%   <<"TargetLocationsURL">> => string(),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"TargetParameterName">> => string(),
%%   <<"Targets">> => list(target()())
%% }
-type automation_execution_inputs() :: #{binary() => any()}.

%% Example:
%% session() :: #{
%%   <<"Details">> => string(),
%%   <<"DocumentName">> => string(),
%%   <<"EndDate">> => non_neg_integer(),
%%   <<"MaxSessionDuration">> => string(),
%%   <<"OutputUrl">> => session_manager_output_url(),
%%   <<"Owner">> => string(),
%%   <<"Reason">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Target">> => string()
%% }
-type session() :: #{binary() => any()}.

%% Example:
%% get_resource_policies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type get_resource_policies_request() :: #{binary() => any()}.

%% Example:
%% get_resource_policies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Policies">> => list(get_resource_policies_response_entry()())
%% }
-type get_resource_policies_response() :: #{binary() => any()}.

%% Example:
%% association_execution() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"AssociationId">> => string(),
%%   <<"AssociationVersion">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DetailedStatus">> => string(),
%%   <<"ExecutionId">> => string(),
%%   <<"LastExecutionDate">> => non_neg_integer(),
%%   <<"ResourceCountByStatus">> => string(),
%%   <<"Status">> => string(),
%%   <<"TriggeredAlarms">> => list(alarm_state_information()())
%% }
-type association_execution() :: #{binary() => any()}.

%% Example:
%% invalid_permission_type() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_permission_type() :: #{binary() => any()}.

%% Example:
%% ops_item_data_value() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type ops_item_data_value() :: #{binary() => any()}.

%% Example:
%% modify_document_permission_response() :: #{

%% }
-type modify_document_permission_response() :: #{binary() => any()}.

%% Example:
%% list_ops_metadata_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OpsMetadataList">> => list(ops_metadata()())
%% }
-type list_ops_metadata_result() :: #{binary() => any()}.

%% Example:
%% ops_metadata_too_many_updates_exception() :: #{
%%   <<"message">> => string()
%% }
-type ops_metadata_too_many_updates_exception() :: #{binary() => any()}.

%% Example:
%% update_managed_instance_role_result() :: #{

%% }
-type update_managed_instance_role_result() :: #{binary() => any()}.

%% Example:
%% list_resource_data_sync_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceDataSyncItems">> => list(resource_data_sync_item()())
%% }
-type list_resource_data_sync_result() :: #{binary() => any()}.

%% Example:
%% invalid_inventory_item_context_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_inventory_item_context_exception() :: #{binary() => any()}.

%% Example:
%% get_parameter_request() :: #{
%%   <<"Name">> := string(),
%%   <<"WithDecryption">> => boolean()
%% }
-type get_parameter_request() :: #{binary() => any()}.

%% Example:
%% delete_ops_item_request() :: #{
%%   <<"OpsItemId">> := string()
%% }
-type delete_ops_item_request() :: #{binary() => any()}.

%% Example:
%% document_key_values_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type document_key_values_filter() :: #{binary() => any()}.

%% Example:
%% update_document_metadata_request() :: #{
%%   <<"DocumentReviews">> := document_reviews(),
%%   <<"DocumentVersion">> => string(),
%%   <<"Name">> := string()
%% }
-type update_document_metadata_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_properties_request() :: #{
%%   <<"FiltersWithOperator">> => list(instance_property_string_filter()()),
%%   <<"InstancePropertyFilterList">> => list(instance_property_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_properties_request() :: #{binary() => any()}.

%% Example:
%% describe_effective_instance_associations_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_effective_instance_associations_request() :: #{binary() => any()}.

%% Example:
%% list_compliance_summaries_request() :: #{
%%   <<"Filters">> => list(compliance_string_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_compliance_summaries_request() :: #{binary() => any()}.

%% Example:
%% invalid_automation_execution_parameters_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_automation_execution_parameters_exception() :: #{binary() => any()}.

%% Example:
%% get_ops_summary_result() :: #{
%%   <<"Entities">> => list(ops_entity()()),
%%   <<"NextToken">> => string()
%% }
-type get_ops_summary_result() :: #{binary() => any()}.

%% Example:
%% delete_inventory_result() :: #{
%%   <<"DeletionId">> => string(),
%%   <<"DeletionSummary">> => inventory_deletion_summary(),
%%   <<"TypeName">> => string()
%% }
-type delete_inventory_result() :: #{binary() => any()}.

%% Example:
%% resume_session_response() :: #{
%%   <<"SessionId">> => string(),
%%   <<"StreamUrl">> => string(),
%%   <<"TokenValue">> => string()
%% }
-type resume_session_response() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_count_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_data_sync_count_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_document_result() :: #{

%% }
-type delete_document_result() :: #{binary() => any()}.

%% Example:
%% ops_item_already_exists_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"OpsItemId">> => string()
%% }
-type ops_item_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% service_setting_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type service_setting_not_found() :: #{binary() => any()}.

%% Example:
%% invalid_document_type() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_document_type() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_aws_organizations_source() :: #{
%%   <<"OrganizationSourceType">> => string(),
%%   <<"OrganizationalUnits">> => list(resource_data_sync_organizational_unit()())
%% }
-type resource_data_sync_aws_organizations_source() :: #{binary() => any()}.

%% Example:
%% node_owner_info() :: #{
%%   <<"AccountId">> => string(),
%%   <<"OrganizationalUnitId">> => string(),
%%   <<"OrganizationalUnitPath">> => string()
%% }
-type node_owner_info() :: #{binary() => any()}.

%% Example:
%% get_execution_preview_response() :: #{
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"ExecutionPreview">> => list(),
%%   <<"ExecutionPreviewId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type get_execution_preview_response() :: #{binary() => any()}.

%% Example:
%% invalid_notification_config() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_notification_config() :: #{binary() => any()}.

%% Example:
%% item_size_limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"TypeName">> => string()
%% }
-type item_size_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% cancel_command_request() :: #{
%%   <<"CommandId">> := string(),
%%   <<"InstanceIds">> => list(string()())
%% }
-type cancel_command_request() :: #{binary() => any()}.

%% Example:
%% status_unchanged() :: #{

%% }
-type status_unchanged() :: #{binary() => any()}.

%% Example:
%% get_automation_execution_request() :: #{
%%   <<"AutomationExecutionId">> := string()
%% }
-type get_automation_execution_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_patch_states_for_patch_group_request() :: #{
%%   <<"Filters">> => list(instance_patch_state_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PatchGroup">> := string()
%% }
-type describe_instance_patch_states_for_patch_group_request() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_destination_data_sharing() :: #{
%%   <<"DestinationDataSharingType">> => string()
%% }
-type resource_data_sync_destination_data_sharing() :: #{binary() => any()}.

%% Example:
%% update_document_metadata_response() :: #{

%% }
-type update_document_metadata_response() :: #{binary() => any()}.

%% Example:
%% get_ops_item_response() :: #{
%%   <<"OpsItem">> => ops_item()
%% }
-type get_ops_item_response() :: #{binary() => any()}.

%% Example:
%% update_association_status_request() :: #{
%%   <<"AssociationStatus">> := association_status(),
%%   <<"InstanceId">> := string(),
%%   <<"Name">> := string()
%% }
-type update_association_status_request() :: #{binary() => any()}.

%% Example:
%% duplicate_document_version_name() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_document_version_name() :: #{binary() => any()}.

%% Example:
%% document_already_exists() :: #{
%%   <<"Message">> => string()
%% }
-type document_already_exists() :: #{binary() => any()}.

%% Example:
%% list_document_metadata_history_response() :: #{
%%   <<"Author">> => string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"Metadata">> => document_metadata_response_info(),
%%   <<"Name">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_document_metadata_history_response() :: #{binary() => any()}.

%% Example:
%% maintenance_window_identity() :: #{
%%   <<"Cutoff">> => integer(),
%%   <<"Description">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"EndDate">> => string(),
%%   <<"Name">> => string(),
%%   <<"NextExecutionTime">> => string(),
%%   <<"Schedule">> => string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"ScheduleTimezone">> => string(),
%%   <<"StartDate">> => string(),
%%   <<"WindowId">> => string()
%% }
-type maintenance_window_identity() :: #{binary() => any()}.

%% Example:
%% invalid_output_folder() :: #{

%% }
-type invalid_output_folder() :: #{binary() => any()}.

%% Example:
%% describe_parameters_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Parameters">> => list(parameter_metadata()())
%% }
-type describe_parameters_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"TagList">> => list(tag()())
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.

%% Example:
%% instance_association() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"AssociationVersion">> => string(),
%%   <<"Content">> => string(),
%%   <<"InstanceId">> => string()
%% }
-type instance_association() :: #{binary() => any()}.

%% Example:
%% describe_automation_executions_request() :: #{
%%   <<"Filters">> => list(automation_execution_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_automation_executions_request() :: #{binary() => any()}.

%% Example:
%% update_maintenance_window_result() :: #{
%%   <<"AllowUnassociatedTargets">> => boolean(),
%%   <<"Cutoff">> => integer(),
%%   <<"Description">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"EndDate">> => string(),
%%   <<"Name">> => string(),
%%   <<"Schedule">> => string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"ScheduleTimezone">> => string(),
%%   <<"StartDate">> => string(),
%%   <<"WindowId">> => string()
%% }
-type update_maintenance_window_result() :: #{binary() => any()}.

%% Example:
%% instance_property_string_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type instance_property_string_filter() :: #{binary() => any()}.

%% Example:
%% invalid_inventory_group_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_inventory_group_exception() :: #{binary() => any()}.

%% Example:
%% severity_summary() :: #{
%%   <<"CriticalCount">> => integer(),
%%   <<"HighCount">> => integer(),
%%   <<"InformationalCount">> => integer(),
%%   <<"LowCount">> => integer(),
%%   <<"MediumCount">> => integer(),
%%   <<"UnspecifiedCount">> => integer()
%% }
-type severity_summary() :: #{binary() => any()}.

%% Example:
%% list_associations_request() :: #{
%%   <<"AssociationFilterList">> => list(association_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_associations_request() :: #{binary() => any()}.

%% Example:
%% describe_inventory_deletions_result() :: #{
%%   <<"InventoryDeletions">> => list(inventory_deletion_status_item()()),
%%   <<"NextToken">> => string()
%% }
-type describe_inventory_deletions_result() :: #{binary() => any()}.

%% Example:
%% delete_maintenance_window_result() :: #{
%%   <<"WindowId">> => string()
%% }
-type delete_maintenance_window_result() :: #{binary() => any()}.

%% Example:
%% describe_sessions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Sessions">> => list(session()())
%% }
-type describe_sessions_response() :: #{binary() => any()}.

%% Example:
%% session_filter() :: #{
%%   <<"key">> => list(any()),
%%   <<"value">> => string()
%% }
-type session_filter() :: #{binary() => any()}.

%% Example:
%% create_association_request() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"ApplyOnlyAtCronInterval">> => boolean(),
%%   <<"AssociationName">> => string(),
%%   <<"AutomationTargetParameterName">> => string(),
%%   <<"CalendarNames">> => list(string()()),
%%   <<"ComplianceSeverity">> => list(any()),
%%   <<"DocumentVersion">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"InstanceId">> => string(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Name">> := string(),
%%   <<"OutputLocation">> => instance_association_output_location(),
%%   <<"Parameters">> => map(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"SyncCompliance">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetLocations">> => list(target_location()()),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"Targets">> => list(target()())
%% }
-type create_association_request() :: #{binary() => any()}.

%% Example:
%% update_ops_item_response() :: #{

%% }
-type update_ops_item_response() :: #{binary() => any()}.

%% Example:
%% list_command_invocations_result() :: #{
%%   <<"CommandInvocations">> => list(command_invocation()()),
%%   <<"NextToken">> => string()
%% }
-type list_command_invocations_result() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"Policy">> := string(),
%%   <<"PolicyHash">> => string(),
%%   <<"PolicyId">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% label_parameter_version_result() :: #{
%%   <<"InvalidLabels">> => list(string()()),
%%   <<"ParameterVersion">> => float()
%% }
-type label_parameter_version_result() :: #{binary() => any()}.

%% Example:
%% document_description() :: #{
%%   <<"ApprovedVersion">> => string(),
%%   <<"AttachmentsInformation">> => list(attachment_information()()),
%%   <<"Author">> => string(),
%%   <<"Category">> => list(string()()),
%%   <<"CategoryEnum">> => list(string()()),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DefaultVersion">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"DocumentFormat">> => list(any()),
%%   <<"DocumentType">> => list(any()),
%%   <<"DocumentVersion">> => string(),
%%   <<"Hash">> => string(),
%%   <<"HashType">> => list(any()),
%%   <<"LatestVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"Parameters">> => list(document_parameter()()),
%%   <<"PendingReviewVersion">> => string(),
%%   <<"PlatformTypes">> => list(list(any())()),
%%   <<"Requires">> => list(document_requires()()),
%%   <<"ReviewInformation">> => list(review_information()()),
%%   <<"ReviewStatus">> => list(any()),
%%   <<"SchemaVersion">> => string(),
%%   <<"Sha1">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusInformation">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetType">> => string(),
%%   <<"VersionName">> => string()
%% }
-type document_description() :: #{binary() => any()}.

%% Example:
%% start_session_response() :: #{
%%   <<"SessionId">> => string(),
%%   <<"StreamUrl">> => string(),
%%   <<"TokenValue">> => string()
%% }
-type start_session_response() :: #{binary() => any()}.

%% Example:
%% delete_ops_metadata_result() :: #{

%% }
-type delete_ops_metadata_result() :: #{binary() => any()}.

%% Example:
%% update_association_result() :: #{
%%   <<"AssociationDescription">> => association_description()
%% }
-type update_association_result() :: #{binary() => any()}.

%% Example:
%% invalid_output_location() :: #{

%% }
-type invalid_output_location() :: #{binary() => any()}.

%% Example:
%% instance_property() :: #{
%%   <<"ActivationId">> => string(),
%%   <<"AgentVersion">> => string(),
%%   <<"Architecture">> => string(),
%%   <<"AssociationOverview">> => instance_aggregated_association_overview(),
%%   <<"AssociationStatus">> => string(),
%%   <<"ComputerName">> => string(),
%%   <<"IPAddress">> => string(),
%%   <<"IamRole">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceRole">> => string(),
%%   <<"InstanceState">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"KeyName">> => string(),
%%   <<"LastAssociationExecutionDate">> => non_neg_integer(),
%%   <<"LastPingDateTime">> => non_neg_integer(),
%%   <<"LastSuccessfulAssociationExecutionDate">> => non_neg_integer(),
%%   <<"LaunchTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PingStatus">> => list(any()),
%%   <<"PlatformName">> => string(),
%%   <<"PlatformType">> => list(any()),
%%   <<"PlatformVersion">> => string(),
%%   <<"RegistrationDate">> => non_neg_integer(),
%%   <<"ResourceType">> => string(),
%%   <<"SourceId">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type instance_property() :: #{binary() => any()}.

%% Example:
%% describe_document_request() :: #{
%%   <<"DocumentVersion">> => string(),
%%   <<"Name">> := string(),
%%   <<"VersionName">> => string()
%% }
-type describe_document_request() :: #{binary() => any()}.

%% Example:
%% invalid_inventory_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_inventory_request_exception() :: #{binary() => any()}.

%% Example:
%% compliant_summary() :: #{
%%   <<"CompliantCount">> => integer(),
%%   <<"SeveritySummary">> => severity_summary()
%% }
-type compliant_summary() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_windows_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WindowIdentities">> => list(maintenance_window_identity()())
%% }
-type describe_maintenance_windows_result() :: #{binary() => any()}.

%% Example:
%% describe_association_execution_targets_request() :: #{
%%   <<"AssociationId">> := string(),
%%   <<"ExecutionId">> := string(),
%%   <<"Filters">> => list(association_execution_targets_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_association_execution_targets_request() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% describe_instance_patch_states_for_patch_group_result() :: #{
%%   <<"InstancePatchStates">> => list(instance_patch_state()()),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_patch_states_for_patch_group_result() :: #{binary() => any()}.

%% Example:
%% target_location() :: #{
%%   <<"Accounts">> => list(string()()),
%%   <<"ExcludeAccounts">> => list(string()()),
%%   <<"ExecutionRoleName">> => string(),
%%   <<"IncludeChildOrganizationUnits">> => boolean(),
%%   <<"Regions">> => list(string()()),
%%   <<"TargetLocationAlarmConfiguration">> => alarm_configuration(),
%%   <<"TargetLocationMaxConcurrency">> => string(),
%%   <<"TargetLocationMaxErrors">> => string(),
%%   <<"Targets">> => list(target()()),
%%   <<"TargetsMaxConcurrency">> => string(),
%%   <<"TargetsMaxErrors">> => string()
%% }
-type target_location() :: #{binary() => any()}.

%% Example:
%% delete_activation_request() :: #{
%%   <<"ActivationId">> := string()
%% }
-type delete_activation_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_information_result() :: #{
%%   <<"InstanceInformationList">> => list(instance_information()()),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_information_result() :: #{binary() => any()}.

%% Example:
%% invalid_target_maps() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_target_maps() :: #{binary() => any()}.

%% Example:
%% delete_resource_data_sync_request() :: #{
%%   <<"SyncName">> := string(),
%%   <<"SyncType">> => string()
%% }
-type delete_resource_data_sync_request() :: #{binary() => any()}.

%% Example:
%% list_document_versions_result() :: #{
%%   <<"DocumentVersions">> => list(document_version_info()()),
%%   <<"NextToken">> => string()
%% }
-type list_document_versions_result() :: #{binary() => any()}.

%% Example:
%% ops_entity_item() :: #{
%%   <<"CaptureTime">> => string(),
%%   <<"Content">> => list(map()())
%% }
-type ops_entity_item() :: #{binary() => any()}.

%% Example:
%% update_service_setting_result() :: #{

%% }
-type update_service_setting_result() :: #{binary() => any()}.

%% Example:
%% disassociate_ops_item_related_item_request() :: #{
%%   <<"AssociationId">> := string(),
%%   <<"OpsItemId">> := string()
%% }
-type disassociate_ops_item_related_item_request() :: #{binary() => any()}.

%% Example:
%% register_patch_baseline_for_patch_group_request() :: #{
%%   <<"BaselineId">> := string(),
%%   <<"PatchGroup">> := string()
%% }
-type register_patch_baseline_for_patch_group_request() :: #{binary() => any()}.

%% Example:
%% too_many_updates() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_updates() :: #{binary() => any()}.

%% Example:
%% create_association_result() :: #{
%%   <<"AssociationDescription">> => association_description()
%% }
-type create_association_result() :: #{binary() => any()}.

%% Example:
%% patch_rule() :: #{
%%   <<"ApproveAfterDays">> => integer(),
%%   <<"ApproveUntilDate">> => string(),
%%   <<"ComplianceLevel">> => list(any()),
%%   <<"EnableNonSecurity">> => boolean(),
%%   <<"PatchFilterGroup">> => patch_filter_group()
%% }
-type patch_rule() :: #{binary() => any()}.

%% Example:
%% reset_service_setting_request() :: #{
%%   <<"SettingId">> := string()
%% }
-type reset_service_setting_request() :: #{binary() => any()}.

%% Example:
%% ops_item_notification() :: #{
%%   <<"Arn">> => string()
%% }
-type ops_item_notification() :: #{binary() => any()}.

%% Example:
%% ops_item_invalid_parameter_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ParameterNames">> => list(string()())
%% }
-type ops_item_invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% describe_document_result() :: #{
%%   <<"Document">> => document_description()
%% }
-type describe_document_result() :: #{binary() => any()}.

%% Example:
%% maintenance_window_target() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"OwnerInformation">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Targets">> => list(target()()),
%%   <<"WindowId">> => string(),
%%   <<"WindowTargetId">> => string()
%% }
-type maintenance_window_target() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_schedule_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScheduledWindowExecutions">> => list(scheduled_window_execution()())
%% }
-type describe_maintenance_window_schedule_result() :: #{binary() => any()}.

%% Example:
%% feature_not_available_exception() :: #{
%%   <<"Message">> => string()
%% }
-type feature_not_available_exception() :: #{binary() => any()}.

%% Example:
%% maintenance_window_run_command_parameters() :: #{
%%   <<"CloudWatchOutputConfig">> => cloud_watch_output_config(),
%%   <<"Comment">> => string(),
%%   <<"DocumentHash">> => string(),
%%   <<"DocumentHashType">> => list(any()),
%%   <<"DocumentVersion">> => string(),
%%   <<"NotificationConfig">> => notification_config(),
%%   <<"OutputS3BucketName">> => string(),
%%   <<"OutputS3KeyPrefix">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"TimeoutSeconds">> => integer()
%% }
-type maintenance_window_run_command_parameters() :: #{binary() => any()}.

%% Example:
%% describe_effective_patches_for_patch_baseline_result() :: #{
%%   <<"EffectivePatches">> => list(effective_patch()()),
%%   <<"NextToken">> => string()
%% }
-type describe_effective_patches_for_patch_baseline_result() :: #{binary() => any()}.

%% Example:
%% failed_create_association() :: #{
%%   <<"Entry">> => create_association_batch_request_entry(),
%%   <<"Fault">> => list(any()),
%%   <<"Message">> => string()
%% }
-type failed_create_association() :: #{binary() => any()}.

%% Example:
%% list_ops_item_related_items_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(ops_item_related_item_summary()())
%% }
-type list_ops_item_related_items_response() :: #{binary() => any()}.

%% Example:
%% describe_association_executions_request() :: #{
%%   <<"AssociationId">> := string(),
%%   <<"Filters">> => list(association_execution_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_association_executions_request() :: #{binary() => any()}.

%% Example:
%% create_activation_result() :: #{
%%   <<"ActivationCode">> => string(),
%%   <<"ActivationId">> => string()
%% }
-type create_activation_result() :: #{binary() => any()}.

%% Example:
%% invalid_instance_id() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_instance_id() :: #{binary() => any()}.

%% Example:
%% disassociate_ops_item_related_item_response() :: #{

%% }
-type disassociate_ops_item_related_item_response() :: #{binary() => any()}.

%% Example:
%% update_maintenance_window_task_result() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"CutoffBehavior">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"Targets">> => list(target()()),
%%   <<"TaskArn">> => string(),
%%   <<"TaskInvocationParameters">> => maintenance_window_task_invocation_parameters(),
%%   <<"TaskParameters">> => map(),
%%   <<"WindowId">> => string(),
%%   <<"WindowTaskId">> => string()
%% }
-type update_maintenance_window_task_result() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_source() :: #{
%%   <<"AwsOrganizationsSource">> => resource_data_sync_aws_organizations_source(),
%%   <<"EnableAllOpsDataSources">> => boolean(),
%%   <<"IncludeFutureRegions">> => boolean(),
%%   <<"SourceRegions">> => list(string()()),
%%   <<"SourceType">> => string()
%% }
-type resource_data_sync_source() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ReasonCode">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"ResourceType">> := list(any())
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% ops_item_event_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type ops_item_event_filter() :: #{binary() => any()}.

%% Example:
%% patch_compliance_data() :: #{
%%   <<"CVEIds">> => string(),
%%   <<"Classification">> => string(),
%%   <<"InstalledTime">> => non_neg_integer(),
%%   <<"KBId">> => string(),
%%   <<"Severity">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Title">> => string()
%% }
-type patch_compliance_data() :: #{binary() => any()}.

%% Example:
%% invalid_automation_status_update_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_automation_status_update_exception() :: #{binary() => any()}.

%% Example:
%% progress_counters() :: #{
%%   <<"CancelledSteps">> => integer(),
%%   <<"FailedSteps">> => integer(),
%%   <<"SuccessSteps">> => integer(),
%%   <<"TimedOutSteps">> => integer(),
%%   <<"TotalSteps">> => integer()
%% }
-type progress_counters() :: #{binary() => any()}.

%% Example:
%% attachment_content() :: #{
%%   <<"Hash">> => string(),
%%   <<"HashType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Size">> => float(),
%%   <<"Url">> => string()
%% }
-type attachment_content() :: #{binary() => any()}.

%% Example:
%% list_compliance_summaries_result() :: #{
%%   <<"ComplianceSummaryItems">> => list(compliance_summary_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_compliance_summaries_result() :: #{binary() => any()}.

%% Example:
%% automation_execution_metadata() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"AssociationId">> => string(),
%%   <<"AutomationExecutionId">> => string(),
%%   <<"AutomationExecutionStatus">> => list(any()),
%%   <<"AutomationSubtype">> => list(any()),
%%   <<"AutomationType">> => list(any()),
%%   <<"ChangeRequestName">> => string(),
%%   <<"CurrentAction">> => string(),
%%   <<"CurrentStepName">> => string(),
%%   <<"DocumentName">> => string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"ExecutedBy">> => string(),
%%   <<"ExecutionEndTime">> => non_neg_integer(),
%%   <<"ExecutionStartTime">> => non_neg_integer(),
%%   <<"FailureMessage">> => string(),
%%   <<"LogFile">> => string(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"OpsItemId">> => string(),
%%   <<"Outputs">> => map(),
%%   <<"ParentAutomationExecutionId">> => string(),
%%   <<"ResolvedTargets">> => resolved_targets(),
%%   <<"Runbooks">> => list(runbook()()),
%%   <<"ScheduledTime">> => non_neg_integer(),
%%   <<"Target">> => string(),
%%   <<"TargetLocationsURL">> => string(),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"TargetParameterName">> => string(),
%%   <<"Targets">> => list(target()()),
%%   <<"TriggeredAlarms">> => list(alarm_state_information()())
%% }
-type automation_execution_metadata() :: #{binary() => any()}.

%% Example:
%% associated_instances() :: #{

%% }
-type associated_instances() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_targets_request() :: #{
%%   <<"Filters">> => list(maintenance_window_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WindowId">> := string()
%% }
-type describe_maintenance_window_targets_request() :: #{binary() => any()}.

%% Example:
%% maintenance_window_task_invocation_parameters() :: #{
%%   <<"Automation">> => maintenance_window_automation_parameters(),
%%   <<"Lambda">> => maintenance_window_lambda_parameters(),
%%   <<"RunCommand">> => maintenance_window_run_command_parameters(),
%%   <<"StepFunctions">> => maintenance_window_step_functions_parameters()
%% }
-type maintenance_window_task_invocation_parameters() :: #{binary() => any()}.

%% Example:
%% output_source() :: #{
%%   <<"OutputSourceId">> => string(),
%%   <<"OutputSourceType">> => string()
%% }
-type output_source() :: #{binary() => any()}.

%% Example:
%% register_target_with_maintenance_window_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"OwnerInformation">> => string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"Targets">> := list(target()()),
%%   <<"WindowId">> := string()
%% }
-type register_target_with_maintenance_window_request() :: #{binary() => any()}.

%% Example:
%% automation_definition_version_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type automation_definition_version_not_found_exception() :: #{binary() => any()}.

%% Example:
%% invalid_update() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_update() :: #{binary() => any()}.

%% Example:
%% list_compliance_items_result() :: #{
%%   <<"ComplianceItems">> => list(compliance_item()()),
%%   <<"NextToken">> => string()
%% }
-type list_compliance_items_result() :: #{binary() => any()}.

%% Example:
%% get_maintenance_window_execution_task_invocation_result() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ExecutionId">> => string(),
%%   <<"InvocationId">> => string(),
%%   <<"OwnerInformation">> => string(),
%%   <<"Parameters">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string(),
%%   <<"TaskExecutionId">> => string(),
%%   <<"TaskType">> => list(any()),
%%   <<"WindowExecutionId">> => string(),
%%   <<"WindowTargetId">> => string()
%% }
-type get_maintenance_window_execution_task_invocation_result() :: #{binary() => any()}.

%% Example:
%% invalid_filter() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_filter() :: #{binary() => any()}.

%% Example:
%% s3_output_url() :: #{
%%   <<"OutputUrl">> => string()
%% }
-type s3_output_url() :: #{binary() => any()}.

%% Example:
%% association_already_exists() :: #{

%% }
-type association_already_exists() :: #{binary() => any()}.

%% Example:
%% describe_sessions_request() :: #{
%%   <<"Filters">> => list(session_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"State">> := list(any())
%% }
-type describe_sessions_request() :: #{binary() => any()}.

%% Example:
%% document_version_info() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"DocumentFormat">> => list(any()),
%%   <<"DocumentVersion">> => string(),
%%   <<"IsDefaultVersion">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"ReviewStatus">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusInformation">> => string(),
%%   <<"VersionName">> => string()
%% }
-type document_version_info() :: #{binary() => any()}.

%% Example:
%% command_invocation() :: #{
%%   <<"CloudWatchOutputConfig">> => cloud_watch_output_config(),
%%   <<"CommandId">> => string(),
%%   <<"CommandPlugins">> => list(command_plugin()()),
%%   <<"Comment">> => string(),
%%   <<"DocumentName">> => string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceName">> => string(),
%%   <<"NotificationConfig">> => notification_config(),
%%   <<"RequestedDateTime">> => non_neg_integer(),
%%   <<"ServiceRole">> => string(),
%%   <<"StandardErrorUrl">> => string(),
%%   <<"StandardOutputUrl">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string(),
%%   <<"TraceOutput">> => string()
%% }
-type command_invocation() :: #{binary() => any()}.

%% Example:
%% delete_patch_baseline_result() :: #{
%%   <<"BaselineId">> => string()
%% }
-type delete_patch_baseline_result() :: #{binary() => any()}.

%% Example:
%% document_requires() :: #{
%%   <<"Name">> => string(),
%%   <<"RequireType">> => string(),
%%   <<"Version">> => string(),
%%   <<"VersionName">> => string()
%% }
-type document_requires() :: #{binary() => any()}.

%% Example:
%% invalid_filter_key() :: #{

%% }
-type invalid_filter_key() :: #{binary() => any()}.

%% Example:
%% parameter_pattern_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type parameter_pattern_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% patch_status() :: #{
%%   <<"ApprovalDate">> => non_neg_integer(),
%%   <<"ComplianceLevel">> => list(any()),
%%   <<"DeploymentStatus">> => list(any())
%% }
-type patch_status() :: #{binary() => any()}.

%% Example:
%% ops_item_limit_exceeded_exception() :: #{
%%   <<"Limit">> => integer(),
%%   <<"LimitType">> => string(),
%%   <<"Message">> => string(),
%%   <<"ResourceTypes">> => list(string()())
%% }
-type ops_item_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_inventory_result() :: #{
%%   <<"Entities">> => list(inventory_result_entity()()),
%%   <<"NextToken">> => string()
%% }
-type get_inventory_result() :: #{binary() => any()}.

%% Example:
%% list_inventory_entries_result() :: #{
%%   <<"CaptureTime">> => string(),
%%   <<"Entries">> => list(map()()),
%%   <<"InstanceId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaVersion">> => string(),
%%   <<"TypeName">> => string()
%% }
-type list_inventory_entries_result() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{
%%   <<"PolicyHash">> => string(),
%%   <<"PolicyId">> => string()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% cancel_command_result() :: #{

%% }
-type cancel_command_result() :: #{binary() => any()}.

%% Example:
%% resource_data_sync_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"SyncName">> => string(),
%%   <<"SyncType">> => string()
%% }
-type resource_data_sync_not_found_exception() :: #{binary() => any()}.

%% Example:
%% attachments_source() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type attachments_source() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_window_execution_task_invocations_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WindowExecutionTaskInvocationIdentities">> => list(maintenance_window_execution_task_invocation_identity()())
%% }
-type describe_maintenance_window_execution_task_invocations_result() :: #{binary() => any()}.

%% Example:
%% session_manager_output_url() :: #{
%%   <<"CloudWatchOutputUrl">> => string(),
%%   <<"S3OutputUrl">> => string()
%% }
-type session_manager_output_url() :: #{binary() => any()}.

%% Example:
%% describe_activations_result() :: #{
%%   <<"ActivationList">> => list(activation()()),
%%   <<"NextToken">> => string()
%% }
-type describe_activations_result() :: #{binary() => any()}.

%% Example:
%% parameter_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type parameter_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_result() :: #{

%% }
-type remove_tags_from_resource_result() :: #{binary() => any()}.

%% Example:
%% instance_association_output_url() :: #{
%%   <<"S3OutputUrl">> => s3_output_url()
%% }
-type instance_association_output_url() :: #{binary() => any()}.

%% Example:
%% get_ops_metadata_result() :: #{
%%   <<"Metadata">> => map(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type get_ops_metadata_result() :: #{binary() => any()}.

%% Example:
%% document_limit_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type document_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% target_not_connected() :: #{
%%   <<"Message">> => string()
%% }
-type target_not_connected() :: #{binary() => any()}.

%% Example:
%% ssm_node() :: #{
%%   <<"CaptureTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"NodeType">> => list(),
%%   <<"Owner">> => node_owner_info(),
%%   <<"Region">> => string()
%% }
-type ssm_node() :: #{binary() => any()}.

%% Example:
%% create_ops_metadata_result() :: #{
%%   <<"OpsMetadataArn">> => string()
%% }
-type create_ops_metadata_result() :: #{binary() => any()}.

%% Example:
%% ops_item_related_item_summary() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"AssociationType">> => string(),
%%   <<"CreatedBy">> => ops_item_identity(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => ops_item_identity(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"OpsItemId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ResourceUri">> => string()
%% }
-type ops_item_related_item_summary() :: #{binary() => any()}.

%% Example:
%% parameter_version_label_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type parameter_version_label_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"PolicyHash">> := string(),
%%   <<"PolicyId">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% get_calendar_state_response() :: #{
%%   <<"AtTime">> => string(),
%%   <<"NextTransitionTime">> => string(),
%%   <<"State">> => list(any())
%% }
-type get_calendar_state_response() :: #{binary() => any()}.

%% Example:
%% list_compliance_items_request() :: #{
%%   <<"Filters">> => list(compliance_string_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceIds">> => list(string()()),
%%   <<"ResourceTypes">> => list(string()())
%% }
-type list_compliance_items_request() :: #{binary() => any()}.

%% Example:
%% describe_instance_patches_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Patches">> => list(patch_compliance_data()())
%% }
-type describe_instance_patches_result() :: #{binary() => any()}.

%% Example:
%% command() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"CloudWatchOutputConfig">> => cloud_watch_output_config(),
%%   <<"CommandId">> => string(),
%%   <<"Comment">> => string(),
%%   <<"CompletedCount">> => integer(),
%%   <<"DeliveryTimedOutCount">> => integer(),
%%   <<"DocumentName">> => string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"ErrorCount">> => integer(),
%%   <<"ExpiresAfter">> => non_neg_integer(),
%%   <<"InstanceIds">> => list(string()()),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"NotificationConfig">> => notification_config(),
%%   <<"OutputS3BucketName">> => string(),
%%   <<"OutputS3KeyPrefix">> => string(),
%%   <<"OutputS3Region">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"RequestedDateTime">> => non_neg_integer(),
%%   <<"ServiceRole">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string(),
%%   <<"TargetCount">> => integer(),
%%   <<"Targets">> => list(target()()),
%%   <<"TimeoutSeconds">> => integer(),
%%   <<"TriggeredAlarms">> => list(alarm_state_information()())
%% }
-type command() :: #{binary() => any()}.

%% Example:
%% parameter_history() :: #{
%%   <<"AllowedPattern">> => string(),
%%   <<"DataType">> => string(),
%%   <<"Description">> => string(),
%%   <<"KeyId">> => string(),
%%   <<"Labels">> => list(string()()),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"LastModifiedUser">> => string(),
%%   <<"Name">> => string(),
%%   <<"Policies">> => list(parameter_inline_policy()()),
%%   <<"Tier">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string(),
%%   <<"Version">> => float()
%% }
-type parameter_history() :: #{binary() => any()}.

%% Example:
%% get_maintenance_window_execution_task_request() :: #{
%%   <<"TaskId">> := string(),
%%   <<"WindowExecutionId">> := string()
%% }
-type get_maintenance_window_execution_task_request() :: #{binary() => any()}.

%% Example:
%% put_parameter_result() :: #{
%%   <<"Tier">> => list(any()),
%%   <<"Version">> => float()
%% }
-type put_parameter_result() :: #{binary() => any()}.

%% Example:
%% update_document_default_version_result() :: #{
%%   <<"Description">> => document_default_version_description()
%% }
-type update_document_default_version_result() :: #{binary() => any()}.

%% Example:
%% target_preview() :: #{
%%   <<"Count">> => integer(),
%%   <<"TargetType">> => string()
%% }
-type target_preview() :: #{binary() => any()}.

%% Example:
%% automation_execution_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type automation_execution_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_ops_item_related_items_request() :: #{
%%   <<"Filters">> => list(ops_item_related_items_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OpsItemId">> => string()
%% }
-type list_ops_item_related_items_request() :: #{binary() => any()}.

%% Example:
%% create_ops_item_request() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ActualEndTime">> => non_neg_integer(),
%%   <<"ActualStartTime">> => non_neg_integer(),
%%   <<"Category">> => string(),
%%   <<"Description">> := string(),
%%   <<"Notifications">> => list(ops_item_notification()()),
%%   <<"OperationalData">> => map(),
%%   <<"OpsItemType">> => string(),
%%   <<"PlannedEndTime">> => non_neg_integer(),
%%   <<"PlannedStartTime">> => non_neg_integer(),
%%   <<"Priority">> => integer(),
%%   <<"RelatedOpsItems">> => list(related_ops_item()()),
%%   <<"Severity">> => string(),
%%   <<"Source">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Title">> := string()
%% }
-type create_ops_item_request() :: #{binary() => any()}.

%% Example:
%% sub_type_count_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type sub_type_count_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% start_automation_execution_result() :: #{
%%   <<"AutomationExecutionId">> => string()
%% }
-type start_automation_execution_result() :: #{binary() => any()}.

%% Example:
%% instance_info() :: #{
%%   <<"AgentType">> => string(),
%%   <<"AgentVersion">> => string(),
%%   <<"ComputerName">> => string(),
%%   <<"InstanceStatus">> => string(),
%%   <<"IpAddress">> => string(),
%%   <<"ManagedStatus">> => list(any()),
%%   <<"PlatformName">> => string(),
%%   <<"PlatformType">> => list(any()),
%%   <<"PlatformVersion">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type instance_info() :: #{binary() => any()}.

%% Example:
%% invalid_automation_signal_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_automation_signal_exception() :: #{binary() => any()}.

%% Example:
%% list_resource_data_sync_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SyncType">> => string()
%% }
-type list_resource_data_sync_request() :: #{binary() => any()}.

%% Example:
%% association_does_not_exist() :: #{
%%   <<"Message">> => string()
%% }
-type association_does_not_exist() :: #{binary() => any()}.

%% Example:
%% deregister_task_from_maintenance_window_request() :: #{
%%   <<"WindowId">> := string(),
%%   <<"WindowTaskId">> := string()
%% }
-type deregister_task_from_maintenance_window_request() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_result() :: #{

%% }
-type add_tags_to_resource_result() :: #{binary() => any()}.

%% Example:
%% invalid_policy_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_policy_type_exception() :: #{binary() => any()}.

%% Example:
%% resource_policy_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_policy_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_association_batch_request_entry() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"ApplyOnlyAtCronInterval">> => boolean(),
%%   <<"AssociationName">> => string(),
%%   <<"AutomationTargetParameterName">> => string(),
%%   <<"CalendarNames">> => list(string()()),
%%   <<"ComplianceSeverity">> => list(any()),
%%   <<"DocumentVersion">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"InstanceId">> => string(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputLocation">> => instance_association_output_location(),
%%   <<"Parameters">> => map(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"SyncCompliance">> => list(any()),
%%   <<"TargetLocations">> => list(target_location()()),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"Targets">> => list(target()())
%% }
-type create_association_batch_request_entry() :: #{binary() => any()}.

%% Example:
%% service_setting() :: #{
%%   <<"ARN">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"LastModifiedUser">> => string(),
%%   <<"SettingId">> => string(),
%%   <<"SettingValue">> => string(),
%%   <<"Status">> => string()
%% }
-type service_setting() :: #{binary() => any()}.

%% Example:
%% maintenance_window_automation_parameters() :: #{
%%   <<"DocumentVersion">> => string(),
%%   <<"Parameters">> => map()
%% }
-type maintenance_window_automation_parameters() :: #{binary() => any()}.

%% Example:
%% update_document_default_version_request() :: #{
%%   <<"DocumentVersion">> := string(),
%%   <<"Name">> := string()
%% }
-type update_document_default_version_request() :: #{binary() => any()}.

%% Example:
%% patch_filter_group() :: #{
%%   <<"PatchFilters">> => list(patch_filter()())
%% }
-type patch_filter_group() :: #{binary() => any()}.

%% Example:
%% put_inventory_result() :: #{
%%   <<"Message">> => string()
%% }
-type put_inventory_result() :: #{binary() => any()}.

%% Example:
%% resolved_targets() :: #{
%%   <<"ParameterValues">> => list(string()()),
%%   <<"Truncated">> => boolean()
%% }
-type resolved_targets() :: #{binary() => any()}.

%% Example:
%% describe_effective_instance_associations_result() :: #{
%%   <<"Associations">> => list(instance_association()()),
%%   <<"NextToken">> => string()
%% }
-type describe_effective_instance_associations_result() :: #{binary() => any()}.

%% Example:
%% scheduled_window_execution() :: #{
%%   <<"ExecutionTime">> => string(),
%%   <<"Name">> => string(),
%%   <<"WindowId">> => string()
%% }
-type scheduled_window_execution() :: #{binary() => any()}.

%% Example:
%% automation_definition_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type automation_definition_not_found_exception() :: #{binary() => any()}.

%% Example:
%% automation_definition_not_approved_exception() :: #{
%%   <<"Message">> => string()
%% }
-type automation_definition_not_approved_exception() :: #{binary() => any()}.

%% Example:
%% get_maintenance_window_task_result() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"CutoffBehavior">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"Targets">> => list(target()()),
%%   <<"TaskArn">> => string(),
%%   <<"TaskInvocationParameters">> => maintenance_window_task_invocation_parameters(),
%%   <<"TaskParameters">> => map(),
%%   <<"TaskType">> => list(any()),
%%   <<"WindowId">> => string(),
%%   <<"WindowTaskId">> => string()
%% }
-type get_maintenance_window_task_result() :: #{binary() => any()}.

%% Example:
%% compliance_type_count_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type compliance_type_count_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% unsupported_platform_type() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_platform_type() :: #{binary() => any()}.

%% Example:
%% describe_instance_associations_status_result() :: #{
%%   <<"InstanceAssociationStatusInfos">> => list(instance_association_status_info()()),
%%   <<"NextToken">> => string()
%% }
-type describe_instance_associations_status_result() :: #{binary() => any()}.

%% Example:
%% inventory_result_item() :: #{
%%   <<"CaptureTime">> => string(),
%%   <<"Content">> => list(map()()),
%%   <<"ContentHash">> => string(),
%%   <<"SchemaVersion">> => string(),
%%   <<"TypeName">> => string()
%% }
-type inventory_result_item() :: #{binary() => any()}.

%% Example:
%% does_not_exist_exception() :: #{
%%   <<"Message">> => string()
%% }
-type does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% describe_document_permission_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"PermissionType">> := list(any())
%% }
-type describe_document_permission_request() :: #{binary() => any()}.

%% Example:
%% patch_baseline_identity() :: #{
%%   <<"BaselineDescription">> => string(),
%%   <<"BaselineId">> => string(),
%%   <<"BaselineName">> => string(),
%%   <<"DefaultBaseline">> => boolean(),
%%   <<"OperatingSystem">> => list(any())
%% }
-type patch_baseline_identity() :: #{binary() => any()}.

%% Example:
%% step_execution() :: #{
%%   <<"Action">> => string(),
%%   <<"ExecutionEndTime">> => non_neg_integer(),
%%   <<"ExecutionStartTime">> => non_neg_integer(),
%%   <<"FailureDetails">> => failure_details(),
%%   <<"FailureMessage">> => string(),
%%   <<"Inputs">> => map(),
%%   <<"IsCritical">> => boolean(),
%%   <<"IsEnd">> => boolean(),
%%   <<"MaxAttempts">> => integer(),
%%   <<"NextStep">> => string(),
%%   <<"OnFailure">> => string(),
%%   <<"Outputs">> => map(),
%%   <<"OverriddenParameters">> => map(),
%%   <<"ParentStepDetails">> => parent_step_details(),
%%   <<"Response">> => string(),
%%   <<"ResponseCode">> => string(),
%%   <<"StepExecutionId">> => string(),
%%   <<"StepName">> => string(),
%%   <<"StepStatus">> => list(any()),
%%   <<"TargetLocation">> => target_location(),
%%   <<"Targets">> => list(target()()),
%%   <<"TimeoutSeconds">> => float(),
%%   <<"TriggeredAlarms">> => list(alarm_state_information()()),
%%   <<"ValidNextSteps">> => list(string()())
%% }
-type step_execution() :: #{binary() => any()}.

%% Example:
%% delete_inventory_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DryRun">> => boolean(),
%%   <<"SchemaDeleteOption">> => list(any()),
%%   <<"TypeName">> := string()
%% }
-type delete_inventory_request() :: #{binary() => any()}.

%% Example:
%% describe_association_executions_result() :: #{
%%   <<"AssociationExecutions">> => list(association_execution()()),
%%   <<"NextToken">> => string()
%% }
-type describe_association_executions_result() :: #{binary() => any()}.

%% Example:
%% update_maintenance_window_target_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"OwnerInformation">> => string(),
%%   <<"Replace">> => boolean(),
%%   <<"Targets">> => list(target()()),
%%   <<"WindowId">> := string(),
%%   <<"WindowTargetId">> := string()
%% }
-type update_maintenance_window_target_request() :: #{binary() => any()}.

%% Example:
%% hierarchy_type_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type hierarchy_type_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% maintenance_window_execution_task_identity() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskExecutionId">> => string(),
%%   <<"TaskType">> => list(any()),
%%   <<"TriggeredAlarms">> => list(alarm_state_information()()),
%%   <<"WindowExecutionId">> => string()
%% }
-type maintenance_window_execution_task_identity() :: #{binary() => any()}.

%% Example:
%% create_patch_baseline_result() :: #{
%%   <<"BaselineId">> => string()
%% }
-type create_patch_baseline_result() :: #{binary() => any()}.

%% Example:
%% target_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type target_in_use_exception() :: #{binary() => any()}.

%% Example:
%% item_content_mismatch_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"TypeName">> => string()
%% }
-type item_content_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% invalid_association_version() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_association_version() :: #{binary() => any()}.

%% Example:
%% list_documents_result() :: #{
%%   <<"DocumentIdentifiers">> => list(document_identifier()()),
%%   <<"NextToken">> => string()
%% }
-type list_documents_result() :: #{binary() => any()}.

%% Example:
%% stop_automation_execution_request() :: #{
%%   <<"AutomationExecutionId">> := string(),
%%   <<"Type">> => list(any())
%% }
-type stop_automation_execution_request() :: #{binary() => any()}.

%% Example:
%% describe_patch_baselines_result() :: #{
%%   <<"BaselineIdentities">> => list(patch_baseline_identity()()),
%%   <<"NextToken">> => string()
%% }
-type describe_patch_baselines_result() :: #{binary() => any()}.

%% Example:
%% update_association_request() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"ApplyOnlyAtCronInterval">> => boolean(),
%%   <<"AssociationId">> := string(),
%%   <<"AssociationName">> => string(),
%%   <<"AssociationVersion">> => string(),
%%   <<"AutomationTargetParameterName">> => string(),
%%   <<"CalendarNames">> => list(string()()),
%%   <<"ComplianceSeverity">> => list(any()),
%%   <<"DocumentVersion">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputLocation">> => instance_association_output_location(),
%%   <<"Parameters">> => map(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"SyncCompliance">> => list(any()),
%%   <<"TargetLocations">> => list(target_location()()),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"Targets">> => list(target()())
%% }
-type update_association_request() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_windows_for_target_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"Targets">> := list(target()())
%% }
-type describe_maintenance_windows_for_target_request() :: #{binary() => any()}.

%% Example:
%% invalid_instance_information_filter_value() :: #{
%%   <<"message">> => string()
%% }
-type invalid_instance_information_filter_value() :: #{binary() => any()}.

%% Example:
%% instance_information_filter() :: #{
%%   <<"key">> => list(any()),
%%   <<"valueSet">> => list(string()())
%% }
-type instance_information_filter() :: #{binary() => any()}.

%% Example:
%% delete_resource_data_sync_result() :: #{

%% }
-type delete_resource_data_sync_result() :: #{binary() => any()}.

%% Example:
%% start_change_request_execution_result() :: #{
%%   <<"AutomationExecutionId">> => string()
%% }
-type start_change_request_execution_result() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_windows_request() :: #{
%%   <<"Filters">> => list(maintenance_window_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_maintenance_windows_request() :: #{binary() => any()}.

%% Example:
%% start_change_request_execution_request() :: #{
%%   <<"AutoApprove">> => boolean(),
%%   <<"ChangeDetails">> => string(),
%%   <<"ChangeRequestName">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"DocumentName">> := string(),
%%   <<"DocumentVersion">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"Runbooks">> := list(runbook()()),
%%   <<"ScheduledEndTime">> => non_neg_integer(),
%%   <<"ScheduledTime">> => non_neg_integer(),
%%   <<"Tags">> => list(tag()())
%% }
-type start_change_request_execution_request() :: #{binary() => any()}.

%% Example:
%% update_ops_item_request() :: #{
%%   <<"ActualEndTime">> => non_neg_integer(),
%%   <<"ActualStartTime">> => non_neg_integer(),
%%   <<"Category">> => string(),
%%   <<"Description">> => string(),
%%   <<"Notifications">> => list(ops_item_notification()()),
%%   <<"OperationalData">> => map(),
%%   <<"OperationalDataToDelete">> => list(string()()),
%%   <<"OpsItemArn">> => string(),
%%   <<"OpsItemId">> := string(),
%%   <<"PlannedEndTime">> => non_neg_integer(),
%%   <<"PlannedStartTime">> => non_neg_integer(),
%%   <<"Priority">> => integer(),
%%   <<"RelatedOpsItems">> => list(related_ops_item()()),
%%   <<"Severity">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Title">> => string()
%% }
-type update_ops_item_request() :: #{binary() => any()}.

%% Example:
%% unlabel_parameter_version_result() :: #{
%%   <<"InvalidLabels">> => list(string()()),
%%   <<"RemovedLabels">> => list(string()())
%% }
-type unlabel_parameter_version_result() :: #{binary() => any()}.

%% Example:
%% association_filter() :: #{
%%   <<"key">> => list(any()),
%%   <<"value">> => string()
%% }
-type association_filter() :: #{binary() => any()}.

%% Example:
%% inventory_item() :: #{
%%   <<"CaptureTime">> => string(),
%%   <<"Content">> => list(map()()),
%%   <<"ContentHash">> => string(),
%%   <<"Context">> => map(),
%%   <<"SchemaVersion">> => string(),
%%   <<"TypeName">> => string()
%% }
-type inventory_item() :: #{binary() => any()}.

%% Example:
%% ops_metadata_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type ops_metadata_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% stop_automation_execution_result() :: #{

%% }
-type stop_automation_execution_result() :: #{binary() => any()}.

%% Example:
%% get_deployable_patch_snapshot_for_instance_request() :: #{
%%   <<"BaselineOverride">> => baseline_override(),
%%   <<"InstanceId">> := string(),
%%   <<"SnapshotId">> := string()
%% }
-type get_deployable_patch_snapshot_for_instance_request() :: #{binary() => any()}.

%% Example:
%% describe_document_permission_response() :: #{
%%   <<"AccountIds">> => list(string()()),
%%   <<"AccountSharingInfoList">> => list(account_sharing_info()()),
%%   <<"NextToken">> => string()
%% }
-type describe_document_permission_response() :: #{binary() => any()}.

%% Example:
%% ops_item_related_items_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type ops_item_related_items_filter() :: #{binary() => any()}.

%% Example:
%% compliance_execution_summary() :: #{
%%   <<"ExecutionId">> => string(),
%%   <<"ExecutionTime">> => non_neg_integer(),
%%   <<"ExecutionType">> => string()
%% }
-type compliance_execution_summary() :: #{binary() => any()}.

%% Example:
%% ops_item_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type ops_item_filter() :: #{binary() => any()}.

%% Example:
%% maintenance_window_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type maintenance_window_filter() :: #{binary() => any()}.

%% Example:
%% put_compliance_items_request() :: #{
%%   <<"ComplianceType">> := string(),
%%   <<"ExecutionSummary">> := compliance_execution_summary(),
%%   <<"ItemContentHash">> => string(),
%%   <<"Items">> := list(compliance_item_entry()()),
%%   <<"ResourceId">> := string(),
%%   <<"ResourceType">> := string(),
%%   <<"UploadType">> => list(any())
%% }
-type put_compliance_items_request() :: #{binary() => any()}.

%% Example:
%% invalid_next_token() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token() :: #{binary() => any()}.

%% Example:
%% describe_maintenance_windows_for_target_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WindowIdentities">> => list(maintenance_window_identity_for_target()())
%% }
-type describe_maintenance_windows_for_target_result() :: #{binary() => any()}.

%% Example:
%% get_parameters_by_path_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Parameters">> => list(parameter()())
%% }
-type get_parameters_by_path_result() :: #{binary() => any()}.

%% Example:
%% alarm_configuration() :: #{
%%   <<"Alarms">> => list(alarm()()),
%%   <<"IgnorePollAlarmFailure">> => boolean()
%% }
-type alarm_configuration() :: #{binary() => any()}.

%% Example:
%% maintenance_window_task() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"CutoffBehavior">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"LoggingInfo">> => logging_info(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"Targets">> => list(target()()),
%%   <<"TaskArn">> => string(),
%%   <<"TaskParameters">> => map(),
%%   <<"Type">> => list(any()),
%%   <<"WindowId">> => string(),
%%   <<"WindowTaskId">> => string()
%% }
-type maintenance_window_task() :: #{binary() => any()}.

%% Example:
%% invalid_document_operation() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_document_operation() :: #{binary() => any()}.

%% Example:
%% create_document_request() :: #{
%%   <<"Attachments">> => list(attachments_source()()),
%%   <<"Content">> := string(),
%%   <<"DisplayName">> => string(),
%%   <<"DocumentFormat">> => list(any()),
%%   <<"DocumentType">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"Requires">> => list(document_requires()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetType">> => string(),
%%   <<"VersionName">> => string()
%% }
-type create_document_request() :: #{binary() => any()}.

%% Example:
%% association_description() :: #{
%%   <<"AlarmConfiguration">> => alarm_configuration(),
%%   <<"ApplyOnlyAtCronInterval">> => boolean(),
%%   <<"AssociationId">> => string(),
%%   <<"AssociationName">> => string(),
%%   <<"AssociationVersion">> => string(),
%%   <<"AutomationTargetParameterName">> => string(),
%%   <<"CalendarNames">> => list(string()()),
%%   <<"ComplianceSeverity">> => list(any()),
%%   <<"Date">> => non_neg_integer(),
%%   <<"DocumentVersion">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"InstanceId">> => string(),
%%   <<"LastExecutionDate">> => non_neg_integer(),
%%   <<"LastSuccessfulExecutionDate">> => non_neg_integer(),
%%   <<"LastUpdateAssociationDate">> => non_neg_integer(),
%%   <<"MaxConcurrency">> => string(),
%%   <<"MaxErrors">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutputLocation">> => instance_association_output_location(),
%%   <<"Overview">> => association_overview(),
%%   <<"Parameters">> => map(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"ScheduleOffset">> => integer(),
%%   <<"Status">> => association_status(),
%%   <<"SyncCompliance">> => list(any()),
%%   <<"TargetLocations">> => list(target_location()()),
%%   <<"TargetMaps">> => list(map()()),
%%   <<"Targets">> => list(target()()),
%%   <<"TriggeredAlarms">> => list(alarm_state_information()())
%% }
-type association_description() :: #{binary() => any()}.

%% Example:
%% alarm_state_information() :: #{
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type alarm_state_information() :: #{binary() => any()}.

%% Example:
%% list_ops_item_events_request() :: #{
%%   <<"Filters">> => list(ops_item_event_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_ops_item_events_request() :: #{binary() => any()}.

%% Example:
%% update_patch_baseline_result() :: #{
%%   <<"ApprovalRules">> => patch_rule_group(),
%%   <<"ApprovedPatches">> => list(string()()),
%%   <<"ApprovedPatchesComplianceLevel">> => list(any()),
%%   <<"ApprovedPatchesEnableNonSecurity">> => boolean(),
%%   <<"BaselineId">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"GlobalFilters">> => patch_filter_group(),
%%   <<"ModifiedDate">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OperatingSystem">> => list(any()),
%%   <<"RejectedPatches">> => list(string()()),
%%   <<"RejectedPatchesAction">> => list(any()),
%%   <<"Sources">> => list(patch_source()())
%% }
-type update_patch_baseline_result() :: #{binary() => any()}.

%% Example:
%% maintenance_window_lambda_parameters() :: #{
%%   <<"ClientContext">> => string(),
%%   <<"Payload">> => binary(),
%%   <<"Qualifier">> => string()
%% }
-type maintenance_window_lambda_parameters() :: #{binary() => any()}.

%% Example:
%% patch_source() :: #{
%%   <<"Configuration">> => string(),
%%   <<"Name">> => string(),
%%   <<"Products">> => list(string()())
%% }
-type patch_source() :: #{binary() => any()}.

%% Example:
%% maintenance_window_identity_for_target() :: #{
%%   <<"Name">> => string(),
%%   <<"WindowId">> => string()
%% }
-type maintenance_window_identity_for_target() :: #{binary() => any()}.

%% Example:
%% list_inventory_entries_request() :: #{
%%   <<"Filters">> => list(inventory_filter()()),
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TypeName">> := string()
%% }
-type list_inventory_entries_request() :: #{binary() => any()}.

%% Example:
%% maintenance_window_execution_task_invocation_identity() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ExecutionId">> => string(),
%%   <<"InvocationId">> => string(),
%%   <<"OwnerInformation">> => string(),
%%   <<"Parameters">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string(),
%%   <<"TaskExecutionId">> => string(),
%%   <<"TaskType">> => list(any()),
%%   <<"WindowExecutionId">> => string(),
%%   <<"WindowTargetId">> => string()
%% }
-type maintenance_window_execution_task_invocation_identity() :: #{binary() => any()}.

%% Example:
%% parameter_max_version_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type parameter_max_version_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% unsupported_operating_system() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_operating_system() :: #{binary() => any()}.

%% Example:
%% get_inventory_schema_request() :: #{
%%   <<"Aggregator">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SubType">> => boolean(),
%%   <<"TypeName">> => string()
%% }
-type get_inventory_schema_request() :: #{binary() => any()}.

-type add_tags_to_resource_errors() ::
    too_many_updates() | 
    internal_server_error() | 
    too_many_tags_error() | 
    invalid_resource_id() | 
    invalid_resource_type().

-type associate_ops_item_related_item_errors() ::
    ops_item_limit_exceeded_exception() | 
    ops_item_invalid_parameter_exception() | 
    internal_server_error() | 
    ops_item_related_item_already_exists_exception() | 
    ops_item_conflict_exception() | 
    ops_item_not_found_exception().

-type cancel_command_errors() ::
    invalid_instance_id() | 
    internal_server_error() | 
    invalid_command_id() | 
    duplicate_instance_id().

-type cancel_maintenance_window_execution_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type create_activation_errors() ::
    internal_server_error() | 
    invalid_parameters().

-type create_association_errors() ::
    unsupported_platform_type() | 
    association_already_exists() | 
    invalid_instance_id() | 
    invalid_target_maps() | 
    internal_server_error() | 
    invalid_output_location() | 
    invalid_schedule() | 
    invalid_document_version() | 
    invalid_parameters() | 
    invalid_document() | 
    association_limit_exceeded() | 
    invalid_tag() | 
    invalid_target().

-type create_association_batch_errors() ::
    unsupported_platform_type() | 
    invalid_instance_id() | 
    invalid_target_maps() | 
    internal_server_error() | 
    invalid_output_location() | 
    duplicate_instance_id() | 
    invalid_schedule() | 
    invalid_document_version() | 
    invalid_parameters() | 
    invalid_document() | 
    association_limit_exceeded() | 
    invalid_target().

-type create_document_errors() ::
    document_limit_exceeded() | 
    internal_server_error() | 
    document_already_exists() | 
    invalid_document_schema_version() | 
    invalid_document_content() | 
    max_document_size_exceeded().

-type create_maintenance_window_errors() ::
    internal_server_error() | 
    resource_limit_exceeded_exception() | 
    idempotent_parameter_mismatch().

-type create_ops_item_errors() ::
    ops_item_limit_exceeded_exception() | 
    ops_item_invalid_parameter_exception() | 
    internal_server_error() | 
    ops_item_already_exists_exception() | 
    ops_item_access_denied_exception().

-type create_ops_metadata_errors() ::
    ops_metadata_limit_exceeded_exception() | 
    internal_server_error() | 
    ops_metadata_too_many_updates_exception() | 
    ops_metadata_already_exists_exception() | 
    ops_metadata_invalid_argument_exception().

-type create_patch_baseline_errors() ::
    internal_server_error() | 
    resource_limit_exceeded_exception() | 
    idempotent_parameter_mismatch().

-type create_resource_data_sync_errors() ::
    internal_server_error() | 
    resource_data_sync_count_exceeded_exception() | 
    resource_data_sync_invalid_configuration_exception() | 
    resource_data_sync_already_exists_exception().

-type delete_activation_errors() ::
    too_many_updates() | 
    internal_server_error() | 
    invalid_activation() | 
    invalid_activation_id().

-type delete_association_errors() ::
    association_does_not_exist() | 
    invalid_instance_id() | 
    too_many_updates() | 
    internal_server_error() | 
    invalid_document().

-type delete_document_errors() ::
    invalid_document_operation() | 
    associated_instances() | 
    internal_server_error() | 
    invalid_document().

-type delete_inventory_errors() ::
    internal_server_error() | 
    invalid_inventory_request_exception() | 
    invalid_option_exception() | 
    invalid_delete_inventory_parameters_exception() | 
    invalid_type_name_exception().

-type delete_maintenance_window_errors() ::
    internal_server_error().

-type delete_ops_item_errors() ::
    ops_item_invalid_parameter_exception() | 
    internal_server_error().

-type delete_ops_metadata_errors() ::
    internal_server_error() | 
    ops_metadata_invalid_argument_exception() | 
    ops_metadata_not_found_exception().

-type delete_parameter_errors() ::
    internal_server_error() | 
    parameter_not_found().

-type delete_parameters_errors() ::
    internal_server_error().

-type delete_patch_baseline_errors() ::
    internal_server_error() | 
    resource_in_use_exception().

-type delete_resource_data_sync_errors() ::
    resource_data_sync_not_found_exception() | 
    internal_server_error() | 
    resource_data_sync_invalid_configuration_exception().

-type delete_resource_policy_errors() ::
    resource_policy_not_found_exception() | 
    internal_server_error() | 
    resource_policy_conflict_exception() | 
    resource_not_found_exception() | 
    resource_policy_invalid_parameter_exception() | 
    malformed_resource_policy_document_exception().

-type deregister_managed_instance_errors() ::
    invalid_instance_id() | 
    internal_server_error().

-type deregister_patch_baseline_for_patch_group_errors() ::
    internal_server_error() | 
    invalid_resource_id().

-type deregister_target_from_maintenance_window_errors() ::
    target_in_use_exception() | 
    does_not_exist_exception() | 
    internal_server_error().

-type deregister_task_from_maintenance_window_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type describe_activations_errors() ::
    invalid_next_token() | 
    invalid_filter() | 
    internal_server_error().

-type describe_association_errors() ::
    invalid_association_version() | 
    association_does_not_exist() | 
    invalid_instance_id() | 
    internal_server_error() | 
    invalid_document().

-type describe_association_execution_targets_errors() ::
    invalid_next_token() | 
    association_does_not_exist() | 
    internal_server_error() | 
    association_execution_does_not_exist().

-type describe_association_executions_errors() ::
    invalid_next_token() | 
    association_does_not_exist() | 
    internal_server_error().

-type describe_automation_executions_errors() ::
    invalid_next_token() | 
    invalid_filter_key() | 
    internal_server_error() | 
    invalid_filter_value().

-type describe_automation_step_executions_errors() ::
    invalid_next_token() | 
    invalid_filter_key() | 
    internal_server_error() | 
    invalid_filter_value() | 
    automation_execution_not_found_exception().

-type describe_available_patches_errors() ::
    internal_server_error().

-type describe_document_errors() ::
    internal_server_error() | 
    invalid_document_version() | 
    invalid_document().

-type describe_document_permission_errors() ::
    invalid_document_operation() | 
    invalid_next_token() | 
    internal_server_error() | 
    invalid_permission_type() | 
    invalid_document().

-type describe_effective_instance_associations_errors() ::
    invalid_next_token() | 
    invalid_instance_id() | 
    internal_server_error().

-type describe_effective_patches_for_patch_baseline_errors() ::
    unsupported_operating_system() | 
    does_not_exist_exception() | 
    internal_server_error() | 
    invalid_resource_id().

-type describe_instance_associations_status_errors() ::
    invalid_next_token() | 
    invalid_instance_id() | 
    internal_server_error().

-type describe_instance_information_errors() ::
    invalid_next_token() | 
    invalid_instance_information_filter_value() | 
    invalid_filter_key() | 
    invalid_instance_id() | 
    internal_server_error().

-type describe_instance_patch_states_errors() ::
    invalid_next_token() | 
    internal_server_error().

-type describe_instance_patch_states_for_patch_group_errors() ::
    invalid_next_token() | 
    invalid_filter() | 
    internal_server_error().

-type describe_instance_patches_errors() ::
    invalid_next_token() | 
    invalid_filter() | 
    invalid_instance_id() | 
    internal_server_error().

-type describe_instance_properties_errors() ::
    invalid_next_token() | 
    invalid_filter_key() | 
    invalid_instance_id() | 
    internal_server_error() | 
    invalid_activation_id() | 
    invalid_document() | 
    invalid_instance_property_filter_value().

-type describe_inventory_deletions_errors() ::
    invalid_next_token() | 
    internal_server_error() | 
    invalid_deletion_id_exception().

-type describe_maintenance_window_execution_task_invocations_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type describe_maintenance_window_execution_tasks_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type describe_maintenance_window_executions_errors() ::
    internal_server_error().

-type describe_maintenance_window_schedule_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type describe_maintenance_window_targets_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type describe_maintenance_window_tasks_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type describe_maintenance_windows_errors() ::
    internal_server_error().

-type describe_maintenance_windows_for_target_errors() ::
    internal_server_error().

-type describe_ops_items_errors() ::
    internal_server_error().

-type describe_parameters_errors() ::
    invalid_next_token() | 
    invalid_filter_key() | 
    internal_server_error() | 
    invalid_filter_option() | 
    invalid_filter_value().

-type describe_patch_baselines_errors() ::
    internal_server_error().

-type describe_patch_group_state_errors() ::
    invalid_next_token() | 
    internal_server_error().

-type describe_patch_groups_errors() ::
    internal_server_error().

-type describe_patch_properties_errors() ::
    internal_server_error().

-type describe_sessions_errors() ::
    invalid_next_token() | 
    invalid_filter_key() | 
    internal_server_error().

-type disassociate_ops_item_related_item_errors() ::
    ops_item_invalid_parameter_exception() | 
    internal_server_error() | 
    ops_item_related_item_association_not_found_exception() | 
    ops_item_conflict_exception() | 
    ops_item_not_found_exception().

-type get_automation_execution_errors() ::
    internal_server_error() | 
    automation_execution_not_found_exception().

-type get_calendar_state_errors() ::
    internal_server_error() | 
    invalid_document_type() | 
    unsupported_calendar_exception() | 
    invalid_document().

-type get_command_invocation_errors() ::
    invalid_instance_id() | 
    internal_server_error() | 
    invalid_command_id() | 
    invocation_does_not_exist() | 
    invalid_plugin_name().

-type get_connection_status_errors() ::
    internal_server_error().

-type get_default_patch_baseline_errors() ::
    internal_server_error().

-type get_deployable_patch_snapshot_for_instance_errors() ::
    unsupported_operating_system() | 
    internal_server_error() | 
    unsupported_feature_required_exception().

-type get_document_errors() ::
    internal_server_error() | 
    invalid_document_version() | 
    invalid_document().

-type get_execution_preview_errors() ::
    internal_server_error() | 
    resource_not_found_exception().

-type get_inventory_errors() ::
    invalid_next_token() | 
    invalid_filter() | 
    internal_server_error() | 
    invalid_inventory_group_exception() | 
    invalid_aggregator_exception() | 
    invalid_result_attribute_exception() | 
    invalid_type_name_exception().

-type get_inventory_schema_errors() ::
    invalid_next_token() | 
    internal_server_error() | 
    invalid_type_name_exception().

-type get_maintenance_window_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type get_maintenance_window_execution_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type get_maintenance_window_execution_task_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type get_maintenance_window_execution_task_invocation_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type get_maintenance_window_task_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type get_ops_item_errors() ::
    internal_server_error() | 
    ops_item_not_found_exception() | 
    ops_item_access_denied_exception().

-type get_ops_metadata_errors() ::
    internal_server_error() | 
    ops_metadata_invalid_argument_exception() | 
    ops_metadata_not_found_exception().

-type get_ops_summary_errors() ::
    invalid_next_token() | 
    resource_data_sync_not_found_exception() | 
    invalid_filter() | 
    internal_server_error() | 
    invalid_aggregator_exception() | 
    invalid_type_name_exception().

-type get_parameter_errors() ::
    internal_server_error() | 
    invalid_key_id() | 
    parameter_version_not_found() | 
    parameter_not_found().

-type get_parameter_history_errors() ::
    invalid_next_token() | 
    internal_server_error() | 
    invalid_key_id() | 
    parameter_not_found().

-type get_parameters_errors() ::
    internal_server_error() | 
    invalid_key_id().

-type get_parameters_by_path_errors() ::
    invalid_next_token() | 
    invalid_filter_key() | 
    internal_server_error() | 
    invalid_key_id() | 
    invalid_filter_option() | 
    invalid_filter_value().

-type get_patch_baseline_errors() ::
    does_not_exist_exception() | 
    internal_server_error() | 
    invalid_resource_id().

-type get_patch_baseline_for_patch_group_errors() ::
    internal_server_error().

-type get_resource_policies_errors() ::
    internal_server_error() | 
    resource_not_found_exception() | 
    resource_policy_invalid_parameter_exception().

-type get_service_setting_errors() ::
    internal_server_error() | 
    service_setting_not_found().

-type label_parameter_version_errors() ::
    parameter_version_label_limit_exceeded() | 
    too_many_updates() | 
    internal_server_error() | 
    parameter_version_not_found() | 
    parameter_not_found().

-type list_association_versions_errors() ::
    invalid_next_token() | 
    association_does_not_exist() | 
    internal_server_error().

-type list_associations_errors() ::
    invalid_next_token() | 
    internal_server_error().

-type list_command_invocations_errors() ::
    invalid_next_token() | 
    invalid_filter_key() | 
    invalid_instance_id() | 
    internal_server_error() | 
    invalid_command_id().

-type list_commands_errors() ::
    invalid_next_token() | 
    invalid_filter_key() | 
    invalid_instance_id() | 
    internal_server_error() | 
    invalid_command_id().

-type list_compliance_items_errors() ::
    invalid_next_token() | 
    invalid_filter() | 
    internal_server_error() | 
    invalid_resource_id() | 
    invalid_resource_type().

-type list_compliance_summaries_errors() ::
    invalid_next_token() | 
    invalid_filter() | 
    internal_server_error().

-type list_document_metadata_history_errors() ::
    invalid_next_token() | 
    internal_server_error() | 
    invalid_document_version() | 
    invalid_document().

-type list_document_versions_errors() ::
    invalid_next_token() | 
    internal_server_error() | 
    invalid_document().

-type list_documents_errors() ::
    invalid_next_token() | 
    invalid_filter_key() | 
    internal_server_error().

-type list_inventory_entries_errors() ::
    invalid_next_token() | 
    invalid_filter() | 
    invalid_instance_id() | 
    internal_server_error() | 
    invalid_type_name_exception().

-type list_nodes_errors() ::
    invalid_next_token() | 
    resource_data_sync_not_found_exception() | 
    invalid_filter() | 
    internal_server_error() | 
    unsupported_operation_exception().

-type list_nodes_summary_errors() ::
    invalid_next_token() | 
    resource_data_sync_not_found_exception() | 
    invalid_filter() | 
    internal_server_error() | 
    invalid_aggregator_exception() | 
    unsupported_operation_exception().

-type list_ops_item_events_errors() ::
    ops_item_limit_exceeded_exception() | 
    ops_item_invalid_parameter_exception() | 
    internal_server_error() | 
    ops_item_not_found_exception().

-type list_ops_item_related_items_errors() ::
    ops_item_invalid_parameter_exception() | 
    internal_server_error().

-type list_ops_metadata_errors() ::
    internal_server_error() | 
    ops_metadata_invalid_argument_exception().

-type list_resource_compliance_summaries_errors() ::
    invalid_next_token() | 
    invalid_filter() | 
    internal_server_error().

-type list_resource_data_sync_errors() ::
    invalid_next_token() | 
    internal_server_error() | 
    resource_data_sync_invalid_configuration_exception().

-type list_tags_for_resource_errors() ::
    internal_server_error() | 
    invalid_resource_id() | 
    invalid_resource_type().

-type modify_document_permission_errors() ::
    document_limit_exceeded() | 
    internal_server_error() | 
    invalid_permission_type() | 
    invalid_document() | 
    document_permission_limit().

-type put_compliance_items_errors() ::
    compliance_type_count_limit_exceeded_exception() | 
    internal_server_error() | 
    item_size_limit_exceeded_exception() | 
    invalid_resource_id() | 
    invalid_resource_type() | 
    total_size_limit_exceeded_exception() | 
    invalid_item_content_exception().

-type put_inventory_errors() ::
    item_content_mismatch_exception() | 
    sub_type_count_limit_exceeded_exception() | 
    invalid_instance_id() | 
    internal_server_error() | 
    item_size_limit_exceeded_exception() | 
    invalid_inventory_item_context_exception() | 
    unsupported_inventory_schema_version_exception() | 
    custom_schema_count_limit_exceeded_exception() | 
    total_size_limit_exceeded_exception() | 
    unsupported_inventory_item_context_exception() | 
    invalid_item_content_exception() | 
    invalid_type_name_exception().

-type put_parameter_errors() ::
    parameter_max_version_limit_exceeded() | 
    hierarchy_type_mismatch_exception() | 
    invalid_policy_type_exception() | 
    parameter_limit_exceeded() | 
    parameter_pattern_mismatch_exception() | 
    too_many_updates() | 
    internal_server_error() | 
    hierarchy_level_limit_exceeded_exception() | 
    invalid_allowed_pattern_exception() | 
    invalid_key_id() | 
    parameter_already_exists() | 
    policies_limit_exceeded_exception() | 
    unsupported_parameter_type() | 
    incompatible_policy_exception() | 
    invalid_policy_attribute_exception().

-type put_resource_policy_errors() ::
    resource_policy_not_found_exception() | 
    internal_server_error() | 
    resource_policy_conflict_exception() | 
    resource_not_found_exception() | 
    resource_policy_invalid_parameter_exception() | 
    resource_policy_limit_exceeded_exception() | 
    malformed_resource_policy_document_exception().

-type register_default_patch_baseline_errors() ::
    does_not_exist_exception() | 
    internal_server_error() | 
    invalid_resource_id().

-type register_patch_baseline_for_patch_group_errors() ::
    does_not_exist_exception() | 
    internal_server_error() | 
    resource_limit_exceeded_exception() | 
    invalid_resource_id() | 
    already_exists_exception().

-type register_target_with_maintenance_window_errors() ::
    does_not_exist_exception() | 
    internal_server_error() | 
    resource_limit_exceeded_exception() | 
    idempotent_parameter_mismatch().

-type register_task_with_maintenance_window_errors() ::
    does_not_exist_exception() | 
    feature_not_available_exception() | 
    internal_server_error() | 
    resource_limit_exceeded_exception() | 
    idempotent_parameter_mismatch().

-type remove_tags_from_resource_errors() ::
    too_many_updates() | 
    internal_server_error() | 
    invalid_resource_id() | 
    invalid_resource_type().

-type reset_service_setting_errors() ::
    too_many_updates() | 
    internal_server_error() | 
    service_setting_not_found().

-type resume_session_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type send_automation_signal_errors() ::
    invalid_automation_signal_exception() | 
    internal_server_error() | 
    automation_step_not_found_exception() | 
    automation_execution_not_found_exception().

-type send_command_errors() ::
    unsupported_platform_type() | 
    invalid_instance_id() | 
    internal_server_error() | 
    invalid_output_folder() | 
    invalid_notification_config() | 
    duplicate_instance_id() | 
    invalid_role() | 
    invalid_document_version() | 
    invalid_parameters() | 
    invalid_document() | 
    max_document_size_exceeded().

-type start_associations_once_errors() ::
    association_does_not_exist() | 
    invalid_association().

-type start_automation_execution_errors() ::
    automation_definition_not_found_exception() | 
    automation_execution_limit_exceeded_exception() | 
    automation_definition_version_not_found_exception() | 
    internal_server_error() | 
    invalid_automation_execution_parameters_exception() | 
    idempotent_parameter_mismatch() | 
    invalid_target().

-type start_change_request_execution_errors() ::
    automation_definition_not_approved_exception() | 
    automation_definition_not_found_exception() | 
    automation_execution_limit_exceeded_exception() | 
    automation_definition_version_not_found_exception() | 
    internal_server_error() | 
    invalid_automation_execution_parameters_exception() | 
    idempotent_parameter_mismatch().

-type start_execution_preview_errors() ::
    validation_exception() | 
    internal_server_error().

-type start_session_errors() ::
    target_not_connected() | 
    internal_server_error() | 
    invalid_document().

-type stop_automation_execution_errors() ::
    invalid_automation_status_update_exception() | 
    internal_server_error() | 
    automation_execution_not_found_exception().

-type terminate_session_errors() ::
    internal_server_error().

-type unlabel_parameter_version_errors() ::
    too_many_updates() | 
    internal_server_error() | 
    parameter_version_not_found() | 
    parameter_not_found().

-type update_association_errors() ::
    invalid_association_version() | 
    association_does_not_exist() | 
    invalid_update() | 
    too_many_updates() | 
    invalid_target_maps() | 
    internal_server_error() | 
    invalid_output_location() | 
    invalid_schedule() | 
    association_version_limit_exceeded() | 
    invalid_document_version() | 
    invalid_parameters() | 
    invalid_document() | 
    invalid_target().

-type update_association_status_errors() ::
    association_does_not_exist() | 
    invalid_instance_id() | 
    too_many_updates() | 
    internal_server_error() | 
    status_unchanged() | 
    invalid_document().

-type update_document_errors() ::
    invalid_document_operation() | 
    internal_server_error() | 
    duplicate_document_version_name() | 
    invalid_document_schema_version() | 
    duplicate_document_content() | 
    invalid_document_version() | 
    invalid_document_content() | 
    invalid_document() | 
    document_version_limit_exceeded() | 
    max_document_size_exceeded().

-type update_document_default_version_errors() ::
    internal_server_error() | 
    invalid_document_schema_version() | 
    invalid_document_version() | 
    invalid_document().

-type update_document_metadata_errors() ::
    invalid_document_operation() | 
    internal_server_error() | 
    invalid_document_version() | 
    invalid_document().

-type update_maintenance_window_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type update_maintenance_window_target_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type update_maintenance_window_task_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type update_managed_instance_role_errors() ::
    invalid_instance_id() | 
    internal_server_error().

-type update_ops_item_errors() ::
    ops_item_limit_exceeded_exception() | 
    ops_item_invalid_parameter_exception() | 
    internal_server_error() | 
    ops_item_already_exists_exception() | 
    ops_item_conflict_exception() | 
    ops_item_not_found_exception() | 
    ops_item_access_denied_exception().

-type update_ops_metadata_errors() ::
    internal_server_error() | 
    ops_metadata_too_many_updates_exception() | 
    ops_metadata_key_limit_exceeded_exception() | 
    ops_metadata_invalid_argument_exception() | 
    ops_metadata_not_found_exception().

-type update_patch_baseline_errors() ::
    does_not_exist_exception() | 
    internal_server_error().

-type update_resource_data_sync_errors() ::
    resource_data_sync_not_found_exception() | 
    internal_server_error() | 
    resource_data_sync_invalid_configuration_exception() | 
    resource_data_sync_conflict_exception().

-type update_service_setting_errors() ::
    too_many_updates() | 
    internal_server_error() | 
    service_setting_not_found().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds or overwrites one or more tags for the specified resource.
%%
%% Tags
%% are metadata that you can assign to your automations, documents, managed
%% nodes, maintenance
%% windows, Parameter Store parameters, and patch baselines. Tags enable you
%% to categorize your
%% resources in different ways, for example, by purpose, owner, or
%% environment. Each tag consists of
%% a key and an optional value, both of which you define. For example, you
%% could define a set of
%% tags for your account's managed nodes that helps you track each
%% node's owner and stack level. For
%% example:
%%
%% `Key=Owner,Value=DbAdmin'
%%
%% `Key=Owner,Value=SysAdmin'
%%
%% `Key=Owner,Value=Dev'
%%
%% `Key=Stack,Value=Production'
%%
%% `Key=Stack,Value=Pre-Production'
%%
%% `Key=Stack,Value=Test'
%%
%% Most resources can have a maximum of 50 tags. Automations can have a
%% maximum of 5
%% tags.
%%
%% We recommend that you devise a set of tag keys that meets your needs for
%% each resource type.
%% Using a consistent set of tag keys makes it easier for you to manage your
%% resources. You can
%% search and filter the resources based on the tags you add. Tags don't
%% have any semantic meaning
%% to and are interpreted strictly as a string of characters.
%%
%% For more information about using tags with Amazon Elastic Compute Cloud
%% (Amazon EC2) instances, see Tag your Amazon EC2
%% resources:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html in the
%% Amazon EC2 User Guide.
-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_request()) ->
    {ok, add_tags_to_resource_result(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).

-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_request(), proplists:proplist()) ->
    {ok, add_tags_to_resource_result(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Associates a related item to a Systems Manager OpsCenter OpsItem.
%%
%% For example, you can associate an
%% Incident Manager incident or analysis with an OpsItem. Incident Manager
%% and OpsCenter are tools in
%% Amazon Web Services Systems Manager.
-spec associate_ops_item_related_item(aws_client:aws_client(), associate_ops_item_related_item_request()) ->
    {ok, associate_ops_item_related_item_response(), tuple()} |
    {error, any()} |
    {error, associate_ops_item_related_item_errors(), tuple()}.
associate_ops_item_related_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_ops_item_related_item(Client, Input, []).

-spec associate_ops_item_related_item(aws_client:aws_client(), associate_ops_item_related_item_request(), proplists:proplist()) ->
    {ok, associate_ops_item_related_item_response(), tuple()} |
    {error, any()} |
    {error, associate_ops_item_related_item_errors(), tuple()}.
associate_ops_item_related_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateOpsItemRelatedItem">>, Input, Options).

%% @doc Attempts to cancel the command specified by the Command ID.
%%
%% There is no guarantee that the
%% command will be terminated and the underlying process stopped.
-spec cancel_command(aws_client:aws_client(), cancel_command_request()) ->
    {ok, cancel_command_result(), tuple()} |
    {error, any()} |
    {error, cancel_command_errors(), tuple()}.
cancel_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_command(Client, Input, []).

-spec cancel_command(aws_client:aws_client(), cancel_command_request(), proplists:proplist()) ->
    {ok, cancel_command_result(), tuple()} |
    {error, any()} |
    {error, cancel_command_errors(), tuple()}.
cancel_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCommand">>, Input, Options).

%% @doc Stops a maintenance window execution that is already in progress and
%% cancels any tasks in
%% the window that haven't already starting running.
%%
%% Tasks already in progress will continue to
%% completion.
-spec cancel_maintenance_window_execution(aws_client:aws_client(), cancel_maintenance_window_execution_request()) ->
    {ok, cancel_maintenance_window_execution_result(), tuple()} |
    {error, any()} |
    {error, cancel_maintenance_window_execution_errors(), tuple()}.
cancel_maintenance_window_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_maintenance_window_execution(Client, Input, []).

-spec cancel_maintenance_window_execution(aws_client:aws_client(), cancel_maintenance_window_execution_request(), proplists:proplist()) ->
    {ok, cancel_maintenance_window_execution_result(), tuple()} |
    {error, any()} |
    {error, cancel_maintenance_window_execution_errors(), tuple()}.
cancel_maintenance_window_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelMaintenanceWindowExecution">>, Input, Options).

%% @doc Generates an activation code and activation ID you can use to
%% register your on-premises
%% servers, edge devices, or virtual machine (VM) with Amazon Web Services
%% Systems Manager.
%%
%% Registering these machines with
%% Systems Manager makes it possible to manage them using Systems Manager
%% tools. You use the activation code and ID when
%% installing SSM Agent on machines in your hybrid environment. For more
%% information about
%% requirements for managing on-premises machines using Systems Manager, see
%% Using Amazon Web Services Systems Manager in
%% hybrid and multicloud environments:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-hybrid-multicloud.html
%% in the Amazon Web Services Systems Manager User Guide.
%%
%% Amazon Elastic Compute Cloud (Amazon EC2) instances, edge devices, and
%% on-premises servers and VMs that are
%% configured for Systems Manager are all called managed nodes.
-spec create_activation(aws_client:aws_client(), create_activation_request()) ->
    {ok, create_activation_result(), tuple()} |
    {error, any()} |
    {error, create_activation_errors(), tuple()}.
create_activation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_activation(Client, Input, []).

-spec create_activation(aws_client:aws_client(), create_activation_request(), proplists:proplist()) ->
    {ok, create_activation_result(), tuple()} |
    {error, any()} |
    {error, create_activation_errors(), tuple()}.
create_activation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateActivation">>, Input, Options).

%% @doc A State Manager association defines the state that you want to
%% maintain on your managed
%% nodes.
%%
%% For example, an association can specify that anti-virus software must be
%% installed and
%% running on your managed nodes, or that certain ports must be closed. For
%% static targets, the
%% association specifies a schedule for when the configuration is reapplied.
%% For dynamic targets,
%% such as an Amazon Web Services resource group or an Amazon Web Services
%% autoscaling group, State Manager, a tool in Amazon Web Services Systems
%% Manager
%% applies the configuration when new managed nodes are added to the group.
%% The association also
%% specifies actions to take when applying the configuration. For example, an
%% association for
%% anti-virus software might run once a day. If the software isn't
%% installed, then State Manager
%% installs it. If the software is installed, but the service isn't
%% running, then the association
%% might instruct State Manager to start the service.
-spec create_association(aws_client:aws_client(), create_association_request()) ->
    {ok, create_association_result(), tuple()} |
    {error, any()} |
    {error, create_association_errors(), tuple()}.
create_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_association(Client, Input, []).

-spec create_association(aws_client:aws_client(), create_association_request(), proplists:proplist()) ->
    {ok, create_association_result(), tuple()} |
    {error, any()} |
    {error, create_association_errors(), tuple()}.
create_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAssociation">>, Input, Options).

%% @doc Associates the specified Amazon Web Services Systems Manager document
%% (SSM document) with the specified managed nodes
%% or targets.
%%
%% When you associate a document with one or more managed nodes using IDs or
%% tags, Amazon Web Services Systems Manager
%% Agent (SSM Agent) running on the managed node processes the document and
%% configures the node as
%% specified.
%%
%% If you associate a document with a managed node that already has an
%% associated document, the
%% system returns the AssociationAlreadyExists exception.
-spec create_association_batch(aws_client:aws_client(), create_association_batch_request()) ->
    {ok, create_association_batch_result(), tuple()} |
    {error, any()} |
    {error, create_association_batch_errors(), tuple()}.
create_association_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_association_batch(Client, Input, []).

-spec create_association_batch(aws_client:aws_client(), create_association_batch_request(), proplists:proplist()) ->
    {ok, create_association_batch_result(), tuple()} |
    {error, any()} |
    {error, create_association_batch_errors(), tuple()}.
create_association_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAssociationBatch">>, Input, Options).

%% @doc Creates a Amazon Web Services Systems Manager (SSM document).
%%
%% An SSM document defines the actions that Systems Manager performs
%% on your managed nodes. For more information about SSM documents, including
%% information about
%% supported schemas, features, and syntax, see Amazon Web Services Systems
%% Manager Documents:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/documents.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
-spec create_document(aws_client:aws_client(), create_document_request()) ->
    {ok, create_document_result(), tuple()} |
    {error, any()} |
    {error, create_document_errors(), tuple()}.
create_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_document(Client, Input, []).

-spec create_document(aws_client:aws_client(), create_document_request(), proplists:proplist()) ->
    {ok, create_document_result(), tuple()} |
    {error, any()} |
    {error, create_document_errors(), tuple()}.
create_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDocument">>, Input, Options).

%% @doc Creates a new maintenance window.
%%
%% The value you specify for `Duration' determines the specific end time
%% for the
%% maintenance window based on the time it begins. No maintenance window
%% tasks are permitted to
%% start after the resulting endtime minus the number of hours you specify
%% for `Cutoff'.
%% For example, if the maintenance window starts at 3 PM, the duration is
%% three hours, and the
%% value you specify for `Cutoff' is one hour, no maintenance window
%% tasks can start
%% after 5 PM.
-spec create_maintenance_window(aws_client:aws_client(), create_maintenance_window_request()) ->
    {ok, create_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, create_maintenance_window_errors(), tuple()}.
create_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_maintenance_window(Client, Input, []).

-spec create_maintenance_window(aws_client:aws_client(), create_maintenance_window_request(), proplists:proplist()) ->
    {ok, create_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, create_maintenance_window_errors(), tuple()}.
create_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMaintenanceWindow">>, Input, Options).

%% @doc Creates a new OpsItem.
%%
%% You must have permission in Identity and Access Management (IAM) to create
%% a new OpsItem. For more information, see Set up OpsCenter:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
%%
%% Operations engineers and IT professionals use Amazon Web Services Systems
%% Manager OpsCenter to view, investigate, and
%% remediate operational issues impacting the performance and health of their
%% Amazon Web Services resources. For
%% more information, see Amazon Web Services Systems Manager OpsCenter:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
-spec create_ops_item(aws_client:aws_client(), create_ops_item_request()) ->
    {ok, create_ops_item_response(), tuple()} |
    {error, any()} |
    {error, create_ops_item_errors(), tuple()}.
create_ops_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ops_item(Client, Input, []).

-spec create_ops_item(aws_client:aws_client(), create_ops_item_request(), proplists:proplist()) ->
    {ok, create_ops_item_response(), tuple()} |
    {error, any()} |
    {error, create_ops_item_errors(), tuple()}.
create_ops_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOpsItem">>, Input, Options).

%% @doc If you create a new application in Application Manager, Amazon Web
%% Services Systems Manager calls this API operation to specify
%% information about the new application, including the application type.
-spec create_ops_metadata(aws_client:aws_client(), create_ops_metadata_request()) ->
    {ok, create_ops_metadata_result(), tuple()} |
    {error, any()} |
    {error, create_ops_metadata_errors(), tuple()}.
create_ops_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ops_metadata(Client, Input, []).

-spec create_ops_metadata(aws_client:aws_client(), create_ops_metadata_request(), proplists:proplist()) ->
    {ok, create_ops_metadata_result(), tuple()} |
    {error, any()} |
    {error, create_ops_metadata_errors(), tuple()}.
create_ops_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOpsMetadata">>, Input, Options).

%% @doc Creates a patch baseline.
%%
%% For information about valid key-value pairs in `PatchFilters' for each
%% supported
%% operating system type, see `PatchFilter'.
-spec create_patch_baseline(aws_client:aws_client(), create_patch_baseline_request()) ->
    {ok, create_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, create_patch_baseline_errors(), tuple()}.
create_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_patch_baseline(Client, Input, []).

-spec create_patch_baseline(aws_client:aws_client(), create_patch_baseline_request(), proplists:proplist()) ->
    {ok, create_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, create_patch_baseline_errors(), tuple()}.
create_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePatchBaseline">>, Input, Options).

%% @doc A resource data sync helps you view data from multiple sources in a
%% single location.
%%
%% Amazon Web Services Systems Manager offers two types of resource data
%% sync: `SyncToDestination' and
%% `SyncFromSource'.
%%
%% You can configure Systems Manager Inventory to use the
%% `SyncToDestination' type to
%% synchronize Inventory data from multiple Amazon Web Services Regions to a
%% single Amazon Simple Storage Service (Amazon S3) bucket. For more
%% information, see Creating a
%% resource data sync for Inventory:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/inventory-create-resource-data-sync.html
%% in the Amazon Web Services Systems Manager User Guide.
%%
%% You can configure Systems Manager Explorer to use the `SyncFromSource'
%% type to synchronize
%% operational work items (OpsItems) and operational data (OpsData) from
%% multiple Amazon Web Services Regions to a
%% single Amazon S3 bucket. This type can synchronize OpsItems and OpsData
%% from multiple
%% Amazon Web Services accounts and Amazon Web Services Regions or
%% `EntireOrganization' by using Organizations. For more
%% information, see Setting up Systems Manager
%% Explorer to display data from multiple accounts and Regions:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resource-data-sync.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
%%
%% A resource data sync is an asynchronous operation that returns
%% immediately. After a
%% successful initial sync is completed, the system continuously syncs data.
%% To check the status of
%% a sync, use the `ListResourceDataSync'.
%%
%% By default, data isn't encrypted in Amazon S3. We strongly recommend
%% that you
%% enable encryption in Amazon S3 to ensure secure data storage. We also
%% recommend that you
%% secure access to the Amazon S3 bucket by creating a restrictive bucket
%% policy.
-spec create_resource_data_sync(aws_client:aws_client(), create_resource_data_sync_request()) ->
    {ok, create_resource_data_sync_result(), tuple()} |
    {error, any()} |
    {error, create_resource_data_sync_errors(), tuple()}.
create_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource_data_sync(Client, Input, []).

-spec create_resource_data_sync(aws_client:aws_client(), create_resource_data_sync_request(), proplists:proplist()) ->
    {ok, create_resource_data_sync_result(), tuple()} |
    {error, any()} |
    {error, create_resource_data_sync_errors(), tuple()}.
create_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResourceDataSync">>, Input, Options).

%% @doc Deletes an activation.
%%
%% You aren't required to delete an activation. If you delete an
%% activation, you can no longer use it to register additional managed nodes.
%% Deleting an activation
%% doesn't de-register managed nodes. You must manually de-register
%% managed nodes.
-spec delete_activation(aws_client:aws_client(), delete_activation_request()) ->
    {ok, delete_activation_result(), tuple()} |
    {error, any()} |
    {error, delete_activation_errors(), tuple()}.
delete_activation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_activation(Client, Input, []).

-spec delete_activation(aws_client:aws_client(), delete_activation_request(), proplists:proplist()) ->
    {ok, delete_activation_result(), tuple()} |
    {error, any()} |
    {error, delete_activation_errors(), tuple()}.
delete_activation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteActivation">>, Input, Options).

%% @doc Disassociates the specified Amazon Web Services Systems Manager
%% document (SSM document) from the specified managed
%% node.
%%
%% If you created the association by using the `Targets' parameter, then
%% you must
%% delete the association by using the association ID.
%%
%% When you disassociate a document from a managed node, it doesn't
%% change the configuration of
%% the node. To change the configuration state of a managed node after you
%% disassociate a document,
%% you must create a new document with the desired configuration and
%% associate it with the
%% node.
-spec delete_association(aws_client:aws_client(), delete_association_request()) ->
    {ok, delete_association_result(), tuple()} |
    {error, any()} |
    {error, delete_association_errors(), tuple()}.
delete_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_association(Client, Input, []).

-spec delete_association(aws_client:aws_client(), delete_association_request(), proplists:proplist()) ->
    {ok, delete_association_result(), tuple()} |
    {error, any()} |
    {error, delete_association_errors(), tuple()}.
delete_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAssociation">>, Input, Options).

%% @doc Deletes the Amazon Web Services Systems Manager document (SSM
%% document) and all managed node associations to the
%% document.
%%
%% Before you delete the document, we recommend that you use
%% `DeleteAssociation' to disassociate all managed nodes that are
%% associated with the document.
-spec delete_document(aws_client:aws_client(), delete_document_request()) ->
    {ok, delete_document_result(), tuple()} |
    {error, any()} |
    {error, delete_document_errors(), tuple()}.
delete_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_document(Client, Input, []).

-spec delete_document(aws_client:aws_client(), delete_document_request(), proplists:proplist()) ->
    {ok, delete_document_result(), tuple()} |
    {error, any()} |
    {error, delete_document_errors(), tuple()}.
delete_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDocument">>, Input, Options).

%% @doc Delete a custom inventory type or the data associated with a custom
%% Inventory type.
%%
%% Deleting
%% a custom inventory type is also referred to as deleting a custom inventory
%% schema.
-spec delete_inventory(aws_client:aws_client(), delete_inventory_request()) ->
    {ok, delete_inventory_result(), tuple()} |
    {error, any()} |
    {error, delete_inventory_errors(), tuple()}.
delete_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inventory(Client, Input, []).

-spec delete_inventory(aws_client:aws_client(), delete_inventory_request(), proplists:proplist()) ->
    {ok, delete_inventory_result(), tuple()} |
    {error, any()} |
    {error, delete_inventory_errors(), tuple()}.
delete_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInventory">>, Input, Options).

%% @doc Deletes a maintenance window.
-spec delete_maintenance_window(aws_client:aws_client(), delete_maintenance_window_request()) ->
    {ok, delete_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, delete_maintenance_window_errors(), tuple()}.
delete_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_maintenance_window(Client, Input, []).

-spec delete_maintenance_window(aws_client:aws_client(), delete_maintenance_window_request(), proplists:proplist()) ->
    {ok, delete_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, delete_maintenance_window_errors(), tuple()}.
delete_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMaintenanceWindow">>, Input, Options).

%% @doc Delete an OpsItem.
%%
%% You must have permission in Identity and Access Management (IAM) to
%% delete an OpsItem.
%%
%% Note the following important information about this operation.
%%
%% Deleting an OpsItem is irreversible. You can't restore a deleted
%% OpsItem.
%%
%% This operation uses an eventual consistency model, which means the
%% system can take a few minutes to complete this operation. If you delete an
%% OpsItem and
%% immediately call, for example, `GetOpsItem', the deleted OpsItem might
%% still
%% appear in the response.
%%
%% This operation is idempotent. The system doesn't throw an exception if
%% you repeatedly
%% call this operation for the same OpsItem. If the first call is successful,
%% all additional calls
%% return the same successful response as the first call.
%%
%% This operation doesn't support cross-account calls. A delegated
%% administrator or
%% management account can't delete OpsItems in other accounts, even if
%% OpsCenter has been set up for
%% cross-account administration. For more information about cross-account
%% administration, see
%% Setting up
%% OpsCenter to centrally manage OpsItems across accounts:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setting-up-cross-account.html
%% in the Systems Manager User Guide.
-spec delete_ops_item(aws_client:aws_client(), delete_ops_item_request()) ->
    {ok, delete_ops_item_response(), tuple()} |
    {error, any()} |
    {error, delete_ops_item_errors(), tuple()}.
delete_ops_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ops_item(Client, Input, []).

-spec delete_ops_item(aws_client:aws_client(), delete_ops_item_request(), proplists:proplist()) ->
    {ok, delete_ops_item_response(), tuple()} |
    {error, any()} |
    {error, delete_ops_item_errors(), tuple()}.
delete_ops_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOpsItem">>, Input, Options).

%% @doc Delete OpsMetadata related to an application.
-spec delete_ops_metadata(aws_client:aws_client(), delete_ops_metadata_request()) ->
    {ok, delete_ops_metadata_result(), tuple()} |
    {error, any()} |
    {error, delete_ops_metadata_errors(), tuple()}.
delete_ops_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ops_metadata(Client, Input, []).

-spec delete_ops_metadata(aws_client:aws_client(), delete_ops_metadata_request(), proplists:proplist()) ->
    {ok, delete_ops_metadata_result(), tuple()} |
    {error, any()} |
    {error, delete_ops_metadata_errors(), tuple()}.
delete_ops_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOpsMetadata">>, Input, Options).

%% @doc Delete a parameter from the system.
%%
%% After deleting a parameter, wait for at least 30 seconds
%% to create a parameter with the same name.
-spec delete_parameter(aws_client:aws_client(), delete_parameter_request()) ->
    {ok, delete_parameter_result(), tuple()} |
    {error, any()} |
    {error, delete_parameter_errors(), tuple()}.
delete_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parameter(Client, Input, []).

-spec delete_parameter(aws_client:aws_client(), delete_parameter_request(), proplists:proplist()) ->
    {ok, delete_parameter_result(), tuple()} |
    {error, any()} |
    {error, delete_parameter_errors(), tuple()}.
delete_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParameter">>, Input, Options).

%% @doc Delete a list of parameters.
%%
%% After deleting a parameter, wait for at least 30 seconds to
%% create a parameter with the same name.
-spec delete_parameters(aws_client:aws_client(), delete_parameters_request()) ->
    {ok, delete_parameters_result(), tuple()} |
    {error, any()} |
    {error, delete_parameters_errors(), tuple()}.
delete_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parameters(Client, Input, []).

-spec delete_parameters(aws_client:aws_client(), delete_parameters_request(), proplists:proplist()) ->
    {ok, delete_parameters_result(), tuple()} |
    {error, any()} |
    {error, delete_parameters_errors(), tuple()}.
delete_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParameters">>, Input, Options).

%% @doc Deletes a patch baseline.
-spec delete_patch_baseline(aws_client:aws_client(), delete_patch_baseline_request()) ->
    {ok, delete_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, delete_patch_baseline_errors(), tuple()}.
delete_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_patch_baseline(Client, Input, []).

-spec delete_patch_baseline(aws_client:aws_client(), delete_patch_baseline_request(), proplists:proplist()) ->
    {ok, delete_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, delete_patch_baseline_errors(), tuple()}.
delete_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePatchBaseline">>, Input, Options).

%% @doc Deletes a resource data sync configuration.
%%
%% After the configuration is deleted, changes to
%% data on managed nodes are no longer synced to or from the target. Deleting
%% a sync configuration
%% doesn't delete data.
-spec delete_resource_data_sync(aws_client:aws_client(), delete_resource_data_sync_request()) ->
    {ok, delete_resource_data_sync_result(), tuple()} |
    {error, any()} |
    {error, delete_resource_data_sync_errors(), tuple()}.
delete_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_data_sync(Client, Input, []).

-spec delete_resource_data_sync(aws_client:aws_client(), delete_resource_data_sync_request(), proplists:proplist()) ->
    {ok, delete_resource_data_sync_result(), tuple()} |
    {error, any()} |
    {error, delete_resource_data_sync_errors(), tuple()}.
delete_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceDataSync">>, Input, Options).

%% @doc Deletes a Systems Manager resource policy.
%%
%% A resource policy helps you to define the IAM entity (for example, an
%% Amazon Web Services account) that can manage your Systems Manager
%% resources. The following
%% resources support Systems Manager resource policies.
%%
%% `OpsItemGroup' - The resource policy for `OpsItemGroup' enables
%% Amazon Web Services accounts to view and interact with OpsCenter
%% operational work items (OpsItems).
%%
%% `Parameter' - The resource policy is used to share a parameter with
%% other
%% accounts using Resource Access Manager (RAM). For more information about
%% cross-account sharing of parameters, see Working with
%% shared parameters:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html
%% in the Amazon Web Services Systems Manager User Guide.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Removes the server or virtual machine from the list of registered
%% servers.
%%
%% If you want to reregister an on-premises server, edge device, or VM, you
%% must use a
%% different Activation Code and Activation ID than used to register the
%% machine previously. The
%% Activation Code and Activation ID must not have already been used on the
%% maximum number of
%% activations specified when they were created. For more information, see
%% Deregistering
%% managed nodes in a hybrid and multicloud environment:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/fleet-manager-deregister-hybrid-nodes.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
-spec deregister_managed_instance(aws_client:aws_client(), deregister_managed_instance_request()) ->
    {ok, deregister_managed_instance_result(), tuple()} |
    {error, any()} |
    {error, deregister_managed_instance_errors(), tuple()}.
deregister_managed_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_managed_instance(Client, Input, []).

-spec deregister_managed_instance(aws_client:aws_client(), deregister_managed_instance_request(), proplists:proplist()) ->
    {ok, deregister_managed_instance_result(), tuple()} |
    {error, any()} |
    {error, deregister_managed_instance_errors(), tuple()}.
deregister_managed_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterManagedInstance">>, Input, Options).

%% @doc Removes a patch group from a patch baseline.
-spec deregister_patch_baseline_for_patch_group(aws_client:aws_client(), deregister_patch_baseline_for_patch_group_request()) ->
    {ok, deregister_patch_baseline_for_patch_group_result(), tuple()} |
    {error, any()} |
    {error, deregister_patch_baseline_for_patch_group_errors(), tuple()}.
deregister_patch_baseline_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_patch_baseline_for_patch_group(Client, Input, []).

-spec deregister_patch_baseline_for_patch_group(aws_client:aws_client(), deregister_patch_baseline_for_patch_group_request(), proplists:proplist()) ->
    {ok, deregister_patch_baseline_for_patch_group_result(), tuple()} |
    {error, any()} |
    {error, deregister_patch_baseline_for_patch_group_errors(), tuple()}.
deregister_patch_baseline_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterPatchBaselineForPatchGroup">>, Input, Options).

%% @doc Removes a target from a maintenance window.
-spec deregister_target_from_maintenance_window(aws_client:aws_client(), deregister_target_from_maintenance_window_request()) ->
    {ok, deregister_target_from_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, deregister_target_from_maintenance_window_errors(), tuple()}.
deregister_target_from_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_target_from_maintenance_window(Client, Input, []).

-spec deregister_target_from_maintenance_window(aws_client:aws_client(), deregister_target_from_maintenance_window_request(), proplists:proplist()) ->
    {ok, deregister_target_from_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, deregister_target_from_maintenance_window_errors(), tuple()}.
deregister_target_from_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTargetFromMaintenanceWindow">>, Input, Options).

%% @doc Removes a task from a maintenance window.
-spec deregister_task_from_maintenance_window(aws_client:aws_client(), deregister_task_from_maintenance_window_request()) ->
    {ok, deregister_task_from_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, deregister_task_from_maintenance_window_errors(), tuple()}.
deregister_task_from_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_task_from_maintenance_window(Client, Input, []).

-spec deregister_task_from_maintenance_window(aws_client:aws_client(), deregister_task_from_maintenance_window_request(), proplists:proplist()) ->
    {ok, deregister_task_from_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, deregister_task_from_maintenance_window_errors(), tuple()}.
deregister_task_from_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTaskFromMaintenanceWindow">>, Input, Options).

%% @doc Describes details about the activation, such as the date and time the
%% activation was
%% created, its expiration date, the Identity and Access Management (IAM)
%% role assigned to
%% the managed nodes in the activation, and the number of nodes registered by
%% using this
%% activation.
-spec describe_activations(aws_client:aws_client(), describe_activations_request()) ->
    {ok, describe_activations_result(), tuple()} |
    {error, any()} |
    {error, describe_activations_errors(), tuple()}.
describe_activations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_activations(Client, Input, []).

-spec describe_activations(aws_client:aws_client(), describe_activations_request(), proplists:proplist()) ->
    {ok, describe_activations_result(), tuple()} |
    {error, any()} |
    {error, describe_activations_errors(), tuple()}.
describe_activations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActivations">>, Input, Options).

%% @doc Describes the association for the specified target or managed node.
%%
%% If you created the
%% association by using the `Targets' parameter, then you must retrieve
%% the association
%% by using the association ID.
-spec describe_association(aws_client:aws_client(), describe_association_request()) ->
    {ok, describe_association_result(), tuple()} |
    {error, any()} |
    {error, describe_association_errors(), tuple()}.
describe_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_association(Client, Input, []).

-spec describe_association(aws_client:aws_client(), describe_association_request(), proplists:proplist()) ->
    {ok, describe_association_result(), tuple()} |
    {error, any()} |
    {error, describe_association_errors(), tuple()}.
describe_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssociation">>, Input, Options).

%% @doc Views information about a specific execution of a specific
%% association.
-spec describe_association_execution_targets(aws_client:aws_client(), describe_association_execution_targets_request()) ->
    {ok, describe_association_execution_targets_result(), tuple()} |
    {error, any()} |
    {error, describe_association_execution_targets_errors(), tuple()}.
describe_association_execution_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_association_execution_targets(Client, Input, []).

-spec describe_association_execution_targets(aws_client:aws_client(), describe_association_execution_targets_request(), proplists:proplist()) ->
    {ok, describe_association_execution_targets_result(), tuple()} |
    {error, any()} |
    {error, describe_association_execution_targets_errors(), tuple()}.
describe_association_execution_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssociationExecutionTargets">>, Input, Options).

%% @doc Views all executions for a specific association ID.
-spec describe_association_executions(aws_client:aws_client(), describe_association_executions_request()) ->
    {ok, describe_association_executions_result(), tuple()} |
    {error, any()} |
    {error, describe_association_executions_errors(), tuple()}.
describe_association_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_association_executions(Client, Input, []).

-spec describe_association_executions(aws_client:aws_client(), describe_association_executions_request(), proplists:proplist()) ->
    {ok, describe_association_executions_result(), tuple()} |
    {error, any()} |
    {error, describe_association_executions_errors(), tuple()}.
describe_association_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssociationExecutions">>, Input, Options).

%% @doc Provides details about all active and terminated Automation
%% executions.
-spec describe_automation_executions(aws_client:aws_client(), describe_automation_executions_request()) ->
    {ok, describe_automation_executions_result(), tuple()} |
    {error, any()} |
    {error, describe_automation_executions_errors(), tuple()}.
describe_automation_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_automation_executions(Client, Input, []).

-spec describe_automation_executions(aws_client:aws_client(), describe_automation_executions_request(), proplists:proplist()) ->
    {ok, describe_automation_executions_result(), tuple()} |
    {error, any()} |
    {error, describe_automation_executions_errors(), tuple()}.
describe_automation_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutomationExecutions">>, Input, Options).

%% @doc Information about all active and terminated step executions in an
%% Automation
%% workflow.
-spec describe_automation_step_executions(aws_client:aws_client(), describe_automation_step_executions_request()) ->
    {ok, describe_automation_step_executions_result(), tuple()} |
    {error, any()} |
    {error, describe_automation_step_executions_errors(), tuple()}.
describe_automation_step_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_automation_step_executions(Client, Input, []).

-spec describe_automation_step_executions(aws_client:aws_client(), describe_automation_step_executions_request(), proplists:proplist()) ->
    {ok, describe_automation_step_executions_result(), tuple()} |
    {error, any()} |
    {error, describe_automation_step_executions_errors(), tuple()}.
describe_automation_step_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutomationStepExecutions">>, Input, Options).

%% @doc Lists all patches eligible to be included in a patch baseline.
%%
%% Currently, `DescribeAvailablePatches' supports only the Amazon Linux
%% 1, Amazon
%% Linux 2, and Windows Server operating systems.
-spec describe_available_patches(aws_client:aws_client(), describe_available_patches_request()) ->
    {ok, describe_available_patches_result(), tuple()} |
    {error, any()} |
    {error, describe_available_patches_errors(), tuple()}.
describe_available_patches(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_available_patches(Client, Input, []).

-spec describe_available_patches(aws_client:aws_client(), describe_available_patches_request(), proplists:proplist()) ->
    {ok, describe_available_patches_result(), tuple()} |
    {error, any()} |
    {error, describe_available_patches_errors(), tuple()}.
describe_available_patches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAvailablePatches">>, Input, Options).

%% @doc Describes the specified Amazon Web Services Systems Manager document
%% (SSM document).
-spec describe_document(aws_client:aws_client(), describe_document_request()) ->
    {ok, describe_document_result(), tuple()} |
    {error, any()} |
    {error, describe_document_errors(), tuple()}.
describe_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document(Client, Input, []).

-spec describe_document(aws_client:aws_client(), describe_document_request(), proplists:proplist()) ->
    {ok, describe_document_result(), tuple()} |
    {error, any()} |
    {error, describe_document_errors(), tuple()}.
describe_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocument">>, Input, Options).

%% @doc Describes the permissions for a Amazon Web Services Systems Manager
%% document (SSM document).
%%
%% If you created the
%% document, you are the owner. If a document is shared, it can either be
%% shared privately (by
%% specifying a user's Amazon Web Services account ID) or publicly (All).
-spec describe_document_permission(aws_client:aws_client(), describe_document_permission_request()) ->
    {ok, describe_document_permission_response(), tuple()} |
    {error, any()} |
    {error, describe_document_permission_errors(), tuple()}.
describe_document_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document_permission(Client, Input, []).

-spec describe_document_permission(aws_client:aws_client(), describe_document_permission_request(), proplists:proplist()) ->
    {ok, describe_document_permission_response(), tuple()} |
    {error, any()} |
    {error, describe_document_permission_errors(), tuple()}.
describe_document_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocumentPermission">>, Input, Options).

%% @doc All associations for the managed nodes.
-spec describe_effective_instance_associations(aws_client:aws_client(), describe_effective_instance_associations_request()) ->
    {ok, describe_effective_instance_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_effective_instance_associations_errors(), tuple()}.
describe_effective_instance_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_effective_instance_associations(Client, Input, []).

-spec describe_effective_instance_associations(aws_client:aws_client(), describe_effective_instance_associations_request(), proplists:proplist()) ->
    {ok, describe_effective_instance_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_effective_instance_associations_errors(), tuple()}.
describe_effective_instance_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEffectiveInstanceAssociations">>, Input, Options).

%% @doc Retrieves the current effective patches (the patch and the approval
%% state) for the specified
%% patch baseline.
%%
%% Applies to patch baselines for Windows only.
-spec describe_effective_patches_for_patch_baseline(aws_client:aws_client(), describe_effective_patches_for_patch_baseline_request()) ->
    {ok, describe_effective_patches_for_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, describe_effective_patches_for_patch_baseline_errors(), tuple()}.
describe_effective_patches_for_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_effective_patches_for_patch_baseline(Client, Input, []).

-spec describe_effective_patches_for_patch_baseline(aws_client:aws_client(), describe_effective_patches_for_patch_baseline_request(), proplists:proplist()) ->
    {ok, describe_effective_patches_for_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, describe_effective_patches_for_patch_baseline_errors(), tuple()}.
describe_effective_patches_for_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEffectivePatchesForPatchBaseline">>, Input, Options).

%% @doc The status of the associations for the managed nodes.
-spec describe_instance_associations_status(aws_client:aws_client(), describe_instance_associations_status_request()) ->
    {ok, describe_instance_associations_status_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_associations_status_errors(), tuple()}.
describe_instance_associations_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_associations_status(Client, Input, []).

-spec describe_instance_associations_status(aws_client:aws_client(), describe_instance_associations_status_request(), proplists:proplist()) ->
    {ok, describe_instance_associations_status_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_associations_status_errors(), tuple()}.
describe_instance_associations_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceAssociationsStatus">>, Input, Options).

%% @doc Provides information about one or more of your managed nodes,
%% including the operating system
%% platform, SSM Agent version, association status, and IP address.
%%
%% This operation does not return
%% information for nodes that are either Stopped or Terminated.
%%
%% If you specify one or more node IDs, the operation returns information for
%% those managed
%% nodes. If you don't specify node IDs, it returns information for all
%% your managed nodes. If you
%% specify a node ID that isn't valid or a node that you don't own,
%% you receive an error.
%%
%% The `IamRole' field returned for this API operation is the role
%% assigned to an
%% Amazon EC2 instance configured with a Systems Manager Quick Setup host
%% management configuration or
%% the role assigned to an on-premises managed node.
-spec describe_instance_information(aws_client:aws_client(), describe_instance_information_request()) ->
    {ok, describe_instance_information_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_information_errors(), tuple()}.
describe_instance_information(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_information(Client, Input, []).

-spec describe_instance_information(aws_client:aws_client(), describe_instance_information_request(), proplists:proplist()) ->
    {ok, describe_instance_information_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_information_errors(), tuple()}.
describe_instance_information(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceInformation">>, Input, Options).

%% @doc Retrieves the high-level patch state of one or more managed nodes.
-spec describe_instance_patch_states(aws_client:aws_client(), describe_instance_patch_states_request()) ->
    {ok, describe_instance_patch_states_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_patch_states_errors(), tuple()}.
describe_instance_patch_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_patch_states(Client, Input, []).

-spec describe_instance_patch_states(aws_client:aws_client(), describe_instance_patch_states_request(), proplists:proplist()) ->
    {ok, describe_instance_patch_states_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_patch_states_errors(), tuple()}.
describe_instance_patch_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancePatchStates">>, Input, Options).

%% @doc Retrieves the high-level patch state for the managed nodes in the
%% specified patch
%% group.
-spec describe_instance_patch_states_for_patch_group(aws_client:aws_client(), describe_instance_patch_states_for_patch_group_request()) ->
    {ok, describe_instance_patch_states_for_patch_group_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_patch_states_for_patch_group_errors(), tuple()}.
describe_instance_patch_states_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_patch_states_for_patch_group(Client, Input, []).

-spec describe_instance_patch_states_for_patch_group(aws_client:aws_client(), describe_instance_patch_states_for_patch_group_request(), proplists:proplist()) ->
    {ok, describe_instance_patch_states_for_patch_group_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_patch_states_for_patch_group_errors(), tuple()}.
describe_instance_patch_states_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancePatchStatesForPatchGroup">>, Input, Options).

%% @doc Retrieves information about the patches on the specified managed node
%% and their state
%% relative to the patch baseline being used for the node.
-spec describe_instance_patches(aws_client:aws_client(), describe_instance_patches_request()) ->
    {ok, describe_instance_patches_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_patches_errors(), tuple()}.
describe_instance_patches(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_patches(Client, Input, []).

-spec describe_instance_patches(aws_client:aws_client(), describe_instance_patches_request(), proplists:proplist()) ->
    {ok, describe_instance_patches_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_patches_errors(), tuple()}.
describe_instance_patches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancePatches">>, Input, Options).

%% @doc An API operation used by the Systems Manager console to display
%% information about Systems Manager managed
%% nodes.
-spec describe_instance_properties(aws_client:aws_client(), describe_instance_properties_request()) ->
    {ok, describe_instance_properties_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_properties_errors(), tuple()}.
describe_instance_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_properties(Client, Input, []).

-spec describe_instance_properties(aws_client:aws_client(), describe_instance_properties_request(), proplists:proplist()) ->
    {ok, describe_instance_properties_result(), tuple()} |
    {error, any()} |
    {error, describe_instance_properties_errors(), tuple()}.
describe_instance_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceProperties">>, Input, Options).

%% @doc Describes a specific delete inventory operation.
-spec describe_inventory_deletions(aws_client:aws_client(), describe_inventory_deletions_request()) ->
    {ok, describe_inventory_deletions_result(), tuple()} |
    {error, any()} |
    {error, describe_inventory_deletions_errors(), tuple()}.
describe_inventory_deletions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inventory_deletions(Client, Input, []).

-spec describe_inventory_deletions(aws_client:aws_client(), describe_inventory_deletions_request(), proplists:proplist()) ->
    {ok, describe_inventory_deletions_result(), tuple()} |
    {error, any()} |
    {error, describe_inventory_deletions_errors(), tuple()}.
describe_inventory_deletions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInventoryDeletions">>, Input, Options).

%% @doc Retrieves the individual task executions (one per target) for a
%% particular task run as part
%% of a maintenance window execution.
-spec describe_maintenance_window_execution_task_invocations(aws_client:aws_client(), describe_maintenance_window_execution_task_invocations_request()) ->
    {ok, describe_maintenance_window_execution_task_invocations_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_execution_task_invocations_errors(), tuple()}.
describe_maintenance_window_execution_task_invocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_execution_task_invocations(Client, Input, []).

-spec describe_maintenance_window_execution_task_invocations(aws_client:aws_client(), describe_maintenance_window_execution_task_invocations_request(), proplists:proplist()) ->
    {ok, describe_maintenance_window_execution_task_invocations_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_execution_task_invocations_errors(), tuple()}.
describe_maintenance_window_execution_task_invocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowExecutionTaskInvocations">>, Input, Options).

%% @doc For a given maintenance window execution, lists the tasks that were
%% run.
-spec describe_maintenance_window_execution_tasks(aws_client:aws_client(), describe_maintenance_window_execution_tasks_request()) ->
    {ok, describe_maintenance_window_execution_tasks_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_execution_tasks_errors(), tuple()}.
describe_maintenance_window_execution_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_execution_tasks(Client, Input, []).

-spec describe_maintenance_window_execution_tasks(aws_client:aws_client(), describe_maintenance_window_execution_tasks_request(), proplists:proplist()) ->
    {ok, describe_maintenance_window_execution_tasks_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_execution_tasks_errors(), tuple()}.
describe_maintenance_window_execution_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowExecutionTasks">>, Input, Options).

%% @doc Lists the executions of a maintenance window.
%%
%% This includes information about when the
%% maintenance window was scheduled to be active, and information about tasks
%% registered and run
%% with the maintenance window.
-spec describe_maintenance_window_executions(aws_client:aws_client(), describe_maintenance_window_executions_request()) ->
    {ok, describe_maintenance_window_executions_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_executions_errors(), tuple()}.
describe_maintenance_window_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_executions(Client, Input, []).

-spec describe_maintenance_window_executions(aws_client:aws_client(), describe_maintenance_window_executions_request(), proplists:proplist()) ->
    {ok, describe_maintenance_window_executions_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_executions_errors(), tuple()}.
describe_maintenance_window_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowExecutions">>, Input, Options).

%% @doc Retrieves information about upcoming executions of a maintenance
%% window.
-spec describe_maintenance_window_schedule(aws_client:aws_client(), describe_maintenance_window_schedule_request()) ->
    {ok, describe_maintenance_window_schedule_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_schedule_errors(), tuple()}.
describe_maintenance_window_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_schedule(Client, Input, []).

-spec describe_maintenance_window_schedule(aws_client:aws_client(), describe_maintenance_window_schedule_request(), proplists:proplist()) ->
    {ok, describe_maintenance_window_schedule_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_schedule_errors(), tuple()}.
describe_maintenance_window_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowSchedule">>, Input, Options).

%% @doc Lists the targets registered with the maintenance window.
-spec describe_maintenance_window_targets(aws_client:aws_client(), describe_maintenance_window_targets_request()) ->
    {ok, describe_maintenance_window_targets_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_targets_errors(), tuple()}.
describe_maintenance_window_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_targets(Client, Input, []).

-spec describe_maintenance_window_targets(aws_client:aws_client(), describe_maintenance_window_targets_request(), proplists:proplist()) ->
    {ok, describe_maintenance_window_targets_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_targets_errors(), tuple()}.
describe_maintenance_window_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowTargets">>, Input, Options).

%% @doc Lists the tasks in a maintenance window.
%%
%% For maintenance window tasks without a specified target, you can't
%% supply values for
%% `--max-errors' and `--max-concurrency'. Instead, the system
%% inserts a
%% placeholder value of `1', which may be reported in the response to
%% this command.
%% These values don't affect the running of your task and can be ignored.
-spec describe_maintenance_window_tasks(aws_client:aws_client(), describe_maintenance_window_tasks_request()) ->
    {ok, describe_maintenance_window_tasks_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_tasks_errors(), tuple()}.
describe_maintenance_window_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_tasks(Client, Input, []).

-spec describe_maintenance_window_tasks(aws_client:aws_client(), describe_maintenance_window_tasks_request(), proplists:proplist()) ->
    {ok, describe_maintenance_window_tasks_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_window_tasks_errors(), tuple()}.
describe_maintenance_window_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowTasks">>, Input, Options).

%% @doc Retrieves the maintenance windows in an Amazon Web Services account.
-spec describe_maintenance_windows(aws_client:aws_client(), describe_maintenance_windows_request()) ->
    {ok, describe_maintenance_windows_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_windows_errors(), tuple()}.
describe_maintenance_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_windows(Client, Input, []).

-spec describe_maintenance_windows(aws_client:aws_client(), describe_maintenance_windows_request(), proplists:proplist()) ->
    {ok, describe_maintenance_windows_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_windows_errors(), tuple()}.
describe_maintenance_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindows">>, Input, Options).

%% @doc Retrieves information about the maintenance window targets or tasks
%% that a managed node is
%% associated with.
-spec describe_maintenance_windows_for_target(aws_client:aws_client(), describe_maintenance_windows_for_target_request()) ->
    {ok, describe_maintenance_windows_for_target_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_windows_for_target_errors(), tuple()}.
describe_maintenance_windows_for_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_windows_for_target(Client, Input, []).

-spec describe_maintenance_windows_for_target(aws_client:aws_client(), describe_maintenance_windows_for_target_request(), proplists:proplist()) ->
    {ok, describe_maintenance_windows_for_target_result(), tuple()} |
    {error, any()} |
    {error, describe_maintenance_windows_for_target_errors(), tuple()}.
describe_maintenance_windows_for_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowsForTarget">>, Input, Options).

%% @doc Query a set of OpsItems.
%%
%% You must have permission in Identity and Access Management (IAM) to query
%% a list of OpsItems. For more information, see Set up OpsCenter:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
%%
%% Operations engineers and IT professionals use Amazon Web Services Systems
%% Manager OpsCenter to view, investigate, and
%% remediate operational issues impacting the performance and health of their
%% Amazon Web Services resources. For
%% more information, see Amazon Web Services Systems Manager OpsCenter:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
-spec describe_ops_items(aws_client:aws_client(), describe_ops_items_request()) ->
    {ok, describe_ops_items_response(), tuple()} |
    {error, any()} |
    {error, describe_ops_items_errors(), tuple()}.
describe_ops_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ops_items(Client, Input, []).

-spec describe_ops_items(aws_client:aws_client(), describe_ops_items_request(), proplists:proplist()) ->
    {ok, describe_ops_items_response(), tuple()} |
    {error, any()} |
    {error, describe_ops_items_errors(), tuple()}.
describe_ops_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOpsItems">>, Input, Options).

%% @doc Lists the parameters in your Amazon Web Services account or the
%% parameters shared with you when you enable
%% the Shared:
%% https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeParameters.html#systemsmanager-DescribeParameters-request-Shared
%% option.
%%
%% Request results are returned on a best-effort basis. If you specify
%% `MaxResults'
%% in the request, the response includes information up to the limit
%% specified. The number of items
%% returned, however, can be between zero and the value of `MaxResults'.
%% If the service
%% reaches an internal limit while processing the results, it stops the
%% operation and returns the
%% matching values up to that point and a `NextToken'. You can specify
%% the
%% `NextToken' in a subsequent call to get the next set of results.
%%
%% If you change the KMS key alias for the KMS key used to encrypt a
%% parameter,
%% then you must also update the key alias the parameter uses to reference
%% KMS. Otherwise,
%% `DescribeParameters' retrieves whatever the original key alias was
%% referencing.
-spec describe_parameters(aws_client:aws_client(), describe_parameters_request()) ->
    {ok, describe_parameters_result(), tuple()} |
    {error, any()} |
    {error, describe_parameters_errors(), tuple()}.
describe_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_parameters(Client, Input, []).

-spec describe_parameters(aws_client:aws_client(), describe_parameters_request(), proplists:proplist()) ->
    {ok, describe_parameters_result(), tuple()} |
    {error, any()} |
    {error, describe_parameters_errors(), tuple()}.
describe_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeParameters">>, Input, Options).

%% @doc Lists the patch baselines in your Amazon Web Services account.
-spec describe_patch_baselines(aws_client:aws_client(), describe_patch_baselines_request()) ->
    {ok, describe_patch_baselines_result(), tuple()} |
    {error, any()} |
    {error, describe_patch_baselines_errors(), tuple()}.
describe_patch_baselines(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_baselines(Client, Input, []).

-spec describe_patch_baselines(aws_client:aws_client(), describe_patch_baselines_request(), proplists:proplist()) ->
    {ok, describe_patch_baselines_result(), tuple()} |
    {error, any()} |
    {error, describe_patch_baselines_errors(), tuple()}.
describe_patch_baselines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchBaselines">>, Input, Options).

%% @doc Returns high-level aggregated patch compliance state information for
%% a patch group.
-spec describe_patch_group_state(aws_client:aws_client(), describe_patch_group_state_request()) ->
    {ok, describe_patch_group_state_result(), tuple()} |
    {error, any()} |
    {error, describe_patch_group_state_errors(), tuple()}.
describe_patch_group_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_group_state(Client, Input, []).

-spec describe_patch_group_state(aws_client:aws_client(), describe_patch_group_state_request(), proplists:proplist()) ->
    {ok, describe_patch_group_state_result(), tuple()} |
    {error, any()} |
    {error, describe_patch_group_state_errors(), tuple()}.
describe_patch_group_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchGroupState">>, Input, Options).

%% @doc Lists all patch groups that have been registered with patch
%% baselines.
-spec describe_patch_groups(aws_client:aws_client(), describe_patch_groups_request()) ->
    {ok, describe_patch_groups_result(), tuple()} |
    {error, any()} |
    {error, describe_patch_groups_errors(), tuple()}.
describe_patch_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_groups(Client, Input, []).

-spec describe_patch_groups(aws_client:aws_client(), describe_patch_groups_request(), proplists:proplist()) ->
    {ok, describe_patch_groups_result(), tuple()} |
    {error, any()} |
    {error, describe_patch_groups_errors(), tuple()}.
describe_patch_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchGroups">>, Input, Options).

%% @doc Lists the properties of available patches organized by product,
%% product family,
%% classification, severity, and other properties of available patches.
%%
%% You can use the reported
%% properties in the filters you specify in requests for operations such as
%% `CreatePatchBaseline', `UpdatePatchBaseline',
%% `DescribeAvailablePatches', and `DescribePatchBaselines'.
%%
%% The following section lists the properties that can be used in filters for
%% each major
%% operating system type:
%%
%% AMAZON_LINUX
%%
%% Valid properties: `PRODUCT' | `CLASSIFICATION' |
%% `SEVERITY'
%%
%% AMAZON_LINUX_2
%%
%% Valid properties: `PRODUCT' | `CLASSIFICATION' |
%% `SEVERITY'
%%
%% AMAZON_LINUX_2023
%%
%% Valid properties: `PRODUCT' | `CLASSIFICATION' |
%% `SEVERITY'
%%
%% CENTOS
%%
%% Valid properties: `PRODUCT' | `CLASSIFICATION' |
%% `SEVERITY'
%%
%% DEBIAN
%%
%% Valid properties: `PRODUCT' | `PRIORITY'
%%
%% MACOS
%%
%% Valid properties: `PRODUCT' | `CLASSIFICATION'
%%
%% ORACLE_LINUX
%%
%% Valid properties: `PRODUCT' | `CLASSIFICATION' |
%% `SEVERITY'
%%
%% REDHAT_ENTERPRISE_LINUX
%%
%% Valid properties: `PRODUCT' | `CLASSIFICATION' |
%% `SEVERITY'
%%
%% SUSE
%%
%% Valid properties: `PRODUCT' | `CLASSIFICATION' |
%% `SEVERITY'
%%
%% UBUNTU
%%
%% Valid properties: `PRODUCT' | `PRIORITY'
%%
%% WINDOWS
%%
%% Valid properties: `PRODUCT' | `PRODUCT_FAMILY' |
%% `CLASSIFICATION' | `MSRC_SEVERITY'
-spec describe_patch_properties(aws_client:aws_client(), describe_patch_properties_request()) ->
    {ok, describe_patch_properties_result(), tuple()} |
    {error, any()} |
    {error, describe_patch_properties_errors(), tuple()}.
describe_patch_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_properties(Client, Input, []).

-spec describe_patch_properties(aws_client:aws_client(), describe_patch_properties_request(), proplists:proplist()) ->
    {ok, describe_patch_properties_result(), tuple()} |
    {error, any()} |
    {error, describe_patch_properties_errors(), tuple()}.
describe_patch_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchProperties">>, Input, Options).

%% @doc Retrieves a list of all active sessions (both connected and
%% disconnected) or terminated
%% sessions from the past 30 days.
-spec describe_sessions(aws_client:aws_client(), describe_sessions_request()) ->
    {ok, describe_sessions_response(), tuple()} |
    {error, any()} |
    {error, describe_sessions_errors(), tuple()}.
describe_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_sessions(Client, Input, []).

-spec describe_sessions(aws_client:aws_client(), describe_sessions_request(), proplists:proplist()) ->
    {ok, describe_sessions_response(), tuple()} |
    {error, any()} |
    {error, describe_sessions_errors(), tuple()}.
describe_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSessions">>, Input, Options).

%% @doc Deletes the association between an OpsItem and a related item.
%%
%% For example, this API
%% operation can delete an Incident Manager incident from an OpsItem.
%% Incident Manager is a tool in
%% Amazon Web Services Systems Manager.
-spec disassociate_ops_item_related_item(aws_client:aws_client(), disassociate_ops_item_related_item_request()) ->
    {ok, disassociate_ops_item_related_item_response(), tuple()} |
    {error, any()} |
    {error, disassociate_ops_item_related_item_errors(), tuple()}.
disassociate_ops_item_related_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_ops_item_related_item(Client, Input, []).

-spec disassociate_ops_item_related_item(aws_client:aws_client(), disassociate_ops_item_related_item_request(), proplists:proplist()) ->
    {ok, disassociate_ops_item_related_item_response(), tuple()} |
    {error, any()} |
    {error, disassociate_ops_item_related_item_errors(), tuple()}.
disassociate_ops_item_related_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateOpsItemRelatedItem">>, Input, Options).

%% @doc Get detailed information about a particular Automation execution.
-spec get_automation_execution(aws_client:aws_client(), get_automation_execution_request()) ->
    {ok, get_automation_execution_result(), tuple()} |
    {error, any()} |
    {error, get_automation_execution_errors(), tuple()}.
get_automation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_automation_execution(Client, Input, []).

-spec get_automation_execution(aws_client:aws_client(), get_automation_execution_request(), proplists:proplist()) ->
    {ok, get_automation_execution_result(), tuple()} |
    {error, any()} |
    {error, get_automation_execution_errors(), tuple()}.
get_automation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutomationExecution">>, Input, Options).

%% @doc Gets the state of a Amazon Web Services Systems Manager change
%% calendar at the current time or a specified time.
%%
%% If
%% you specify a time, `GetCalendarState' returns the state of the
%% calendar at that
%% specific time, and returns the next time that the change calendar state
%% will transition. If you
%% don't specify a time, `GetCalendarState' uses the current time.
%% Change Calendar
%% entries have two possible states: `OPEN' or `CLOSED'.
%%
%% If you specify more than one calendar in a request, the command returns
%% the status of
%% `OPEN' only if all calendars in the request are open. If one or more
%% calendars in the
%% request are closed, the status returned is `CLOSED'.
%%
%% For more information about Change Calendar, a tool in Amazon Web Services
%% Systems Manager, see Amazon Web Services Systems Manager Change Calendar:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar.html
%% in the Amazon Web Services Systems Manager User Guide.
-spec get_calendar_state(aws_client:aws_client(), get_calendar_state_request()) ->
    {ok, get_calendar_state_response(), tuple()} |
    {error, any()} |
    {error, get_calendar_state_errors(), tuple()}.
get_calendar_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_calendar_state(Client, Input, []).

-spec get_calendar_state(aws_client:aws_client(), get_calendar_state_request(), proplists:proplist()) ->
    {ok, get_calendar_state_response(), tuple()} |
    {error, any()} |
    {error, get_calendar_state_errors(), tuple()}.
get_calendar_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCalendarState">>, Input, Options).

%% @doc Returns detailed information about command execution for an
%% invocation or plugin.
%%
%% The Run
%% Command API follows an eventual consistency model, due to the distributed
%% nature of the system
%% supporting the API. This means that the result of an API command you run
%% that affects your
%% resources might not be immediately visible to all subsequent commands you
%% run. You should keep
%% this in mind when you carry out an API command that immediately follows a
%% previous API
%% command.
%%
%% `GetCommandInvocation' only gives the execution status of a plugin in
%% a document.
%% To get the command execution status on a specific managed node, use
%% `ListCommandInvocations'. To get the command execution status across
%% managed nodes,
%% use `ListCommands'.
-spec get_command_invocation(aws_client:aws_client(), get_command_invocation_request()) ->
    {ok, get_command_invocation_result(), tuple()} |
    {error, any()} |
    {error, get_command_invocation_errors(), tuple()}.
get_command_invocation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_command_invocation(Client, Input, []).

-spec get_command_invocation(aws_client:aws_client(), get_command_invocation_request(), proplists:proplist()) ->
    {ok, get_command_invocation_result(), tuple()} |
    {error, any()} |
    {error, get_command_invocation_errors(), tuple()}.
get_command_invocation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommandInvocation">>, Input, Options).

%% @doc Retrieves the Session Manager connection status for a managed node to
%% determine whether it is running
%% and ready to receive Session Manager connections.
-spec get_connection_status(aws_client:aws_client(), get_connection_status_request()) ->
    {ok, get_connection_status_response(), tuple()} |
    {error, any()} |
    {error, get_connection_status_errors(), tuple()}.
get_connection_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connection_status(Client, Input, []).

-spec get_connection_status(aws_client:aws_client(), get_connection_status_request(), proplists:proplist()) ->
    {ok, get_connection_status_response(), tuple()} |
    {error, any()} |
    {error, get_connection_status_errors(), tuple()}.
get_connection_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnectionStatus">>, Input, Options).

%% @doc Retrieves the default patch baseline.
%%
%% Amazon Web Services Systems Manager supports creating multiple default
%% patch
%% baselines. For example, you can create a default patch baseline for each
%% operating system.
%%
%% If you don't specify an operating system value, the default patch
%% baseline for Windows is
%% returned.
-spec get_default_patch_baseline(aws_client:aws_client(), get_default_patch_baseline_request()) ->
    {ok, get_default_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, get_default_patch_baseline_errors(), tuple()}.
get_default_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_default_patch_baseline(Client, Input, []).

-spec get_default_patch_baseline(aws_client:aws_client(), get_default_patch_baseline_request(), proplists:proplist()) ->
    {ok, get_default_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, get_default_patch_baseline_errors(), tuple()}.
get_default_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDefaultPatchBaseline">>, Input, Options).

%% @doc Retrieves the current snapshot for the patch baseline the managed
%% node uses.
%%
%% This API is
%% primarily used by the `AWS-RunPatchBaseline' Systems Manager document
%% (SSM document).
%%
%% If you run the command locally, such as with the Command Line Interface
%% (CLI), the system attempts to use your local Amazon Web Services
%% credentials and the operation fails. To avoid
%% this, you can run the command in the Amazon Web Services Systems Manager
%% console. Use Run Command, a tool in Amazon Web Services Systems Manager,
%% with an SSM document that enables you to target a managed node with a
%% script or command. For
%% example, run the command using the `AWS-RunShellScript' document or
%% the
%% `AWS-RunPowerShellScript' document.
-spec get_deployable_patch_snapshot_for_instance(aws_client:aws_client(), get_deployable_patch_snapshot_for_instance_request()) ->
    {ok, get_deployable_patch_snapshot_for_instance_result(), tuple()} |
    {error, any()} |
    {error, get_deployable_patch_snapshot_for_instance_errors(), tuple()}.
get_deployable_patch_snapshot_for_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployable_patch_snapshot_for_instance(Client, Input, []).

-spec get_deployable_patch_snapshot_for_instance(aws_client:aws_client(), get_deployable_patch_snapshot_for_instance_request(), proplists:proplist()) ->
    {ok, get_deployable_patch_snapshot_for_instance_result(), tuple()} |
    {error, any()} |
    {error, get_deployable_patch_snapshot_for_instance_errors(), tuple()}.
get_deployable_patch_snapshot_for_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeployablePatchSnapshotForInstance">>, Input, Options).

%% @doc Gets the contents of the specified Amazon Web Services Systems
%% Manager document (SSM document).
-spec get_document(aws_client:aws_client(), get_document_request()) ->
    {ok, get_document_result(), tuple()} |
    {error, any()} |
    {error, get_document_errors(), tuple()}.
get_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document(Client, Input, []).

-spec get_document(aws_client:aws_client(), get_document_request(), proplists:proplist()) ->
    {ok, get_document_result(), tuple()} |
    {error, any()} |
    {error, get_document_errors(), tuple()}.
get_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocument">>, Input, Options).

%% @doc Initiates the process of retrieving an existing preview that shows
%% the effects that running
%% a specified Automation runbook would have on the targeted resources.
-spec get_execution_preview(aws_client:aws_client(), get_execution_preview_request()) ->
    {ok, get_execution_preview_response(), tuple()} |
    {error, any()} |
    {error, get_execution_preview_errors(), tuple()}.
get_execution_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_execution_preview(Client, Input, []).

-spec get_execution_preview(aws_client:aws_client(), get_execution_preview_request(), proplists:proplist()) ->
    {ok, get_execution_preview_response(), tuple()} |
    {error, any()} |
    {error, get_execution_preview_errors(), tuple()}.
get_execution_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExecutionPreview">>, Input, Options).

%% @doc Query inventory information.
%%
%% This includes managed node status, such as `Stopped'
%% or `Terminated'.
-spec get_inventory(aws_client:aws_client(), get_inventory_request()) ->
    {ok, get_inventory_result(), tuple()} |
    {error, any()} |
    {error, get_inventory_errors(), tuple()}.
get_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_inventory(Client, Input, []).

-spec get_inventory(aws_client:aws_client(), get_inventory_request(), proplists:proplist()) ->
    {ok, get_inventory_result(), tuple()} |
    {error, any()} |
    {error, get_inventory_errors(), tuple()}.
get_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInventory">>, Input, Options).

%% @doc Return a list of inventory type names for the account, or return a
%% list of attribute names
%% for a specific Inventory item type.
-spec get_inventory_schema(aws_client:aws_client(), get_inventory_schema_request()) ->
    {ok, get_inventory_schema_result(), tuple()} |
    {error, any()} |
    {error, get_inventory_schema_errors(), tuple()}.
get_inventory_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_inventory_schema(Client, Input, []).

-spec get_inventory_schema(aws_client:aws_client(), get_inventory_schema_request(), proplists:proplist()) ->
    {ok, get_inventory_schema_result(), tuple()} |
    {error, any()} |
    {error, get_inventory_schema_errors(), tuple()}.
get_inventory_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInventorySchema">>, Input, Options).

%% @doc Retrieves a maintenance window.
-spec get_maintenance_window(aws_client:aws_client(), get_maintenance_window_request()) ->
    {ok, get_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, get_maintenance_window_errors(), tuple()}.
get_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window(Client, Input, []).

-spec get_maintenance_window(aws_client:aws_client(), get_maintenance_window_request(), proplists:proplist()) ->
    {ok, get_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, get_maintenance_window_errors(), tuple()}.
get_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindow">>, Input, Options).

%% @doc Retrieves details about a specific a maintenance window execution.
-spec get_maintenance_window_execution(aws_client:aws_client(), get_maintenance_window_execution_request()) ->
    {ok, get_maintenance_window_execution_result(), tuple()} |
    {error, any()} |
    {error, get_maintenance_window_execution_errors(), tuple()}.
get_maintenance_window_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_execution(Client, Input, []).

-spec get_maintenance_window_execution(aws_client:aws_client(), get_maintenance_window_execution_request(), proplists:proplist()) ->
    {ok, get_maintenance_window_execution_result(), tuple()} |
    {error, any()} |
    {error, get_maintenance_window_execution_errors(), tuple()}.
get_maintenance_window_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowExecution">>, Input, Options).

%% @doc Retrieves the details about a specific task run as part of a
%% maintenance window
%% execution.
-spec get_maintenance_window_execution_task(aws_client:aws_client(), get_maintenance_window_execution_task_request()) ->
    {ok, get_maintenance_window_execution_task_result(), tuple()} |
    {error, any()} |
    {error, get_maintenance_window_execution_task_errors(), tuple()}.
get_maintenance_window_execution_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_execution_task(Client, Input, []).

-spec get_maintenance_window_execution_task(aws_client:aws_client(), get_maintenance_window_execution_task_request(), proplists:proplist()) ->
    {ok, get_maintenance_window_execution_task_result(), tuple()} |
    {error, any()} |
    {error, get_maintenance_window_execution_task_errors(), tuple()}.
get_maintenance_window_execution_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowExecutionTask">>, Input, Options).

%% @doc Retrieves information about a specific task running on a specific
%% target.
-spec get_maintenance_window_execution_task_invocation(aws_client:aws_client(), get_maintenance_window_execution_task_invocation_request()) ->
    {ok, get_maintenance_window_execution_task_invocation_result(), tuple()} |
    {error, any()} |
    {error, get_maintenance_window_execution_task_invocation_errors(), tuple()}.
get_maintenance_window_execution_task_invocation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_execution_task_invocation(Client, Input, []).

-spec get_maintenance_window_execution_task_invocation(aws_client:aws_client(), get_maintenance_window_execution_task_invocation_request(), proplists:proplist()) ->
    {ok, get_maintenance_window_execution_task_invocation_result(), tuple()} |
    {error, any()} |
    {error, get_maintenance_window_execution_task_invocation_errors(), tuple()}.
get_maintenance_window_execution_task_invocation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowExecutionTaskInvocation">>, Input, Options).

%% @doc Retrieves the details of a maintenance window task.
%%
%% For maintenance window tasks without a specified target, you can't
%% supply values for
%% `--max-errors' and `--max-concurrency'. Instead, the system
%% inserts a
%% placeholder value of `1', which may be reported in the response to
%% this command.
%% These values don't affect the running of your task and can be ignored.
%%
%% To retrieve a list of tasks in a maintenance window, instead use the
%% `DescribeMaintenanceWindowTasks' command.
-spec get_maintenance_window_task(aws_client:aws_client(), get_maintenance_window_task_request()) ->
    {ok, get_maintenance_window_task_result(), tuple()} |
    {error, any()} |
    {error, get_maintenance_window_task_errors(), tuple()}.
get_maintenance_window_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_task(Client, Input, []).

-spec get_maintenance_window_task(aws_client:aws_client(), get_maintenance_window_task_request(), proplists:proplist()) ->
    {ok, get_maintenance_window_task_result(), tuple()} |
    {error, any()} |
    {error, get_maintenance_window_task_errors(), tuple()}.
get_maintenance_window_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowTask">>, Input, Options).

%% @doc Get information about an OpsItem by using the ID.
%%
%% You must have permission in Identity and Access Management (IAM) to view
%% information about an OpsItem. For more information,
%% see Set
%% up OpsCenter:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html
%% in the Amazon Web Services Systems Manager User Guide.
%%
%% Operations engineers and IT professionals use Amazon Web Services Systems
%% Manager OpsCenter to view, investigate, and
%% remediate operational issues impacting the performance and health of their
%% Amazon Web Services resources. For
%% more information, see Amazon Web Services Systems Manager OpsCenter:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
-spec get_ops_item(aws_client:aws_client(), get_ops_item_request()) ->
    {ok, get_ops_item_response(), tuple()} |
    {error, any()} |
    {error, get_ops_item_errors(), tuple()}.
get_ops_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ops_item(Client, Input, []).

-spec get_ops_item(aws_client:aws_client(), get_ops_item_request(), proplists:proplist()) ->
    {ok, get_ops_item_response(), tuple()} |
    {error, any()} |
    {error, get_ops_item_errors(), tuple()}.
get_ops_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpsItem">>, Input, Options).

%% @doc View operational metadata related to an application in Application
%% Manager.
-spec get_ops_metadata(aws_client:aws_client(), get_ops_metadata_request()) ->
    {ok, get_ops_metadata_result(), tuple()} |
    {error, any()} |
    {error, get_ops_metadata_errors(), tuple()}.
get_ops_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ops_metadata(Client, Input, []).

-spec get_ops_metadata(aws_client:aws_client(), get_ops_metadata_request(), proplists:proplist()) ->
    {ok, get_ops_metadata_result(), tuple()} |
    {error, any()} |
    {error, get_ops_metadata_errors(), tuple()}.
get_ops_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpsMetadata">>, Input, Options).

%% @doc View a summary of operations metadata (OpsData) based on specified
%% filters and aggregators.
%%
%% OpsData can include information about Amazon Web Services Systems Manager
%% OpsCenter operational workitems (OpsItems) as
%% well as information about any Amazon Web Services resource or service
%% configured to report OpsData to Amazon Web Services Systems Manager
%% Explorer.
-spec get_ops_summary(aws_client:aws_client(), get_ops_summary_request()) ->
    {ok, get_ops_summary_result(), tuple()} |
    {error, any()} |
    {error, get_ops_summary_errors(), tuple()}.
get_ops_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ops_summary(Client, Input, []).

-spec get_ops_summary(aws_client:aws_client(), get_ops_summary_request(), proplists:proplist()) ->
    {ok, get_ops_summary_result(), tuple()} |
    {error, any()} |
    {error, get_ops_summary_errors(), tuple()}.
get_ops_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpsSummary">>, Input, Options).

%% @doc Get information about a single parameter by specifying the parameter
%% name.
%%
%% To get information about more than one parameter at a time, use the
%% `GetParameters' operation.
-spec get_parameter(aws_client:aws_client(), get_parameter_request()) ->
    {ok, get_parameter_result(), tuple()} |
    {error, any()} |
    {error, get_parameter_errors(), tuple()}.
get_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameter(Client, Input, []).

-spec get_parameter(aws_client:aws_client(), get_parameter_request(), proplists:proplist()) ->
    {ok, get_parameter_result(), tuple()} |
    {error, any()} |
    {error, get_parameter_errors(), tuple()}.
get_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParameter">>, Input, Options).

%% @doc Retrieves the history of all changes to a parameter.
%%
%% If you change the KMS key alias for the KMS key used to encrypt a
%% parameter,
%% then you must also update the key alias the parameter uses to reference
%% KMS. Otherwise,
%% `GetParameterHistory' retrieves whatever the original key alias was
%% referencing.
-spec get_parameter_history(aws_client:aws_client(), get_parameter_history_request()) ->
    {ok, get_parameter_history_result(), tuple()} |
    {error, any()} |
    {error, get_parameter_history_errors(), tuple()}.
get_parameter_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameter_history(Client, Input, []).

-spec get_parameter_history(aws_client:aws_client(), get_parameter_history_request(), proplists:proplist()) ->
    {ok, get_parameter_history_result(), tuple()} |
    {error, any()} |
    {error, get_parameter_history_errors(), tuple()}.
get_parameter_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParameterHistory">>, Input, Options).

%% @doc Get information about one or more parameters by specifying multiple
%% parameter names.
%%
%% To get information about a single parameter, you can use the
%% `GetParameter'
%% operation instead.
-spec get_parameters(aws_client:aws_client(), get_parameters_request()) ->
    {ok, get_parameters_result(), tuple()} |
    {error, any()} |
    {error, get_parameters_errors(), tuple()}.
get_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters(Client, Input, []).

-spec get_parameters(aws_client:aws_client(), get_parameters_request(), proplists:proplist()) ->
    {ok, get_parameters_result(), tuple()} |
    {error, any()} |
    {error, get_parameters_errors(), tuple()}.
get_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParameters">>, Input, Options).

%% @doc Retrieve information about one or more parameters under a specified
%% level in a hierarchy.
%%
%% Request results are returned on a best-effort basis. If you specify
%% `MaxResults'
%% in the request, the response includes information up to the limit
%% specified. The number of items
%% returned, however, can be between zero and the value of `MaxResults'.
%% If the service
%% reaches an internal limit while processing the results, it stops the
%% operation and returns the
%% matching values up to that point and a `NextToken'. You can specify
%% the
%% `NextToken' in a subsequent call to get the next set of results.
-spec get_parameters_by_path(aws_client:aws_client(), get_parameters_by_path_request()) ->
    {ok, get_parameters_by_path_result(), tuple()} |
    {error, any()} |
    {error, get_parameters_by_path_errors(), tuple()}.
get_parameters_by_path(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters_by_path(Client, Input, []).

-spec get_parameters_by_path(aws_client:aws_client(), get_parameters_by_path_request(), proplists:proplist()) ->
    {ok, get_parameters_by_path_result(), tuple()} |
    {error, any()} |
    {error, get_parameters_by_path_errors(), tuple()}.
get_parameters_by_path(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParametersByPath">>, Input, Options).

%% @doc Retrieves information about a patch baseline.
-spec get_patch_baseline(aws_client:aws_client(), get_patch_baseline_request()) ->
    {ok, get_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, get_patch_baseline_errors(), tuple()}.
get_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_patch_baseline(Client, Input, []).

-spec get_patch_baseline(aws_client:aws_client(), get_patch_baseline_request(), proplists:proplist()) ->
    {ok, get_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, get_patch_baseline_errors(), tuple()}.
get_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPatchBaseline">>, Input, Options).

%% @doc Retrieves the patch baseline that should be used for the specified
%% patch group.
-spec get_patch_baseline_for_patch_group(aws_client:aws_client(), get_patch_baseline_for_patch_group_request()) ->
    {ok, get_patch_baseline_for_patch_group_result(), tuple()} |
    {error, any()} |
    {error, get_patch_baseline_for_patch_group_errors(), tuple()}.
get_patch_baseline_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_patch_baseline_for_patch_group(Client, Input, []).

-spec get_patch_baseline_for_patch_group(aws_client:aws_client(), get_patch_baseline_for_patch_group_request(), proplists:proplist()) ->
    {ok, get_patch_baseline_for_patch_group_result(), tuple()} |
    {error, any()} |
    {error, get_patch_baseline_for_patch_group_errors(), tuple()}.
get_patch_baseline_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPatchBaselineForPatchGroup">>, Input, Options).

%% @doc Returns an array of the `Policy' object.
-spec get_resource_policies(aws_client:aws_client(), get_resource_policies_request()) ->
    {ok, get_resource_policies_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policies_errors(), tuple()}.
get_resource_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policies(Client, Input, []).

-spec get_resource_policies(aws_client:aws_client(), get_resource_policies_request(), proplists:proplist()) ->
    {ok, get_resource_policies_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policies_errors(), tuple()}.
get_resource_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicies">>, Input, Options).

%% @doc
%% `ServiceSetting' is an account-level setting for an Amazon Web
%% Services service.
%%
%% This setting
%% defines how a user interacts with or uses a service or a feature of a
%% service. For example, if an
%% Amazon Web Services service charges money to the account based on feature
%% or service usage, then the Amazon Web Services
%% service team might create a default setting of `false'. This means the
%% user can't use
%% this feature unless they change the setting to `true' and
%% intentionally opt in for a
%% paid feature.
%%
%% Services map a `SettingId' object to a setting value. Amazon Web
%% Services services teams define
%% the default value for a `SettingId'. You can't create a new
%% `SettingId',
%% but you can overwrite the default value if you have the
%% `ssm:UpdateServiceSetting'
%% permission for the setting. Use the `UpdateServiceSetting' API
%% operation to
%% change the default setting. Or use the `ResetServiceSetting' to change
%% the value
%% back to the original value defined by the Amazon Web Services service
%% team.
%%
%% Query the current service setting for the Amazon Web Services account.
-spec get_service_setting(aws_client:aws_client(), get_service_setting_request()) ->
    {ok, get_service_setting_result(), tuple()} |
    {error, any()} |
    {error, get_service_setting_errors(), tuple()}.
get_service_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_setting(Client, Input, []).

-spec get_service_setting(aws_client:aws_client(), get_service_setting_request(), proplists:proplist()) ->
    {ok, get_service_setting_result(), tuple()} |
    {error, any()} |
    {error, get_service_setting_errors(), tuple()}.
get_service_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceSetting">>, Input, Options).

%% @doc A parameter label is a user-defined alias to help you manage
%% different versions of a
%% parameter.
%%
%% When you modify a parameter, Amazon Web Services Systems Manager
%% automatically saves a new version and
%% increments the version number by one. A label can help you remember the
%% purpose of a parameter
%% when there are multiple versions.
%%
%% Parameter labels have the following requirements and restrictions.
%%
%% A version of a parameter can have a maximum of 10 labels.
%%
%% You can't attach the same label to different versions of the same
%% parameter. For example,
%% if version 1 has the label Production, then you can't attach
%% Production to version 2.
%%
%% You can move a label from one version of a parameter to another.
%%
%% You can't create a label when you create a new parameter. You must
%% attach a label to a
%% specific version of a parameter.
%%
%% If you no longer want to use a parameter label, then you can either delete
%% it or move it
%% to a different version of a parameter.
%%
%% A label can have a maximum of 100 characters.
%%
%% Labels can contain letters (case sensitive), numbers, periods (.), hyphens
%% (-), or
%% underscores (_).
%%
%% Labels can't begin with a number, &quot;`aws'&quot; or
%% &quot;`ssm'&quot; (not case
%% sensitive). If a label fails to meet these requirements, then the label
%% isn't associated with a
%% parameter and the system displays it in the list of InvalidLabels.
-spec label_parameter_version(aws_client:aws_client(), label_parameter_version_request()) ->
    {ok, label_parameter_version_result(), tuple()} |
    {error, any()} |
    {error, label_parameter_version_errors(), tuple()}.
label_parameter_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    label_parameter_version(Client, Input, []).

-spec label_parameter_version(aws_client:aws_client(), label_parameter_version_request(), proplists:proplist()) ->
    {ok, label_parameter_version_result(), tuple()} |
    {error, any()} |
    {error, label_parameter_version_errors(), tuple()}.
label_parameter_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LabelParameterVersion">>, Input, Options).

%% @doc Retrieves all versions of an association for a specific association
%% ID.
-spec list_association_versions(aws_client:aws_client(), list_association_versions_request()) ->
    {ok, list_association_versions_result(), tuple()} |
    {error, any()} |
    {error, list_association_versions_errors(), tuple()}.
list_association_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_association_versions(Client, Input, []).

-spec list_association_versions(aws_client:aws_client(), list_association_versions_request(), proplists:proplist()) ->
    {ok, list_association_versions_result(), tuple()} |
    {error, any()} |
    {error, list_association_versions_errors(), tuple()}.
list_association_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociationVersions">>, Input, Options).

%% @doc Returns all State Manager associations in the current Amazon Web
%% Services account and Amazon Web Services Region.
%%
%% You
%% can limit the results to a specific State Manager association document or
%% managed node by
%% specifying a filter. State Manager is a tool in Amazon Web Services
%% Systems Manager.
-spec list_associations(aws_client:aws_client(), list_associations_request()) ->
    {ok, list_associations_result(), tuple()} |
    {error, any()} |
    {error, list_associations_errors(), tuple()}.
list_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associations(Client, Input, []).

-spec list_associations(aws_client:aws_client(), list_associations_request(), proplists:proplist()) ->
    {ok, list_associations_result(), tuple()} |
    {error, any()} |
    {error, list_associations_errors(), tuple()}.
list_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociations">>, Input, Options).

%% @doc An invocation is copy of a command sent to a specific managed node.
%%
%% A command can apply to
%% one or more managed nodes. A command invocation applies to one managed
%% node. For example, if a
%% user runs `SendCommand' against three managed nodes, then a command
%% invocation is
%% created for each requested managed node ID. `ListCommandInvocations'
%% provide status
%% about command execution.
-spec list_command_invocations(aws_client:aws_client(), list_command_invocations_request()) ->
    {ok, list_command_invocations_result(), tuple()} |
    {error, any()} |
    {error, list_command_invocations_errors(), tuple()}.
list_command_invocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_command_invocations(Client, Input, []).

-spec list_command_invocations(aws_client:aws_client(), list_command_invocations_request(), proplists:proplist()) ->
    {ok, list_command_invocations_result(), tuple()} |
    {error, any()} |
    {error, list_command_invocations_errors(), tuple()}.
list_command_invocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCommandInvocations">>, Input, Options).

%% @doc Lists the commands requested by users of the Amazon Web Services
%% account.
-spec list_commands(aws_client:aws_client(), list_commands_request()) ->
    {ok, list_commands_result(), tuple()} |
    {error, any()} |
    {error, list_commands_errors(), tuple()}.
list_commands(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_commands(Client, Input, []).

-spec list_commands(aws_client:aws_client(), list_commands_request(), proplists:proplist()) ->
    {ok, list_commands_result(), tuple()} |
    {error, any()} |
    {error, list_commands_errors(), tuple()}.
list_commands(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCommands">>, Input, Options).

%% @doc For a specified resource ID, this API operation returns a list of
%% compliance statuses for
%% different resource types.
%%
%% Currently, you can only specify one resource ID per call. List results
%% depend on the criteria specified in the filter.
-spec list_compliance_items(aws_client:aws_client(), list_compliance_items_request()) ->
    {ok, list_compliance_items_result(), tuple()} |
    {error, any()} |
    {error, list_compliance_items_errors(), tuple()}.
list_compliance_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compliance_items(Client, Input, []).

-spec list_compliance_items(aws_client:aws_client(), list_compliance_items_request(), proplists:proplist()) ->
    {ok, list_compliance_items_result(), tuple()} |
    {error, any()} |
    {error, list_compliance_items_errors(), tuple()}.
list_compliance_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComplianceItems">>, Input, Options).

%% @doc Returns a summary count of compliant and non-compliant resources for
%% a compliance type.
%%
%% For
%% example, this call can return State Manager associations, patches, or
%% custom compliance types
%% according to the filter criteria that you specify.
-spec list_compliance_summaries(aws_client:aws_client(), list_compliance_summaries_request()) ->
    {ok, list_compliance_summaries_result(), tuple()} |
    {error, any()} |
    {error, list_compliance_summaries_errors(), tuple()}.
list_compliance_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compliance_summaries(Client, Input, []).

-spec list_compliance_summaries(aws_client:aws_client(), list_compliance_summaries_request(), proplists:proplist()) ->
    {ok, list_compliance_summaries_result(), tuple()} |
    {error, any()} |
    {error, list_compliance_summaries_errors(), tuple()}.
list_compliance_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComplianceSummaries">>, Input, Options).

%% @doc Information about approval reviews for a version of a change template
%% in Change Manager.
-spec list_document_metadata_history(aws_client:aws_client(), list_document_metadata_history_request()) ->
    {ok, list_document_metadata_history_response(), tuple()} |
    {error, any()} |
    {error, list_document_metadata_history_errors(), tuple()}.
list_document_metadata_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_metadata_history(Client, Input, []).

-spec list_document_metadata_history(aws_client:aws_client(), list_document_metadata_history_request(), proplists:proplist()) ->
    {ok, list_document_metadata_history_response(), tuple()} |
    {error, any()} |
    {error, list_document_metadata_history_errors(), tuple()}.
list_document_metadata_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentMetadataHistory">>, Input, Options).

%% @doc List all versions for a document.
-spec list_document_versions(aws_client:aws_client(), list_document_versions_request()) ->
    {ok, list_document_versions_result(), tuple()} |
    {error, any()} |
    {error, list_document_versions_errors(), tuple()}.
list_document_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_versions(Client, Input, []).

-spec list_document_versions(aws_client:aws_client(), list_document_versions_request(), proplists:proplist()) ->
    {ok, list_document_versions_result(), tuple()} |
    {error, any()} |
    {error, list_document_versions_errors(), tuple()}.
list_document_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentVersions">>, Input, Options).

%% @doc Returns all Systems Manager (SSM) documents in the current Amazon Web
%% Services account and Amazon Web Services Region.
%%
%% You can
%% limit the results of this request by using a filter.
-spec list_documents(aws_client:aws_client(), list_documents_request()) ->
    {ok, list_documents_result(), tuple()} |
    {error, any()} |
    {error, list_documents_errors(), tuple()}.
list_documents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_documents(Client, Input, []).

-spec list_documents(aws_client:aws_client(), list_documents_request(), proplists:proplist()) ->
    {ok, list_documents_result(), tuple()} |
    {error, any()} |
    {error, list_documents_errors(), tuple()}.
list_documents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocuments">>, Input, Options).

%% @doc A list of inventory items returned by the request.
-spec list_inventory_entries(aws_client:aws_client(), list_inventory_entries_request()) ->
    {ok, list_inventory_entries_result(), tuple()} |
    {error, any()} |
    {error, list_inventory_entries_errors(), tuple()}.
list_inventory_entries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inventory_entries(Client, Input, []).

-spec list_inventory_entries(aws_client:aws_client(), list_inventory_entries_request(), proplists:proplist()) ->
    {ok, list_inventory_entries_result(), tuple()} |
    {error, any()} |
    {error, list_inventory_entries_errors(), tuple()}.
list_inventory_entries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInventoryEntries">>, Input, Options).

%% @doc Takes in filters and returns a list of managed nodes matching the
%% filter criteria.
-spec list_nodes(aws_client:aws_client(), list_nodes_request()) ->
    {ok, list_nodes_result(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_nodes(Client, Input, []).

-spec list_nodes(aws_client:aws_client(), list_nodes_request(), proplists:proplist()) ->
    {ok, list_nodes_result(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNodes">>, Input, Options).

%% @doc Generates a summary of managed instance/node metadata based on the
%% filters and aggregators
%% you specify.
%%
%% Results are grouped by the input aggregator you specify.
-spec list_nodes_summary(aws_client:aws_client(), list_nodes_summary_request()) ->
    {ok, list_nodes_summary_result(), tuple()} |
    {error, any()} |
    {error, list_nodes_summary_errors(), tuple()}.
list_nodes_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_nodes_summary(Client, Input, []).

-spec list_nodes_summary(aws_client:aws_client(), list_nodes_summary_request(), proplists:proplist()) ->
    {ok, list_nodes_summary_result(), tuple()} |
    {error, any()} |
    {error, list_nodes_summary_errors(), tuple()}.
list_nodes_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNodesSummary">>, Input, Options).

%% @doc Returns a list of all OpsItem events in the current Amazon Web
%% Services Region and Amazon Web Services account.
%%
%% You can
%% limit the results to events associated with specific OpsItems by
%% specifying a filter.
-spec list_ops_item_events(aws_client:aws_client(), list_ops_item_events_request()) ->
    {ok, list_ops_item_events_response(), tuple()} |
    {error, any()} |
    {error, list_ops_item_events_errors(), tuple()}.
list_ops_item_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ops_item_events(Client, Input, []).

-spec list_ops_item_events(aws_client:aws_client(), list_ops_item_events_request(), proplists:proplist()) ->
    {ok, list_ops_item_events_response(), tuple()} |
    {error, any()} |
    {error, list_ops_item_events_errors(), tuple()}.
list_ops_item_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpsItemEvents">>, Input, Options).

%% @doc Lists all related-item resources associated with a Systems Manager
%% OpsCenter OpsItem.
%%
%% OpsCenter is a
%% tool in Amazon Web Services Systems Manager.
-spec list_ops_item_related_items(aws_client:aws_client(), list_ops_item_related_items_request()) ->
    {ok, list_ops_item_related_items_response(), tuple()} |
    {error, any()} |
    {error, list_ops_item_related_items_errors(), tuple()}.
list_ops_item_related_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ops_item_related_items(Client, Input, []).

-spec list_ops_item_related_items(aws_client:aws_client(), list_ops_item_related_items_request(), proplists:proplist()) ->
    {ok, list_ops_item_related_items_response(), tuple()} |
    {error, any()} |
    {error, list_ops_item_related_items_errors(), tuple()}.
list_ops_item_related_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpsItemRelatedItems">>, Input, Options).

%% @doc Amazon Web Services Systems Manager calls this API operation when
%% displaying all Application Manager OpsMetadata objects or
%% blobs.
-spec list_ops_metadata(aws_client:aws_client(), list_ops_metadata_request()) ->
    {ok, list_ops_metadata_result(), tuple()} |
    {error, any()} |
    {error, list_ops_metadata_errors(), tuple()}.
list_ops_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ops_metadata(Client, Input, []).

-spec list_ops_metadata(aws_client:aws_client(), list_ops_metadata_request(), proplists:proplist()) ->
    {ok, list_ops_metadata_result(), tuple()} |
    {error, any()} |
    {error, list_ops_metadata_errors(), tuple()}.
list_ops_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpsMetadata">>, Input, Options).

%% @doc Returns a resource-level summary count.
%%
%% The summary includes information about compliant and
%% non-compliant statuses and detailed compliance-item severity counts,
%% according to the filter
%% criteria you specify.
-spec list_resource_compliance_summaries(aws_client:aws_client(), list_resource_compliance_summaries_request()) ->
    {ok, list_resource_compliance_summaries_result(), tuple()} |
    {error, any()} |
    {error, list_resource_compliance_summaries_errors(), tuple()}.
list_resource_compliance_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_compliance_summaries(Client, Input, []).

-spec list_resource_compliance_summaries(aws_client:aws_client(), list_resource_compliance_summaries_request(), proplists:proplist()) ->
    {ok, list_resource_compliance_summaries_result(), tuple()} |
    {error, any()} |
    {error, list_resource_compliance_summaries_errors(), tuple()}.
list_resource_compliance_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceComplianceSummaries">>, Input, Options).

%% @doc Lists your resource data sync configurations.
%%
%% Includes information about the last time a
%% sync attempted to start, the last sync status, and the last time a sync
%% successfully
%% completed.
%%
%% The number of sync configurations might be too large to return using a
%% single call to
%% `ListResourceDataSync'. You can limit the number of sync
%% configurations returned by
%% using the `MaxResults' parameter. To determine whether there are more
%% sync
%% configurations to list, check the value of `NextToken' in the output.
%% If there are
%% more sync configurations to list, you can request them by specifying the
%% `NextToken'
%% returned in the call to the parameter of a subsequent call.
-spec list_resource_data_sync(aws_client:aws_client(), list_resource_data_sync_request()) ->
    {ok, list_resource_data_sync_result(), tuple()} |
    {error, any()} |
    {error, list_resource_data_sync_errors(), tuple()}.
list_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_data_sync(Client, Input, []).

-spec list_resource_data_sync(aws_client:aws_client(), list_resource_data_sync_request(), proplists:proplist()) ->
    {ok, list_resource_data_sync_result(), tuple()} |
    {error, any()} |
    {error, list_resource_data_sync_errors(), tuple()}.
list_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceDataSync">>, Input, Options).

%% @doc Returns a list of the tags assigned to the specified resource.
%%
%% For information about the ID format for each supported resource type, see
%% `AddTagsToResource'.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Shares a Amazon Web Services Systems Manager document (SSM
%% document)publicly or privately.
%%
%% If you share a document
%% privately, you must specify the Amazon Web Services user IDs for those
%% people who can use the document. If
%% you share a document publicly, you must specify All as the account
%% ID.
-spec modify_document_permission(aws_client:aws_client(), modify_document_permission_request()) ->
    {ok, modify_document_permission_response(), tuple()} |
    {error, any()} |
    {error, modify_document_permission_errors(), tuple()}.
modify_document_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_document_permission(Client, Input, []).

-spec modify_document_permission(aws_client:aws_client(), modify_document_permission_request(), proplists:proplist()) ->
    {ok, modify_document_permission_response(), tuple()} |
    {error, any()} |
    {error, modify_document_permission_errors(), tuple()}.
modify_document_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDocumentPermission">>, Input, Options).

%% @doc Registers a compliance type and other compliance details on a
%% designated resource.
%%
%% This
%% operation lets you register custom compliance details with a resource.
%% This call overwrites
%% existing compliance information on the resource, so you must provide a
%% full list of compliance
%% items each time that you send the request.
%%
%% ComplianceType can be one of the following:
%%
%% ExecutionId: The execution ID when the patch, association, or custom
%% compliance item was
%% applied.
%%
%% ExecutionType: Specify patch, association, or Custom:`string'.
%%
%% ExecutionTime. The time the patch, association, or custom compliance item
%% was applied to
%% the managed node.
%%
%% Id: The patch, association, or custom compliance ID.
%%
%% Title: A title.
%%
%% Status: The status of the compliance item. For example, `approved' for
%% patches,
%% or `Failed' for associations.
%%
%% Severity: A patch severity. For example, `Critical'.
%%
%% DocumentName: An SSM document name. For example,
%% `AWS-RunPatchBaseline'.
%%
%% DocumentVersion: An SSM document version number. For example, 4.
%%
%% Classification: A patch classification. For example, `security
%% updates'.
%%
%% PatchBaselineId: A patch baseline ID.
%%
%% PatchSeverity: A patch severity. For example, `Critical'.
%%
%% PatchState: A patch state. For example, `InstancesWithFailedPatches'.
%%
%% PatchGroup: The name of a patch group.
%%
%% InstalledTime: The time the association, patch, or custom compliance item
%% was applied to
%% the resource. Specify the time by using the following format:
%% `yyyy-MM-dd'T'HH:mm:ss'Z''
-spec put_compliance_items(aws_client:aws_client(), put_compliance_items_request()) ->
    {ok, put_compliance_items_result(), tuple()} |
    {error, any()} |
    {error, put_compliance_items_errors(), tuple()}.
put_compliance_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_compliance_items(Client, Input, []).

-spec put_compliance_items(aws_client:aws_client(), put_compliance_items_request(), proplists:proplist()) ->
    {ok, put_compliance_items_result(), tuple()} |
    {error, any()} |
    {error, put_compliance_items_errors(), tuple()}.
put_compliance_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutComplianceItems">>, Input, Options).

%% @doc Bulk update custom inventory items on one or more managed nodes.
%%
%% The request adds an
%% inventory item, if it doesn't already exist, or updates an inventory
%% item, if it does
%% exist.
-spec put_inventory(aws_client:aws_client(), put_inventory_request()) ->
    {ok, put_inventory_result(), tuple()} |
    {error, any()} |
    {error, put_inventory_errors(), tuple()}.
put_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_inventory(Client, Input, []).

-spec put_inventory(aws_client:aws_client(), put_inventory_request(), proplists:proplist()) ->
    {ok, put_inventory_result(), tuple()} |
    {error, any()} |
    {error, put_inventory_errors(), tuple()}.
put_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInventory">>, Input, Options).

%% @doc Create or update a parameter in Parameter Store.
-spec put_parameter(aws_client:aws_client(), put_parameter_request()) ->
    {ok, put_parameter_result(), tuple()} |
    {error, any()} |
    {error, put_parameter_errors(), tuple()}.
put_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_parameter(Client, Input, []).

-spec put_parameter(aws_client:aws_client(), put_parameter_request(), proplists:proplist()) ->
    {ok, put_parameter_result(), tuple()} |
    {error, any()} |
    {error, put_parameter_errors(), tuple()}.
put_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutParameter">>, Input, Options).

%% @doc Creates or updates a Systems Manager resource policy.
%%
%% A resource policy helps you to define the
%% IAM entity (for example, an Amazon Web Services account) that can manage
%% your Systems Manager resources.
%% The following resources support Systems Manager resource policies.
%%
%% `OpsItemGroup' - The resource policy for `OpsItemGroup' enables
%% Amazon Web Services accounts to view and interact with OpsCenter
%% operational work items (OpsItems).
%%
%% `Parameter' - The resource policy is used to share a parameter with
%% other
%% accounts using Resource Access Manager (RAM).
%%
%% To share a parameter, it must be in the advanced parameter tier. For
%% information about
%% parameter tiers, see Managing
%% parameter tiers:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html.
%% For information about changing an existing standard parameter to an
%% advanced parameter, see Changing a standard parameter to an advanced
%% parameter:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html#parameter-store-advanced-parameters-enabling.
%%
%% To share a `SecureString' parameter, it must be encrypted with a
%% customer managed key, and you must share the key separately through Key
%% Management Service. Amazon Web Services managed keys cannot be shared.
%% Parameters encrypted with the default Amazon Web Services managed key can
%% be updated to use a customer managed key instead. For KMS key definitions,
%% see KMS concepts:
%% https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html in the
%% Key Management Service Developer Guide.
%%
%% While you can share a parameter using the Systems Manager
%% `PutResourcePolicy' operation,
%% we recommend using Resource Access Manager (RAM) instead. This is because
%% using
%% `PutResourcePolicy' requires the extra step of promoting the parameter
%% to a
%% standard RAM Resource Share using the RAM
%% PromoteResourceShareCreatedFromPolicy:
%% https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
%% API operation. Otherwise, the parameter won't
%% be returned by the Systems Manager DescribeParameters:
%% https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeParameters.html
%% API operation using the `--shared' option.
%%
%% For more information, see Sharing a
%% parameter:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html#share
%% in the Amazon Web Services Systems Manager User Guide
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Defines the default patch baseline for the relevant operating system.
%%
%% To reset the Amazon Web Services-predefined patch baseline as the default,
%% specify the full patch baseline
%% Amazon Resource Name (ARN) as the baseline ID value. For example, for
%% CentOS, specify
%% `arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed'
%% instead of
%% `pb-0574b43a65ea646ed'.
-spec register_default_patch_baseline(aws_client:aws_client(), register_default_patch_baseline_request()) ->
    {ok, register_default_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, register_default_patch_baseline_errors(), tuple()}.
register_default_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_default_patch_baseline(Client, Input, []).

-spec register_default_patch_baseline(aws_client:aws_client(), register_default_patch_baseline_request(), proplists:proplist()) ->
    {ok, register_default_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, register_default_patch_baseline_errors(), tuple()}.
register_default_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDefaultPatchBaseline">>, Input, Options).

%% @doc Registers a patch baseline for a patch group.
-spec register_patch_baseline_for_patch_group(aws_client:aws_client(), register_patch_baseline_for_patch_group_request()) ->
    {ok, register_patch_baseline_for_patch_group_result(), tuple()} |
    {error, any()} |
    {error, register_patch_baseline_for_patch_group_errors(), tuple()}.
register_patch_baseline_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_patch_baseline_for_patch_group(Client, Input, []).

-spec register_patch_baseline_for_patch_group(aws_client:aws_client(), register_patch_baseline_for_patch_group_request(), proplists:proplist()) ->
    {ok, register_patch_baseline_for_patch_group_result(), tuple()} |
    {error, any()} |
    {error, register_patch_baseline_for_patch_group_errors(), tuple()}.
register_patch_baseline_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterPatchBaselineForPatchGroup">>, Input, Options).

%% @doc Registers a target with a maintenance window.
-spec register_target_with_maintenance_window(aws_client:aws_client(), register_target_with_maintenance_window_request()) ->
    {ok, register_target_with_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, register_target_with_maintenance_window_errors(), tuple()}.
register_target_with_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_target_with_maintenance_window(Client, Input, []).

-spec register_target_with_maintenance_window(aws_client:aws_client(), register_target_with_maintenance_window_request(), proplists:proplist()) ->
    {ok, register_target_with_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, register_target_with_maintenance_window_errors(), tuple()}.
register_target_with_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTargetWithMaintenanceWindow">>, Input, Options).

%% @doc Adds a new task to a maintenance window.
-spec register_task_with_maintenance_window(aws_client:aws_client(), register_task_with_maintenance_window_request()) ->
    {ok, register_task_with_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, register_task_with_maintenance_window_errors(), tuple()}.
register_task_with_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_task_with_maintenance_window(Client, Input, []).

-spec register_task_with_maintenance_window(aws_client:aws_client(), register_task_with_maintenance_window_request(), proplists:proplist()) ->
    {ok, register_task_with_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, register_task_with_maintenance_window_errors(), tuple()}.
register_task_with_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTaskWithMaintenanceWindow">>, Input, Options).

%% @doc Removes tag keys from the specified resource.
-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_request()) ->
    {ok, remove_tags_from_resource_result(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).

-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_request(), proplists:proplist()) ->
    {ok, remove_tags_from_resource_result(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc
%% `ServiceSetting' is an account-level setting for an Amazon Web
%% Services service.
%%
%% This setting
%% defines how a user interacts with or uses a service or a feature of a
%% service. For example, if an
%% Amazon Web Services service charges money to the account based on feature
%% or service usage, then the Amazon Web Services
%% service team might create a default setting of &quot;false&quot;. This
%% means the user can't use this
%% feature unless they change the setting to &quot;true&quot; and
%% intentionally opt in for a paid
%% feature.
%%
%% Services map a `SettingId' object to a setting value. Amazon Web
%% Services services teams define
%% the default value for a `SettingId'. You can't create a new
%% `SettingId',
%% but you can overwrite the default value if you have the
%% `ssm:UpdateServiceSetting'
%% permission for the setting. Use the `GetServiceSetting' API operation
%% to view the
%% current value. Use the `UpdateServiceSetting' API operation to change
%% the default
%% setting.
%%
%% Reset the service setting for the account to the default value as
%% provisioned by the Amazon Web Services
%% service team.
-spec reset_service_setting(aws_client:aws_client(), reset_service_setting_request()) ->
    {ok, reset_service_setting_result(), tuple()} |
    {error, any()} |
    {error, reset_service_setting_errors(), tuple()}.
reset_service_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_service_setting(Client, Input, []).

-spec reset_service_setting(aws_client:aws_client(), reset_service_setting_request(), proplists:proplist()) ->
    {ok, reset_service_setting_result(), tuple()} |
    {error, any()} |
    {error, reset_service_setting_errors(), tuple()}.
reset_service_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetServiceSetting">>, Input, Options).

%% @doc Reconnects a session to a managed node after it has been
%% disconnected.
%%
%% Connections can be
%% resumed for disconnected sessions, but not terminated sessions.
%%
%% This command is primarily for use by client machines to automatically
%% reconnect during
%% intermittent network issues. It isn't intended for any other use.
-spec resume_session(aws_client:aws_client(), resume_session_request()) ->
    {ok, resume_session_response(), tuple()} |
    {error, any()} |
    {error, resume_session_errors(), tuple()}.
resume_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_session(Client, Input, []).

-spec resume_session(aws_client:aws_client(), resume_session_request(), proplists:proplist()) ->
    {ok, resume_session_response(), tuple()} |
    {error, any()} |
    {error, resume_session_errors(), tuple()}.
resume_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeSession">>, Input, Options).

%% @doc Sends a signal to an Automation execution to change the current
%% behavior or status of the
%% execution.
-spec send_automation_signal(aws_client:aws_client(), send_automation_signal_request()) ->
    {ok, send_automation_signal_result(), tuple()} |
    {error, any()} |
    {error, send_automation_signal_errors(), tuple()}.
send_automation_signal(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_automation_signal(Client, Input, []).

-spec send_automation_signal(aws_client:aws_client(), send_automation_signal_request(), proplists:proplist()) ->
    {ok, send_automation_signal_result(), tuple()} |
    {error, any()} |
    {error, send_automation_signal_errors(), tuple()}.
send_automation_signal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendAutomationSignal">>, Input, Options).

%% @doc Runs commands on one or more managed nodes.
-spec send_command(aws_client:aws_client(), send_command_request()) ->
    {ok, send_command_result(), tuple()} |
    {error, any()} |
    {error, send_command_errors(), tuple()}.
send_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_command(Client, Input, []).

-spec send_command(aws_client:aws_client(), send_command_request(), proplists:proplist()) ->
    {ok, send_command_result(), tuple()} |
    {error, any()} |
    {error, send_command_errors(), tuple()}.
send_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendCommand">>, Input, Options).

%% @doc Runs an association immediately and only one time.
%%
%% This operation can be helpful when
%% troubleshooting associations.
-spec start_associations_once(aws_client:aws_client(), start_associations_once_request()) ->
    {ok, start_associations_once_result(), tuple()} |
    {error, any()} |
    {error, start_associations_once_errors(), tuple()}.
start_associations_once(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_associations_once(Client, Input, []).

-spec start_associations_once(aws_client:aws_client(), start_associations_once_request(), proplists:proplist()) ->
    {ok, start_associations_once_result(), tuple()} |
    {error, any()} |
    {error, start_associations_once_errors(), tuple()}.
start_associations_once(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAssociationsOnce">>, Input, Options).

%% @doc Initiates execution of an Automation runbook.
-spec start_automation_execution(aws_client:aws_client(), start_automation_execution_request()) ->
    {ok, start_automation_execution_result(), tuple()} |
    {error, any()} |
    {error, start_automation_execution_errors(), tuple()}.
start_automation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_automation_execution(Client, Input, []).

-spec start_automation_execution(aws_client:aws_client(), start_automation_execution_request(), proplists:proplist()) ->
    {ok, start_automation_execution_result(), tuple()} |
    {error, any()} |
    {error, start_automation_execution_errors(), tuple()}.
start_automation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAutomationExecution">>, Input, Options).

%% @doc Creates a change request for Change Manager.
%%
%% The Automation runbooks specified in the
%% change request run only after all required approvals for the change
%% request have been
%% received.
-spec start_change_request_execution(aws_client:aws_client(), start_change_request_execution_request()) ->
    {ok, start_change_request_execution_result(), tuple()} |
    {error, any()} |
    {error, start_change_request_execution_errors(), tuple()}.
start_change_request_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_change_request_execution(Client, Input, []).

-spec start_change_request_execution(aws_client:aws_client(), start_change_request_execution_request(), proplists:proplist()) ->
    {ok, start_change_request_execution_result(), tuple()} |
    {error, any()} |
    {error, start_change_request_execution_errors(), tuple()}.
start_change_request_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartChangeRequestExecution">>, Input, Options).

%% @doc Initiates the process of creating a preview showing the effects that
%% running a specified
%% Automation runbook would have on the targeted resources.
-spec start_execution_preview(aws_client:aws_client(), start_execution_preview_request()) ->
    {ok, start_execution_preview_response(), tuple()} |
    {error, any()} |
    {error, start_execution_preview_errors(), tuple()}.
start_execution_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_execution_preview(Client, Input, []).

-spec start_execution_preview(aws_client:aws_client(), start_execution_preview_request(), proplists:proplist()) ->
    {ok, start_execution_preview_response(), tuple()} |
    {error, any()} |
    {error, start_execution_preview_errors(), tuple()}.
start_execution_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExecutionPreview">>, Input, Options).

%% @doc Initiates a connection to a target (for example, a managed node) for
%% a Session Manager session.
%%
%% Returns a URL and token that can be used to open a WebSocket connection
%% for sending input and
%% receiving outputs.
%%
%% Amazon Web Services CLI usage: `start-session' is an interactive
%% command that requires the Session Manager
%% plugin to be installed on the client machine making the call. For
%% information, see Install
%% the Session Manager plugin for the Amazon Web Services CLI:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html
%% in the Amazon Web Services Systems Manager User Guide.
%%
%% Amazon Web Services Tools for PowerShell usage: Start-SSMSession isn't
%% currently supported by Amazon Web Services Tools
%% for PowerShell on Windows local machines.
-spec start_session(aws_client:aws_client(), start_session_request()) ->
    {ok, start_session_response(), tuple()} |
    {error, any()} |
    {error, start_session_errors(), tuple()}.
start_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_session(Client, Input, []).

-spec start_session(aws_client:aws_client(), start_session_request(), proplists:proplist()) ->
    {ok, start_session_response(), tuple()} |
    {error, any()} |
    {error, start_session_errors(), tuple()}.
start_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSession">>, Input, Options).

%% @doc Stop an Automation that is currently running.
-spec stop_automation_execution(aws_client:aws_client(), stop_automation_execution_request()) ->
    {ok, stop_automation_execution_result(), tuple()} |
    {error, any()} |
    {error, stop_automation_execution_errors(), tuple()}.
stop_automation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_automation_execution(Client, Input, []).

-spec stop_automation_execution(aws_client:aws_client(), stop_automation_execution_request(), proplists:proplist()) ->
    {ok, stop_automation_execution_result(), tuple()} |
    {error, any()} |
    {error, stop_automation_execution_errors(), tuple()}.
stop_automation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAutomationExecution">>, Input, Options).

%% @doc Permanently ends a session and closes the data connection between the
%% Session Manager client and
%% SSM Agent on the managed node.
%%
%% A terminated session can't be resumed.
-spec terminate_session(aws_client:aws_client(), terminate_session_request()) ->
    {ok, terminate_session_response(), tuple()} |
    {error, any()} |
    {error, terminate_session_errors(), tuple()}.
terminate_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_session(Client, Input, []).

-spec terminate_session(aws_client:aws_client(), terminate_session_request(), proplists:proplist()) ->
    {ok, terminate_session_response(), tuple()} |
    {error, any()} |
    {error, terminate_session_errors(), tuple()}.
terminate_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateSession">>, Input, Options).

%% @doc Remove a label or labels from a parameter.
-spec unlabel_parameter_version(aws_client:aws_client(), unlabel_parameter_version_request()) ->
    {ok, unlabel_parameter_version_result(), tuple()} |
    {error, any()} |
    {error, unlabel_parameter_version_errors(), tuple()}.
unlabel_parameter_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    unlabel_parameter_version(Client, Input, []).

-spec unlabel_parameter_version(aws_client:aws_client(), unlabel_parameter_version_request(), proplists:proplist()) ->
    {ok, unlabel_parameter_version_result(), tuple()} |
    {error, any()} |
    {error, unlabel_parameter_version_errors(), tuple()}.
unlabel_parameter_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnlabelParameterVersion">>, Input, Options).

%% @doc Updates an association.
%%
%% You can update the association name and version, the document
%% version, schedule, parameters, and Amazon Simple Storage Service (Amazon
%% S3) output. When you
%% call `UpdateAssociation', the system removes all optional parameters
%% from the request
%% and overwrites the association with null values for those parameters. This
%% is by design. You must
%% specify all optional parameters in the call, even if you are not changing
%% the parameters. This
%% includes the `Name' parameter. Before calling this API action, we
%% recommend that you
%% call the `DescribeAssociation' API operation and make a note of all
%% optional
%% parameters required for your `UpdateAssociation' call.
%%
%% In order to call this API operation, a user, group, or role must be
%% granted permission to
%% call the `DescribeAssociation' API operation. If you don't have
%% permission to
%% call `DescribeAssociation', then you receive the following error:
%% ```
%% An error occurred (AccessDeniedException) when calling the
%% UpdateAssociation operation: User: isn't authorized to perform:
%% ssm:DescribeAssociation on resource: '''
%%
%% When you update an association, the association immediately runs against
%% the specified
%% targets. You can add the `ApplyOnlyAtCronInterval' parameter to run
%% the association
%% during the next schedule run.
-spec update_association(aws_client:aws_client(), update_association_request()) ->
    {ok, update_association_result(), tuple()} |
    {error, any()} |
    {error, update_association_errors(), tuple()}.
update_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_association(Client, Input, []).

-spec update_association(aws_client:aws_client(), update_association_request(), proplists:proplist()) ->
    {ok, update_association_result(), tuple()} |
    {error, any()} |
    {error, update_association_errors(), tuple()}.
update_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAssociation">>, Input, Options).

%% @doc Updates the status of the Amazon Web Services Systems Manager
%% document (SSM document) associated with the specified
%% managed node.
%%
%% `UpdateAssociationStatus' is primarily used by the Amazon Web Services
%% Systems Manager Agent (SSM Agent) to
%% report status updates about your associations and is only used for
%% associations created with the
%% `InstanceId' legacy parameter.
-spec update_association_status(aws_client:aws_client(), update_association_status_request()) ->
    {ok, update_association_status_result(), tuple()} |
    {error, any()} |
    {error, update_association_status_errors(), tuple()}.
update_association_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_association_status(Client, Input, []).

-spec update_association_status(aws_client:aws_client(), update_association_status_request(), proplists:proplist()) ->
    {ok, update_association_status_result(), tuple()} |
    {error, any()} |
    {error, update_association_status_errors(), tuple()}.
update_association_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAssociationStatus">>, Input, Options).

%% @doc Updates one or more values for an SSM document.
-spec update_document(aws_client:aws_client(), update_document_request()) ->
    {ok, update_document_result(), tuple()} |
    {error, any()} |
    {error, update_document_errors(), tuple()}.
update_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_document(Client, Input, []).

-spec update_document(aws_client:aws_client(), update_document_request(), proplists:proplist()) ->
    {ok, update_document_result(), tuple()} |
    {error, any()} |
    {error, update_document_errors(), tuple()}.
update_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDocument">>, Input, Options).

%% @doc Set the default version of a document.
%%
%% If you change a document version for a State Manager association, Systems
%% Manager immediately runs
%% the association unless you previously specifed the
%% `apply-only-at-cron-interval'
%% parameter.
-spec update_document_default_version(aws_client:aws_client(), update_document_default_version_request()) ->
    {ok, update_document_default_version_result(), tuple()} |
    {error, any()} |
    {error, update_document_default_version_errors(), tuple()}.
update_document_default_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_document_default_version(Client, Input, []).

-spec update_document_default_version(aws_client:aws_client(), update_document_default_version_request(), proplists:proplist()) ->
    {ok, update_document_default_version_result(), tuple()} |
    {error, any()} |
    {error, update_document_default_version_errors(), tuple()}.
update_document_default_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDocumentDefaultVersion">>, Input, Options).

%% @doc Updates information related to approval reviews for a specific
%% version of a change template
%% in Change Manager.
-spec update_document_metadata(aws_client:aws_client(), update_document_metadata_request()) ->
    {ok, update_document_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_document_metadata_errors(), tuple()}.
update_document_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_document_metadata(Client, Input, []).

-spec update_document_metadata(aws_client:aws_client(), update_document_metadata_request(), proplists:proplist()) ->
    {ok, update_document_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_document_metadata_errors(), tuple()}.
update_document_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDocumentMetadata">>, Input, Options).

%% @doc Updates an existing maintenance window.
%%
%% Only specified parameters are modified.
%%
%% The value you specify for `Duration' determines the specific end time
%% for the
%% maintenance window based on the time it begins. No maintenance window
%% tasks are permitted to
%% start after the resulting endtime minus the number of hours you specify
%% for `Cutoff'.
%% For example, if the maintenance window starts at 3 PM, the duration is
%% three hours, and the
%% value you specify for `Cutoff' is one hour, no maintenance window
%% tasks can start
%% after 5 PM.
-spec update_maintenance_window(aws_client:aws_client(), update_maintenance_window_request()) ->
    {ok, update_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, update_maintenance_window_errors(), tuple()}.
update_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_window(Client, Input, []).

-spec update_maintenance_window(aws_client:aws_client(), update_maintenance_window_request(), proplists:proplist()) ->
    {ok, update_maintenance_window_result(), tuple()} |
    {error, any()} |
    {error, update_maintenance_window_errors(), tuple()}.
update_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceWindow">>, Input, Options).

%% @doc Modifies the target of an existing maintenance window.
%%
%% You
%% can change the following:
%%
%% Name
%%
%% Description
%%
%% Owner
%%
%% IDs for an ID target
%%
%% Tags for a Tag target
%%
%% From any supported tag type to another. The three supported tag types are
%% ID target, Tag
%% target, and resource group. For more information, see `Target'.
%%
%% If a parameter is null, then the corresponding field isn't modified.
-spec update_maintenance_window_target(aws_client:aws_client(), update_maintenance_window_target_request()) ->
    {ok, update_maintenance_window_target_result(), tuple()} |
    {error, any()} |
    {error, update_maintenance_window_target_errors(), tuple()}.
update_maintenance_window_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_window_target(Client, Input, []).

-spec update_maintenance_window_target(aws_client:aws_client(), update_maintenance_window_target_request(), proplists:proplist()) ->
    {ok, update_maintenance_window_target_result(), tuple()} |
    {error, any()} |
    {error, update_maintenance_window_target_errors(), tuple()}.
update_maintenance_window_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceWindowTarget">>, Input, Options).

%% @doc Modifies a task assigned to a maintenance window.
%%
%% You can't change the task type, but you
%% can change the following values:
%%
%% `TaskARN'. For example, you can change a `RUN_COMMAND' task from
%% `AWS-RunPowerShellScript' to `AWS-RunShellScript'.
%%
%% `ServiceRoleArn'
%%
%% `TaskInvocationParameters'
%%
%% `Priority'
%%
%% `MaxConcurrency'
%%
%% `MaxErrors'
%%
%% One or more targets must be specified for maintenance window Run
%% Command-type tasks.
%% Depending on the task, targets are optional for other maintenance window
%% task types (Automation,
%% Lambda, and Step Functions). For more information about running tasks
%% that don't specify targets, see Registering
%% maintenance window tasks without targets:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
%%
%% If the value for a parameter in `UpdateMaintenanceWindowTask' is null,
%% then the
%% corresponding field isn't modified. If you set `Replace' to true,
%% then all fields
%% required by the `RegisterTaskWithMaintenanceWindow' operation are
%% required for
%% this request. Optional fields that aren't specified are set to null.
%%
%% When you update a maintenance window task that has options specified in
%% `TaskInvocationParameters', you must provide again all the
%% `TaskInvocationParameters' values that you want to retain. The values
%% you don't
%% specify again are removed. For example, suppose that when you registered a
%% Run Command task, you
%% specified `TaskInvocationParameters' values for `Comment',
%% `NotificationConfig', and `OutputS3BucketName'. If you update the
%% maintenance window task and specify only a different
%% `OutputS3BucketName' value, the
%% values for `Comment' and `NotificationConfig' are removed.
-spec update_maintenance_window_task(aws_client:aws_client(), update_maintenance_window_task_request()) ->
    {ok, update_maintenance_window_task_result(), tuple()} |
    {error, any()} |
    {error, update_maintenance_window_task_errors(), tuple()}.
update_maintenance_window_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_window_task(Client, Input, []).

-spec update_maintenance_window_task(aws_client:aws_client(), update_maintenance_window_task_request(), proplists:proplist()) ->
    {ok, update_maintenance_window_task_result(), tuple()} |
    {error, any()} |
    {error, update_maintenance_window_task_errors(), tuple()}.
update_maintenance_window_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceWindowTask">>, Input, Options).

%% @doc Changes the Identity and Access Management (IAM) role that is
%% assigned to the
%% on-premises server, edge device, or virtual machines (VM).
%%
%% IAM roles are first
%% assigned to these hybrid nodes during the activation process. For more
%% information, see `CreateActivation'.
-spec update_managed_instance_role(aws_client:aws_client(), update_managed_instance_role_request()) ->
    {ok, update_managed_instance_role_result(), tuple()} |
    {error, any()} |
    {error, update_managed_instance_role_errors(), tuple()}.
update_managed_instance_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_managed_instance_role(Client, Input, []).

-spec update_managed_instance_role(aws_client:aws_client(), update_managed_instance_role_request(), proplists:proplist()) ->
    {ok, update_managed_instance_role_result(), tuple()} |
    {error, any()} |
    {error, update_managed_instance_role_errors(), tuple()}.
update_managed_instance_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateManagedInstanceRole">>, Input, Options).

%% @doc Edit or change an OpsItem.
%%
%% You must have permission in Identity and Access Management (IAM) to update
%% an OpsItem. For more information, see Set up OpsCenter:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
%%
%% Operations engineers and IT professionals use Amazon Web Services Systems
%% Manager OpsCenter to view, investigate, and
%% remediate operational issues impacting the performance and health of their
%% Amazon Web Services resources. For
%% more information, see Amazon Web Services Systems Manager OpsCenter:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html
%% in the
%% Amazon Web Services Systems Manager User Guide.
-spec update_ops_item(aws_client:aws_client(), update_ops_item_request()) ->
    {ok, update_ops_item_response(), tuple()} |
    {error, any()} |
    {error, update_ops_item_errors(), tuple()}.
update_ops_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ops_item(Client, Input, []).

-spec update_ops_item(aws_client:aws_client(), update_ops_item_request(), proplists:proplist()) ->
    {ok, update_ops_item_response(), tuple()} |
    {error, any()} |
    {error, update_ops_item_errors(), tuple()}.
update_ops_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOpsItem">>, Input, Options).

%% @doc Amazon Web Services Systems Manager calls this API operation when you
%% edit OpsMetadata in Application Manager.
-spec update_ops_metadata(aws_client:aws_client(), update_ops_metadata_request()) ->
    {ok, update_ops_metadata_result(), tuple()} |
    {error, any()} |
    {error, update_ops_metadata_errors(), tuple()}.
update_ops_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ops_metadata(Client, Input, []).

-spec update_ops_metadata(aws_client:aws_client(), update_ops_metadata_request(), proplists:proplist()) ->
    {ok, update_ops_metadata_result(), tuple()} |
    {error, any()} |
    {error, update_ops_metadata_errors(), tuple()}.
update_ops_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOpsMetadata">>, Input, Options).

%% @doc Modifies an existing patch baseline.
%%
%% Fields not specified in the request are left
%% unchanged.
%%
%% For information about valid key-value pairs in `PatchFilters' for each
%% supported
%% operating system type, see `PatchFilter'.
-spec update_patch_baseline(aws_client:aws_client(), update_patch_baseline_request()) ->
    {ok, update_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, update_patch_baseline_errors(), tuple()}.
update_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_patch_baseline(Client, Input, []).

-spec update_patch_baseline(aws_client:aws_client(), update_patch_baseline_request(), proplists:proplist()) ->
    {ok, update_patch_baseline_result(), tuple()} |
    {error, any()} |
    {error, update_patch_baseline_errors(), tuple()}.
update_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePatchBaseline">>, Input, Options).

%% @doc Update a resource data sync.
%%
%% After you create a resource data sync for a Region, you can't
%% change the account options for that sync. For example, if you create a
%% sync in the us-east-2
%% (Ohio) Region and you choose the `Include only the current account'
%% option, you can't
%% edit that sync later and choose the
%% ```
%% Include all accounts from my Organizations configuration'''
%% option. Instead, you must delete the first resource data sync, and create
%% a
%% new one.
%%
%% This API operation only supports a resource data sync that was created
%% with a
%% SyncFromSource `SyncType'.
-spec update_resource_data_sync(aws_client:aws_client(), update_resource_data_sync_request()) ->
    {ok, update_resource_data_sync_result(), tuple()} |
    {error, any()} |
    {error, update_resource_data_sync_errors(), tuple()}.
update_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource_data_sync(Client, Input, []).

-spec update_resource_data_sync(aws_client:aws_client(), update_resource_data_sync_request(), proplists:proplist()) ->
    {ok, update_resource_data_sync_result(), tuple()} |
    {error, any()} |
    {error, update_resource_data_sync_errors(), tuple()}.
update_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResourceDataSync">>, Input, Options).

%% @doc
%% `ServiceSetting' is an account-level setting for an Amazon Web
%% Services service.
%%
%% This setting
%% defines how a user interacts with or uses a service or a feature of a
%% service. For example, if an
%% Amazon Web Services service charges money to the account based on feature
%% or service usage, then the Amazon Web Services
%% service team might create a default setting of &quot;false&quot;. This
%% means the user can't use this
%% feature unless they change the setting to &quot;true&quot; and
%% intentionally opt in for a paid
%% feature.
%%
%% Services map a `SettingId' object to a setting value. Amazon Web
%% Services services teams define
%% the default value for a `SettingId'. You can't create a new
%% `SettingId',
%% but you can overwrite the default value if you have the
%% `ssm:UpdateServiceSetting'
%% permission for the setting. Use the `GetServiceSetting' API operation
%% to view the
%% current value. Or, use the `ResetServiceSetting' to change the value
%% back to the
%% original value defined by the Amazon Web Services service team.
%%
%% Update the service setting for the account.
-spec update_service_setting(aws_client:aws_client(), update_service_setting_request()) ->
    {ok, update_service_setting_result(), tuple()} |
    {error, any()} |
    {error, update_service_setting_errors(), tuple()}.
update_service_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_setting(Client, Input, []).

-spec update_service_setting(aws_client:aws_client(), update_service_setting_request(), proplists:proplist()) ->
    {ok, update_service_setting_result(), tuple()} |
    {error, any()} |
    {error, update_service_setting_errors(), tuple()}.
update_service_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceSetting">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"ssm">>},
    Host = build_host(<<"ssm">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonSSM.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
