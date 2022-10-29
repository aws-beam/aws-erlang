%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc CloudFormation
%%
%% CloudFormation allows you to create and manage Amazon Web Services
%% infrastructure deployments predictably and repeatedly.
%%
%% You can use CloudFormation to leverage Amazon Web Services products, such
%% as Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple
%% Notification Service, Elastic Load Balancing, and Auto Scaling to build
%% highly reliable, highly scalable, cost-effective applications without
%% creating or configuring the underlying Amazon Web Services infrastructure.
%%
%% With CloudFormation, you declare all your resources and dependencies in a
%% template file. The template defines a collection of resources as a single
%% unit called a stack. CloudFormation creates and deletes all member
%% resources of the stack together and manages all dependencies between the
%% resources for you.
%%
%% For more information about CloudFormation, see the CloudFormation product
%% page.
%%
%% CloudFormation makes use of other Amazon Web Services products. If you
%% need additional technical information about a specific Amazon Web Services
%% product, you can find the product's technical documentation at
%% `docs.aws.amazon.com' .
-module(aws_cloudformation).

-export([activate_type/2,
         activate_type/3,
         batch_describe_type_configurations/2,
         batch_describe_type_configurations/3,
         cancel_update_stack/2,
         cancel_update_stack/3,
         continue_update_rollback/2,
         continue_update_rollback/3,
         create_change_set/2,
         create_change_set/3,
         create_stack/2,
         create_stack/3,
         create_stack_instances/2,
         create_stack_instances/3,
         create_stack_set/2,
         create_stack_set/3,
         deactivate_type/2,
         deactivate_type/3,
         delete_change_set/2,
         delete_change_set/3,
         delete_stack/2,
         delete_stack/3,
         delete_stack_instances/2,
         delete_stack_instances/3,
         delete_stack_set/2,
         delete_stack_set/3,
         deregister_type/2,
         deregister_type/3,
         describe_account_limits/2,
         describe_account_limits/3,
         describe_change_set/2,
         describe_change_set/3,
         describe_change_set_hooks/2,
         describe_change_set_hooks/3,
         describe_publisher/2,
         describe_publisher/3,
         describe_stack_drift_detection_status/2,
         describe_stack_drift_detection_status/3,
         describe_stack_events/2,
         describe_stack_events/3,
         describe_stack_instance/2,
         describe_stack_instance/3,
         describe_stack_resource/2,
         describe_stack_resource/3,
         describe_stack_resource_drifts/2,
         describe_stack_resource_drifts/3,
         describe_stack_resources/2,
         describe_stack_resources/3,
         describe_stack_set/2,
         describe_stack_set/3,
         describe_stack_set_operation/2,
         describe_stack_set_operation/3,
         describe_stacks/2,
         describe_stacks/3,
         describe_type/2,
         describe_type/3,
         describe_type_registration/2,
         describe_type_registration/3,
         detect_stack_drift/2,
         detect_stack_drift/3,
         detect_stack_resource_drift/2,
         detect_stack_resource_drift/3,
         detect_stack_set_drift/2,
         detect_stack_set_drift/3,
         estimate_template_cost/2,
         estimate_template_cost/3,
         execute_change_set/2,
         execute_change_set/3,
         get_stack_policy/2,
         get_stack_policy/3,
         get_template/2,
         get_template/3,
         get_template_summary/2,
         get_template_summary/3,
         import_stacks_to_stack_set/2,
         import_stacks_to_stack_set/3,
         list_change_sets/2,
         list_change_sets/3,
         list_exports/2,
         list_exports/3,
         list_imports/2,
         list_imports/3,
         list_stack_instances/2,
         list_stack_instances/3,
         list_stack_resources/2,
         list_stack_resources/3,
         list_stack_set_operation_results/2,
         list_stack_set_operation_results/3,
         list_stack_set_operations/2,
         list_stack_set_operations/3,
         list_stack_sets/2,
         list_stack_sets/3,
         list_stacks/2,
         list_stacks/3,
         list_type_registrations/2,
         list_type_registrations/3,
         list_type_versions/2,
         list_type_versions/3,
         list_types/2,
         list_types/3,
         publish_type/2,
         publish_type/3,
         record_handler_progress/2,
         record_handler_progress/3,
         register_publisher/2,
         register_publisher/3,
         register_type/2,
         register_type/3,
         rollback_stack/2,
         rollback_stack/3,
         set_stack_policy/2,
         set_stack_policy/3,
         set_type_configuration/2,
         set_type_configuration/3,
         set_type_default_version/2,
         set_type_default_version/3,
         signal_resource/2,
         signal_resource/3,
         stop_stack_set_operation/2,
         stop_stack_set_operation/3,
         test_type/2,
         test_type/3,
         update_stack/2,
         update_stack/3,
         update_stack_instances/2,
         update_stack_instances/3,
         update_stack_set/2,
         update_stack_set/3,
         update_termination_protection/2,
         update_termination_protection/3,
         validate_template/2,
         validate_template/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Activates a public third-party extension, making it available for use
%% in stack templates.
%%
%% For more information, see Using public extensions in the CloudFormation
%% User Guide.
%%
%% Once you have activated a public third-party extension in your account and
%% region, use SetTypeConfiguration to specify configuration properties for
%% the extension. For more information, see Configuring extensions at the
%% account level in the CloudFormation User Guide.
activate_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_type(Client, Input, []).
activate_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivateType">>, Input, Options).

%% @doc Returns configuration data for the specified CloudFormation
%% extensions, from the CloudFormation registry for the account and region.
%%
%% For more information, see Configuring extensions at the account level in
%% the CloudFormation User Guide.
batch_describe_type_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_describe_type_configurations(Client, Input, []).
batch_describe_type_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDescribeTypeConfigurations">>, Input, Options).

%% @doc Cancels an update on the specified stack.
%%
%% If the call completes successfully, the stack rolls back the update and
%% reverts to the previous stack configuration.
%%
%% You can cancel only stacks that are in the `UPDATE_IN_PROGRESS' state.
cancel_update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_update_stack(Client, Input, []).
cancel_update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelUpdateStack">>, Input, Options).

