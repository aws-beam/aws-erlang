%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc CloudFormation
%%
%% CloudFormation allows you to create and manage Amazon Web Services
%% infrastructure deployments predictably and
%% repeatedly.
%%
%% You can use CloudFormation to leverage Amazon Web Services products, such
%% as Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple
%% Notification Service,
%% Elastic Load Balancing, and Amazon EC2 Auto Scaling to build highly
%% reliable, highly
%% scalable, cost-effective applications without creating or configuring the
%% underlying Amazon Web Services
%% infrastructure.
%%
%% With CloudFormation, you declare all your resources and dependencies in a
%% template file. The template defines a
%% collection of resources as a single unit called a stack. CloudFormation
%% creates and deletes all member resources of the stack
%% together and manages all dependencies between the resources for you.
%%
%% For more information about CloudFormation, see the CloudFormation
%% product page: http://aws.amazon.com/cloudformation/.
%%
%% CloudFormation makes use of other Amazon Web Services products. If you
%% need additional technical information about a
%% specific Amazon Web Services product, you can find the product's
%% technical documentation at docs.aws.amazon.com:
%% https://docs.aws.amazon.com/.
-module(aws_cloudformation).

-export([activate_organizations_access/2,
         activate_organizations_access/3,
         activate_type/2,
         activate_type/3,
         batch_describe_type_configurations/2,
         batch_describe_type_configurations/3,
         cancel_update_stack/2,
         cancel_update_stack/3,
         continue_update_rollback/2,
         continue_update_rollback/3,
         create_change_set/2,
         create_change_set/3,
         create_generated_template/2,
         create_generated_template/3,
         create_stack/2,
         create_stack/3,
         create_stack_instances/2,
         create_stack_instances/3,
         create_stack_refactor/2,
         create_stack_refactor/3,
         create_stack_set/2,
         create_stack_set/3,
         deactivate_organizations_access/2,
         deactivate_organizations_access/3,
         deactivate_type/2,
         deactivate_type/3,
         delete_change_set/2,
         delete_change_set/3,
         delete_generated_template/2,
         delete_generated_template/3,
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
         describe_generated_template/2,
         describe_generated_template/3,
         describe_organizations_access/2,
         describe_organizations_access/3,
         describe_publisher/2,
         describe_publisher/3,
         describe_resource_scan/2,
         describe_resource_scan/3,
         describe_stack_drift_detection_status/2,
         describe_stack_drift_detection_status/3,
         describe_stack_events/2,
         describe_stack_events/3,
         describe_stack_instance/2,
         describe_stack_instance/3,
         describe_stack_refactor/2,
         describe_stack_refactor/3,
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
         execute_stack_refactor/2,
         execute_stack_refactor/3,
         get_generated_template/2,
         get_generated_template/3,
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
         list_generated_templates/2,
         list_generated_templates/3,
         list_hook_results/2,
         list_hook_results/3,
         list_imports/2,
         list_imports/3,
         list_resource_scan_related_resources/2,
         list_resource_scan_related_resources/3,
         list_resource_scan_resources/2,
         list_resource_scan_resources/3,
         list_resource_scans/2,
         list_resource_scans/3,
         list_stack_instance_resource_drifts/2,
         list_stack_instance_resource_drifts/3,
         list_stack_instances/2,
         list_stack_instances/3,
         list_stack_refactor_actions/2,
         list_stack_refactor_actions/3,
         list_stack_refactors/2,
         list_stack_refactors/3,
         list_stack_resources/2,
         list_stack_resources/3,
         list_stack_set_auto_deployment_targets/2,
         list_stack_set_auto_deployment_targets/3,
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
         start_resource_scan/2,
         start_resource_scan/3,
         stop_stack_set_operation/2,
         stop_stack_set_operation/3,
         test_type/2,
         test_type/3,
         update_generated_template/2,
         update_generated_template/3,
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


%% Example:
%% describe_stack_resource_drifts_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackResourceDrifts">> => list(stack_resource_drift()())
%% }
-type describe_stack_resource_drifts_output() :: #{binary() => any()}.

%% Example:
%% stale_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type stale_request_exception() :: #{binary() => any()}.

%% Example:
%% generated_template_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type generated_template_not_found_exception() :: #{binary() => any()}.

%% Example:
%% register_publisher_input() :: #{
%%   <<"AcceptTermsAndConditions">> => boolean(),
%%   <<"ConnectionArn">> => string()
%% }
-type register_publisher_input() :: #{binary() => any()}.

%% Example:
%% list_stack_resources_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackResourceSummaries">> => list(stack_resource_summary()())
%% }
-type list_stack_resources_output() :: #{binary() => any()}.

%% Example:
%% set_stack_policy_input() :: #{
%%   <<"StackName">> := string(),
%%   <<"StackPolicyBody">> => string(),
%%   <<"StackPolicyURL">> => string()
%% }
-type set_stack_policy_input() :: #{binary() => any()}.

%% Example:
%% create_stack_refactor_output() :: #{
%%   <<"StackRefactorId">> => string()
%% }
-type create_stack_refactor_output() :: #{binary() => any()}.

%% Example:
%% get_stack_policy_input() :: #{
%%   <<"StackName">> := string()
%% }
-type get_stack_policy_input() :: #{binary() => any()}.

%% Example:
%% activate_type_input() :: #{
%%   <<"AutoUpdate">> => boolean(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"LoggingConfig">> => logging_config(),
%%   <<"MajorVersion">> => float(),
%%   <<"PublicTypeArn">> => string(),
%%   <<"PublisherId">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> => string(),
%%   <<"TypeNameAlias">> => string(),
%%   <<"VersionBump">> => list(any())
%% }
-type activate_type_input() :: #{binary() => any()}.

%% Example:
%% stack_refactor_summary() :: #{
%%   <<"Description">> => string(),
%%   <<"ExecutionStatus">> => list(any()),
%%   <<"ExecutionStatusReason">> => string(),
%%   <<"StackRefactorId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type stack_refactor_summary() :: #{binary() => any()}.

%% Example:
%% stack_resource_summary() :: #{
%%   <<"DriftInformation">> => stack_resource_drift_information_summary(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"LogicalResourceId">> => string(),
%%   <<"ModuleInfo">> => module_info(),
%%   <<"PhysicalResourceId">> => string(),
%%   <<"ResourceStatus">> => list(any()),
%%   <<"ResourceStatusReason">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type stack_resource_summary() :: #{binary() => any()}.

%% Example:
%% list_resource_scan_resources_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceIdentifier">> => string(),
%%   <<"ResourceScanId">> := string(),
%%   <<"ResourceTypePrefix">> => string(),
%%   <<"TagKey">> => string(),
%%   <<"TagValue">> => string()
%% }
-type list_resource_scan_resources_input() :: #{binary() => any()}.

%% Example:
%% cancel_update_stack_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"StackName">> := string()
%% }
-type cancel_update_stack_input() :: #{binary() => any()}.

%% Example:
%% update_generated_template_input() :: #{
%%   <<"AddResources">> => list(resource_definition()()),
%%   <<"GeneratedTemplateName">> := string(),
%%   <<"NewGeneratedTemplateName">> => string(),
%%   <<"RefreshAllResources">> => boolean(),
%%   <<"RemoveResources">> => list(string()()),
%%   <<"TemplateConfiguration">> => template_configuration()
%% }
-type update_generated_template_input() :: #{binary() => any()}.

%% Example:
%% rollback_stack_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"RetainExceptOnCreate">> => boolean(),
%%   <<"RoleARN">> => string(),
%%   <<"StackName">> := string()
%% }
-type rollback_stack_input() :: #{binary() => any()}.

%% Example:
%% test_type_input() :: #{
%%   <<"Arn">> => string(),
%%   <<"LogDeliveryBucket">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> => string(),
%%   <<"VersionId">> => string()
%% }
-type test_type_input() :: #{binary() => any()}.

%% Example:
%% describe_stack_set_operation_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"OperationId">> := string(),
%%   <<"StackSetName">> := string()
%% }
-type describe_stack_set_operation_input() :: #{binary() => any()}.

%% Example:
%% property_difference() :: #{
%%   <<"ActualValue">> => string(),
%%   <<"DifferenceType">> => list(any()),
%%   <<"ExpectedValue">> => string(),
%%   <<"PropertyPath">> => string()
%% }
-type property_difference() :: #{binary() => any()}.

%% Example:
%% change() :: #{
%%   <<"HookInvocationCount">> => integer(),
%%   <<"ResourceChange">> => resource_change(),
%%   <<"Type">> => list(any())
%% }
-type change() :: #{binary() => any()}.

%% Example:
%% stack_set_operation_summary() :: #{
%%   <<"Action">> => list(any()),
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"EndTimestamp">> => non_neg_integer(),
%%   <<"OperationId">> => string(),
%%   <<"OperationPreferences">> => stack_set_operation_preferences(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => stack_set_operation_status_details(),
%%   <<"StatusReason">> => string()
%% }
-type stack_set_operation_summary() :: #{binary() => any()}.

%% Example:
%% describe_stack_resources_input() :: #{
%%   <<"LogicalResourceId">> => string(),
%%   <<"PhysicalResourceId">> => string(),
%%   <<"StackName">> => string()
%% }
-type describe_stack_resources_input() :: #{binary() => any()}.

%% Example:
%% delete_stack_instances_input() :: #{
%%   <<"Accounts">> => list(string()()),
%%   <<"CallAs">> => list(any()),
%%   <<"DeploymentTargets">> => deployment_targets(),
%%   <<"OperationId">> => string(),
%%   <<"OperationPreferences">> => stack_set_operation_preferences(),
%%   <<"Regions">> := list(string()()),
%%   <<"RetainStacks">> := boolean(),
%%   <<"StackSetName">> := string()
%% }
-type delete_stack_instances_input() :: #{binary() => any()}.

%% Example:
%% list_stacks_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackSummaries">> => list(stack_summary()())
%% }
-type list_stacks_output() :: #{binary() => any()}.

%% Example:
%% delete_generated_template_input() :: #{
%%   <<"GeneratedTemplateName">> := string()
%% }
-type delete_generated_template_input() :: #{binary() => any()}.

%% Example:
%% list_imports_input() :: #{
%%   <<"ExportName">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_imports_input() :: #{binary() => any()}.

%% Example:
%% update_stack_set_input() :: #{
%%   <<"Accounts">> => list(string()()),
%%   <<"AdministrationRoleARN">> => string(),
%%   <<"AutoDeployment">> => auto_deployment(),
%%   <<"CallAs">> => list(any()),
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"DeploymentTargets">> => deployment_targets(),
%%   <<"Description">> => string(),
%%   <<"ExecutionRoleName">> => string(),
%%   <<"ManagedExecution">> => managed_execution(),
%%   <<"OperationId">> => string(),
%%   <<"OperationPreferences">> => stack_set_operation_preferences(),
%%   <<"Parameters">> => list(parameter()()),
%%   <<"PermissionModel">> => list(any()),
%%   <<"Regions">> => list(string()()),
%%   <<"StackSetName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateURL">> => string(),
%%   <<"UsePreviousTemplate">> => boolean()
%% }
-type update_stack_set_input() :: #{binary() => any()}.

%% Example:
%% list_stack_instance_resource_drifts_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OperationId">> := string(),
%%   <<"StackInstanceAccount">> := string(),
%%   <<"StackInstanceRegion">> := string(),
%%   <<"StackInstanceResourceDriftStatuses">> => list(list(any())()),
%%   <<"StackSetName">> := string()
%% }
-type list_stack_instance_resource_drifts_input() :: #{binary() => any()}.

%% Example:
%% parameter_constraints() :: #{
%%   <<"AllowedValues">> => list(string()())
%% }
-type parameter_constraints() :: #{binary() => any()}.

%% Example:
%% stack_set_operation_status_details() :: #{
%%   <<"FailedStackInstancesCount">> => integer()
%% }
-type stack_set_operation_status_details() :: #{binary() => any()}.

%% Example:
%% account_gate_result() :: #{
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type account_gate_result() :: #{binary() => any()}.

%% Example:
%% delete_change_set_output() :: #{

%% }
-type delete_change_set_output() :: #{binary() => any()}.

%% Example:
%% stack_event() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DetailedStatus">> => list(any()),
%%   <<"EventId">> => string(),
%%   <<"HookFailureMode">> => list(any()),
%%   <<"HookInvocationPoint">> => list(any()),
%%   <<"HookStatus">> => list(any()),
%%   <<"HookStatusReason">> => string(),
%%   <<"HookType">> => string(),
%%   <<"LogicalResourceId">> => string(),
%%   <<"PhysicalResourceId">> => string(),
%%   <<"ResourceProperties">> => string(),
%%   <<"ResourceStatus">> => list(any()),
%%   <<"ResourceStatusReason">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackName">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type stack_event() :: #{binary() => any()}.

%% Example:
%% resource_mapping() :: #{
%%   <<"Destination">> => resource_location(),
%%   <<"Source">> => resource_location()
%% }
-type resource_mapping() :: #{binary() => any()}.

%% Example:
%% create_stack_refactor_input() :: #{
%%   <<"Description">> => string(),
%%   <<"EnableStackCreation">> => boolean(),
%%   <<"ResourceMappings">> => list(resource_mapping()()),
%%   <<"StackDefinitions">> := list(stack_definition()())
%% }
-type create_stack_refactor_input() :: #{binary() => any()}.

%% Example:
%% physical_resource_id_context_key_value_pair() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type physical_resource_id_context_key_value_pair() :: #{binary() => any()}.

%% Example:
%% get_template_output() :: #{
%%   <<"StagesAvailable">> => list(list(any())()),
%%   <<"TemplateBody">> => string()
%% }
-type get_template_output() :: #{binary() => any()}.

%% Example:
%% resource_definition() :: #{
%%   <<"LogicalResourceId">> => string(),
%%   <<"ResourceIdentifier">> => map(),
%%   <<"ResourceType">> => string()
%% }
-type resource_definition() :: #{binary() => any()}.

%% Example:
%% resource_to_import() :: #{
%%   <<"LogicalResourceId">> => string(),
%%   <<"ResourceIdentifier">> => map(),
%%   <<"ResourceType">> => string()
%% }
-type resource_to_import() :: #{binary() => any()}.

%% Example:
%% describe_stack_drift_detection_status_input() :: #{
%%   <<"StackDriftDetectionId">> := string()
%% }
-type describe_stack_drift_detection_status_input() :: #{binary() => any()}.

%% Example:
%% already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.

%% Example:
%% update_stack_output() :: #{
%%   <<"StackId">> => string()
%% }
-type update_stack_output() :: #{binary() => any()}.

%% Example:
%% template_parameter() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"Description">> => string(),
%%   <<"NoEcho">> => boolean(),
%%   <<"ParameterKey">> => string()
%% }
-type template_parameter() :: #{binary() => any()}.

%% Example:
%% list_generated_templates_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_generated_templates_input() :: #{binary() => any()}.

%% Example:
%% scanned_resource_identifier() :: #{
%%   <<"ResourceIdentifier">> => map(),
%%   <<"ResourceType">> => string()
%% }
-type scanned_resource_identifier() :: #{binary() => any()}.

%% Example:
%% type_version_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsDefaultVersion">> => boolean(),
%%   <<"PublicVersionNumber">> => string(),
%%   <<"TimeCreated">> => non_neg_integer(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> => string(),
%%   <<"VersionId">> => string()
%% }
-type type_version_summary() :: #{binary() => any()}.

%% Example:
%% warnings() :: #{
%%   <<"UnrecognizedResourceTypes">> => list(string()())
%% }
-type warnings() :: #{binary() => any()}.

%% Example:
%% concurrent_resources_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_resources_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% stack_refactor_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type stack_refactor_not_found_exception() :: #{binary() => any()}.

%% Example:
%% managed_execution() :: #{
%%   <<"Active">> => boolean()
%% }
-type managed_execution() :: #{binary() => any()}.

%% Example:
%% describe_change_set_hooks_output() :: #{
%%   <<"ChangeSetId">> => string(),
%%   <<"ChangeSetName">> => string(),
%%   <<"Hooks">> => list(change_set_hook()()),
%%   <<"NextToken">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_change_set_hooks_output() :: #{binary() => any()}.

%% Example:
%% describe_stack_instance_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"StackInstanceAccount">> := string(),
%%   <<"StackInstanceRegion">> := string(),
%%   <<"StackSetName">> := string()
%% }
-type describe_stack_instance_input() :: #{binary() => any()}.

%% Example:
%% list_hook_results_output() :: #{
%%   <<"HookResults">> => list(hook_result_summary()()),
%%   <<"NextToken">> => string(),
%%   <<"TargetId">> => string(),
%%   <<"TargetType">> => list(any())
%% }
-type list_hook_results_output() :: #{binary() => any()}.

%% Example:
%% invalid_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_operation_exception() :: #{binary() => any()}.

%% Example:
%% get_template_summary_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"StackName">> => string(),
%%   <<"StackSetName">> => string(),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateSummaryConfig">> => template_summary_config(),
%%   <<"TemplateURL">> => string()
%% }
-type get_template_summary_input() :: #{binary() => any()}.

%% Example:
%% resource_target_definition() :: #{
%%   <<"AfterValue">> => string(),
%%   <<"Attribute">> => list(any()),
%%   <<"AttributeChangeType">> => list(any()),
%%   <<"BeforeValue">> => string(),
%%   <<"Name">> => string(),
%%   <<"Path">> => string(),
%%   <<"RequiresRecreation">> => list(any())
%% }
-type resource_target_definition() :: #{binary() => any()}.

%% Example:
%% register_publisher_output() :: #{
%%   <<"PublisherId">> => string()
%% }
-type register_publisher_output() :: #{binary() => any()}.

%% Example:
%% list_stack_set_operation_results_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"Filters">> => list(operation_result_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OperationId">> := string(),
%%   <<"StackSetName">> := string()
%% }
-type list_stack_set_operation_results_input() :: #{binary() => any()}.

%% Example:
%% hook_result_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type hook_result_not_found_exception() :: #{binary() => any()}.

%% Example:
%% detect_stack_resource_drift_input() :: #{
%%   <<"LogicalResourceId">> := string(),
%%   <<"StackName">> := string()
%% }
-type detect_stack_resource_drift_input() :: #{binary() => any()}.

%% Example:
%% stack_resource_detail() :: #{
%%   <<"Description">> => string(),
%%   <<"DriftInformation">> => stack_resource_drift_information(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"LogicalResourceId">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"ModuleInfo">> => module_info(),
%%   <<"PhysicalResourceId">> => string(),
%%   <<"ResourceStatus">> => list(any()),
%%   <<"ResourceStatusReason">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackName">> => string()
%% }
-type stack_resource_detail() :: #{binary() => any()}.

%% Example:
%% stack_refactor_action() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"Detection">> => list(any()),
%%   <<"DetectionReason">> => string(),
%%   <<"Entity">> => list(any()),
%%   <<"PhysicalResourceId">> => string(),
%%   <<"ResourceIdentifier">> => string(),
%%   <<"ResourceMapping">> => resource_mapping(),
%%   <<"TagResources">> => list(tag()()),
%%   <<"UntagResources">> => list(string()())
%% }
-type stack_refactor_action() :: #{binary() => any()}.

%% Example:
%% stack_instance_summary() :: #{
%%   <<"Account">> => string(),
%%   <<"DriftStatus">> => list(any()),
%%   <<"LastDriftCheckTimestamp">> => non_neg_integer(),
%%   <<"LastOperationId">> => string(),
%%   <<"OrganizationalUnitId">> => string(),
%%   <<"Region">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackInstanceStatus">> => stack_instance_comprehensive_status(),
%%   <<"StackSetId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type stack_instance_summary() :: #{binary() => any()}.

