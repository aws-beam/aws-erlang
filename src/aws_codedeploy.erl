%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc CodeDeploy is a deployment service that automates application
%% deployments
%% to Amazon EC2 instances, on-premises instances running in your own
%% facility,
%% serverless Lambda functions, or applications in an Amazon ECS
%% service.
%%
%% You can deploy a nearly unlimited variety of application content, such as
%% an updated
%% Lambda function, updated applications in an Amazon ECS service,
%% code, web and configuration files, executables, packages, scripts,
%% multimedia files, and
%% so on. CodeDeploy can deploy application content stored in Amazon S3
%% buckets, GitHub repositories, or Bitbucket repositories. You do not need
%% to make changes
%% to your existing code before you can use CodeDeploy.
%%
%% CodeDeploy makes it easier for you to rapidly release new features, helps
%% you avoid downtime during application deployment, and handles the
%% complexity of updating
%% your applications, without many of the risks associated with error-prone
%% manual
%% deployments.
%%
%% CodeDeploy Components
%%
%% Use the information in this guide to help you work with the following
%% CodeDeploy components:
%%
%% Application: A name that uniquely identifies
%% the application you want to deploy. CodeDeploy uses this name, which
%% functions as a container, to ensure the correct combination of revision,
%% deployment configuration, and deployment group are referenced during a
%% deployment.
%%
%% Deployment group: A set of individual
%% instances, CodeDeploy
%% Lambda deployment configuration settings, or an Amazon ECS
%% service and network details. A Lambda deployment group specifies how
%% to route traffic to a new version of a Lambda function. An Amazon ECS
%% deployment group specifies the service created in Amazon ECS to deploy, a
%% load balancer, and a listener to reroute production
%% traffic to an updated containerized application. An Amazon EC2/On-premises
%% deployment group contains individually tagged instances, Amazon EC2
%% instances in Amazon EC2 Auto Scaling groups, or both. All
%% deployment groups can specify optional trigger, alarm, and rollback
%% settings.
%%
%% Deployment configuration: A set of deployment
%% rules and deployment success and failure conditions used by CodeDeploy
%% during a deployment.
%%
%% Deployment: The process and the components used
%% when updating a Lambda function, a containerized application in an
%% Amazon ECS service, or of installing content on one or more
%% instances.
%%
%% Application revisions: For an Lambda deployment, this is an AppSpec file
%% that specifies the
%% Lambda function to be updated and one or more functions to
%% validate deployment lifecycle events. For an Amazon ECS deployment, this
%% is an AppSpec file that specifies the Amazon ECS task definition,
%% container, and port where production traffic is rerouted. For an
%% EC2/On-premises
%% deployment, this is an archive file that contains source content—source
%% code,
%% webpages, executable files, and deployment scripts—along with an AppSpec
%% file.
%% Revisions are stored in Amazon S3 buckets or GitHub repositories. For
%% Amazon S3, a revision is uniquely identified by its Amazon S3 object key
%% and its ETag, version, or both. For GitHub, a revision is uniquely
%% identified by its commit ID.
%%
%% This guide also contains information to help you get details about the
%% instances in
%% your deployments, to make on-premises instances available for CodeDeploy
%% deployments, to get details about a Lambda function deployment, and to get
%% details about Amazon ECS service deployments.
%%
%% CodeDeploy Information Resources
%%
%% CodeDeploy User Guide:
%% https://docs.aws.amazon.com/codedeploy/latest/userguide
%%
%% CodeDeploy API Reference Guide:
%% https://docs.aws.amazon.com/codedeploy/latest/APIReference/
%%
%% CLI Reference for CodeDeploy:
%% https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html
%%
%% CodeDeploy Developer Forum:
%% https://forums.aws.amazon.com/forum.jspa?forumID=179
-module(aws_codedeploy).

-export([add_tags_to_on_premises_instances/2,
         add_tags_to_on_premises_instances/3,
         batch_get_application_revisions/2,
         batch_get_application_revisions/3,
         batch_get_applications/2,
         batch_get_applications/3,
         batch_get_deployment_groups/2,
         batch_get_deployment_groups/3,
         batch_get_deployment_instances/2,
         batch_get_deployment_instances/3,
         batch_get_deployment_targets/2,
         batch_get_deployment_targets/3,
         batch_get_deployments/2,
         batch_get_deployments/3,
         batch_get_on_premises_instances/2,
         batch_get_on_premises_instances/3,
         continue_deployment/2,
         continue_deployment/3,
         create_application/2,
         create_application/3,
         create_deployment/2,
         create_deployment/3,
         create_deployment_config/2,
         create_deployment_config/3,
         create_deployment_group/2,
         create_deployment_group/3,
         delete_application/2,
         delete_application/3,
         delete_deployment_config/2,
         delete_deployment_config/3,
         delete_deployment_group/2,
         delete_deployment_group/3,
         delete_git_hub_account_token/2,
         delete_git_hub_account_token/3,
         delete_resources_by_external_id/2,
         delete_resources_by_external_id/3,
         deregister_on_premises_instance/2,
         deregister_on_premises_instance/3,
         get_application/2,
         get_application/3,
         get_application_revision/2,
         get_application_revision/3,
         get_deployment/2,
         get_deployment/3,
         get_deployment_config/2,
         get_deployment_config/3,
         get_deployment_group/2,
         get_deployment_group/3,
         get_deployment_instance/2,
         get_deployment_instance/3,
         get_deployment_target/2,
         get_deployment_target/3,
         get_on_premises_instance/2,
         get_on_premises_instance/3,
         list_application_revisions/2,
         list_application_revisions/3,
         list_applications/2,
         list_applications/3,
         list_deployment_configs/2,
         list_deployment_configs/3,
         list_deployment_groups/2,
         list_deployment_groups/3,
         list_deployment_instances/2,
         list_deployment_instances/3,
         list_deployment_targets/2,
         list_deployment_targets/3,
         list_deployments/2,
         list_deployments/3,
         list_git_hub_account_token_names/2,
         list_git_hub_account_token_names/3,
         list_on_premises_instances/2,
         list_on_premises_instances/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_lifecycle_event_hook_execution_status/2,
         put_lifecycle_event_hook_execution_status/3,
         register_application_revision/2,
         register_application_revision/3,
         register_on_premises_instance/2,
         register_on_premises_instance/3,
         remove_tags_from_on_premises_instances/2,
         remove_tags_from_on_premises_instances/3,
         skip_wait_time_for_instance_termination/2,
         skip_wait_time_for_instance_termination/3,
         stop_deployment/2,
         stop_deployment/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_application/2,
         update_application/3,
         update_deployment_group/2,
         update_deployment_group/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% batch_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type batch_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% traffic_route() :: #{
%%   <<"listenerArns">> => list(string())
%% }
-type traffic_route() :: #{binary() => any()}.

%% Example:
%% get_deployment_config_input() :: #{
%%   <<"deploymentConfigName">> := string()
%% }
-type get_deployment_config_input() :: #{binary() => any()}.

%% Example:
%% invalid_load_balancer_info_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_load_balancer_info_exception() :: #{binary() => any()}.

%% Example:
%% minimum_healthy_hosts_per_zone() :: #{
%%   <<"type">> => list(any()),
%%   <<"value">> => integer()
%% }
-type minimum_healthy_hosts_per_zone() :: #{binary() => any()}.

%% Example:
%% auto_rollback_configuration() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"events">> => list(list(any())())
%% }
-type auto_rollback_configuration() :: #{binary() => any()}.

%% Example:
%% deployment_target_id_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_target_id_required_exception() :: #{binary() => any()}.

%% Example:
%% deployment_config_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_config_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% lifecycle_event_already_completed_exception() :: #{
%%   <<"message">> => string()
%% }
-type lifecycle_event_already_completed_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_deployments_input() :: #{
%%   <<"deploymentIds">> := list(string())
%% }
-type batch_get_deployments_input() :: #{binary() => any()}.

%% Example:
%% application_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type application_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% delete_deployment_group_output() :: #{
%%   <<"hooksNotCleanedUp">> => list(auto_scaling_group())
%% }
-type delete_deployment_group_output() :: #{binary() => any()}.

%% Example:
%% instance_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type instance_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% unsupported_action_for_deployment_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_action_for_deployment_type_exception() :: #{binary() => any()}.

%% Example:
%% skip_wait_time_for_instance_termination_input() :: #{
%%   <<"deploymentId">> => string()
%% }
-type skip_wait_time_for_instance_termination_input() :: #{binary() => any()}.

%% Example:
%% deployment_is_not_in_ready_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_is_not_in_ready_state_exception() :: #{binary() => any()}.

%% Example:
%% revision_location() :: #{
%%   <<"appSpecContent">> => app_spec_content(),
%%   <<"gitHubLocation">> => git_hub_location(),
%%   <<"revisionType">> => list(any()),
%%   <<"s3Location">> => s3_location(),
%%   <<"string">> => raw_string()
%% }
-type revision_location() :: #{binary() => any()}.

%% Example:
%% list_deployment_instances_output() :: #{
%%   <<"instancesList">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_deployment_instances_output() :: #{binary() => any()}.

%% Example:
%% batch_get_application_revisions_input() :: #{
%%   <<"applicationName">> := string(),
%%   <<"revisions">> := list(revision_location())
%% }
-type batch_get_application_revisions_input() :: #{binary() => any()}.

%% Example:
%% invalid_trigger_config_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_trigger_config_exception() :: #{binary() => any()}.

%% Example:
%% list_deployment_instances_input() :: #{
%%   <<"deploymentId">> := string(),
%%   <<"instanceStatusFilter">> => list(list(any())()),
%%   <<"instanceTypeFilter">> => list(list(any())()),
%%   <<"nextToken">> => string()
%% }
-type list_deployment_instances_input() :: #{binary() => any()}.

%% Example:
%% get_deployment_target_input() :: #{
%%   <<"deploymentId">> := string(),
%%   <<"targetId">> := string()
%% }
-type get_deployment_target_input() :: #{binary() => any()}.

%% Example:
%% get_deployment_instance_input() :: #{
%%   <<"deploymentId">> := string(),
%%   <<"instanceId">> := string()
%% }
-type get_deployment_instance_input() :: #{binary() => any()}.

%% Example:
%% get_deployment_output() :: #{
%%   <<"deploymentInfo">> => deployment_info()
%% }
-type get_deployment_output() :: #{binary() => any()}.

%% Example:
%% application_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type application_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_on_premises_instances_input() :: #{
%%   <<"instanceNames">> := list(string())
%% }
-type batch_get_on_premises_instances_input() :: #{binary() => any()}.

%% Example:
%% ec2_tag_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type ec2_tag_filter() :: #{binary() => any()}.

%% Example:
%% create_deployment_input() :: #{
%%   <<"applicationName">> := string(),
%%   <<"autoRollbackConfiguration">> => auto_rollback_configuration(),
%%   <<"deploymentConfigName">> => string(),
%%   <<"deploymentGroupName">> => string(),
%%   <<"description">> => string(),
%%   <<"fileExistsBehavior">> => list(any()),
%%   <<"ignoreApplicationStopFailures">> => boolean(),
%%   <<"overrideAlarmConfiguration">> => alarm_configuration(),
%%   <<"revision">> => revision_location(),
%%   <<"targetInstances">> => target_instances(),
%%   <<"updateOutdatedInstancesOnly">> => boolean()
%% }
-type create_deployment_input() :: #{binary() => any()}.

%% Example:
%% alarm() :: #{
%%   <<"name">> => string()
%% }
-type alarm() :: #{binary() => any()}.

%% Example:
%% revision_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type revision_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_sort_order_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_sort_order_exception() :: #{binary() => any()}.

%% Example:
%% e_c_s_task_set() :: #{
%%   <<"desiredCount">> => float(),
%%   <<"identifer">> => string(),
%%   <<"pendingCount">> => float(),
%%   <<"runningCount">> => float(),
%%   <<"status">> => string(),
%%   <<"targetGroup">> => target_group_info(),
%%   <<"taskSetLabel">> => list(any()),
%%   <<"trafficWeight">> => float()
%% }
-type e_c_s_task_set() :: #{binary() => any()}.

