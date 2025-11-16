%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc EC2 Image Builder is a fully managed Amazon Web Services service that
%% makes it easier to automate the
%% creation, management, and deployment of customized, secure, and up-to-date
%% &quot;golden&quot; server images that are pre-installed and pre-configured
%% with software
%% and settings to meet specific IT standards.
-module(aws_imagebuilder).

-export([cancel_image_creation/2,
         cancel_image_creation/3,
         cancel_lifecycle_execution/2,
         cancel_lifecycle_execution/3,
         create_component/2,
         create_component/3,
         create_container_recipe/2,
         create_container_recipe/3,
         create_distribution_configuration/2,
         create_distribution_configuration/3,
         create_image/2,
         create_image/3,
         create_image_pipeline/2,
         create_image_pipeline/3,
         create_image_recipe/2,
         create_image_recipe/3,
         create_infrastructure_configuration/2,
         create_infrastructure_configuration/3,
         create_lifecycle_policy/2,
         create_lifecycle_policy/3,
         create_workflow/2,
         create_workflow/3,
         delete_component/2,
         delete_component/3,
         delete_container_recipe/2,
         delete_container_recipe/3,
         delete_distribution_configuration/2,
         delete_distribution_configuration/3,
         delete_image/2,
         delete_image/3,
         delete_image_pipeline/2,
         delete_image_pipeline/3,
         delete_image_recipe/2,
         delete_image_recipe/3,
         delete_infrastructure_configuration/2,
         delete_infrastructure_configuration/3,
         delete_lifecycle_policy/2,
         delete_lifecycle_policy/3,
         delete_workflow/2,
         delete_workflow/3,
         get_component/2,
         get_component/4,
         get_component/5,
         get_component_policy/2,
         get_component_policy/4,
         get_component_policy/5,
         get_container_recipe/2,
         get_container_recipe/4,
         get_container_recipe/5,
         get_container_recipe_policy/2,
         get_container_recipe_policy/4,
         get_container_recipe_policy/5,
         get_distribution_configuration/2,
         get_distribution_configuration/4,
         get_distribution_configuration/5,
         get_image/2,
         get_image/4,
         get_image/5,
         get_image_pipeline/2,
         get_image_pipeline/4,
         get_image_pipeline/5,
         get_image_policy/2,
         get_image_policy/4,
         get_image_policy/5,
         get_image_recipe/2,
         get_image_recipe/4,
         get_image_recipe/5,
         get_image_recipe_policy/2,
         get_image_recipe_policy/4,
         get_image_recipe_policy/5,
         get_infrastructure_configuration/2,
         get_infrastructure_configuration/4,
         get_infrastructure_configuration/5,
         get_lifecycle_execution/2,
         get_lifecycle_execution/4,
         get_lifecycle_execution/5,
         get_lifecycle_policy/2,
         get_lifecycle_policy/4,
         get_lifecycle_policy/5,
         get_marketplace_resource/2,
         get_marketplace_resource/3,
         get_workflow/2,
         get_workflow/4,
         get_workflow/5,
         get_workflow_execution/2,
         get_workflow_execution/4,
         get_workflow_execution/5,
         get_workflow_step_execution/2,
         get_workflow_step_execution/4,
         get_workflow_step_execution/5,
         import_component/2,
         import_component/3,
         import_disk_image/2,
         import_disk_image/3,
         import_vm_image/2,
         import_vm_image/3,
         list_component_build_versions/2,
         list_component_build_versions/3,
         list_components/2,
         list_components/3,
         list_container_recipes/2,
         list_container_recipes/3,
         list_distribution_configurations/2,
         list_distribution_configurations/3,
         list_image_build_versions/2,
         list_image_build_versions/3,
         list_image_packages/2,
         list_image_packages/3,
         list_image_pipeline_images/2,
         list_image_pipeline_images/3,
         list_image_pipelines/2,
         list_image_pipelines/3,
         list_image_recipes/2,
         list_image_recipes/3,
         list_image_scan_finding_aggregations/2,
         list_image_scan_finding_aggregations/3,
         list_image_scan_findings/2,
         list_image_scan_findings/3,
         list_images/2,
         list_images/3,
         list_infrastructure_configurations/2,
         list_infrastructure_configurations/3,
         list_lifecycle_execution_resources/2,
         list_lifecycle_execution_resources/3,
         list_lifecycle_executions/2,
         list_lifecycle_executions/3,
         list_lifecycle_policies/2,
         list_lifecycle_policies/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_waiting_workflow_steps/2,
         list_waiting_workflow_steps/3,
         list_workflow_build_versions/2,
         list_workflow_build_versions/3,
         list_workflow_executions/2,
         list_workflow_executions/3,
         list_workflow_step_executions/2,
         list_workflow_step_executions/3,
         list_workflows/2,
         list_workflows/3,
         put_component_policy/2,
         put_component_policy/3,
         put_container_recipe_policy/2,
         put_container_recipe_policy/3,
         put_image_policy/2,
         put_image_policy/3,
         put_image_recipe_policy/2,
         put_image_recipe_policy/3,
         send_workflow_step_action/2,
         send_workflow_step_action/3,
         start_image_pipeline_execution/2,
         start_image_pipeline_execution/3,
         start_resource_state_update/2,
         start_resource_state_update/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_distribution_configuration/2,
         update_distribution_configuration/3,
         update_image_pipeline/2,
         update_image_pipeline/3,
         update_infrastructure_configuration/2,
         update_infrastructure_configuration/3,
         update_lifecycle_policy/2,
         update_lifecycle_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_workflow_executions_response() :: #{
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"message">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string(),
%%   <<"workflowExecutions">> => list(workflow_execution_metadata())
%% }
-type list_workflow_executions_response() :: #{binary() => any()}.


%% Example:
%% cancel_lifecycle_execution_response() :: #{
%%   <<"lifecycleExecutionId">> => string()
%% }
-type cancel_lifecycle_execution_response() :: #{binary() => any()}.


%% Example:
%% list_workflow_build_versions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workflowSummaryList">> => list(workflow_summary())
%% }
-type list_workflow_build_versions_response() :: #{binary() => any()}.


%% Example:
%% list_distribution_configurations_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_distribution_configurations_request() :: #{binary() => any()}.


%% Example:
%% create_workflow_request() :: #{
%%   <<"changeDescription">> => string(),
%%   <<"clientToken">> := string(),
%%   <<"data">> => string(),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> := string(),
%%   <<"semanticVersion">> := string(),
%%   <<"tags">> => map(),
%%   <<"type">> := list(any()),
%%   <<"uri">> => string()
%% }
-type create_workflow_request() :: #{binary() => any()}.


%% Example:
%% get_image_policy_request() :: #{
%%   <<"imageArn">> := string()
%% }
-type get_image_policy_request() :: #{binary() => any()}.


%% Example:
%% start_resource_state_update_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"exclusionRules">> => resource_state_update_exclusion_rules(),
%%   <<"executionRole">> => string(),
%%   <<"includeResources">> => resource_state_update_include_resources(),
%%   <<"resourceArn">> := string(),
%%   <<"state">> := resource_state(),
%%   <<"updateAt">> => non_neg_integer()
%% }
-type start_resource_state_update_request() :: #{binary() => any()}.


%% Example:
%% list_image_pipeline_images_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"imagePipelineArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_image_pipeline_images_request() :: #{binary() => any()}.


%% Example:
%% put_container_recipe_policy_response() :: #{
%%   <<"containerRecipeArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type put_container_recipe_policy_response() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_detail_exclusion_rules() :: #{
%%   <<"amis">> => lifecycle_policy_detail_exclusion_rules_amis(),
%%   <<"tagMap">> => map()
%% }
-type lifecycle_policy_detail_exclusion_rules() :: #{binary() => any()}.


%% Example:
%% import_vm_image_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"loggingConfiguration">> => image_logging_configuration(),
%%   <<"name">> := string(),
%%   <<"osVersion">> => string(),
%%   <<"platform">> := list(any()),
%%   <<"semanticVersion">> := string(),
%%   <<"tags">> => map(),
%%   <<"vmImportTaskId">> := string()
%% }
-type import_vm_image_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% component_parameter_detail() :: #{
%%   <<"defaultValue">> => list(string()),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type component_parameter_detail() :: #{binary() => any()}.


%% Example:
%% image_scan_state() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type image_scan_state() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_detail_action_include_resources() :: #{
%%   <<"amis">> => boolean(),
%%   <<"containers">> => boolean(),
%%   <<"snapshots">> => boolean()
%% }
-type lifecycle_policy_detail_action_include_resources() :: #{binary() => any()}.


%% Example:
%% list_workflow_step_executions_response() :: #{
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"message">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string(),
%%   <<"steps">> => list(workflow_step_metadata()),
%%   <<"workflowBuildVersionArn">> => string(),
%%   <<"workflowExecutionId">> => string()
%% }
-type list_workflow_step_executions_response() :: #{binary() => any()}.


%% Example:
%% list_image_packages_request() :: #{
%%   <<"imageBuildVersionArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_image_packages_request() :: #{binary() => any()}.


%% Example:
%% container() :: #{
%%   <<"imageUris">> => list(string()),
%%   <<"region">> => string()
%% }
-type container() :: #{binary() => any()}.


%% Example:
%% update_distribution_configuration_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"distributionConfigurationArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type update_distribution_configuration_response() :: #{binary() => any()}.


%% Example:
%% infrastructure_configuration_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"dateUpdated">> => string(),
%%   <<"description">> => string(),
%%   <<"instanceProfileName">> => string(),
%%   <<"instanceTypes">> => list(string()),
%%   <<"name">> => string(),
%%   <<"placement">> => placement(),
%%   <<"resourceTags">> => map(),
%%   <<"tags">> => map()
%% }
-type infrastructure_configuration_summary() :: #{binary() => any()}.


%% Example:
%% list_image_recipes_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owner">> => list(any())
%% }
-type list_image_recipes_request() :: #{binary() => any()}.


%% Example:
%% workflow_version() :: #{
%%   <<"arn">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"type">> => list(any()),
%%   <<"version">> => string()
%% }
-type workflow_version() :: #{binary() => any()}.


%% Example:
%% list_image_pipelines_response() :: #{
%%   <<"imagePipelineList">> => list(image_pipeline()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_image_pipelines_response() :: #{binary() => any()}.


%% Example:
%% create_image_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type create_image_response() :: #{binary() => any()}.


%% Example:
%% put_container_recipe_policy_request() :: #{
%%   <<"containerRecipeArn">> := string(),
%%   <<"policy">> := string()
%% }
-type put_container_recipe_policy_request() :: #{binary() => any()}.


%% Example:
%% list_waiting_workflow_steps_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"steps">> => list(workflow_step_execution())
%% }
-type list_waiting_workflow_steps_response() :: #{binary() => any()}.


%% Example:
%% update_lifecycle_policy_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"executionRole">> := string(),
%%   <<"lifecyclePolicyArn">> := string(),
%%   <<"policyDetails">> := list(lifecycle_policy_detail()),
%%   <<"resourceSelection">> := lifecycle_policy_resource_selection(),
%%   <<"resourceType">> := list(any()),
%%   <<"status">> => list(any())
%% }
-type update_lifecycle_policy_request() :: #{binary() => any()}.


%% Example:
%% remediation() :: #{
%%   <<"recommendation">> => remediation_recommendation()
%% }
-type remediation() :: #{binary() => any()}.


%% Example:
%% image_scanning_configuration() :: #{
%%   <<"ecrConfiguration">> => ecr_configuration(),
%%   <<"imageScanningEnabled">> => boolean()
%% }
-type image_scanning_configuration() :: #{binary() => any()}.


%% Example:
%% start_image_pipeline_execution_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type start_image_pipeline_execution_response() :: #{binary() => any()}.


%% Example:
%% put_image_recipe_policy_response() :: #{
%%   <<"imageRecipeArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type put_image_recipe_policy_response() :: #{binary() => any()}.


%% Example:
%% get_workflow_step_execution_response() :: #{
%%   <<"action">> => string(),
%%   <<"description">> => string(),
%%   <<"endTime">> => string(),
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"inputs">> => string(),
%%   <<"message">> => string(),
%%   <<"name">> => string(),
%%   <<"onFailure">> => string(),
%%   <<"outputs">> => string(),
%%   <<"requestId">> => string(),
%%   <<"rollbackStatus">> => list(any()),
%%   <<"startTime">> => string(),
%%   <<"status">> => list(any()),
%%   <<"stepExecutionId">> => string(),
%%   <<"timeoutSeconds">> => integer(),
%%   <<"workflowBuildVersionArn">> => string(),
%%   <<"workflowExecutionId">> => string()
%% }
-type get_workflow_step_execution_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% invalid_version_number_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_version_number_exception() :: #{binary() => any()}.


%% Example:
%% list_lifecycle_execution_resources_response() :: #{
%%   <<"lifecycleExecutionId">> => string(),
%%   <<"lifecycleExecutionState">> => lifecycle_execution_state(),
%%   <<"nextToken">> => string(),
%%   <<"resources">> => list(lifecycle_execution_resource())
%% }
-type list_lifecycle_execution_resources_response() :: #{binary() => any()}.


%% Example:
%% delete_workflow_request() :: #{
%%   <<"workflowBuildVersionArn">> := string()
%% }
-type delete_workflow_request() :: #{binary() => any()}.


%% Example:
%% list_image_scan_finding_aggregations_request() :: #{
%%   <<"filter">> => filter(),
%%   <<"nextToken">> => string()
%% }
-type list_image_scan_finding_aggregations_request() :: #{binary() => any()}.


%% Example:
%% image_pipeline() :: #{
%%   <<"arn">> => string(),
%%   <<"consecutiveFailures">> => integer(),
%%   <<"containerRecipeArn">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"dateLastRun">> => string(),
%%   <<"dateNextRun">> => string(),
%%   <<"dateUpdated">> => string(),
%%   <<"description">> => string(),
%%   <<"distributionConfigurationArn">> => string(),
%%   <<"enhancedImageMetadataEnabled">> => boolean(),
%%   <<"executionRole">> => string(),
%%   <<"imageRecipeArn">> => string(),
%%   <<"imageScanningConfiguration">> => image_scanning_configuration(),
%%   <<"imageTestsConfiguration">> => image_tests_configuration(),
%%   <<"infrastructureConfigurationArn">> => string(),
%%   <<"lastRunStatus">> => list(any()),
%%   <<"loggingConfiguration">> => pipeline_logging_configuration(),
%%   <<"name">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"schedule">> => schedule(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"workflows">> => list(workflow_configuration())
%% }
-type image_pipeline() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% workflow_parameter_detail() :: #{
%%   <<"defaultValue">> => list(string()),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type workflow_parameter_detail() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% instance_block_device_mapping() :: #{
%%   <<"deviceName">> => string(),
%%   <<"ebs">> => ebs_instance_block_device_specification(),
%%   <<"noDevice">> => string(),
%%   <<"virtualName">> => string()
%% }
-type instance_block_device_mapping() :: #{binary() => any()}.


%% Example:
%% update_lifecycle_policy_response() :: #{
%%   <<"lifecyclePolicyArn">> => string()
%% }
-type update_lifecycle_policy_response() :: #{binary() => any()}.


%% Example:
%% auto_disable_policy() :: #{
%%   <<"failureCount">> => integer()
%% }
-type auto_disable_policy() :: #{binary() => any()}.


%% Example:
%% ebs_instance_block_device_specification() :: #{
%%   <<"deleteOnTermination">> => boolean(),
%%   <<"encrypted">> => boolean(),
%%   <<"iops">> => integer(),
%%   <<"kmsKeyId">> => string(),
%%   <<"snapshotId">> => string(),
%%   <<"throughput">> => integer(),
%%   <<"volumeSize">> => integer(),
%%   <<"volumeType">> => list(any())
%% }
-type ebs_instance_block_device_specification() :: #{binary() => any()}.