%% Example:
%% update_termination_protection_input() :: #{
%%   <<"EnableTerminationProtection">> := boolean(),
%%   <<"StackName">> := string()
%% }
-type update_termination_protection_input() :: #{binary() => any()}.

%% Example:
%% delete_stack_instances_output() :: #{
%%   <<"OperationId">> => string()
%% }
-type delete_stack_instances_output() :: #{binary() => any()}.

%% Example:
%% stack_instance_comprehensive_status() :: #{
%%   <<"DetailedStatus">> => list(any())
%% }
-type stack_instance_comprehensive_status() :: #{binary() => any()}.

%% Example:
%% describe_stack_set_output() :: #{
%%   <<"StackSet">> => stack_set()
%% }
-type describe_stack_set_output() :: #{binary() => any()}.

%% Example:
%% describe_publisher_input() :: #{
%%   <<"PublisherId">> => string()
%% }
-type describe_publisher_input() :: #{binary() => any()}.

%% Example:
%% logging_config() :: #{
%%   <<"LogGroupName">> => string(),
%%   <<"LogRoleArn">> => string()
%% }
-type logging_config() :: #{binary() => any()}.

%% Example:
%% name_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type name_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% describe_stack_resource_drifts_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StackName">> := string(),
%%   <<"StackResourceDriftStatusFilters">> => list(list(any())())
%% }
-type describe_stack_resource_drifts_input() :: #{binary() => any()}.

%% Example:
%% scanned_resource() :: #{
%%   <<"ManagedByStack">> => boolean(),
%%   <<"ResourceIdentifier">> => map(),
%%   <<"ResourceType">> => string()
%% }
-type scanned_resource() :: #{binary() => any()}.

%% Example:
%% warning_property() :: #{
%%   <<"Description">> => string(),
%%   <<"PropertyPath">> => string(),
%%   <<"Required">> => boolean()
%% }
-type warning_property() :: #{binary() => any()}.

%% Example:
%% list_resource_scans_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resource_scans_input() :: #{binary() => any()}.

%% Example:
%% describe_resource_scan_output() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"PercentageCompleted">> => float(),
%%   <<"ResourceScanId">> => string(),
%%   <<"ResourceTypes">> => list(string()()),
%%   <<"ResourcesRead">> => integer(),
%%   <<"ResourcesScanned">> => integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type describe_resource_scan_output() :: #{binary() => any()}.

%% Example:
%% delete_stack_set_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"StackSetName">> := string()
%% }
-type delete_stack_set_input() :: #{binary() => any()}.

%% Example:
%% operation_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_not_found_exception() :: #{binary() => any()}.

%% Example:
%% stack_set_operation_result_summary() :: #{
%%   <<"Account">> => string(),
%%   <<"AccountGateResult">> => account_gate_result(),
%%   <<"OrganizationalUnitId">> => string(),
%%   <<"Region">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type stack_set_operation_result_summary() :: #{binary() => any()}.

%% Example:
%% stack_instance() :: #{
%%   <<"Account">> => string(),
%%   <<"DriftStatus">> => list(any()),
%%   <<"LastDriftCheckTimestamp">> => non_neg_integer(),
%%   <<"LastOperationId">> => string(),
%%   <<"OrganizationalUnitId">> => string(),
%%   <<"ParameterOverrides">> => list(parameter()()),
%%   <<"Region">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackInstanceStatus">> => stack_instance_comprehensive_status(),
%%   <<"StackSetId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type stack_instance() :: #{binary() => any()}.

%% Example:
%% list_type_versions_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TypeVersionSummaries">> => list(type_version_summary()())
%% }
-type list_type_versions_output() :: #{binary() => any()}.

%% Example:
%% describe_stack_events_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackEvents">> => list(stack_event()())
%% }
-type describe_stack_events_output() :: #{binary() => any()}.

%% Example:
%% type_summary() :: #{
%%   <<"DefaultVersionId">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsActivated">> => boolean(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"LatestPublicVersion">> => string(),
%%   <<"OriginalTypeName">> => string(),
%%   <<"PublicVersionNumber">> => string(),
%%   <<"PublisherId">> => string(),
%%   <<"PublisherIdentity">> => list(any()),
%%   <<"PublisherName">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeArn">> => string(),
%%   <<"TypeName">> => string()
%% }
-type type_summary() :: #{binary() => any()}.

%% Example:
%% import_stacks_to_stack_set_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"OperationId">> => string(),
%%   <<"OperationPreferences">> => stack_set_operation_preferences(),
%%   <<"OrganizationalUnitIds">> => list(string()()),
%%   <<"StackIds">> => list(string()()),
%%   <<"StackIdsUrl">> => string(),
%%   <<"StackSetName">> := string()
%% }
-type import_stacks_to_stack_set_input() :: #{binary() => any()}.

%% Example:
%% detect_stack_drift_output() :: #{
%%   <<"StackDriftDetectionId">> => string()
%% }
-type detect_stack_drift_output() :: #{binary() => any()}.

%% Example:
%% describe_type_registration_input() :: #{
%%   <<"RegistrationToken">> := string()
%% }
-type describe_type_registration_input() :: #{binary() => any()}.

%% Example:
%% resource_location() :: #{
%%   <<"LogicalResourceId">> => string(),
%%   <<"StackName">> => string()
%% }
-type resource_location() :: #{binary() => any()}.

%% Example:
%% test_type_output() :: #{
%%   <<"TypeVersionArn">> => string()
%% }
-type test_type_output() :: #{binary() => any()}.

%% Example:
%% list_type_registrations_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistrationStatusFilter">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"TypeArn">> => string(),
%%   <<"TypeName">> => string()
%% }
-type list_type_registrations_input() :: #{binary() => any()}.

%% Example:
%% created_but_modified_exception() :: #{
%%   <<"Message">> => string()
%% }
-type created_but_modified_exception() :: #{binary() => any()}.

%% Example:
%% deactivate_type_output() :: #{

%% }
-type deactivate_type_output() :: #{binary() => any()}.

%% Example:
%% operation_status_check_failed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_status_check_failed_exception() :: #{binary() => any()}.

%% Example:
%% detect_stack_set_drift_output() :: #{
%%   <<"OperationId">> => string()
%% }
-type detect_stack_set_drift_output() :: #{binary() => any()}.

%% Example:
%% deactivate_organizations_access_input() :: #{

%% }
-type deactivate_organizations_access_input() :: #{binary() => any()}.

%% Example:
%% execute_change_set_output() :: #{

%% }
-type execute_change_set_output() :: #{binary() => any()}.

%% Example:
%% create_stack_output() :: #{
%%   <<"StackId">> => string()
%% }
-type create_stack_output() :: #{binary() => any()}.

%% Example:
%% stack() :: #{
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"ChangeSetId">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeletionMode">> => list(any()),
%%   <<"DeletionTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DetailedStatus">> => list(any()),
%%   <<"DisableRollback">> => boolean(),
%%   <<"DriftInformation">> => stack_drift_information(),
%%   <<"EnableTerminationProtection">> => boolean(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"NotificationARNs">> => list(string()()),
%%   <<"Outputs">> => list(output()()),
%%   <<"Parameters">> => list(parameter()()),
%%   <<"ParentId">> => string(),
%%   <<"RetainExceptOnCreate">> => boolean(),
%%   <<"RoleARN">> => string(),
%%   <<"RollbackConfiguration">> => rollback_configuration(),
%%   <<"RootId">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackName">> => string(),
%%   <<"StackStatus">> => list(any()),
%%   <<"StackStatusReason">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TimeoutInMinutes">> => integer()
%% }
-type stack() :: #{binary() => any()}.

%% Example:
%% stack_set_auto_deployment_target_summary() :: #{
%%   <<"OrganizationalUnitId">> => string(),
%%   <<"Regions">> => list(string()())
%% }
-type stack_set_auto_deployment_target_summary() :: #{binary() => any()}.

%% Example:
%% set_type_default_version_input() :: #{
%%   <<"Arn">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> => string(),
%%   <<"VersionId">> => string()
%% }
-type set_type_default_version_input() :: #{binary() => any()}.

%% Example:
%% describe_generated_template_output() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"GeneratedTemplateId">> => string(),
%%   <<"GeneratedTemplateName">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Progress">> => template_progress(),
%%   <<"Resources">> => list(resource_detail()()),
%%   <<"StackId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string(),
%%   <<"TemplateConfiguration">> => template_configuration(),
%%   <<"TotalWarnings">> => integer()
%% }
-type describe_generated_template_output() :: #{binary() => any()}.

%% Example:
%% list_resource_scan_related_resources_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RelatedResources">> => list(scanned_resource()())
%% }
-type list_resource_scan_related_resources_output() :: #{binary() => any()}.

%% Example:
%% batch_describe_type_configurations_output() :: #{
%%   <<"Errors">> => list(batch_describe_type_configurations_error()()),
%%   <<"TypeConfigurations">> => list(type_configuration_details()()),
%%   <<"UnprocessedTypeConfigurations">> => list(type_configuration_identifier()())
%% }
-type batch_describe_type_configurations_output() :: #{binary() => any()}.

%% Example:
%% list_stack_sets_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_stack_sets_input() :: #{binary() => any()}.

%% Example:
%% signal_resource_input() :: #{
%%   <<"LogicalResourceId">> := string(),
%%   <<"StackName">> := string(),
%%   <<"Status">> := list(any()),
%%   <<"UniqueId">> := string()
%% }
-type signal_resource_input() :: #{binary() => any()}.

%% Example:
%% list_stacks_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackStatusFilter">> => list(list(any())())
%% }
-type list_stacks_input() :: #{binary() => any()}.

%% Example:
%% stack_drift_information() :: #{
%%   <<"LastCheckTimestamp">> => non_neg_integer(),
%%   <<"StackDriftStatus">> => list(any())
%% }
-type stack_drift_information() :: #{binary() => any()}.

%% Example:
%% change_set_hook_target_details() :: #{
%%   <<"ResourceTargetDetails">> => change_set_hook_resource_target_details(),
%%   <<"TargetType">> => list(any())
%% }
-type change_set_hook_target_details() :: #{binary() => any()}.

%% Example:
%% list_stack_set_operations_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StackSetName">> := string()
%% }
-type list_stack_set_operations_input() :: #{binary() => any()}.

%% Example:
%% template_summary_config() :: #{
%%   <<"TreatUnrecognizedResourceTypesAsWarnings">> => boolean()
%% }
-type template_summary_config() :: #{binary() => any()}.

%% Example:
%% list_type_registrations_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RegistrationTokenList">> => list(string()())
%% }
-type list_type_registrations_output() :: #{binary() => any()}.

%% Example:
%% stack_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeletionTime">> => non_neg_integer(),
%%   <<"DriftInformation">> => stack_drift_information_summary(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"ParentId">> => string(),
%%   <<"RootId">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackName">> => string(),
%%   <<"StackStatus">> => list(any()),
%%   <<"StackStatusReason">> => string(),
%%   <<"TemplateDescription">> => string()
%% }
-type stack_summary() :: #{binary() => any()}.

%% Example:
%% list_hook_results_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TargetId">> := string(),
%%   <<"TargetType">> := list(any())
%% }
-type list_hook_results_input() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% operation_in_progress_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% list_stack_resources_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackName">> := string()
%% }
-type list_stack_resources_input() :: #{binary() => any()}.

%% Example:
%% execute_change_set_input() :: #{
%%   <<"ChangeSetName">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"DisableRollback">> => boolean(),
%%   <<"RetainExceptOnCreate">> => boolean(),
%%   <<"StackName">> => string()
%% }
-type execute_change_set_input() :: #{binary() => any()}.

%% Example:
%% delete_change_set_input() :: #{
%%   <<"ChangeSetName">> := string(),
%%   <<"StackName">> => string()
%% }
-type delete_change_set_input() :: #{binary() => any()}.

%% Example:
%% type_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type type_not_found_exception() :: #{binary() => any()}.

%% Example:
%% set_type_configuration_input() :: #{
%%   <<"Configuration">> := string(),
%%   <<"ConfigurationAlias">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeArn">> => string(),
%%   <<"TypeName">> => string()
%% }
-type set_type_configuration_input() :: #{binary() => any()}.

%% Example:
%% create_generated_template_input() :: #{
%%   <<"GeneratedTemplateName">> := string(),
%%   <<"Resources">> => list(resource_definition()()),
%%   <<"StackName">> => string(),
%%   <<"TemplateConfiguration">> => template_configuration()
%% }
-type create_generated_template_input() :: #{binary() => any()}.

%% Example:
%% describe_publisher_output() :: #{
%%   <<"IdentityProvider">> => list(any()),
%%   <<"PublisherId">> => string(),
%%   <<"PublisherProfile">> => string(),
%%   <<"PublisherStatus">> => list(any())
%% }
-type describe_publisher_output() :: #{binary() => any()}.

%% Example:
%% describe_stack_set_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"StackSetName">> := string()
%% }
-type describe_stack_set_input() :: #{binary() => any()}.

%% Example:
%% list_stack_refactors_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackRefactorSummaries">> => list(stack_refactor_summary()())
%% }
-type list_stack_refactors_output() :: #{binary() => any()}.

%% Example:
%% activate_type_output() :: #{
%%   <<"Arn">> => string()
%% }
-type activate_type_output() :: #{binary() => any()}.

%% Example:
%% publish_type_input() :: #{
%%   <<"Arn">> => string(),
%%   <<"PublicVersionNumber">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> => string()
%% }
-type publish_type_input() :: #{binary() => any()}.

%% Example:
%% insufficient_capabilities_exception() :: #{
%%   <<"Message">> => string()
%% }
-type insufficient_capabilities_exception() :: #{binary() => any()}.

%% Example:
%% template_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"GeneratedTemplateId">> => string(),
%%   <<"GeneratedTemplateName">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"NumberOfResources">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type template_summary() :: #{binary() => any()}.

%% Example:
%% change_set_hook_resource_target_details() :: #{
%%   <<"LogicalResourceId">> => string(),
%%   <<"ResourceAction">> => list(any()),
%%   <<"ResourceType">> => string()
%% }
-type change_set_hook_resource_target_details() :: #{binary() => any()}.

%% Example:
%% create_change_set_input() :: #{
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"ChangeSetName">> := string(),
%%   <<"ChangeSetType">> => list(any()),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"ImportExistingResources">> => boolean(),
%%   <<"IncludeNestedStacks">> => boolean(),
%%   <<"NotificationARNs">> => list(string()()),
%%   <<"OnStackFailure">> => list(any()),
%%   <<"Parameters">> => list(parameter()()),
%%   <<"ResourceTypes">> => list(string()()),
%%   <<"ResourcesToImport">> => list(resource_to_import()()),
%%   <<"RoleARN">> => string(),
%%   <<"RollbackConfiguration">> => rollback_configuration(),
%%   <<"StackName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateURL">> => string(),
%%   <<"UsePreviousTemplate">> => boolean()
%% }
-type create_change_set_input() :: #{binary() => any()}.

%% Example:
%% create_stack_instances_input() :: #{
%%   <<"Accounts">> => list(string()()),
%%   <<"CallAs">> => list(any()),
%%   <<"DeploymentTargets">> => deployment_targets(),
%%   <<"OperationId">> => string(),
%%   <<"OperationPreferences">> => stack_set_operation_preferences(),
%%   <<"ParameterOverrides">> => list(parameter()()),
%%   <<"Regions">> := list(string()()),
%%   <<"StackSetName">> := string()
%% }
-type create_stack_instances_input() :: #{binary() => any()}.

%% Example:
%% estimate_template_cost_output() :: #{
%%   <<"Url">> => string()
%% }
-type estimate_template_cost_output() :: #{binary() => any()}.

%% Example:
%% invalid_change_set_status_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_change_set_status_exception() :: #{binary() => any()}.

%% Example:
%% resource_identifier_summary() :: #{
%%   <<"LogicalResourceIds">> => list(string()()),
%%   <<"ResourceIdentifiers">> => list(string()()),
%%   <<"ResourceType">> => string()
%% }
-type resource_identifier_summary() :: #{binary() => any()}.

%% Example:
%% import_stacks_to_stack_set_output() :: #{
%%   <<"OperationId">> => string()
%% }
-type import_stacks_to_stack_set_output() :: #{binary() => any()}.

%% Example:
%% stack_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type stack_not_found_exception() :: #{binary() => any()}.

%% Example:
%% parameter() :: #{
%%   <<"ParameterKey">> => string(),
%%   <<"ParameterValue">> => string(),
%%   <<"ResolvedValue">> => string(),
%%   <<"UsePreviousValue">> => boolean()
%% }
-type parameter() :: #{binary() => any()}.

%% Example:
%% stack_set_not_empty_exception() :: #{
%%   <<"Message">> => string()
%% }
-type stack_set_not_empty_exception() :: #{binary() => any()}.

%% Example:
%% validate_template_input() :: #{
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateURL">> => string()
%% }
-type validate_template_input() :: #{binary() => any()}.

%% Example:
%% stack_set_operation_preferences() :: #{
%%   <<"ConcurrencyMode">> => list(any()),
%%   <<"FailureToleranceCount">> => integer(),
%%   <<"FailureTolerancePercentage">> => integer(),
%%   <<"MaxConcurrentCount">> => integer(),
%%   <<"MaxConcurrentPercentage">> => integer(),
%%   <<"RegionConcurrencyType">> => list(any()),
%%   <<"RegionOrder">> => list(string()())
%% }
-type stack_set_operation_preferences() :: #{binary() => any()}.

%% Example:
%% invalid_state_transition_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_state_transition_exception() :: #{binary() => any()}.

%% Example:
%% stack_instance_resource_drifts_summary() :: #{
%%   <<"LogicalResourceId">> => string(),
%%   <<"PhysicalResourceId">> => string(),
%%   <<"PhysicalResourceIdContext">> => list(physical_resource_id_context_key_value_pair()()),
%%   <<"PropertyDifferences">> => list(property_difference()()),
%%   <<"ResourceType">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackResourceDriftStatus">> => list(any()),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type stack_instance_resource_drifts_summary() :: #{binary() => any()}.

%% Example:
%% type_configuration_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type type_configuration_not_found_exception() :: #{binary() => any()}.

%% Example:
%% update_stack_set_output() :: #{
%%   <<"OperationId">> => string()
%% }
-type update_stack_set_output() :: #{binary() => any()}.

%% Example:
%% account_limit() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => integer()
%% }
-type account_limit() :: #{binary() => any()}.

%% Example:
%% resource_scan_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_scan_not_found_exception() :: #{binary() => any()}.

%% Example:
%% stack_definition() :: #{
%%   <<"StackName">> => string(),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateURL">> => string()
%% }
-type stack_definition() :: #{binary() => any()}.

%% Example:
%% activate_organizations_access_input() :: #{

%% }
-type activate_organizations_access_input() :: #{binary() => any()}.

%% Example:
%% stop_stack_set_operation_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"OperationId">> := string(),
%%   <<"StackSetName">> := string()
%% }
-type stop_stack_set_operation_input() :: #{binary() => any()}.

%% Example:
%% validate_template_output() :: #{
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"CapabilitiesReason">> => string(),
%%   <<"DeclaredTransforms">> => list(string()()),
%%   <<"Description">> => string(),
%%   <<"Parameters">> => list(template_parameter()())
%% }
-type validate_template_output() :: #{binary() => any()}.

