%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Systems Manager is a collection of capabilities
%% that helps you automate management tasks such as collecting system
%% inventory, applying operating system (OS) patches, automating the creation
%% of Amazon Machine Images (AMIs), and configuring operating systems (OSs)
%% and applications at scale.
%%
%% Systems Manager lets you remotely and securely manage the configuration of
%% your managed instances. A managed instance is any Amazon Elastic Compute
%% Cloud instance (EC2 instance), or any on-premises server or virtual
%% machine (VM) in your hybrid environment that has been configured for
%% Systems Manager.
%%
%% This reference is intended to be used with the Amazon Web Services Systems
%% Manager User Guide.
%%
%% To get started, verify prerequisites and configure managed instances. For
%% more information, see Setting up Amazon Web Services Systems Manager in
%% the Amazon Web Services Systems Manager User Guide.
%%
%% == Related resources ==
%%
%% <ul> <li> For information about how to use a Query API, see Making API
%% requests.
%%
%% </li> <li> For information about other API operations you can perform on
%% EC2 instances, see the Amazon EC2 API Reference.
%%
%% </li> <li> For information about AppConfig, a capability of Systems
%% Manager, see the AppConfig User Guide and the AppConfig API Reference.
%%
%% </li> <li> For information about Incident Manager, a capability of Systems
%% Manager, see the Incident Manager User Guide and the Incident Manager API
%% Reference.
%%
%% </li> </ul>
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

%%====================================================================
%% API
%%====================================================================

%% @doc Adds or overwrites one or more tags for the specified resource.
%%
%% Tags are metadata that you can assign to your documents, managed
%% instances, maintenance windows, Parameter Store parameters, and patch
%% baselines. Tags enable you to categorize your resources in different ways,
%% for example, by purpose, owner, or environment. Each tag consists of a key
%% and an optional value, both of which you define. For example, you could
%% define a set of tags for your account's managed instances that helps you
%% track each instance's owner and stack level. For example:
%%
%% <ul> <li> `Key=Owner,Value=DbAdmin'
%%
%% </li> <li> `Key=Owner,Value=SysAdmin'
%%
%% </li> <li> `Key=Owner,Value=Dev'
%%
%% </li> <li> `Key=Stack,Value=Production'
%%
%% </li> <li> `Key=Stack,Value=Pre-Production'
%%
%% </li> <li> `Key=Stack,Value=Test'
%%
%% </li> </ul> Each resource can have a maximum of 50 tags.
%%
%% We recommend that you devise a set of tag keys that meets your needs for
%% each resource type. Using a consistent set of tag keys makes it easier for
%% you to manage your resources. You can search and filter the resources
%% based on the tags you add. Tags don't have any semantic meaning to and are
%% interpreted strictly as a string of characters.
%%
%% For more information about using tags with Amazon Elastic Compute Cloud
%% (Amazon EC2) instances, see Tagging your Amazon EC2 resources in the
%% Amazon EC2 User Guide.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Associates a related item to a Systems Manager OpsCenter OpsItem.
%%
%% For example, you can associate an Incident Manager incident or analysis
%% with an OpsItem. Incident Manager and OpsCenter are capabilities of Amazon
%% Web Services Systems Manager.
associate_ops_item_related_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_ops_item_related_item(Client, Input, []).
associate_ops_item_related_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateOpsItemRelatedItem">>, Input, Options).

%% @doc Attempts to cancel the command specified by the Command ID.
%%
%% There is no guarantee that the command will be terminated and the
%% underlying process stopped.
cancel_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_command(Client, Input, []).
cancel_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCommand">>, Input, Options).

%% @doc Stops a maintenance window execution that is already in progress and
%% cancels any tasks in the window that haven't already starting running.
%%
%% Tasks already in progress will continue to completion.
cancel_maintenance_window_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_maintenance_window_execution(Client, Input, []).
cancel_maintenance_window_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelMaintenanceWindowExecution">>, Input, Options).

%% @doc Generates an activation code and activation ID you can use to
%% register your on-premises server or virtual machine (VM) with Amazon Web
%% Services Systems Manager.
%%
%% Registering these machines with Systems Manager makes it possible to
%% manage them using Systems Manager capabilities. You use the activation
%% code and ID when installing SSM Agent on machines in your hybrid
%% environment. For more information about requirements for managing
%% on-premises instances and VMs using Systems Manager, see Setting up Amazon
%% Web Services Systems Manager for hybrid environments in the Amazon Web
%% Services Systems Manager User Guide.
%%
%% On-premises servers or VMs that are registered with Systems Manager and
%% Amazon Elastic Compute Cloud (Amazon EC2) instances that you manage with
%% Systems Manager are all called managed instances.
create_activation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_activation(Client, Input, []).
create_activation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateActivation">>, Input, Options).

%% @doc A State Manager association defines the state that you want to
%% maintain on your instances.
%%
%% For example, an association can specify that anti-virus software must be
%% installed and running on your instances, or that certain ports must be
%% closed. For static targets, the association specifies a schedule for when
%% the configuration is reapplied. For dynamic targets, such as an Amazon Web
%% Services resource group or an Amazon Web Services autoscaling group, State
%% Manager, a capability of Amazon Web Services Systems Manager applies the
%% configuration when new instances are added to the group. The association
%% also specifies actions to take when applying the configuration. For
%% example, an association for anti-virus software might run once a day. If
%% the software isn't installed, then State Manager installs it. If the
%% software is installed, but the service isn't running, then the association
%% might instruct State Manager to start the service.
create_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_association(Client, Input, []).
create_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAssociation">>, Input, Options).

%% @doc Associates the specified Amazon Web Services Systems Manager document
%% (SSM document) with the specified instances or targets.
%%
%% When you associate a document with one or more instances using instance
%% IDs or tags, Amazon Web Services Systems Manager Agent (SSM Agent) running
%% on the instance processes the document and configures the instance as
%% specified.
%%
%% If you associate a document with an instance that already has an
%% associated document, the system returns the AssociationAlreadyExists
%% exception.
create_association_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_association_batch(Client, Input, []).
create_association_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAssociationBatch">>, Input, Options).

%% @doc Creates a Amazon Web Services Systems Manager (SSM document).
%%
%% An SSM document defines the actions that Systems Manager performs on your
%% managed instances. For more information about SSM documents, including
%% information about supported schemas, features, and syntax, see Amazon Web
%% Services Systems Manager Documents in the Amazon Web Services Systems
%% Manager User Guide.
create_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_document(Client, Input, []).
create_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDocument">>, Input, Options).