%% Example:
%% invalid_instance_status_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_instance_status_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_deployment_groups_output() :: #{
%%   <<"deploymentGroupsInfo">> => list(deployment_group_info()),
%%   <<"errorMessage">> => string()
%% }
-type batch_get_deployment_groups_output() :: #{binary() => any()}.

%% Example:
%% e_c_s_target() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lifecycleEvents">> => list(lifecycle_event()),
%%   <<"status">> => list(any()),
%%   <<"targetArn">> => string(),
%%   <<"targetId">> => string(),
%%   <<"taskSetsInfo">> => list(e_c_s_task_set())
%% }
-type e_c_s_target() :: #{binary() => any()}.

%% Example:
%% batch_get_deployment_targets_output() :: #{
%%   <<"deploymentTargets">> => list(deployment_target())
%% }
-type batch_get_deployment_targets_output() :: #{binary() => any()}.

%% Example:
%% batch_get_deployment_instances_input() :: #{
%%   <<"deploymentId">> := string(),
%%   <<"instanceIds">> := list(string())
%% }
-type batch_get_deployment_instances_input() :: #{binary() => any()}.

%% Example:
%% tag_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_required_exception() :: #{binary() => any()}.

%% Example:
%% update_deployment_group_output() :: #{
%%   <<"hooksNotCleanedUp">> => list(auto_scaling_group())
%% }
-type update_deployment_group_output() :: #{binary() => any()}.

%% Example:
%% list_application_revisions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"revisions">> => list(revision_location())
%% }
-type list_application_revisions_output() :: #{binary() => any()}.

%% Example:
%% git_hub_account_token_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type git_hub_account_token_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% get_deployment_input() :: #{
%%   <<"deploymentId">> := string()
%% }
-type get_deployment_input() :: #{binary() => any()}.

%% Example:
%% invalid_deployment_status_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_deployment_status_exception() :: #{binary() => any()}.

%% Example:
%% deployment_target() :: #{
%%   <<"cloudFormationTarget">> => cloud_formation_target(),
%%   <<"deploymentTargetType">> => list(any()),
%%   <<"ecsTarget">> => e_c_s_target(),
%%   <<"instanceTarget">> => instance_target(),
%%   <<"lambdaTarget">> => lambda_target()
%% }
-type deployment_target() :: #{binary() => any()}.

%% Example:
%% deployment_style() :: #{
%%   <<"deploymentOption">> => list(any()),
%%   <<"deploymentType">> => list(any())
%% }
-type deployment_style() :: #{binary() => any()}.

%% Example:
%% instance_name_already_registered_exception() :: #{
%%   <<"message">> => string()
%% }
-type instance_name_already_registered_exception() :: #{binary() => any()}.

%% Example:
%% invalid_deployment_style_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_deployment_style_exception() :: #{binary() => any()}.

%% Example:
%% invalid_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_operation_exception() :: #{binary() => any()}.

%% Example:
%% create_application_output() :: #{
%%   <<"applicationId">> => string()
%% }
-type create_application_output() :: #{binary() => any()}.

%% Example:
%% deployment_config_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_config_name_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_minimum_healthy_host_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_minimum_healthy_host_value_exception() :: #{binary() => any()}.

%% Example:
%% invalid_deployment_target_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_deployment_target_id_exception() :: #{binary() => any()}.

%% Example:
%% delete_resources_by_external_id_output() :: #{

%% }
-type delete_resources_by_external_id_output() :: #{binary() => any()}.

%% Example:
%% deployment_config_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_config_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% invalid_git_hub_account_token_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_git_hub_account_token_name_exception() :: #{binary() => any()}.

%% Example:
%% invalid_tags_to_add_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tags_to_add_exception() :: #{binary() => any()}.

%% Example:
%% invalid_registration_status_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_registration_status_exception() :: #{binary() => any()}.

%% Example:
%% invalid_update_outdated_instances_only_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_update_outdated_instances_only_value_exception() :: #{binary() => any()}.

%% Example:
%% list_deployment_targets_input() :: #{
%%   <<"deploymentId">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"targetFilters">> => map()
%% }
-type list_deployment_targets_input() :: #{binary() => any()}.

%% Example:
%% instance_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type instance_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% app_spec_content() :: #{
%%   <<"content">> => string(),
%%   <<"sha256">> => string()
%% }
-type app_spec_content() :: #{binary() => any()}.

%% Example:
%% batch_get_deployment_targets_input() :: #{
%%   <<"deploymentId">> := string(),
%%   <<"targetIds">> := list(string())
%% }
-type batch_get_deployment_targets_input() :: #{binary() => any()}.

%% Example:
%% invalid_bucket_name_filter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_bucket_name_filter_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% get_deployment_group_input() :: #{
%%   <<"applicationName">> := string(),
%%   <<"deploymentGroupName">> := string()
%% }
-type get_deployment_group_input() :: #{binary() => any()}.

%% Example:
%% invalid_iam_session_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_iam_session_arn_exception() :: #{binary() => any()}.

%% Example:
%% create_deployment_group_output() :: #{
%%   <<"deploymentGroupId">> => string()
%% }
-type create_deployment_group_output() :: #{binary() => any()}.

%% Example:
%% zonal_config() :: #{
%%   <<"firstZoneMonitorDurationInSeconds">> => float(),
%%   <<"minimumHealthyHostsPerZone">> => minimum_healthy_hosts_per_zone(),
%%   <<"monitorDurationInSeconds">> => float()
%% }
-type zonal_config() :: #{binary() => any()}.

%% Example:
%% list_deployment_configs_output() :: #{
%%   <<"deploymentConfigsList">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_deployment_configs_output() :: #{binary() => any()}.

%% Example:
%% deployment_info() :: #{
%%   <<"additionalDeploymentStatusInfo">> => string(),
%%   <<"applicationName">> => string(),
%%   <<"autoRollbackConfiguration">> => auto_rollback_configuration(),
%%   <<"blueGreenDeploymentConfiguration">> => blue_green_deployment_configuration(),
%%   <<"completeTime">> => non_neg_integer(),
%%   <<"computePlatform">> => list(any()),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"creator">> => list(any()),
%%   <<"deploymentConfigName">> => string(),
%%   <<"deploymentGroupName">> => string(),
%%   <<"deploymentId">> => string(),
%%   <<"deploymentOverview">> => deployment_overview(),
%%   <<"deploymentStatusMessages">> => list(string()),
%%   <<"deploymentStyle">> => deployment_style(),
%%   <<"description">> => string(),
%%   <<"errorInformation">> => error_information(),
%%   <<"externalId">> => string(),
%%   <<"fileExistsBehavior">> => list(any()),
%%   <<"ignoreApplicationStopFailures">> => boolean(),
%%   <<"instanceTerminationWaitTimeStarted">> => boolean(),
%%   <<"loadBalancerInfo">> => load_balancer_info(),
%%   <<"overrideAlarmConfiguration">> => alarm_configuration(),
%%   <<"previousRevision">> => revision_location(),
%%   <<"relatedDeployments">> => related_deployments(),
%%   <<"revision">> => revision_location(),
%%   <<"rollbackInfo">> => rollback_info(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"targetInstances">> => target_instances(),
%%   <<"updateOutdatedInstancesOnly">> => boolean()
%% }
-type deployment_info() :: #{binary() => any()}.

%% Example:
%% invalid_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_arn_exception() :: #{binary() => any()}.

%% Example:
%% deployment_id_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_id_required_exception() :: #{binary() => any()}.

%% Example:
%% time_based_linear() :: #{
%%   <<"linearInterval">> => integer(),
%%   <<"linearPercentage">> => integer()
%% }
-type time_based_linear() :: #{binary() => any()}.

%% Example:
%% target_group_pair_info() :: #{
%%   <<"prodTrafficRoute">> => traffic_route(),
%%   <<"targetGroups">> => list(target_group_info()),
%%   <<"testTrafficRoute">> => traffic_route()
%% }
-type target_group_pair_info() :: #{binary() => any()}.

%% Example:
%% list_on_premises_instances_output() :: #{
%%   <<"instanceNames">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_on_premises_instances_output() :: #{binary() => any()}.

%% Example:
%% iam_user_arn_already_registered_exception() :: #{
%%   <<"message">> => string()
%% }
-type iam_user_arn_already_registered_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_deployments_output() :: #{
%%   <<"deploymentsInfo">> => list(deployment_info())
%% }
-type batch_get_deployments_output() :: #{binary() => any()}.

%% Example:
%% application_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type application_name_required_exception() :: #{binary() => any()}.

%% Example:
%% register_application_revision_input() :: #{
%%   <<"applicationName">> := string(),
%%   <<"description">> => string(),
%%   <<"revision">> := revision_location()
%% }
-type register_application_revision_input() :: #{binary() => any()}.

%% Example:
%% list_git_hub_account_token_names_input() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_git_hub_account_token_names_input() :: #{binary() => any()}.

%% Example:
%% invalid_file_exists_behavior_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_file_exists_behavior_exception() :: #{binary() => any()}.

%% Example:
%% invalid_revision_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_revision_exception() :: #{binary() => any()}.

%% Example:
%% get_deployment_instance_output() :: #{
%%   <<"instanceSummary">> => instance_summary()
%% }
-type get_deployment_instance_output() :: #{binary() => any()}.

%% Example:
%% description_too_long_exception() :: #{
%%   <<"message">> => string()
%% }
-type description_too_long_exception() :: #{binary() => any()}.

%% Example:
%% get_on_premises_instance_output() :: #{
%%   <<"instanceInfo">> => instance_info()
%% }
-type get_on_premises_instance_output() :: #{binary() => any()}.

%% Example:
%% list_applications_output() :: #{
%%   <<"applications">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_applications_output() :: #{binary() => any()}.

%% Example:
%% git_hub_location() :: #{
%%   <<"commitId">> => string(),
%%   <<"repository">> => string()
%% }
-type git_hub_location() :: #{binary() => any()}.

%% Example:
%% invalid_e_c_s_service_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_e_c_s_service_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_applications_input() :: #{
%%   <<"applicationNames">> := list(string())
%% }
-type batch_get_applications_input() :: #{binary() => any()}.

%% Example:
%% invalid_alarm_config_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_alarm_config_exception() :: #{binary() => any()}.

%% Example:
%% list_deployment_groups_output() :: #{
%%   <<"applicationName">> => string(),
%%   <<"deploymentGroups">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_deployment_groups_output() :: #{binary() => any()}.

%% Example:
%% application_info() :: #{
%%   <<"applicationId">> => string(),
%%   <<"applicationName">> => string(),
%%   <<"computePlatform">> => list(any()),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"gitHubAccountName">> => string(),
%%   <<"linkedToGitHub">> => boolean()
%% }
-type application_info() :: #{binary() => any()}.

%% Example:
%% arn_not_supported_exception() :: #{
%%   <<"message">> => string()
%% }
-type arn_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% instance_id_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type instance_id_required_exception() :: #{binary() => any()}.

%% Example:
%% list_applications_input() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_applications_input() :: #{binary() => any()}.

%% Example:
%% deployment_not_started_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_not_started_exception() :: #{binary() => any()}.

%% Example:
%% invalid_auto_scaling_group_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_auto_scaling_group_exception() :: #{binary() => any()}.

%% Example:
%% e_c_s_service() :: #{
%%   <<"clusterName">> => string(),
%%   <<"serviceName">> => string()
%% }
-type e_c_s_service() :: #{binary() => any()}.

%% Example:
%% invalid_time_range_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_time_range_exception() :: #{binary() => any()}.