%% Example:
%% describe_stack_instance_output() :: #{
%%   <<"StackInstance">> => stack_instance()
%% }
-type describe_stack_instance_output() :: #{binary() => any()}.

%% Example:
%% update_stack_input() :: #{
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"DisableRollback">> => boolean(),
%%   <<"NotificationARNs">> => list(string()()),
%%   <<"Parameters">> => list(parameter()()),
%%   <<"ResourceTypes">> => list(string()()),
%%   <<"RetainExceptOnCreate">> => boolean(),
%%   <<"RoleARN">> => string(),
%%   <<"RollbackConfiguration">> => rollback_configuration(),
%%   <<"StackName">> := string(),
%%   <<"StackPolicyBody">> => string(),
%%   <<"StackPolicyDuringUpdateBody">> => string(),
%%   <<"StackPolicyDuringUpdateURL">> => string(),
%%   <<"StackPolicyURL">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateURL">> => string(),
%%   <<"UsePreviousTemplate">> => boolean()
%% }
-type update_stack_input() :: #{binary() => any()}.

%% Example:
%% resource_scan_in_progress_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_scan_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% list_stack_set_operations_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(stack_set_operation_summary()())
%% }
-type list_stack_set_operations_output() :: #{binary() => any()}.

%% Example:
%% estimate_template_cost_input() :: #{
%%   <<"Parameters">> => list(parameter()()),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateURL">> => string()
%% }
-type estimate_template_cost_input() :: #{binary() => any()}.

%% Example:
%% deactivate_type_input() :: #{
%%   <<"Arn">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> => string()
%% }
-type deactivate_type_input() :: #{binary() => any()}.

%% Example:
%% rollback_stack_output() :: #{
%%   <<"StackId">> => string()
%% }
-type rollback_stack_output() :: #{binary() => any()}.

%% Example:
%% type_configuration_details() :: #{
%%   <<"Alias">> => string(),
%%   <<"Arn">> => string(),
%%   <<"Configuration">> => string(),
%%   <<"IsDefaultConfiguration">> => boolean(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"TypeArn">> => string(),
%%   <<"TypeName">> => string()
%% }
-type type_configuration_details() :: #{binary() => any()}.

%% Example:
%% describe_change_set_output() :: #{
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"ChangeSetId">> => string(),
%%   <<"ChangeSetName">> => string(),
%%   <<"Changes">> => list(change()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ExecutionStatus">> => list(any()),
%%   <<"ImportExistingResources">> => boolean(),
%%   <<"IncludeNestedStacks">> => boolean(),
%%   <<"NextToken">> => string(),
%%   <<"NotificationARNs">> => list(string()()),
%%   <<"OnStackFailure">> => list(any()),
%%   <<"Parameters">> => list(parameter()()),
%%   <<"ParentChangeSetId">> => string(),
%%   <<"RollbackConfiguration">> => rollback_configuration(),
%%   <<"RootChangeSetId">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type describe_change_set_output() :: #{binary() => any()}.

%% Example:
%% describe_stack_resource_input() :: #{
%%   <<"LogicalResourceId">> := string(),
%%   <<"StackName">> := string()
%% }
-type describe_stack_resource_input() :: #{binary() => any()}.

%% Example:
%% required_activated_type() :: #{
%%   <<"OriginalTypeName">> => string(),
%%   <<"PublisherId">> => string(),
%%   <<"SupportedMajorVersions">> => list(integer()()),
%%   <<"TypeNameAlias">> => string()
%% }
-type required_activated_type() :: #{binary() => any()}.

%% Example:
%% update_generated_template_output() :: #{
%%   <<"GeneratedTemplateId">> => string()
%% }
-type update_generated_template_output() :: #{binary() => any()}.

%% Example:
%% describe_type_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"AutoUpdate">> => boolean(),
%%   <<"ConfigurationSchema">> => string(),
%%   <<"DefaultVersionId">> => string(),
%%   <<"DeprecatedStatus">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"DocumentationUrl">> => string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"IsActivated">> => boolean(),
%%   <<"IsDefaultVersion">> => boolean(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"LatestPublicVersion">> => string(),
%%   <<"LoggingConfig">> => logging_config(),
%%   <<"OriginalTypeArn">> => string(),
%%   <<"OriginalTypeName">> => string(),
%%   <<"ProvisioningType">> => list(any()),
%%   <<"PublicVersionNumber">> => string(),
%%   <<"PublisherId">> => string(),
%%   <<"RequiredActivatedTypes">> => list(required_activated_type()()),
%%   <<"Schema">> => string(),
%%   <<"SourceUrl">> => string(),
%%   <<"TimeCreated">> => non_neg_integer(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> => string(),
%%   <<"TypeTestsStatus">> => list(any()),
%%   <<"TypeTestsStatusDescription">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type describe_type_output() :: #{binary() => any()}.

%% Example:
%% get_template_input() :: #{
%%   <<"ChangeSetName">> => string(),
%%   <<"StackName">> => string(),
%%   <<"TemplateStage">> => list(any())
%% }
-type get_template_input() :: #{binary() => any()}.

%% Example:
%% module_info() :: #{
%%   <<"LogicalIdHierarchy">> => string(),
%%   <<"TypeHierarchy">> => string()
%% }
-type module_info() :: #{binary() => any()}.

%% Example:
%% stack_set_drift_detection_details() :: #{
%%   <<"DriftDetectionStatus">> => list(any()),
%%   <<"DriftStatus">> => list(any()),
%%   <<"DriftedStackInstancesCount">> => integer(),
%%   <<"FailedStackInstancesCount">> => integer(),
%%   <<"InProgressStackInstancesCount">> => integer(),
%%   <<"InSyncStackInstancesCount">> => integer(),
%%   <<"LastDriftCheckTimestamp">> => non_neg_integer(),
%%   <<"TotalStackInstancesCount">> => integer()
%% }
-type stack_set_drift_detection_details() :: #{binary() => any()}.

%% Example:
%% describe_account_limits_output() :: #{
%%   <<"AccountLimits">> => list(account_limit()()),
%%   <<"NextToken">> => string()
%% }
-type describe_account_limits_output() :: #{binary() => any()}.

%% Example:
%% list_resource_scan_related_resources_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceScanId">> := string(),
%%   <<"Resources">> := list(scanned_resource_identifier()())
%% }
-type list_resource_scan_related_resources_input() :: #{binary() => any()}.

%% Example:
%% type_configuration_identifier() :: #{
%%   <<"Type">> => list(any()),
%%   <<"TypeArn">> => string(),
%%   <<"TypeConfigurationAlias">> => string(),
%%   <<"TypeConfigurationArn">> => string(),
%%   <<"TypeName">> => string()
%% }
-type type_configuration_identifier() :: #{binary() => any()}.

%% Example:
%% list_types_input() :: #{
%%   <<"DeprecatedStatus">> => list(any()),
%%   <<"Filters">> => type_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProvisioningType">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type list_types_input() :: #{binary() => any()}.

%% Example:
%% describe_stack_resource_output() :: #{
%%   <<"StackResourceDetail">> => stack_resource_detail()
%% }
-type describe_stack_resource_output() :: #{binary() => any()}.

%% Example:
%% stack_set_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type stack_set_not_found_exception() :: #{binary() => any()}.

%% Example:
%% stack_drift_information_summary() :: #{
%%   <<"LastCheckTimestamp">> => non_neg_integer(),
%%   <<"StackDriftStatus">> => list(any())
%% }
-type stack_drift_information_summary() :: #{binary() => any()}.

%% Example:
%% describe_organizations_access_output() :: #{
%%   <<"Status">> => list(any())
%% }
-type describe_organizations_access_output() :: #{binary() => any()}.

%% Example:
%% list_generated_templates_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(template_summary()())
%% }
-type list_generated_templates_output() :: #{binary() => any()}.

%% Example:
%% get_stack_policy_output() :: #{
%%   <<"StackPolicyBody">> => string()
%% }
-type get_stack_policy_output() :: #{binary() => any()}.

%% Example:
%% describe_stack_events_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackName">> => string()
%% }
-type describe_stack_events_input() :: #{binary() => any()}.

%% Example:
%% parameter_declaration() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"Description">> => string(),
%%   <<"NoEcho">> => boolean(),
%%   <<"ParameterConstraints">> => parameter_constraints(),
%%   <<"ParameterKey">> => string(),
%%   <<"ParameterType">> => string()
%% }
-type parameter_declaration() :: #{binary() => any()}.

%% Example:
%% list_stack_sets_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(stack_set_summary()())
%% }
-type list_stack_sets_output() :: #{binary() => any()}.

%% Example:
%% describe_organizations_access_input() :: #{
%%   <<"CallAs">> => list(any())
%% }
-type describe_organizations_access_input() :: #{binary() => any()}.

%% Example:
%% list_exports_input() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_exports_input() :: #{binary() => any()}.

%% Example:
%% stack_instance_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type stack_instance_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_type_versions_input() :: #{
%%   <<"Arn">> => string(),
%%   <<"DeprecatedStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PublisherId">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> => string()
%% }
-type list_type_versions_input() :: #{binary() => any()}.

%% Example:
%% list_resource_scan_resources_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Resources">> => list(scanned_resource()())
%% }
-type list_resource_scan_resources_output() :: #{binary() => any()}.

%% Example:
%% list_exports_output() :: #{
%%   <<"Exports">> => list(export()()),
%%   <<"NextToken">> => string()
%% }
-type list_exports_output() :: #{binary() => any()}.

%% Example:
%% type_filters() :: #{
%%   <<"Category">> => list(any()),
%%   <<"PublisherId">> => string(),
%%   <<"TypeNamePrefix">> => string()
%% }
-type type_filters() :: #{binary() => any()}.

%% Example:
%% describe_generated_template_input() :: #{
%%   <<"GeneratedTemplateName">> := string()
%% }
-type describe_generated_template_input() :: #{binary() => any()}.

%% Example:
%% list_change_sets_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(change_set_summary()())
%% }
-type list_change_sets_output() :: #{binary() => any()}.

%% Example:
%% create_stack_instances_output() :: #{
%%   <<"OperationId">> => string()
%% }
-type create_stack_instances_output() :: #{binary() => any()}.

%% Example:
%% set_type_default_version_output() :: #{

%% }
-type set_type_default_version_output() :: #{binary() => any()}.

%% Example:
%% deregister_type_output() :: #{

%% }
-type deregister_type_output() :: #{binary() => any()}.

%% Example:
%% list_resource_scans_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceScanSummaries">> => list(resource_scan_summary()())
%% }
-type list_resource_scans_output() :: #{binary() => any()}.

%% Example:
%% publish_type_output() :: #{
%%   <<"PublicTypeArn">> => string()
%% }
-type publish_type_output() :: #{binary() => any()}.

%% Example:
%% create_stack_set_output() :: #{
%%   <<"StackSetId">> => string()
%% }
-type create_stack_set_output() :: #{binary() => any()}.

%% Example:
%% describe_type_input() :: #{
%%   <<"Arn">> => string(),
%%   <<"PublicVersionNumber">> => string(),
%%   <<"PublisherId">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> => string(),
%%   <<"VersionId">> => string()
%% }
-type describe_type_input() :: #{binary() => any()}.

%% Example:
%% start_resource_scan_output() :: #{
%%   <<"ResourceScanId">> => string()
%% }
-type start_resource_scan_output() :: #{binary() => any()}.

%% Example:
%% stack_resource_drift_information() :: #{
%%   <<"LastCheckTimestamp">> => non_neg_integer(),
%%   <<"StackResourceDriftStatus">> => list(any())
%% }
-type stack_resource_drift_information() :: #{binary() => any()}.

%% Example:
%% describe_change_set_input() :: #{
%%   <<"ChangeSetName">> := string(),
%%   <<"IncludePropertyValues">> => boolean(),
%%   <<"NextToken">> => string(),
%%   <<"StackName">> => string()
%% }
-type describe_change_set_input() :: #{binary() => any()}.

%% Example:
%% batch_describe_type_configurations_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"TypeConfigurationIdentifier">> => type_configuration_identifier()
%% }
-type batch_describe_type_configurations_error() :: #{binary() => any()}.

%% Example:
%% stop_stack_set_operation_output() :: #{

%% }
-type stop_stack_set_operation_output() :: #{binary() => any()}.

%% Example:
%% warning_detail() :: #{
%%   <<"Properties">> => list(warning_property()()),
%%   <<"Type">> => list(any())
%% }
-type warning_detail() :: #{binary() => any()}.

%% Example:
%% describe_stack_resources_output() :: #{
%%   <<"StackResources">> => list(stack_resource()())
%% }
-type describe_stack_resources_output() :: #{binary() => any()}.

%% Example:
%% list_stack_set_auto_deployment_targets_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StackSetName">> := string()
%% }
-type list_stack_set_auto_deployment_targets_input() :: #{binary() => any()}.

%% Example:
%% stack_resource_drift() :: #{
%%   <<"ActualProperties">> => string(),
%%   <<"ExpectedProperties">> => string(),
%%   <<"LogicalResourceId">> => string(),
%%   <<"ModuleInfo">> => module_info(),
%%   <<"PhysicalResourceId">> => string(),
%%   <<"PhysicalResourceIdContext">> => list(physical_resource_id_context_key_value_pair()()),
%%   <<"PropertyDifferences">> => list(property_difference()()),
%%   <<"ResourceType">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackResourceDriftStatus">> => list(any()),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type stack_resource_drift() :: #{binary() => any()}.

%% Example:
%% detect_stack_resource_drift_output() :: #{
%%   <<"StackResourceDrift">> => stack_resource_drift()
%% }
-type detect_stack_resource_drift_output() :: #{binary() => any()}.

%% Example:
%% create_stack_input() :: #{
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"DisableRollback">> => boolean(),
%%   <<"EnableTerminationProtection">> => boolean(),
%%   <<"NotificationARNs">> => list(string()()),
%%   <<"OnFailure">> => list(any()),
%%   <<"Parameters">> => list(parameter()()),
%%   <<"ResourceTypes">> => list(string()()),
%%   <<"RetainExceptOnCreate">> => boolean(),
%%   <<"RoleARN">> => string(),
%%   <<"RollbackConfiguration">> => rollback_configuration(),
%%   <<"StackName">> := string(),
%%   <<"StackPolicyBody">> => string(),
%%   <<"StackPolicyURL">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateURL">> => string(),
%%   <<"TimeoutInMinutes">> => integer()
%% }
-type create_stack_input() :: #{binary() => any()}.

%% Example:
%% describe_change_set_hooks_input() :: #{
%%   <<"ChangeSetName">> := string(),
%%   <<"LogicalResourceId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"StackName">> => string()
%% }
-type describe_change_set_hooks_input() :: #{binary() => any()}.

%% Example:
%% continue_update_rollback_output() :: #{

%% }
-type continue_update_rollback_output() :: #{binary() => any()}.

%% Example:
%% resource_scan_summary() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"PercentageCompleted">> => float(),
%%   <<"ResourceScanId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type resource_scan_summary() :: #{binary() => any()}.

%% Example:
%% change_set_hook() :: #{
%%   <<"FailureMode">> => list(any()),
%%   <<"InvocationPoint">> => list(any()),
%%   <<"TargetDetails">> => change_set_hook_target_details(),
%%   <<"TypeConfigurationVersionId">> => string(),
%%   <<"TypeName">> => string(),
%%   <<"TypeVersionId">> => string()
%% }
-type change_set_hook() :: #{binary() => any()}.

%% Example:
%% describe_resource_scan_input() :: #{
%%   <<"ResourceScanId">> := string()
%% }
-type describe_resource_scan_input() :: #{binary() => any()}.

%% Example:
%% hook_result_summary() :: #{
%%   <<"FailureMode">> => list(any()),
%%   <<"HookStatusReason">> => string(),
%%   <<"InvocationPoint">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"TypeConfigurationVersionId">> => string(),
%%   <<"TypeName">> => string(),
%%   <<"TypeVersionId">> => string()
%% }
-type hook_result_summary() :: #{binary() => any()}.

%% Example:
%% resource_change_detail() :: #{
%%   <<"CausingEntity">> => string(),
%%   <<"ChangeSource">> => list(any()),
%%   <<"Evaluation">> => list(any()),
%%   <<"Target">> => resource_target_definition()
%% }
-type resource_change_detail() :: #{binary() => any()}.

%% Example:
%% start_resource_scan_input() :: #{
%%   <<"ClientRequestToken">> => string()
%% }
-type start_resource_scan_input() :: #{binary() => any()}.

%% Example:
%% describe_stack_drift_detection_status_output() :: #{
%%   <<"DetectionStatus">> => list(any()),
%%   <<"DetectionStatusReason">> => string(),
%%   <<"DriftedStackResourceCount">> => integer(),
%%   <<"StackDriftDetectionId">> => string(),
%%   <<"StackDriftStatus">> => list(any()),
%%   <<"StackId">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type describe_stack_drift_detection_status_output() :: #{binary() => any()}.

%% Example:
%% describe_stacks_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackName">> => string()
%% }
-type describe_stacks_input() :: #{binary() => any()}.

%% Example:
%% template_configuration() :: #{
%%   <<"DeletionPolicy">> => list(any()),
%%   <<"UpdateReplacePolicy">> => list(any())
%% }
-type template_configuration() :: #{binary() => any()}.

%% Example:
%% record_handler_progress_input() :: #{
%%   <<"BearerToken">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"CurrentOperationStatus">> => list(any()),
%%   <<"ErrorCode">> => list(any()),
%%   <<"OperationStatus">> := list(any()),
%%   <<"ResourceModel">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type record_handler_progress_input() :: #{binary() => any()}.

%% Example:
%% update_termination_protection_output() :: #{
%%   <<"StackId">> => string()
%% }
-type update_termination_protection_output() :: #{binary() => any()}.

%% Example:
%% change_set_summary() :: #{
%%   <<"ChangeSetId">> => string(),
%%   <<"ChangeSetName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ExecutionStatus">> => list(any()),
%%   <<"ImportExistingResources">> => boolean(),
%%   <<"IncludeNestedStacks">> => boolean(),
%%   <<"ParentChangeSetId">> => string(),
%%   <<"RootChangeSetId">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type change_set_summary() :: #{binary() => any()}.

%% Example:
%% stack_set() :: #{
%%   <<"AdministrationRoleARN">> => string(),
%%   <<"AutoDeployment">> => auto_deployment(),
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"Description">> => string(),
%%   <<"ExecutionRoleName">> => string(),
%%   <<"ManagedExecution">> => managed_execution(),
%%   <<"OrganizationalUnitIds">> => list(string()()),
%%   <<"Parameters">> => list(parameter()()),
%%   <<"PermissionModel">> => list(any()),
%%   <<"Regions">> => list(string()()),
%%   <<"StackSetARN">> => string(),
%%   <<"StackSetDriftDetectionDetails">> => stack_set_drift_detection_details(),
%%   <<"StackSetId">> => string(),
%%   <<"StackSetName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TemplateBody">> => string()
%% }
-type stack_set() :: #{binary() => any()}.

%% Example:
%% record_handler_progress_output() :: #{

%% }
-type record_handler_progress_output() :: #{binary() => any()}.

%% Example:
%% update_stack_instances_input() :: #{
%%   <<"Accounts">> => list(string()()),
%%   <<"CallAs">> => list(any()),
%%   <<"DeploymentTargets">> => deployment_targets(),
%%   <<"OperationId">> => string(),
%%   <<"OperationPreferences">> => stack_set_operation_preferences(),
%%   <<"ParameterOverrides">> => list(parameter()()),
%%   <<"Regions">> := list(string()()),
%%   <<"StackSetName">> := string()
%% }
-type update_stack_instances_input() :: #{binary() => any()}.