%% @doc Creates a new maintenance window.
%%
%% The value you specify for `Duration' determines the specific end time for
%% the maintenance window based on the time it begins. No maintenance window
%% tasks are permitted to start after the resulting endtime minus the number
%% of hours you specify for `Cutoff'. For example, if the maintenance window
%% starts at 3 PM, the duration is three hours, and the value you specify for
%% `Cutoff' is one hour, no maintenance window tasks can start after 5 PM.
create_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_maintenance_window(Client, Input, []).
create_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMaintenanceWindow">>, Input, Options).

%% @doc Creates a new OpsItem.
%%
%% You must have permission in Identity and Access Management (IAM) to create
%% a new OpsItem. For more information, see Getting started with OpsCenter in
%% the Amazon Web Services Systems Manager User Guide.
%%
%% Operations engineers and IT professionals use Amazon Web Services Systems
%% Manager OpsCenter to view, investigate, and remediate operational issues
%% impacting the performance and health of their Amazon Web Services
%% resources. For more information, see Amazon Web Services Systems Manager
%% OpsCenter in the Amazon Web Services Systems Manager User Guide.
create_ops_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ops_item(Client, Input, []).
create_ops_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOpsItem">>, Input, Options).

%% @doc If you create a new application in Application Manager, Amazon Web
%% Services Systems Manager calls this API operation to specify information
%% about the new application, including the application type.
create_ops_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ops_metadata(Client, Input, []).
create_ops_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOpsMetadata">>, Input, Options).

%% @doc Creates a patch baseline.
%%
%% For information about valid key-value pairs in `PatchFilters' for each
%% supported operating system type, see `PatchFilter'.
create_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_patch_baseline(Client, Input, []).
create_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePatchBaseline">>, Input, Options).

%% @doc A resource data sync helps you view data from multiple sources in a
%% single location.
%%
%% Amazon Web Services Systems Manager offers two types of resource data
%% sync: `SyncToDestination' and `SyncFromSource'.
%%
%% You can configure Systems Manager Inventory to use the `SyncToDestination'
%% type to synchronize Inventory data from multiple Amazon Web Services
%% Regions to a single Amazon Simple Storage Service (Amazon S3) bucket. For
%% more information, see Configuring resource data sync for Inventory in the
%% Amazon Web Services Systems Manager User Guide.
%%
%% You can configure Systems Manager Explorer to use the `SyncFromSource'
%% type to synchronize operational work items (OpsItems) and operational data
%% (OpsData) from multiple Amazon Web Services Regions to a single Amazon S3
%% bucket. This type can synchronize OpsItems and OpsData from multiple
%% Amazon Web Services accounts and Amazon Web Services Regions or
%% `EntireOrganization' by using Organizations. For more information, see
%% Setting up Systems Manager Explorer to display data from multiple accounts
%% and Regions in the Amazon Web Services Systems Manager User Guide.
%%
%% A resource data sync is an asynchronous operation that returns
%% immediately. After a successful initial sync is completed, the system
%% continuously syncs data. To check the status of a sync, use the
%% `ListResourceDataSync'.
%%
%% By default, data isn't encrypted in Amazon S3. We strongly recommend that
%% you enable encryption in Amazon S3 to ensure secure data storage. We also
%% recommend that you secure access to the Amazon S3 bucket by creating a
%% restrictive bucket policy.
create_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource_data_sync(Client, Input, []).
create_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResourceDataSync">>, Input, Options).

%% @doc Deletes an activation.
%%
%% You aren't required to delete an activation. If you delete an activation,
%% you can no longer use it to register additional managed instances.
%% Deleting an activation doesn't de-register managed instances. You must
%% manually de-register managed instances.
delete_activation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_activation(Client, Input, []).
delete_activation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteActivation">>, Input, Options).

%% @doc Disassociates the specified Amazon Web Services Systems Manager
%% document (SSM document) from the specified instance.
%%
%% If you created the association by using the `Targets' parameter, then you
%% must delete the association by using the association ID.
%%
%% When you disassociate a document from an instance, it doesn't change the
%% configuration of the instance. To change the configuration state of an
%% instance after you disassociate a document, you must create a new document
%% with the desired configuration and associate it with the instance.
delete_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_association(Client, Input, []).
delete_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAssociation">>, Input, Options).

%% @doc Deletes the Amazon Web Services Systems Manager document (SSM
%% document) and all instance associations to the document.
%%
%% Before you delete the document, we recommend that you use
%% `DeleteAssociation' to disassociate all instances that are associated with
%% the document.
delete_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_document(Client, Input, []).
delete_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDocument">>, Input, Options).

%% @doc Delete a custom inventory type or the data associated with a custom
%% Inventory type.
%%
%% Deleting a custom inventory type is also referred to as deleting a custom
%% inventory schema.
delete_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inventory(Client, Input, []).
delete_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInventory">>, Input, Options).

%% @doc Deletes a maintenance window.
delete_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_maintenance_window(Client, Input, []).
delete_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMaintenanceWindow">>, Input, Options).

%% @doc Delete OpsMetadata related to an application.
delete_ops_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ops_metadata(Client, Input, []).
delete_ops_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOpsMetadata">>, Input, Options).

%% @doc Delete a parameter from the system.
%%
%% After deleting a parameter, wait for at least 30 seconds to create a
%% parameter with the same name.
delete_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parameter(Client, Input, []).
delete_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParameter">>, Input, Options).

%% @doc Delete a list of parameters.
%%
%% After deleting a parameter, wait for at least 30 seconds to create a
%% parameter with the same name.
delete_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parameters(Client, Input, []).
delete_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParameters">>, Input, Options).

%% @doc Deletes a patch baseline.
delete_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_patch_baseline(Client, Input, []).
delete_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePatchBaseline">>, Input, Options).

%% @doc Deletes a resource data sync configuration.
%%
%% After the configuration is deleted, changes to data on managed instances
%% are no longer synced to or from the target. Deleting a sync configuration
%% doesn't delete data.
delete_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_data_sync(Client, Input, []).
delete_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceDataSync">>, Input, Options).

%% @doc Removes the server or virtual machine from the list of registered
%% servers.
%%
%% You can reregister the instance again at any time. If you don't plan to
%% use Run Command on the server, we suggest uninstalling SSM Agent first.
deregister_managed_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_managed_instance(Client, Input, []).
deregister_managed_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterManagedInstance">>, Input, Options).

%% @doc Removes a patch group from a patch baseline.
deregister_patch_baseline_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_patch_baseline_for_patch_group(Client, Input, []).
deregister_patch_baseline_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterPatchBaselineForPatchGroup">>, Input, Options).

%% @doc Removes a target from a maintenance window.
deregister_target_from_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_target_from_maintenance_window(Client, Input, []).
deregister_target_from_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTargetFromMaintenanceWindow">>, Input, Options).

%% @doc Removes a task from a maintenance window.
deregister_task_from_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_task_from_maintenance_window(Client, Input, []).
deregister_task_from_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTaskFromMaintenanceWindow">>, Input, Options).

%% @doc Describes details about the activation, such as the date and time the
%% activation was created, its expiration date, the Identity and Access
%% Management (IAM) role assigned to the instances in the activation, and the
%% number of instances registered by using this activation.
describe_activations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_activations(Client, Input, []).
describe_activations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActivations">>, Input, Options).

