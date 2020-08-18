%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS CloudFormation</fullname>
%%
%% AWS CloudFormation allows you to create and manage AWS infrastructure
%% deployments predictably and repeatedly. You can use AWS CloudFormation to
%% leverage AWS products, such as Amazon Elastic Compute Cloud, Amazon
%% Elastic Block Store, Amazon Simple Notification Service, Elastic Load
%% Balancing, and Auto Scaling to build highly-reliable, highly scalable,
%% cost-effective applications without creating or configuring the underlying
%% AWS infrastructure.
%%
%% With AWS CloudFormation, you declare all of your resources and
%% dependencies in a template file. The template defines a collection of
%% resources as a single unit called a stack. AWS CloudFormation creates and
%% deletes all member resources of the stack together and manages all
%% dependencies between the resources for you.
%%
%% For more information about AWS CloudFormation, see the <a
%% href="http://aws.amazon.com/cloudformation/">AWS CloudFormation Product
%% Page</a>.
%%
%% Amazon CloudFormation makes use of other AWS products. If you need
%% additional technical information about a specific AWS product, you can
%% find the product's technical documentation at <a
%% href="https://docs.aws.amazon.com/">docs.aws.amazon.com</a>.
-module(aws_cloudformation).

-export([cancel_update_stack/2,
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
         record_handler_progress/2,
         record_handler_progress/3,
         register_type/2,
         register_type/3,
         set_stack_policy/2,
         set_stack_policy/3,
         set_type_default_version/2,
         set_type_default_version/3,
         signal_resource/2,
         signal_resource/3,
         stop_stack_set_operation/2,
         stop_stack_set_operation/3,
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

%% @doc Cancels an update on the specified stack. If the call completes
%% successfully, the stack rolls back the update and reverts to the previous
%% stack configuration.
%%
%% <note> You can cancel only stacks that are in the UPDATE_IN_PROGRESS
%% state.
%%
%% </note>
cancel_update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_update_stack(Client, Input, []).
cancel_update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelUpdateStack">>, Input, Options).

%% @doc For a specified stack that is in the
%% <code>UPDATE_ROLLBACK_FAILED</code> state, continues rolling it back to
%% the <code>UPDATE_ROLLBACK_COMPLETE</code> state. Depending on the cause of
%% the failure, you can manually <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed">
%% fix the error</a> and continue the rollback. By continuing the rollback,
%% you can return your stack to a working state (the
%% <code>UPDATE_ROLLBACK_COMPLETE</code> state), and then try to update the
%% stack again.
%%
%% A stack goes into the <code>UPDATE_ROLLBACK_FAILED</code> state when AWS
%% CloudFormation cannot roll back all changes after a failed stack update.
%% For example, you might have a stack that is rolling back to an old
%% database instance that was deleted outside of AWS CloudFormation. Because
%% AWS CloudFormation doesn't know the database was deleted, it assumes that
%% the database instance still exists and attempts to roll back to it,
%% causing the update rollback to fail.
continue_update_rollback(Client, Input)
  when is_map(Client), is_map(Input) ->
    continue_update_rollback(Client, Input, []).
continue_update_rollback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ContinueUpdateRollback">>, Input, Options).

%% @doc Creates a list of changes that will be applied to a stack so that you
%% can review the changes before executing them. You can create a change set
%% for a stack that doesn't exist or an existing stack. If you create a
%% change set for a stack that doesn't exist, the change set shows all of the
%% resources that AWS CloudFormation will create. If you create a change set
%% for an existing stack, AWS CloudFormation compares the stack's information
%% with the information that you submit in the change set and lists the
%% differences. Use change sets to understand which resources AWS
%% CloudFormation will create or change, and how it will change resources in
%% an existing stack, before you create or update a stack.
%%
%% To create a change set for a stack that doesn't exist, for the
%% <code>ChangeSetType</code> parameter, specify <code>CREATE</code>. To
%% create a change set for an existing stack, specify <code>UPDATE</code> for
%% the <code>ChangeSetType</code> parameter. To create a change set for an
%% import operation, specify <code>IMPORT</code> for the
%% <code>ChangeSetType</code> parameter. After the
%% <code>CreateChangeSet</code> call successfully completes, AWS
%% CloudFormation starts creating the change set. To check the status of the
%% change set or to review it, use the <a>DescribeChangeSet</a> action.
%%
%% When you are satisfied with the changes the change set will make, execute
%% the change set by using the <a>ExecuteChangeSet</a> action. AWS
%% CloudFormation doesn't make changes until you execute the change set.
create_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_change_set(Client, Input, []).
create_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateChangeSet">>, Input, Options).

%% @doc Creates a stack as specified in the template. After the call
%% completes successfully, the stack creation starts. You can check the
%% status of the stack via the <a>DescribeStacks</a> API.
create_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack(Client, Input, []).
create_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStack">>, Input, Options).

%% @doc Creates stack instances for the specified accounts, within the
%% specified Regions. A stack instance refers to a stack in a specific
%% account and Region. You must specify at least one value for either
%% <code>Accounts</code> or <code>DeploymentTargets</code>, and you must
%% specify at least one value for <code>Regions</code>.
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

%% @doc Deletes the specified change set. Deleting change sets ensures that
%% no one executes the wrong change set.
%%
%% If the call successfully completes, AWS CloudFormation successfully
%% deleted the change set.
delete_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_change_set(Client, Input, []).
delete_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteChangeSet">>, Input, Options).

%% @doc Deletes a specified stack. Once the call completes successfully,
%% stack deletion starts. Deleted stacks do not show up in the
%% <a>DescribeStacks</a> API if the deletion has been completed successfully.
delete_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack(Client, Input, []).
delete_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStack">>, Input, Options).

%% @doc Deletes stack instances for the specified accounts, in the specified
%% Regions.
delete_stack_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack_instances(Client, Input, []).
delete_stack_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStackInstances">>, Input, Options).

%% @doc Deletes a stack set. Before you can delete a stack set, all of its
%% member stack instances must be deleted. For more information about how to
%% do this, see <a>DeleteStackInstances</a>.
delete_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack_set(Client, Input, []).
delete_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStackSet">>, Input, Options).

%% @doc Removes a type or type version from active use in the CloudFormation
%% registry. If a type or type version is deregistered, it cannot be used in
%% CloudFormation operations.
%%
%% To deregister a type, you must individually deregister all registered
%% versions of that type. If a type has only a single registered version,
%% deregistering that version results in the type itself being deregistered.
%%
%% You cannot deregister the default version of a type, unless it is the only
%% registered version of that type, in which case the type itself is
%% deregistered as well.
deregister_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_type(Client, Input, []).
deregister_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterType">>, Input, Options).

%% @doc Retrieves your account's AWS CloudFormation limits, such as the
%% maximum number of stacks that you can create in your account. For more
%% information about account limits, see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html">AWS
%% CloudFormation Limits</a> in the <i>AWS CloudFormation User Guide</i>.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Returns the inputs for the change set and a list of changes that AWS
%% CloudFormation will make if you execute the change set. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html">Updating
%% Stacks Using Change Sets</a> in the AWS CloudFormation User Guide.
describe_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_change_set(Client, Input, []).
describe_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeChangeSet">>, Input, Options).

%% @doc Returns information about a stack drift detection operation. A stack
%% drift detection operation detects whether a stack's actual configuration
%% differs, or has <i>drifted</i>, from it's expected configuration, as
%% defined in the stack template and any values specified as template
%% parameters. A stack is considered to have drifted if one or more of its
%% resources have drifted. For more information on stack and resource drift,
%% see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting
%% Unregulated Configuration Changes to Stacks and Resources</a>.
%%
%% Use <a>DetectStackDrift</a> to initiate a stack drift detection operation.
%% <code>DetectStackDrift</code> returns a <code>StackDriftDetectionId</code>
%% you can use to monitor the progress of the operation using
%% <code>DescribeStackDriftDetectionStatus</code>. Once the drift detection
%% operation has completed, use <a>DescribeStackResourceDrifts</a> to return
%% drift information about the stack and its resources.
describe_stack_drift_detection_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_drift_detection_status(Client, Input, []).
describe_stack_drift_detection_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackDriftDetectionStatus">>, Input, Options).

%% @doc Returns all stack related events for a specified stack in reverse
%% chronological order. For more information about a stack's event history,
%% go to <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html">Stacks</a>
%% in the AWS CloudFormation User Guide.
%%
%% <note> You can list events for stacks that have failed to create or have
%% been deleted by specifying the unique stack identifier (stack ID).
%%
%% </note>
describe_stack_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_events(Client, Input, []).
describe_stack_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackEvents">>, Input, Options).

%% @doc Returns the stack instance that's associated with the specified stack
%% set, AWS account, and Region.
%%
%% For a list of stack instances that are associated with a specific stack
%% set, use <a>ListStackInstances</a>.
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
%% for drift in the specified stack. This includes actual and expected
%% configuration values for resources where AWS CloudFormation detects
%% configuration drift.
%%
%% For a given stack, there will be one <code>StackResourceDrift</code> for
%% each stack resource that has been checked for drift. Resources that have
%% not yet been checked for drift are not included. Resources that do not
%% currently support drift detection are not checked, and so not included.
%% For a list of resources that support drift detection, see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources
%% that Support Drift Detection</a>.
%%
%% Use <a>DetectStackResourceDrift</a> to detect drift on individual
%% resources, or <a>DetectStackDrift</a> to detect drift on all supported
%% resources for a given stack.
describe_stack_resource_drifts(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_resource_drifts(Client, Input, []).
describe_stack_resource_drifts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackResourceDrifts">>, Input, Options).

%% @doc Returns AWS resource descriptions for running and deleted stacks. If
%% <code>StackName</code> is specified, all the associated resources that are
%% part of the stack are returned. If <code>PhysicalResourceId</code> is
%% specified, the associated resources of the stack that the resource belongs
%% to are returned.
%%
%% <note> Only the first 100 resources will be returned. If your stack has
%% more resources than this, you should use <code>ListStackResources</code>
%% instead.
%%
%% </note> For deleted stacks, <code>DescribeStackResources</code> returns
%% resource information for up to 90 days after the stack has been deleted.
%%
%% You must specify either <code>StackName</code> or
%% <code>PhysicalResourceId</code>, but not both. In addition, you can
%% specify <code>LogicalResourceId</code> to filter the returned result. For
%% more information about resources, the <code>LogicalResourceId</code> and
%% <code>PhysicalResourceId</code>, go to the <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/">AWS
%% CloudFormation User Guide</a>.
%%
%% <note> A <code>ValidationError</code> is returned if you specify both
%% <code>StackName</code> and <code>PhysicalResourceId</code> in the same
%% request.
%%
%% </note>
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
%% <note> If the stack does not exist, an
%% <code>AmazonCloudFormationException</code> is returned.
%%
%% </note>
describe_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stacks(Client, Input, []).
describe_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStacks">>, Input, Options).

%% @doc Returns detailed information about a type that has been registered.
%%
%% If you specify a <code>VersionId</code>, <code>DescribeType</code> returns
%% information about that specific type version. Otherwise, it returns
%% information about the default type version.
describe_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_type(Client, Input, []).
describe_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeType">>, Input, Options).

%% @doc Returns information about a type's registration, including its
%% current status and type and version identifiers.
%%
%% When you initiate a registration request using <code> <a>RegisterType</a>
%% </code>, you can then use <code> <a>DescribeTypeRegistration</a> </code>
%% to monitor the progress of that registration request.
%%
%% Once the registration request has completed, use <code>
%% <a>DescribeType</a> </code> to return detailed informaiton about a type.
describe_type_registration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_type_registration(Client, Input, []).
describe_type_registration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTypeRegistration">>, Input, Options).

%% @doc Detects whether a stack's actual configuration differs, or has
%% <i>drifted</i>, from it's expected configuration, as defined in the stack
%% template and any values specified as template parameters. For each
%% resource in the stack that supports drift detection, AWS CloudFormation
%% compares the actual configuration of the resource with its expected
%% template configuration. Only resource properties explicitly defined in the
%% stack template are checked for drift. A stack is considered to have
%% drifted if one or more of its resources differ from their expected
%% template configurations. For more information, see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting
%% Unregulated Configuration Changes to Stacks and Resources</a>.
%%
%% Use <code>DetectStackDrift</code> to detect drift on all supported
%% resources for a given stack, or <a>DetectStackResourceDrift</a> to detect
%% drift on individual resources.
%%
%% For a list of stack resources that currently support drift detection, see
%% <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources
%% that Support Drift Detection</a>.
%%
%% <code>DetectStackDrift</code> can take up to several minutes, depending on
%% the number of resources contained within the stack. Use
%% <a>DescribeStackDriftDetectionStatus</a> to monitor the progress of a
%% detect stack drift operation. Once the drift detection operation has
%% completed, use <a>DescribeStackResourceDrifts</a> to return drift
%% information about the stack and its resources.
%%
%% When detecting drift on a stack, AWS CloudFormation does not detect drift
%% on any nested stacks belonging to that stack. Perform
%% <code>DetectStackDrift</code> directly on the nested stack itself.
detect_stack_drift(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_stack_drift(Client, Input, []).
detect_stack_drift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectStackDrift">>, Input, Options).

%% @doc Returns information about whether a resource's actual configuration
%% differs, or has <i>drifted</i>, from it's expected configuration, as
%% defined in the stack template and any values specified as template
%% parameters. This information includes actual and expected property values
%% for resources in which AWS CloudFormation detects drift. Only resource
%% properties explicitly defined in the stack template are checked for drift.
%% For more information about stack and resource drift, see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting
%% Unregulated Configuration Changes to Stacks and Resources</a>.
%%
%% Use <code>DetectStackResourceDrift</code> to detect drift on individual
%% resources, or <a>DetectStackDrift</a> to detect drift on all resources in
%% a given stack that support drift detection.
%%
%% Resources that do not currently support drift detection cannot be checked.
%% For a list of resources that support drift detection, see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources
%% that Support Drift Detection</a>.
detect_stack_resource_drift(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_stack_resource_drift(Client, Input, []).
detect_stack_resource_drift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectStackResourceDrift">>, Input, Options).

%% @doc Detect drift on a stack set. When CloudFormation performs drift
%% detection on a stack set, it performs drift detection on the stack
%% associated with each stack instance in the stack set. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html">How
%% CloudFormation Performs Drift Detection on a Stack Set</a>.
%%
%% <code>DetectStackSetDrift</code> returns the <code>OperationId</code> of
%% the stack set drift detection operation. Use this operation id with <code>
%% <a>DescribeStackSetOperation</a> </code> to monitor the progress of the
%% drift detection operation. The drift detection operation may take some
%% time, depending on the number of stack instances included in the stack
%% set, as well as the number of resources included in each stack.
%%
%% Once the operation has completed, use the following actions to return
%% drift information:
%%
%% <ul> <li> Use <code> <a>DescribeStackSet</a> </code> to return detailed
%% informaiton about the stack set, including detailed information about the
%% last <i>completed</i> drift operation performed on the stack set.
%% (Information about drift operations that are in progress is not included.)
%%
%% </li> <li> Use <code> <a>ListStackInstances</a> </code> to return a list
%% of stack instances belonging to the stack set, including the drift status
%% and last drift time checked of each instance.
%%
%% </li> <li> Use <code> <a>DescribeStackInstance</a> </code> to return
%% detailed information about a specific stack instance, including its drift
%% status and last drift time checked.
%%
%% </li> </ul> For more information on performing a drift detection operation
%% on a stack set, see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html">Detecting
%% Unmanaged Changes in Stack Sets</a>.
%%
%% You can only run a single drift detection operation on a given stack set
%% at one time.
%%
%% To stop a drift detection stack set operation, use <code>
%% <a>StopStackSetOperation</a> </code>.
detect_stack_set_drift(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_stack_set_drift(Client, Input, []).
detect_stack_set_drift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectStackSetDrift">>, Input, Options).

%% @doc Returns the estimated monthly cost of a template. The return value is
%% an AWS Simple Monthly Calculator URL with a query string that describes
%% the resources required to run the template.
estimate_template_cost(Client, Input)
  when is_map(Client), is_map(Input) ->
    estimate_template_cost(Client, Input, []).
estimate_template_cost(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EstimateTemplateCost">>, Input, Options).

%% @doc Updates a stack using the input information that was provided when
%% the specified change set was created. After the call successfully
%% completes, AWS CloudFormation starts updating the stack. Use the
%% <a>DescribeStacks</a> action to view the status of the update.
%%
%% When you execute a change set, AWS CloudFormation deletes all other change
%% sets associated with the stack because they aren't valid for the updated
%% stack.
%%
%% If a stack policy is associated with the stack, AWS CloudFormation
%% enforces the policy during the update. You can't specify a temporary stack
%% policy that overrides the current policy.
execute_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_change_set(Client, Input, []).
execute_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteChangeSet">>, Input, Options).

%% @doc Returns the stack policy for a specified stack. If a stack doesn't
%% have a policy, a null value is returned.
get_stack_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_stack_policy(Client, Input, []).
get_stack_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStackPolicy">>, Input, Options).

%% @doc Returns the template body for a specified stack. You can get the
%% template for running or deleted stacks.
%%
%% For deleted stacks, GetTemplate returns the template for up to 90 days
%% after the stack has been deleted.
%%
%% <note> If the template does not exist, a <code>ValidationError</code> is
%% returned.
%%
%% </note>
get_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_template(Client, Input, []).
get_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTemplate">>, Input, Options).

%% @doc Returns information about a new or existing template. The
%% <code>GetTemplateSummary</code> action is useful for viewing parameter
%% information, such as default parameter values and parameter types, before
%% you create or update a stack or stack set.
%%
%% You can use the <code>GetTemplateSummary</code> action when you submit a
%% template, or you can get template information for a stack set, or a
%% running or deleted stack.
%%
%% For deleted stacks, <code>GetTemplateSummary</code> returns the template
%% information for up to 90 days after the stack has been deleted. If the
%% template does not exist, a <code>ValidationError</code> is returned.
get_template_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_template_summary(Client, Input, []).
get_template_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTemplateSummary">>, Input, Options).

%% @doc Returns the ID and status of each active change set for a stack. For
%% example, AWS CloudFormation lists change sets that are in the
%% <code>CREATE_IN_PROGRESS</code> or <code>CREATE_PENDING</code> state.
list_change_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_change_sets(Client, Input, []).
list_change_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListChangeSets">>, Input, Options).

%% @doc Lists all exported output values in the account and Region in which
%% you call this action. Use this action to see the exported output values
%% that you can import into other stacks. To import values, use the <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html">
%% <code>Fn::ImportValue</code> </a> function.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html">
%% AWS CloudFormation Export Stack Output Values</a>.
list_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_exports(Client, Input, []).
list_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExports">>, Input, Options).

%% @doc Lists all stacks that are importing an exported output value. To
%% modify or remove an exported output value, first use this action to see
%% which stacks are using it. To see the exported output values in your
%% account, see <a>ListExports</a>.
%%
%% For more information about importing an exported output value, see the <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html">
%% <code>Fn::ImportValue</code> </a> function.
list_imports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_imports(Client, Input, []).
list_imports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImports">>, Input, Options).

%% @doc Returns summary information about stack instances that are associated
%% with the specified stack set. You can filter for stack instances that are
%% associated with a specific AWS account name or Region, or that have a
%% specific status.
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
list_stack_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_sets(Client, Input, []).
list_stack_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackSets">>, Input, Options).

%% @doc Returns the summary information for stacks whose status matches the
%% specified StackStatusFilter. Summary information for stacks that have been
%% deleted is kept for 90 days after the stack is deleted. If no
%% StackStatusFilter is specified, summary information for all stacks is
%% returned (including existing stacks and stacks that have been deleted).
list_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stacks(Client, Input, []).
list_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStacks">>, Input, Options).

%% @doc Returns a list of registration tokens for the specified type(s).
list_type_registrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_type_registrations(Client, Input, []).
list_type_registrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTypeRegistrations">>, Input, Options).

%% @doc Returns summary information about the versions of a type.
list_type_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_type_versions(Client, Input, []).
list_type_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTypeVersions">>, Input, Options).

%% @doc Returns summary information about types that have been registered
%% with CloudFormation.
list_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_types(Client, Input, []).
list_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTypes">>, Input, Options).

%% @doc Reports progress of a resource handler to CloudFormation.
%%
%% Reserved for use by the <a
%% href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
%% CLI</a>. Do not use this API in your code.
record_handler_progress(Client, Input)
  when is_map(Client), is_map(Input) ->
    record_handler_progress(Client, Input, []).
record_handler_progress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecordHandlerProgress">>, Input, Options).

%% @doc Registers a type with the CloudFormation service. Registering a type
%% makes it available for use in CloudFormation templates in your AWS
%% account, and includes:
%%
%% <ul> <li> Validating the resource schema
%%
%% </li> <li> Determining which handlers have been specified for the resource
%%
%% </li> <li> Making the resource type available for use in your account
%%
%% </li> </ul> For more information on how to develop types and ready them
%% for registeration, see <a
%% href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html">Creating
%% Resource Providers</a> in the <i>CloudFormation CLI User Guide</i>.
%%
%% You can have a maximum of 50 resource type versions registered at a time.
%% This maximum is per account and per region. Use <a
%% href="AWSCloudFormation/latest/APIReference/API_DeregisterType.html">DeregisterType</a>
%% to deregister specific resource type versions if necessary.
%%
%% Once you have initiated a registration request using <code>
%% <a>RegisterType</a> </code>, you can use <code>
%% <a>DescribeTypeRegistration</a> </code> to monitor the progress of the
%% registration request.
register_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_type(Client, Input, []).
register_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterType">>, Input, Options).

%% @doc Sets a stack policy for a specified stack.
set_stack_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_stack_policy(Client, Input, []).
set_stack_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetStackPolicy">>, Input, Options).

%% @doc Specify the default version of a type. The default version of a type
%% will be used in CloudFormation operations.
set_type_default_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_type_default_version(Client, Input, []).
set_type_default_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTypeDefaultVersion">>, Input, Options).

%% @doc Sends a signal to the specified resource with a success or failure
%% status. You can use the SignalResource API in conjunction with a creation
%% policy or update policy. AWS CloudFormation doesn't proceed with a stack
%% creation or update until resources receive the required number of signals
%% or the timeout period is exceeded. The SignalResource API is useful in
%% cases where you want to send signals from anywhere other than an Amazon
%% EC2 instance.
signal_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    signal_resource(Client, Input, []).
signal_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SignalResource">>, Input, Options).

%% @doc Stops an in-progress operation on a stack set and its associated
%% stack instances.
stop_stack_set_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_stack_set_operation(Client, Input, []).
stop_stack_set_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopStackSetOperation">>, Input, Options).

%% @doc Updates a stack as specified in the template. After the call
%% completes successfully, the stack update starts. You can check the status
%% of the stack via the <a>DescribeStacks</a> action.
%%
%% To get a copy of the template for an existing stack, you can use the
%% <a>GetTemplate</a> action.
%%
%% For more information about creating an update template, updating a stack,
%% and monitoring the progress of the update, see <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html">Updating
%% a Stack</a>.
update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack(Client, Input, []).
update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStack">>, Input, Options).

%% @doc Updates the parameter values for stack instances for the specified
%% accounts, within the specified Regions. A stack instance refers to a stack
%% in a specific account and Region.
%%
%% You can only update stack instances in Regions and accounts where they
%% already exist; to create additional stack instances, use <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html">CreateStackInstances</a>.
%%
%% During stack set updates, any parameters overridden for a stack instance
%% are not updated, but retain their overridden value.
%%
%% You can only update the parameter <i>values</i> that are specified in the
%% stack set; to add or delete a parameter itself, use <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a>
%% to update the stack set template. If you add a parameter to a template,
%% before you can override the parameter value specified in the stack set you
%% must first use <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a>
%% to update all stack instances with the updated template and parameter
%% value specified in the stack set. Once a stack instance has been updated
%% with the new parameter, you can then override the parameter value using
%% <code>UpdateStackInstances</code>.
update_stack_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack_instances(Client, Input, []).
update_stack_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStackInstances">>, Input, Options).

%% @doc Updates the stack set, and associated stack instances in the
%% specified accounts and Regions.
%%
%% Even if the stack set operation created by updating the stack set fails
%% (completely or partially, below or above a specified failure tolerance),
%% the stack set is updated with your changes. Subsequent
%% <a>CreateStackInstances</a> calls on the specified stack set use the
%% updated stack set.
update_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack_set(Client, Input, []).
update_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStackSet">>, Input, Options).

%% @doc Updates termination protection for the specified stack. If a user
%% attempts to delete a stack with termination protection enabled, the
%% operation fails and the stack remains unchanged. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protecting
%% a Stack From Being Deleted</a> in the <i>AWS CloudFormation User
%% Guide</i>.
%%
%% For <a
%% href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested
%% stacks</a>, termination protection is set on the root stack and cannot be
%% changed directly on the nested stack.
update_termination_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_termination_protection(Client, Input, []).
update_termination_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTerminationProtection">>, Input, Options).

%% @doc Validates a specified template. AWS CloudFormation first checks if
%% the template is valid JSON. If it isn't, AWS CloudFormation checks if the
%% template is valid YAML. If both these checks fail, AWS CloudFormation
%% returns a template validation error.
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
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"cloudformation">>},
    Host = get_host(<<"cloudformation">>, Client1),
    URL = get_url(Host, Client1),
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

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