%% Example:
%% create_generated_template_output() :: #{
%%   <<"GeneratedTemplateId">> => string()
%% }
-type create_generated_template_output() :: #{binary() => any()}.

%% Example:
%% resource_scan_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_scan_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% stack_resource_drift_information_summary() :: #{
%%   <<"LastCheckTimestamp">> => non_neg_integer(),
%%   <<"StackResourceDriftStatus">> => list(any())
%% }
-type stack_resource_drift_information_summary() :: #{binary() => any()}.

%% Example:
%% create_change_set_output() :: #{
%%   <<"Id">> => string(),
%%   <<"StackId">> => string()
%% }
-type create_change_set_output() :: #{binary() => any()}.

%% Example:
%% list_stack_instances_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"Filters">> => list(stack_instance_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StackInstanceAccount">> => string(),
%%   <<"StackInstanceRegion">> => string(),
%%   <<"StackSetName">> := string()
%% }
-type list_stack_instances_input() :: #{binary() => any()}.

%% Example:
%% describe_account_limits_input() :: #{
%%   <<"NextToken">> => string()
%% }
-type describe_account_limits_input() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% deregister_type_input() :: #{
%%   <<"Arn">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> => string(),
%%   <<"VersionId">> => string()
%% }
-type deregister_type_input() :: #{binary() => any()}.

%% Example:
%% deactivate_organizations_access_output() :: #{

%% }
-type deactivate_organizations_access_output() :: #{binary() => any()}.

%% Example:
%% list_stack_refactor_actions_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackRefactorActions">> => list(stack_refactor_action()())
%% }
-type list_stack_refactor_actions_output() :: #{binary() => any()}.

%% Example:
%% token_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type token_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% describe_stack_refactor_input() :: #{
%%   <<"StackRefactorId">> := string()
%% }
-type describe_stack_refactor_input() :: #{binary() => any()}.

%% Example:
%% batch_describe_type_configurations_input() :: #{
%%   <<"TypeConfigurationIdentifiers">> := list(type_configuration_identifier()())
%% }
-type batch_describe_type_configurations_input() :: #{binary() => any()}.

%% Example:
%% list_types_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TypeSummaries">> => list(type_summary()())
%% }
-type list_types_output() :: #{binary() => any()}.

%% Example:
%% set_type_configuration_output() :: #{
%%   <<"ConfigurationArn">> => string()
%% }
-type set_type_configuration_output() :: #{binary() => any()}.

%% Example:
%% template_progress() :: #{
%%   <<"ResourcesFailed">> => integer(),
%%   <<"ResourcesPending">> => integer(),
%%   <<"ResourcesProcessing">> => integer(),
%%   <<"ResourcesSucceeded">> => integer()
%% }
-type template_progress() :: #{binary() => any()}.

%% Example:
%% get_template_summary_output() :: #{
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"CapabilitiesReason">> => string(),
%%   <<"DeclaredTransforms">> => list(string()()),
%%   <<"Description">> => string(),
%%   <<"Metadata">> => string(),
%%   <<"Parameters">> => list(parameter_declaration()()),
%%   <<"ResourceIdentifierSummaries">> => list(resource_identifier_summary()()),
%%   <<"ResourceTypes">> => list(string()()),
%%   <<"Version">> => string(),
%%   <<"Warnings">> => warnings()
%% }
-type get_template_summary_output() :: #{binary() => any()}.

%% Example:
%% stack_set_summary() :: #{
%%   <<"AutoDeployment">> => auto_deployment(),
%%   <<"Description">> => string(),
%%   <<"DriftStatus">> => list(any()),
%%   <<"LastDriftCheckTimestamp">> => non_neg_integer(),
%%   <<"ManagedExecution">> => managed_execution(),
%%   <<"PermissionModel">> => list(any()),
%%   <<"StackSetId">> => string(),
%%   <<"StackSetName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type stack_set_summary() :: #{binary() => any()}.

%% Example:
%% stack_instance_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => string()
%% }
-type stack_instance_filter() :: #{binary() => any()}.

%% Example:
%% continue_update_rollback_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"ResourcesToSkip">> => list(string()()),
%%   <<"RoleARN">> => string(),
%%   <<"StackName">> := string()
%% }
-type continue_update_rollback_input() :: #{binary() => any()}.

%% Example:
%% operation_id_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_id_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% describe_type_registration_output() :: #{
%%   <<"Description">> => string(),
%%   <<"ProgressStatus">> => list(any()),
%%   <<"TypeArn">> => string(),
%%   <<"TypeVersionArn">> => string()
%% }
-type describe_type_registration_output() :: #{binary() => any()}.

%% Example:
%% activate_organizations_access_output() :: #{

%% }
-type activate_organizations_access_output() :: #{binary() => any()}.

%% Example:
%% list_stack_instance_resource_drifts_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(stack_instance_resource_drifts_summary()())
%% }
-type list_stack_instance_resource_drifts_output() :: #{binary() => any()}.

%% Example:
%% rollback_configuration() :: #{
%%   <<"MonitoringTimeInMinutes">> => integer(),
%%   <<"RollbackTriggers">> => list(rollback_trigger()())
%% }
-type rollback_configuration() :: #{binary() => any()}.

%% Example:
%% list_change_sets_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackName">> := string()
%% }
-type list_change_sets_input() :: #{binary() => any()}.

%% Example:
%% rollback_trigger() :: #{
%%   <<"Arn">> => string(),
%%   <<"Type">> => string()
%% }
-type rollback_trigger() :: #{binary() => any()}.

%% Example:
%% list_stack_instances_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(stack_instance_summary()())
%% }
-type list_stack_instances_output() :: #{binary() => any()}.

%% Example:
%% detect_stack_set_drift_input() :: #{
%%   <<"CallAs">> => list(any()),
%%   <<"OperationId">> => string(),
%%   <<"OperationPreferences">> => stack_set_operation_preferences(),
%%   <<"StackSetName">> := string()
%% }
-type detect_stack_set_drift_input() :: #{binary() => any()}.

%% Example:
%% list_stack_set_operation_results_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(stack_set_operation_result_summary()())
%% }
-type list_stack_set_operation_results_output() :: #{binary() => any()}.

%% Example:
%% get_generated_template_output() :: #{
%%   <<"Status">> => list(any()),
%%   <<"TemplateBody">> => string()
%% }
-type get_generated_template_output() :: #{binary() => any()}.

%% Example:
%% create_stack_set_input() :: #{
%%   <<"AdministrationRoleARN">> => string(),
%%   <<"AutoDeployment">> => auto_deployment(),
%%   <<"CallAs">> => list(any()),
%%   <<"Capabilities">> => list(list(any())()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"ExecutionRoleName">> => string(),
%%   <<"ManagedExecution">> => managed_execution(),
%%   <<"Parameters">> => list(parameter()()),
%%   <<"PermissionModel">> => list(any()),
%%   <<"StackId">> => string(),
%%   <<"StackSetName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateURL">> => string()
%% }
-type create_stack_set_input() :: #{binary() => any()}.

%% Example:
%% operation_result_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => string()
%% }
-type operation_result_filter() :: #{binary() => any()}.

%% Example:
%% execute_stack_refactor_input() :: #{
%%   <<"StackRefactorId">> := string()
%% }
-type execute_stack_refactor_input() :: #{binary() => any()}.

%% Example:
%% describe_stack_refactor_output() :: #{
%%   <<"Description">> => string(),
%%   <<"ExecutionStatus">> => list(any()),
%%   <<"ExecutionStatusReason">> => string(),
%%   <<"StackIds">> => list(string()()),
%%   <<"StackRefactorId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type describe_stack_refactor_output() :: #{binary() => any()}.

%% Example:
%% list_stack_refactors_input() :: #{
%%   <<"ExecutionStatusFilter">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_stack_refactors_input() :: #{binary() => any()}.

%% Example:
%% change_set_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type change_set_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_stack_set_output() :: #{

%% }
-type delete_stack_set_output() :: #{binary() => any()}.

%% Example:
%% resource_change() :: #{
%%   <<"Action">> => list(any()),
%%   <<"AfterContext">> => string(),
%%   <<"BeforeContext">> => string(),
%%   <<"ChangeSetId">> => string(),
%%   <<"Details">> => list(resource_change_detail()()),
%%   <<"LogicalResourceId">> => string(),
%%   <<"ModuleInfo">> => module_info(),
%%   <<"PhysicalResourceId">> => string(),
%%   <<"PolicyAction">> => list(any()),
%%   <<"Replacement">> => list(any()),
%%   <<"ResourceType">> => string(),
%%   <<"Scope">> => list(list(any())())
%% }
-type resource_change() :: #{binary() => any()}.

%% Example:
%% deployment_targets() :: #{
%%   <<"AccountFilterType">> => list(any()),
%%   <<"Accounts">> => list(string()()),
%%   <<"AccountsUrl">> => string(),
%%   <<"OrganizationalUnitIds">> => list(string()())
%% }
-type deployment_targets() :: #{binary() => any()}.

%% Example:
%% detect_stack_drift_input() :: #{
%%   <<"LogicalResourceIds">> => list(string()()),
%%   <<"StackName">> := string()
%% }
-type detect_stack_drift_input() :: #{binary() => any()}.

%% Example:
%% stack_resource() :: #{
%%   <<"Description">> => string(),
%%   <<"DriftInformation">> => stack_resource_drift_information(),
%%   <<"LogicalResourceId">> => string(),
%%   <<"ModuleInfo">> => module_info(),
%%   <<"PhysicalResourceId">> => string(),
%%   <<"ResourceStatus">> => list(any()),
%%   <<"ResourceStatusReason">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackName">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type stack_resource() :: #{binary() => any()}.

%% Example:
%% stack_set_operation() :: #{
%%   <<"Action">> => list(any()),
%%   <<"AdministrationRoleARN">> => string(),
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"DeploymentTargets">> => deployment_targets(),
%%   <<"EndTimestamp">> => non_neg_integer(),
%%   <<"ExecutionRoleName">> => string(),
%%   <<"OperationId">> => string(),
%%   <<"OperationPreferences">> => stack_set_operation_preferences(),
%%   <<"RetainStacks">> => boolean(),
%%   <<"StackSetDriftDetectionDetails">> => stack_set_drift_detection_details(),
%%   <<"StackSetId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => stack_set_operation_status_details(),
%%   <<"StatusReason">> => string()
%% }
-type stack_set_operation() :: #{binary() => any()}.

%% Example:
%% register_type_output() :: #{
%%   <<"RegistrationToken">> => string()
%% }
-type register_type_output() :: #{binary() => any()}.

%% Example:
%% export() :: #{
%%   <<"ExportingStackId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type export() :: #{binary() => any()}.

%% Example:
%% get_generated_template_input() :: #{
%%   <<"Format">> => list(any()),
%%   <<"GeneratedTemplateName">> := string()
%% }
-type get_generated_template_input() :: #{binary() => any()}.

%% Example:
%% update_stack_instances_output() :: #{
%%   <<"OperationId">> => string()
%% }
-type update_stack_instances_output() :: #{binary() => any()}.

%% Example:
%% list_stack_set_auto_deployment_targets_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(stack_set_auto_deployment_target_summary()())
%% }
-type list_stack_set_auto_deployment_targets_output() :: #{binary() => any()}.

%% Example:
%% output() :: #{
%%   <<"Description">> => string(),
%%   <<"ExportName">> => string(),
%%   <<"OutputKey">> => string(),
%%   <<"OutputValue">> => string()
%% }
-type output() :: #{binary() => any()}.

%% Example:
%% c_f_n_registry_exception() :: #{
%%   <<"Message">> => string()
%% }
-type c_f_n_registry_exception() :: #{binary() => any()}.

%% Example:
%% describe_stacks_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Stacks">> => list(stack()())
%% }
-type describe_stacks_output() :: #{binary() => any()}.

%% Example:
%% delete_stack_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DeletionMode">> => list(any()),
%%   <<"RetainResources">> => list(string()()),
%%   <<"RoleARN">> => string(),
%%   <<"StackName">> := string()
%% }
-type delete_stack_input() :: #{binary() => any()}.

%% Example:
%% resource_detail() :: #{
%%   <<"LogicalResourceId">> => string(),
%%   <<"ResourceIdentifier">> => map(),
%%   <<"ResourceStatus">> => list(any()),
%%   <<"ResourceStatusReason">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"Warnings">> => list(warning_detail()())
%% }
-type resource_detail() :: #{binary() => any()}.

%% Example:
%% describe_stack_set_operation_output() :: #{
%%   <<"StackSetOperation">> => stack_set_operation()
%% }
-type describe_stack_set_operation_output() :: #{binary() => any()}.

%% Example:
%% list_imports_output() :: #{
%%   <<"Imports">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type list_imports_output() :: #{binary() => any()}.

%% Example:
%% register_type_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"LoggingConfig">> => logging_config(),
%%   <<"SchemaHandlerPackage">> := string(),
%%   <<"Type">> => list(any()),
%%   <<"TypeName">> := string()
%% }
-type register_type_input() :: #{binary() => any()}.

%% Example:
%% auto_deployment() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"RetainStacksOnAccountRemoval">> => boolean()
%% }
-type auto_deployment() :: #{binary() => any()}.

%% Example:
%% list_stack_refactor_actions_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StackRefactorId">> := string()
%% }
-type list_stack_refactor_actions_input() :: #{binary() => any()}.

-type activate_organizations_access_errors() ::
    operation_not_found_exception() | 
    invalid_operation_exception().

-type activate_type_errors() ::
    c_f_n_registry_exception() | 
    type_not_found_exception().

-type batch_describe_type_configurations_errors() ::
    c_f_n_registry_exception() | 
    type_configuration_not_found_exception().

-type cancel_update_stack_errors() ::
    token_already_exists_exception().

-type continue_update_rollback_errors() ::
    token_already_exists_exception().

-type create_change_set_errors() ::
    limit_exceeded_exception() | 
    insufficient_capabilities_exception() | 
    already_exists_exception().

-type create_generated_template_errors() ::
    limit_exceeded_exception() | 
    concurrent_resources_limit_exceeded_exception() | 
    already_exists_exception().

-type create_stack_errors() ::
    token_already_exists_exception() | 
    limit_exceeded_exception() | 
    insufficient_capabilities_exception() | 
    already_exists_exception().

-type create_stack_instances_errors() ::
    operation_id_already_exists_exception() | 
    limit_exceeded_exception() | 
    stack_set_not_found_exception() | 
    operation_in_progress_exception() | 
    invalid_operation_exception() | 
    stale_request_exception().

-type create_stack_set_errors() ::
    limit_exceeded_exception() | 
    created_but_modified_exception() | 
    name_already_exists_exception().

-type deactivate_organizations_access_errors() ::
    operation_not_found_exception() | 
    invalid_operation_exception().

-type deactivate_type_errors() ::
    c_f_n_registry_exception() | 
    type_not_found_exception().

-type delete_change_set_errors() ::
    invalid_change_set_status_exception().

-type delete_generated_template_errors() ::
    concurrent_resources_limit_exceeded_exception() | 
    generated_template_not_found_exception().

-type delete_stack_errors() ::
    token_already_exists_exception().

-type delete_stack_instances_errors() ::
    operation_id_already_exists_exception() | 
    stack_set_not_found_exception() | 
    operation_in_progress_exception() | 
    invalid_operation_exception() | 
    stale_request_exception().

-type delete_stack_set_errors() ::
    stack_set_not_empty_exception() | 
    operation_in_progress_exception().

-type deregister_type_errors() ::
    c_f_n_registry_exception() | 
    type_not_found_exception().

-type describe_change_set_errors() ::
    change_set_not_found_exception().

-type describe_change_set_hooks_errors() ::
    change_set_not_found_exception().

-type describe_generated_template_errors() ::
    generated_template_not_found_exception().

-type describe_organizations_access_errors() ::
    operation_not_found_exception() | 
    invalid_operation_exception().

-type describe_publisher_errors() ::
    c_f_n_registry_exception().

-type describe_resource_scan_errors() ::
    resource_scan_not_found_exception().

-type describe_stack_instance_errors() ::
    stack_instance_not_found_exception() | 
    stack_set_not_found_exception().

-type describe_stack_refactor_errors() ::
    stack_refactor_not_found_exception().

-type describe_stack_set_errors() ::
    stack_set_not_found_exception().

-type describe_stack_set_operation_errors() ::
    stack_set_not_found_exception() | 
    operation_not_found_exception().

-type describe_type_errors() ::
    c_f_n_registry_exception() | 
    type_not_found_exception().

-type describe_type_registration_errors() ::
    c_f_n_registry_exception().

-type detect_stack_set_drift_errors() ::
    stack_set_not_found_exception() | 
    operation_in_progress_exception() | 
    invalid_operation_exception().

-type execute_change_set_errors() ::
    change_set_not_found_exception() | 
    token_already_exists_exception() | 
    invalid_change_set_status_exception() | 
    insufficient_capabilities_exception().

-type get_generated_template_errors() ::
    generated_template_not_found_exception().

-type get_template_errors() ::
    change_set_not_found_exception().

-type get_template_summary_errors() ::
    stack_set_not_found_exception().

-type import_stacks_to_stack_set_errors() ::
    operation_id_already_exists_exception() | 
    limit_exceeded_exception() | 
    stack_set_not_found_exception() | 
    stack_not_found_exception() | 
    operation_in_progress_exception() | 
    invalid_operation_exception() | 
    stale_request_exception().

-type list_hook_results_errors() ::
    hook_result_not_found_exception().

-type list_resource_scan_related_resources_errors() ::
    resource_scan_in_progress_exception() | 
    resource_scan_not_found_exception().

-type list_resource_scan_resources_errors() ::
    resource_scan_in_progress_exception() | 
    resource_scan_not_found_exception().

-type list_stack_instance_resource_drifts_errors() ::
    stack_instance_not_found_exception() | 
    stack_set_not_found_exception() | 
    operation_not_found_exception().

-type list_stack_instances_errors() ::
    stack_set_not_found_exception().

-type list_stack_set_auto_deployment_targets_errors() ::
    stack_set_not_found_exception().

-type list_stack_set_operation_results_errors() ::
    stack_set_not_found_exception() | 
    operation_not_found_exception().

-type list_stack_set_operations_errors() ::
    stack_set_not_found_exception().

-type list_type_registrations_errors() ::
    c_f_n_registry_exception().

-type list_type_versions_errors() ::
    c_f_n_registry_exception().

-type list_types_errors() ::
    c_f_n_registry_exception().

-type publish_type_errors() ::
    c_f_n_registry_exception() | 
    type_not_found_exception().

-type record_handler_progress_errors() ::
    invalid_state_transition_exception() | 
    operation_status_check_failed_exception().

-type register_publisher_errors() ::
    c_f_n_registry_exception().

-type register_type_errors() ::
    c_f_n_registry_exception().

-type rollback_stack_errors() ::
    token_already_exists_exception().

-type set_type_configuration_errors() ::
    c_f_n_registry_exception() | 
    type_not_found_exception().

-type set_type_default_version_errors() ::
    c_f_n_registry_exception() | 
    type_not_found_exception().

-type start_resource_scan_errors() ::
    resource_scan_limit_exceeded_exception() | 
    resource_scan_in_progress_exception().