%% Example:
%% deployment_group_info() :: #{
%%   <<"alarmConfiguration">> => alarm_configuration(),
%%   <<"applicationName">> => string(),
%%   <<"autoRollbackConfiguration">> => auto_rollback_configuration(),
%%   <<"autoScalingGroups">> => list(auto_scaling_group()),
%%   <<"blueGreenDeploymentConfiguration">> => blue_green_deployment_configuration(),
%%   <<"computePlatform">> => list(any()),
%%   <<"deploymentConfigName">> => string(),
%%   <<"deploymentGroupId">> => string(),
%%   <<"deploymentGroupName">> => string(),
%%   <<"deploymentStyle">> => deployment_style(),
%%   <<"ec2TagFilters">> => list(ec2_tag_filter()),
%%   <<"ec2TagSet">> => ec2_tag_set(),
%%   <<"ecsServices">> => list(e_c_s_service()),
%%   <<"lastAttemptedDeployment">> => last_deployment_info(),
%%   <<"lastSuccessfulDeployment">> => last_deployment_info(),
%%   <<"loadBalancerInfo">> => load_balancer_info(),
%%   <<"onPremisesInstanceTagFilters">> => list(tag_filter()),
%%   <<"onPremisesTagSet">> => on_premises_tag_set(),
%%   <<"outdatedInstancesStrategy">> => list(any()),
%%   <<"serviceRoleArn">> => string(),
%%   <<"targetRevision">> => revision_location(),
%%   <<"terminationHookEnabled">> => boolean(),
%%   <<"triggerConfigurations">> => list(trigger_config())
%% }
-type deployment_group_info() :: #{binary() => any()}.

%% Example:
%% invalid_on_premises_tag_combination_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_on_premises_tag_combination_exception() :: #{binary() => any()}.

%% Example:
%% on_premises_tag_set() :: #{
%%   <<"onPremisesTagSetList">> => list(list(tag_filter())())
%% }
-type on_premises_tag_set() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% get_application_revision_input() :: #{
%%   <<"applicationName">> := string(),
%%   <<"revision">> := revision_location()
%% }
-type get_application_revision_input() :: #{binary() => any()}.

%% Example:
%% put_lifecycle_event_hook_execution_status_output() :: #{
%%   <<"lifecycleEventHookExecutionId">> => string()
%% }
-type put_lifecycle_event_hook_execution_status_output() :: #{binary() => any()}.

%% Example:
%% invalid_git_hub_account_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_git_hub_account_token_exception() :: #{binary() => any()}.

%% Example:
%% deployment_target_list_size_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_target_list_size_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% deployment_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% create_application_input() :: #{
%%   <<"applicationName">> := string(),
%%   <<"computePlatform">> => list(any()),
%%   <<"tags">> => list(tag())
%% }
-type create_application_input() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% last_deployment_info() :: #{
%%   <<"createTime">> => non_neg_integer(),
%%   <<"deploymentId">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type last_deployment_info() :: #{binary() => any()}.

%% Example:
%% e_lb_info() :: #{
%%   <<"name">> => string()
%% }
-type e_lb_info() :: #{binary() => any()}.

%% Example:
%% update_deployment_group_input() :: #{
%%   <<"alarmConfiguration">> => alarm_configuration(),
%%   <<"applicationName">> := string(),
%%   <<"autoRollbackConfiguration">> => auto_rollback_configuration(),
%%   <<"autoScalingGroups">> => list(string()),
%%   <<"blueGreenDeploymentConfiguration">> => blue_green_deployment_configuration(),
%%   <<"currentDeploymentGroupName">> := string(),
%%   <<"deploymentConfigName">> => string(),
%%   <<"deploymentStyle">> => deployment_style(),
%%   <<"ec2TagFilters">> => list(ec2_tag_filter()),
%%   <<"ec2TagSet">> => ec2_tag_set(),
%%   <<"ecsServices">> => list(e_c_s_service()),
%%   <<"loadBalancerInfo">> => load_balancer_info(),
%%   <<"newDeploymentGroupName">> => string(),
%%   <<"onPremisesInstanceTagFilters">> => list(tag_filter()),
%%   <<"onPremisesTagSet">> => on_premises_tag_set(),
%%   <<"outdatedInstancesStrategy">> => list(any()),
%%   <<"serviceRoleArn">> => string(),
%%   <<"terminationHookEnabled">> => boolean(),
%%   <<"triggerConfigurations">> => list(trigger_config())
%% }
-type update_deployment_group_input() :: #{binary() => any()}.

%% Example:
%% tag_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_external_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_external_id_exception() :: #{binary() => any()}.

%% Example:
%% delete_git_hub_account_token_input() :: #{
%%   <<"tokenName">> => string()
%% }
-type delete_git_hub_account_token_input() :: #{binary() => any()}.

%% Example:
%% deployment_target_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_target_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% create_deployment_config_output() :: #{
%%   <<"deploymentConfigId">> => string()
%% }
-type create_deployment_config_output() :: #{binary() => any()}.

%% Example:
%% lambda_function_info() :: #{
%%   <<"currentVersion">> => string(),
%%   <<"functionAlias">> => string(),
%%   <<"functionName">> => string(),
%%   <<"targetVersion">> => string(),
%%   <<"targetVersionWeight">> => float()
%% }
-type lambda_function_info() :: #{binary() => any()}.

%% Example:
%% list_deployment_targets_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"targetIds">> => list(string())
%% }
-type list_deployment_targets_output() :: #{binary() => any()}.

%% Example:
%% green_fleet_provisioning_option() :: #{
%%   <<"action">> => list(any())
%% }
-type green_fleet_provisioning_option() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% delete_deployment_group_input() :: #{
%%   <<"applicationName">> := string(),
%%   <<"deploymentGroupName">> := string()
%% }
-type delete_deployment_group_input() :: #{binary() => any()}.

%% Example:
%% list_on_premises_instances_input() :: #{
%%   <<"nextToken">> => string(),
%%   <<"registrationStatus">> => list(any()),
%%   <<"tagFilters">> => list(tag_filter())
%% }
-type list_on_premises_instances_input() :: #{binary() => any()}.

%% Example:
%% iam_session_arn_already_registered_exception() :: #{
%%   <<"message">> => string()
%% }
-type iam_session_arn_already_registered_exception() :: #{binary() => any()}.

%% Example:
%% raw_string() :: #{
%%   <<"content">> => string(),
%%   <<"sha256">> => string()
%% }
-type raw_string() :: #{binary() => any()}.

%% Example:
%% instance_target() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"instanceLabel">> => list(any()),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lifecycleEvents">> => list(lifecycle_event()),
%%   <<"status">> => list(any()),
%%   <<"targetArn">> => string(),
%%   <<"targetId">> => string()
%% }
-type instance_target() :: #{binary() => any()}.

%% Example:
%% invalid_deployment_group_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_deployment_group_name_exception() :: #{binary() => any()}.

%% Example:
%% deployment_config_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_config_in_use_exception() :: #{binary() => any()}.

%% Example:
%% invalid_key_prefix_filter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_key_prefix_filter_exception() :: #{binary() => any()}.

%% Example:
%% target_instances() :: #{
%%   <<"autoScalingGroups">> => list(string()),
%%   <<"ec2TagSet">> => ec2_tag_set(),
%%   <<"tagFilters">> => list(ec2_tag_filter())
%% }
-type target_instances() :: #{binary() => any()}.

%% Example:
%% s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"bundleType">> => list(any()),
%%   <<"eTag">> => string(),
%%   <<"key">> => string(),
%%   <<"version">> => string()
%% }
-type s3_location() :: #{binary() => any()}.

%% Example:
%% blue_green_deployment_configuration() :: #{
%%   <<"deploymentReadyOption">> => deployment_ready_option(),
%%   <<"greenFleetProvisioningOption">> => green_fleet_provisioning_option(),
%%   <<"terminateBlueInstancesOnDeploymentSuccess">> => blue_instance_termination_option()
%% }
-type blue_green_deployment_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% minimum_healthy_hosts() :: #{
%%   <<"type">> => list(any()),
%%   <<"value">> => integer()
%% }
-type minimum_healthy_hosts() :: #{binary() => any()}.

%% Example:
%% batch_get_deployment_groups_input() :: #{
%%   <<"applicationName">> := string(),
%%   <<"deploymentGroupNames">> := list(string())
%% }
-type batch_get_deployment_groups_input() :: #{binary() => any()}.

%% Example:
%% list_application_revisions_input() :: #{
%%   <<"applicationName">> := string(),
%%   <<"deployed">> => list(any()),
%%   <<"nextToken">> => string(),
%%   <<"s3Bucket">> => string(),
%%   <<"s3KeyPrefix">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_application_revisions_input() :: #{binary() => any()}.

%% Example:
%% invalid_deployment_wait_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_deployment_wait_type_exception() :: #{binary() => any()}.

%% Example:
%% deployment_group_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_group_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% invalid_role_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_role_exception() :: #{binary() => any()}.

%% Example:
%% invalid_zonal_deployment_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_zonal_deployment_configuration_exception() :: #{binary() => any()}.

%% Example:
%% get_on_premises_instance_input() :: #{
%%   <<"instanceName">> := string()
%% }
-type get_on_premises_instance_input() :: #{binary() => any()}.

%% Example:
%% continue_deployment_input() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"deploymentWaitType">> => list(any())
%% }
-type continue_deployment_input() :: #{binary() => any()}.

%% Example:
%% get_application_output() :: #{
%%   <<"application">> => application_info()
%% }
-type get_application_output() :: #{binary() => any()}.

%% Example:
%% application_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type application_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{

%% }
-type tag_resource_output() :: #{binary() => any()}.

%% Example:
%% deployment_overview() :: #{
%%   <<"Failed">> => float(),
%%   <<"InProgress">> => float(),
%%   <<"Pending">> => float(),
%%   <<"Ready">> => float(),
%%   <<"Skipped">> => float(),
%%   <<"Succeeded">> => float()
%% }
-type deployment_overview() :: #{binary() => any()}.

%% Example:
%% batch_get_on_premises_instances_output() :: #{
%%   <<"instanceInfos">> => list(instance_info())
%% }
-type batch_get_on_premises_instances_output() :: #{binary() => any()}.

%% Example:
%% invalid_instance_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_instance_name_exception() :: #{binary() => any()}.

%% Example:
%% iam_arn_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type iam_arn_required_exception() :: #{binary() => any()}.

%% Example:
%% create_deployment_config_input() :: #{
%%   <<"computePlatform">> => list(any()),
%%   <<"deploymentConfigName">> := string(),
%%   <<"minimumHealthyHosts">> => minimum_healthy_hosts(),
%%   <<"trafficRoutingConfig">> => traffic_routing_config(),
%%   <<"zonalConfig">> => zonal_config()
%% }
-type create_deployment_config_input() :: #{binary() => any()}.

%% Example:
%% cloud_formation_target() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lifecycleEvents">> => list(lifecycle_event()),
%%   <<"resourceType">> => string(),
%%   <<"status">> => list(any()),
%%   <<"targetId">> => string(),
%%   <<"targetVersionWeight">> => float()
%% }
-type cloud_formation_target() :: #{binary() => any()}.

%% Example:
%% trigger_targets_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type trigger_targets_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% git_hub_account_token_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type git_hub_account_token_name_required_exception() :: #{binary() => any()}.

%% Example:
%% resource_arn_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_arn_required_exception() :: #{binary() => any()}.

%% Example:
%% get_deployment_config_output() :: #{
%%   <<"deploymentConfigInfo">> => deployment_config_info()
%% }
-type get_deployment_config_output() :: #{binary() => any()}.

%% Example:
%% invalid_traffic_routing_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_traffic_routing_configuration_exception() :: #{binary() => any()}.