%% Example:
%% get_container_recipe_response() :: #{
%%   <<"containerRecipe">> => container_recipe(),
%%   <<"requestId">> => string()
%% }
-type get_container_recipe_response() :: #{binary() => any()}.


%% Example:
%% get_lifecycle_execution_request() :: #{
%%   <<"lifecycleExecutionId">> := string()
%% }
-type get_lifecycle_execution_request() :: #{binary() => any()}.


%% Example:
%% vulnerability_id_aggregation() :: #{
%%   <<"severityCounts">> => severity_counts(),
%%   <<"vulnerabilityId">> => string()
%% }
-type vulnerability_id_aggregation() :: #{binary() => any()}.


%% Example:
%% ami() :: #{
%%   <<"accountId">> => string(),
%%   <<"description">> => string(),
%%   <<"image">> => string(),
%%   <<"name">> => string(),
%%   <<"region">> => string(),
%%   <<"state">> => image_state()
%% }
-type ami() :: #{binary() => any()}.


%% Example:
%% resource_state() :: #{
%%   <<"status">> => list(any())
%% }
-type resource_state() :: #{binary() => any()}.


%% Example:
%% get_image_response() :: #{
%%   <<"image">> => image(),
%%   <<"requestId">> => string()
%% }
-type get_image_response() :: #{binary() => any()}.


%% Example:
%% get_image_recipe_policy_response() :: #{
%%   <<"policy">> => string(),
%%   <<"requestId">> => string()
%% }
-type get_image_recipe_policy_response() :: #{binary() => any()}.


%% Example:
%% pipeline_logging_configuration() :: #{
%%   <<"imageLogGroupName">> => string(),
%%   <<"pipelineLogGroupName">> => string()
%% }
-type pipeline_logging_configuration() :: #{binary() => any()}.


%% Example:
%% list_lifecycle_policies_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_lifecycle_policies_request() :: #{binary() => any()}.


%% Example:
%% lifecycle_execution_resource_action() :: #{
%%   <<"name">> => list(any()),
%%   <<"reason">> => string()
%% }
-type lifecycle_execution_resource_action() :: #{binary() => any()}.


%% Example:
%% create_image_pipeline_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"imagePipelineArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type create_image_pipeline_response() :: #{binary() => any()}.


%% Example:
%% create_infrastructure_configuration_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"instanceMetadataOptions">> => instance_metadata_options(),
%%   <<"instanceProfileName">> := string(),
%%   <<"instanceTypes">> => list(string()),
%%   <<"keyPair">> => string(),
%%   <<"logging">> => logging(),
%%   <<"name">> := string(),
%%   <<"placement">> => placement(),
%%   <<"resourceTags">> => map(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"snsTopicArn">> => string(),
%%   <<"subnetId">> => string(),
%%   <<"tags">> => map(),
%%   <<"terminateInstanceOnFailure">> => boolean()
%% }
-type create_infrastructure_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_component_request() :: #{
%%   <<"componentBuildVersionArn">> := string()
%% }
-type delete_component_request() :: #{binary() => any()}.


%% Example:
%% send_workflow_step_action_request() :: #{
%%   <<"action">> := list(any()),
%%   <<"clientToken">> := string(),
%%   <<"imageBuildVersionArn">> := string(),
%%   <<"reason">> => string(),
%%   <<"stepExecutionId">> := string()
%% }
-type send_workflow_step_action_request() :: #{binary() => any()}.


%% Example:
%% ecr_configuration() :: #{
%%   <<"containerTags">> => list(string()),
%%   <<"repositoryName">> => string()
%% }
-type ecr_configuration() :: #{binary() => any()}.


%% Example:
%% get_lifecycle_execution_response() :: #{
%%   <<"lifecycleExecution">> => lifecycle_execution()
%% }
-type get_lifecycle_execution_response() :: #{binary() => any()}.


%% Example:
%% get_component_response() :: #{
%%   <<"component">> => component(),
%%   <<"requestId">> => string()
%% }
-type get_component_response() :: #{binary() => any()}.


%% Example:
%% image_scan_findings_filter() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string())
%% }
-type image_scan_findings_filter() :: #{binary() => any()}.


%% Example:
%% create_image_recipe_request() :: #{
%%   <<"additionalInstanceConfiguration">> => additional_instance_configuration(),
%%   <<"amiTags">> => map(),
%%   <<"blockDeviceMappings">> => list(instance_block_device_mapping()),
%%   <<"clientToken">> := string(),
%%   <<"components">> => list(component_configuration()),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"parentImage">> := string(),
%%   <<"semanticVersion">> := string(),
%%   <<"tags">> => map(),
%%   <<"workingDirectory">> => string()
%% }
-type create_image_recipe_request() :: #{binary() => any()}.


%% Example:
%% get_container_recipe_policy_request() :: #{
%%   <<"containerRecipeArn">> := string()
%% }
-type get_container_recipe_policy_request() :: #{binary() => any()}.


%% Example:
%% list_container_recipes_response() :: #{
%%   <<"containerRecipeSummaryList">> => list(container_recipe_summary()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_container_recipes_response() :: #{binary() => any()}.


%% Example:
%% get_infrastructure_configuration_response() :: #{
%%   <<"infrastructureConfiguration">> => infrastructure_configuration(),
%%   <<"requestId">> => string()
%% }
-type get_infrastructure_configuration_response() :: #{binary() => any()}.


%% Example:
%% cancel_image_creation_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"imageBuildVersionArn">> := string()
%% }
-type cancel_image_creation_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_component_build_versions_request() :: #{
%%   <<"componentVersionArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_component_build_versions_request() :: #{binary() => any()}.


%% Example:
%% import_component_request() :: #{
%%   <<"changeDescription">> => string(),
%%   <<"clientToken">> := string(),
%%   <<"data">> => string(),
%%   <<"description">> => string(),
%%   <<"format">> := list(any()),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> := string(),
%%   <<"platform">> := list(any()),
%%   <<"semanticVersion">> := string(),
%%   <<"tags">> => map(),
%%   <<"type">> := list(any()),
%%   <<"uri">> => string()
%% }
-type import_component_request() :: #{binary() => any()}.


%% Example:
%% call_rate_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type call_rate_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% component_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"changeDescription">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"obfuscate">> => boolean(),
%%   <<"owner">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"publisher">> => string(),
%%   <<"state">> => component_state(),
%%   <<"supportedOsVersions">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"version">> => string()
%% }
-type component_summary() :: #{binary() => any()}.


%% Example:
%% target_container_repository() :: #{
%%   <<"repositoryName">> => string(),
%%   <<"service">> => list(any())
%% }
-type target_container_repository() :: #{binary() => any()}.


%% Example:
%% create_distribution_configuration_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"distributions">> := list(distribution()),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_distribution_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_container_recipe_response() :: #{
%%   <<"containerRecipeArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type delete_container_recipe_response() :: #{binary() => any()}.


%% Example:
%% workflow_execution_metadata() :: #{
%%   <<"endTime">> => string(),
%%   <<"message">> => string(),
%%   <<"parallelGroup">> => string(),
%%   <<"startTime">> => string(),
%%   <<"status">> => list(any()),
%%   <<"totalStepCount">> => integer(),
%%   <<"totalStepsFailed">> => integer(),
%%   <<"totalStepsSkipped">> => integer(),
%%   <<"totalStepsSucceeded">> => integer(),
%%   <<"type">> => list(any()),
%%   <<"workflowBuildVersionArn">> => string(),
%%   <<"workflowExecutionId">> => string()
%% }
-type workflow_execution_metadata() :: #{binary() => any()}.


%% Example:
%% component_state() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type component_state() :: #{binary() => any()}.


%% Example:
%% get_workflow_request() :: #{
%%   <<"workflowBuildVersionArn">> := string()
%% }
-type get_workflow_request() :: #{binary() => any()}.


%% Example:
%% severity_counts() :: #{
%%   <<"all">> => float(),
%%   <<"critical">> => float(),
%%   <<"high">> => float(),
%%   <<"medium">> => float()
%% }
-type severity_counts() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_combination_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_combination_exception() :: #{binary() => any()}.


%% Example:
%% delete_container_recipe_request() :: #{
%%   <<"containerRecipeArn">> := string()
%% }
-type delete_container_recipe_request() :: #{binary() => any()}.


%% Example:
%% image_scan_finding_aggregation() :: #{
%%   <<"accountAggregation">> => account_aggregation(),
%%   <<"imageAggregation">> => image_aggregation(),
%%   <<"imagePipelineAggregation">> => image_pipeline_aggregation(),
%%   <<"vulnerabilityIdAggregation">> => vulnerability_id_aggregation()
%% }
-type image_scan_finding_aggregation() :: #{binary() => any()}.


%% Example:
%% image_version() :: #{
%%   <<"arn">> => string(),
%%   <<"buildType">> => list(any()),
%%   <<"dateCreated">> => string(),
%%   <<"imageSource">> => list(any()),
%%   <<"name">> => string(),
%%   <<"osVersion">> => string(),
%%   <<"owner">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"version">> => string()
%% }
-type image_version() :: #{binary() => any()}.


%% Example:
%% get_workflow_step_execution_request() :: #{
%%   <<"stepExecutionId">> := string()
%% }
-type get_workflow_step_execution_request() :: #{binary() => any()}.


%% Example:
%% start_resource_state_update_response() :: #{
%%   <<"lifecycleExecutionId">> => string(),
%%   <<"resourceArn">> => string()
%% }
-type start_resource_state_update_response() :: #{binary() => any()}.


%% Example:
%% delete_image_pipeline_request() :: #{
%%   <<"imagePipelineArn">> := string()
%% }
-type delete_image_pipeline_request() :: #{binary() => any()}.


%% Example:
%% workflow_parameter() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => list(string())
%% }
-type workflow_parameter() :: #{binary() => any()}.


%% Example:
%% get_image_request() :: #{
%%   <<"imageBuildVersionArn">> := string()
%% }
-type get_image_request() :: #{binary() => any()}.


%% Example:
%% workflow_step_execution() :: #{
%%   <<"action">> => string(),
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"name">> => string(),
%%   <<"startTime">> => string(),
%%   <<"stepExecutionId">> => string(),
%%   <<"workflowBuildVersionArn">> => string(),
%%   <<"workflowExecutionId">> => string()
%% }
-type workflow_step_execution() :: #{binary() => any()}.


%% Example:
%% list_distribution_configurations_response() :: #{
%%   <<"distributionConfigurationSummaryList">> => list(distribution_configuration_summary()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_distribution_configurations_response() :: #{binary() => any()}.


%% Example:
%% get_image_policy_response() :: #{
%%   <<"policy">> => string(),
%%   <<"requestId">> => string()
%% }
-type get_image_policy_response() :: #{binary() => any()}.


%% Example:
%% create_component_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"componentBuildVersionArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type create_component_response() :: #{binary() => any()}.


%% Example:
%% delete_workflow_response() :: #{
%%   <<"workflowBuildVersionArn">> => string()
%% }
-type delete_workflow_response() :: #{binary() => any()}.


%% Example:
%% delete_lifecycle_policy_response() :: #{
%%   <<"lifecyclePolicyArn">> => string()
%% }
-type delete_lifecycle_policy_response() :: #{binary() => any()}.


%% Example:
%% lifecycle_execution_resource() :: #{
%%   <<"accountId">> => string(),
%%   <<"action">> => lifecycle_execution_resource_action(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"imageUris">> => list(string()),
%%   <<"region">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"snapshots">> => list(lifecycle_execution_snapshot_resource()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"state">> => lifecycle_execution_resource_state()
%% }
-type lifecycle_execution_resource() :: #{binary() => any()}.


%% Example:
%% delete_distribution_configuration_request() :: #{
%%   <<"distributionConfigurationArn">> := string()
%% }
-type delete_distribution_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_image_recipe_request() :: #{
%%   <<"imageRecipeArn">> := string()
%% }
-type get_image_recipe_request() :: #{binary() => any()}.


%% Example:
%% systems_manager_agent() :: #{
%%   <<"uninstallAfterBuild">> => boolean()
%% }
-type systems_manager_agent() :: #{binary() => any()}.


%% Example:
%% create_image_recipe_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"imageRecipeArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type create_image_recipe_response() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_detail() :: #{
%%   <<"action">> => lifecycle_policy_detail_action(),
%%   <<"exclusionRules">> => lifecycle_policy_detail_exclusion_rules(),
%%   <<"filter">> => lifecycle_policy_detail_filter()
%% }
-type lifecycle_policy_detail() :: #{binary() => any()}.


%% Example:
%% delete_image_recipe_request() :: #{
%%   <<"imageRecipeArn">> := string()
%% }
-type delete_image_recipe_request() :: #{binary() => any()}.


%% Example:
%% s3_export_configuration() :: #{
%%   <<"diskImageFormat">> => list(any()),
%%   <<"roleName">> => string(),
%%   <<"s3Bucket">> => string(),
%%   <<"s3Prefix">> => string()
%% }
-type s3_export_configuration() :: #{binary() => any()}.


%% Example:
%% client_exception() :: #{
%%   <<"message">> => string()
%% }
-type client_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% update_infrastructure_configuration_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"infrastructureConfigurationArn">> := string(),
%%   <<"instanceMetadataOptions">> => instance_metadata_options(),
%%   <<"instanceProfileName">> := string(),
%%   <<"instanceTypes">> => list(string()),
%%   <<"keyPair">> => string(),
%%   <<"logging">> => logging(),
%%   <<"placement">> => placement(),
%%   <<"resourceTags">> => map(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"snsTopicArn">> => string(),
%%   <<"subnetId">> => string(),
%%   <<"terminateInstanceOnFailure">> => boolean()
%% }
-type update_infrastructure_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_components_request() :: #{
%%   <<"byName">> => boolean(),
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owner">> => list(any())
%% }
-type list_components_request() :: #{binary() => any()}.


%% Example:
%% list_workflow_executions_request() :: #{
%%   <<"imageBuildVersionArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_workflow_executions_request() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"dateCreated">> => non_neg_integer(),
%%   <<"dateLastRun">> => non_neg_integer(),
%%   <<"dateUpdated">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"executionRole">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type lifecycle_policy_summary() :: #{binary() => any()}.


%% Example:
%% s3_logs() :: #{
%%   <<"s3BucketName">> => string(),
%%   <<"s3KeyPrefix">> => string()
%% }
-type s3_logs() :: #{binary() => any()}.


%% Example:
%% image_logging_configuration() :: #{
%%   <<"logGroupName">> => string()
%% }
-type image_logging_configuration() :: #{binary() => any()}.


%% Example:
%% create_container_recipe_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"components">> => list(component_configuration()),
%%   <<"containerType">> := list(any()),
%%   <<"description">> => string(),
%%   <<"dockerfileTemplateData">> => string(),
%%   <<"dockerfileTemplateUri">> => string(),
%%   <<"imageOsVersionOverride">> => string(),
%%   <<"instanceConfiguration">> => instance_configuration(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> := string(),
%%   <<"parentImage">> := string(),
%%   <<"platformOverride">> => list(any()),
%%   <<"semanticVersion">> := string(),
%%   <<"tags">> => map(),
%%   <<"targetRepository">> := target_container_repository(),
%%   <<"workingDirectory">> => string()
%% }
-type create_container_recipe_request() :: #{binary() => any()}.


%% Example:
%% put_component_policy_request() :: #{
%%   <<"componentArn">> := string(),
%%   <<"policy">> := string()
%% }
-type put_component_policy_request() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% import_disk_image_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"imageBuildVersionArn">> => string()
%% }
-type import_disk_image_response() :: #{binary() => any()}.