-type stop_stack_set_operation_errors() ::
    stack_set_not_found_exception() | 
    operation_not_found_exception() | 
    invalid_operation_exception().

-type test_type_errors() ::
    c_f_n_registry_exception() | 
    type_not_found_exception().

-type update_generated_template_errors() ::
    limit_exceeded_exception() | 
    already_exists_exception() | 
    generated_template_not_found_exception().

-type update_stack_errors() ::
    token_already_exists_exception() | 
    insufficient_capabilities_exception().

-type update_stack_instances_errors() ::
    operation_id_already_exists_exception() | 
    stack_instance_not_found_exception() | 
    stack_set_not_found_exception() | 
    operation_in_progress_exception() | 
    invalid_operation_exception() | 
    stale_request_exception().

-type update_stack_set_errors() ::
    operation_id_already_exists_exception() | 
    stack_instance_not_found_exception() | 
    stack_set_not_found_exception() | 
    operation_in_progress_exception() | 
    invalid_operation_exception() | 
    stale_request_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Activate trusted access with Organizations.
%%
%% With trusted access between StackSets
%% and Organizations activated, the management account has permissions to
%% create
%% and manage StackSets for your organization.
-spec activate_organizations_access(aws_client:aws_client(), activate_organizations_access_input()) ->
    {ok, activate_organizations_access_output(), tuple()} |
    {error, any()} |
    {error, activate_organizations_access_errors(), tuple()}.
activate_organizations_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_organizations_access(Client, Input, []).

-spec activate_organizations_access(aws_client:aws_client(), activate_organizations_access_input(), proplists:proplist()) ->
    {ok, activate_organizations_access_output(), tuple()} |
    {error, any()} |
    {error, activate_organizations_access_errors(), tuple()}.
activate_organizations_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivateOrganizationsAccess">>, Input, Options).

%% @doc Activates a public third-party extension, making it available for use
%% in stack templates.
%%
%% Once you have activated a public third-party extension in your account and
%% Region, use SetTypeConfiguration:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html
%% to specify configuration properties for the extension. For
%% more information, see Using public
%% extensions:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html
%% in the CloudFormation User Guide.
-spec activate_type(aws_client:aws_client(), activate_type_input()) ->
    {ok, activate_type_output(), tuple()} |
    {error, any()} |
    {error, activate_type_errors(), tuple()}.
activate_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_type(Client, Input, []).

-spec activate_type(aws_client:aws_client(), activate_type_input(), proplists:proplist()) ->
    {ok, activate_type_output(), tuple()} |
    {error, any()} |
    {error, activate_type_errors(), tuple()}.
activate_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivateType">>, Input, Options).

%% @doc Returns configuration data for the specified CloudFormation
%% extensions, from the CloudFormation
%% registry for the account and Region.
%%
%% For more information, see Edit configuration
%% data for extensions in your account:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-set-configuration.html
%% in the
%% CloudFormation User Guide.
-spec batch_describe_type_configurations(aws_client:aws_client(), batch_describe_type_configurations_input()) ->
    {ok, batch_describe_type_configurations_output(), tuple()} |
    {error, any()} |
    {error, batch_describe_type_configurations_errors(), tuple()}.
batch_describe_type_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_describe_type_configurations(Client, Input, []).

-spec batch_describe_type_configurations(aws_client:aws_client(), batch_describe_type_configurations_input(), proplists:proplist()) ->
    {ok, batch_describe_type_configurations_output(), tuple()} |
    {error, any()} |
    {error, batch_describe_type_configurations_errors(), tuple()}.
batch_describe_type_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDescribeTypeConfigurations">>, Input, Options).

%% @doc Cancels an update on the specified stack.
%%
%% If the call completes successfully, the stack
%% rolls back the update and reverts to the previous stack configuration.
%%
%% You can cancel only stacks that are in the `UPDATE_IN_PROGRESS' state.
-spec cancel_update_stack(aws_client:aws_client(), cancel_update_stack_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_update_stack_errors(), tuple()}.
cancel_update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_update_stack(Client, Input, []).

-spec cancel_update_stack(aws_client:aws_client(), cancel_update_stack_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_update_stack_errors(), tuple()}.
cancel_update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelUpdateStack">>, Input, Options).

%% @doc For a specified stack that's in the `UPDATE_ROLLBACK_FAILED'
%% state, continues
%% rolling it back to the `UPDATE_ROLLBACK_COMPLETE' state.
%%
%% Depending on the cause of
%% the failure, you can manually fix the error:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed
%% and continue the rollback. By continuing the rollback, you can
%% return your stack to a working state (the `UPDATE_ROLLBACK_COMPLETE'
%% state), and
%% then try to update the stack again.
%%
%% A stack goes into the `UPDATE_ROLLBACK_FAILED' state when
%% CloudFormation can't roll
%% back all changes after a failed stack update. For example, you might have
%% a stack that's
%% rolling back to an old database instance that was deleted outside of
%% CloudFormation. Because
%% CloudFormation doesn't know the database was deleted, it assumes that
%% the database instance still
%% exists and attempts to roll back to it, causing the update rollback to
%% fail.
-spec continue_update_rollback(aws_client:aws_client(), continue_update_rollback_input()) ->
    {ok, continue_update_rollback_output(), tuple()} |
    {error, any()} |
    {error, continue_update_rollback_errors(), tuple()}.
continue_update_rollback(Client, Input)
  when is_map(Client), is_map(Input) ->
    continue_update_rollback(Client, Input, []).

-spec continue_update_rollback(aws_client:aws_client(), continue_update_rollback_input(), proplists:proplist()) ->
    {ok, continue_update_rollback_output(), tuple()} |
    {error, any()} |
    {error, continue_update_rollback_errors(), tuple()}.
continue_update_rollback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ContinueUpdateRollback">>, Input, Options).

%% @doc Creates a list of changes that will be applied to a stack so that you
%% can review the
%% changes before executing them.
%%
%% You can create a change set for a stack that doesn't exist or
%% an existing stack. If you create a change set for a stack that doesn't
%% exist, the change set
%% shows all of the resources that CloudFormation will create. If you create
%% a change set for an
%% existing stack, CloudFormation compares the stack's information with
%% the information that you
%% submit in the change set and lists the differences. Use change sets to
%% understand which
%% resources CloudFormation will create or change, and how it will change
%% resources in an existing
%% stack, before you create or update a stack.
%%
%% To create a change set for a stack that doesn't exist, for the
%% `ChangeSetType'
%% parameter, specify `CREATE'. To create a change set for an existing
%% stack, specify
%% `UPDATE' for the `ChangeSetType' parameter. To create a change set
%% for
%% an import operation, specify `IMPORT' for the `ChangeSetType'
%% parameter.
%% After the `CreateChangeSet' call successfully completes,
%% CloudFormation starts creating
%% the change set. To check the status of the change set or to review it, use
%% the `DescribeChangeSet' action.
%%
%% When you are satisfied with the changes the change set will make, execute
%% the change set
%% by using the `ExecuteChangeSet' action. CloudFormation doesn't
%% make changes until
%% you execute the change set.
%%
%% To create a change set for the entire stack hierarchy, set
%% `IncludeNestedStacks' to `True'.
-spec create_change_set(aws_client:aws_client(), create_change_set_input()) ->
    {ok, create_change_set_output(), tuple()} |
    {error, any()} |
    {error, create_change_set_errors(), tuple()}.
create_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_change_set(Client, Input, []).

-spec create_change_set(aws_client:aws_client(), create_change_set_input(), proplists:proplist()) ->
    {ok, create_change_set_output(), tuple()} |
    {error, any()} |
    {error, create_change_set_errors(), tuple()}.
create_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateChangeSet">>, Input, Options).

%% @doc Creates a template from existing resources that are not already
%% managed with CloudFormation.
%%
%% You can check the status of the template generation using the
%% `DescribeGeneratedTemplate' API action.
-spec create_generated_template(aws_client:aws_client(), create_generated_template_input()) ->
    {ok, create_generated_template_output(), tuple()} |
    {error, any()} |
    {error, create_generated_template_errors(), tuple()}.
create_generated_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_generated_template(Client, Input, []).

-spec create_generated_template(aws_client:aws_client(), create_generated_template_input(), proplists:proplist()) ->
    {ok, create_generated_template_output(), tuple()} |
    {error, any()} |
    {error, create_generated_template_errors(), tuple()}.
create_generated_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGeneratedTemplate">>, Input, Options).

%% @doc Creates a stack as specified in the template.
%%
%% After the call completes successfully, the
%% stack creation starts. You can check the status of the stack through the
%% `DescribeStacks' operation.
%%
%% For more information about creating a stack and monitoring stack progress,
%% see Managing Amazon Web Services
%% resources as a single unit with CloudFormation stacks:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html
%% in the
%% CloudFormation User Guide.
-spec create_stack(aws_client:aws_client(), create_stack_input()) ->
    {ok, create_stack_output(), tuple()} |
    {error, any()} |
    {error, create_stack_errors(), tuple()}.
create_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack(Client, Input, []).

-spec create_stack(aws_client:aws_client(), create_stack_input(), proplists:proplist()) ->
    {ok, create_stack_output(), tuple()} |
    {error, any()} |
    {error, create_stack_errors(), tuple()}.
create_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStack">>, Input, Options).

%% @doc Creates stack instances for the specified accounts, within the
%% specified Amazon Web Services Regions.
%%
%% A
%% stack instance refers to a stack in a specific account and Region. You
%% must specify at least
%% one value for either `Accounts' or `DeploymentTargets', and you
%% must
%% specify at least one value for `Regions'.
-spec create_stack_instances(aws_client:aws_client(), create_stack_instances_input()) ->
    {ok, create_stack_instances_output(), tuple()} |
    {error, any()} |
    {error, create_stack_instances_errors(), tuple()}.
create_stack_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack_instances(Client, Input, []).

-spec create_stack_instances(aws_client:aws_client(), create_stack_instances_input(), proplists:proplist()) ->
    {ok, create_stack_instances_output(), tuple()} |
    {error, any()} |
    {error, create_stack_instances_errors(), tuple()}.
create_stack_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStackInstances">>, Input, Options).

%% @doc Creates a refactor across multiple stacks, with the list of stacks
%% and resources that are affected.
-spec create_stack_refactor(aws_client:aws_client(), create_stack_refactor_input()) ->
    {ok, create_stack_refactor_output(), tuple()} |
    {error, any()}.
create_stack_refactor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack_refactor(Client, Input, []).

-spec create_stack_refactor(aws_client:aws_client(), create_stack_refactor_input(), proplists:proplist()) ->
    {ok, create_stack_refactor_output(), tuple()} |
    {error, any()}.
create_stack_refactor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStackRefactor">>, Input, Options).

%% @doc Creates a stack set.
-spec create_stack_set(aws_client:aws_client(), create_stack_set_input()) ->
    {ok, create_stack_set_output(), tuple()} |
    {error, any()} |
    {error, create_stack_set_errors(), tuple()}.
create_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack_set(Client, Input, []).

-spec create_stack_set(aws_client:aws_client(), create_stack_set_input(), proplists:proplist()) ->
    {ok, create_stack_set_output(), tuple()} |
    {error, any()} |
    {error, create_stack_set_errors(), tuple()}.
create_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStackSet">>, Input, Options).

%% @doc Deactivates trusted access with Organizations.
%%
%% If trusted access is deactivated,
%% the management account does not have permissions to create and manage
%% service-managed StackSets for your organization.
-spec deactivate_organizations_access(aws_client:aws_client(), deactivate_organizations_access_input()) ->
    {ok, deactivate_organizations_access_output(), tuple()} |
    {error, any()} |
    {error, deactivate_organizations_access_errors(), tuple()}.
deactivate_organizations_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_organizations_access(Client, Input, []).

-spec deactivate_organizations_access(aws_client:aws_client(), deactivate_organizations_access_input(), proplists:proplist()) ->
    {ok, deactivate_organizations_access_output(), tuple()} |
    {error, any()} |
    {error, deactivate_organizations_access_errors(), tuple()}.
deactivate_organizations_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivateOrganizationsAccess">>, Input, Options).

%% @doc Deactivates a public extension that was previously activated in this
%% account and
%% Region.
%%
%% Once deactivated, an extension can't be used in any CloudFormation
%% operation. This includes
%% stack update operations where the stack template includes the extension,
%% even if no updates
%% are being made to the extension. In addition, deactivated extensions
%% aren't automatically
%% updated if a new version of the extension is released.
-spec deactivate_type(aws_client:aws_client(), deactivate_type_input()) ->
    {ok, deactivate_type_output(), tuple()} |
    {error, any()} |
    {error, deactivate_type_errors(), tuple()}.
deactivate_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_type(Client, Input, []).

-spec deactivate_type(aws_client:aws_client(), deactivate_type_input(), proplists:proplist()) ->
    {ok, deactivate_type_output(), tuple()} |
    {error, any()} |
    {error, deactivate_type_errors(), tuple()}.
deactivate_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivateType">>, Input, Options).

%% @doc Deletes the specified change set.
%%
%% Deleting change sets ensures that no one executes the
%% wrong change set.
%%
%% If the call successfully completes, CloudFormation successfully deleted
%% the change set.
%%
%% If `IncludeNestedStacks' specifies `True' during the creation of
%% the
%% nested change set, then `DeleteChangeSet' will delete all change sets
%% that belong
%% to the stacks hierarchy and will also delete all change sets for nested
%% stacks with the status
%% of `REVIEW_IN_PROGRESS'.
-spec delete_change_set(aws_client:aws_client(), delete_change_set_input()) ->
    {ok, delete_change_set_output(), tuple()} |
    {error, any()} |
    {error, delete_change_set_errors(), tuple()}.
delete_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_change_set(Client, Input, []).

-spec delete_change_set(aws_client:aws_client(), delete_change_set_input(), proplists:proplist()) ->
    {ok, delete_change_set_output(), tuple()} |
    {error, any()} |
    {error, delete_change_set_errors(), tuple()}.
delete_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteChangeSet">>, Input, Options).

%% @doc Deleted a generated template.
-spec delete_generated_template(aws_client:aws_client(), delete_generated_template_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_generated_template_errors(), tuple()}.
delete_generated_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_generated_template(Client, Input, []).

-spec delete_generated_template(aws_client:aws_client(), delete_generated_template_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_generated_template_errors(), tuple()}.
delete_generated_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGeneratedTemplate">>, Input, Options).

%% @doc Deletes a specified stack.
%%
%% Once the call completes successfully, stack deletion starts.
%% Deleted stacks don't show up in the `DescribeStacks' operation if
%% the deletion
%% has been completed successfully.
%%
%% For more information about deleting a stack, see Delete a stack from
%% the CloudFormation console:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-console-delete-stack.html
%% in the CloudFormation User Guide.
-spec delete_stack(aws_client:aws_client(), delete_stack_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stack_errors(), tuple()}.
delete_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack(Client, Input, []).

-spec delete_stack(aws_client:aws_client(), delete_stack_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stack_errors(), tuple()}.
delete_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStack">>, Input, Options).

%% @doc Deletes stack instances for the specified accounts, in the specified
%% Amazon Web Services Regions.
-spec delete_stack_instances(aws_client:aws_client(), delete_stack_instances_input()) ->
    {ok, delete_stack_instances_output(), tuple()} |
    {error, any()} |
    {error, delete_stack_instances_errors(), tuple()}.
delete_stack_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack_instances(Client, Input, []).

-spec delete_stack_instances(aws_client:aws_client(), delete_stack_instances_input(), proplists:proplist()) ->
    {ok, delete_stack_instances_output(), tuple()} |
    {error, any()} |
    {error, delete_stack_instances_errors(), tuple()}.
delete_stack_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStackInstances">>, Input, Options).

%% @doc Deletes a stack set.
%%
%% Before you can delete a stack set, all its member stack instances
%% must be deleted. For more information about how to complete this, see
%% `DeleteStackInstances'.
-spec delete_stack_set(aws_client:aws_client(), delete_stack_set_input()) ->
    {ok, delete_stack_set_output(), tuple()} |
    {error, any()} |
    {error, delete_stack_set_errors(), tuple()}.
delete_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack_set(Client, Input, []).

-spec delete_stack_set(aws_client:aws_client(), delete_stack_set_input(), proplists:proplist()) ->
    {ok, delete_stack_set_output(), tuple()} |
    {error, any()} |
    {error, delete_stack_set_errors(), tuple()}.
delete_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStackSet">>, Input, Options).

%% @doc Marks an extension or extension version as `DEPRECATED' in the
%% CloudFormation
%% registry, removing it from active use.
%%
%% Deprecated extensions or extension versions cannot be
%% used in CloudFormation operations.
%%
%% To deregister an entire extension, you must individually deregister all
%% active versions of
%% that extension. If an extension has only a single active version,
%% deregistering that version
%% results in the extension itself being deregistered and marked as
%% deprecated in the
%% registry.
%%
%% You can't deregister the default version of an extension if there are
%% other active version
%% of that extension. If you do deregister the default version of an
%% extension, the extension
%% type itself is deregistered as well and marked as deprecated.
%%
%% To view the deprecation status of an extension or extension version, use
%% DescribeType:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html.
-spec deregister_type(aws_client:aws_client(), deregister_type_input()) ->
    {ok, deregister_type_output(), tuple()} |
    {error, any()} |
    {error, deregister_type_errors(), tuple()}.
deregister_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_type(Client, Input, []).

-spec deregister_type(aws_client:aws_client(), deregister_type_input(), proplists:proplist()) ->
    {ok, deregister_type_output(), tuple()} |
    {error, any()} |
    {error, deregister_type_errors(), tuple()}.
deregister_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterType">>, Input, Options).

%% @doc Retrieves your account's CloudFormation limits, such as the
%% maximum number of stacks that you
%% can create in your account.
%%
%% For more information about account limits, see Understand CloudFormation
%% quotas:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html
%% in the CloudFormation User Guide.
-spec describe_account_limits(aws_client:aws_client(), describe_account_limits_input()) ->
    {ok, describe_account_limits_output(), tuple()} |
    {error, any()}.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).

-spec describe_account_limits(aws_client:aws_client(), describe_account_limits_input(), proplists:proplist()) ->
    {ok, describe_account_limits_output(), tuple()} |
    {error, any()}.
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Returns the inputs for the change set and a list of changes that
%% CloudFormation will make if
%% you execute the change set.
%%
%% For more information, see Update
%% CloudFormation stacks using change sets:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html
%% in the
%% CloudFormation User Guide.
-spec describe_change_set(aws_client:aws_client(), describe_change_set_input()) ->
    {ok, describe_change_set_output(), tuple()} |
    {error, any()} |
    {error, describe_change_set_errors(), tuple()}.
describe_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_change_set(Client, Input, []).

-spec describe_change_set(aws_client:aws_client(), describe_change_set_input(), proplists:proplist()) ->
    {ok, describe_change_set_output(), tuple()} |
    {error, any()} |
    {error, describe_change_set_errors(), tuple()}.
describe_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeChangeSet">>, Input, Options).

%% @doc Returns hook-related information for the change set and a list of
%% changes that CloudFormation
%% makes when you run the change set.
-spec describe_change_set_hooks(aws_client:aws_client(), describe_change_set_hooks_input()) ->
    {ok, describe_change_set_hooks_output(), tuple()} |
    {error, any()} |
    {error, describe_change_set_hooks_errors(), tuple()}.
describe_change_set_hooks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_change_set_hooks(Client, Input, []).