%% @doc For a specified stack that's in the `UPDATE_ROLLBACK_FAILED' state,
%% continues rolling it back to the `UPDATE_ROLLBACK_COMPLETE' state.
%%
%% Depending on the cause of the failure, you can manually fix the error and
%% continue the rollback. By continuing the rollback, you can return your
%% stack to a working state (the `UPDATE_ROLLBACK_COMPLETE' state), and then
%% try to update the stack again.
%%
%% A stack goes into the `UPDATE_ROLLBACK_FAILED' state when CloudFormation
%% can't roll back all changes after a failed stack update. For example, you
%% might have a stack that's rolling back to an old database instance that
%% was deleted outside of CloudFormation. Because CloudFormation doesn't know
%% the database was deleted, it assumes that the database instance still
%% exists and attempts to roll back to it, causing the update rollback to
%% fail.
continue_update_rollback(Client, Input)
  when is_map(Client), is_map(Input) ->
    continue_update_rollback(Client, Input, []).
continue_update_rollback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ContinueUpdateRollback">>, Input, Options).

%% @doc Creates a list of changes that will be applied to a stack so that you
%% can review the changes before executing them.
%%
%% You can create a change set for a stack that doesn't exist or an existing
%% stack. If you create a change set for a stack that doesn't exist, the
%% change set shows all of the resources that CloudFormation will create. If
%% you create a change set for an existing stack, CloudFormation compares the
%% stack's information with the information that you submit in the change set
%% and lists the differences. Use change sets to understand which resources
%% CloudFormation will create or change, and how it will change resources in
%% an existing stack, before you create or update a stack.
%%
%% To create a change set for a stack that doesn't exist, for the
%% `ChangeSetType' parameter, specify `CREATE'. To create a change set for an
%% existing stack, specify `UPDATE' for the `ChangeSetType' parameter. To
%% create a change set for an import operation, specify `IMPORT' for the
%% `ChangeSetType' parameter. After the `CreateChangeSet' call successfully
%% completes, CloudFormation starts creating the change set. To check the
%% status of the change set or to review it, use the `DescribeChangeSet'
%% action.
%%
%% When you are satisfied with the changes the change set will make, execute
%% the change set by using the `ExecuteChangeSet' action. CloudFormation
%% doesn't make changes until you execute the change set.
%%
%% To create a change set for the entire stack hierarchy, set
%% `IncludeNestedStacks' to `True'.
create_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_change_set(Client, Input, []).
create_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateChangeSet">>, Input, Options).

%% @doc Creates a stack as specified in the template.
%%
%% After the call completes successfully, the stack creation starts. You can
%% check the status of the stack through the `DescribeStacks'operation.
create_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack(Client, Input, []).
create_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStack">>, Input, Options).

%% @doc Creates stack instances for the specified accounts, within the
%% specified Amazon Web Services Regions.
%%
%% A stack instance refers to a stack in a specific account and Region. You
%% must specify at least one value for either `Accounts' or
%% `DeploymentTargets', and you must specify at least one value for
%% `Regions'.
create_stack_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack_instances(Client, Input, []).
create_stack_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStackInstances">>, Input, Options).

%% @doc Creates a stack set.
create_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack_set(Client, Input, []).
create_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStackSet">>, Input, Options).