%% Example:
%% create_image_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"containerRecipeArn">> => string(),
%%   <<"distributionConfigurationArn">> => string(),
%%   <<"enhancedImageMetadataEnabled">> => boolean(),
%%   <<"executionRole">> => string(),
%%   <<"imageRecipeArn">> => string(),
%%   <<"imageScanningConfiguration">> => image_scanning_configuration(),
%%   <<"imageTestsConfiguration">> => image_tests_configuration(),
%%   <<"infrastructureConfigurationArn">> := string(),
%%   <<"loggingConfiguration">> => image_logging_configuration(),
%%   <<"tags">> => map(),
%%   <<"workflows">> => list(workflow_configuration())
%% }
-type create_image_request() :: #{binary() => any()}.


%% Example:
%% get_image_pipeline_response() :: #{
%%   <<"imagePipeline">> => image_pipeline(),
%%   <<"requestId">> => string()
%% }
-type get_image_pipeline_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_lifecycle_policies_response() :: #{
%%   <<"lifecyclePolicySummaryList">> => list(lifecycle_policy_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_lifecycle_policies_response() :: #{binary() => any()}.


%% Example:
%% list_images_request() :: #{
%%   <<"byName">> => boolean(),
%%   <<"filters">> => list(filter()),
%%   <<"includeDeprecated">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owner">> => list(any())
%% }
-type list_images_request() :: #{binary() => any()}.


%% Example:
%% component() :: #{
%%   <<"arn">> => string(),
%%   <<"changeDescription">> => string(),
%%   <<"data">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"description">> => string(),
%%   <<"encrypted">> => boolean(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"obfuscate">> => boolean(),
%%   <<"owner">> => string(),
%%   <<"parameters">> => list(component_parameter_detail()),
%%   <<"platform">> => list(any()),
%%   <<"productCodes">> => list(product_code_list_item()),
%%   <<"publisher">> => string(),
%%   <<"state">> => component_state(),
%%   <<"supportedOsVersions">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"version">> => string()
%% }
-type component() :: #{binary() => any()}.


%% Example:
%% resource_state_update_include_resources() :: #{
%%   <<"amis">> => boolean(),
%%   <<"containers">> => boolean(),
%%   <<"snapshots">> => boolean()
%% }
-type resource_state_update_include_resources() :: #{binary() => any()}.


%% Example:
%% send_workflow_step_action_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"stepExecutionId">> => string()
%% }
-type send_workflow_step_action_response() :: #{binary() => any()}.


%% Example:
%% idempotent_parameter_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type idempotent_parameter_mismatch_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.


%% Example:
%% put_image_recipe_policy_request() :: #{
%%   <<"imageRecipeArn">> := string(),
%%   <<"policy">> := string()
%% }
-type put_image_recipe_policy_request() :: #{binary() => any()}.


%% Example:
%% get_component_policy_response() :: #{
%%   <<"policy">> => string(),
%%   <<"requestId">> => string()
%% }
-type get_component_policy_response() :: #{binary() => any()}.


%% Example:
%% list_workflows_request() :: #{
%%   <<"byName">> => boolean(),
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owner">> => list(any())
%% }
-type list_workflows_request() :: #{binary() => any()}.


%% Example:
%% get_container_recipe_request() :: #{
%%   <<"containerRecipeArn">> := string()
%% }
-type get_container_recipe_request() :: #{binary() => any()}.


%% Example:
%% distribution_configuration() :: #{
%%   <<"arn">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"dateUpdated">> => string(),
%%   <<"description">> => string(),
%%   <<"distributions">> => list(distribution()),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"timeoutMinutes">> => integer()
%% }
-type distribution_configuration() :: #{binary() => any()}.


%% Example:
%% lifecycle_execution_resource_state() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type lifecycle_execution_resource_state() :: #{binary() => any()}.


%% Example:
%% get_marketplace_resource_response() :: #{
%%   <<"data">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"url">> => string()
%% }
-type get_marketplace_resource_response() :: #{binary() => any()}.


%% Example:
%% workflow() :: #{
%%   <<"arn">> => string(),
%%   <<"changeDescription">> => string(),
%%   <<"data">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"parameters">> => list(workflow_parameter_detail()),
%%   <<"state">> => workflow_state(),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"version">> => string()
%% }
-type workflow() :: #{binary() => any()}.


%% Example:
%% cvss_score_details() :: #{
%%   <<"adjustments">> => list(cvss_score_adjustment()),
%%   <<"cvssSource">> => string(),
%%   <<"score">> => float(),
%%   <<"scoreSource">> => string(),
%%   <<"scoringVector">> => string(),
%%   <<"version">> => string()
%% }
-type cvss_score_details() :: #{binary() => any()}.


%% Example:
%% list_image_pipelines_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_image_pipelines_request() :: #{binary() => any()}.


%% Example:
%% distribution() :: #{
%%   <<"amiDistributionConfiguration">> => ami_distribution_configuration(),
%%   <<"containerDistributionConfiguration">> => container_distribution_configuration(),
%%   <<"fastLaunchConfigurations">> => list(fast_launch_configuration()),
%%   <<"launchTemplateConfigurations">> => list(launch_template_configuration()),
%%   <<"licenseConfigurationArns">> => list(string()),
%%   <<"region">> => string(),
%%   <<"s3ExportConfiguration">> => s3_export_configuration(),
%%   <<"ssmParameterConfigurations">> => list(ssm_parameter_configuration())
%% }
-type distribution() :: #{binary() => any()}.


%% Example:
%% list_image_scan_findings_response() :: #{
%%   <<"findings">> => list(image_scan_finding()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_image_scan_findings_response() :: #{binary() => any()}.


%% Example:
%% delete_image_recipe_response() :: #{
%%   <<"imageRecipeArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type delete_image_recipe_response() :: #{binary() => any()}.


%% Example:
%% remediation_recommendation() :: #{
%%   <<"text">> => string(),
%%   <<"url">> => string()
%% }
-type remediation_recommendation() :: #{binary() => any()}.


%% Example:
%% service_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_exception() :: #{binary() => any()}.


%% Example:
%% inspector_score_details() :: #{
%%   <<"adjustedCvss">> => cvss_score_details()
%% }
-type inspector_score_details() :: #{binary() => any()}.


%% Example:
%% create_component_request() :: #{
%%   <<"changeDescription">> => string(),
%%   <<"clientToken">> := string(),
%%   <<"data">> => string(),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> := string(),
%%   <<"platform">> := list(any()),
%%   <<"semanticVersion">> := string(),
%%   <<"supportedOsVersions">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"uri">> => string()
%% }
-type create_component_request() :: #{binary() => any()}.


%% Example:
%% vulnerable_package() :: #{
%%   <<"arch">> => string(),
%%   <<"epoch">> => integer(),
%%   <<"filePath">> => string(),
%%   <<"fixedInVersion">> => string(),
%%   <<"name">> => string(),
%%   <<"packageManager">> => string(),
%%   <<"release">> => string(),
%%   <<"remediation">> => string(),
%%   <<"sourceLayerHash">> => string(),
%%   <<"version">> => string()
%% }
-type vulnerable_package() :: #{binary() => any()}.


%% Example:
%% update_distribution_configuration_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"distributionConfigurationArn">> := string(),
%%   <<"distributions">> := list(distribution())
%% }
-type update_distribution_configuration_request() :: #{binary() => any()}.


%% Example:
%% resource_state_update_exclusion_rules() :: #{
%%   <<"amis">> => lifecycle_policy_detail_exclusion_rules_amis()
%% }
-type resource_state_update_exclusion_rules() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% cvss_score_adjustment() :: #{
%%   <<"metric">> => string(),
%%   <<"reason">> => string()
%% }
-type cvss_score_adjustment() :: #{binary() => any()}.


%% Example:
%% lifecycle_execution_snapshot_resource() :: #{
%%   <<"snapshotId">> => string(),
%%   <<"state">> => lifecycle_execution_resource_state()
%% }
-type lifecycle_execution_snapshot_resource() :: #{binary() => any()}.


%% Example:
%% list_infrastructure_configurations_response() :: #{
%%   <<"infrastructureConfigurationSummaryList">> => list(infrastructure_configuration_summary()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_infrastructure_configurations_response() :: #{binary() => any()}.


%% Example:
%% container_recipe_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"containerType">> => list(any()),
%%   <<"dateCreated">> => string(),
%%   <<"instanceImage">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"parentImage">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"tags">> => map()
%% }
-type container_recipe_summary() :: #{binary() => any()}.


%% Example:
%% get_workflow_execution_request() :: #{
%%   <<"workflowExecutionId">> := string()
%% }
-type get_workflow_execution_request() :: #{binary() => any()}.


%% Example:
%% list_lifecycle_executions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> := string()
%% }
-type list_lifecycle_executions_request() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% component_version() :: #{
%%   <<"arn">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"productCodes">> => list(product_code_list_item()),
%%   <<"status">> => list(any()),
%%   <<"supportedOsVersions">> => list(string()),
%%   <<"type">> => list(any()),
%%   <<"version">> => string()
%% }
-type component_version() :: #{binary() => any()}.


%% Example:
%% create_lifecycle_policy_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"lifecyclePolicyArn">> => string()
%% }
-type create_lifecycle_policy_response() :: #{binary() => any()}.


%% Example:
%% put_image_policy_request() :: #{
%%   <<"imageArn">> := string(),
%%   <<"policy">> := string()
%% }
-type put_image_policy_request() :: #{binary() => any()}.


%% Example:
%% get_distribution_configuration_request() :: #{
%%   <<"distributionConfigurationArn">> := string()
%% }
-type get_distribution_configuration_request() :: #{binary() => any()}.


%% Example:
%% import_component_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"componentBuildVersionArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type import_component_response() :: #{binary() => any()}.


%% Example:
%% create_image_pipeline_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"containerRecipeArn">> => string(),
%%   <<"description">> => string(),
%%   <<"distributionConfigurationArn">> => string(),
%%   <<"enhancedImageMetadataEnabled">> => boolean(),
%%   <<"executionRole">> => string(),
%%   <<"imageRecipeArn">> => string(),
%%   <<"imageScanningConfiguration">> => image_scanning_configuration(),
%%   <<"imageTestsConfiguration">> => image_tests_configuration(),
%%   <<"infrastructureConfigurationArn">> := string(),
%%   <<"loggingConfiguration">> => pipeline_logging_configuration(),
%%   <<"name">> := string(),
%%   <<"schedule">> => schedule(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"workflows">> => list(workflow_configuration())
%% }
-type create_image_pipeline_request() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_detail_filter() :: #{
%%   <<"retainAtLeast">> => integer(),
%%   <<"type">> => list(any()),
%%   <<"unit">> => list(any()),
%%   <<"value">> => integer()
%% }
-type lifecycle_policy_detail_filter() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% placement() :: #{
%%   <<"availabilityZone">> => string(),
%%   <<"hostId">> => string(),
%%   <<"hostResourceGroupArn">> => string(),
%%   <<"tenancy">> => list(any())
%% }
-type placement() :: #{binary() => any()}.


%% Example:
%% create_distribution_configuration_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"distributionConfigurationArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type create_distribution_configuration_response() :: #{binary() => any()}.


%% Example:
%% delete_distribution_configuration_response() :: #{
%%   <<"distributionConfigurationArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type delete_distribution_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_images_response() :: #{
%%   <<"imageVersionList">> => list(image_version()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_images_response() :: #{binary() => any()}.


%% Example:
%% list_lifecycle_executions_response() :: #{
%%   <<"lifecycleExecutions">> => list(lifecycle_execution()),
%%   <<"nextToken">> => string()
%% }
-type list_lifecycle_executions_response() :: #{binary() => any()}.


%% Example:
%% list_component_build_versions_response() :: #{
%%   <<"componentSummaryList">> => list(component_summary()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_component_build_versions_response() :: #{binary() => any()}.


%% Example:
%% list_image_packages_response() :: #{
%%   <<"imagePackageList">> => list(image_package()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_image_packages_response() :: #{binary() => any()}.


%% Example:
%% workflow_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"changeDescription">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"state">> => workflow_state(),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"version">> => string()
%% }
-type workflow_summary() :: #{binary() => any()}.


%% Example:
%% image_tests_configuration() :: #{
%%   <<"imageTestsEnabled">> => boolean(),
%%   <<"timeoutMinutes">> => integer()
%% }
-type image_tests_configuration() :: #{binary() => any()}.


%% Example:
%% list_container_recipes_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owner">> => list(any())
%% }
-type list_container_recipes_request() :: #{binary() => any()}.


%% Example:
%% list_image_build_versions_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"imageVersionArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_image_build_versions_request() :: #{binary() => any()}.


%% Example:
%% delete_component_response() :: #{
%%   <<"componentBuildVersionArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type delete_component_response() :: #{binary() => any()}.


%% Example:
%% additional_instance_configuration() :: #{
%%   <<"systemsManagerAgent">> => systems_manager_agent(),
%%   <<"userDataOverride">> => string()
%% }
-type additional_instance_configuration() :: #{binary() => any()}.


%% Example:
%% get_infrastructure_configuration_request() :: #{
%%   <<"infrastructureConfigurationArn">> := string()
%% }
-type get_infrastructure_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_image_request() :: #{
%%   <<"imageBuildVersionArn">> := string()
%% }
-type delete_image_request() :: #{binary() => any()}.


%% Example:
%% lifecycle_execution_resources_impacted_summary() :: #{
%%   <<"hasImpactedResources">> => boolean()
%% }
-type lifecycle_execution_resources_impacted_summary() :: #{binary() => any()}.


%% Example:
%% image_recipe() :: #{
%%   <<"additionalInstanceConfiguration">> => additional_instance_configuration(),
%%   <<"amiTags">> => map(),
%%   <<"arn">> => string(),
%%   <<"blockDeviceMappings">> => list(instance_block_device_mapping()),
%%   <<"components">> => list(component_configuration()),
%%   <<"dateCreated">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"parentImage">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"version">> => string(),
%%   <<"workingDirectory">> => string()
%% }
-type image_recipe() :: #{binary() => any()}.


%% Example:
%% fast_launch_snapshot_configuration() :: #{
%%   <<"targetResourceCount">> => integer()
%% }
-type fast_launch_snapshot_configuration() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy() :: #{
%%   <<"arn">> => string(),
%%   <<"dateCreated">> => non_neg_integer(),
%%   <<"dateLastRun">> => non_neg_integer(),
%%   <<"dateUpdated">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"executionRole">> => string(),
%%   <<"name">> => string(),
%%   <<"policyDetails">> => list(lifecycle_policy_detail()),
%%   <<"resourceSelection">> => lifecycle_policy_resource_selection(),
%%   <<"resourceType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type lifecycle_policy() :: #{binary() => any()}.


%% Example:
%% put_component_policy_response() :: #{
%%   <<"componentArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type put_component_policy_response() :: #{binary() => any()}.


%% Example:
%% get_workflow_execution_response() :: #{
%%   <<"endTime">> => string(),
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"message">> => string(),
%%   <<"parallelGroup">> => string(),
%%   <<"requestId">> => string(),
%%   <<"startTime">> => string(),
%%   <<"status">> => list(any()),
%%   <<"totalStepCount">> => integer(),
%%   <<"totalStepsFailed">> => integer(),
%%   <<"totalStepsSkipped">> => integer(),
%%   <<"totalStepsSucceeded">> => integer(),
%%   <<"type">> => list(any()),
%%   <<"workflowBuildVersionArn">> => string(),
%%   <<"workflowExecutionId">> => string()
%% }
-type get_workflow_execution_response() :: #{binary() => any()}.


%% Example:
%% schedule() :: #{
%%   <<"autoDisablePolicy">> => auto_disable_policy(),
%%   <<"pipelineExecutionStartCondition">> => list(any()),
%%   <<"scheduleExpression">> => string(),
%%   <<"timezone">> => string()
%% }
-type schedule() :: #{binary() => any()}.


%% Example:
%% list_image_scan_findings_request() :: #{
%%   <<"filters">> => list(image_scan_findings_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_image_scan_findings_request() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_resource_selection() :: #{
%%   <<"recipes">> => list(lifecycle_policy_resource_selection_recipe()),
%%   <<"tagMap">> => map()
%% }
-type lifecycle_policy_resource_selection() :: #{binary() => any()}.