%% Example:
%% create_deployment_group_input() :: #{
%%   <<"alarmConfiguration">> => alarm_configuration(),
%%   <<"applicationName">> := string(),
%%   <<"autoRollbackConfiguration">> => auto_rollback_configuration(),
%%   <<"autoScalingGroups">> => list(string()),
%%   <<"blueGreenDeploymentConfiguration">> => blue_green_deployment_configuration(),
%%   <<"deploymentConfigName">> => string(),
%%   <<"deploymentGroupName">> := string(),
%%   <<"deploymentStyle">> => deployment_style(),
%%   <<"ec2TagFilters">> => list(ec2_tag_filter()),
%%   <<"ec2TagSet">> => ec2_tag_set(),
%%   <<"ecsServices">> => list(e_c_s_service()),
%%   <<"loadBalancerInfo">> => load_balancer_info(),
%%   <<"onPremisesInstanceTagFilters">> => list(tag_filter()),
%%   <<"onPremisesTagSet">> => on_premises_tag_set(),
%%   <<"outdatedInstancesStrategy">> => list(any()),
%%   <<"serviceRoleArn">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"terminationHookEnabled">> => boolean(),
%%   <<"triggerConfigurations">> => list(trigger_config())
%% }
-type create_deployment_group_input() :: #{binary() => any()}.

%% Example:
%% blue_instance_termination_option() :: #{
%%   <<"action">> => list(any()),
%%   <<"terminationWaitTimeInMinutes">> => integer()
%% }
-type blue_instance_termination_option() :: #{binary() => any()}.

%% Example:
%% related_deployments() :: #{
%%   <<"autoUpdateOutdatedInstancesDeploymentIds">> => list(string()),
%%   <<"autoUpdateOutdatedInstancesRootDeploymentId">> => string()
%% }
-type related_deployments() :: #{binary() => any()}.

%% Example:
%% deployment_group_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_group_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% time_range() :: #{
%%   <<"end">> => non_neg_integer(),
%%   <<"start">> => non_neg_integer()
%% }
-type time_range() :: #{binary() => any()}.

%% Example:
%% iam_user_arn_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type iam_user_arn_required_exception() :: #{binary() => any()}.

%% Example:
%% diagnostics() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"logTail">> => string(),
%%   <<"message">> => string(),
%%   <<"scriptName">> => string()
%% }
-type diagnostics() :: #{binary() => any()}.

%% Example:
%% register_on_premises_instance_input() :: #{
%%   <<"iamSessionArn">> => string(),
%%   <<"iamUserArn">> => string(),
%%   <<"instanceName">> := string()
%% }
-type register_on_premises_instance_input() :: #{binary() => any()}.

%% Example:
%% ec2_tag_set() :: #{
%%   <<"ec2TagSetList">> => list(list(ec2_tag_filter())())
%% }
-type ec2_tag_set() :: #{binary() => any()}.

%% Example:
%% revision_info() :: #{
%%   <<"genericRevisionInfo">> => generic_revision_info(),
%%   <<"revisionLocation">> => revision_location()
%% }
-type revision_info() :: #{binary() => any()}.

%% Example:
%% delete_application_input() :: #{
%%   <<"applicationName">> := string()
%% }
-type delete_application_input() :: #{binary() => any()}.

%% Example:
%% lifecycle_hook_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type lifecycle_hook_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% invalid_deployment_config_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_deployment_config_name_exception() :: #{binary() => any()}.

%% Example:
%% batch_get_application_revisions_output() :: #{
%%   <<"applicationName">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"revisions">> => list(revision_info())
%% }
-type batch_get_application_revisions_output() :: #{binary() => any()}.

%% Example:
%% invalid_sort_by_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_sort_by_exception() :: #{binary() => any()}.

%% Example:
%% list_deployment_groups_input() :: #{
%%   <<"applicationName">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_deployment_groups_input() :: #{binary() => any()}.

%% Example:
%% batch_get_applications_output() :: #{
%%   <<"applicationsInfo">> => list(application_info())
%% }
-type batch_get_applications_output() :: #{binary() => any()}.

%% Example:
%% stop_deployment_input() :: #{
%%   <<"autoRollbackEnabled">> => boolean(),
%%   <<"deploymentId">> := string()
%% }
-type stop_deployment_input() :: #{binary() => any()}.

%% Example:
%% traffic_routing_config() :: #{
%%   <<"timeBasedCanary">> => time_based_canary(),
%%   <<"timeBasedLinear">> => time_based_linear(),
%%   <<"type">> => list(any())
%% }
-type traffic_routing_config() :: #{binary() => any()}.

%% Example:
%% role_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type role_required_exception() :: #{binary() => any()}.

%% Example:
%% generic_revision_info() :: #{
%%   <<"deploymentGroups">> => list(string()),
%%   <<"description">> => string(),
%%   <<"firstUsedTime">> => non_neg_integer(),
%%   <<"lastUsedTime">> => non_neg_integer(),
%%   <<"registerTime">> => non_neg_integer()
%% }
-type generic_revision_info() :: #{binary() => any()}.

%% Example:
%% batch_get_deployment_instances_output() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"instancesSummary">> => list(instance_summary())
%% }
-type batch_get_deployment_instances_output() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group() :: #{
%%   <<"hook">> => string(),
%%   <<"name">> => string(),
%%   <<"terminationHook">> => string()
%% }
-type auto_scaling_group() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% add_tags_to_on_premises_instances_input() :: #{
%%   <<"instanceNames">> := list(string()),
%%   <<"tags">> := list(tag())
%% }
-type add_tags_to_on_premises_instances_input() :: #{binary() => any()}.

%% Example:
%% resource_validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_validation_exception() :: #{binary() => any()}.

%% Example:
%% invalid_deployed_state_filter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_deployed_state_filter_exception() :: #{binary() => any()}.

%% Example:
%% get_deployment_group_output() :: #{
%%   <<"deploymentGroupInfo">> => deployment_group_info()
%% }
-type get_deployment_group_output() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{

%% }
-type untag_resource_output() :: #{binary() => any()}.

%% Example:
%% revision_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type revision_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% load_balancer_info() :: #{
%%   <<"elbInfoList">> => list(e_lb_info()),
%%   <<"targetGroupInfoList">> => list(target_group_info()),
%%   <<"targetGroupPairInfoList">> => list(target_group_pair_info())
%% }
-type load_balancer_info() :: #{binary() => any()}.

%% Example:
%% e_c_s_service_mapping_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type e_c_s_service_mapping_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_iam_user_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_iam_user_arn_exception() :: #{binary() => any()}.

%% Example:
%% deregister_on_premises_instance_input() :: #{
%%   <<"instanceName">> := string()
%% }
-type deregister_on_premises_instance_input() :: #{binary() => any()}.

%% Example:
%% instance_summary() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"instanceId">> => string(),
%%   <<"instanceType">> => list(any()),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lifecycleEvents">> => list(lifecycle_event()),
%%   <<"status">> => list(any())
%% }
-type instance_summary() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% invalid_application_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_application_name_exception() :: #{binary() => any()}.

%% Example:
%% bucket_name_filter_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type bucket_name_filter_required_exception() :: #{binary() => any()}.

%% Example:
%% deployment_already_completed_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_already_completed_exception() :: #{binary() => any()}.

%% Example:
%% invalid_instance_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_instance_type_exception() :: #{binary() => any()}.

%% Example:
%% rollback_info() :: #{
%%   <<"rollbackDeploymentId">> => string(),
%%   <<"rollbackMessage">> => string(),
%%   <<"rollbackTriggeringDeploymentId">> => string()
%% }
-type rollback_info() :: #{binary() => any()}.

%% Example:
%% update_application_input() :: #{
%%   <<"applicationName">> => string(),
%%   <<"newApplicationName">> => string()
%% }
-type update_application_input() :: #{binary() => any()}.

%% Example:
%% deployment_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% lifecycle_event() :: #{
%%   <<"diagnostics">> => diagnostics(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"lifecycleEventName">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type lifecycle_event() :: #{binary() => any()}.

%% Example:
%% deployment_config_info() :: #{
%%   <<"computePlatform">> => list(any()),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"deploymentConfigId">> => string(),
%%   <<"deploymentConfigName">> => string(),
%%   <<"minimumHealthyHosts">> => minimum_healthy_hosts(),
%%   <<"trafficRoutingConfig">> => traffic_routing_config(),
%%   <<"zonalConfig">> => zonal_config()
%% }
-type deployment_config_info() :: #{binary() => any()}.

%% Example:
%% invalid_blue_green_deployment_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_blue_green_deployment_configuration_exception() :: #{binary() => any()}.

%% Example:
%% delete_deployment_config_input() :: #{
%%   <<"deploymentConfigName">> := string()
%% }
-type delete_deployment_config_input() :: #{binary() => any()}.

%% Example:
%% invalid_target_filter_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_target_filter_name_exception() :: #{binary() => any()}.

%% Example:
%% list_deployments_output() :: #{
%%   <<"deployments">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_deployments_output() :: #{binary() => any()}.

%% Example:
%% error_information() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string()
%% }
-type error_information() :: #{binary() => any()}.

%% Example:
%% tag_set_list_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_set_list_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_deployment_output() :: #{
%%   <<"deploymentId">> => string()
%% }
-type create_deployment_output() :: #{binary() => any()}.

%% Example:
%% deployment_ready_option() :: #{
%%   <<"actionOnTimeout">> => list(any()),
%%   <<"waitTimeInMinutes">> => integer()
%% }
-type deployment_ready_option() :: #{binary() => any()}.

%% Example:
%% list_deployments_input() :: #{
%%   <<"applicationName">> => string(),
%%   <<"createTimeRange">> => time_range(),
%%   <<"deploymentGroupName">> => string(),
%%   <<"externalId">> => string(),
%%   <<"includeOnlyStatuses">> => list(list(any())()),
%%   <<"nextToken">> => string()
%% }
-type list_deployments_input() :: #{binary() => any()}.

%% Example:
%% list_deployment_configs_input() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_deployment_configs_input() :: #{binary() => any()}.

%% Example:
%% get_application_revision_output() :: #{
%%   <<"applicationName">> => string(),
%%   <<"revision">> => revision_location(),
%%   <<"revisionInfo">> => generic_revision_info()
%% }
-type get_application_revision_output() :: #{binary() => any()}.

%% Example:
%% instance_info() :: #{
%%   <<"deregisterTime">> => non_neg_integer(),
%%   <<"iamSessionArn">> => string(),
%%   <<"iamUserArn">> => string(),
%%   <<"instanceArn">> => string(),
%%   <<"instanceName">> => string(),
%%   <<"registerTime">> => non_neg_integer(),
%%   <<"tags">> => list(tag())
%% }
-type instance_info() :: #{binary() => any()}.

%% Example:
%% deployment_group_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_group_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% lambda_target() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"lambdaFunctionInfo">> => lambda_function_info(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lifecycleEvents">> => list(lifecycle_event()),
%%   <<"status">> => list(any()),
%%   <<"targetArn">> => string(),
%%   <<"targetId">> => string()
%% }
-type lambda_target() :: #{binary() => any()}.

%% Example:
%% tag_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type tag_filter() :: #{binary() => any()}.

%% Example:
%% get_application_input() :: #{
%%   <<"applicationName">> := string()
%% }
-type get_application_input() :: #{binary() => any()}.

%% Example:
%% invalid_deployment_instance_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_deployment_instance_type_exception() :: #{binary() => any()}.

%% Example:
%% operation_not_supported_exception() :: #{
%%   <<"message">> => string()
%% }
-type operation_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% get_deployment_target_output() :: #{
%%   <<"deploymentTarget">> => deployment_target()
%% }
-type get_deployment_target_output() :: #{binary() => any()}.

%% Example:
%% multiple_iam_arns_provided_exception() :: #{
%%   <<"message">> => string()
%% }
-type multiple_iam_arns_provided_exception() :: #{binary() => any()}.

%% Example:
%% time_based_canary() :: #{
%%   <<"canaryInterval">> => integer(),
%%   <<"canaryPercentage">> => integer()
%% }
-type time_based_canary() :: #{binary() => any()}.

%% Example:
%% stop_deployment_output() :: #{
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string()
%% }
-type stop_deployment_output() :: #{binary() => any()}.