-spec describe_change_set_hooks(aws_client:aws_client(), describe_change_set_hooks_input(), proplists:proplist()) ->
    {ok, describe_change_set_hooks_output(), tuple()} |
    {error, any()} |
    {error, describe_change_set_hooks_errors(), tuple()}.
describe_change_set_hooks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeChangeSetHooks">>, Input, Options).

%% @doc Describes a generated template.
%%
%% The output includes details about the progress of the
%% creation of a generated template started by a
%% `CreateGeneratedTemplate' API action
%% or the update of a generated template started with an
%% `UpdateGeneratedTemplate' API
%% action.
-spec describe_generated_template(aws_client:aws_client(), describe_generated_template_input()) ->
    {ok, describe_generated_template_output(), tuple()} |
    {error, any()} |
    {error, describe_generated_template_errors(), tuple()}.
describe_generated_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_generated_template(Client, Input, []).

-spec describe_generated_template(aws_client:aws_client(), describe_generated_template_input(), proplists:proplist()) ->
    {ok, describe_generated_template_output(), tuple()} |
    {error, any()} |
    {error, describe_generated_template_errors(), tuple()}.
describe_generated_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGeneratedTemplate">>, Input, Options).

%% @doc Retrieves information about the account's
%% `OrganizationAccess' status.
%%
%% This API
%% can be called either by the management account or the delegated
%% administrator by using the
%% `CallAs' parameter. This API can also be called without the
%% `CallAs'
%% parameter by the management account.
-spec describe_organizations_access(aws_client:aws_client(), describe_organizations_access_input()) ->
    {ok, describe_organizations_access_output(), tuple()} |
    {error, any()} |
    {error, describe_organizations_access_errors(), tuple()}.
describe_organizations_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organizations_access(Client, Input, []).

-spec describe_organizations_access(aws_client:aws_client(), describe_organizations_access_input(), proplists:proplist()) ->
    {ok, describe_organizations_access_output(), tuple()} |
    {error, any()} |
    {error, describe_organizations_access_errors(), tuple()}.
describe_organizations_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationsAccess">>, Input, Options).

%% @doc Returns information about a CloudFormation extension publisher.
%%
%% If you don't supply a `PublisherId', and you have registered as an
%% extension
%% publisher, `DescribePublisher' returns information about your own
%% publisher
%% account.
%%
%% For more information about registering as a publisher, see:
%%
%% RegisterPublisher:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html
%%
%% Publishing extensions
%% to make them available for public use:
%% https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html
%% in the
%% CloudFormation Command Line Interface (CLI) User Guide
-spec describe_publisher(aws_client:aws_client(), describe_publisher_input()) ->
    {ok, describe_publisher_output(), tuple()} |
    {error, any()} |
    {error, describe_publisher_errors(), tuple()}.
describe_publisher(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_publisher(Client, Input, []).

-spec describe_publisher(aws_client:aws_client(), describe_publisher_input(), proplists:proplist()) ->
    {ok, describe_publisher_output(), tuple()} |
    {error, any()} |
    {error, describe_publisher_errors(), tuple()}.
describe_publisher(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePublisher">>, Input, Options).

%% @doc Describes details of a resource scan.
-spec describe_resource_scan(aws_client:aws_client(), describe_resource_scan_input()) ->
    {ok, describe_resource_scan_output(), tuple()} |
    {error, any()} |
    {error, describe_resource_scan_errors(), tuple()}.
describe_resource_scan(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_scan(Client, Input, []).

-spec describe_resource_scan(aws_client:aws_client(), describe_resource_scan_input(), proplists:proplist()) ->
    {ok, describe_resource_scan_output(), tuple()} |
    {error, any()} |
    {error, describe_resource_scan_errors(), tuple()}.
describe_resource_scan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourceScan">>, Input, Options).

%% @doc Returns information about a stack drift detection operation.
%%
%% A stack drift detection
%% operation detects whether a stack's actual configuration differs, or
%% has
%% drifted, from its expected configuration, as defined in the stack
%% template and any values specified as template parameters. A stack is
%% considered to have
%% drifted if one or more of its resources have drifted. For more information
%% about stack and
%% resource drift, see Detect unmanaged
%% configuration changes to stacks and resources with drift detection:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html.
%%
%% Use `DetectStackDrift' to initiate a stack drift detection operation.
%% `DetectStackDrift' returns a `StackDriftDetectionId' you can use
%% to
%% monitor the progress of the operation using
%% `DescribeStackDriftDetectionStatus'.
%% Once the drift detection operation has completed, use
%% `DescribeStackResourceDrifts' to return drift information about the
%% stack and its
%% resources.
-spec describe_stack_drift_detection_status(aws_client:aws_client(), describe_stack_drift_detection_status_input()) ->
    {ok, describe_stack_drift_detection_status_output(), tuple()} |
    {error, any()}.
describe_stack_drift_detection_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_drift_detection_status(Client, Input, []).

-spec describe_stack_drift_detection_status(aws_client:aws_client(), describe_stack_drift_detection_status_input(), proplists:proplist()) ->
    {ok, describe_stack_drift_detection_status_output(), tuple()} |
    {error, any()}.
describe_stack_drift_detection_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackDriftDetectionStatus">>, Input, Options).

%% @doc Returns all stack related events for a specified stack in reverse
%% chronological order.
%%
%% For
%% more information about a stack's event history, see Understand
%% CloudFormation stack creation events:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html
%% in the
%% CloudFormation User Guide.
%%
%% You can list events for stacks that have failed to create or have been
%% deleted by
%% specifying the unique stack identifier (stack ID).
-spec describe_stack_events(aws_client:aws_client(), describe_stack_events_input()) ->
    {ok, describe_stack_events_output(), tuple()} |
    {error, any()}.
describe_stack_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_events(Client, Input, []).

-spec describe_stack_events(aws_client:aws_client(), describe_stack_events_input(), proplists:proplist()) ->
    {ok, describe_stack_events_output(), tuple()} |
    {error, any()}.
describe_stack_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackEvents">>, Input, Options).

%% @doc Returns the stack instance that's associated with the specified
%% StackSet, Amazon Web Services account,
%% and Amazon Web Services Region.
%%
%% For a list of stack instances that are associated with a specific
%% StackSet, use `ListStackInstances'.
-spec describe_stack_instance(aws_client:aws_client(), describe_stack_instance_input()) ->
    {ok, describe_stack_instance_output(), tuple()} |
    {error, any()} |
    {error, describe_stack_instance_errors(), tuple()}.
describe_stack_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_instance(Client, Input, []).

-spec describe_stack_instance(aws_client:aws_client(), describe_stack_instance_input(), proplists:proplist()) ->
    {ok, describe_stack_instance_output(), tuple()} |
    {error, any()} |
    {error, describe_stack_instance_errors(), tuple()}.
describe_stack_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackInstance">>, Input, Options).

%% @doc Describes the stack refactor status.
-spec describe_stack_refactor(aws_client:aws_client(), describe_stack_refactor_input()) ->
    {ok, describe_stack_refactor_output(), tuple()} |
    {error, any()} |
    {error, describe_stack_refactor_errors(), tuple()}.
describe_stack_refactor(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_refactor(Client, Input, []).

-spec describe_stack_refactor(aws_client:aws_client(), describe_stack_refactor_input(), proplists:proplist()) ->
    {ok, describe_stack_refactor_output(), tuple()} |
    {error, any()} |
    {error, describe_stack_refactor_errors(), tuple()}.
describe_stack_refactor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackRefactor">>, Input, Options).

%% @doc Returns a description of the specified resource in the specified
%% stack.
%%
%% For deleted stacks, DescribeStackResource returns resource information for
%% up to 90 days
%% after the stack has been deleted.
-spec describe_stack_resource(aws_client:aws_client(), describe_stack_resource_input()) ->
    {ok, describe_stack_resource_output(), tuple()} |
    {error, any()}.
describe_stack_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_resource(Client, Input, []).

-spec describe_stack_resource(aws_client:aws_client(), describe_stack_resource_input(), proplists:proplist()) ->
    {ok, describe_stack_resource_output(), tuple()} |
    {error, any()}.
describe_stack_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackResource">>, Input, Options).

%% @doc Returns drift information for the resources that have been checked
%% for drift in the
%% specified stack.
%%
%% This includes actual and expected configuration values for resources where
%% CloudFormation detects configuration drift.
%%
%% For a given stack, there will be one `StackResourceDrift' for each
%% stack
%% resource that has been checked for drift. Resources that haven't yet
%% been checked for drift
%% aren't included. Resources that don't currently support drift
%% detection aren't checked, and so
%% not included. For a list of resources that support drift detection, see
%% Resource
%% type support for imports and drift detection:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html.
%%
%% Use `DetectStackResourceDrift' to detect drift on individual
%% resources, or
%% `DetectStackDrift' to detect drift on all supported resources for a
%% given
%% stack.
-spec describe_stack_resource_drifts(aws_client:aws_client(), describe_stack_resource_drifts_input()) ->
    {ok, describe_stack_resource_drifts_output(), tuple()} |
    {error, any()}.