%% @doc Deactivates a public extension that was previously activated in this
%% account and region.
%%
%% Once deactivated, an extension can't be used in any CloudFormation
%% operation. This includes stack update operations where the stack template
%% includes the extension, even if no updates are being made to the
%% extension. In addition, deactivated extensions aren't automatically
%% updated if a new version of the extension is released.
deactivate_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_type(Client, Input, []).
deactivate_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivateType">>, Input, Options).

%% @doc Deletes the specified change set.
%%
%% Deleting change sets ensures that no one executes the wrong change set.
%%
%% If the call successfully completes, CloudFormation successfully deleted
%% the change set.
%%
%% If `IncludeNestedStacks' specifies `True' during the creation of the
%% nested change set, then `DeleteChangeSet' will delete all change sets that
%% belong to the stacks hierarchy and will also delete all change sets for
%% nested stacks with the status of `REVIEW_IN_PROGRESS'.
delete_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_change_set(Client, Input, []).
delete_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteChangeSet">>, Input, Options).

%% @doc Deletes a specified stack.
%%
%% Once the call completes successfully, stack deletion starts. Deleted
%% stacks don't show up in the `DescribeStacks' operation if the deletion has
%% been completed successfully.
delete_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack(Client, Input, []).
delete_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStack">>, Input, Options).

%% @doc Deletes stack instances for the specified accounts, in the specified
%% Amazon Web Services Regions.
delete_stack_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack_instances(Client, Input, []).
delete_stack_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStackInstances">>, Input, Options).

%% @doc Deletes a stack set.
%%
%% Before you can delete a stack set, all its member stack instances must be
%% deleted. For more information about how to complete this, see
%% `DeleteStackInstances'.
delete_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack_set(Client, Input, []).
delete_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStackSet">>, Input, Options).

%% @doc Marks an extension or extension version as `DEPRECATED' in the
%% CloudFormation registry, removing it from active use.
%%
%% Deprecated extensions or extension versions cannot be used in
%% CloudFormation operations.
%%
%% To deregister an entire extension, you must individually deregister all
%% active versions of that extension. If an extension has only a single
%% active version, deregistering that version results in the extension itself
%% being deregistered and marked as deprecated in the registry.
%%
%% You can't deregister the default version of an extension if there are
%% other active version of that extension. If you do deregister the default
%% version of an extension, the extension type itself is deregistered as well
%% and marked as deprecated.
%%
%% To view the deprecation status of an extension or extension version, use
%% DescribeType.
deregister_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_type(Client, Input, []).
deregister_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterType">>, Input, Options).

%% @doc Retrieves your account's CloudFormation limits, such as the maximum
%% number of stacks that you can create in your account.
%%
%% For more information about account limits, see CloudFormation Quotas in
%% the CloudFormation User Guide.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Returns the inputs for the change set and a list of changes that
%% CloudFormation will make if you execute the change set.
%%
%% For more information, see Updating Stacks Using Change Sets in the
%% CloudFormation User Guide.
describe_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_change_set(Client, Input, []).
describe_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeChangeSet">>, Input, Options).

%% @doc Returns hook-related information for the change set and a list of
%% changes that CloudFormation makes when you run the change set.
describe_change_set_hooks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_change_set_hooks(Client, Input, []).
describe_change_set_hooks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeChangeSetHooks">>, Input, Options).

%% @doc Returns information about a CloudFormation extension publisher.
%%
%% If you don't supply a `PublisherId', and you have registered as an
%% extension publisher, `DescribePublisher' returns information about your
%% own publisher account.
%%
%% For more information about registering as a publisher, see:
%%
%% <ul> <li> RegisterPublisher
%%
%% </li> <li> Publishing extensions to make them available for public use in
%% the CloudFormation CLI User Guide
%%
%% </li> </ul>
describe_publisher(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_publisher(Client, Input, []).
describe_publisher(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePublisher">>, Input, Options).

%% @doc Returns information about a stack drift detection operation.
%%
%% A stack drift detection operation detects whether a stack's actual
%% configuration differs, or has drifted, from it's expected configuration,
%% as defined in the stack template and any values specified as template
%% parameters. A stack is considered to have drifted if one or more of its
%% resources have drifted. For more information about stack and resource
%% drift, see Detecting Unregulated Configuration Changes to Stacks and
%% Resources.
%%
%% Use `DetectStackDrift' to initiate a stack drift detection operation.
%% `DetectStackDrift' returns a `StackDriftDetectionId' you can use to
%% monitor the progress of the operation using
%% `DescribeStackDriftDetectionStatus'. Once the drift detection operation
%% has completed, use `DescribeStackResourceDrifts' to return drift
%% information about the stack and its resources.
describe_stack_drift_detection_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_drift_detection_status(Client, Input, []).
describe_stack_drift_detection_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackDriftDetectionStatus">>, Input, Options).