%% Example:
%% delete_git_hub_account_token_output() :: #{
%%   <<"tokenName">> => string()
%% }
-type delete_git_hub_account_token_output() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_on_premises_instances_input() :: #{
%%   <<"instanceNames">> := list(string()),
%%   <<"tags">> := list(tag())
%% }
-type remove_tags_from_on_premises_instances_input() :: #{binary() => any()}.

%% Example:
%% invalid_target_instances_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_target_instances_exception() :: #{binary() => any()}.

%% Example:
%% invalid_compute_platform_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_compute_platform_exception() :: #{binary() => any()}.

%% Example:
%% deployment_config_does_not_exist_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_config_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% invalid_ignore_application_stop_failures_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_ignore_application_stop_failures_value_exception() :: #{binary() => any()}.

%% Example:
%% invalid_tag_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tag_exception() :: #{binary() => any()}.

%% Example:
%% invalid_tag_filter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tag_filter_exception() :: #{binary() => any()}.

%% Example:
%% invalid_target_group_pair_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_target_group_pair_exception() :: #{binary() => any()}.

%% Example:
%% alarms_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type alarms_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_git_hub_account_token_names_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tokenNameList">> => list(string())
%% }
-type list_git_hub_account_token_names_output() :: #{binary() => any()}.

%% Example:
%% put_lifecycle_event_hook_execution_status_input() :: #{
%%   <<"deploymentId">> => string(),
%%   <<"lifecycleEventHookExecutionId">> => string(),
%%   <<"status">> => list(any())
%% }
-type put_lifecycle_event_hook_execution_status_input() :: #{binary() => any()}.

%% Example:
%% instance_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type instance_name_required_exception() :: #{binary() => any()}.

%% Example:
%% trigger_config() :: #{
%%   <<"triggerEvents">> => list(list(any())()),
%%   <<"triggerName">> => string(),
%%   <<"triggerTargetArn">> => string()
%% }
-type trigger_config() :: #{binary() => any()}.

%% Example:
%% invalid_deployment_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_deployment_id_exception() :: #{binary() => any()}.

%% Example:
%% instance_not_registered_exception() :: #{
%%   <<"message">> => string()
%% }
-type instance_not_registered_exception() :: #{binary() => any()}.

%% Example:
%% alarm_configuration() :: #{
%%   <<"alarms">> => list(alarm()),
%%   <<"enabled">> => boolean(),
%%   <<"ignorePollAlarmFailure">> => boolean()
%% }
-type alarm_configuration() :: #{binary() => any()}.

%% Example:
%% invalid_ec2_tag_combination_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_ec2_tag_combination_exception() :: #{binary() => any()}.

%% Example:
%% invalid_ec2_tag_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_ec2_tag_exception() :: #{binary() => any()}.

%% Example:
%% invalid_auto_rollback_config_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_auto_rollback_config_exception() :: #{binary() => any()}.

%% Example:
%% invalid_lifecycle_event_hook_execution_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_lifecycle_event_hook_execution_id_exception() :: #{binary() => any()}.

%% Example:
%% deployment_group_name_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type deployment_group_name_required_exception() :: #{binary() => any()}.

%% Example:
%% invalid_lifecycle_event_hook_execution_status_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_lifecycle_event_hook_execution_status_exception() :: #{binary() => any()}.

%% Example:
%% delete_resources_by_external_id_input() :: #{
%%   <<"externalId">> => string()
%% }
-type delete_resources_by_external_id_input() :: #{binary() => any()}.

%% Example:
%% target_group_info() :: #{
%%   <<"name">> => string()
%% }
-type target_group_info() :: #{binary() => any()}.

-type add_tags_to_on_premises_instances_errors() ::
    instance_not_registered_exception() | 
    instance_name_required_exception() | 
    invalid_tag_exception() | 
    invalid_instance_name_exception() | 
    tag_limit_exceeded_exception() | 
    tag_required_exception() | 
    instance_limit_exceeded_exception().

-type batch_get_application_revisions_errors() ::
    invalid_application_name_exception() | 
    invalid_revision_exception() | 
    application_name_required_exception() | 
    revision_required_exception() | 
    application_does_not_exist_exception() | 
    batch_limit_exceeded_exception().

-type batch_get_applications_errors() ::
    invalid_application_name_exception() | 
    application_name_required_exception() | 
    application_does_not_exist_exception() | 
    batch_limit_exceeded_exception().

-type batch_get_deployment_groups_errors() ::
    deployment_group_name_required_exception() | 
    deployment_config_does_not_exist_exception() | 
    invalid_application_name_exception() | 
    invalid_deployment_group_name_exception() | 
    application_name_required_exception() | 
    application_does_not_exist_exception() | 
    batch_limit_exceeded_exception().

-type batch_get_deployment_instances_errors() ::
    invalid_deployment_id_exception() | 
    invalid_compute_platform_exception() | 
    invalid_instance_name_exception() | 
    deployment_does_not_exist_exception() | 
    instance_id_required_exception() | 
    deployment_id_required_exception() | 
    batch_limit_exceeded_exception().

-type batch_get_deployment_targets_errors() ::
    invalid_deployment_id_exception() | 
    deployment_target_does_not_exist_exception() | 
    deployment_does_not_exist_exception() | 
    deployment_target_list_size_exceeded_exception() | 
    deployment_not_started_exception() | 
    deployment_id_required_exception() | 
    instance_does_not_exist_exception() | 
    invalid_deployment_target_id_exception() | 
    deployment_target_id_required_exception().

-type batch_get_deployments_errors() ::
    invalid_deployment_id_exception() | 
    deployment_id_required_exception() | 
    batch_limit_exceeded_exception().

-type batch_get_on_premises_instances_errors() ::
    instance_name_required_exception() | 
    invalid_instance_name_exception() | 
    batch_limit_exceeded_exception().

-type continue_deployment_errors() ::
    invalid_deployment_id_exception() | 
    deployment_already_completed_exception() | 
    invalid_deployment_wait_type_exception() | 
    deployment_does_not_exist_exception() | 
    deployment_id_required_exception() | 
    invalid_deployment_status_exception() | 
    deployment_is_not_in_ready_state_exception() | 
    unsupported_action_for_deployment_type_exception().

-type create_application_errors() ::
    invalid_compute_platform_exception() | 
    invalid_application_name_exception() | 
    application_already_exists_exception() | 
    application_name_required_exception() | 
    invalid_tags_to_add_exception() | 
    application_limit_exceeded_exception().

-type create_deployment_errors() ::
    deployment_group_name_required_exception() | 
    invalid_auto_rollback_config_exception() | 
    alarms_limit_exceeded_exception() | 
    invalid_ignore_application_stop_failures_value_exception() | 
    deployment_config_does_not_exist_exception() | 
    invalid_target_instances_exception() | 
    deployment_limit_exceeded_exception() | 
    invalid_application_name_exception() | 
    throttling_exception() | 
    revision_does_not_exist_exception() | 
    invalid_deployment_config_name_exception() | 
    deployment_group_does_not_exist_exception() | 
    invalid_traffic_routing_configuration_exception() | 
    invalid_role_exception() | 
    invalid_deployment_group_name_exception() | 
    invalid_git_hub_account_token_exception() | 
    invalid_auto_scaling_group_exception() | 
    invalid_alarm_config_exception() | 
    description_too_long_exception() | 
    invalid_revision_exception() | 
    invalid_file_exists_behavior_exception() | 
    application_name_required_exception() | 
    invalid_update_outdated_instances_only_value_exception() | 
    revision_required_exception() | 
    application_does_not_exist_exception() | 
    invalid_load_balancer_info_exception().

-type create_deployment_config_errors() ::
    invalid_compute_platform_exception() | 
    invalid_deployment_config_name_exception() | 
    invalid_traffic_routing_configuration_exception() | 
    invalid_zonal_deployment_configuration_exception() | 
    deployment_config_already_exists_exception() | 
    invalid_minimum_healthy_host_value_exception() | 
    deployment_config_name_required_exception() | 
    deployment_config_limit_exceeded_exception().

-type create_deployment_group_errors() ::
    deployment_group_name_required_exception() | 
    invalid_auto_rollback_config_exception() | 
    invalid_ec2_tag_exception() | 
    invalid_ec2_tag_combination_exception() | 
    alarms_limit_exceeded_exception() | 
    invalid_target_group_pair_exception() | 
    invalid_tag_exception() | 
    deployment_config_does_not_exist_exception() | 
    deployment_group_limit_exceeded_exception() | 
    tag_set_list_limit_exceeded_exception() | 
    invalid_blue_green_deployment_configuration_exception() | 
    invalid_application_name_exception() | 
    throttling_exception() | 
    e_c_s_service_mapping_limit_exceeded_exception() | 
    role_required_exception() | 
    invalid_deployment_config_name_exception() | 
    lifecycle_hook_limit_exceeded_exception() | 
    invalid_traffic_routing_configuration_exception() | 
    trigger_targets_limit_exceeded_exception() | 
    invalid_role_exception() | 
    deployment_group_already_exists_exception() | 
    invalid_deployment_group_name_exception() | 
    invalid_input_exception() | 
    invalid_on_premises_tag_combination_exception() | 
    invalid_auto_scaling_group_exception() | 
    invalid_alarm_config_exception() | 
    invalid_e_c_s_service_exception() | 
    application_name_required_exception() | 
    invalid_tags_to_add_exception() | 
    invalid_deployment_style_exception() | 
    invalid_trigger_config_exception() | 
    application_does_not_exist_exception() | 
    invalid_load_balancer_info_exception().

-type delete_application_errors() ::
    invalid_application_name_exception() | 
    invalid_role_exception() | 
    application_name_required_exception().

-type delete_deployment_config_errors() ::
    invalid_deployment_config_name_exception() | 
    deployment_config_in_use_exception() | 
    deployment_config_name_required_exception() | 
    invalid_operation_exception().

-type delete_deployment_group_errors() ::
    deployment_group_name_required_exception() | 
    invalid_application_name_exception() | 
    invalid_role_exception() | 
    invalid_deployment_group_name_exception() | 
    application_name_required_exception().

-type delete_git_hub_account_token_errors() ::
    operation_not_supported_exception() | 
    resource_validation_exception() | 
    git_hub_account_token_name_required_exception() | 
    invalid_git_hub_account_token_name_exception() | 
    git_hub_account_token_does_not_exist_exception().

-type deregister_on_premises_instance_errors() ::
    instance_name_required_exception() | 
    invalid_instance_name_exception().

-type get_application_errors() ::
    invalid_application_name_exception() | 
    application_name_required_exception() | 
    application_does_not_exist_exception().

-type get_application_revision_errors() ::
    invalid_application_name_exception() | 
    revision_does_not_exist_exception() | 
    invalid_revision_exception() | 
    application_name_required_exception() | 
    revision_required_exception() | 
    application_does_not_exist_exception().

-type get_deployment_errors() ::
    invalid_deployment_id_exception() | 
    deployment_does_not_exist_exception() | 
    deployment_id_required_exception().

-type get_deployment_config_errors() ::
    deployment_config_does_not_exist_exception() | 
    invalid_compute_platform_exception() | 
    invalid_deployment_config_name_exception() | 
    deployment_config_name_required_exception().

-type get_deployment_group_errors() ::
    deployment_group_name_required_exception() | 
    deployment_config_does_not_exist_exception() | 
    invalid_application_name_exception() | 
    deployment_group_does_not_exist_exception() | 
    invalid_deployment_group_name_exception() | 
    application_name_required_exception() | 
    application_does_not_exist_exception().

-type get_deployment_instance_errors() ::
    invalid_deployment_id_exception() | 
    invalid_compute_platform_exception() | 
    invalid_instance_name_exception() | 
    deployment_does_not_exist_exception() | 
    instance_id_required_exception() | 
    deployment_id_required_exception() | 
    instance_does_not_exist_exception().