describe_stack_resource_drifts(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_resource_drifts(Client, Input, []).

-spec describe_stack_resource_drifts(aws_client:aws_client(), describe_stack_resource_drifts_input(), proplists:proplist()) ->
    {ok, describe_stack_resource_drifts_output(), tuple()} |
    {error, any()}.
describe_stack_resource_drifts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackResourceDrifts">>, Input, Options).

%% @doc Returns Amazon Web Services resource descriptions for running and
%% deleted stacks.
%%
%% If
%% `StackName' is specified, all the associated resources that are part
%% of the stack
%% are returned. If `PhysicalResourceId' is specified, the associated
%% resources of the
%% stack that the resource belongs to are returned.
%%
%% Only the first 100 resources will be returned. If your stack has more
%% resources than
%% this, you should use `ListStackResources' instead.
%%
%% For deleted stacks, `DescribeStackResources' returns resource
%% information for
%% up to 90 days after the stack has been deleted.
%%
%% You must specify either `StackName' or `PhysicalResourceId', but
%% not
%% both. In addition, you can specify `LogicalResourceId' to filter the
%% returned
%% result. For more information about resources, the `LogicalResourceId'
%% and
%% `PhysicalResourceId', see the CloudFormation User Guide:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/.
%%
%% A `ValidationError' is returned if you specify both `StackName'
%% and `PhysicalResourceId' in the same request.
-spec describe_stack_resources(aws_client:aws_client(), describe_stack_resources_input()) ->
    {ok, describe_stack_resources_output(), tuple()} |
    {error, any()}.
describe_stack_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_resources(Client, Input, []).

-spec describe_stack_resources(aws_client:aws_client(), describe_stack_resources_input(), proplists:proplist()) ->
    {ok, describe_stack_resources_output(), tuple()} |
    {error, any()}.
describe_stack_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackResources">>, Input, Options).

%% @doc Returns the description of the specified StackSet.
-spec describe_stack_set(aws_client:aws_client(), describe_stack_set_input()) ->
    {ok, describe_stack_set_output(), tuple()} |
    {error, any()} |
    {error, describe_stack_set_errors(), tuple()}.
describe_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_set(Client, Input, []).

-spec describe_stack_set(aws_client:aws_client(), describe_stack_set_input(), proplists:proplist()) ->
    {ok, describe_stack_set_output(), tuple()} |
    {error, any()} |
    {error, describe_stack_set_errors(), tuple()}.
describe_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackSet">>, Input, Options).

%% @doc Returns the description of the specified StackSet operation.
-spec describe_stack_set_operation(aws_client:aws_client(), describe_stack_set_operation_input()) ->
    {ok, describe_stack_set_operation_output(), tuple()} |
    {error, any()} |
    {error, describe_stack_set_operation_errors(), tuple()}.
describe_stack_set_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stack_set_operation(Client, Input, []).

-spec describe_stack_set_operation(aws_client:aws_client(), describe_stack_set_operation_input(), proplists:proplist()) ->
    {ok, describe_stack_set_operation_output(), tuple()} |
    {error, any()} |
    {error, describe_stack_set_operation_errors(), tuple()}.
describe_stack_set_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStackSetOperation">>, Input, Options).

%% @doc Returns the description for the specified stack; if no stack name was
%% specified, then it
%% returns the description for all the stacks created.
%%
%% For more information about a stack's event
%% history, see Understand CloudFormation stack creation events:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html
%% in the
%% CloudFormation User Guide.
%%
%% If the stack doesn't exist, a `ValidationError' is returned.
-spec describe_stacks(aws_client:aws_client(), describe_stacks_input()) ->
    {ok, describe_stacks_output(), tuple()} |
    {error, any()}.
describe_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stacks(Client, Input, []).

-spec describe_stacks(aws_client:aws_client(), describe_stacks_input(), proplists:proplist()) ->
    {ok, describe_stacks_output(), tuple()} |
    {error, any()}.
describe_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStacks">>, Input, Options).

%% @doc Returns detailed information about an extension that has been
%% registered.
%%
%% If you specify a `VersionId', `DescribeType' returns information
%% about that specific extension version. Otherwise, it returns information
%% about the default
%% extension version.
-spec describe_type(aws_client:aws_client(), describe_type_input()) ->
    {ok, describe_type_output(), tuple()} |
    {error, any()} |
    {error, describe_type_errors(), tuple()}.
describe_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_type(Client, Input, []).

-spec describe_type(aws_client:aws_client(), describe_type_input(), proplists:proplist()) ->
    {ok, describe_type_output(), tuple()} |
    {error, any()} |
    {error, describe_type_errors(), tuple()}.
describe_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeType">>, Input, Options).

%% @doc Returns information about an extension's registration, including
%% its current status and
%% type and version identifiers.
%%
%% When you initiate a registration request using `RegisterType', you can
%% then use `DescribeTypeRegistration' to monitor the progress of that
%% registration request.
%%
%% Once the registration request has completed, use `DescribeType' to
%% return
%% detailed information about an extension.
-spec describe_type_registration(aws_client:aws_client(), describe_type_registration_input()) ->
    {ok, describe_type_registration_output(), tuple()} |
    {error, any()} |
    {error, describe_type_registration_errors(), tuple()}.
describe_type_registration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_type_registration(Client, Input, []).

-spec describe_type_registration(aws_client:aws_client(), describe_type_registration_input(), proplists:proplist()) ->
    {ok, describe_type_registration_output(), tuple()} |
    {error, any()} |
    {error, describe_type_registration_errors(), tuple()}.
describe_type_registration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTypeRegistration">>, Input, Options).

%% @doc Detects whether a stack's actual configuration differs, or has
%% drifted, from its expected configuration, as defined in the stack
%% template and any values specified as template parameters.
%%
%% For each resource in the stack that
%% supports drift detection, CloudFormation compares the actual configuration
%% of the resource with
%% its expected template configuration. Only resource properties explicitly
%% defined in the stack
%% template are checked for drift. A stack is considered to have drifted if
%% one or more of its
%% resources differ from their expected template configurations. For more
%% information, see Detect unmanaged configuration changes to stacks and
%% resources with drift
%% detection:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html.
%%
%% Use `DetectStackDrift' to detect drift on all supported resources for
%% a given
%% stack, or `DetectStackResourceDrift' to detect drift on individual
%% resources.
%%
%% For a list of stack resources that currently support drift detection, see
%% Resource
%% type support for imports and drift detection:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html.
%%
%% `DetectStackDrift' can take up to several minutes, depending on the
%% number of
%% resources contained within the stack. Use
%% `DescribeStackDriftDetectionStatus'
%% to monitor the progress of a detect stack drift operation. Once the drift
%% detection operation
%% has completed, use `DescribeStackResourceDrifts' to return drift
%% information
%% about the stack and its resources.
%%
%% When detecting drift on a stack, CloudFormation doesn't detect drift
%% on any nested stacks
%% belonging to that stack. Perform `DetectStackDrift' directly on the
%% nested stack
%% itself.
-spec detect_stack_drift(aws_client:aws_client(), detect_stack_drift_input()) ->
    {ok, detect_stack_drift_output(), tuple()} |
    {error, any()}.
detect_stack_drift(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_stack_drift(Client, Input, []).

-spec detect_stack_drift(aws_client:aws_client(), detect_stack_drift_input(), proplists:proplist()) ->
    {ok, detect_stack_drift_output(), tuple()} |
    {error, any()}.
detect_stack_drift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectStackDrift">>, Input, Options).

%% @doc Returns information about whether a resource's actual
%% configuration differs, or has
%% drifted, from its expected configuration, as defined in the stack
%% template and any values specified as template parameters.
%%
%% This information includes actual and
%% expected property values for resources in which CloudFormation detects
%% drift. Only resource
%% properties explicitly defined in the stack template are checked for drift.
%% For more
%% information about stack and resource drift, see Detect unmanaged
%% configuration changes to stacks and resources with drift detection:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html.
%%
%% Use `DetectStackResourceDrift' to detect drift on individual
%% resources, or
%% `DetectStackDrift' to detect drift on all resources in a given stack
%% that
%% support drift detection.
%%
%% Resources that don't currently support drift detection can't be
%% checked. For a list of
%% resources that support drift detection, see Resource
%% type support for imports and drift detection:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html.
-spec detect_stack_resource_drift(aws_client:aws_client(), detect_stack_resource_drift_input()) ->
    {ok, detect_stack_resource_drift_output(), tuple()} |
    {error, any()}.
detect_stack_resource_drift(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_stack_resource_drift(Client, Input, []).

-spec detect_stack_resource_drift(aws_client:aws_client(), detect_stack_resource_drift_input(), proplists:proplist()) ->
    {ok, detect_stack_resource_drift_output(), tuple()} |
    {error, any()}.
detect_stack_resource_drift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectStackResourceDrift">>, Input, Options).

%% @doc Detect drift on a stack set.
%%
%% When CloudFormation performs drift detection on a stack set, it
%% performs drift detection on the stack associated with each stack instance
%% in the stack set.
%% For more information, see Performing drift detection on
%% CloudFormation StackSets:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html.
%%
%% `DetectStackSetDrift' returns the `OperationId' of the stack set
%% drift detection operation. Use this operation id with
%% `DescribeStackSetOperation' to monitor the progress of the drift
%% detection
%% operation. The drift detection operation may take some time, depending on
%% the number of stack
%% instances included in the stack set, in addition to the number of
%% resources included in each
%% stack.
%%
%% Once the operation has completed, use the following actions to return
%% drift
%% information:
%%
%% Use `DescribeStackSet' to return detailed information about the stack
%% set, including detailed information about the last completed drift
%% operation performed on the stack set. (Information about drift operations
%% that are in
%% progress isn't included.)
%%
%% Use `ListStackInstances' to return a list of stack instances belonging
%% to the stack set, including the drift status and last drift time checked
%% of each
%% instance.
%%
%% Use `DescribeStackInstance' to return detailed information about a
%% specific stack instance, including its drift status and last drift time
%% checked.
%%
%% You can only run a single drift detection operation on a given stack set
%% at one
%% time.
%%
%% To stop a drift detection stack set operation, use
%% `StopStackSetOperation'.
-spec detect_stack_set_drift(aws_client:aws_client(), detect_stack_set_drift_input()) ->
    {ok, detect_stack_set_drift_output(), tuple()} |
    {error, any()} |
    {error, detect_stack_set_drift_errors(), tuple()}.
detect_stack_set_drift(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_stack_set_drift(Client, Input, []).

-spec detect_stack_set_drift(aws_client:aws_client(), detect_stack_set_drift_input(), proplists:proplist()) ->
    {ok, detect_stack_set_drift_output(), tuple()} |
    {error, any()} |
    {error, detect_stack_set_drift_errors(), tuple()}.
detect_stack_set_drift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectStackSetDrift">>, Input, Options).

%% @doc Returns the estimated monthly cost of a template.
%%
%% The return value is an Amazon Web Services Simple
%% Monthly Calculator URL with a query string that describes the resources
%% required to run the
%% template.
-spec estimate_template_cost(aws_client:aws_client(), estimate_template_cost_input()) ->
    {ok, estimate_template_cost_output(), tuple()} |
    {error, any()}.
estimate_template_cost(Client, Input)
  when is_map(Client), is_map(Input) ->
    estimate_template_cost(Client, Input, []).

-spec estimate_template_cost(aws_client:aws_client(), estimate_template_cost_input(), proplists:proplist()) ->
    {ok, estimate_template_cost_output(), tuple()} |
    {error, any()}.
estimate_template_cost(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EstimateTemplateCost">>, Input, Options).

%% @doc Updates a stack using the input information that was provided when
%% the specified change
%% set was created.
%%
%% After the call successfully completes, CloudFormation starts updating the
%% stack.
%% Use the `DescribeStacks' action to view the status of the update.
%%
%% When you execute a change set, CloudFormation deletes all other change
%% sets associated with
%% the stack because they aren't valid for the updated stack.
%%
%% If a stack policy is associated with the stack, CloudFormation enforces
%% the policy during the
%% update. You can't specify a temporary stack policy that overrides the
%% current policy.
%%
%% To create a change set for the entire stack hierarchy,
%% `IncludeNestedStacks'
%% must have been set to `True'.
-spec execute_change_set(aws_client:aws_client(), execute_change_set_input()) ->
    {ok, execute_change_set_output(), tuple()} |
    {error, any()} |
    {error, execute_change_set_errors(), tuple()}.
execute_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_change_set(Client, Input, []).

-spec execute_change_set(aws_client:aws_client(), execute_change_set_input(), proplists:proplist()) ->
    {ok, execute_change_set_output(), tuple()} |
    {error, any()} |
    {error, execute_change_set_errors(), tuple()}.
execute_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteChangeSet">>, Input, Options).

%% @doc Executes the stack refactor operation.
-spec execute_stack_refactor(aws_client:aws_client(), execute_stack_refactor_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
execute_stack_refactor(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_stack_refactor(Client, Input, []).

-spec execute_stack_refactor(aws_client:aws_client(), execute_stack_refactor_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
execute_stack_refactor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteStackRefactor">>, Input, Options).

%% @doc Retrieves a generated template.
%%
%% If the template is in an `InProgress' or
%% `Pending' status then the template returned will be the template when
%% the
%% template was last in a `Complete' status. If the template has not yet
%% been in a
%% `Complete' status then an empty template will be returned.
-spec get_generated_template(aws_client:aws_client(), get_generated_template_input()) ->
    {ok, get_generated_template_output(), tuple()} |
    {error, any()} |
    {error, get_generated_template_errors(), tuple()}.
get_generated_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_generated_template(Client, Input, []).

-spec get_generated_template(aws_client:aws_client(), get_generated_template_input(), proplists:proplist()) ->
    {ok, get_generated_template_output(), tuple()} |
    {error, any()} |
    {error, get_generated_template_errors(), tuple()}.
get_generated_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGeneratedTemplate">>, Input, Options).

%% @doc Returns the stack policy for a specified stack.
%%
%% If a stack doesn't have a policy, a null
%% value is returned.
-spec get_stack_policy(aws_client:aws_client(), get_stack_policy_input()) ->
    {ok, get_stack_policy_output(), tuple()} |
    {error, any()}.
get_stack_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_stack_policy(Client, Input, []).

-spec get_stack_policy(aws_client:aws_client(), get_stack_policy_input(), proplists:proplist()) ->
    {ok, get_stack_policy_output(), tuple()} |
    {error, any()}.
get_stack_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStackPolicy">>, Input, Options).

%% @doc Returns the template body for a specified stack.
%%
%% You can get the template for running or
%% deleted stacks.
%%
%% For deleted stacks, `GetTemplate' returns the template for up to 90
%% days after
%% the stack has been deleted.
%%
%% If the template doesn't exist, a `ValidationError' is returned.
-spec get_template(aws_client:aws_client(), get_template_input()) ->
    {ok, get_template_output(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_template(Client, Input, []).

-spec get_template(aws_client:aws_client(), get_template_input(), proplists:proplist()) ->
    {ok, get_template_output(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTemplate">>, Input, Options).

%% @doc Returns information about a new or existing template.
%%
%% The `GetTemplateSummary'
%% action is useful for viewing parameter information, such as default
%% parameter values and
%% parameter types, before you create or update a stack or stack set.
%%
%% You can use the `GetTemplateSummary' action when you submit a
%% template, or you
%% can get template information for a stack set, or a running or deleted
%% stack.
%%
%% For deleted stacks, `GetTemplateSummary' returns the template
%% information for
%% up to 90 days after the stack has been deleted. If the template
%% doesn't exist, a
%% `ValidationError' is returned.
-spec get_template_summary(aws_client:aws_client(), get_template_summary_input()) ->
    {ok, get_template_summary_output(), tuple()} |
    {error, any()} |
    {error, get_template_summary_errors(), tuple()}.
get_template_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_template_summary(Client, Input, []).

-spec get_template_summary(aws_client:aws_client(), get_template_summary_input(), proplists:proplist()) ->
    {ok, get_template_summary_output(), tuple()} |
    {error, any()} |
    {error, get_template_summary_errors(), tuple()}.
get_template_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTemplateSummary">>, Input, Options).

%% @doc Import existing stacks into a new stack sets.
%%
%% Use the stack import operation to import up
%% to 10 stacks into a new stack set in the same account as the source stack
%% or in a different
%% administrator account and Region, by specifying the stack ID of the stack
%% you intend to
%% import.
-spec import_stacks_to_stack_set(aws_client:aws_client(), import_stacks_to_stack_set_input()) ->
    {ok, import_stacks_to_stack_set_output(), tuple()} |
    {error, any()} |
    {error, import_stacks_to_stack_set_errors(), tuple()}.
import_stacks_to_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_stacks_to_stack_set(Client, Input, []).

-spec import_stacks_to_stack_set(aws_client:aws_client(), import_stacks_to_stack_set_input(), proplists:proplist()) ->
    {ok, import_stacks_to_stack_set_output(), tuple()} |
    {error, any()} |
    {error, import_stacks_to_stack_set_errors(), tuple()}.
import_stacks_to_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportStacksToStackSet">>, Input, Options).

%% @doc Returns the ID and status of each active change set for a stack.
%%
%% For example, CloudFormation
%% lists change sets that are in the `CREATE_IN_PROGRESS' or
%% `CREATE_PENDING' state.
-spec list_change_sets(aws_client:aws_client(), list_change_sets_input()) ->
    {ok, list_change_sets_output(), tuple()} |
    {error, any()}.
list_change_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_change_sets(Client, Input, []).

-spec list_change_sets(aws_client:aws_client(), list_change_sets_input(), proplists:proplist()) ->
    {ok, list_change_sets_output(), tuple()} |
    {error, any()}.
list_change_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListChangeSets">>, Input, Options).

%% @doc Lists all exported output values in the account and Region in which
%% you call this action.
%%
%% Use this action to see the exported output values that you can import into
%% other stacks. To
%% import values, use the
%% Fn::ImportValue:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
%% function.
%%
%% For more information, see Get exported outputs from a deployed
%% CloudFormation stack:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html.
-spec list_exports(aws_client:aws_client(), list_exports_input()) ->
    {ok, list_exports_output(), tuple()} |
    {error, any()}.
list_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_exports(Client, Input, []).

-spec list_exports(aws_client:aws_client(), list_exports_input(), proplists:proplist()) ->
    {ok, list_exports_output(), tuple()} |
    {error, any()}.
list_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExports">>, Input, Options).

%% @doc Lists your generated templates in this Region.
-spec list_generated_templates(aws_client:aws_client(), list_generated_templates_input()) ->
    {ok, list_generated_templates_output(), tuple()} |
    {error, any()}.
list_generated_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_generated_templates(Client, Input, []).

-spec list_generated_templates(aws_client:aws_client(), list_generated_templates_input(), proplists:proplist()) ->
    {ok, list_generated_templates_output(), tuple()} |
    {error, any()}.
list_generated_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGeneratedTemplates">>, Input, Options).

%% @doc Returns summaries of invoked Hooks when a change set or Cloud Control
%% API operation target is provided.
-spec list_hook_results(aws_client:aws_client(), list_hook_results_input()) ->
    {ok, list_hook_results_output(), tuple()} |
    {error, any()} |
    {error, list_hook_results_errors(), tuple()}.
list_hook_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hook_results(Client, Input, []).

-spec list_hook_results(aws_client:aws_client(), list_hook_results_input(), proplists:proplist()) ->
    {ok, list_hook_results_output(), tuple()} |
    {error, any()} |
    {error, list_hook_results_errors(), tuple()}.
list_hook_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHookResults">>, Input, Options).

%% @doc Lists all stacks that are importing an exported output value.
%%
%% To modify or remove an
%% exported output value, first use this action to see which stacks are using
%% it. To see the
%% exported output values in your account, see `ListExports'.
%%
%% For more information about importing an exported output value, see the
%% Fn::ImportValue:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
%% function.
-spec list_imports(aws_client:aws_client(), list_imports_input()) ->
    {ok, list_imports_output(), tuple()} |
    {error, any()}.
list_imports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_imports(Client, Input, []).

-spec list_imports(aws_client:aws_client(), list_imports_input(), proplists:proplist()) ->
    {ok, list_imports_output(), tuple()} |
    {error, any()}.
list_imports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImports">>, Input, Options).

%% @doc Lists the related resources for a list of resources from a resource
%% scan.
%%
%% The response
%% indicates whether each returned resource is already managed by
%% CloudFormation.
-spec list_resource_scan_related_resources(aws_client:aws_client(), list_resource_scan_related_resources_input()) ->
    {ok, list_resource_scan_related_resources_output(), tuple()} |
    {error, any()} |
    {error, list_resource_scan_related_resources_errors(), tuple()}.
list_resource_scan_related_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_scan_related_resources(Client, Input, []).

-spec list_resource_scan_related_resources(aws_client:aws_client(), list_resource_scan_related_resources_input(), proplists:proplist()) ->
    {ok, list_resource_scan_related_resources_output(), tuple()} |
    {error, any()} |
    {error, list_resource_scan_related_resources_errors(), tuple()}.
list_resource_scan_related_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceScanRelatedResources">>, Input, Options).

%% @doc Lists the resources from a resource scan.
%%
%% The results can be filtered by resource
%% identifier, resource type prefix, tag key, and tag value. Only resources
%% that match all
%% specified filters are returned. The response indicates whether each
%% returned resource is
%% already managed by CloudFormation.
-spec list_resource_scan_resources(aws_client:aws_client(), list_resource_scan_resources_input()) ->
    {ok, list_resource_scan_resources_output(), tuple()} |
    {error, any()} |
    {error, list_resource_scan_resources_errors(), tuple()}.
list_resource_scan_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_scan_resources(Client, Input, []).

-spec list_resource_scan_resources(aws_client:aws_client(), list_resource_scan_resources_input(), proplists:proplist()) ->
    {ok, list_resource_scan_resources_output(), tuple()} |
    {error, any()} |
    {error, list_resource_scan_resources_errors(), tuple()}.
list_resource_scan_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceScanResources">>, Input, Options).

%% @doc List the resource scans from newest to oldest.
%%
%% By default it will return up to 10 resource
%% scans.
-spec list_resource_scans(aws_client:aws_client(), list_resource_scans_input()) ->
    {ok, list_resource_scans_output(), tuple()} |
    {error, any()}.
list_resource_scans(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_scans(Client, Input, []).

-spec list_resource_scans(aws_client:aws_client(), list_resource_scans_input(), proplists:proplist()) ->
    {ok, list_resource_scans_output(), tuple()} |
    {error, any()}.
list_resource_scans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceScans">>, Input, Options).

%% @doc Returns drift information for resources in a stack instance.
%%
%% `ListStackInstanceResourceDrifts' returns drift information for the
%% most
%% recent drift detection operation. If an operation is in progress, it may
%% only return partial
%% results.
-spec list_stack_instance_resource_drifts(aws_client:aws_client(), list_stack_instance_resource_drifts_input()) ->
    {ok, list_stack_instance_resource_drifts_output(), tuple()} |
    {error, any()} |
    {error, list_stack_instance_resource_drifts_errors(), tuple()}.
list_stack_instance_resource_drifts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_instance_resource_drifts(Client, Input, []).

-spec list_stack_instance_resource_drifts(aws_client:aws_client(), list_stack_instance_resource_drifts_input(), proplists:proplist()) ->
    {ok, list_stack_instance_resource_drifts_output(), tuple()} |
    {error, any()} |
    {error, list_stack_instance_resource_drifts_errors(), tuple()}.
list_stack_instance_resource_drifts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackInstanceResourceDrifts">>, Input, Options).

%% @doc Returns summary information about stack instances that are associated
%% with the specified
%% stack set.
%%
%% You can filter for stack instances that are associated with a specific
%% Amazon Web Services account name or Region, or that have a specific
%% status.
-spec list_stack_instances(aws_client:aws_client(), list_stack_instances_input()) ->
    {ok, list_stack_instances_output(), tuple()} |
    {error, any()} |
    {error, list_stack_instances_errors(), tuple()}.
list_stack_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_instances(Client, Input, []).

-spec list_stack_instances(aws_client:aws_client(), list_stack_instances_input(), proplists:proplist()) ->
    {ok, list_stack_instances_output(), tuple()} |
    {error, any()} |
    {error, list_stack_instances_errors(), tuple()}.
list_stack_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackInstances">>, Input, Options).

%% @doc Lists the stack refactor actions that will be taken after calling the
%% `ExecuteStackRefactor' action.
-spec list_stack_refactor_actions(aws_client:aws_client(), list_stack_refactor_actions_input()) ->
    {ok, list_stack_refactor_actions_output(), tuple()} |
    {error, any()}.
list_stack_refactor_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_refactor_actions(Client, Input, []).

-spec list_stack_refactor_actions(aws_client:aws_client(), list_stack_refactor_actions_input(), proplists:proplist()) ->
    {ok, list_stack_refactor_actions_output(), tuple()} |
    {error, any()}.
list_stack_refactor_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackRefactorActions">>, Input, Options).

%% @doc Lists all account stack refactor operations and their statuses.
-spec list_stack_refactors(aws_client:aws_client(), list_stack_refactors_input()) ->
    {ok, list_stack_refactors_output(), tuple()} |
    {error, any()}.
list_stack_refactors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_refactors(Client, Input, []).

-spec list_stack_refactors(aws_client:aws_client(), list_stack_refactors_input(), proplists:proplist()) ->
    {ok, list_stack_refactors_output(), tuple()} |
    {error, any()}.
list_stack_refactors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackRefactors">>, Input, Options).

%% @doc Returns descriptions of all resources of the specified stack.
%%
%% For deleted stacks, ListStackResources returns resource information for up
%% to 90 days
%% after the stack has been deleted.
-spec list_stack_resources(aws_client:aws_client(), list_stack_resources_input()) ->
    {ok, list_stack_resources_output(), tuple()} |
    {error, any()}.
list_stack_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_resources(Client, Input, []).

-spec list_stack_resources(aws_client:aws_client(), list_stack_resources_input(), proplists:proplist()) ->
    {ok, list_stack_resources_output(), tuple()} |
    {error, any()}.
list_stack_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackResources">>, Input, Options).

%% @doc Returns summary information about deployment targets for a stack set.
-spec list_stack_set_auto_deployment_targets(aws_client:aws_client(), list_stack_set_auto_deployment_targets_input()) ->
    {ok, list_stack_set_auto_deployment_targets_output(), tuple()} |
    {error, any()} |
    {error, list_stack_set_auto_deployment_targets_errors(), tuple()}.
list_stack_set_auto_deployment_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_set_auto_deployment_targets(Client, Input, []).

-spec list_stack_set_auto_deployment_targets(aws_client:aws_client(), list_stack_set_auto_deployment_targets_input(), proplists:proplist()) ->
    {ok, list_stack_set_auto_deployment_targets_output(), tuple()} |
    {error, any()} |
    {error, list_stack_set_auto_deployment_targets_errors(), tuple()}.
list_stack_set_auto_deployment_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackSetAutoDeploymentTargets">>, Input, Options).

%% @doc Returns summary information about the results of a stack set
%% operation.
-spec list_stack_set_operation_results(aws_client:aws_client(), list_stack_set_operation_results_input()) ->
    {ok, list_stack_set_operation_results_output(), tuple()} |
    {error, any()} |
    {error, list_stack_set_operation_results_errors(), tuple()}.
list_stack_set_operation_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_set_operation_results(Client, Input, []).

-spec list_stack_set_operation_results(aws_client:aws_client(), list_stack_set_operation_results_input(), proplists:proplist()) ->
    {ok, list_stack_set_operation_results_output(), tuple()} |
    {error, any()} |
    {error, list_stack_set_operation_results_errors(), tuple()}.
list_stack_set_operation_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackSetOperationResults">>, Input, Options).

%% @doc Returns summary information about operations performed on a stack
%% set.
-spec list_stack_set_operations(aws_client:aws_client(), list_stack_set_operations_input()) ->
    {ok, list_stack_set_operations_output(), tuple()} |
    {error, any()} |
    {error, list_stack_set_operations_errors(), tuple()}.
list_stack_set_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_set_operations(Client, Input, []).

-spec list_stack_set_operations(aws_client:aws_client(), list_stack_set_operations_input(), proplists:proplist()) ->
    {ok, list_stack_set_operations_output(), tuple()} |
    {error, any()} |
    {error, list_stack_set_operations_errors(), tuple()}.
list_stack_set_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackSetOperations">>, Input, Options).

%% @doc Returns summary information about stack sets that are associated with
%% the user.
%%
%% [Self-managed permissions] If you set the `CallAs' parameter to
%% `SELF' while signed in to your Amazon Web Services account,
%% `ListStackSets'
%% returns all self-managed stack sets in your Amazon Web Services account.
%%
%% [Service-managed permissions] If you set the `CallAs' parameter to
%% `SELF' while signed in to the organization's management account,
%% `ListStackSets' returns all stack sets in the management account.
%%
%% [Service-managed permissions] If you set the `CallAs' parameter to
%% `DELEGATED_ADMIN' while signed in to your member account,
%% `ListStackSets' returns all stack sets with service-managed
%% permissions in
%% the management account.
-spec list_stack_sets(aws_client:aws_client(), list_stack_sets_input()) ->
    {ok, list_stack_sets_output(), tuple()} |
    {error, any()}.
list_stack_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_sets(Client, Input, []).

-spec list_stack_sets(aws_client:aws_client(), list_stack_sets_input(), proplists:proplist()) ->
    {ok, list_stack_sets_output(), tuple()} |
    {error, any()}.
list_stack_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackSets">>, Input, Options).

%% @doc Returns the summary information for stacks whose status matches the
%% specified
%% StackStatusFilter.
%%
%% Summary information for stacks that have been deleted is kept for 90 days
%% after the stack is deleted. If no StackStatusFilter is specified, summary
%% information for all
%% stacks is returned (including existing stacks and stacks that have been
%% deleted).
-spec list_stacks(aws_client:aws_client(), list_stacks_input()) ->
    {ok, list_stacks_output(), tuple()} |
    {error, any()}.
list_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stacks(Client, Input, []).

-spec list_stacks(aws_client:aws_client(), list_stacks_input(), proplists:proplist()) ->
    {ok, list_stacks_output(), tuple()} |
    {error, any()}.
list_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStacks">>, Input, Options).

%% @doc Returns a list of registration tokens for the specified extension(s).
-spec list_type_registrations(aws_client:aws_client(), list_type_registrations_input()) ->
    {ok, list_type_registrations_output(), tuple()} |
    {error, any()} |
    {error, list_type_registrations_errors(), tuple()}.
list_type_registrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_type_registrations(Client, Input, []).

-spec list_type_registrations(aws_client:aws_client(), list_type_registrations_input(), proplists:proplist()) ->
    {ok, list_type_registrations_output(), tuple()} |
    {error, any()} |
    {error, list_type_registrations_errors(), tuple()}.
list_type_registrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTypeRegistrations">>, Input, Options).

%% @doc Returns summary information about the versions of an extension.
-spec list_type_versions(aws_client:aws_client(), list_type_versions_input()) ->
    {ok, list_type_versions_output(), tuple()} |
    {error, any()} |
    {error, list_type_versions_errors(), tuple()}.
list_type_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_type_versions(Client, Input, []).

-spec list_type_versions(aws_client:aws_client(), list_type_versions_input(), proplists:proplist()) ->
    {ok, list_type_versions_output(), tuple()} |
    {error, any()} |
    {error, list_type_versions_errors(), tuple()}.
list_type_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTypeVersions">>, Input, Options).

%% @doc Returns summary information about extension that have been registered
%% with
%% CloudFormation.
-spec list_types(aws_client:aws_client(), list_types_input()) ->
    {ok, list_types_output(), tuple()} |
    {error, any()} |
    {error, list_types_errors(), tuple()}.
list_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_types(Client, Input, []).

-spec list_types(aws_client:aws_client(), list_types_input(), proplists:proplist()) ->
    {ok, list_types_output(), tuple()} |
    {error, any()} |
    {error, list_types_errors(), tuple()}.
list_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTypes">>, Input, Options).

%% @doc Publishes the specified extension to the CloudFormation registry as a
%% public extension in this
%% Region.
%%
%% Public extensions are available for use by all CloudFormation users. For
%% more information
%% about publishing extensions, see Publishing extensions to
%% make them available for public use:
%% https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html
%% in the
%% CloudFormation Command Line Interface (CLI) User Guide.
%%
%% To publish an extension, you must be registered as a publisher with
%% CloudFormation. For more
%% information, see RegisterPublisher:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html.
-spec publish_type(aws_client:aws_client(), publish_type_input()) ->
    {ok, publish_type_output(), tuple()} |
    {error, any()} |
    {error, publish_type_errors(), tuple()}.
publish_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    publish_type(Client, Input, []).

-spec publish_type(aws_client:aws_client(), publish_type_input(), proplists:proplist()) ->
    {ok, publish_type_output(), tuple()} |
    {error, any()} |
    {error, publish_type_errors(), tuple()}.
publish_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PublishType">>, Input, Options).

%% @doc Reports progress of a resource handler to CloudFormation.
%%
%% Reserved for use by the CloudFormation
%% CLI:
%% https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html.
%% Don't use this API in your code.
-spec record_handler_progress(aws_client:aws_client(), record_handler_progress_input()) ->
    {ok, record_handler_progress_output(), tuple()} |
    {error, any()} |
    {error, record_handler_progress_errors(), tuple()}.
record_handler_progress(Client, Input)
  when is_map(Client), is_map(Input) ->
    record_handler_progress(Client, Input, []).

-spec record_handler_progress(aws_client:aws_client(), record_handler_progress_input(), proplists:proplist()) ->
    {ok, record_handler_progress_output(), tuple()} |
    {error, any()} |
    {error, record_handler_progress_errors(), tuple()}.
record_handler_progress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecordHandlerProgress">>, Input, Options).

%% @doc Registers your account as a publisher of public extensions in the
%% CloudFormation registry.
%%
%% Public extensions are available for use by all CloudFormation users. This
%% publisher ID applies to
%% your account in all Amazon Web Services Regions.
%%
%% For information about requirements for registering as a public extension
%% publisher, see
%% Prerequisite: Registering your account to publish CloudFormation
%% extensions:
%% https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs
%% in the
%% CloudFormation Command Line Interface (CLI) User Guide.
-spec register_publisher(aws_client:aws_client(), register_publisher_input()) ->
    {ok, register_publisher_output(), tuple()} |
    {error, any()} |
    {error, register_publisher_errors(), tuple()}.
register_publisher(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_publisher(Client, Input, []).

-spec register_publisher(aws_client:aws_client(), register_publisher_input(), proplists:proplist()) ->
    {ok, register_publisher_output(), tuple()} |
    {error, any()} |
    {error, register_publisher_errors(), tuple()}.
register_publisher(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterPublisher">>, Input, Options).

%% @doc Registers an extension with the CloudFormation service.
%%
%% Registering an extension makes it
%% available for use in CloudFormation templates in your Amazon Web Services
%% account, and includes:
%%
%% Validating the extension schema.
%%
%% Determining which handlers, if any, have been specified for the extension.
%%
%% Making the extension available for use in your account.
%%
%% For more information about how to develop extensions and ready them for
%% registration, see
%% Creating resource types using the CloudFormation CLI:
%% https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html
%% in the
%% CloudFormation Command Line Interface (CLI) User Guide.
%%
%% You can have a maximum of 50 resource extension versions registered at a
%% time. This
%% maximum is per account and per Region. Use DeregisterType:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeregisterType.html
%% to deregister specific extension versions if necessary.
%%
%% Once you have initiated a registration request using `RegisterType',
%% you
%% can use `DescribeTypeRegistration' to monitor the progress of the
%% registration
%% request.
%%
%% Once you have registered a private extension in your account and Region,
%% use SetTypeConfiguration:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html
%% to specify configuration properties for the extension. For
%% more information, see Edit configuration
%% data for extensions in your account:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-set-configuration.html
%% in the
%% CloudFormation User Guide.
-spec register_type(aws_client:aws_client(), register_type_input()) ->
    {ok, register_type_output(), tuple()} |
    {error, any()} |
    {error, register_type_errors(), tuple()}.
register_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_type(Client, Input, []).

-spec register_type(aws_client:aws_client(), register_type_input(), proplists:proplist()) ->
    {ok, register_type_output(), tuple()} |
    {error, any()} |
    {error, register_type_errors(), tuple()}.
register_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterType">>, Input, Options).

%% @doc When specifying `RollbackStack', you preserve the state of
%% previously
%% provisioned resources when an operation fails.
%%
%% You can check the status of the stack through
%% the `DescribeStacks' operation.
%%
%% Rolls back the specified stack to the last known stable state from
%% `CREATE_FAILED' or `UPDATE_FAILED' stack statuses.
%%
%% This operation will delete a stack if it doesn't contain a last known
%% stable state. A last
%% known stable state includes any status in a `*_COMPLETE'. This
%% includes the
%% following stack statuses.
%%
%% `CREATE_COMPLETE'
%%
%% `UPDATE_COMPLETE'
%%
%% `UPDATE_ROLLBACK_COMPLETE'
%%
%% `IMPORT_COMPLETE'
%%
%% `IMPORT_ROLLBACK_COMPLETE'
-spec rollback_stack(aws_client:aws_client(), rollback_stack_input()) ->
    {ok, rollback_stack_output(), tuple()} |
    {error, any()} |
    {error, rollback_stack_errors(), tuple()}.
rollback_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    rollback_stack(Client, Input, []).

-spec rollback_stack(aws_client:aws_client(), rollback_stack_input(), proplists:proplist()) ->
    {ok, rollback_stack_output(), tuple()} |
    {error, any()} |
    {error, rollback_stack_errors(), tuple()}.
rollback_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RollbackStack">>, Input, Options).

%% @doc Sets a stack policy for a specified stack.
-spec set_stack_policy(aws_client:aws_client(), set_stack_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
set_stack_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_stack_policy(Client, Input, []).

-spec set_stack_policy(aws_client:aws_client(), set_stack_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
set_stack_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetStackPolicy">>, Input, Options).

%% @doc Specifies the configuration data for a registered CloudFormation
%% extension, in the given
%% account and Region.
%%
%% To view the current configuration data for an extension, refer to the
%% `ConfigurationSchema' element of DescribeType:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html.
%% For
%% more information, see Edit configuration
%% data for extensions in your account:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-set-configuration.html
%% in the
%% CloudFormation User Guide.
%%
%% It's strongly recommended that you use dynamic references to restrict
%% sensitive
%% configuration definitions, such as third-party credentials. For more
%% details on dynamic
%% references, see Specify values stored in
%% other services using dynamic references:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/dynamic-references.html
%% in the
%% CloudFormation User Guide.
-spec set_type_configuration(aws_client:aws_client(), set_type_configuration_input()) ->
    {ok, set_type_configuration_output(), tuple()} |
    {error, any()} |
    {error, set_type_configuration_errors(), tuple()}.
set_type_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_type_configuration(Client, Input, []).

-spec set_type_configuration(aws_client:aws_client(), set_type_configuration_input(), proplists:proplist()) ->
    {ok, set_type_configuration_output(), tuple()} |
    {error, any()} |
    {error, set_type_configuration_errors(), tuple()}.
set_type_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTypeConfiguration">>, Input, Options).

%% @doc Specify the default version of an extension.
%%
%% The default version of an extension will be
%% used in CloudFormation operations.
-spec set_type_default_version(aws_client:aws_client(), set_type_default_version_input()) ->
    {ok, set_type_default_version_output(), tuple()} |
    {error, any()} |
    {error, set_type_default_version_errors(), tuple()}.
set_type_default_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_type_default_version(Client, Input, []).

-spec set_type_default_version(aws_client:aws_client(), set_type_default_version_input(), proplists:proplist()) ->
    {ok, set_type_default_version_output(), tuple()} |
    {error, any()} |
    {error, set_type_default_version_errors(), tuple()}.
set_type_default_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTypeDefaultVersion">>, Input, Options).

%% @doc Sends a signal to the specified resource with a success or failure
%% status.
%%
%% You can use the
%% `SignalResource' operation in conjunction with a creation policy or
%% update
%% policy. CloudFormation doesn't proceed with a stack creation or update
%% until resources receive the
%% required number of signals or the timeout period is exceeded. The
%% `SignalResource'
%% operation is useful in cases where you want to send signals from anywhere
%% other than an Amazon EC2
%% instance.
-spec signal_resource(aws_client:aws_client(), signal_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
signal_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    signal_resource(Client, Input, []).

-spec signal_resource(aws_client:aws_client(), signal_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
signal_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SignalResource">>, Input, Options).

%% @doc Starts a scan of the resources in this account in this Region.
%%
%% You can the status of a
%% scan using the `ListResourceScans' API action.
-spec start_resource_scan(aws_client:aws_client(), start_resource_scan_input()) ->
    {ok, start_resource_scan_output(), tuple()} |
    {error, any()} |
    {error, start_resource_scan_errors(), tuple()}.
start_resource_scan(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_resource_scan(Client, Input, []).

-spec start_resource_scan(aws_client:aws_client(), start_resource_scan_input(), proplists:proplist()) ->
    {ok, start_resource_scan_output(), tuple()} |
    {error, any()} |
    {error, start_resource_scan_errors(), tuple()}.
start_resource_scan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartResourceScan">>, Input, Options).

%% @doc Stops an in-progress operation on a stack set and its associated
%% stack instances.
%%
%% StackSets
%% will cancel all the unstarted stack instance deployments and wait for
%% those are in-progress to
%% complete.
-spec stop_stack_set_operation(aws_client:aws_client(), stop_stack_set_operation_input()) ->
    {ok, stop_stack_set_operation_output(), tuple()} |
    {error, any()} |
    {error, stop_stack_set_operation_errors(), tuple()}.
stop_stack_set_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_stack_set_operation(Client, Input, []).

-spec stop_stack_set_operation(aws_client:aws_client(), stop_stack_set_operation_input(), proplists:proplist()) ->
    {ok, stop_stack_set_operation_output(), tuple()} |
    {error, any()} |
    {error, stop_stack_set_operation_errors(), tuple()}.
stop_stack_set_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopStackSetOperation">>, Input, Options).

%% @doc Tests a registered extension to make sure it meets all necessary
%% requirements for being
%% published in the CloudFormation registry.
%%
%% For resource types, this includes passing all contracts tests defined for
%% the
%% type.
%%
%% For modules, this includes determining if the module's model meets all
%% necessary
%% requirements.
%%
%% For more information, see Testing your public extension before publishing:
%% https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing
%% in the
%% CloudFormation Command Line Interface (CLI) User Guide.
%%
%% If you don't specify a version, CloudFormation uses the default
%% version of the extension in
%% your account and Region for testing.
%%
%% To perform testing, CloudFormation assumes the execution role specified
%% when the type was
%% registered. For more information, see RegisterType:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html.
%%
%% Once you've initiated testing on an extension using `TestType',
%% you can pass
%% the returned `TypeVersionArn' into DescribeType:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html
%% to
%% monitor the current test status and test status description for the
%% extension.
%%
%% An extension must have a test status of `PASSED' before it can be
%% published.
%% For more information, see Publishing extensions
%% to make them available for public use:
%% https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html
%% in the
%% CloudFormation Command Line Interface (CLI) User Guide.
-spec test_type(aws_client:aws_client(), test_type_input()) ->
    {ok, test_type_output(), tuple()} |
    {error, any()} |
    {error, test_type_errors(), tuple()}.
test_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_type(Client, Input, []).

-spec test_type(aws_client:aws_client(), test_type_input(), proplists:proplist()) ->
    {ok, test_type_output(), tuple()} |
    {error, any()} |
    {error, test_type_errors(), tuple()}.
test_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestType">>, Input, Options).

%% @doc Updates a generated template.
%%
%% This can be used to change the name, add and remove
%% resources, refresh resources, and change the `DeletionPolicy' and
%% `UpdateReplacePolicy' settings. You can check the status of the update
%% to the
%% generated template using the `DescribeGeneratedTemplate' API action.
-spec update_generated_template(aws_client:aws_client(), update_generated_template_input()) ->
    {ok, update_generated_template_output(), tuple()} |
    {error, any()} |
    {error, update_generated_template_errors(), tuple()}.
update_generated_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_generated_template(Client, Input, []).

-spec update_generated_template(aws_client:aws_client(), update_generated_template_input(), proplists:proplist()) ->
    {ok, update_generated_template_output(), tuple()} |
    {error, any()} |
    {error, update_generated_template_errors(), tuple()}.
update_generated_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGeneratedTemplate">>, Input, Options).

%% @doc Updates a stack as specified in the template.
%%
%% After the call completes successfully, the
%% stack update starts. You can check the status of the stack through the
%% `DescribeStacks' action.
%%
%% To get a copy of the template for an existing stack, you can use the
%% `GetTemplate' action.
%%
%% For more information about updating a stack and monitoring the progress of
%% the update, see
%% Managing
%% Amazon Web Services resources as a single unit with CloudFormation stacks:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html
%% in the
%% CloudFormation User Guide.
-spec update_stack(aws_client:aws_client(), update_stack_input()) ->
    {ok, update_stack_output(), tuple()} |
    {error, any()} |
    {error, update_stack_errors(), tuple()}.
update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack(Client, Input, []).

-spec update_stack(aws_client:aws_client(), update_stack_input(), proplists:proplist()) ->
    {ok, update_stack_output(), tuple()} |
    {error, any()} |
    {error, update_stack_errors(), tuple()}.
update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStack">>, Input, Options).

%% @doc Updates the parameter values for stack instances for the specified
%% accounts, within the
%% specified Amazon Web Services Regions.
%%
%% A stack instance refers to a stack in a specific account and
%% Region.
%%
%% You can only update stack instances in Amazon Web Services Regions and
%% accounts where they already
%% exist; to create additional stack instances, use CreateStackInstances:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html.
%%
%% During stack set updates, any parameters overridden for a stack instance
%% aren't updated,
%% but retain their overridden value.
%%
%% You can only update the parameter values that are specified in the
%% stack set; to add or delete a parameter itself, use UpdateStackSet:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
%% to update the stack set template. If you add a parameter to a template,
%% before you can
%% override the parameter value specified in the stack set you must first use
%% UpdateStackSet:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
%% to update all stack instances with the updated template and
%% parameter value specified in the stack set. Once a stack instance has been
%% updated with the
%% new parameter, you can then override the parameter value using
%% `UpdateStackInstances'.
-spec update_stack_instances(aws_client:aws_client(), update_stack_instances_input()) ->
    {ok, update_stack_instances_output(), tuple()} |
    {error, any()} |
    {error, update_stack_instances_errors(), tuple()}.
update_stack_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack_instances(Client, Input, []).

-spec update_stack_instances(aws_client:aws_client(), update_stack_instances_input(), proplists:proplist()) ->
    {ok, update_stack_instances_output(), tuple()} |
    {error, any()} |
    {error, update_stack_instances_errors(), tuple()}.
update_stack_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStackInstances">>, Input, Options).

%% @doc Updates the stack set, and associated stack instances in the
%% specified accounts and
%% Amazon Web Services Regions.
%%
%% Even if the stack set operation created by updating the stack set fails
%% (completely or
%% partially, below or above a specified failure tolerance), the stack set is
%% updated with your
%% changes. Subsequent `CreateStackInstances' calls on the specified
%% stack set
%% use the updated stack set.
-spec update_stack_set(aws_client:aws_client(), update_stack_set_input()) ->
    {ok, update_stack_set_output(), tuple()} |
    {error, any()} |
    {error, update_stack_set_errors(), tuple()}.
update_stack_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack_set(Client, Input, []).

-spec update_stack_set(aws_client:aws_client(), update_stack_set_input(), proplists:proplist()) ->
    {ok, update_stack_set_output(), tuple()} |
    {error, any()} |
    {error, update_stack_set_errors(), tuple()}.
update_stack_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStackSet">>, Input, Options).

%% @doc Updates termination protection for the specified stack.
%%
%% If a user attempts to delete a
%% stack with termination protection enabled, the operation fails and the
%% stack remains
%% unchanged. For more information, see Protect a CloudFormation
%% stack from being deleted:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
%% in the CloudFormation User Guide.
%%
%% For nested stacks:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html,
%% termination protection is set on the root stack and can't be changed
%% directly on the nested
%% stack.
-spec update_termination_protection(aws_client:aws_client(), update_termination_protection_input()) ->
    {ok, update_termination_protection_output(), tuple()} |
    {error, any()}.
update_termination_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_termination_protection(Client, Input, []).

-spec update_termination_protection(aws_client:aws_client(), update_termination_protection_input(), proplists:proplist()) ->
    {ok, update_termination_protection_output(), tuple()} |
    {error, any()}.
update_termination_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTerminationProtection">>, Input, Options).

%% @doc Validates a specified template.
%%
%% CloudFormation first checks if the template is valid JSON. If
%% it isn't, CloudFormation checks if the template is valid YAML. If both
%% these checks fail,
%% CloudFormation returns a template validation error.
-spec validate_template(aws_client:aws_client(), validate_template_input()) ->
    {ok, validate_template_output(), tuple()} |
    {error, any()}.
validate_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_template(Client, Input, []).

-spec validate_template(aws_client:aws_client(), validate_template_input(), proplists:proplist()) ->
    {ok, validate_template_output(), tuple()} |
    {error, any()}.
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