%% @doc Describes the association for the specified target or instance.
%%
%% If you created the association by using the `Targets' parameter, then you
%% must retrieve the association by using the association ID.
describe_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_association(Client, Input, []).
describe_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssociation">>, Input, Options).

%% @doc Views information about a specific execution of a specific
%% association.
describe_association_execution_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_association_execution_targets(Client, Input, []).
describe_association_execution_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssociationExecutionTargets">>, Input, Options).

%% @doc Views all executions for a specific association ID.
describe_association_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_association_executions(Client, Input, []).
describe_association_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssociationExecutions">>, Input, Options).

%% @doc Provides details about all active and terminated Automation
%% executions.
describe_automation_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_automation_executions(Client, Input, []).
describe_automation_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutomationExecutions">>, Input, Options).

%% @doc Information about all active and terminated step executions in an
%% Automation workflow.
describe_automation_step_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_automation_step_executions(Client, Input, []).
describe_automation_step_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutomationStepExecutions">>, Input, Options).

%% @doc Lists all patches eligible to be included in a patch baseline.
describe_available_patches(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_available_patches(Client, Input, []).
describe_available_patches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAvailablePatches">>, Input, Options).

%% @doc Describes the specified Amazon Web Services Systems Manager document
%% (SSM document).
describe_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document(Client, Input, []).
describe_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocument">>, Input, Options).

%% @doc Describes the permissions for a Amazon Web Services Systems Manager
%% document (SSM document).
%%
%% If you created the document, you are the owner. If a document is shared,
%% it can either be shared privately (by specifying a user's Amazon Web
%% Services account ID) or publicly (All).
describe_document_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document_permission(Client, Input, []).
describe_document_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocumentPermission">>, Input, Options).

%% @doc All associations for the instance(s).
describe_effective_instance_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_effective_instance_associations(Client, Input, []).
describe_effective_instance_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEffectiveInstanceAssociations">>, Input, Options).

%% @doc Retrieves the current effective patches (the patch and the approval
%% state) for the specified patch baseline.
%%
%% Applies to patch baselines for Windows only.
describe_effective_patches_for_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_effective_patches_for_patch_baseline(Client, Input, []).
describe_effective_patches_for_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEffectivePatchesForPatchBaseline">>, Input, Options).

%% @doc The status of the associations for the instance(s).
describe_instance_associations_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_associations_status(Client, Input, []).
describe_instance_associations_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceAssociationsStatus">>, Input, Options).

%% @doc Describes one or more of your instances, including information about
%% the operating system platform, the version of SSM Agent installed on the
%% instance, instance status, and so on.
%%
%% If you specify one or more instance IDs, it returns information for those
%% instances. If you don't specify instance IDs, it returns information for
%% all your instances. If you specify an instance ID that isn't valid or an
%% instance that you don't own, you receive an error.
%%
%% The `IamRole' field for this API operation is the Identity and Access
%% Management (IAM) role assigned to on-premises instances. This call doesn't
%% return the IAM role for EC2 instances.
describe_instance_information(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_information(Client, Input, []).
describe_instance_information(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceInformation">>, Input, Options).

%% @doc Retrieves the high-level patch state of one or more instances.
describe_instance_patch_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_patch_states(Client, Input, []).
describe_instance_patch_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancePatchStates">>, Input, Options).

%% @doc Retrieves the high-level patch state for the instances in the
%% specified patch group.
describe_instance_patch_states_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_patch_states_for_patch_group(Client, Input, []).
describe_instance_patch_states_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancePatchStatesForPatchGroup">>, Input, Options).

%% @doc Retrieves information about the patches on the specified instance and
%% their state relative to the patch baseline being used for the instance.
describe_instance_patches(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_patches(Client, Input, []).
describe_instance_patches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancePatches">>, Input, Options).

%% @doc Describes a specific delete inventory operation.
describe_inventory_deletions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inventory_deletions(Client, Input, []).
describe_inventory_deletions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInventoryDeletions">>, Input, Options).

%% @doc Retrieves the individual task executions (one per target) for a
%% particular task run as part of a maintenance window execution.
describe_maintenance_window_execution_task_invocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_execution_task_invocations(Client, Input, []).
describe_maintenance_window_execution_task_invocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowExecutionTaskInvocations">>, Input, Options).

%% @doc For a given maintenance window execution, lists the tasks that were
%% run.
describe_maintenance_window_execution_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_execution_tasks(Client, Input, []).
describe_maintenance_window_execution_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowExecutionTasks">>, Input, Options).

%% @doc Lists the executions of a maintenance window.
%%
%% This includes information about when the maintenance window was scheduled
%% to be active, and information about tasks registered and run with the
%% maintenance window.
describe_maintenance_window_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_executions(Client, Input, []).
describe_maintenance_window_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowExecutions">>, Input, Options).

%% @doc Retrieves information about upcoming executions of a maintenance
%% window.
describe_maintenance_window_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_schedule(Client, Input, []).
describe_maintenance_window_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowSchedule">>, Input, Options).

%% @doc Lists the targets registered with the maintenance window.
describe_maintenance_window_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_targets(Client, Input, []).
describe_maintenance_window_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowTargets">>, Input, Options).

%% @doc Lists the tasks in a maintenance window.
%%
%% For maintenance window tasks without a specified target, you can't supply
%% values for `--max-errors' and `--max-concurrency'. Instead, the system
%% inserts a placeholder value of `1', which may be reported in the response
%% to this command. These values don't affect the running of your task and
%% can be ignored.
describe_maintenance_window_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_tasks(Client, Input, []).
describe_maintenance_window_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowTasks">>, Input, Options).

%% @doc Retrieves the maintenance windows in an Amazon Web Services account.
describe_maintenance_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_windows(Client, Input, []).
describe_maintenance_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindows">>, Input, Options).

%% @doc Retrieves information about the maintenance window targets or tasks
%% that an instance is associated with.
describe_maintenance_windows_for_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_windows_for_target(Client, Input, []).
describe_maintenance_windows_for_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowsForTarget">>, Input, Options).

%% @doc Query a set of OpsItems.
%%
%% You must have permission in Identity and Access Management (IAM) to query
%% a list of OpsItems. For more information, see Getting started with
%% OpsCenter in the Amazon Web Services Systems Manager User Guide.
%%
%% Operations engineers and IT professionals use Amazon Web Services Systems
%% Manager OpsCenter to view, investigate, and remediate operational issues
%% impacting the performance and health of their Amazon Web Services
%% resources. For more information, see OpsCenter in the Amazon Web Services
%% Systems Manager User Guide.
describe_ops_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ops_items(Client, Input, []).
describe_ops_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOpsItems">>, Input, Options).

%% @doc Get information about a parameter.
%%
%% Request results are returned on a best-effort basis. If you specify
%% `MaxResults' in the request, the response includes information up to the
%% limit specified. The number of items returned, however, can be between
%% zero and the value of `MaxResults'. If the service reaches an internal
%% limit while processing the results, it stops the operation and returns the
%% matching values up to that point and a `NextToken'. You can specify the
%% `NextToken' in a subsequent call to get the next set of results.
%%
%% If you change the KMS key alias for the KMS key used to encrypt a
%% parameter, then you must also update the key alias the parameter uses to
%% reference KMS. Otherwise, `DescribeParameters' retrieves whatever the
%% original key alias was referencing.
describe_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_parameters(Client, Input, []).
describe_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeParameters">>, Input, Options).

%% @doc Lists the patch baselines in your Amazon Web Services account.
describe_patch_baselines(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_baselines(Client, Input, []).
describe_patch_baselines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchBaselines">>, Input, Options).

%% @doc Returns high-level aggregated patch compliance state information for
%% a patch group.
describe_patch_group_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_group_state(Client, Input, []).
describe_patch_group_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchGroupState">>, Input, Options).

%% @doc Lists all patch groups that have been registered with patch
%% baselines.
describe_patch_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_groups(Client, Input, []).
describe_patch_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchGroups">>, Input, Options).

%% @doc Lists the properties of available patches organized by product,
%% product family, classification, severity, and other properties of
%% available patches.
%%
%% You can use the reported properties in the filters you specify in requests
%% for operations such as `CreatePatchBaseline', `UpdatePatchBaseline',
%% `DescribeAvailablePatches', and `DescribePatchBaselines'.
%%
%% The following section lists the properties that can be used in filters for
%% each major operating system type:
%%
%% <dl> <dt>AMAZON_LINUX</dt> <dd> Valid properties: `PRODUCT' |
%% `CLASSIFICATION' | `SEVERITY'
%%
%% </dd> <dt>AMAZON_LINUX_2</dt> <dd> Valid properties: `PRODUCT' |
%% `CLASSIFICATION' | `SEVERITY'
%%
%% </dd> <dt>CENTOS</dt> <dd> Valid properties: `PRODUCT' | `CLASSIFICATION'
%% | `SEVERITY'
%%
%% </dd> <dt>DEBIAN</dt> <dd> Valid properties: `PRODUCT' | `PRIORITY'
%%
%% </dd> <dt>MACOS</dt> <dd> Valid properties: `PRODUCT' | `CLASSIFICATION'
%%
%% </dd> <dt>ORACLE_LINUX</dt> <dd> Valid properties: `PRODUCT' |
%% `CLASSIFICATION' | `SEVERITY'
%%
%% </dd> <dt>REDHAT_ENTERPRISE_LINUX</dt> <dd> Valid properties: `PRODUCT' |
%% `CLASSIFICATION' | `SEVERITY'
%%
%% </dd> <dt>SUSE</dt> <dd> Valid properties: `PRODUCT' | `CLASSIFICATION' |
%% `SEVERITY'
%%
%% </dd> <dt>UBUNTU</dt> <dd> Valid properties: `PRODUCT' | `PRIORITY'
%%
%% </dd> <dt>WINDOWS</dt> <dd> Valid properties: `PRODUCT' | `PRODUCT_FAMILY'
%% | `CLASSIFICATION' | `MSRC_SEVERITY'
%%
%% </dd> </dl>
describe_patch_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_properties(Client, Input, []).
describe_patch_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchProperties">>, Input, Options).

%% @doc Retrieves a list of all active sessions (both connected and
%% disconnected) or terminated sessions from the past 30 days.
describe_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_sessions(Client, Input, []).
describe_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSessions">>, Input, Options).

%% @doc Deletes the association between an OpsItem and a related item.
%%
%% For example, this API operation can delete an Incident Manager incident
%% from an OpsItem. Incident Manager is a capability of Amazon Web Services
%% Systems Manager.
disassociate_ops_item_related_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_ops_item_related_item(Client, Input, []).
disassociate_ops_item_related_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateOpsItemRelatedItem">>, Input, Options).

%% @doc Get detailed information about a particular Automation execution.
get_automation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_automation_execution(Client, Input, []).
get_automation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutomationExecution">>, Input, Options).

%% @doc Gets the state of a Amazon Web Services Systems Manager change
%% calendar at the current time or a specified time.
%%
%% If you specify a time, `GetCalendarState' returns the state of the
%% calendar at that specific time, and returns the next time that the change
%% calendar state will transition. If you don't specify a time,
%% `GetCalendarState' uses the current time. Change Calendar entries have two
%% possible states: `OPEN' or `CLOSED'.
%%
%% If you specify more than one calendar in a request, the command returns
%% the status of `OPEN' only if all calendars in the request are open. If one
%% or more calendars in the request are closed, the status returned is
%% `CLOSED'.
%%
%% For more information about Change Calendar, a capability of Amazon Web
%% Services Systems Manager, see Amazon Web Services Systems Manager Change
%% Calendar in the Amazon Web Services Systems Manager User Guide.
get_calendar_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_calendar_state(Client, Input, []).
get_calendar_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCalendarState">>, Input, Options).

%% @doc Returns detailed information about command execution for an
%% invocation or plugin.
%%
%% `GetCommandInvocation' only gives the execution status of a plugin in a
%% document. To get the command execution status on a specific instance, use
%% `ListCommandInvocations'. To get the command execution status across
%% instances, use `ListCommands'.
get_command_invocation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_command_invocation(Client, Input, []).
get_command_invocation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommandInvocation">>, Input, Options).

%% @doc Retrieves the Session Manager connection status for an instance to
%% determine whether it is running and ready to receive Session Manager
%% connections.
get_connection_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connection_status(Client, Input, []).
get_connection_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnectionStatus">>, Input, Options).

%% @doc Retrieves the default patch baseline.
%%
%% Amazon Web Services Systems Manager supports creating multiple default
%% patch baselines. For example, you can create a default patch baseline for
%% each operating system.
%%
%% If you don't specify an operating system value, the default patch baseline
%% for Windows is returned.
get_default_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_default_patch_baseline(Client, Input, []).
get_default_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDefaultPatchBaseline">>, Input, Options).

%% @doc Retrieves the current snapshot for the patch baseline the instance
%% uses.
%%
%% This API is primarily used by the `AWS-RunPatchBaseline' Systems Manager
%% document (SSM document).
%%
%% If you run the command locally, such as with the Command Line Interface
%% (CLI), the system attempts to use your local Amazon Web Services
%% credentials and the operation fails. To avoid this, you can run the
%% command in the Amazon Web Services Systems Manager console. Use Run
%% Command, a capability of Amazon Web Services Systems Manager, with an SSM
%% document that enables you to target an instance with a script or command.
%% For example, run the command using the `AWS-RunShellScript' document or
%% the `AWS-RunPowerShellScript' document.
get_deployable_patch_snapshot_for_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployable_patch_snapshot_for_instance(Client, Input, []).
get_deployable_patch_snapshot_for_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeployablePatchSnapshotForInstance">>, Input, Options).

%% @doc Gets the contents of the specified Amazon Web Services Systems
%% Manager document (SSM document).
get_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document(Client, Input, []).
get_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocument">>, Input, Options).

%% @doc Query inventory information.
%%
%% This includes instance status, such as `Stopped' or `Terminated'.
get_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_inventory(Client, Input, []).
get_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInventory">>, Input, Options).

%% @doc Return a list of inventory type names for the account, or return a
%% list of attribute names for a specific Inventory item type.
get_inventory_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_inventory_schema(Client, Input, []).
get_inventory_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInventorySchema">>, Input, Options).

%% @doc Retrieves a maintenance window.
get_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window(Client, Input, []).
get_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindow">>, Input, Options).

%% @doc Retrieves details about a specific a maintenance window execution.
get_maintenance_window_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_execution(Client, Input, []).
get_maintenance_window_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowExecution">>, Input, Options).

%% @doc Retrieves the details about a specific task run as part of a
%% maintenance window execution.
get_maintenance_window_execution_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_execution_task(Client, Input, []).
get_maintenance_window_execution_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowExecutionTask">>, Input, Options).

%% @doc Retrieves information about a specific task running on a specific
%% target.
get_maintenance_window_execution_task_invocation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_execution_task_invocation(Client, Input, []).
get_maintenance_window_execution_task_invocation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowExecutionTaskInvocation">>, Input, Options).

%% @doc Lists the tasks in a maintenance window.
%%
%% For maintenance window tasks without a specified target, you can't supply
%% values for `--max-errors' and `--max-concurrency'. Instead, the system
%% inserts a placeholder value of `1', which may be reported in the response
%% to this command. These values don't affect the running of your task and
%% can be ignored.
get_maintenance_window_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_task(Client, Input, []).
get_maintenance_window_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowTask">>, Input, Options).

%% @doc Get information about an OpsItem by using the ID.
%%
%% You must have permission in Identity and Access Management (IAM) to view
%% information about an OpsItem. For more information, see Getting started
%% with OpsCenter in the Amazon Web Services Systems Manager User Guide.
%%
%% Operations engineers and IT professionals use Amazon Web Services Systems
%% Manager OpsCenter to view, investigate, and remediate operational issues
%% impacting the performance and health of their Amazon Web Services
%% resources. For more information, see OpsCenter in the Amazon Web Services
%% Systems Manager User Guide.
get_ops_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ops_item(Client, Input, []).
get_ops_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpsItem">>, Input, Options).

%% @doc View operational metadata related to an application in Application
%% Manager.
get_ops_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ops_metadata(Client, Input, []).
get_ops_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpsMetadata">>, Input, Options).

%% @doc View a summary of operations metadata (OpsData) based on specified
%% filters and aggregators.
%%
%% OpsData can include information about Amazon Web Services Systems Manager
%% OpsCenter operational workitems (OpsItems) as well as information about
%% any Amazon Web Services resource or service configured to report OpsData
%% to Amazon Web Services Systems Manager Explorer.
get_ops_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ops_summary(Client, Input, []).
get_ops_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpsSummary">>, Input, Options).

%% @doc Get information about a single parameter by specifying the parameter
%% name.
%%
%% To get information about more than one parameter at a time, use the
%% `GetParameters' operation.
get_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameter(Client, Input, []).
get_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParameter">>, Input, Options).

%% @doc Retrieves the history of all changes to a parameter.
%%
%% If you change the KMS key alias for the KMS key used to encrypt a
%% parameter, then you must also update the key alias the parameter uses to
%% reference KMS. Otherwise, `GetParameterHistory' retrieves whatever the
%% original key alias was referencing.
get_parameter_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameter_history(Client, Input, []).
get_parameter_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParameterHistory">>, Input, Options).

%% @doc Get information about one or more parameters by specifying multiple
%% parameter names.
%%
%% To get information about a single parameter, you can use the
%% `GetParameter' operation instead.
get_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters(Client, Input, []).
get_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParameters">>, Input, Options).

%% @doc Retrieve information about one or more parameters in a specific
%% hierarchy.
%%
%% Request results are returned on a best-effort basis. If you specify
%% `MaxResults' in the request, the response includes information up to the
%% limit specified. The number of items returned, however, can be between
%% zero and the value of `MaxResults'. If the service reaches an internal
%% limit while processing the results, it stops the operation and returns the
%% matching values up to that point and a `NextToken'. You can specify the
%% `NextToken' in a subsequent call to get the next set of results.
get_parameters_by_path(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters_by_path(Client, Input, []).
get_parameters_by_path(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParametersByPath">>, Input, Options).

%% @doc Retrieves information about a patch baseline.
get_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_patch_baseline(Client, Input, []).
get_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPatchBaseline">>, Input, Options).

%% @doc Retrieves the patch baseline that should be used for the specified
%% patch group.
get_patch_baseline_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_patch_baseline_for_patch_group(Client, Input, []).
get_patch_baseline_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPatchBaselineForPatchGroup">>, Input, Options).

%% @doc `ServiceSetting' is an account-level setting for an Amazon Web
%% Services service.
%%
%% This setting defines how a user interacts with or uses a service or a
%% feature of a service. For example, if an Amazon Web Services service
%% charges money to the account based on feature or service usage, then the
%% Amazon Web Services service team might create a default setting of
%% `false'. This means the user can't use this feature unless they change the
%% setting to `true' and intentionally opt in for a paid feature.
%%
%% Services map a `SettingId' object to a setting value. Amazon Web Services
%% services teams define the default value for a `SettingId'. You can't
%% create a new `SettingId', but you can overwrite the default value if you
%% have the `ssm:UpdateServiceSetting' permission for the setting. Use the
%% `UpdateServiceSetting' API operation to change the default setting. Or use
%% the `ResetServiceSetting' to change the value back to the original value
%% defined by the Amazon Web Services service team.
%%
%% Query the current service setting for the Amazon Web Services account.
get_service_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_setting(Client, Input, []).
get_service_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceSetting">>, Input, Options).

%% @doc A parameter label is a user-defined alias to help you manage
%% different versions of a parameter.
%%
%% When you modify a parameter, Amazon Web Services Systems Manager
%% automatically saves a new version and increments the version number by
%% one. A label can help you remember the purpose of a parameter when there
%% are multiple versions.
%%
%% Parameter labels have the following requirements and restrictions.
%%
%% <ul> <li> A version of a parameter can have a maximum of 10 labels.
%%
%% </li> <li> You can't attach the same label to different versions of the
%% same parameter. For example, if version 1 has the label Production, then
%% you can't attach Production to version 2.
%%
%% </li> <li> You can move a label from one version of a parameter to
%% another.
%%
%% </li> <li> You can't create a label when you create a new parameter. You
%% must attach a label to a specific version of a parameter.
%%
%% </li> <li> If you no longer want to use a parameter label, then you can
%% either delete it or move it to a different version of a parameter.
%%
%% </li> <li> A label can have a maximum of 100 characters.
%%
%% </li> <li> Labels can contain letters (case sensitive), numbers, periods
%% (.), hyphens (-), or underscores (_).
%%
%% </li> <li> Labels can't begin with a number, "`aws'" or "`ssm'" (not case
%% sensitive). If a label fails to meet these requirements, then the label
%% isn't associated with a parameter and the system displays it in the list
%% of InvalidLabels.
%%
%% </li> </ul>
label_parameter_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    label_parameter_version(Client, Input, []).
label_parameter_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LabelParameterVersion">>, Input, Options).

%% @doc Retrieves all versions of an association for a specific association
%% ID.
list_association_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_association_versions(Client, Input, []).
list_association_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociationVersions">>, Input, Options).

%% @doc Returns all State Manager associations in the current Amazon Web
%% Services account and Amazon Web Services Region.
%%
%% You can limit the results to a specific State Manager association document
%% or instance by specifying a filter. State Manager is a capability of
%% Amazon Web Services Systems Manager.
list_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associations(Client, Input, []).
list_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociations">>, Input, Options).

%% @doc An invocation is copy of a command sent to a specific instance.
%%
%% A command can apply to one or more instances. A command invocation applies
%% to one instance. For example, if a user runs `SendCommand' against three
%% instances, then a command invocation is created for each requested
%% instance ID. `ListCommandInvocations' provide status about command
%% execution.
list_command_invocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_command_invocations(Client, Input, []).
list_command_invocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCommandInvocations">>, Input, Options).

%% @doc Lists the commands requested by users of the Amazon Web Services
%% account.
list_commands(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_commands(Client, Input, []).
list_commands(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCommands">>, Input, Options).

%% @doc For a specified resource ID, this API operation returns a list of
%% compliance statuses for different resource types.
%%
%% Currently, you can only specify one resource ID per call. List results
%% depend on the criteria specified in the filter.
list_compliance_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compliance_items(Client, Input, []).
list_compliance_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComplianceItems">>, Input, Options).

%% @doc Returns a summary count of compliant and non-compliant resources for
%% a compliance type.
%%
%% For example, this call can return State Manager associations, patches, or
%% custom compliance types according to the filter criteria that you specify.
list_compliance_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compliance_summaries(Client, Input, []).
list_compliance_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComplianceSummaries">>, Input, Options).

%% @doc Information about approval reviews for a version of a change template
%% in Change Manager.
list_document_metadata_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_metadata_history(Client, Input, []).
list_document_metadata_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentMetadataHistory">>, Input, Options).

%% @doc List all versions for a document.
list_document_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_versions(Client, Input, []).
list_document_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentVersions">>, Input, Options).

%% @doc Returns all Systems Manager (SSM) documents in the current Amazon Web
%% Services account and Amazon Web Services Region.
%%
%% You can limit the results of this request by using a filter.
list_documents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_documents(Client, Input, []).
list_documents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocuments">>, Input, Options).

%% @doc A list of inventory items returned by the request.
list_inventory_entries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inventory_entries(Client, Input, []).
list_inventory_entries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInventoryEntries">>, Input, Options).

%% @doc Returns a list of all OpsItem events in the current Amazon Web
%% Services Region and Amazon Web Services account.
%%
%% You can limit the results to events associated with specific OpsItems by
%% specifying a filter.
list_ops_item_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ops_item_events(Client, Input, []).
list_ops_item_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpsItemEvents">>, Input, Options).

%% @doc Lists all related-item resources associated with a Systems Manager
%% OpsCenter OpsItem.
%%
%% OpsCenter is a capability of Amazon Web Services Systems Manager.
list_ops_item_related_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ops_item_related_items(Client, Input, []).
list_ops_item_related_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpsItemRelatedItems">>, Input, Options).

%% @doc Amazon Web Services Systems Manager calls this API operation when
%% displaying all Application Manager OpsMetadata objects or blobs.
list_ops_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ops_metadata(Client, Input, []).
list_ops_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpsMetadata">>, Input, Options).

%% @doc Returns a resource-level summary count.
%%
%% The summary includes information about compliant and non-compliant
%% statuses and detailed compliance-item severity counts, according to the
%% filter criteria you specify.
list_resource_compliance_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_compliance_summaries(Client, Input, []).
list_resource_compliance_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceComplianceSummaries">>, Input, Options).

%% @doc Lists your resource data sync configurations.
%%
%% Includes information about the last time a sync attempted to start, the
%% last sync status, and the last time a sync successfully completed.
%%
%% The number of sync configurations might be too large to return using a
%% single call to `ListResourceDataSync'. You can limit the number of sync
%% configurations returned by using the `MaxResults' parameter. To determine
%% whether there are more sync configurations to list, check the value of
%% `NextToken' in the output. If there are more sync configurations to list,
%% you can request them by specifying the `NextToken' returned in the call to
%% the parameter of a subsequent call.
list_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_data_sync(Client, Input, []).
list_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceDataSync">>, Input, Options).

%% @doc Returns a list of the tags assigned to the specified resource.
%%
%% For information about the ID format for each supported resource type, see
%% `AddTagsToResource'.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Shares a Amazon Web Services Systems Manager document (SSM
%% document)publicly or privately.
%%
%% If you share a document privately, you must specify the Amazon Web
%% Services user account IDs for those people who can use the document. If
%% you share a document publicly, you must specify All as the account ID.
modify_document_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_document_permission(Client, Input, []).
modify_document_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDocumentPermission">>, Input, Options).

%% @doc Registers a compliance type and other compliance details on a
%% designated resource.
%%
%% This operation lets you register custom compliance details with a
%% resource. This call overwrites existing compliance information on the
%% resource, so you must provide a full list of compliance items each time
%% that you send the request.
%%
%% ComplianceType can be one of the following:
%%
%% <ul> <li> ExecutionId: The execution ID when the patch, association, or
%% custom compliance item was applied.
%%
%% </li> <li> ExecutionType: Specify patch, association, or Custom:`string'.
%%
%% </li> <li> ExecutionTime. The time the patch, association, or custom
%% compliance item was applied to the instance.
%%
%% </li> <li> Id: The patch, association, or custom compliance ID.
%%
%% </li> <li> Title: A title.
%%
%% </li> <li> Status: The status of the compliance item. For example,
%% `approved' for patches, or `Failed' for associations.
%%
%% </li> <li> Severity: A patch severity. For example, `critical'.
%%
%% </li> <li> DocumentName: An SSM document name. For example,
%% `AWS-RunPatchBaseline'.
%%
%% </li> <li> DocumentVersion: An SSM document version number. For example,
%% 4.
%%
%% </li> <li> Classification: A patch classification. For example, `security
%% updates'.
%%
%% </li> <li> PatchBaselineId: A patch baseline ID.
%%
%% </li> <li> PatchSeverity: A patch severity. For example, `Critical'.
%%
%% </li> <li> PatchState: A patch state. For example,
%% `InstancesWithFailedPatches'.
%%
%% </li> <li> PatchGroup: The name of a patch group.
%%
%% </li> <li> InstalledTime: The time the association, patch, or custom
%% compliance item was applied to the resource. Specify the time by using the
%% following format: yyyy-MM-dd'T'HH:mm:ss'Z'
%%
%% </li> </ul>
put_compliance_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_compliance_items(Client, Input, []).
put_compliance_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutComplianceItems">>, Input, Options).

%% @doc Bulk update custom inventory items on one more instance.
%%
%% The request adds an inventory item, if it doesn't already exist, or
%% updates an inventory item, if it does exist.
put_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_inventory(Client, Input, []).
put_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInventory">>, Input, Options).

%% @doc Add a parameter to the system.
put_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_parameter(Client, Input, []).
put_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutParameter">>, Input, Options).

%% @doc Defines the default patch baseline for the relevant operating system.
%%
%% To reset the Amazon Web Services-predefined patch baseline as the default,
%% specify the full patch baseline Amazon Resource Name (ARN) as the baseline
%% ID value. For example, for CentOS, specify
%% `arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed'
%% instead of `pb-0574b43a65ea646ed'.
register_default_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_default_patch_baseline(Client, Input, []).
register_default_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDefaultPatchBaseline">>, Input, Options).

%% @doc Registers a patch baseline for a patch group.
register_patch_baseline_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_patch_baseline_for_patch_group(Client, Input, []).
register_patch_baseline_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterPatchBaselineForPatchGroup">>, Input, Options).

%% @doc Registers a target with a maintenance window.
register_target_with_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_target_with_maintenance_window(Client, Input, []).
register_target_with_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTargetWithMaintenanceWindow">>, Input, Options).

%% @doc Adds a new task to a maintenance window.
register_task_with_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_task_with_maintenance_window(Client, Input, []).
register_task_with_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTaskWithMaintenanceWindow">>, Input, Options).

%% @doc Removes tag keys from the specified resource.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc `ServiceSetting' is an account-level setting for an Amazon Web
%% Services service.
%%
%% This setting defines how a user interacts with or uses a service or a
%% feature of a service. For example, if an Amazon Web Services service
%% charges money to the account based on feature or service usage, then the
%% Amazon Web Services service team might create a default setting of
%% "false". This means the user can't use this feature unless they change the
%% setting to "true" and intentionally opt in for a paid feature.
%%
%% Services map a `SettingId' object to a setting value. Amazon Web Services
%% services teams define the default value for a `SettingId'. You can't
%% create a new `SettingId', but you can overwrite the default value if you
%% have the `ssm:UpdateServiceSetting' permission for the setting. Use the
%% `GetServiceSetting' API operation to view the current value. Use the
%% `UpdateServiceSetting' API operation to change the default setting.
%%
%% Reset the service setting for the account to the default value as
%% provisioned by the Amazon Web Services service team.
reset_service_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_service_setting(Client, Input, []).
reset_service_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetServiceSetting">>, Input, Options).

%% @doc Reconnects a session to an instance after it has been disconnected.
%%
%% Connections can be resumed for disconnected sessions, but not terminated
%% sessions.
%%
%% This command is primarily for use by client machines to automatically
%% reconnect during intermittent network issues. It isn't intended for any
%% other use.
resume_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_session(Client, Input, []).
resume_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeSession">>, Input, Options).

%% @doc Sends a signal to an Automation execution to change the current
%% behavior or status of the execution.
send_automation_signal(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_automation_signal(Client, Input, []).
send_automation_signal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendAutomationSignal">>, Input, Options).

%% @doc Runs commands on one or more managed instances.
send_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_command(Client, Input, []).
send_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendCommand">>, Input, Options).

%% @doc Runs an association immediately and only one time.
%%
%% This operation can be helpful when troubleshooting associations.
start_associations_once(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_associations_once(Client, Input, []).
start_associations_once(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAssociationsOnce">>, Input, Options).

%% @doc Initiates execution of an Automation runbook.
start_automation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_automation_execution(Client, Input, []).
start_automation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAutomationExecution">>, Input, Options).

%% @doc Creates a change request for Change Manager.
%%
%% The Automation runbooks specified in the change request run only after all
%% required approvals for the change request have been received.
start_change_request_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_change_request_execution(Client, Input, []).
start_change_request_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartChangeRequestExecution">>, Input, Options).

%% @doc Initiates a connection to a target (for example, an instance) for a
%% Session Manager session.
%%
%% Returns a URL and token that can be used to open a WebSocket connection
%% for sending input and receiving outputs.
%%
%% Amazon Web Services CLI usage: `start-session' is an interactive command
%% that requires the Session Manager plugin to be installed on the client
%% machine making the call. For information, see Install the Session Manager
%% plugin for the Amazon Web Services CLI in the Amazon Web Services Systems
%% Manager User Guide.
%%
%% Amazon Web Services Tools for PowerShell usage: Start-SSMSession isn't
%% currently supported by Amazon Web Services Tools for PowerShell on Windows
%% local machines.
start_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_session(Client, Input, []).
start_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSession">>, Input, Options).

%% @doc Stop an Automation that is currently running.
stop_automation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_automation_execution(Client, Input, []).
stop_automation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAutomationExecution">>, Input, Options).

%% @doc Permanently ends a session and closes the data connection between the
%% Session Manager client and SSM Agent on the instance.
%%
%% A terminated session isn't be resumed.
terminate_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_session(Client, Input, []).
terminate_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateSession">>, Input, Options).

%% @doc Remove a label or labels from a parameter.
unlabel_parameter_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    unlabel_parameter_version(Client, Input, []).
unlabel_parameter_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnlabelParameterVersion">>, Input, Options).

%% @doc Updates an association.
%%
%% You can update the association name and version, the document version,
%% schedule, parameters, and Amazon Simple Storage Service (Amazon S3)
%% output.
%%
%% In order to call this API operation, your Identity and Access Management
%% (IAM) user account, group, or role must be configured with permission to
%% call the `DescribeAssociation' API operation. If you don't have permission
%% to call `DescribeAssociation', then you receive the following error: `An
%% error occurred (AccessDeniedException) when calling the UpdateAssociation
%% operation: User: <user_arn> isn't authorized to perform:
%% ssm:DescribeAssociation on resource: <resource_arn>'
%%
%% When you update an association, the association immediately runs against
%% the specified targets.
update_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_association(Client, Input, []).
update_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAssociation">>, Input, Options).

%% @doc Updates the status of the Amazon Web Services Systems Manager
%% document (SSM document) associated with the specified instance.
%%
%% `UpdateAssociationStatus' is primarily used by the Amazon Web Services
%% Systems Manager Agent (SSM Agent) to report status updates about your
%% associations and is only used for associations created with the
%% `InstanceId' legacy parameter.
update_association_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_association_status(Client, Input, []).
update_association_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAssociationStatus">>, Input, Options).

%% @doc Updates one or more values for an SSM document.
update_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_document(Client, Input, []).
update_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDocument">>, Input, Options).

%% @doc Set the default version of a document.
update_document_default_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_document_default_version(Client, Input, []).
update_document_default_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDocumentDefaultVersion">>, Input, Options).

%% @doc Updates information related to approval reviews for a specific
%% version of a change template in Change Manager.
update_document_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_document_metadata(Client, Input, []).
update_document_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDocumentMetadata">>, Input, Options).

%% @doc Updates an existing maintenance window.
%%
%% Only specified parameters are modified.
%%
%% The value you specify for `Duration' determines the specific end time for
%% the maintenance window based on the time it begins. No maintenance window
%% tasks are permitted to start after the resulting endtime minus the number
%% of hours you specify for `Cutoff'. For example, if the maintenance window
%% starts at 3 PM, the duration is three hours, and the value you specify for
%% `Cutoff' is one hour, no maintenance window tasks can start after 5 PM.
update_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_window(Client, Input, []).
update_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceWindow">>, Input, Options).

%% @doc Modifies the target of an existing maintenance window.
%%
%% You can change the following:
%%
%% <ul> <li> Name
%%
%% </li> <li> Description
%%
%% </li> <li> Owner
%%
%% </li> <li> IDs for an ID target
%%
%% </li> <li> Tags for a Tag target
%%
%% </li> <li> From any supported tag type to another. The three supported tag
%% types are ID target, Tag target, and resource group. For more information,
%% see `Target'.
%%
%% </li> </ul> If a parameter is null, then the corresponding field isn't
%% modified.
update_maintenance_window_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_window_target(Client, Input, []).
update_maintenance_window_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceWindowTarget">>, Input, Options).

%% @doc Modifies a task assigned to a maintenance window.
%%
%% You can't change the task type, but you can change the following values:
%%
%% <ul> <li> `TaskARN'. For example, you can change a `RUN_COMMAND' task from
%% `AWS-RunPowerShellScript' to `AWS-RunShellScript'.
%%
%% </li> <li> `ServiceRoleArn'
%%
%% </li> <li> `TaskInvocationParameters'
%%
%% </li> <li> `Priority'
%%
%% </li> <li> `MaxConcurrency'
%%
%% </li> <li> `MaxErrors'
%%
%% </li> </ul> One or more targets must be specified for maintenance window
%% Run Command-type tasks. Depending on the task, targets are optional for
%% other maintenance window task types (Automation, Lambda, and Step
%% Functions). For more information about running tasks that don't specify
%% targets, see Registering maintenance window tasks without targets in the
%% Amazon Web Services Systems Manager User Guide.
%%
%% If the value for a parameter in `UpdateMaintenanceWindowTask' is null,
%% then the corresponding field isn't modified. If you set `Replace' to true,
%% then all fields required by the `RegisterTaskWithMaintenanceWindow'
%% operation are required for this request. Optional fields that aren't
%% specified are set to null.
%%
%% When you update a maintenance window task that has options specified in
%% `TaskInvocationParameters', you must provide again all the
%% `TaskInvocationParameters' values that you want to retain. The values you
%% don't specify again are removed. For example, suppose that when you
%% registered a Run Command task, you specified `TaskInvocationParameters'
%% values for `Comment', `NotificationConfig', and `OutputS3BucketName'. If
%% you update the maintenance window task and specify only a different
%% `OutputS3BucketName' value, the values for `Comment' and
%% `NotificationConfig' are removed.
update_maintenance_window_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_window_task(Client, Input, []).
update_maintenance_window_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceWindowTask">>, Input, Options).

%% @doc Changes the Identity and Access Management (IAM) role that is
%% assigned to the on-premises instance or virtual machines (VM).
%%
%% IAM roles are first assigned to these hybrid instances during the
%% activation process. For more information, see `CreateActivation'.
update_managed_instance_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_managed_instance_role(Client, Input, []).
update_managed_instance_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateManagedInstanceRole">>, Input, Options).

%% @doc Edit or change an OpsItem.
%%
%% You must have permission in Identity and Access Management (IAM) to update
%% an OpsItem. For more information, see Getting started with OpsCenter in
%% the Amazon Web Services Systems Manager User Guide.
%%
%% Operations engineers and IT professionals use Amazon Web Services Systems
%% Manager OpsCenter to view, investigate, and remediate operational issues
%% impacting the performance and health of their Amazon Web Services
%% resources. For more information, see OpsCenter in the Amazon Web Services
%% Systems Manager User Guide.
update_ops_item(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ops_item(Client, Input, []).
update_ops_item(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOpsItem">>, Input, Options).

%% @doc Amazon Web Services Systems Manager calls this API operation when you
%% edit OpsMetadata in Application Manager.
update_ops_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ops_metadata(Client, Input, []).
update_ops_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOpsMetadata">>, Input, Options).

%% @doc Modifies an existing patch baseline.
%%
%% Fields not specified in the request are left unchanged.
%%
%% For information about valid key-value pairs in `PatchFilters' for each
%% supported operating system type, see `PatchFilter'.
update_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_patch_baseline(Client, Input, []).
update_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePatchBaseline">>, Input, Options).

%% @doc Update a resource data sync.
%%
%% After you create a resource data sync for a Region, you can't change the
%% account options for that sync. For example, if you create a sync in the
%% us-east-2 (Ohio) Region and you choose the `Include only the current
%% account' option, you can't edit that sync later and choose the `Include
%% all accounts from my Organizations configuration' option. Instead, you
%% must delete the first resource data sync, and create a new one.
%%
%% This API operation only supports a resource data sync that was created
%% with a SyncFromSource `SyncType'.
update_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_resource_data_sync(Client, Input, []).
update_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateResourceDataSync">>, Input, Options).

%% @doc `ServiceSetting' is an account-level setting for an Amazon Web
%% Services service.
%%
%% This setting defines how a user interacts with or uses a service or a
%% feature of a service. For example, if an Amazon Web Services service
%% charges money to the account based on feature or service usage, then the
%% Amazon Web Services service team might create a default setting of
%% "false". This means the user can't use this feature unless they change the
%% setting to "true" and intentionally opt in for a paid feature.
%%
%% Services map a `SettingId' object to a setting value. Amazon Web Services
%% services teams define the default value for a `SettingId'. You can't
%% create a new `SettingId', but you can overwrite the default value if you
%% have the `ssm:UpdateServiceSetting' permission for the setting. Use the
%% `GetServiceSetting' API operation to view the current value. Or, use the
%% `ResetServiceSetting' to change the value back to the original value
%% defined by the Amazon Web Services service team.
%%
%% Update the service setting for the account.
update_service_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_setting(Client, Input, []).
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