%% Example:
%% delete_lifecycle_policy_request() :: #{
%%   <<"lifecyclePolicyArn">> := string()
%% }
-type delete_lifecycle_policy_request() :: #{binary() => any()}.


%% Example:
%% image_scan_finding() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"firstObservedAt">> => non_neg_integer(),
%%   <<"fixAvailable">> => string(),
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"imagePipelineArn">> => string(),
%%   <<"inspectorScore">> => float(),
%%   <<"inspectorScoreDetails">> => inspector_score_details(),
%%   <<"packageVulnerabilityDetails">> => package_vulnerability_details(),
%%   <<"remediation">> => remediation(),
%%   <<"severity">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type image_scan_finding() :: #{binary() => any()}.


%% Example:
%% get_marketplace_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"resourceLocation">> => string(),
%%   <<"resourceType">> := list(any())
%% }
-type get_marketplace_resource_request() :: #{binary() => any()}.


%% Example:
%% list_workflow_step_executions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"workflowExecutionId">> := string()
%% }
-type list_workflow_step_executions_request() :: #{binary() => any()}.


%% Example:
%% get_image_recipe_policy_request() :: #{
%%   <<"imageRecipeArn">> := string()
%% }
-type get_image_recipe_policy_request() :: #{binary() => any()}.


%% Example:
%% account_aggregation() :: #{
%%   <<"accountId">> => string(),
%%   <<"severityCounts">> => severity_counts()
%% }
-type account_aggregation() :: #{binary() => any()}.


%% Example:
%% output_resources() :: #{
%%   <<"amis">> => list(ami()),
%%   <<"containers">> => list(container())
%% }
-type output_resources() :: #{binary() => any()}.


%% Example:
%% cancel_image_creation_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type cancel_image_creation_response() :: #{binary() => any()}.


%% Example:
%% image() :: #{
%%   <<"arn">> => string(),
%%   <<"buildType">> => list(any()),
%%   <<"containerRecipe">> => container_recipe(),
%%   <<"dateCreated">> => string(),
%%   <<"deprecationTime">> => non_neg_integer(),
%%   <<"distributionConfiguration">> => distribution_configuration(),
%%   <<"enhancedImageMetadataEnabled">> => boolean(),
%%   <<"executionRole">> => string(),
%%   <<"imageRecipe">> => image_recipe(),
%%   <<"imageScanningConfiguration">> => image_scanning_configuration(),
%%   <<"imageSource">> => list(any()),
%%   <<"imageTestsConfiguration">> => image_tests_configuration(),
%%   <<"infrastructureConfiguration">> => infrastructure_configuration(),
%%   <<"lifecycleExecutionId">> => string(),
%%   <<"loggingConfiguration">> => image_logging_configuration(),
%%   <<"name">> => string(),
%%   <<"osVersion">> => string(),
%%   <<"outputResources">> => output_resources(),
%%   <<"platform">> => list(any()),
%%   <<"scanState">> => image_scan_state(),
%%   <<"sourcePipelineArn">> => string(),
%%   <<"sourcePipelineName">> => string(),
%%   <<"state">> => image_state(),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"version">> => string(),
%%   <<"workflows">> => list(workflow_configuration())
%% }
-type image() :: #{binary() => any()}.


%% Example:
%% delete_image_pipeline_response() :: #{
%%   <<"imagePipelineArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type delete_image_pipeline_response() :: #{binary() => any()}.


%% Example:
%% get_image_pipeline_request() :: #{
%%   <<"imagePipelineArn">> := string()
%% }
-type get_image_pipeline_request() :: #{binary() => any()}.


%% Example:
%% product_code_list_item() :: #{
%%   <<"productCodeId">> => string(),
%%   <<"productCodeType">> => list(any())
%% }
-type product_code_list_item() :: #{binary() => any()}.


%% Example:
%% create_workflow_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"workflowBuildVersionArn">> => string()
%% }
-type create_workflow_response() :: #{binary() => any()}.


%% Example:
%% put_image_policy_response() :: #{
%%   <<"imageArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type put_image_policy_response() :: #{binary() => any()}.


%% Example:
%% package_vulnerability_details() :: #{
%%   <<"cvss">> => list(cvss_score()),
%%   <<"referenceUrls">> => list(string()),
%%   <<"relatedVulnerabilities">> => list(string()),
%%   <<"source">> => string(),
%%   <<"sourceUrl">> => string(),
%%   <<"vendorCreatedAt">> => non_neg_integer(),
%%   <<"vendorSeverity">> => string(),
%%   <<"vendorUpdatedAt">> => non_neg_integer(),
%%   <<"vulnerabilityId">> => string(),
%%   <<"vulnerablePackages">> => list(vulnerable_package())
%% }
-type package_vulnerability_details() :: #{binary() => any()}.


%% Example:
%% cvss_score() :: #{
%%   <<"baseScore">> => float(),
%%   <<"scoringVector">> => string(),
%%   <<"source">> => string(),
%%   <<"version">> => string()
%% }
-type cvss_score() :: #{binary() => any()}.


%% Example:
%% instance_metadata_options() :: #{
%%   <<"httpPutResponseHopLimit">> => integer(),
%%   <<"httpTokens">> => string()
%% }
-type instance_metadata_options() :: #{binary() => any()}.


%% Example:
%% update_infrastructure_configuration_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"infrastructureConfigurationArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type update_infrastructure_configuration_response() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% fast_launch_launch_template_specification() :: #{
%%   <<"launchTemplateId">> => string(),
%%   <<"launchTemplateName">> => string(),
%%   <<"launchTemplateVersion">> => string()
%% }
-type fast_launch_launch_template_specification() :: #{binary() => any()}.


%% Example:
%% list_workflow_build_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"workflowVersionArn">> => string()
%% }
-type list_workflow_build_versions_request() :: #{binary() => any()}.


%% Example:
%% import_vm_image_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"imageArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type import_vm_image_response() :: #{binary() => any()}.


%% Example:
%% delete_infrastructure_configuration_request() :: #{
%%   <<"infrastructureConfigurationArn">> := string()
%% }
-type delete_infrastructure_configuration_request() :: #{binary() => any()}.


%% Example:
%% ssm_parameter_configuration() :: #{
%%   <<"amiAccountId">> => string(),
%%   <<"dataType">> => list(any()),
%%   <<"parameterName">> => string()
%% }
-type ssm_parameter_configuration() :: #{binary() => any()}.


%% Example:
%% list_image_scan_finding_aggregations_response() :: #{
%%   <<"aggregationType">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string(),
%%   <<"responses">> => list(image_scan_finding_aggregation())
%% }
-type list_image_scan_finding_aggregations_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% image_recipe_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"parentImage">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"tags">> => map()
%% }
-type image_recipe_summary() :: #{binary() => any()}.


%% Example:
%% fast_launch_configuration() :: #{
%%   <<"accountId">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"launchTemplate">> => fast_launch_launch_template_specification(),
%%   <<"maxParallelLaunches">> => integer(),
%%   <<"snapshotConfiguration">> => fast_launch_snapshot_configuration()
%% }
-type fast_launch_configuration() :: #{binary() => any()}.


%% Example:
%% ami_distribution_configuration() :: #{
%%   <<"amiTags">> => map(),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"launchPermission">> => launch_permission_configuration(),
%%   <<"name">> => string(),
%%   <<"targetAccountIds">> => list(string())
%% }
-type ami_distribution_configuration() :: #{binary() => any()}.


%% Example:
%% component_configuration() :: #{
%%   <<"componentArn">> => string(),
%%   <<"parameters">> => list(component_parameter())
%% }
-type component_configuration() :: #{binary() => any()}.


%% Example:
%% instance_configuration() :: #{
%%   <<"blockDeviceMappings">> => list(instance_block_device_mapping()),
%%   <<"image">> => string()
%% }
-type instance_configuration() :: #{binary() => any()}.


%% Example:
%% create_infrastructure_configuration_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"infrastructureConfigurationArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type create_infrastructure_configuration_response() :: #{binary() => any()}.


%% Example:
%% container_distribution_configuration() :: #{
%%   <<"containerTags">> => list(string()),
%%   <<"description">> => string(),
%%   <<"targetRepository">> => target_container_repository()
%% }
-type container_distribution_configuration() :: #{binary() => any()}.


%% Example:
%% get_lifecycle_policy_request() :: #{
%%   <<"lifecyclePolicyArn">> := string()
%% }
-type get_lifecycle_policy_request() :: #{binary() => any()}.


%% Example:
%% image_aggregation() :: #{
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"severityCounts">> => severity_counts()
%% }
-type image_aggregation() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% get_container_recipe_policy_response() :: #{
%%   <<"policy">> => string(),
%%   <<"requestId">> => string()
%% }
-type get_container_recipe_policy_response() :: #{binary() => any()}.


%% Example:
%% create_container_recipe_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"containerRecipeArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type create_container_recipe_response() :: #{binary() => any()}.


%% Example:
%% container_recipe() :: #{
%%   <<"arn">> => string(),
%%   <<"components">> => list(component_configuration()),
%%   <<"containerType">> => list(any()),
%%   <<"dateCreated">> => string(),
%%   <<"description">> => string(),
%%   <<"dockerfileTemplateData">> => string(),
%%   <<"encrypted">> => boolean(),
%%   <<"instanceConfiguration">> => instance_configuration(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"parentImage">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"targetRepository">> => target_container_repository(),
%%   <<"version">> => string(),
%%   <<"workingDirectory">> => string()
%% }
-type container_recipe() :: #{binary() => any()}.


%% Example:
%% create_lifecycle_policy_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"executionRole">> := string(),
%%   <<"name">> := string(),
%%   <<"policyDetails">> := list(lifecycle_policy_detail()),
%%   <<"resourceSelection">> := lifecycle_policy_resource_selection(),
%%   <<"resourceType">> := list(any()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_lifecycle_policy_request() :: #{binary() => any()}.


%% Example:
%% resource_dependency_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_dependency_exception() :: #{binary() => any()}.


%% Example:
%% lifecycle_execution_state() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type lifecycle_execution_state() :: #{binary() => any()}.


%% Example:
%% image_package() :: #{
%%   <<"packageName">> => string(),
%%   <<"packageVersion">> => string()
%% }
-type image_package() :: #{binary() => any()}.


%% Example:
%% delete_image_response() :: #{
%%   <<"imageBuildVersionArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type delete_image_response() :: #{binary() => any()}.


%% Example:
%% lifecycle_execution() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"lifecycleExecutionId">> => string(),
%%   <<"lifecyclePolicyArn">> => string(),
%%   <<"resourcesImpactedSummary">> => lifecycle_execution_resources_impacted_summary(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"state">> => lifecycle_execution_state()
%% }
-type lifecycle_execution() :: #{binary() => any()}.


%% Example:
%% list_components_response() :: #{
%%   <<"componentVersionList">> => list(component_version()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_components_response() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_resource_selection_recipe() :: #{
%%   <<"name">> => string(),
%%   <<"semanticVersion">> => string()
%% }
-type lifecycle_policy_resource_selection_recipe() :: #{binary() => any()}.


%% Example:
%% workflow_step_metadata() :: #{
%%   <<"action">> => string(),
%%   <<"description">> => string(),
%%   <<"endTime">> => string(),
%%   <<"inputs">> => string(),
%%   <<"message">> => string(),
%%   <<"name">> => string(),
%%   <<"outputs">> => string(),
%%   <<"rollbackStatus">> => list(any()),
%%   <<"startTime">> => string(),
%%   <<"status">> => list(any()),
%%   <<"stepExecutionId">> => string()
%% }
-type workflow_step_metadata() :: #{binary() => any()}.


%% Example:
%% list_image_build_versions_response() :: #{
%%   <<"imageSummaryList">> => list(image_summary()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_image_build_versions_response() :: #{binary() => any()}.


%% Example:
%% update_image_pipeline_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"containerRecipeArn">> => string(),
%%   <<"description">> => string(),
%%   <<"distributionConfigurationArn">> => string(),
%%   <<"enhancedImageMetadataEnabled">> => boolean(),
%%   <<"executionRole">> => string(),
%%   <<"imagePipelineArn">> := string(),
%%   <<"imageRecipeArn">> => string(),
%%   <<"imageScanningConfiguration">> => image_scanning_configuration(),
%%   <<"imageTestsConfiguration">> => image_tests_configuration(),
%%   <<"infrastructureConfigurationArn">> := string(),
%%   <<"loggingConfiguration">> => pipeline_logging_configuration(),
%%   <<"schedule">> => schedule(),
%%   <<"status">> => list(any()),
%%   <<"workflows">> => list(workflow_configuration())
%% }
-type update_image_pipeline_request() :: #{binary() => any()}.


%% Example:
%% list_lifecycle_execution_resources_request() :: #{
%%   <<"lifecycleExecutionId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"parentResourceId">> => string()
%% }
-type list_lifecycle_execution_resources_request() :: #{binary() => any()}.


%% Example:
%% image_state() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type image_state() :: #{binary() => any()}.


%% Example:
%% cancel_lifecycle_execution_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"lifecycleExecutionId">> := string()
%% }
-type cancel_lifecycle_execution_request() :: #{binary() => any()}.


%% Example:
%% workflow_configuration() :: #{
%%   <<"onFailure">> => list(any()),
%%   <<"parallelGroup">> => string(),
%%   <<"parameters">> => list(workflow_parameter()),
%%   <<"workflowArn">> => string()
%% }
-type workflow_configuration() :: #{binary() => any()}.


%% Example:
%% import_disk_image_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"executionRole">> => string(),
%%   <<"infrastructureConfigurationArn">> := string(),
%%   <<"loggingConfiguration">> => image_logging_configuration(),
%%   <<"name">> := string(),
%%   <<"osVersion">> := string(),
%%   <<"platform">> := string(),
%%   <<"semanticVersion">> := string(),
%%   <<"tags">> => map(),
%%   <<"uri">> := string()
%% }
-type import_disk_image_request() :: #{binary() => any()}.


%% Example:
%% workflow_state() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type workflow_state() :: #{binary() => any()}.


%% Example:
%% list_infrastructure_configurations_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_infrastructure_configurations_request() :: #{binary() => any()}.


%% Example:
%% image_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"buildType">> => list(any()),
%%   <<"dateCreated">> => string(),
%%   <<"deprecationTime">> => non_neg_integer(),
%%   <<"imageSource">> => list(any()),
%%   <<"lifecycleExecutionId">> => string(),
%%   <<"loggingConfiguration">> => image_logging_configuration(),
%%   <<"name">> => string(),
%%   <<"osVersion">> => string(),
%%   <<"outputResources">> => output_resources(),
%%   <<"owner">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"state">> => image_state(),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"version">> => string()
%% }
-type image_summary() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_detail_action() :: #{
%%   <<"includeResources">> => lifecycle_policy_detail_action_include_resources(),
%%   <<"type">> => list(any())
%% }
-type lifecycle_policy_detail_action() :: #{binary() => any()}.


%% Example:
%% list_image_recipes_response() :: #{
%%   <<"imageRecipeSummaryList">> => list(image_recipe_summary()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_image_recipes_response() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% list_waiting_workflow_steps_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_waiting_workflow_steps_request() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_detail_exclusion_rules_amis() :: #{
%%   <<"isPublic">> => boolean(),
%%   <<"lastLaunched">> => lifecycle_policy_detail_exclusion_rules_amis_last_launched(),
%%   <<"regions">> => list(string()),
%%   <<"sharedAccounts">> => list(string()),
%%   <<"tagMap">> => map()
%% }
-type lifecycle_policy_detail_exclusion_rules_amis() :: #{binary() => any()}.


%% Example:
%% launch_template_configuration() :: #{
%%   <<"accountId">> => string(),
%%   <<"launchTemplateId">> => string(),
%%   <<"setDefaultVersion">> => boolean()
%% }
-type launch_template_configuration() :: #{binary() => any()}.