-type get_deployment_target_errors() ::
    invalid_deployment_id_exception() | 
    invalid_instance_name_exception() | 
    deployment_target_does_not_exist_exception() | 
    deployment_does_not_exist_exception() | 
    deployment_not_started_exception() | 
    deployment_id_required_exception() | 
    invalid_deployment_target_id_exception() | 
    deployment_target_id_required_exception().

-type get_on_premises_instance_errors() ::
    instance_not_registered_exception() | 
    instance_name_required_exception() | 
    invalid_instance_name_exception().

-type list_application_revisions_errors() ::
    bucket_name_filter_required_exception() | 
    invalid_application_name_exception() | 
    invalid_deployed_state_filter_exception() | 
    invalid_sort_by_exception() | 
    invalid_key_prefix_filter_exception() | 
    invalid_next_token_exception() | 
    application_name_required_exception() | 
    invalid_bucket_name_filter_exception() | 
    invalid_sort_order_exception() | 
    application_does_not_exist_exception().

-type list_applications_errors() ::
    invalid_next_token_exception().

-type list_deployment_configs_errors() ::
    invalid_next_token_exception().

-type list_deployment_groups_errors() ::
    invalid_application_name_exception() | 
    invalid_next_token_exception() | 
    application_name_required_exception() | 
    application_does_not_exist_exception().

-type list_deployment_instances_errors() ::
    invalid_deployment_id_exception() | 
    invalid_compute_platform_exception() | 
    invalid_deployment_instance_type_exception() | 
    invalid_target_filter_name_exception() | 
    invalid_instance_type_exception() | 
    invalid_next_token_exception() | 
    deployment_does_not_exist_exception() | 
    deployment_not_started_exception() | 
    deployment_id_required_exception() | 
    invalid_instance_status_exception().

-type list_deployment_targets_errors() ::
    invalid_deployment_id_exception() | 
    invalid_deployment_instance_type_exception() | 
    invalid_target_filter_name_exception() | 
    invalid_instance_type_exception() | 
    invalid_next_token_exception() | 
    deployment_does_not_exist_exception() | 
    deployment_not_started_exception() | 
    deployment_id_required_exception() | 
    invalid_instance_status_exception().

-type list_deployments_errors() ::
    deployment_group_name_required_exception() | 
    invalid_application_name_exception() | 
    deployment_group_does_not_exist_exception() | 
    invalid_deployment_group_name_exception() | 
    invalid_input_exception() | 
    invalid_external_id_exception() | 
    invalid_next_token_exception() | 
    invalid_time_range_exception() | 
    application_name_required_exception() | 
    invalid_deployment_status_exception() | 
    application_does_not_exist_exception().

-type list_git_hub_account_token_names_errors() ::
    operation_not_supported_exception() | 
    resource_validation_exception() | 
    invalid_next_token_exception().

-type list_on_premises_instances_errors() ::
    invalid_tag_filter_exception() | 
    invalid_next_token_exception() | 
    invalid_registration_status_exception().

-type list_tags_for_resource_errors() ::
    resource_arn_required_exception() | 
    arn_not_supported_exception() | 
    invalid_arn_exception().

-type put_lifecycle_event_hook_execution_status_errors() ::
    invalid_lifecycle_event_hook_execution_status_exception() | 
    invalid_lifecycle_event_hook_execution_id_exception() | 
    invalid_deployment_id_exception() | 
    deployment_does_not_exist_exception() | 
    deployment_id_required_exception() | 
    unsupported_action_for_deployment_type_exception() | 
    lifecycle_event_already_completed_exception().

-type register_application_revision_errors() ::
    invalid_application_name_exception() | 
    description_too_long_exception() | 
    invalid_revision_exception() | 
    application_name_required_exception() | 
    revision_required_exception() | 
    application_does_not_exist_exception().

-type register_on_premises_instance_errors() ::
    instance_name_required_exception() | 
    multiple_iam_arns_provided_exception() | 
    invalid_iam_user_arn_exception() | 
    iam_user_arn_required_exception() | 
    iam_arn_required_exception() | 
    invalid_instance_name_exception() | 
    iam_session_arn_already_registered_exception() | 
    iam_user_arn_already_registered_exception() | 
    invalid_iam_session_arn_exception() | 
    instance_name_already_registered_exception().

-type remove_tags_from_on_premises_instances_errors() ::
    instance_not_registered_exception() | 
    instance_name_required_exception() | 
    invalid_tag_exception() | 
    invalid_instance_name_exception() | 
    tag_limit_exceeded_exception() | 
    tag_required_exception() | 
    instance_limit_exceeded_exception().

-type skip_wait_time_for_instance_termination_errors() ::
    invalid_deployment_id_exception() | 
    deployment_already_completed_exception() | 
    deployment_does_not_exist_exception() | 
    deployment_not_started_exception() | 
    deployment_id_required_exception() | 
    unsupported_action_for_deployment_type_exception().

-type stop_deployment_errors() ::
    invalid_deployment_id_exception() | 
    deployment_already_completed_exception() | 
    deployment_group_does_not_exist_exception() | 
    deployment_does_not_exist_exception() | 
    deployment_id_required_exception() | 
    unsupported_action_for_deployment_type_exception().

-type tag_resource_errors() ::
    deployment_config_does_not_exist_exception() | 
    deployment_group_does_not_exist_exception() | 
    resource_arn_required_exception() | 
    arn_not_supported_exception() | 
    invalid_arn_exception() | 
    invalid_tags_to_add_exception() | 
    tag_required_exception() | 
    application_does_not_exist_exception().

-type untag_resource_errors() ::
    deployment_config_does_not_exist_exception() | 
    deployment_group_does_not_exist_exception() | 
    resource_arn_required_exception() | 
    arn_not_supported_exception() | 
    invalid_arn_exception() | 
    invalid_tags_to_add_exception() | 
    tag_required_exception() | 
    application_does_not_exist_exception().

-type update_application_errors() ::
    invalid_application_name_exception() | 
    application_already_exists_exception() | 
    application_name_required_exception() | 
    application_does_not_exist_exception().

-type update_deployment_group_errors() ::
    deployment_group_name_required_exception() | 
    invalid_auto_rollback_config_exception() | 
    invalid_ec2_tag_exception() | 
    invalid_ec2_tag_combination_exception() | 
    alarms_limit_exceeded_exception() | 
    invalid_target_group_pair_exception() | 
    invalid_tag_exception() | 
    deployment_config_does_not_exist_exception() | 
    tag_set_list_limit_exceeded_exception() | 
    invalid_blue_green_deployment_configuration_exception() | 
    invalid_application_name_exception() | 
    throttling_exception() | 
    e_c_s_service_mapping_limit_exceeded_exception() | 
    invalid_deployment_config_name_exception() | 
    lifecycle_hook_limit_exceeded_exception() | 
    deployment_group_does_not_exist_exception() | 
    invalid_traffic_routing_configuration_exception() | 
    trigger_targets_limit_exceeded_exception() | 
    invalid_role_exception() | 
    deployment_group_already_exists_exception() | 
    invalid_deployment_group_name_exception() | 
    invalid_input_exception() | 
    invalid_on_premises_tag_combination_exception() | 
    invalid_auto_scaling_group_exception() | 
    invalid_alarm_config_exception() | 
    invalid_e_c_s_service_exception() | 
    application_name_required_exception() | 
    invalid_deployment_style_exception() | 
    invalid_trigger_config_exception() | 
    application_does_not_exist_exception() | 
    invalid_load_balancer_info_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds tags to on-premises instances.
-spec add_tags_to_on_premises_instances(aws_client:aws_client(), add_tags_to_on_premises_instances_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_to_on_premises_instances_errors(), tuple()}.
add_tags_to_on_premises_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_on_premises_instances(Client, Input, []).

-spec add_tags_to_on_premises_instances(aws_client:aws_client(), add_tags_to_on_premises_instances_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_tags_to_on_premises_instances_errors(), tuple()}.
add_tags_to_on_premises_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToOnPremisesInstances">>, Input, Options).

%% @doc Gets information about one or more application revisions.
%%
%% The maximum number of
%% application revisions that can be returned is 25.
-spec batch_get_application_revisions(aws_client:aws_client(), batch_get_application_revisions_input()) ->
    {ok, batch_get_application_revisions_output(), tuple()} |
    {error, any()} |
    {error, batch_get_application_revisions_errors(), tuple()}.
batch_get_application_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_application_revisions(Client, Input, []).

-spec batch_get_application_revisions(aws_client:aws_client(), batch_get_application_revisions_input(), proplists:proplist()) ->
    {ok, batch_get_application_revisions_output(), tuple()} |
    {error, any()} |
    {error, batch_get_application_revisions_errors(), tuple()}.
batch_get_application_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetApplicationRevisions">>, Input, Options).

%% @doc Gets information about one or more applications.
%%
%% The maximum number of applications
%% that can be returned is 100.
-spec batch_get_applications(aws_client:aws_client(), batch_get_applications_input()) ->
    {ok, batch_get_applications_output(), tuple()} |
    {error, any()} |
    {error, batch_get_applications_errors(), tuple()}.
batch_get_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_applications(Client, Input, []).

-spec batch_get_applications(aws_client:aws_client(), batch_get_applications_input(), proplists:proplist()) ->
    {ok, batch_get_applications_output(), tuple()} |
    {error, any()} |
    {error, batch_get_applications_errors(), tuple()}.
batch_get_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetApplications">>, Input, Options).

%% @doc Gets information about one or more deployment groups.
-spec batch_get_deployment_groups(aws_client:aws_client(), batch_get_deployment_groups_input()) ->
    {ok, batch_get_deployment_groups_output(), tuple()} |
    {error, any()} |
    {error, batch_get_deployment_groups_errors(), tuple()}.
batch_get_deployment_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_deployment_groups(Client, Input, []).

-spec batch_get_deployment_groups(aws_client:aws_client(), batch_get_deployment_groups_input(), proplists:proplist()) ->
    {ok, batch_get_deployment_groups_output(), tuple()} |
    {error, any()} |
    {error, batch_get_deployment_groups_errors(), tuple()}.
batch_get_deployment_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDeploymentGroups">>, Input, Options).

%% @doc
%% This method works, but is deprecated.
%%
%% Use `BatchGetDeploymentTargets'
%% instead.
%%
%% Returns an array of one or more instances associated with a deployment.
%% This method
%% works with EC2/On-premises and Lambda compute platforms. The newer
%% `BatchGetDeploymentTargets' works with all compute platforms. The
%% maximum
%% number of instances that can be returned is 25.
-spec batch_get_deployment_instances(aws_client:aws_client(), batch_get_deployment_instances_input()) ->
    {ok, batch_get_deployment_instances_output(), tuple()} |
    {error, any()} |
    {error, batch_get_deployment_instances_errors(), tuple()}.
batch_get_deployment_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_deployment_instances(Client, Input, []).

-spec batch_get_deployment_instances(aws_client:aws_client(), batch_get_deployment_instances_input(), proplists:proplist()) ->
    {ok, batch_get_deployment_instances_output(), tuple()} |
    {error, any()} |
    {error, batch_get_deployment_instances_errors(), tuple()}.
batch_get_deployment_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDeploymentInstances">>, Input, Options).