%% @doc Returns all stack related events for a specified stack in reverse
%% chronological order.
%%
%% For more information about a stack's event history, go to Stacks in the
%% CloudFormation User Guide.
%%
%% You can list events for stacks that have failed to create or have been
%% deleted by specifying the unique stack identifier (stack ID).
describe_stack_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_events(Client, Input, []).
describe_stack_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackEvents">>, Input, Options).

%% @doc Returns the stack instance that's associated with the specified stack
%% set, Amazon Web Services account, and Region.
%%
%% For a list of stack instances that are associated with a specific stack
%% set, use `ListStackInstances'.
describe_stack_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_instance(Client, Input, []).
describe_stack_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackInstance">>, Input, Options).

%% @doc Returns a description of the specified resource in the specified
%% stack.
%%
%% For deleted stacks, DescribeStackResource returns resource information for
%% up to 90 days after the stack has been deleted.
describe_stack_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_resource(Client, Input, []).
describe_stack_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackResource">>, Input, Options).

%% @doc Returns drift information for the resources that have been checked
%% for drift in the specified stack.
%%
%% This includes actual and expected configuration values for resources where
%% CloudFormation detects configuration drift.
%%
%% For a given stack, there will be one `StackResourceDrift' for each stack
%% resource that has been checked for drift. Resources that haven't yet been
%% checked for drift aren't included. Resources that don't currently support
%% drift detection aren't checked, and so not included. For a list of
%% resources that support drift detection, see Resources that Support Drift
%% Detection.
%%
%% Use `DetectStackResourceDrift' to detect drift on individual resources, or
%% `DetectStackDrift' to detect drift on all supported resources for a given
%% stack.
describe_stack_resource_drifts(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_resource_drifts(Client, Input, []).
describe_stack_resource_drifts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackResourceDrifts">>, Input, Options).

%% @doc Returns Amazon Web Services resource descriptions for running and
%% deleted stacks.
%%
%% If `StackName' is specified, all the associated resources that are part of
%% the stack are returned. If `PhysicalResourceId' is specified, the
%% associated resources of the stack that the resource belongs to are
%% returned.
%%
%% Only the first 100 resources will be returned. If your stack has more
%% resources than this, you should use `ListStackResources' instead.
%%
%% For deleted stacks, `DescribeStackResources' returns resource information
%% for up to 90 days after the stack has been deleted.
%%
%% You must specify either `StackName' or `PhysicalResourceId', but not both.
%% In addition, you can specify `LogicalResourceId' to filter the returned
%% result. For more information about resources, the `LogicalResourceId' and
%% `PhysicalResourceId', go to the CloudFormation User Guide.
%%
%% A `ValidationError' is returned if you specify both `StackName' and
%% `PhysicalResourceId' in the same request.
describe_stack_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_resources(Client, Input, []).
describe_stack_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackResources">>, Input, Options).

%% @doc Returns the description of the specified stack set.
describe_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_set(Client, Input, []).
describe_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackSet">>, Input, Options).

%% @doc Returns the description of the specified stack set operation.
describe_stack_set_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_set_operation(Client, Input, []).
describe_stack_set_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackSetOperation">>, Input, Options).

%% @doc Returns the description for the specified stack; if no stack name was
%% specified, then it returns the description for all the stacks created.
%%
%% If the stack doesn't exist, an `ValidationError' is returned.
describe_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stacks(Client, Input, []).
describe_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStacks">>, Input, Options).

%% @doc Returns detailed information about an extension that has been
%% registered.
%%
%% If you specify a `VersionId', `DescribeType' returns information about
%% that specific extension version. Otherwise, it returns information about
%% the default extension version.
describe_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_type(Client, Input, []).
describe_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeType">>, Input, Options).

%% @doc Returns information about an extension's registration, including its
%% current status and type and version identifiers.
%%
%% When you initiate a registration request using ` `RegisterType' ', you can
%% then use ` `DescribeTypeRegistration' ' to monitor the progress of that
%% registration request.
%%
%% Once the registration request has completed, use ` `DescribeType' ' to
%% return detailed information about an extension.
describe_type_registration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_type_registration(Client, Input, []).
describe_type_registration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTypeRegistration">>, Input, Options).

%% @doc Detects whether a stack's actual configuration differs, or has
%% drifted, from it's expected configuration, as defined in the stack
%% template and any values specified as template parameters.
%%
%% For each resource in the stack that supports drift detection,
%% CloudFormation compares the actual configuration of the resource with its
%% expected template configuration. Only resource properties explicitly
%% defined in the stack template are checked for drift. A stack is considered
%% to have drifted if one or more of its resources differ from their expected
%% template configurations. For more information, see Detecting Unregulated
%% Configuration Changes to Stacks and Resources.
%%
%% Use `DetectStackDrift' to detect drift on all supported resources for a
%% given stack, or `DetectStackResourceDrift' to detect drift on individual
%% resources.
%%
%% For a list of stack resources that currently support drift detection, see
%% Resources that Support Drift Detection.
%%
%% `DetectStackDrift' can take up to several minutes, depending on the number
%% of resources contained within the stack. Use
%% `DescribeStackDriftDetectionStatus' to monitor the progress of a detect
%% stack drift operation. Once the drift detection operation has completed,
%% use `DescribeStackResourceDrifts' to return drift information about the
%% stack and its resources.
%%
%% When detecting drift on a stack, CloudFormation doesn't detect drift on
%% any nested stacks belonging to that stack. Perform `DetectStackDrift'
%% directly on the nested stack itself.
detect_stack_drift(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_stack_drift(Client, Input, []).
detect_stack_drift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectStackDrift">>, Input, Options).

%% @doc Returns information about whether a resource's actual configuration
%% differs, or has drifted, from it's expected configuration, as defined in
%% the stack template and any values specified as template parameters.
%%
%% This information includes actual and expected property values for
%% resources in which CloudFormation detects drift. Only resource properties
%% explicitly defined in the stack template are checked for drift. For more
%% information about stack and resource drift, see Detecting Unregulated
%% Configuration Changes to Stacks and Resources.
%%
%% Use `DetectStackResourceDrift' to detect drift on individual resources, or
%% `DetectStackDrift' to detect drift on all resources in a given stack that
%% support drift detection.
%%
%% Resources that don't currently support drift detection can't be checked.
%% For a list of resources that support drift detection, see Resources that
%% Support Drift Detection.
detect_stack_resource_drift(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_stack_resource_drift(Client, Input, []).
detect_stack_resource_drift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectStackResourceDrift">>, Input, Options).

%% @doc Detect drift on a stack set.
%%
%% When CloudFormation performs drift detection on a stack set, it performs
%% drift detection on the stack associated with each stack instance in the
%% stack set. For more information, see How CloudFormation performs drift
%% detection on a stack set.
%%
%% `DetectStackSetDrift' returns the `OperationId' of the stack set drift
%% detection operation. Use this operation id with `
%% `DescribeStackSetOperation' ' to monitor the progress of the drift
%% detection operation. The drift detection operation may take some time,
%% depending on the number of stack instances included in the stack set, in
%% addition to the number of resources included in each stack.
%%
%% Once the operation has completed, use the following actions to return
%% drift information:
%%
%% <ul> <li> Use ` `DescribeStackSet' ' to return detailed information about
%% the stack set, including detailed information about the last completed
%% drift operation performed on the stack set. (Information about drift
%% operations that are in progress isn't included.)
%%
%% </li> <li> Use ` `ListStackInstances' ' to return a list of stack
%% instances belonging to the stack set, including the drift status and last
%% drift time checked of each instance.
%%
%% </li> <li> Use ` `DescribeStackInstance' ' to return detailed information
%% about a specific stack instance, including its drift status and last drift
%% time checked.
%%
%% </li> </ul> For more information about performing a drift detection
%% operation on a stack set, see Detecting unmanaged changes in stack sets.
%%
%% You can only run a single drift detection operation on a given stack set
%% at one time.
%%
%% To stop a drift detection stack set operation, use `
%% `StopStackSetOperation' '.
detect_stack_set_drift(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_stack_set_drift(Client, Input, []).
detect_stack_set_drift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectStackSetDrift">>, Input, Options).

%% @doc Returns the estimated monthly cost of a template.
%%
%% The return value is an Amazon Web Services Simple Monthly Calculator URL
%% with a query string that describes the resources required to run the
%% template.
estimate_template_cost(Client, Input)
  when is_map(Client), is_map(Input) ->
    estimate_template_cost(Client, Input, []).
estimate_template_cost(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EstimateTemplateCost">>, Input, Options).

%% @doc Updates a stack using the input information that was provided when
%% the specified change set was created.
%%
%% After the call successfully completes, CloudFormation starts updating the
%% stack. Use the `DescribeStacks' action to view the status of the update.
%%
%% When you execute a change set, CloudFormation deletes all other change
%% sets associated with the stack because they aren't valid for the updated
%% stack.
%%
%% If a stack policy is associated with the stack, CloudFormation enforces
%% the policy during the update. You can't specify a temporary stack policy
%% that overrides the current policy.
%%
%% To create a change set for the entire stack hierarchy,
%% `IncludeNestedStacks' must have been set to `True'.
execute_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_change_set(Client, Input, []).
execute_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteChangeSet">>, Input, Options).

%% @doc Returns the stack policy for a specified stack.
%%
%% If a stack doesn't have a policy, a null value is returned.
get_stack_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_stack_policy(Client, Input, []).
get_stack_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStackPolicy">>, Input, Options).

%% @doc Returns the template body for a specified stack.
%%
%% You can get the template for running or deleted stacks.
%%
%% For deleted stacks, `GetTemplate' returns the template for up to 90 days
%% after the stack has been deleted.
%%
%% If the template doesn't exist, a `ValidationError' is returned.
get_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_template(Client, Input, []).
get_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTemplate">>, Input, Options).

%% @doc Returns information about a new or existing template.
%%
%% The `GetTemplateSummary' action is useful for viewing parameter
%% information, such as default parameter values and parameter types, before
%% you create or update a stack or stack set.
%%
%% You can use the `GetTemplateSummary' action when you submit a template, or
%% you can get template information for a stack set, or a running or deleted
%% stack.
%%
%% For deleted stacks, `GetTemplateSummary' returns the template information
%% for up to 90 days after the stack has been deleted. If the template
%% doesn't exist, a `ValidationError' is returned.
get_template_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_template_summary(Client, Input, []).
get_template_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTemplateSummary">>, Input, Options).

%% @doc Import existing stacks into a new stack sets.
%%
%% Use the stack import operation to import up to 10 stacks into a new stack
%% set in the same account as the source stack or in a different
%% administrator account and Region, by specifying the stack ID of the stack
%% you intend to import.
%%
%% `ImportStacksToStackSet' is only supported by self-managed permissions.
import_stacks_to_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_stacks_to_stack_set(Client, Input, []).
import_stacks_to_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportStacksToStackSet">>, Input, Options).

%% @doc Returns the ID and status of each active change set for a stack.
%%
%% For example, CloudFormation lists change sets that are in the
%% `CREATE_IN_PROGRESS' or `CREATE_PENDING' state.
list_change_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_change_sets(Client, Input, []).
list_change_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListChangeSets">>, Input, Options).

%% @doc Lists all exported output values in the account and Region in which
%% you call this action.
%%
%% Use this action to see the exported output values that you can import into
%% other stacks. To import values, use the `Fn::ImportValue' function.
%%
%% For more information, see CloudFormation export stack output values.
list_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_exports(Client, Input, []).
list_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExports">>, Input, Options).

%% @doc Lists all stacks that are importing an exported output value.
%%
%% To modify or remove an exported output value, first use this action to see
%% which stacks are using it. To see the exported output values in your
%% account, see `ListExports'.
%%
%% For more information about importing an exported output value, see the
%% `Fn::ImportValue' function.
list_imports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_imports(Client, Input, []).
list_imports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImports">>, Input, Options).

%% @doc Returns summary information about stack instances that are associated
%% with the specified stack set.
%%
%% You can filter for stack instances that are associated with a specific
%% Amazon Web Services account name or Region, or that have a specific
%% status.
list_stack_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_instances(Client, Input, []).
list_stack_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackInstances">>, Input, Options).

%% @doc Returns descriptions of all resources of the specified stack.
%%
%% For deleted stacks, ListStackResources returns resource information for up
%% to 90 days after the stack has been deleted.
list_stack_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_resources(Client, Input, []).
list_stack_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackResources">>, Input, Options).

%% @doc Returns summary information about the results of a stack set
%% operation.
list_stack_set_operation_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_set_operation_results(Client, Input, []).
list_stack_set_operation_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackSetOperationResults">>, Input, Options).

%% @doc Returns summary information about operations performed on a stack
%% set.
list_stack_set_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_set_operations(Client, Input, []).
list_stack_set_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackSetOperations">>, Input, Options).

%% @doc Returns summary information about stack sets that are associated with
%% the user.
%%
%% <ul> <li> [Self-managed permissions] If you set the `CallAs' parameter to
%% `SELF' while signed in to your Amazon Web Services account,
%% `ListStackSets' returns all self-managed stack sets in your Amazon Web
%% Services account.
%%
%% </li> <li> [Service-managed permissions] If you set the `CallAs' parameter
%% to `SELF' while signed in to the organization's management account,
%% `ListStackSets' returns all stack sets in the management account.
%%
%% </li> <li> [Service-managed permissions] If you set the `CallAs' parameter
%% to `DELEGATED_ADMIN' while signed in to your member account,
%% `ListStackSets' returns all stack sets with service-managed permissions in
%% the management account.
%%
%% </li> </ul>
list_stack_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_sets(Client, Input, []).
list_stack_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackSets">>, Input, Options).

%% @doc Returns the summary information for stacks whose status matches the
%% specified StackStatusFilter.
%%
%% Summary information for stacks that have been deleted is kept for 90 days
%% after the stack is deleted. If no StackStatusFilter is specified, summary
%% information for all stacks is returned (including existing stacks and
%% stacks that have been deleted).
list_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stacks(Client, Input, []).
list_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStacks">>, Input, Options).

%% @doc Returns a list of registration tokens for the specified extension(s).
list_type_registrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_type_registrations(Client, Input, []).
list_type_registrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTypeRegistrations">>, Input, Options).

%% @doc Returns summary information about the versions of an extension.
list_type_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_type_versions(Client, Input, []).
list_type_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTypeVersions">>, Input, Options).

%% @doc Returns summary information about extension that have been registered
%% with CloudFormation.
list_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_types(Client, Input, []).
list_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTypes">>, Input, Options).

%% @doc Publishes the specified extension to the CloudFormation registry as a
%% public extension in this region.
%%
%% Public extensions are available for use by all CloudFormation users. For
%% more information about publishing extensions, see Publishing extensions to
%% make them available for public use in the CloudFormation CLI User Guide.
%%
%% To publish an extension, you must be registered as a publisher with
%% CloudFormation. For more information, see RegisterPublisher.
publish_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    publish_type(Client, Input, []).
publish_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PublishType">>, Input, Options).

%% @doc Reports progress of a resource handler to CloudFormation.
%%
%% Reserved for use by the CloudFormation CLI. Don't use this API in your
%% code.
record_handler_progress(Client, Input)
  when is_map(Client), is_map(Input) ->
    record_handler_progress(Client, Input, []).
record_handler_progress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecordHandlerProgress">>, Input, Options).

%% @doc Registers your account as a publisher of public extensions in the
%% CloudFormation registry.
%%
%% Public extensions are available for use by all CloudFormation users. This
%% publisher ID applies to your account in all Amazon Web Services Regions.
%%
%% For information about requirements for registering as a public extension
%% publisher, see Registering your account to publish CloudFormation
%% extensions in the CloudFormation CLI User Guide.
register_publisher(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_publisher(Client, Input, []).
register_publisher(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterPublisher">>, Input, Options).

%% @doc Registers an extension with the CloudFormation service.
%%
%% Registering an extension makes it available for use in CloudFormation
%% templates in your Amazon Web Services account, and includes:
%%
%% <ul> <li> Validating the extension schema.
%%
%% </li> <li> Determining which handlers, if any, have been specified for the
%% extension.
%%
%% </li> <li> Making the extension available for use in your account.
%%
%% </li> </ul> For more information about how to develop extensions and ready
%% them for registration, see Creating Resource Providers in the
%% CloudFormation CLI User Guide.
%%
%% You can have a maximum of 50 resource extension versions registered at a
%% time. This maximum is per account and per region. Use DeregisterType to
%% deregister specific extension versions if necessary.
%%
%% Once you have initiated a registration request using ` `RegisterType' ',
%% you can use ` `DescribeTypeRegistration' ' to monitor the progress of the
%% registration request.
%%
%% Once you have registered a private extension in your account and region,
%% use SetTypeConfiguration to specify configuration properties for the
%% extension. For more information, see Configuring extensions at the account
%% level in the CloudFormation User Guide.
register_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_type(Client, Input, []).
register_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterType">>, Input, Options).

%% @doc When specifying `RollbackStack', you preserve the state of previously
%% provisioned resources when an operation fails.
%%
%% You can check the status of the stack through the `DescribeStacks'
%% operation.
%%
%% Rolls back the specified stack to the last known stable state from
%% `CREATE_FAILED' or `UPDATE_FAILED' stack statuses.
%%
%% This operation will delete a stack if it doesn't contain a last known
%% stable state. A last known stable state includes any status in a
%% `*_COMPLETE'. This includes the following stack statuses.
%%
%% <ul> <li> `CREATE_COMPLETE'
%%
%% </li> <li> `UPDATE_COMPLETE'
%%
%% </li> <li> `UPDATE_ROLLBACK_COMPLETE'
%%
%% </li> <li> `IMPORT_COMPLETE'
%%
%% </li> <li> `IMPORT_ROLLBACK_COMPLETE'
%%
%% </li> </ul>
rollback_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    rollback_stack(Client, Input, []).
rollback_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RollbackStack">>, Input, Options).

%% @doc Sets a stack policy for a specified stack.
set_stack_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_stack_policy(Client, Input, []).
set_stack_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetStackPolicy">>, Input, Options).

%% @doc Specifies the configuration data for a registered CloudFormation
%% extension, in the given account and region.
%%
%% To view the current configuration data for an extension, refer to the
%% `ConfigurationSchema' element of DescribeType. For more information, see
%% Configuring extensions at the account level in the CloudFormation User
%% Guide.
%%
%% It's strongly recommended that you use dynamic references to restrict
%% sensitive configuration definitions, such as third-party credentials. For
%% more details on dynamic references, see Using dynamic references to
%% specify template values in the CloudFormation User Guide.
set_type_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_type_configuration(Client, Input, []).
set_type_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTypeConfiguration">>, Input, Options).

%% @doc Specify the default version of an extension.
%%
%% The default version of an extension will be used in CloudFormation
%% operations.
set_type_default_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_type_default_version(Client, Input, []).
set_type_default_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTypeDefaultVersion">>, Input, Options).

%% @doc Sends a signal to the specified resource with a success or failure
%% status.
%%
%% You can use the `SignalResource' operation in conjunction with a creation
%% policy or update policy. CloudFormation doesn't proceed with a stack
%% creation or update until resources receive the required number of signals
%% or the timeout period is exceeded. The `SignalResource' operation is
%% useful in cases where you want to send signals from anywhere other than an
%% Amazon EC2 instance.
signal_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    signal_resource(Client, Input, []).
signal_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SignalResource">>, Input, Options).

%% @doc Stops an in-progress operation on a stack set and its associated
%% stack instances.
%%
%% StackSets will cancel all the unstarted stack instance deployments and
%% wait for those are in-progress to complete.
stop_stack_set_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_stack_set_operation(Client, Input, []).
stop_stack_set_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopStackSetOperation">>, Input, Options).

%% @doc Tests a registered extension to make sure it meets all necessary
%% requirements for being published in the CloudFormation registry.
%%
%% <ul> <li> For resource types, this includes passing all contracts tests
%% defined for the type.
%%
%% </li> <li> For modules, this includes determining if the module's model
%% meets all necessary requirements.
%%
%% </li> </ul> For more information, see Testing your public extension prior
%% to publishing in the CloudFormation CLI User Guide.
%%
%% If you don't specify a version, CloudFormation uses the default version of
%% the extension in your account and region for testing.
%%
%% To perform testing, CloudFormation assumes the execution role specified
%% when the type was registered. For more information, see RegisterType.
%%
%% Once you've initiated testing on an extension using `TestType', you can
%% pass the returned `TypeVersionArn' into DescribeType to monitor the
%% current test status and test status description for the extension.
%%
%% An extension must have a test status of `PASSED' before it can be
%% published. For more information, see Publishing extensions to make them
%% available for public use in the CloudFormation CLI User Guide.
test_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_type(Client, Input, []).
test_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestType">>, Input, Options).

%% @doc Updates a stack as specified in the template.
%%
%% After the call completes successfully, the stack update starts. You can
%% check the status of the stack through the `DescribeStacks' action.
%%
%% To get a copy of the template for an existing stack, you can use the
%% `GetTemplate' action.
%%
%% For more information about creating an update template, updating a stack,
%% and monitoring the progress of the update, see Updating a Stack.
update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack(Client, Input, []).
update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStack">>, Input, Options).

%% @doc Updates the parameter values for stack instances for the specified
%% accounts, within the specified Amazon Web Services Regions.
%%
%% A stack instance refers to a stack in a specific account and Region.
%%
%% You can only update stack instances in Amazon Web Services Regions and
%% accounts where they already exist; to create additional stack instances,
%% use CreateStackInstances.
%%
%% During stack set updates, any parameters overridden for a stack instance
%% aren't updated, but retain their overridden value.
%%
%% You can only update the parameter values that are specified in the stack
%% set; to add or delete a parameter itself, use UpdateStackSet to update the
%% stack set template. If you add a parameter to a template, before you can
%% override the parameter value specified in the stack set you must first use
%% UpdateStackSet to update all stack instances with the updated template and
%% parameter value specified in the stack set. Once a stack instance has been
%% updated with the new parameter, you can then override the parameter value
%% using `UpdateStackInstances'.
update_stack_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack_instances(Client, Input, []).
update_stack_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStackInstances">>, Input, Options).

%% @doc Updates the stack set, and associated stack instances in the
%% specified accounts and Amazon Web Services Regions.
%%
%% Even if the stack set operation created by updating the stack set fails
%% (completely or partially, below or above a specified failure tolerance),
%% the stack set is updated with your changes. Subsequent
%% `CreateStackInstances' calls on the specified stack set use the updated
%% stack set.
update_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack_set(Client, Input, []).
update_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStackSet">>, Input, Options).

%% @doc Updates termination protection for the specified stack.
%%
%% If a user attempts to delete a stack with termination protection enabled,
%% the operation fails and the stack remains unchanged. For more information,
%% see Protecting a Stack From Being Deleted in the CloudFormation User
%% Guide.
%%
%% For nested stacks, termination protection is set on the root stack and
%% can't be changed directly on the nested stack.
update_termination_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_termination_protection(Client, Input, []).
update_termination_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTerminationProtection">>, Input, Options).

%% @doc Validates a specified template.
%%
%% CloudFormation first checks if the template is valid JSON. If it isn't,
%% CloudFormation checks if the template is valid YAML. If both these checks
%% fail, CloudFormation returns a template validation error.
validate_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_template(Client, Input, []).
validate_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ValidateTemplate">>, Input, Options).

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
    Client1 = Client#{service => <<"cloudformation">>},
    Host = build_host(<<"cloudformation">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2010-05-15">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