%% Example:
%% infrastructure_configuration() :: #{
%%   <<"arn">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"dateUpdated">> => string(),
%%   <<"description">> => string(),
%%   <<"instanceMetadataOptions">> => instance_metadata_options(),
%%   <<"instanceProfileName">> => string(),
%%   <<"instanceTypes">> => list(string()),
%%   <<"keyPair">> => string(),
%%   <<"logging">> => logging(),
%%   <<"name">> => string(),
%%   <<"placement">> => placement(),
%%   <<"resourceTags">> => map(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"snsTopicArn">> => string(),
%%   <<"subnetId">> => string(),
%%   <<"tags">> => map(),
%%   <<"terminateInstanceOnFailure">> => boolean()
%% }
-type infrastructure_configuration() :: #{binary() => any()}.


%% Example:
%% get_component_policy_request() :: #{
%%   <<"componentArn">> := string()
%% }
-type get_component_policy_request() :: #{binary() => any()}.


%% Example:
%% list_workflows_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workflowVersionList">> => list(workflow_version())
%% }
-type list_workflows_response() :: #{binary() => any()}.


%% Example:
%% start_image_pipeline_execution_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"imagePipelineArn">> := string(),
%%   <<"tags">> => map()
%% }
-type start_image_pipeline_execution_request() :: #{binary() => any()}.


%% Example:
%% lifecycle_policy_detail_exclusion_rules_amis_last_launched() :: #{
%%   <<"unit">> => list(any()),
%%   <<"value">> => integer()
%% }
-type lifecycle_policy_detail_exclusion_rules_amis_last_launched() :: #{binary() => any()}.


%% Example:
%% image_pipeline_aggregation() :: #{
%%   <<"imagePipelineArn">> => string(),
%%   <<"severityCounts">> => severity_counts()
%% }
-type image_pipeline_aggregation() :: #{binary() => any()}.


%% Example:
%% delete_infrastructure_configuration_response() :: #{
%%   <<"infrastructureConfigurationArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type delete_infrastructure_configuration_response() :: #{binary() => any()}.


%% Example:
%% component_parameter() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => list(string())
%% }
-type component_parameter() :: #{binary() => any()}.


%% Example:
%% get_image_recipe_response() :: #{
%%   <<"imageRecipe">> => image_recipe(),
%%   <<"requestId">> => string()
%% }
-type get_image_recipe_response() :: #{binary() => any()}.


%% Example:
%% get_distribution_configuration_response() :: #{
%%   <<"distributionConfiguration">> => distribution_configuration(),
%%   <<"requestId">> => string()
%% }
-type get_distribution_configuration_response() :: #{binary() => any()}.


%% Example:
%% distribution_configuration_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"dateCreated">> => string(),
%%   <<"dateUpdated">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"tags">> => map()
%% }
-type distribution_configuration_summary() :: #{binary() => any()}.


%% Example:
%% launch_permission_configuration() :: #{
%%   <<"organizationArns">> => list(string()),
%%   <<"organizationalUnitArns">> => list(string()),
%%   <<"userGroups">> => list(string()),
%%   <<"userIds">> => list(string())
%% }
-type launch_permission_configuration() :: #{binary() => any()}.


%% Example:
%% logging() :: #{
%%   <<"s3Logs">> => s3_logs()
%% }
-type logging() :: #{binary() => any()}.


%% Example:
%% list_image_pipeline_images_response() :: #{
%%   <<"imageSummaryList">> => list(image_summary()),
%%   <<"nextToken">> => string(),
%%   <<"requestId">> => string()
%% }
-type list_image_pipeline_images_response() :: #{binary() => any()}.


%% Example:
%% get_component_request() :: #{
%%   <<"componentBuildVersionArn">> := string()
%% }
-type get_component_request() :: #{binary() => any()}.


%% Example:
%% get_lifecycle_policy_response() :: #{
%%   <<"lifecyclePolicy">> => lifecycle_policy()
%% }
-type get_lifecycle_policy_response() :: #{binary() => any()}.


%% Example:
%% invalid_pagination_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pagination_token_exception() :: #{binary() => any()}.


%% Example:
%% update_image_pipeline_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"imagePipelineArn">> => string(),
%%   <<"requestId">> => string()
%% }
-type update_image_pipeline_response() :: #{binary() => any()}.


%% Example:
%% get_workflow_response() :: #{
%%   <<"workflow">> => workflow()
%% }
-type get_workflow_response() :: #{binary() => any()}.

-type cancel_image_creation_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type cancel_lifecycle_execution_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type create_component_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    invalid_parameter_combination_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception() | 
    invalid_version_number_exception().

-type create_container_recipe_errors() ::
    resource_already_exists_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception() | 
    invalid_version_number_exception().

-type create_distribution_configuration_errors() ::
    resource_already_exists_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    invalid_parameter_combination_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type create_image_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type create_image_pipeline_errors() ::
    resource_already_exists_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type create_image_recipe_errors() ::
    resource_already_exists_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception() | 
    invalid_version_number_exception().

-type create_infrastructure_configuration_errors() ::
    resource_already_exists_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type create_lifecycle_policy_errors() ::
    resource_already_exists_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type create_workflow_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    invalid_parameter_combination_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception() | 
    invalid_version_number_exception().

-type delete_component_errors() ::
    resource_dependency_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type delete_container_recipe_errors() ::
    resource_dependency_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type delete_distribution_configuration_errors() ::
    resource_dependency_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type delete_image_errors() ::
    resource_dependency_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type delete_image_pipeline_errors() ::
    resource_dependency_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type delete_image_recipe_errors() ::
    resource_dependency_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type delete_infrastructure_configuration_errors() ::
    resource_dependency_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type delete_lifecycle_policy_errors() ::
    resource_dependency_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type delete_workflow_errors() ::
    resource_dependency_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_component_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_component_policy_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_container_recipe_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_container_recipe_policy_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_distribution_configuration_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_image_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_image_pipeline_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_image_policy_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_image_recipe_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_image_recipe_policy_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_infrastructure_configuration_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_lifecycle_execution_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_lifecycle_policy_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_marketplace_resource_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_workflow_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_workflow_execution_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type get_workflow_step_execution_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type import_component_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    invalid_parameter_combination_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception() | 
    invalid_version_number_exception().

-type import_disk_image_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    client_exception().

-type import_vm_image_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    client_exception().

-type list_component_build_versions_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_components_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_container_recipes_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_distribution_configurations_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_image_build_versions_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_image_packages_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_image_pipeline_images_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_image_pipelines_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_image_recipes_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_image_scan_finding_aggregations_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_image_scan_findings_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_images_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_infrastructure_configurations_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_lifecycle_execution_resources_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_lifecycle_executions_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_lifecycle_policies_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_tags_for_resource_errors() ::
    invalid_parameter_exception() | 
    service_exception() | 
    resource_not_found_exception().

-type list_waiting_workflow_steps_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_workflow_build_versions_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_workflow_executions_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_workflow_step_executions_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type list_workflows_errors() ::
    invalid_pagination_token_exception() | 
    service_unavailable_exception() | 
    service_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type put_component_policy_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type put_container_recipe_policy_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type put_image_policy_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type put_image_recipe_policy_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception().

-type send_workflow_step_action_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type start_image_pipeline_execution_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type start_resource_state_update_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type tag_resource_errors() ::
    invalid_parameter_exception() | 
    service_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    invalid_parameter_exception() | 
    service_exception() | 
    resource_not_found_exception().

-type update_distribution_configuration_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    invalid_parameter_combination_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type update_image_pipeline_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type update_infrastructure_configuration_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

-type update_lifecycle_policy_errors() ::
    service_unavailable_exception() | 
    service_exception() | 
    idempotent_parameter_mismatch_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    invalid_parameter_combination_exception() | 
    call_rate_limit_exceeded_exception() | 
    forbidden_exception() | 
    resource_in_use_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc CancelImageCreation cancels the creation of Image.
%%
%% This operation can only be used on
%% images in a non-terminal state.
-spec cancel_image_creation(aws_client:aws_client(), cancel_image_creation_request()) ->
    {ok, cancel_image_creation_response(), tuple()} |
    {error, any()} |
    {error, cancel_image_creation_errors(), tuple()}.
cancel_image_creation(Client, Input) ->
    cancel_image_creation(Client, Input, []).

-spec cancel_image_creation(aws_client:aws_client(), cancel_image_creation_request(), proplists:proplist()) ->
    {ok, cancel_image_creation_response(), tuple()} |
    {error, any()} |
    {error, cancel_image_creation_errors(), tuple()}.