%% @doc Returns an array of one or more targets associated with a deployment.
%%
%% This method
%% works with all compute types and should be used instead of the deprecated
%% `BatchGetDeploymentInstances'. The maximum number of targets that can
%% be
%% returned is 25.
%%
%% The type of targets returned depends on the deployment's compute
%% platform or
%% deployment method:
%%
%% EC2/On-premises: Information about Amazon EC2 instance targets.
%%
%% Lambda: Information about
%% Lambda functions targets.
%%
%% Amazon ECS: Information about Amazon ECS service targets.
%%
%% CloudFormation: Information about
%% targets of blue/green deployments initiated by a CloudFormation stack
%% update.
-spec batch_get_deployment_targets(aws_client:aws_client(), batch_get_deployment_targets_input()) ->
    {ok, batch_get_deployment_targets_output(), tuple()} |
    {error, any()} |
    {error, batch_get_deployment_targets_errors(), tuple()}.
batch_get_deployment_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_deployment_targets(Client, Input, []).

-spec batch_get_deployment_targets(aws_client:aws_client(), batch_get_deployment_targets_input(), proplists:proplist()) ->
    {ok, batch_get_deployment_targets_output(), tuple()} |
    {error, any()} |
    {error, batch_get_deployment_targets_errors(), tuple()}.
batch_get_deployment_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDeploymentTargets">>, Input, Options).

%% @doc Gets information about one or more deployments.
%%
%% The maximum number of deployments that
%% can be returned is 25.
-spec batch_get_deployments(aws_client:aws_client(), batch_get_deployments_input()) ->
    {ok, batch_get_deployments_output(), tuple()} |
    {error, any()} |
    {error, batch_get_deployments_errors(), tuple()}.
batch_get_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_deployments(Client, Input, []).

-spec batch_get_deployments(aws_client:aws_client(), batch_get_deployments_input(), proplists:proplist()) ->
    {ok, batch_get_deployments_output(), tuple()} |
    {error, any()} |
    {error, batch_get_deployments_errors(), tuple()}.
batch_get_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDeployments">>, Input, Options).

%% @doc Gets information about one or more on-premises instances.
%%
%% The maximum number of
%% on-premises instances that can be returned is 25.
-spec batch_get_on_premises_instances(aws_client:aws_client(), batch_get_on_premises_instances_input()) ->
    {ok, batch_get_on_premises_instances_output(), tuple()} |
    {error, any()} |
    {error, batch_get_on_premises_instances_errors(), tuple()}.
batch_get_on_premises_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_on_premises_instances(Client, Input, []).

-spec batch_get_on_premises_instances(aws_client:aws_client(), batch_get_on_premises_instances_input(), proplists:proplist()) ->
    {ok, batch_get_on_premises_instances_output(), tuple()} |
    {error, any()} |
    {error, batch_get_on_premises_instances_errors(), tuple()}.
batch_get_on_premises_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetOnPremisesInstances">>, Input, Options).

%% @doc For a blue/green deployment, starts the process of rerouting traffic
%% from instances in
%% the original environment to instances in the replacement environment
%% without waiting for
%% a specified wait time to elapse.
%%
%% (Traffic rerouting, which is achieved by registering
%% instances in the replacement environment with the load balancer, can start
%% as soon as
%% all instances have a status of Ready.)
-spec continue_deployment(aws_client:aws_client(), continue_deployment_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, continue_deployment_errors(), tuple()}.
continue_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    continue_deployment(Client, Input, []).

-spec continue_deployment(aws_client:aws_client(), continue_deployment_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, continue_deployment_errors(), tuple()}.
continue_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ContinueDeployment">>, Input, Options).

%% @doc Creates an application.
-spec create_application(aws_client:aws_client(), create_application_input()) ->
    {ok, create_application_output(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_input(), proplists:proplist()) ->
    {ok, create_application_output(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Deploys an application revision through the specified deployment
%% group.
-spec create_deployment(aws_client:aws_client(), create_deployment_input()) ->
    {ok, create_deployment_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_deployment(Client, Input, []).

-spec create_deployment(aws_client:aws_client(), create_deployment_input(), proplists:proplist()) ->
    {ok, create_deployment_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeployment">>, Input, Options).

%% @doc Creates a deployment configuration.
-spec create_deployment_config(aws_client:aws_client(), create_deployment_config_input()) ->
    {ok, create_deployment_config_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_config_errors(), tuple()}.
create_deployment_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_deployment_config(Client, Input, []).

-spec create_deployment_config(aws_client:aws_client(), create_deployment_config_input(), proplists:proplist()) ->
    {ok, create_deployment_config_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_config_errors(), tuple()}.
create_deployment_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeploymentConfig">>, Input, Options).

%% @doc Creates a deployment group to which application revisions are
%% deployed.
-spec create_deployment_group(aws_client:aws_client(), create_deployment_group_input()) ->
    {ok, create_deployment_group_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_group_errors(), tuple()}.
create_deployment_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_deployment_group(Client, Input, []).

-spec create_deployment_group(aws_client:aws_client(), create_deployment_group_input(), proplists:proplist()) ->
    {ok, create_deployment_group_output(), tuple()} |
    {error, any()} |
    {error, create_deployment_group_errors(), tuple()}.
create_deployment_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeploymentGroup">>, Input, Options).

%% @doc Deletes an application.
-spec delete_application(aws_client:aws_client(), delete_application_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).

-spec delete_application(aws_client:aws_client(), delete_application_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes a deployment configuration.
%%
%% A deployment configuration cannot be deleted if it is currently in use.
%% Predefined
%% configurations cannot be deleted.
-spec delete_deployment_config(aws_client:aws_client(), delete_deployment_config_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_config_errors(), tuple()}.
delete_deployment_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_deployment_config(Client, Input, []).

-spec delete_deployment_config(aws_client:aws_client(), delete_deployment_config_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_deployment_config_errors(), tuple()}.
delete_deployment_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeploymentConfig">>, Input, Options).

%% @doc Deletes a deployment group.
-spec delete_deployment_group(aws_client:aws_client(), delete_deployment_group_input()) ->
    {ok, delete_deployment_group_output(), tuple()} |
    {error, any()} |
    {error, delete_deployment_group_errors(), tuple()}.
delete_deployment_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_deployment_group(Client, Input, []).

-spec delete_deployment_group(aws_client:aws_client(), delete_deployment_group_input(), proplists:proplist()) ->
    {ok, delete_deployment_group_output(), tuple()} |
    {error, any()} |
    {error, delete_deployment_group_errors(), tuple()}.
delete_deployment_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeploymentGroup">>, Input, Options).

%% @doc Deletes a GitHub account connection.
-spec delete_git_hub_account_token(aws_client:aws_client(), delete_git_hub_account_token_input()) ->
    {ok, delete_git_hub_account_token_output(), tuple()} |
    {error, any()} |
    {error, delete_git_hub_account_token_errors(), tuple()}.
delete_git_hub_account_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_git_hub_account_token(Client, Input, []).

-spec delete_git_hub_account_token(aws_client:aws_client(), delete_git_hub_account_token_input(), proplists:proplist()) ->
    {ok, delete_git_hub_account_token_output(), tuple()} |
    {error, any()} |
    {error, delete_git_hub_account_token_errors(), tuple()}.
delete_git_hub_account_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGitHubAccountToken">>, Input, Options).

%% @doc Deletes resources linked to an external ID.
%%
%% This action only applies if you have
%% configured blue/green deployments through CloudFormation.
%%
%% It is not necessary to call this action directly. CloudFormation calls it
%% on your behalf when it needs to delete stack resources. This action is
%% offered
%% publicly in case you need to delete resources to comply with General Data
%% Protection
%% Regulation (GDPR) requirements.
-spec delete_resources_by_external_id(aws_client:aws_client(), delete_resources_by_external_id_input()) ->
    {ok, delete_resources_by_external_id_output(), tuple()} |
    {error, any()}.
delete_resources_by_external_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resources_by_external_id(Client, Input, []).

-spec delete_resources_by_external_id(aws_client:aws_client(), delete_resources_by_external_id_input(), proplists:proplist()) ->
    {ok, delete_resources_by_external_id_output(), tuple()} |
    {error, any()}.
delete_resources_by_external_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcesByExternalId">>, Input, Options).

%% @doc Deregisters an on-premises instance.
-spec deregister_on_premises_instance(aws_client:aws_client(), deregister_on_premises_instance_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_on_premises_instance_errors(), tuple()}.
deregister_on_premises_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_on_premises_instance(Client, Input, []).

-spec deregister_on_premises_instance(aws_client:aws_client(), deregister_on_premises_instance_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, deregister_on_premises_instance_errors(), tuple()}.
deregister_on_premises_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterOnPremisesInstance">>, Input, Options).

%% @doc Gets information about an application.
-spec get_application(aws_client:aws_client(), get_application_input()) ->
    {ok, get_application_output(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application(Client, Input, []).

-spec get_application(aws_client:aws_client(), get_application_input(), proplists:proplist()) ->
    {ok, get_application_output(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplication">>, Input, Options).

%% @doc Gets information about an application revision.
-spec get_application_revision(aws_client:aws_client(), get_application_revision_input()) ->
    {ok, get_application_revision_output(), tuple()} |
    {error, any()} |
    {error, get_application_revision_errors(), tuple()}.
get_application_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_revision(Client, Input, []).

-spec get_application_revision(aws_client:aws_client(), get_application_revision_input(), proplists:proplist()) ->
    {ok, get_application_revision_output(), tuple()} |
    {error, any()} |
    {error, get_application_revision_errors(), tuple()}.
get_application_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationRevision">>, Input, Options).

%% @doc Gets information about a deployment.
%%
%% The `content' property of the `appSpecContent' object in
%% the returned revision is always null. Use `GetApplicationRevision' and
%% the `sha256' property of the returned `appSpecContent' object
%% to get the content of the deployment’s AppSpec file.
-spec get_deployment(aws_client:aws_client(), get_deployment_input()) ->
    {ok, get_deployment_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployment(Client, Input, []).

-spec get_deployment(aws_client:aws_client(), get_deployment_input(), proplists:proplist()) ->
    {ok, get_deployment_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeployment">>, Input, Options).

%% @doc Gets information about a deployment configuration.
-spec get_deployment_config(aws_client:aws_client(), get_deployment_config_input()) ->
    {ok, get_deployment_config_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_config_errors(), tuple()}.
get_deployment_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployment_config(Client, Input, []).

-spec get_deployment_config(aws_client:aws_client(), get_deployment_config_input(), proplists:proplist()) ->
    {ok, get_deployment_config_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_config_errors(), tuple()}.
get_deployment_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeploymentConfig">>, Input, Options).

%% @doc Gets information about a deployment group.
-spec get_deployment_group(aws_client:aws_client(), get_deployment_group_input()) ->
    {ok, get_deployment_group_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_group_errors(), tuple()}.
get_deployment_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployment_group(Client, Input, []).

-spec get_deployment_group(aws_client:aws_client(), get_deployment_group_input(), proplists:proplist()) ->
    {ok, get_deployment_group_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_group_errors(), tuple()}.
get_deployment_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeploymentGroup">>, Input, Options).

%% @doc Gets information about an instance as part of a deployment.
-spec get_deployment_instance(aws_client:aws_client(), get_deployment_instance_input()) ->
    {ok, get_deployment_instance_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_instance_errors(), tuple()}.
get_deployment_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployment_instance(Client, Input, []).

-spec get_deployment_instance(aws_client:aws_client(), get_deployment_instance_input(), proplists:proplist()) ->
    {ok, get_deployment_instance_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_instance_errors(), tuple()}.
get_deployment_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeploymentInstance">>, Input, Options).

%% @doc Returns information about a deployment target.
-spec get_deployment_target(aws_client:aws_client(), get_deployment_target_input()) ->
    {ok, get_deployment_target_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_target_errors(), tuple()}.
get_deployment_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployment_target(Client, Input, []).

-spec get_deployment_target(aws_client:aws_client(), get_deployment_target_input(), proplists:proplist()) ->
    {ok, get_deployment_target_output(), tuple()} |
    {error, any()} |
    {error, get_deployment_target_errors(), tuple()}.
get_deployment_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeploymentTarget">>, Input, Options).

%% @doc Gets information about an on-premises instance.
-spec get_on_premises_instance(aws_client:aws_client(), get_on_premises_instance_input()) ->
    {ok, get_on_premises_instance_output(), tuple()} |
    {error, any()} |
    {error, get_on_premises_instance_errors(), tuple()}.
get_on_premises_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_on_premises_instance(Client, Input, []).

-spec get_on_premises_instance(aws_client:aws_client(), get_on_premises_instance_input(), proplists:proplist()) ->
    {ok, get_on_premises_instance_output(), tuple()} |
    {error, any()} |
    {error, get_on_premises_instance_errors(), tuple()}.
get_on_premises_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOnPremisesInstance">>, Input, Options).

%% @doc Lists information about revisions for an application.
-spec list_application_revisions(aws_client:aws_client(), list_application_revisions_input()) ->
    {ok, list_application_revisions_output(), tuple()} |
    {error, any()} |
    {error, list_application_revisions_errors(), tuple()}.
list_application_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_revisions(Client, Input, []).

-spec list_application_revisions(aws_client:aws_client(), list_application_revisions_input(), proplists:proplist()) ->
    {ok, list_application_revisions_output(), tuple()} |
    {error, any()} |
    {error, list_application_revisions_errors(), tuple()}.
list_application_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationRevisions">>, Input, Options).

%% @doc Lists the applications registered with the user or Amazon Web
%% Services account.
-spec list_applications(aws_client:aws_client(), list_applications_input()) ->
    {ok, list_applications_output(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_applications(Client, Input, []).

-spec list_applications(aws_client:aws_client(), list_applications_input(), proplists:proplist()) ->
    {ok, list_applications_output(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplications">>, Input, Options).

%% @doc Lists the deployment configurations with the user or Amazon Web
%% Services account.
-spec list_deployment_configs(aws_client:aws_client(), list_deployment_configs_input()) ->
    {ok, list_deployment_configs_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_configs_errors(), tuple()}.
list_deployment_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deployment_configs(Client, Input, []).

-spec list_deployment_configs(aws_client:aws_client(), list_deployment_configs_input(), proplists:proplist()) ->
    {ok, list_deployment_configs_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_configs_errors(), tuple()}.
list_deployment_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeploymentConfigs">>, Input, Options).

%% @doc Lists the deployment groups for an application registered with the
%% Amazon Web Services
%% user or Amazon Web Services account.
-spec list_deployment_groups(aws_client:aws_client(), list_deployment_groups_input()) ->
    {ok, list_deployment_groups_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_groups_errors(), tuple()}.
list_deployment_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deployment_groups(Client, Input, []).

-spec list_deployment_groups(aws_client:aws_client(), list_deployment_groups_input(), proplists:proplist()) ->
    {ok, list_deployment_groups_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_groups_errors(), tuple()}.
list_deployment_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeploymentGroups">>, Input, Options).

%% @doc
%% The newer `BatchGetDeploymentTargets' should be used instead because
%% it works with all compute types.
%%
%% `ListDeploymentInstances' throws an
%% exception if it is used with a compute platform other than EC2/On-premises
%% or
%% Lambda.
%%
%% Lists the instance for a deployment associated with the user or Amazon Web
%% Services account.
-spec list_deployment_instances(aws_client:aws_client(), list_deployment_instances_input()) ->
    {ok, list_deployment_instances_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_instances_errors(), tuple()}.
list_deployment_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deployment_instances(Client, Input, []).

-spec list_deployment_instances(aws_client:aws_client(), list_deployment_instances_input(), proplists:proplist()) ->
    {ok, list_deployment_instances_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_instances_errors(), tuple()}.
list_deployment_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeploymentInstances">>, Input, Options).

%% @doc Returns an array of target IDs that are associated a deployment.
-spec list_deployment_targets(aws_client:aws_client(), list_deployment_targets_input()) ->
    {ok, list_deployment_targets_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_targets_errors(), tuple()}.
list_deployment_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deployment_targets(Client, Input, []).

-spec list_deployment_targets(aws_client:aws_client(), list_deployment_targets_input(), proplists:proplist()) ->
    {ok, list_deployment_targets_output(), tuple()} |
    {error, any()} |
    {error, list_deployment_targets_errors(), tuple()}.
list_deployment_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeploymentTargets">>, Input, Options).

%% @doc Lists the deployments in a deployment group for an application
%% registered with the
%% user or Amazon Web Services account.
-spec list_deployments(aws_client:aws_client(), list_deployments_input()) ->
    {ok, list_deployments_output(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deployments(Client, Input, []).

-spec list_deployments(aws_client:aws_client(), list_deployments_input(), proplists:proplist()) ->
    {ok, list_deployments_output(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeployments">>, Input, Options).

%% @doc Lists the names of stored connections to GitHub accounts.
-spec list_git_hub_account_token_names(aws_client:aws_client(), list_git_hub_account_token_names_input()) ->
    {ok, list_git_hub_account_token_names_output(), tuple()} |
    {error, any()} |
    {error, list_git_hub_account_token_names_errors(), tuple()}.
list_git_hub_account_token_names(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_git_hub_account_token_names(Client, Input, []).

-spec list_git_hub_account_token_names(aws_client:aws_client(), list_git_hub_account_token_names_input(), proplists:proplist()) ->
    {ok, list_git_hub_account_token_names_output(), tuple()} |
    {error, any()} |
    {error, list_git_hub_account_token_names_errors(), tuple()}.
list_git_hub_account_token_names(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGitHubAccountTokenNames">>, Input, Options).

%% @doc Gets a list of names for one or more on-premises instances.
%%
%% Unless otherwise specified, both registered and deregistered on-premises
%% instance
%% names are listed. To list only registered or deregistered on-premises
%% instance names,
%% use the registration status parameter.
-spec list_on_premises_instances(aws_client:aws_client(), list_on_premises_instances_input()) ->
    {ok, list_on_premises_instances_output(), tuple()} |
    {error, any()} |
    {error, list_on_premises_instances_errors(), tuple()}.
list_on_premises_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_on_premises_instances(Client, Input, []).

-spec list_on_premises_instances(aws_client:aws_client(), list_on_premises_instances_input(), proplists:proplist()) ->
    {ok, list_on_premises_instances_output(), tuple()} |
    {error, any()} |
    {error, list_on_premises_instances_errors(), tuple()}.
list_on_premises_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOnPremisesInstances">>, Input, Options).

%% @doc Returns a list of tags for the resource identified by a specified
%% Amazon Resource
%% Name (ARN).
%%
%% Tags are used to organize and categorize your CodeDeploy resources.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Sets the result of a Lambda validation function.
%%
%% The function validates
%% lifecycle hooks during a deployment that uses the Lambda or Amazon ECS
%% compute platform. For Lambda deployments, the available
%% lifecycle hooks are `BeforeAllowTraffic' and `AfterAllowTraffic'.
%% For Amazon ECS deployments, the available lifecycle hooks are
%% `BeforeInstall', `AfterInstall',
%% `AfterAllowTestTraffic', `BeforeAllowTraffic', and
%% `AfterAllowTraffic'. Lambda validation functions return
%% `Succeeded' or `Failed'. For more information, see AppSpec
%% 'hooks' Section for an Lambda Deployment :
%% https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-lambda
%% and
%% AppSpec 'hooks' Section for an Amazon ECS Deployment:
%% https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-ecs.
-spec put_lifecycle_event_hook_execution_status(aws_client:aws_client(), put_lifecycle_event_hook_execution_status_input()) ->
    {ok, put_lifecycle_event_hook_execution_status_output(), tuple()} |
    {error, any()} |
    {error, put_lifecycle_event_hook_execution_status_errors(), tuple()}.
put_lifecycle_event_hook_execution_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_lifecycle_event_hook_execution_status(Client, Input, []).

-spec put_lifecycle_event_hook_execution_status(aws_client:aws_client(), put_lifecycle_event_hook_execution_status_input(), proplists:proplist()) ->
    {ok, put_lifecycle_event_hook_execution_status_output(), tuple()} |
    {error, any()} |
    {error, put_lifecycle_event_hook_execution_status_errors(), tuple()}.
put_lifecycle_event_hook_execution_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLifecycleEventHookExecutionStatus">>, Input, Options).

%% @doc Registers with CodeDeploy a revision for the specified application.
-spec register_application_revision(aws_client:aws_client(), register_application_revision_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_application_revision_errors(), tuple()}.
register_application_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_application_revision(Client, Input, []).

-spec register_application_revision(aws_client:aws_client(), register_application_revision_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_application_revision_errors(), tuple()}.
register_application_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterApplicationRevision">>, Input, Options).

%% @doc Registers an on-premises instance.
%%
%% Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the
%% request. You cannot use both.
-spec register_on_premises_instance(aws_client:aws_client(), register_on_premises_instance_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_on_premises_instance_errors(), tuple()}.
register_on_premises_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_on_premises_instance(Client, Input, []).

-spec register_on_premises_instance(aws_client:aws_client(), register_on_premises_instance_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_on_premises_instance_errors(), tuple()}.
register_on_premises_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterOnPremisesInstance">>, Input, Options).

%% @doc Removes one or more tags from one or more on-premises instances.
-spec remove_tags_from_on_premises_instances(aws_client:aws_client(), remove_tags_from_on_premises_instances_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_from_on_premises_instances_errors(), tuple()}.
remove_tags_from_on_premises_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_on_premises_instances(Client, Input, []).

-spec remove_tags_from_on_premises_instances(aws_client:aws_client(), remove_tags_from_on_premises_instances_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_tags_from_on_premises_instances_errors(), tuple()}.
remove_tags_from_on_premises_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromOnPremisesInstances">>, Input, Options).

%% @doc In a blue/green deployment, overrides any specified wait time and
%% starts terminating
%% instances immediately after the traffic routing is complete.
-spec skip_wait_time_for_instance_termination(aws_client:aws_client(), skip_wait_time_for_instance_termination_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, skip_wait_time_for_instance_termination_errors(), tuple()}.
skip_wait_time_for_instance_termination(Client, Input)
  when is_map(Client), is_map(Input) ->
    skip_wait_time_for_instance_termination(Client, Input, []).

-spec skip_wait_time_for_instance_termination(aws_client:aws_client(), skip_wait_time_for_instance_termination_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, skip_wait_time_for_instance_termination_errors(), tuple()}.
skip_wait_time_for_instance_termination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SkipWaitTimeForInstanceTermination">>, Input, Options).

%% @doc Attempts to stop an ongoing deployment.
-spec stop_deployment(aws_client:aws_client(), stop_deployment_input()) ->
    {ok, stop_deployment_output(), tuple()} |
    {error, any()} |
    {error, stop_deployment_errors(), tuple()}.
stop_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_deployment(Client, Input, []).

-spec stop_deployment(aws_client:aws_client(), stop_deployment_input(), proplists:proplist()) ->
    {ok, stop_deployment_output(), tuple()} |
    {error, any()} |
    {error, stop_deployment_errors(), tuple()}.
stop_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDeployment">>, Input, Options).

%% @doc Associates the list of tags in the input `Tags' parameter with
%% the
%% resource identified by the `ResourceArn' input parameter.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Disassociates a resource from a list of tags.
%%
%% The resource is identified by the
%% `ResourceArn' input parameter. The tags are identified by the list of
%% keys in the `TagKeys' input parameter.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Changes the name of an application.
-spec update_application(aws_client:aws_client(), update_application_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).

-spec update_application(aws_client:aws_client(), update_application_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Changes information about a deployment group.
-spec update_deployment_group(aws_client:aws_client(), update_deployment_group_input()) ->
    {ok, update_deployment_group_output(), tuple()} |
    {error, any()} |
    {error, update_deployment_group_errors(), tuple()}.
update_deployment_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_deployment_group(Client, Input, []).

-spec update_deployment_group(aws_client:aws_client(), update_deployment_group_input(), proplists:proplist()) ->
    {ok, update_deployment_group_output(), tuple()} |
    {error, any()} |
    {error, update_deployment_group_errors(), tuple()}.
update_deployment_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDeploymentGroup">>, Input, Options).

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
    Client1 = Client#{service => <<"codedeploy">>},
    Host = build_host(<<"codedeploy">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CodeDeploy_20141006.", Action/binary>>}
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