cancel_image_creation(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CancelImageCreation"],
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

%% @doc Cancel a specific image lifecycle policy runtime instance.
-spec cancel_lifecycle_execution(aws_client:aws_client(), cancel_lifecycle_execution_request()) ->
    {ok, cancel_lifecycle_execution_response(), tuple()} |
    {error, any()} |
    {error, cancel_lifecycle_execution_errors(), tuple()}.
cancel_lifecycle_execution(Client, Input) ->
    cancel_lifecycle_execution(Client, Input, []).

-spec cancel_lifecycle_execution(aws_client:aws_client(), cancel_lifecycle_execution_request(), proplists:proplist()) ->
    {ok, cancel_lifecycle_execution_response(), tuple()} |
    {error, any()} |
    {error, cancel_lifecycle_execution_errors(), tuple()}.
cancel_lifecycle_execution(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CancelLifecycleExecution"],
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

%% @doc Creates a new component that can be used to build, validate, test,
%% and assess your
%% image.
%%
%% The component is based on a YAML document that you specify using exactly
%% one of
%% the following methods:
%%
%% Inline, using the `data' property in the request body.
%%
%% A URL that points to a YAML document file stored in Amazon S3, using the
%% `uri' property in the request body.
-spec create_component(aws_client:aws_client(), create_component_request()) ->
    {ok, create_component_response(), tuple()} |
    {error, any()} |
    {error, create_component_errors(), tuple()}.
create_component(Client, Input) ->
    create_component(Client, Input, []).

-spec create_component(aws_client:aws_client(), create_component_request(), proplists:proplist()) ->
    {ok, create_component_response(), tuple()} |
    {error, any()} |
    {error, create_component_errors(), tuple()}.
create_component(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateComponent"],
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

%% @doc Creates a new container recipe.
%%
%% Container recipes define how images are configured,
%% tested, and assessed.
-spec create_container_recipe(aws_client:aws_client(), create_container_recipe_request()) ->
    {ok, create_container_recipe_response(), tuple()} |
    {error, any()} |
    {error, create_container_recipe_errors(), tuple()}.
create_container_recipe(Client, Input) ->
    create_container_recipe(Client, Input, []).

-spec create_container_recipe(aws_client:aws_client(), create_container_recipe_request(), proplists:proplist()) ->
    {ok, create_container_recipe_response(), tuple()} |
    {error, any()} |
    {error, create_container_recipe_errors(), tuple()}.
create_container_recipe(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateContainerRecipe"],
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

%% @doc Creates a new distribution configuration.
%%
%% Distribution configurations define and
%% configure the outputs of your pipeline.
-spec create_distribution_configuration(aws_client:aws_client(), create_distribution_configuration_request()) ->
    {ok, create_distribution_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_distribution_configuration_errors(), tuple()}.
create_distribution_configuration(Client, Input) ->
    create_distribution_configuration(Client, Input, []).

-spec create_distribution_configuration(aws_client:aws_client(), create_distribution_configuration_request(), proplists:proplist()) ->
    {ok, create_distribution_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_distribution_configuration_errors(), tuple()}.
create_distribution_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateDistributionConfiguration"],
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

%% @doc Creates a new image.
%%
%% This request will create a new image along with all of the
%% configured output resources defined in the distribution configuration. You
%% must specify
%% exactly one recipe for your image, using either a ContainerRecipeArn or an
%% ImageRecipeArn.
-spec create_image(aws_client:aws_client(), create_image_request()) ->
    {ok, create_image_response(), tuple()} |
    {error, any()} |
    {error, create_image_errors(), tuple()}.
create_image(Client, Input) ->
    create_image(Client, Input, []).

-spec create_image(aws_client:aws_client(), create_image_request(), proplists:proplist()) ->
    {ok, create_image_response(), tuple()} |
    {error, any()} |
    {error, create_image_errors(), tuple()}.
create_image(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateImage"],
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

%% @doc Creates a new image pipeline.
%%
%% Image pipelines enable you to automate the creation and
%% distribution of images.
-spec create_image_pipeline(aws_client:aws_client(), create_image_pipeline_request()) ->
    {ok, create_image_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_image_pipeline_errors(), tuple()}.
create_image_pipeline(Client, Input) ->
    create_image_pipeline(Client, Input, []).

-spec create_image_pipeline(aws_client:aws_client(), create_image_pipeline_request(), proplists:proplist()) ->
    {ok, create_image_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_image_pipeline_errors(), tuple()}.
create_image_pipeline(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateImagePipeline"],
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

%% @doc Creates a new image recipe.
%%
%% Image recipes define how images are configured, tested,
%% and assessed.
-spec create_image_recipe(aws_client:aws_client(), create_image_recipe_request()) ->
    {ok, create_image_recipe_response(), tuple()} |
    {error, any()} |
    {error, create_image_recipe_errors(), tuple()}.
create_image_recipe(Client, Input) ->
    create_image_recipe(Client, Input, []).

-spec create_image_recipe(aws_client:aws_client(), create_image_recipe_request(), proplists:proplist()) ->
    {ok, create_image_recipe_response(), tuple()} |
    {error, any()} |
    {error, create_image_recipe_errors(), tuple()}.
create_image_recipe(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateImageRecipe"],
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

%% @doc Creates a new infrastructure configuration.
%%
%% An infrastructure configuration defines
%% the environment in which your image will be built and tested.
-spec create_infrastructure_configuration(aws_client:aws_client(), create_infrastructure_configuration_request()) ->
    {ok, create_infrastructure_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_infrastructure_configuration_errors(), tuple()}.
create_infrastructure_configuration(Client, Input) ->
    create_infrastructure_configuration(Client, Input, []).

-spec create_infrastructure_configuration(aws_client:aws_client(), create_infrastructure_configuration_request(), proplists:proplist()) ->
    {ok, create_infrastructure_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_infrastructure_configuration_errors(), tuple()}.
create_infrastructure_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateInfrastructureConfiguration"],
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

%% @doc Create a lifecycle policy resource.
-spec create_lifecycle_policy(aws_client:aws_client(), create_lifecycle_policy_request()) ->
    {ok, create_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, create_lifecycle_policy_errors(), tuple()}.
create_lifecycle_policy(Client, Input) ->
    create_lifecycle_policy(Client, Input, []).

-spec create_lifecycle_policy(aws_client:aws_client(), create_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, create_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, create_lifecycle_policy_errors(), tuple()}.
create_lifecycle_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateLifecyclePolicy"],
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

%% @doc Create a new workflow or a new version of an existing workflow.
-spec create_workflow(aws_client:aws_client(), create_workflow_request()) ->
    {ok, create_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input) ->
    create_workflow(Client, Input, []).

-spec create_workflow(aws_client:aws_client(), create_workflow_request(), proplists:proplist()) ->
    {ok, create_workflow_response(), tuple()} |
    {error, any()} |
    {error, create_workflow_errors(), tuple()}.
create_workflow(Client, Input0, Options0) ->
    Method = put,
    Path = ["/CreateWorkflow"],
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

%% @doc Deletes a component build version.
-spec delete_component(aws_client:aws_client(), delete_component_request()) ->
    {ok, delete_component_response(), tuple()} |
    {error, any()} |
    {error, delete_component_errors(), tuple()}.
delete_component(Client, Input) ->
    delete_component(Client, Input, []).

-spec delete_component(aws_client:aws_client(), delete_component_request(), proplists:proplist()) ->
    {ok, delete_component_response(), tuple()} |
    {error, any()} |
    {error, delete_component_errors(), tuple()}.
delete_component(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteComponent"],
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
                     {<<"componentBuildVersionArn">>, <<"componentBuildVersionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a container recipe.
-spec delete_container_recipe(aws_client:aws_client(), delete_container_recipe_request()) ->
    {ok, delete_container_recipe_response(), tuple()} |
    {error, any()} |
    {error, delete_container_recipe_errors(), tuple()}.
delete_container_recipe(Client, Input) ->
    delete_container_recipe(Client, Input, []).

-spec delete_container_recipe(aws_client:aws_client(), delete_container_recipe_request(), proplists:proplist()) ->
    {ok, delete_container_recipe_response(), tuple()} |
    {error, any()} |
    {error, delete_container_recipe_errors(), tuple()}.
delete_container_recipe(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteContainerRecipe"],
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
                     {<<"containerRecipeArn">>, <<"containerRecipeArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a distribution configuration.
-spec delete_distribution_configuration(aws_client:aws_client(), delete_distribution_configuration_request()) ->
    {ok, delete_distribution_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_distribution_configuration_errors(), tuple()}.
delete_distribution_configuration(Client, Input) ->
    delete_distribution_configuration(Client, Input, []).

-spec delete_distribution_configuration(aws_client:aws_client(), delete_distribution_configuration_request(), proplists:proplist()) ->
    {ok, delete_distribution_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_distribution_configuration_errors(), tuple()}.
delete_distribution_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteDistributionConfiguration"],
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
                     {<<"distributionConfigurationArn">>, <<"distributionConfigurationArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Image Builder image resource.
%%
%% This does not delete any EC2 AMIs or ECR container
%% images that are created during the image build process. You must clean
%% those up
%% separately, using the appropriate Amazon EC2 or Amazon ECR console
%% actions, or API or CLI
%% commands.
%%
%% To deregister an EC2 Linux AMI, see Deregister your
%% Linux AMI:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html in
%% the
%% Amazon EC2 User Guide
%% .
%%
%% To deregister an EC2 Windows AMI, see Deregister your
%% Windows AMI:
%% https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/deregister-ami.html
%% in the
%% Amazon EC2 Windows Guide
%% .
%%
%% To delete a container image from Amazon ECR, see Deleting
%% an image:
%% https://docs.aws.amazon.com/AmazonECR/latest/userguide/delete_image.html
%% in the Amazon ECR User Guide.
-spec delete_image(aws_client:aws_client(), delete_image_request()) ->
    {ok, delete_image_response(), tuple()} |
    {error, any()} |
    {error, delete_image_errors(), tuple()}.
delete_image(Client, Input) ->
    delete_image(Client, Input, []).

-spec delete_image(aws_client:aws_client(), delete_image_request(), proplists:proplist()) ->
    {ok, delete_image_response(), tuple()} |
    {error, any()} |
    {error, delete_image_errors(), tuple()}.
delete_image(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteImage"],
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
                     {<<"imageBuildVersionArn">>, <<"imageBuildVersionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an image pipeline.
-spec delete_image_pipeline(aws_client:aws_client(), delete_image_pipeline_request()) ->
    {ok, delete_image_pipeline_response(), tuple()} |
    {error, any()} |
    {error, delete_image_pipeline_errors(), tuple()}.
delete_image_pipeline(Client, Input) ->
    delete_image_pipeline(Client, Input, []).

-spec delete_image_pipeline(aws_client:aws_client(), delete_image_pipeline_request(), proplists:proplist()) ->
    {ok, delete_image_pipeline_response(), tuple()} |
    {error, any()} |
    {error, delete_image_pipeline_errors(), tuple()}.
delete_image_pipeline(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteImagePipeline"],
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
                     {<<"imagePipelineArn">>, <<"imagePipelineArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an image recipe.
-spec delete_image_recipe(aws_client:aws_client(), delete_image_recipe_request()) ->
    {ok, delete_image_recipe_response(), tuple()} |
    {error, any()} |
    {error, delete_image_recipe_errors(), tuple()}.
delete_image_recipe(Client, Input) ->
    delete_image_recipe(Client, Input, []).

-spec delete_image_recipe(aws_client:aws_client(), delete_image_recipe_request(), proplists:proplist()) ->
    {ok, delete_image_recipe_response(), tuple()} |
    {error, any()} |
    {error, delete_image_recipe_errors(), tuple()}.
delete_image_recipe(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteImageRecipe"],
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
                     {<<"imageRecipeArn">>, <<"imageRecipeArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an infrastructure configuration.
-spec delete_infrastructure_configuration(aws_client:aws_client(), delete_infrastructure_configuration_request()) ->
    {ok, delete_infrastructure_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_infrastructure_configuration_errors(), tuple()}.
delete_infrastructure_configuration(Client, Input) ->
    delete_infrastructure_configuration(Client, Input, []).

-spec delete_infrastructure_configuration(aws_client:aws_client(), delete_infrastructure_configuration_request(), proplists:proplist()) ->
    {ok, delete_infrastructure_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_infrastructure_configuration_errors(), tuple()}.
delete_infrastructure_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteInfrastructureConfiguration"],
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
                     {<<"infrastructureConfigurationArn">>, <<"infrastructureConfigurationArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete the specified lifecycle policy resource.
-spec delete_lifecycle_policy(aws_client:aws_client(), delete_lifecycle_policy_request()) ->
    {ok, delete_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_policy_errors(), tuple()}.
delete_lifecycle_policy(Client, Input) ->
    delete_lifecycle_policy(Client, Input, []).

-spec delete_lifecycle_policy(aws_client:aws_client(), delete_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, delete_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_lifecycle_policy_errors(), tuple()}.
delete_lifecycle_policy(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteLifecyclePolicy"],
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
                     {<<"lifecyclePolicyArn">>, <<"lifecyclePolicyArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific workflow resource.
-spec delete_workflow(aws_client:aws_client(), delete_workflow_request()) ->
    {ok, delete_workflow_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Input) ->
    delete_workflow(Client, Input, []).

-spec delete_workflow(aws_client:aws_client(), delete_workflow_request(), proplists:proplist()) ->
    {ok, delete_workflow_response(), tuple()} |
    {error, any()} |
    {error, delete_workflow_errors(), tuple()}.
delete_workflow(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/DeleteWorkflow"],
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
                     {<<"workflowBuildVersionArn">>, <<"workflowBuildVersionArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a component object.
-spec get_component(aws_client:aws_client(), binary() | list()) ->
    {ok, get_component_response(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, ComponentBuildVersionArn)
  when is_map(Client) ->
    get_component(Client, ComponentBuildVersionArn, #{}, #{}).

-spec get_component(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_component_response(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, ComponentBuildVersionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component(Client, ComponentBuildVersionArn, QueryMap, HeadersMap, []).

-spec get_component(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_component_response(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, ComponentBuildVersionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetComponent"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"componentBuildVersionArn">>, ComponentBuildVersionArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a component policy.
-spec get_component_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_component_policy_response(), tuple()} |
    {error, any()} |
    {error, get_component_policy_errors(), tuple()}.
get_component_policy(Client, ComponentArn)
  when is_map(Client) ->
    get_component_policy(Client, ComponentArn, #{}, #{}).

-spec get_component_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_component_policy_response(), tuple()} |
    {error, any()} |
    {error, get_component_policy_errors(), tuple()}.
get_component_policy(Client, ComponentArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component_policy(Client, ComponentArn, QueryMap, HeadersMap, []).

-spec get_component_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_component_policy_response(), tuple()} |
    {error, any()} |
    {error, get_component_policy_errors(), tuple()}.
get_component_policy(Client, ComponentArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetComponentPolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"componentArn">>, ComponentArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a container recipe.
-spec get_container_recipe(aws_client:aws_client(), binary() | list()) ->
    {ok, get_container_recipe_response(), tuple()} |
    {error, any()} |
    {error, get_container_recipe_errors(), tuple()}.
get_container_recipe(Client, ContainerRecipeArn)
  when is_map(Client) ->
    get_container_recipe(Client, ContainerRecipeArn, #{}, #{}).

-spec get_container_recipe(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_container_recipe_response(), tuple()} |
    {error, any()} |
    {error, get_container_recipe_errors(), tuple()}.
get_container_recipe(Client, ContainerRecipeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_container_recipe(Client, ContainerRecipeArn, QueryMap, HeadersMap, []).

-spec get_container_recipe(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_container_recipe_response(), tuple()} |
    {error, any()} |
    {error, get_container_recipe_errors(), tuple()}.
get_container_recipe(Client, ContainerRecipeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetContainerRecipe"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"containerRecipeArn">>, ContainerRecipeArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the policy for a container recipe.
-spec get_container_recipe_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_container_recipe_policy_response(), tuple()} |
    {error, any()} |
    {error, get_container_recipe_policy_errors(), tuple()}.
get_container_recipe_policy(Client, ContainerRecipeArn)
  when is_map(Client) ->
    get_container_recipe_policy(Client, ContainerRecipeArn, #{}, #{}).

-spec get_container_recipe_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_container_recipe_policy_response(), tuple()} |
    {error, any()} |
    {error, get_container_recipe_policy_errors(), tuple()}.
get_container_recipe_policy(Client, ContainerRecipeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_container_recipe_policy(Client, ContainerRecipeArn, QueryMap, HeadersMap, []).

-spec get_container_recipe_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_container_recipe_policy_response(), tuple()} |
    {error, any()} |
    {error, get_container_recipe_policy_errors(), tuple()}.
get_container_recipe_policy(Client, ContainerRecipeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetContainerRecipePolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"containerRecipeArn">>, ContainerRecipeArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a distribution configuration.
-spec get_distribution_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_distribution_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_distribution_configuration_errors(), tuple()}.
get_distribution_configuration(Client, DistributionConfigurationArn)
  when is_map(Client) ->
    get_distribution_configuration(Client, DistributionConfigurationArn, #{}, #{}).

-spec get_distribution_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_distribution_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_distribution_configuration_errors(), tuple()}.
get_distribution_configuration(Client, DistributionConfigurationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_distribution_configuration(Client, DistributionConfigurationArn, QueryMap, HeadersMap, []).

-spec get_distribution_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_distribution_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_distribution_configuration_errors(), tuple()}.
get_distribution_configuration(Client, DistributionConfigurationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetDistributionConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"distributionConfigurationArn">>, DistributionConfigurationArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an image.
-spec get_image(aws_client:aws_client(), binary() | list()) ->
    {ok, get_image_response(), tuple()} |
    {error, any()} |
    {error, get_image_errors(), tuple()}.
get_image(Client, ImageBuildVersionArn)
  when is_map(Client) ->
    get_image(Client, ImageBuildVersionArn, #{}, #{}).

-spec get_image(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_image_response(), tuple()} |
    {error, any()} |
    {error, get_image_errors(), tuple()}.
get_image(Client, ImageBuildVersionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_image(Client, ImageBuildVersionArn, QueryMap, HeadersMap, []).

-spec get_image(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_image_response(), tuple()} |
    {error, any()} |
    {error, get_image_errors(), tuple()}.
get_image(Client, ImageBuildVersionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetImage"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"imageBuildVersionArn">>, ImageBuildVersionArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an image pipeline.
-spec get_image_pipeline(aws_client:aws_client(), binary() | list()) ->
    {ok, get_image_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_image_pipeline_errors(), tuple()}.
get_image_pipeline(Client, ImagePipelineArn)
  when is_map(Client) ->
    get_image_pipeline(Client, ImagePipelineArn, #{}, #{}).

-spec get_image_pipeline(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_image_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_image_pipeline_errors(), tuple()}.
get_image_pipeline(Client, ImagePipelineArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_image_pipeline(Client, ImagePipelineArn, QueryMap, HeadersMap, []).

-spec get_image_pipeline(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_image_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_image_pipeline_errors(), tuple()}.
get_image_pipeline(Client, ImagePipelineArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetImagePipeline"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"imagePipelineArn">>, ImagePipelineArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an image policy.
-spec get_image_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_image_policy_response(), tuple()} |
    {error, any()} |
    {error, get_image_policy_errors(), tuple()}.
get_image_policy(Client, ImageArn)
  when is_map(Client) ->
    get_image_policy(Client, ImageArn, #{}, #{}).

-spec get_image_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_image_policy_response(), tuple()} |
    {error, any()} |
    {error, get_image_policy_errors(), tuple()}.
get_image_policy(Client, ImageArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_image_policy(Client, ImageArn, QueryMap, HeadersMap, []).

-spec get_image_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_image_policy_response(), tuple()} |
    {error, any()} |
    {error, get_image_policy_errors(), tuple()}.
get_image_policy(Client, ImageArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetImagePolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"imageArn">>, ImageArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an image recipe.
-spec get_image_recipe(aws_client:aws_client(), binary() | list()) ->
    {ok, get_image_recipe_response(), tuple()} |
    {error, any()} |
    {error, get_image_recipe_errors(), tuple()}.
get_image_recipe(Client, ImageRecipeArn)
  when is_map(Client) ->
    get_image_recipe(Client, ImageRecipeArn, #{}, #{}).

-spec get_image_recipe(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_image_recipe_response(), tuple()} |
    {error, any()} |
    {error, get_image_recipe_errors(), tuple()}.
get_image_recipe(Client, ImageRecipeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_image_recipe(Client, ImageRecipeArn, QueryMap, HeadersMap, []).

-spec get_image_recipe(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_image_recipe_response(), tuple()} |
    {error, any()} |
    {error, get_image_recipe_errors(), tuple()}.
get_image_recipe(Client, ImageRecipeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetImageRecipe"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"imageRecipeArn">>, ImageRecipeArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an image recipe policy.
-spec get_image_recipe_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_image_recipe_policy_response(), tuple()} |
    {error, any()} |
    {error, get_image_recipe_policy_errors(), tuple()}.
get_image_recipe_policy(Client, ImageRecipeArn)
  when is_map(Client) ->
    get_image_recipe_policy(Client, ImageRecipeArn, #{}, #{}).

-spec get_image_recipe_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_image_recipe_policy_response(), tuple()} |
    {error, any()} |
    {error, get_image_recipe_policy_errors(), tuple()}.
get_image_recipe_policy(Client, ImageRecipeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_image_recipe_policy(Client, ImageRecipeArn, QueryMap, HeadersMap, []).

-spec get_image_recipe_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_image_recipe_policy_response(), tuple()} |
    {error, any()} |
    {error, get_image_recipe_policy_errors(), tuple()}.
get_image_recipe_policy(Client, ImageRecipeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetImageRecipePolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"imageRecipeArn">>, ImageRecipeArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an infrastructure configuration.
-spec get_infrastructure_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_infrastructure_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_infrastructure_configuration_errors(), tuple()}.
get_infrastructure_configuration(Client, InfrastructureConfigurationArn)
  when is_map(Client) ->
    get_infrastructure_configuration(Client, InfrastructureConfigurationArn, #{}, #{}).

-spec get_infrastructure_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_infrastructure_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_infrastructure_configuration_errors(), tuple()}.
get_infrastructure_configuration(Client, InfrastructureConfigurationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_infrastructure_configuration(Client, InfrastructureConfigurationArn, QueryMap, HeadersMap, []).

-spec get_infrastructure_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_infrastructure_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_infrastructure_configuration_errors(), tuple()}.
get_infrastructure_configuration(Client, InfrastructureConfigurationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetInfrastructureConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"infrastructureConfigurationArn">>, InfrastructureConfigurationArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the runtime information that was logged for a specific runtime
%% instance of the lifecycle policy.
-spec get_lifecycle_execution(aws_client:aws_client(), binary() | list()) ->
    {ok, get_lifecycle_execution_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_execution_errors(), tuple()}.
get_lifecycle_execution(Client, LifecycleExecutionId)
  when is_map(Client) ->
    get_lifecycle_execution(Client, LifecycleExecutionId, #{}, #{}).

-spec get_lifecycle_execution(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_lifecycle_execution_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_execution_errors(), tuple()}.
get_lifecycle_execution(Client, LifecycleExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lifecycle_execution(Client, LifecycleExecutionId, QueryMap, HeadersMap, []).

-spec get_lifecycle_execution(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_lifecycle_execution_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_execution_errors(), tuple()}.
get_lifecycle_execution(Client, LifecycleExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetLifecycleExecution"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"lifecycleExecutionId">>, LifecycleExecutionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details for the specified image lifecycle policy.
-spec get_lifecycle_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_errors(), tuple()}.
get_lifecycle_policy(Client, LifecyclePolicyArn)
  when is_map(Client) ->
    get_lifecycle_policy(Client, LifecyclePolicyArn, #{}, #{}).

-spec get_lifecycle_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_errors(), tuple()}.
get_lifecycle_policy(Client, LifecyclePolicyArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lifecycle_policy(Client, LifecyclePolicyArn, QueryMap, HeadersMap, []).

-spec get_lifecycle_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, get_lifecycle_policy_errors(), tuple()}.
get_lifecycle_policy(Client, LifecyclePolicyArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetLifecyclePolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"lifecyclePolicyArn">>, LifecyclePolicyArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Verify the subscription and perform resource dependency checks on the
%% requested
%% Amazon Web Services Marketplace resource.
%%
%% For Amazon Web Services Marketplace components, the response contains
%% fields to download the
%% components and their artifacts.
-spec get_marketplace_resource(aws_client:aws_client(), get_marketplace_resource_request()) ->
    {ok, get_marketplace_resource_response(), tuple()} |
    {error, any()} |
    {error, get_marketplace_resource_errors(), tuple()}.
get_marketplace_resource(Client, Input) ->
    get_marketplace_resource(Client, Input, []).

-spec get_marketplace_resource(aws_client:aws_client(), get_marketplace_resource_request(), proplists:proplist()) ->
    {ok, get_marketplace_resource_response(), tuple()} |
    {error, any()} |
    {error, get_marketplace_resource_errors(), tuple()}.
get_marketplace_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetMarketplaceResource"],
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

%% @doc Get a workflow resource object.
-spec get_workflow(aws_client:aws_client(), binary() | list()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, WorkflowBuildVersionArn)
  when is_map(Client) ->
    get_workflow(Client, WorkflowBuildVersionArn, #{}, #{}).

-spec get_workflow(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, WorkflowBuildVersionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow(Client, WorkflowBuildVersionArn, QueryMap, HeadersMap, []).

-spec get_workflow(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_errors(), tuple()}.
get_workflow(Client, WorkflowBuildVersionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetWorkflow"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"workflowBuildVersionArn">>, WorkflowBuildVersionArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the runtime information that was logged for a specific runtime
%% instance
%% of the workflow.
-spec get_workflow_execution(aws_client:aws_client(), binary() | list()) ->
    {ok, get_workflow_execution_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_execution_errors(), tuple()}.
get_workflow_execution(Client, WorkflowExecutionId)
  when is_map(Client) ->
    get_workflow_execution(Client, WorkflowExecutionId, #{}, #{}).

-spec get_workflow_execution(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_workflow_execution_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_execution_errors(), tuple()}.
get_workflow_execution(Client, WorkflowExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_execution(Client, WorkflowExecutionId, QueryMap, HeadersMap, []).

-spec get_workflow_execution(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_execution_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_execution_errors(), tuple()}.
get_workflow_execution(Client, WorkflowExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetWorkflowExecution"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"workflowExecutionId">>, WorkflowExecutionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the runtime information that was logged for a specific runtime
%% instance of
%% the workflow step.
-spec get_workflow_step_execution(aws_client:aws_client(), binary() | list()) ->
    {ok, get_workflow_step_execution_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_step_execution_errors(), tuple()}.
get_workflow_step_execution(Client, StepExecutionId)
  when is_map(Client) ->
    get_workflow_step_execution(Client, StepExecutionId, #{}, #{}).

-spec get_workflow_step_execution(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_workflow_step_execution_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_step_execution_errors(), tuple()}.
get_workflow_step_execution(Client, StepExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_step_execution(Client, StepExecutionId, QueryMap, HeadersMap, []).

-spec get_workflow_step_execution(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workflow_step_execution_response(), tuple()} |
    {error, any()} |
    {error, get_workflow_step_execution_errors(), tuple()}.
get_workflow_step_execution(Client, StepExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/GetWorkflowStepExecution"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"stepExecutionId">>, StepExecutionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports a component and transforms its data into a component
%% document.
-spec import_component(aws_client:aws_client(), import_component_request()) ->
    {ok, import_component_response(), tuple()} |
    {error, any()} |
    {error, import_component_errors(), tuple()}.
import_component(Client, Input) ->
    import_component(Client, Input, []).

-spec import_component(aws_client:aws_client(), import_component_request(), proplists:proplist()) ->
    {ok, import_component_response(), tuple()} |
    {error, any()} |
    {error, import_component_errors(), tuple()}.
import_component(Client, Input0, Options0) ->
    Method = put,
    Path = ["/ImportComponent"],
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

%% @doc Import a Windows operating system image from a verified Microsoft ISO
%% disk
%% file.
%%
%% The following disk images are supported:
%%
%% Windows 11 Enterprise
-spec import_disk_image(aws_client:aws_client(), import_disk_image_request()) ->
    {ok, import_disk_image_response(), tuple()} |
    {error, any()} |
    {error, import_disk_image_errors(), tuple()}.
import_disk_image(Client, Input) ->
    import_disk_image(Client, Input, []).

-spec import_disk_image(aws_client:aws_client(), import_disk_image_request(), proplists:proplist()) ->
    {ok, import_disk_image_response(), tuple()} |
    {error, any()} |
    {error, import_disk_image_errors(), tuple()}.
import_disk_image(Client, Input0, Options0) ->
    Method = put,
    Path = ["/ImportDiskImage"],
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

%% @doc When you export your virtual machine (VM) from its virtualization
%% environment, that
%% process creates a set of one or more disk container files that act as
%% snapshots of your
%% VM’s environment, settings, and data.
%%
%% The Amazon EC2 API ImportImage:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html
%% action uses those files to import your VM and create an AMI. To import
%% using the CLI
%% command, see import-image:
%% https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html
%%
%% You can reference the task ID from the VM import to pull in the AMI that
%% the import
%% created as the base image for your Image Builder recipe.
-spec import_vm_image(aws_client:aws_client(), import_vm_image_request()) ->
    {ok, import_vm_image_response(), tuple()} |
    {error, any()} |
    {error, import_vm_image_errors(), tuple()}.
import_vm_image(Client, Input) ->
    import_vm_image(Client, Input, []).

-spec import_vm_image(aws_client:aws_client(), import_vm_image_request(), proplists:proplist()) ->
    {ok, import_vm_image_response(), tuple()} |
    {error, any()} |
    {error, import_vm_image_errors(), tuple()}.
import_vm_image(Client, Input0, Options0) ->
    Method = put,
    Path = ["/ImportVmImage"],
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

%% @doc Returns the list of component build versions for the specified
%% component
%% version Amazon Resource Name (ARN).
-spec list_component_build_versions(aws_client:aws_client(), list_component_build_versions_request()) ->
    {ok, list_component_build_versions_response(), tuple()} |
    {error, any()} |
    {error, list_component_build_versions_errors(), tuple()}.
list_component_build_versions(Client, Input) ->
    list_component_build_versions(Client, Input, []).

-spec list_component_build_versions(aws_client:aws_client(), list_component_build_versions_request(), proplists:proplist()) ->
    {ok, list_component_build_versions_response(), tuple()} |
    {error, any()} |
    {error, list_component_build_versions_errors(), tuple()}.
list_component_build_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListComponentBuildVersions"],
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

%% @doc Returns the list of components that can be filtered by name, or by
%% using the listed
%% `filters' to streamline results.
%%
%% Newly created components can take up to
%% two minutes to appear in the ListComponents API Results.
%%
%% The semantic version has four nodes: ../.
%% You can assign values for the first three, and can filter on all of them.
%%
%% Filtering: With semantic versioning, you have the flexibility to use
%% wildcards (x)
%% to specify the most recent versions or nodes when selecting the base image
%% or components for your
%% recipe. When you use a wildcard in any node, all nodes to the right of the
%% first wildcard must also be
%% wildcards.
-spec list_components(aws_client:aws_client(), list_components_request()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, Input) ->
    list_components(Client, Input, []).

-spec list_components(aws_client:aws_client(), list_components_request(), proplists:proplist()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListComponents"],
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

%% @doc Returns a list of container recipes.
-spec list_container_recipes(aws_client:aws_client(), list_container_recipes_request()) ->
    {ok, list_container_recipes_response(), tuple()} |
    {error, any()} |
    {error, list_container_recipes_errors(), tuple()}.
list_container_recipes(Client, Input) ->
    list_container_recipes(Client, Input, []).

-spec list_container_recipes(aws_client:aws_client(), list_container_recipes_request(), proplists:proplist()) ->
    {ok, list_container_recipes_response(), tuple()} |
    {error, any()} |
    {error, list_container_recipes_errors(), tuple()}.
list_container_recipes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListContainerRecipes"],
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

%% @doc Returns a list of distribution configurations.
-spec list_distribution_configurations(aws_client:aws_client(), list_distribution_configurations_request()) ->
    {ok, list_distribution_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_distribution_configurations_errors(), tuple()}.
list_distribution_configurations(Client, Input) ->
    list_distribution_configurations(Client, Input, []).

-spec list_distribution_configurations(aws_client:aws_client(), list_distribution_configurations_request(), proplists:proplist()) ->
    {ok, list_distribution_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_distribution_configurations_errors(), tuple()}.
list_distribution_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListDistributionConfigurations"],
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

%% @doc Returns a list of image build versions.
-spec list_image_build_versions(aws_client:aws_client(), list_image_build_versions_request()) ->
    {ok, list_image_build_versions_response(), tuple()} |
    {error, any()} |
    {error, list_image_build_versions_errors(), tuple()}.
list_image_build_versions(Client, Input) ->
    list_image_build_versions(Client, Input, []).

-spec list_image_build_versions(aws_client:aws_client(), list_image_build_versions_request(), proplists:proplist()) ->
    {ok, list_image_build_versions_response(), tuple()} |
    {error, any()} |
    {error, list_image_build_versions_errors(), tuple()}.
list_image_build_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImageBuildVersions"],
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

%% @doc List the Packages that are associated with an Image Build Version, as
%% determined by
%% Amazon Web Services Systems Manager Inventory at build time.
-spec list_image_packages(aws_client:aws_client(), list_image_packages_request()) ->
    {ok, list_image_packages_response(), tuple()} |
    {error, any()} |
    {error, list_image_packages_errors(), tuple()}.
list_image_packages(Client, Input) ->
    list_image_packages(Client, Input, []).

-spec list_image_packages(aws_client:aws_client(), list_image_packages_request(), proplists:proplist()) ->
    {ok, list_image_packages_response(), tuple()} |
    {error, any()} |
    {error, list_image_packages_errors(), tuple()}.
list_image_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImagePackages"],
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

%% @doc Returns a list of images created by the specified pipeline.
-spec list_image_pipeline_images(aws_client:aws_client(), list_image_pipeline_images_request()) ->
    {ok, list_image_pipeline_images_response(), tuple()} |
    {error, any()} |
    {error, list_image_pipeline_images_errors(), tuple()}.
list_image_pipeline_images(Client, Input) ->
    list_image_pipeline_images(Client, Input, []).

-spec list_image_pipeline_images(aws_client:aws_client(), list_image_pipeline_images_request(), proplists:proplist()) ->
    {ok, list_image_pipeline_images_response(), tuple()} |
    {error, any()} |
    {error, list_image_pipeline_images_errors(), tuple()}.
list_image_pipeline_images(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImagePipelineImages"],
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

%% @doc Returns a list of image pipelines.
-spec list_image_pipelines(aws_client:aws_client(), list_image_pipelines_request()) ->
    {ok, list_image_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_image_pipelines_errors(), tuple()}.
list_image_pipelines(Client, Input) ->
    list_image_pipelines(Client, Input, []).

-spec list_image_pipelines(aws_client:aws_client(), list_image_pipelines_request(), proplists:proplist()) ->
    {ok, list_image_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_image_pipelines_errors(), tuple()}.
list_image_pipelines(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImagePipelines"],
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

%% @doc Returns a list of image recipes.
-spec list_image_recipes(aws_client:aws_client(), list_image_recipes_request()) ->
    {ok, list_image_recipes_response(), tuple()} |
    {error, any()} |
    {error, list_image_recipes_errors(), tuple()}.
list_image_recipes(Client, Input) ->
    list_image_recipes(Client, Input, []).

-spec list_image_recipes(aws_client:aws_client(), list_image_recipes_request(), proplists:proplist()) ->
    {ok, list_image_recipes_response(), tuple()} |
    {error, any()} |
    {error, list_image_recipes_errors(), tuple()}.
list_image_recipes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImageRecipes"],
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

%% @doc Returns a list of image scan aggregations for your account.
%%
%% You can filter by the type
%% of key that Image Builder uses to group results. For example, if you want
%% to get a list of
%% findings by severity level for one of your pipelines, you might specify
%% your pipeline
%% with the `imagePipelineArn' filter. If you don't specify a filter,
%% Image Builder
%% returns an aggregation for your account.
%%
%% To streamline results, you can use the following filters in your request:
%%
%% `accountId'
%%
%% `imageBuildVersionArn'
%%
%% `imagePipelineArn'
%%
%% `vulnerabilityId'
-spec list_image_scan_finding_aggregations(aws_client:aws_client(), list_image_scan_finding_aggregations_request()) ->
    {ok, list_image_scan_finding_aggregations_response(), tuple()} |
    {error, any()} |
    {error, list_image_scan_finding_aggregations_errors(), tuple()}.
list_image_scan_finding_aggregations(Client, Input) ->
    list_image_scan_finding_aggregations(Client, Input, []).

-spec list_image_scan_finding_aggregations(aws_client:aws_client(), list_image_scan_finding_aggregations_request(), proplists:proplist()) ->
    {ok, list_image_scan_finding_aggregations_response(), tuple()} |
    {error, any()} |
    {error, list_image_scan_finding_aggregations_errors(), tuple()}.
list_image_scan_finding_aggregations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImageScanFindingAggregations"],
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

%% @doc Returns a list of image scan findings for your account.
-spec list_image_scan_findings(aws_client:aws_client(), list_image_scan_findings_request()) ->
    {ok, list_image_scan_findings_response(), tuple()} |
    {error, any()} |
    {error, list_image_scan_findings_errors(), tuple()}.
list_image_scan_findings(Client, Input) ->
    list_image_scan_findings(Client, Input, []).

-spec list_image_scan_findings(aws_client:aws_client(), list_image_scan_findings_request(), proplists:proplist()) ->
    {ok, list_image_scan_findings_response(), tuple()} |
    {error, any()} |
    {error, list_image_scan_findings_errors(), tuple()}.
list_image_scan_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImageScanFindings"],
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

%% @doc Returns the list of images that you have access to.
%%
%% Newly created images can take up
%% to two minutes to appear in the ListImages API Results.
-spec list_images(aws_client:aws_client(), list_images_request()) ->
    {ok, list_images_response(), tuple()} |
    {error, any()} |
    {error, list_images_errors(), tuple()}.
list_images(Client, Input) ->
    list_images(Client, Input, []).

-spec list_images(aws_client:aws_client(), list_images_request(), proplists:proplist()) ->
    {ok, list_images_response(), tuple()} |
    {error, any()} |
    {error, list_images_errors(), tuple()}.
list_images(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListImages"],
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

%% @doc Returns a list of infrastructure configurations.
-spec list_infrastructure_configurations(aws_client:aws_client(), list_infrastructure_configurations_request()) ->
    {ok, list_infrastructure_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_infrastructure_configurations_errors(), tuple()}.
list_infrastructure_configurations(Client, Input) ->
    list_infrastructure_configurations(Client, Input, []).

-spec list_infrastructure_configurations(aws_client:aws_client(), list_infrastructure_configurations_request(), proplists:proplist()) ->
    {ok, list_infrastructure_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_infrastructure_configurations_errors(), tuple()}.
list_infrastructure_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListInfrastructureConfigurations"],
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

%% @doc List resources that the runtime instance of the image lifecycle
%% identified for lifecycle actions.
-spec list_lifecycle_execution_resources(aws_client:aws_client(), list_lifecycle_execution_resources_request()) ->
    {ok, list_lifecycle_execution_resources_response(), tuple()} |
    {error, any()} |
    {error, list_lifecycle_execution_resources_errors(), tuple()}.
list_lifecycle_execution_resources(Client, Input) ->
    list_lifecycle_execution_resources(Client, Input, []).

-spec list_lifecycle_execution_resources(aws_client:aws_client(), list_lifecycle_execution_resources_request(), proplists:proplist()) ->
    {ok, list_lifecycle_execution_resources_response(), tuple()} |
    {error, any()} |
    {error, list_lifecycle_execution_resources_errors(), tuple()}.
list_lifecycle_execution_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLifecycleExecutionResources"],
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

%% @doc Get the lifecycle runtime history for the specified resource.
-spec list_lifecycle_executions(aws_client:aws_client(), list_lifecycle_executions_request()) ->
    {ok, list_lifecycle_executions_response(), tuple()} |
    {error, any()} |
    {error, list_lifecycle_executions_errors(), tuple()}.
list_lifecycle_executions(Client, Input) ->
    list_lifecycle_executions(Client, Input, []).

-spec list_lifecycle_executions(aws_client:aws_client(), list_lifecycle_executions_request(), proplists:proplist()) ->
    {ok, list_lifecycle_executions_response(), tuple()} |
    {error, any()} |
    {error, list_lifecycle_executions_errors(), tuple()}.
list_lifecycle_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLifecycleExecutions"],
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

%% @doc Get a list of lifecycle policies in your Amazon Web Services account.
-spec list_lifecycle_policies(aws_client:aws_client(), list_lifecycle_policies_request()) ->
    {ok, list_lifecycle_policies_response(), tuple()} |
    {error, any()} |
    {error, list_lifecycle_policies_errors(), tuple()}.
list_lifecycle_policies(Client, Input) ->
    list_lifecycle_policies(Client, Input, []).

-spec list_lifecycle_policies(aws_client:aws_client(), list_lifecycle_policies_request(), proplists:proplist()) ->
    {ok, list_lifecycle_policies_response(), tuple()} |
    {error, any()} |
    {error, list_lifecycle_policies_errors(), tuple()}.
list_lifecycle_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLifecyclePolicies"],
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

%% @doc Returns the list of tags for the specified resource.
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

%% @doc Get a list of workflow steps that are waiting for action for
%% workflows
%% in your Amazon Web Services account.
-spec list_waiting_workflow_steps(aws_client:aws_client(), list_waiting_workflow_steps_request()) ->
    {ok, list_waiting_workflow_steps_response(), tuple()} |
    {error, any()} |
    {error, list_waiting_workflow_steps_errors(), tuple()}.
list_waiting_workflow_steps(Client, Input) ->
    list_waiting_workflow_steps(Client, Input, []).

-spec list_waiting_workflow_steps(aws_client:aws_client(), list_waiting_workflow_steps_request(), proplists:proplist()) ->
    {ok, list_waiting_workflow_steps_response(), tuple()} |
    {error, any()} |
    {error, list_waiting_workflow_steps_errors(), tuple()}.
list_waiting_workflow_steps(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWaitingWorkflowSteps"],
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

%% @doc Returns a list of build versions for a specific workflow resource.
-spec list_workflow_build_versions(aws_client:aws_client(), list_workflow_build_versions_request()) ->
    {ok, list_workflow_build_versions_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_build_versions_errors(), tuple()}.
list_workflow_build_versions(Client, Input) ->
    list_workflow_build_versions(Client, Input, []).

-spec list_workflow_build_versions(aws_client:aws_client(), list_workflow_build_versions_request(), proplists:proplist()) ->
    {ok, list_workflow_build_versions_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_build_versions_errors(), tuple()}.
list_workflow_build_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWorkflowBuildVersions"],
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

%% @doc Returns a list of workflow runtime instance metadata objects for a
%% specific image build
%% version.
-spec list_workflow_executions(aws_client:aws_client(), list_workflow_executions_request()) ->
    {ok, list_workflow_executions_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_executions_errors(), tuple()}.
list_workflow_executions(Client, Input) ->
    list_workflow_executions(Client, Input, []).

-spec list_workflow_executions(aws_client:aws_client(), list_workflow_executions_request(), proplists:proplist()) ->
    {ok, list_workflow_executions_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_executions_errors(), tuple()}.
list_workflow_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWorkflowExecutions"],
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

%% @doc Returns runtime data for each step in a runtime instance of the
%% workflow
%% that you specify in the request.
-spec list_workflow_step_executions(aws_client:aws_client(), list_workflow_step_executions_request()) ->
    {ok, list_workflow_step_executions_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_step_executions_errors(), tuple()}.
list_workflow_step_executions(Client, Input) ->
    list_workflow_step_executions(Client, Input, []).

-spec list_workflow_step_executions(aws_client:aws_client(), list_workflow_step_executions_request(), proplists:proplist()) ->
    {ok, list_workflow_step_executions_response(), tuple()} |
    {error, any()} |
    {error, list_workflow_step_executions_errors(), tuple()}.
list_workflow_step_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWorkflowStepExecutions"],
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

%% @doc Lists workflow build versions based on filtering parameters.
-spec list_workflows(aws_client:aws_client(), list_workflows_request()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, Input) ->
    list_workflows(Client, Input, []).

-spec list_workflows(aws_client:aws_client(), list_workflows_request(), proplists:proplist()) ->
    {ok, list_workflows_response(), tuple()} |
    {error, any()} |
    {error, list_workflows_errors(), tuple()}.
list_workflows(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWorkflows"],
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

%% @doc Applies a policy to a component.
%%
%% We recommend that you call the RAM API CreateResourceShare:
%% https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
%% to share resources. If you call the Image Builder API
%% `PutComponentPolicy', you must also call the RAM API
%% PromoteResourceShareCreatedFromPolicy:
%% https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
%% in order for the resource to be
%% visible to all principals with whom the resource is shared.
-spec put_component_policy(aws_client:aws_client(), put_component_policy_request()) ->
    {ok, put_component_policy_response(), tuple()} |
    {error, any()} |
    {error, put_component_policy_errors(), tuple()}.
put_component_policy(Client, Input) ->
    put_component_policy(Client, Input, []).

-spec put_component_policy(aws_client:aws_client(), put_component_policy_request(), proplists:proplist()) ->
    {ok, put_component_policy_response(), tuple()} |
    {error, any()} |
    {error, put_component_policy_errors(), tuple()}.
put_component_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/PutComponentPolicy"],
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

%% @doc Applies a policy to a container image.
%%
%% We recommend that you call the RAM API
%% CreateResourceShare
%% (https://docs.aws.amazon.com//ram/latest/APIReference/API_CreateResourceShare.html)
%% to share
%% resources. If you call the Image Builder API
%% `PutContainerImagePolicy', you must also
%% call the RAM API PromoteResourceShareCreatedFromPolicy
%% (https://docs.aws.amazon.com//ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
%%
%% in order for the resource to be visible to all principals with whom the
%% resource is
%% shared.
-spec put_container_recipe_policy(aws_client:aws_client(), put_container_recipe_policy_request()) ->
    {ok, put_container_recipe_policy_response(), tuple()} |
    {error, any()} |
    {error, put_container_recipe_policy_errors(), tuple()}.
put_container_recipe_policy(Client, Input) ->
    put_container_recipe_policy(Client, Input, []).

-spec put_container_recipe_policy(aws_client:aws_client(), put_container_recipe_policy_request(), proplists:proplist()) ->
    {ok, put_container_recipe_policy_response(), tuple()} |
    {error, any()} |
    {error, put_container_recipe_policy_errors(), tuple()}.
put_container_recipe_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/PutContainerRecipePolicy"],
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

%% @doc Applies a policy to an image.
%%
%% We recommend that you call the RAM API CreateResourceShare:
%% https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
%% to share resources. If you call the Image Builder API
%% `PutImagePolicy', you must also call the RAM API
%% PromoteResourceShareCreatedFromPolicy:
%% https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
%% in order for the resource to be
%% visible to all principals with whom the resource is shared.
-spec put_image_policy(aws_client:aws_client(), put_image_policy_request()) ->
    {ok, put_image_policy_response(), tuple()} |
    {error, any()} |
    {error, put_image_policy_errors(), tuple()}.
put_image_policy(Client, Input) ->
    put_image_policy(Client, Input, []).

-spec put_image_policy(aws_client:aws_client(), put_image_policy_request(), proplists:proplist()) ->
    {ok, put_image_policy_response(), tuple()} |
    {error, any()} |
    {error, put_image_policy_errors(), tuple()}.
put_image_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/PutImagePolicy"],
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

%% @doc Applies a policy to an image recipe.
%%
%% We recommend that you call the RAM API CreateResourceShare:
%% https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
%% to share resources. If you call the Image Builder API
%% `PutImageRecipePolicy', you must also call the RAM API
%% PromoteResourceShareCreatedFromPolicy:
%% https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
%% in order for the resource to be
%% visible to all principals with whom the resource is shared.
-spec put_image_recipe_policy(aws_client:aws_client(), put_image_recipe_policy_request()) ->
    {ok, put_image_recipe_policy_response(), tuple()} |
    {error, any()} |
    {error, put_image_recipe_policy_errors(), tuple()}.
put_image_recipe_policy(Client, Input) ->
    put_image_recipe_policy(Client, Input, []).

-spec put_image_recipe_policy(aws_client:aws_client(), put_image_recipe_policy_request(), proplists:proplist()) ->
    {ok, put_image_recipe_policy_response(), tuple()} |
    {error, any()} |
    {error, put_image_recipe_policy_errors(), tuple()}.
put_image_recipe_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/PutImageRecipePolicy"],
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

%% @doc Pauses or resumes image creation when the associated workflow runs a
%% `WaitForAction' step.
-spec send_workflow_step_action(aws_client:aws_client(), send_workflow_step_action_request()) ->
    {ok, send_workflow_step_action_response(), tuple()} |
    {error, any()} |
    {error, send_workflow_step_action_errors(), tuple()}.
send_workflow_step_action(Client, Input) ->
    send_workflow_step_action(Client, Input, []).

-spec send_workflow_step_action(aws_client:aws_client(), send_workflow_step_action_request(), proplists:proplist()) ->
    {ok, send_workflow_step_action_response(), tuple()} |
    {error, any()} |
    {error, send_workflow_step_action_errors(), tuple()}.
send_workflow_step_action(Client, Input0, Options0) ->
    Method = put,
    Path = ["/SendWorkflowStepAction"],
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

%% @doc Manually triggers a pipeline to create an image.
-spec start_image_pipeline_execution(aws_client:aws_client(), start_image_pipeline_execution_request()) ->
    {ok, start_image_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, start_image_pipeline_execution_errors(), tuple()}.
start_image_pipeline_execution(Client, Input) ->
    start_image_pipeline_execution(Client, Input, []).

-spec start_image_pipeline_execution(aws_client:aws_client(), start_image_pipeline_execution_request(), proplists:proplist()) ->
    {ok, start_image_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, start_image_pipeline_execution_errors(), tuple()}.
start_image_pipeline_execution(Client, Input0, Options0) ->
    Method = put,
    Path = ["/StartImagePipelineExecution"],
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

%% @doc Begin asynchronous resource state update for lifecycle changes to the
%% specified image resources.
-spec start_resource_state_update(aws_client:aws_client(), start_resource_state_update_request()) ->
    {ok, start_resource_state_update_response(), tuple()} |
    {error, any()} |
    {error, start_resource_state_update_errors(), tuple()}.
start_resource_state_update(Client, Input) ->
    start_resource_state_update(Client, Input, []).

-spec start_resource_state_update(aws_client:aws_client(), start_resource_state_update_request(), proplists:proplist()) ->
    {ok, start_resource_state_update_response(), tuple()} |
    {error, any()} |
    {error, start_resource_state_update_errors(), tuple()}.
start_resource_state_update(Client, Input0, Options0) ->
    Method = put,
    Path = ["/StartResourceStateUpdate"],
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

%% @doc Adds a tag to a resource.
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

%% @doc Removes a tag from a resource.
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

%% @doc Updates a new distribution configuration.
%%
%% Distribution configurations define and
%% configure the outputs of your pipeline.
-spec update_distribution_configuration(aws_client:aws_client(), update_distribution_configuration_request()) ->
    {ok, update_distribution_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_distribution_configuration_errors(), tuple()}.
update_distribution_configuration(Client, Input) ->
    update_distribution_configuration(Client, Input, []).

-spec update_distribution_configuration(aws_client:aws_client(), update_distribution_configuration_request(), proplists:proplist()) ->
    {ok, update_distribution_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_distribution_configuration_errors(), tuple()}.
update_distribution_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/UpdateDistributionConfiguration"],
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

%% @doc Updates an image pipeline.
%%
%% Image pipelines enable you to automate the creation and
%% distribution of images. You must specify exactly one recipe for your
%% image, using either
%% a `containerRecipeArn' or an `imageRecipeArn'.
%%
%% UpdateImagePipeline does not support selective updates for the pipeline.
%% You must
%% specify all of the required properties in the update request, not just the
%% properties that have changed.
-spec update_image_pipeline(aws_client:aws_client(), update_image_pipeline_request()) ->
    {ok, update_image_pipeline_response(), tuple()} |
    {error, any()} |
    {error, update_image_pipeline_errors(), tuple()}.
update_image_pipeline(Client, Input) ->
    update_image_pipeline(Client, Input, []).

-spec update_image_pipeline(aws_client:aws_client(), update_image_pipeline_request(), proplists:proplist()) ->
    {ok, update_image_pipeline_response(), tuple()} |
    {error, any()} |
    {error, update_image_pipeline_errors(), tuple()}.
update_image_pipeline(Client, Input0, Options0) ->
    Method = put,
    Path = ["/UpdateImagePipeline"],
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

%% @doc Updates a new infrastructure configuration.
%%
%% An infrastructure configuration defines
%% the environment in which your image will be built and tested.
-spec update_infrastructure_configuration(aws_client:aws_client(), update_infrastructure_configuration_request()) ->
    {ok, update_infrastructure_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_infrastructure_configuration_errors(), tuple()}.
update_infrastructure_configuration(Client, Input) ->
    update_infrastructure_configuration(Client, Input, []).

-spec update_infrastructure_configuration(aws_client:aws_client(), update_infrastructure_configuration_request(), proplists:proplist()) ->
    {ok, update_infrastructure_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_infrastructure_configuration_errors(), tuple()}.
update_infrastructure_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/UpdateInfrastructureConfiguration"],
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

%% @doc Update the specified lifecycle policy.
-spec update_lifecycle_policy(aws_client:aws_client(), update_lifecycle_policy_request()) ->
    {ok, update_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, update_lifecycle_policy_errors(), tuple()}.
update_lifecycle_policy(Client, Input) ->
    update_lifecycle_policy(Client, Input, []).

-spec update_lifecycle_policy(aws_client:aws_client(), update_lifecycle_policy_request(), proplists:proplist()) ->
    {ok, update_lifecycle_policy_response(), tuple()} |
    {error, any()} |
    {error, update_lifecycle_policy_errors(), tuple()}.
update_lifecycle_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/UpdateLifecyclePolicy"],
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
    Client1 = Client#{service => <<"imagebuilder">>},
    Host = build_host(<<"imagebuilder">>, Client1),
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
