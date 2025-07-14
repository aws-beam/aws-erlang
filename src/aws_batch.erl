%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Batch
%%
%% Using Batch, you can run batch computing workloads on the Amazon Web
%% Services Cloud.
%%
%% Batch computing is a common means for
%% developers, scientists, and engineers to access large amounts of compute
%% resources. Batch uses the advantages of
%% the batch computing to remove the undifferentiated heavy lifting of
%% configuring and managing required infrastructure.
%% At the same time, it also adopts a familiar batch computing software
%% approach. You can use Batch to efficiently
%% provision resources, and work toward eliminating capacity constraints,
%% reducing your overall compute costs, and
%% delivering results more quickly.
%%
%% As a fully managed service, Batch can run batch computing workloads of any
%% scale. Batch automatically
%% provisions compute resources and optimizes workload distribution based on
%% the quantity and scale of your specific
%% workloads. With Batch, there's no need to install or manage batch
%% computing software. This means that you can focus
%% on analyzing results and solving your specific problems instead.
-module(aws_batch).

-export([cancel_job/2,
         cancel_job/3,
         create_compute_environment/2,
         create_compute_environment/3,
         create_consumable_resource/2,
         create_consumable_resource/3,
         create_job_queue/2,
         create_job_queue/3,
         create_scheduling_policy/2,
         create_scheduling_policy/3,
         delete_compute_environment/2,
         delete_compute_environment/3,
         delete_consumable_resource/2,
         delete_consumable_resource/3,
         delete_job_queue/2,
         delete_job_queue/3,
         delete_scheduling_policy/2,
         delete_scheduling_policy/3,
         deregister_job_definition/2,
         deregister_job_definition/3,
         describe_compute_environments/2,
         describe_compute_environments/3,
         describe_consumable_resource/2,
         describe_consumable_resource/3,
         describe_job_definitions/2,
         describe_job_definitions/3,
         describe_job_queues/2,
         describe_job_queues/3,
         describe_jobs/2,
         describe_jobs/3,
         describe_scheduling_policies/2,
         describe_scheduling_policies/3,
         get_job_queue_snapshot/2,
         get_job_queue_snapshot/3,
         list_consumable_resources/2,
         list_consumable_resources/3,
         list_jobs/2,
         list_jobs/3,
         list_jobs_by_consumable_resource/2,
         list_jobs_by_consumable_resource/3,
         list_scheduling_policies/2,
         list_scheduling_policies/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         register_job_definition/2,
         register_job_definition/3,
         submit_job/2,
         submit_job/3,
         tag_resource/3,
         tag_resource/4,
         terminate_job/2,
         terminate_job/3,
         untag_resource/3,
         untag_resource/4,
         update_compute_environment/2,
         update_compute_environment/3,
         update_consumable_resource/2,
         update_consumable_resource/3,
         update_job_queue/2,
         update_job_queue/3,
         update_scheduling_policy/2,
         update_scheduling_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% ecs_properties_override() :: #{
%%   <<"taskProperties">> => list(task_properties_override())
%% }
-type ecs_properties_override() :: #{binary() => any()}.


%% Example:
%% describe_compute_environments_response() :: #{
%%   <<"computeEnvironments">> => list(compute_environment_detail()),
%%   <<"nextToken">> => string()
%% }
-type describe_compute_environments_response() :: #{binary() => any()}.


%% Example:
%% list_scheduling_policies_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_scheduling_policies_request() :: #{binary() => any()}.


%% Example:
%% cancel_job_request() :: #{
%%   <<"jobId">> := string(),
%%   <<"reason">> := string()
%% }
-type cancel_job_request() :: #{binary() => any()}.


%% Example:
%% eks_metadata() :: #{
%%   <<"annotations">> => map(),
%%   <<"labels">> => map(),
%%   <<"namespace">> => string()
%% }
-type eks_metadata() :: #{binary() => any()}.


%% Example:
%% task_properties_override() :: #{
%%   <<"containers">> => list(task_container_overrides())
%% }
-type task_properties_override() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_jobs_by_consumable_resource_summary() :: #{
%%   <<"consumableResourceProperties">> => consumable_resource_properties(),
%%   <<"createdAt">> => float(),
%%   <<"jobArn">> => string(),
%%   <<"jobDefinitionArn">> => string(),
%%   <<"jobName">> => string(),
%%   <<"jobQueueArn">> => string(),
%%   <<"jobStatus">> => string(),
%%   <<"quantity">> => float(),
%%   <<"shareIdentifier">> => string(),
%%   <<"startedAt">> => float(),
%%   <<"statusReason">> => string()
%% }
-type list_jobs_by_consumable_resource_summary() :: #{binary() => any()}.


%% Example:
%% deregister_job_definition_request() :: #{
%%   <<"jobDefinition">> := string()
%% }
-type deregister_job_definition_request() :: #{binary() => any()}.


%% Example:
%% fargate_platform_configuration() :: #{
%%   <<"platformVersion">> => string()
%% }
-type fargate_platform_configuration() :: #{binary() => any()}.


%% Example:
%% describe_job_definitions_response() :: #{
%%   <<"jobDefinitions">> => list(job_definition()),
%%   <<"nextToken">> => string()
%% }
-type describe_job_definitions_response() :: #{binary() => any()}.


%% Example:
%% container_properties() :: #{
%%   <<"command">> => list(string()),
%%   <<"enableExecuteCommand">> => boolean(),
%%   <<"environment">> => list(key_value_pair()),
%%   <<"ephemeralStorage">> => ephemeral_storage(),
%%   <<"executionRoleArn">> => string(),
%%   <<"fargatePlatformConfiguration">> => fargate_platform_configuration(),
%%   <<"image">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"jobRoleArn">> => string(),
%%   <<"linuxParameters">> => linux_parameters(),
%%   <<"logConfiguration">> => log_configuration(),
%%   <<"memory">> => integer(),
%%   <<"mountPoints">> => list(mount_point()),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"privileged">> => boolean(),
%%   <<"readonlyRootFilesystem">> => boolean(),
%%   <<"repositoryCredentials">> => repository_credentials(),
%%   <<"resourceRequirements">> => list(resource_requirement()),
%%   <<"runtimePlatform">> => runtime_platform(),
%%   <<"secrets">> => list(secret()),
%%   <<"ulimits">> => list(ulimit()),
%%   <<"user">> => string(),
%%   <<"vcpus">> => integer(),
%%   <<"volumes">> => list(volume())
%% }
-type container_properties() :: #{binary() => any()}.


%% Example:
%% eks_host_path() :: #{
%%   <<"path">> => string()
%% }
-type eks_host_path() :: #{binary() => any()}.


%% Example:
%% create_compute_environment_response() :: #{
%%   <<"computeEnvironmentArn">> => string(),
%%   <<"computeEnvironmentName">> => string()
%% }
-type create_compute_environment_response() :: #{binary() => any()}.


%% Example:
%% eks_container_environment_variable() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type eks_container_environment_variable() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_compute_environment_request() :: #{
%%   <<"computeEnvironment">> := string(),
%%   <<"computeResources">> => compute_resource_update(),
%%   <<"context">> => string(),
%%   <<"serviceRole">> => string(),
%%   <<"state">> => list(any()),
%%   <<"unmanagedvCpus">> => integer(),
%%   <<"updatePolicy">> => update_policy()
%% }
-type update_compute_environment_request() :: #{binary() => any()}.


%% Example:
%% get_job_queue_snapshot_request() :: #{
%%   <<"jobQueue">> := string()
%% }
-type get_job_queue_snapshot_request() :: #{binary() => any()}.


%% Example:
%% job_timeout() :: #{
%%   <<"attemptDurationSeconds">> => integer()
%% }
-type job_timeout() :: #{binary() => any()}.


%% Example:
%% scheduling_policy_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"fairsharePolicy">> => fairshare_policy(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type scheduling_policy_detail() :: #{binary() => any()}.


%% Example:
%% list_jobs_request() :: #{
%%   <<"arrayJobId">> => string(),
%%   <<"filters">> => list(key_values_pair()),
%%   <<"jobQueue">> => string(),
%%   <<"jobStatus">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"multiNodeJobId">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_request() :: #{binary() => any()}.


%% Example:
%% delete_scheduling_policy_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_scheduling_policy_request() :: #{binary() => any()}.


%% Example:
%% image_pull_secret() :: #{
%%   <<"name">> => string()
%% }
-type image_pull_secret() :: #{binary() => any()}.


%% Example:
%% ec2_configuration() :: #{
%%   <<"imageIdOverride">> => string(),
%%   <<"imageKubernetesVersion">> => string(),
%%   <<"imageType">> => string()
%% }
-type ec2_configuration() :: #{binary() => any()}.

%% Example:
%% deregister_job_definition_response() :: #{}
-type deregister_job_definition_response() :: #{}.


%% Example:
%% create_scheduling_policy_request() :: #{
%%   <<"fairsharePolicy">> => fairshare_policy(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_scheduling_policy_request() :: #{binary() => any()}.


%% Example:
%% node_property_override() :: #{
%%   <<"consumableResourcePropertiesOverride">> => consumable_resource_properties(),
%%   <<"containerOverrides">> => container_overrides(),
%%   <<"ecsPropertiesOverride">> => ecs_properties_override(),
%%   <<"eksPropertiesOverride">> => eks_properties_override(),
%%   <<"instanceTypes">> => list(string()),
%%   <<"targetNodes">> => string()
%% }
-type node_property_override() :: #{binary() => any()}.


%% Example:
%% network_interface() :: #{
%%   <<"attachmentId">> => string(),
%%   <<"ipv6Address">> => string(),
%%   <<"privateIpv4Address">> => string()
%% }
-type network_interface() :: #{binary() => any()}.


%% Example:
%% eks_container_override() :: #{
%%   <<"args">> => list(string()),
%%   <<"command">> => list(string()),
%%   <<"env">> => list(eks_container_environment_variable()),
%%   <<"image">> => string(),
%%   <<"name">> => string(),
%%   <<"resources">> => eks_container_resource_requirements()
%% }
-type eks_container_override() :: #{binary() => any()}.


%% Example:
%% list_jobs_response() :: #{
%%   <<"jobSummaryList">> => list(job_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_response() :: #{binary() => any()}.


%% Example:
%% attempt_task_container_details() :: #{
%%   <<"exitCode">> => integer(),
%%   <<"logStreamName">> => string(),
%%   <<"name">> => string(),
%%   <<"networkInterfaces">> => list(network_interface()),
%%   <<"reason">> => string()
%% }
-type attempt_task_container_details() :: #{binary() => any()}.


%% Example:
%% describe_scheduling_policies_response() :: #{
%%   <<"schedulingPolicies">> => list(scheduling_policy_detail())
%% }
-type describe_scheduling_policies_response() :: #{binary() => any()}.


%% Example:
%% update_policy() :: #{
%%   <<"jobExecutionTimeoutMinutes">> => float(),
%%   <<"terminateJobsOnUpdate">> => boolean()
%% }
-type update_policy() :: #{binary() => any()}.


%% Example:
%% job_queue_detail() :: #{
%%   <<"computeEnvironmentOrder">> => list(compute_environment_order()),
%%   <<"jobQueueArn">> => string(),
%%   <<"jobQueueName">> => string(),
%%   <<"jobStateTimeLimitActions">> => list(job_state_time_limit_action()),
%%   <<"priority">> => integer(),
%%   <<"schedulingPolicyArn">> => string(),
%%   <<"state">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => map()
%% }
-type job_queue_detail() :: #{binary() => any()}.


%% Example:
%% create_consumable_resource_request() :: #{
%%   <<"consumableResourceName">> := string(),
%%   <<"resourceType">> => string(),
%%   <<"tags">> => map(),
%%   <<"totalQuantity">> => float()
%% }
-type create_consumable_resource_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_job_queue_response() :: #{}
-type delete_job_queue_response() :: #{}.


%% Example:
%% ecs_properties() :: #{
%%   <<"taskProperties">> => list(ecs_task_properties())
%% }
-type ecs_properties() :: #{binary() => any()}.


%% Example:
%% register_job_definition_response() :: #{
%%   <<"jobDefinitionArn">> => string(),
%%   <<"jobDefinitionName">> => string(),
%%   <<"revision">> => integer()
%% }
-type register_job_definition_response() :: #{binary() => any()}.


%% Example:
%% describe_job_definitions_request() :: #{
%%   <<"jobDefinitionName">> => string(),
%%   <<"jobDefinitions">> => list(string()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => string()
%% }
-type describe_job_definitions_request() :: #{binary() => any()}.


%% Example:
%% create_compute_environment_request() :: #{
%%   <<"computeEnvironmentName">> := string(),
%%   <<"computeResources">> => compute_resource(),
%%   <<"context">> => string(),
%%   <<"eksConfiguration">> => eks_configuration(),
%%   <<"serviceRole">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"type">> := list(any()),
%%   <<"unmanagedvCpus">> => integer()
%% }
-type create_compute_environment_request() :: #{binary() => any()}.


%% Example:
%% mount_point() :: #{
%%   <<"containerPath">> => string(),
%%   <<"readOnly">> => boolean(),
%%   <<"sourceVolume">> => string()
%% }
-type mount_point() :: #{binary() => any()}.


%% Example:
%% attempt_ecs_task_details() :: #{
%%   <<"containerInstanceArn">> => string(),
%%   <<"containers">> => list(attempt_task_container_details()),
%%   <<"taskArn">> => string()
%% }
-type attempt_ecs_task_details() :: #{binary() => any()}.


%% Example:
%% task_container_overrides() :: #{
%%   <<"command">> => list(string()),
%%   <<"environment">> => list(key_value_pair()),
%%   <<"name">> => string(),
%%   <<"resourceRequirements">> => list(resource_requirement())
%% }
-type task_container_overrides() :: #{binary() => any()}.


%% Example:
%% eks_container_detail() :: #{
%%   <<"args">> => list(string()),
%%   <<"command">> => list(string()),
%%   <<"env">> => list(eks_container_environment_variable()),
%%   <<"exitCode">> => integer(),
%%   <<"image">> => string(),
%%   <<"imagePullPolicy">> => string(),
%%   <<"name">> => string(),
%%   <<"reason">> => string(),
%%   <<"resources">> => eks_container_resource_requirements(),
%%   <<"securityContext">> => eks_container_security_context(),
%%   <<"volumeMounts">> => list(eks_container_volume_mount())
%% }
-type eks_container_detail() :: #{binary() => any()}.


%% Example:
%% eks_properties_override() :: #{
%%   <<"podProperties">> => eks_pod_properties_override()
%% }
-type eks_properties_override() :: #{binary() => any()}.


%% Example:
%% create_scheduling_policy_response() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string()
%% }
-type create_scheduling_policy_response() :: #{binary() => any()}.


%% Example:
%% list_jobs_by_consumable_resource_request() :: #{
%%   <<"consumableResource">> := string(),
%%   <<"filters">> => list(key_values_pair()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_by_consumable_resource_request() :: #{binary() => any()}.


%% Example:
%% job_summary() :: #{
%%   <<"arrayProperties">> => array_properties_summary(),
%%   <<"container">> => container_summary(),
%%   <<"createdAt">> => float(),
%%   <<"jobArn">> => string(),
%%   <<"jobDefinition">> => string(),
%%   <<"jobId">> => string(),
%%   <<"jobName">> => string(),
%%   <<"nodeProperties">> => node_properties_summary(),
%%   <<"startedAt">> => float(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"stoppedAt">> => float()
%% }
-type job_summary() :: #{binary() => any()}.


%% Example:
%% list_scheduling_policies_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"schedulingPolicies">> => list(scheduling_policy_listing_detail())
%% }
-type list_scheduling_policies_response() :: #{binary() => any()}.


%% Example:
%% delete_compute_environment_request() :: #{
%%   <<"computeEnvironment">> := string()
%% }
-type delete_compute_environment_request() :: #{binary() => any()}.


%% Example:
%% ecs_task_properties() :: #{
%%   <<"containers">> => list(task_container_properties()),
%%   <<"enableExecuteCommand">> => boolean(),
%%   <<"ephemeralStorage">> => ephemeral_storage(),
%%   <<"executionRoleArn">> => string(),
%%   <<"ipcMode">> => string(),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"pidMode">> => string(),
%%   <<"platformVersion">> => string(),
%%   <<"runtimePlatform">> => runtime_platform(),
%%   <<"taskRoleArn">> => string(),
%%   <<"volumes">> => list(volume())
%% }
-type ecs_task_properties() :: #{binary() => any()}.


%% Example:
%% task_container_details() :: #{
%%   <<"command">> => list(string()),
%%   <<"dependsOn">> => list(task_container_dependency()),
%%   <<"environment">> => list(key_value_pair()),
%%   <<"essential">> => boolean(),
%%   <<"exitCode">> => integer(),
%%   <<"firelensConfiguration">> => firelens_configuration(),
%%   <<"image">> => string(),
%%   <<"linuxParameters">> => linux_parameters(),
%%   <<"logConfiguration">> => log_configuration(),
%%   <<"logStreamName">> => string(),
%%   <<"mountPoints">> => list(mount_point()),
%%   <<"name">> => string(),
%%   <<"networkInterfaces">> => list(network_interface()),
%%   <<"privileged">> => boolean(),
%%   <<"readonlyRootFilesystem">> => boolean(),
%%   <<"reason">> => string(),
%%   <<"repositoryCredentials">> => repository_credentials(),
%%   <<"resourceRequirements">> => list(resource_requirement()),
%%   <<"secrets">> => list(secret()),
%%   <<"ulimits">> => list(ulimit()),
%%   <<"user">> => string()
%% }
-type task_container_details() :: #{binary() => any()}.


%% Example:
%% client_exception() :: #{
%%   <<"message">> => string()
%% }
-type client_exception() :: #{binary() => any()}.


%% Example:
%% create_job_queue_response() :: #{
%%   <<"jobQueueArn">> => string(),
%%   <<"jobQueueName">> => string()
%% }
-type create_job_queue_response() :: #{binary() => any()}.


%% Example:
%% ulimit() :: #{
%%   <<"hardLimit">> => integer(),
%%   <<"name">> => string(),
%%   <<"softLimit">> => integer()
%% }
-type ulimit() :: #{binary() => any()}.


%% Example:
%% evaluate_on_exit() :: #{
%%   <<"action">> => list(any()),
%%   <<"onExitCode">> => string(),
%%   <<"onReason">> => string(),
%%   <<"onStatusReason">> => string()
%% }
-type evaluate_on_exit() :: #{binary() => any()}.


%% Example:
%% attempt_detail() :: #{
%%   <<"container">> => attempt_container_detail(),
%%   <<"startedAt">> => float(),
%%   <<"statusReason">> => string(),
%%   <<"stoppedAt">> => float(),
%%   <<"taskProperties">> => list(attempt_ecs_task_details())
%% }
-type attempt_detail() :: #{binary() => any()}.


%% Example:
%% register_job_definition_request() :: #{
%%   <<"consumableResourceProperties">> => consumable_resource_properties(),
%%   <<"containerProperties">> => container_properties(),
%%   <<"ecsProperties">> => ecs_properties(),
%%   <<"eksProperties">> => eks_properties(),
%%   <<"jobDefinitionName">> := string(),
%%   <<"nodeProperties">> => node_properties(),
%%   <<"parameters">> => map(),
%%   <<"platformCapabilities">> => list(list(any())()),
%%   <<"propagateTags">> => boolean(),
%%   <<"retryStrategy">> => retry_strategy(),
%%   <<"schedulingPriority">> => integer(),
%%   <<"tags">> => map(),
%%   <<"timeout">> => job_timeout(),
%%   <<"type">> := list(any())
%% }
-type register_job_definition_request() :: #{binary() => any()}.

%% Example:
%% delete_scheduling_policy_response() :: #{}
-type delete_scheduling_policy_response() :: #{}.


%% Example:
%% submit_job_request() :: #{
%%   <<"arrayProperties">> => array_properties(),
%%   <<"consumableResourcePropertiesOverride">> => consumable_resource_properties(),
%%   <<"containerOverrides">> => container_overrides(),
%%   <<"dependsOn">> => list(job_dependency()),
%%   <<"ecsPropertiesOverride">> => ecs_properties_override(),
%%   <<"eksPropertiesOverride">> => eks_properties_override(),
%%   <<"jobDefinition">> := string(),
%%   <<"jobName">> := string(),
%%   <<"jobQueue">> := string(),
%%   <<"nodeOverrides">> => node_overrides(),
%%   <<"parameters">> => map(),
%%   <<"propagateTags">> => boolean(),
%%   <<"retryStrategy">> => retry_strategy(),
%%   <<"schedulingPriorityOverride">> => integer(),
%%   <<"shareIdentifier">> => string(),
%%   <<"tags">> => map(),
%%   <<"timeout">> => job_timeout()
%% }
-type submit_job_request() :: #{binary() => any()}.


%% Example:
%% key_values_pair() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string())
%% }
-type key_values_pair() :: #{binary() => any()}.


%% Example:
%% attempt_container_detail() :: #{
%%   <<"containerInstanceArn">> => string(),
%%   <<"exitCode">> => integer(),
%%   <<"logStreamName">> => string(),
%%   <<"networkInterfaces">> => list(network_interface()),
%%   <<"reason">> => string(),
%%   <<"taskArn">> => string()
%% }
-type attempt_container_detail() :: #{binary() => any()}.


%% Example:
%% list_consumable_resources_response() :: #{
%%   <<"consumableResources">> => list(consumable_resource_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_consumable_resources_response() :: #{binary() => any()}.


%% Example:
%% update_job_queue_request() :: #{
%%   <<"computeEnvironmentOrder">> => list(compute_environment_order()),
%%   <<"jobQueue">> := string(),
%%   <<"jobStateTimeLimitActions">> => list(job_state_time_limit_action()),
%%   <<"priority">> => integer(),
%%   <<"schedulingPolicyArn">> => string(),
%%   <<"state">> => list(any())
%% }
-type update_job_queue_request() :: #{binary() => any()}.


%% Example:
%% ecs_task_details() :: #{
%%   <<"containerInstanceArn">> => string(),
%%   <<"containers">> => list(task_container_details()),
%%   <<"enableExecuteCommand">> => boolean(),
%%   <<"ephemeralStorage">> => ephemeral_storage(),
%%   <<"executionRoleArn">> => string(),
%%   <<"ipcMode">> => string(),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"pidMode">> => string(),
%%   <<"platformVersion">> => string(),
%%   <<"runtimePlatform">> => runtime_platform(),
%%   <<"taskArn">> => string(),
%%   <<"taskRoleArn">> => string(),
%%   <<"volumes">> => list(volume())
%% }
-type ecs_task_details() :: #{binary() => any()}.


%% Example:
%% describe_job_queues_response() :: #{
%%   <<"jobQueues">> => list(job_queue_detail()),
%%   <<"nextToken">> => string()
%% }
-type describe_job_queues_response() :: #{binary() => any()}.


%% Example:
%% eks_configuration() :: #{
%%   <<"eksClusterArn">> => string(),
%%   <<"kubernetesNamespace">> => string()
%% }
-type eks_configuration() :: #{binary() => any()}.


%% Example:
%% secret() :: #{
%%   <<"name">> => string(),
%%   <<"valueFrom">> => string()
%% }
-type secret() :: #{binary() => any()}.


%% Example:
%% share_attributes() :: #{
%%   <<"shareIdentifier">> => string(),
%%   <<"weightFactor">> => float()
%% }
-type share_attributes() :: #{binary() => any()}.


%% Example:
%% fairshare_policy() :: #{
%%   <<"computeReservation">> => integer(),
%%   <<"shareDecaySeconds">> => integer(),
%%   <<"shareDistribution">> => list(share_attributes())
%% }
-type fairshare_policy() :: #{binary() => any()}.


%% Example:
%% terminate_job_request() :: #{
%%   <<"jobId">> := string(),
%%   <<"reason">> := string()
%% }
-type terminate_job_request() :: #{binary() => any()}.


%% Example:
%% eks_volume() :: #{
%%   <<"emptyDir">> => eks_empty_dir(),
%%   <<"hostPath">> => eks_host_path(),
%%   <<"name">> => string(),
%%   <<"persistentVolumeClaim">> => eks_persistent_volume_claim(),
%%   <<"secret">> => eks_secret()
%% }
-type eks_volume() :: #{binary() => any()}.


%% Example:
%% job_definition() :: #{
%%   <<"consumableResourceProperties">> => consumable_resource_properties(),
%%   <<"containerOrchestrationType">> => list(any()),
%%   <<"containerProperties">> => container_properties(),
%%   <<"ecsProperties">> => ecs_properties(),
%%   <<"eksProperties">> => eks_properties(),
%%   <<"jobDefinitionArn">> => string(),
%%   <<"jobDefinitionName">> => string(),
%%   <<"nodeProperties">> => node_properties(),
%%   <<"parameters">> => map(),
%%   <<"platformCapabilities">> => list(list(any())()),
%%   <<"propagateTags">> => boolean(),
%%   <<"retryStrategy">> => retry_strategy(),
%%   <<"revision">> => integer(),
%%   <<"schedulingPriority">> => integer(),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"timeout">> => job_timeout(),
%%   <<"type">> => string()
%% }
-type job_definition() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% front_of_queue_job_summary() :: #{
%%   <<"earliestTimeAtPosition">> => float(),
%%   <<"jobArn">> => string()
%% }
-type front_of_queue_job_summary() :: #{binary() => any()}.


%% Example:
%% container_summary() :: #{
%%   <<"exitCode">> => integer(),
%%   <<"reason">> => string()
%% }
-type container_summary() :: #{binary() => any()}.


%% Example:
%% delete_consumable_resource_request() :: #{
%%   <<"consumableResource">> := string()
%% }
-type delete_consumable_resource_request() :: #{binary() => any()}.


%% Example:
%% ephemeral_storage() :: #{
%%   <<"sizeInGiB">> => integer()
%% }
-type ephemeral_storage() :: #{binary() => any()}.


%% Example:
%% update_consumable_resource_response() :: #{
%%   <<"consumableResourceArn">> => string(),
%%   <<"consumableResourceName">> => string(),
%%   <<"totalQuantity">> => float()
%% }
-type update_consumable_resource_response() :: #{binary() => any()}.


%% Example:
%% eks_properties() :: #{
%%   <<"podProperties">> => eks_pod_properties()
%% }
-type eks_properties() :: #{binary() => any()}.


%% Example:
%% eks_attempt_detail() :: #{
%%   <<"containers">> => list(eks_attempt_container_detail()),
%%   <<"eksClusterArn">> => string(),
%%   <<"initContainers">> => list(eks_attempt_container_detail()),
%%   <<"nodeName">> => string(),
%%   <<"podName">> => string(),
%%   <<"podNamespace">> => string(),
%%   <<"startedAt">> => float(),
%%   <<"statusReason">> => string(),
%%   <<"stoppedAt">> => float()
%% }
-type eks_attempt_detail() :: #{binary() => any()}.


%% Example:
%% eks_secret() :: #{
%%   <<"optional">> => boolean(),
%%   <<"secretName">> => string()
%% }
-type eks_secret() :: #{binary() => any()}.


%% Example:
%% get_job_queue_snapshot_response() :: #{
%%   <<"frontOfQueue">> => front_of_queue_detail()
%% }
-type get_job_queue_snapshot_response() :: #{binary() => any()}.


%% Example:
%% host() :: #{
%%   <<"sourcePath">> => string()
%% }
-type host() :: #{binary() => any()}.


%% Example:
%% compute_environment_order() :: #{
%%   <<"computeEnvironment">> => string(),
%%   <<"order">> => integer()
%% }
-type compute_environment_order() :: #{binary() => any()}.


%% Example:
%% update_scheduling_policy_request() :: #{
%%   <<"arn">> := string(),
%%   <<"fairsharePolicy">> => fairshare_policy()
%% }
-type update_scheduling_policy_request() :: #{binary() => any()}.


%% Example:
%% compute_resource_update() :: #{
%%   <<"allocationStrategy">> => list(any()),
%%   <<"bidPercentage">> => integer(),
%%   <<"desiredvCpus">> => integer(),
%%   <<"ec2Configuration">> => list(ec2_configuration()),
%%   <<"ec2KeyPair">> => string(),
%%   <<"imageId">> => string(),
%%   <<"instanceRole">> => string(),
%%   <<"instanceTypes">> => list(string()),
%%   <<"launchTemplate">> => launch_template_specification(),
%%   <<"maxvCpus">> => integer(),
%%   <<"minvCpus">> => integer(),
%%   <<"placementGroup">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnets">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"updateToLatestImageVersion">> => boolean()
%% }
-type compute_resource_update() :: #{binary() => any()}.


%% Example:
%% eks_container_security_context() :: #{
%%   <<"allowPrivilegeEscalation">> => boolean(),
%%   <<"privileged">> => boolean(),
%%   <<"readOnlyRootFilesystem">> => boolean(),
%%   <<"runAsGroup">> => float(),
%%   <<"runAsNonRoot">> => boolean(),
%%   <<"runAsUser">> => float()
%% }
-type eks_container_security_context() :: #{binary() => any()}.


%% Example:
%% e_f_s_authorization_config() :: #{
%%   <<"accessPointId">> => string(),
%%   <<"iam">> => list(any())
%% }
-type e_f_s_authorization_config() :: #{binary() => any()}.


%% Example:
%% submit_job_response() :: #{
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string(),
%%   <<"jobName">> => string()
%% }
-type submit_job_response() :: #{binary() => any()}.


%% Example:
%% container_overrides() :: #{
%%   <<"command">> => list(string()),
%%   <<"environment">> => list(key_value_pair()),
%%   <<"instanceType">> => string(),
%%   <<"memory">> => integer(),
%%   <<"resourceRequirements">> => list(resource_requirement()),
%%   <<"vcpus">> => integer()
%% }
-type container_overrides() :: #{binary() => any()}.


%% Example:
%% front_of_queue_detail() :: #{
%%   <<"jobs">> => list(front_of_queue_job_summary()),
%%   <<"lastUpdatedAt">> => float()
%% }
-type front_of_queue_detail() :: #{binary() => any()}.


%% Example:
%% e_f_s_volume_configuration() :: #{
%%   <<"authorizationConfig">> => e_f_s_authorization_config(),
%%   <<"fileSystemId">> => string(),
%%   <<"rootDirectory">> => string(),
%%   <<"transitEncryption">> => list(any()),
%%   <<"transitEncryptionPort">> => integer()
%% }
-type e_f_s_volume_configuration() :: #{binary() => any()}.


%% Example:
%% container_detail() :: #{
%%   <<"command">> => list(string()),
%%   <<"containerInstanceArn">> => string(),
%%   <<"enableExecuteCommand">> => boolean(),
%%   <<"environment">> => list(key_value_pair()),
%%   <<"ephemeralStorage">> => ephemeral_storage(),
%%   <<"executionRoleArn">> => string(),
%%   <<"exitCode">> => integer(),
%%   <<"fargatePlatformConfiguration">> => fargate_platform_configuration(),
%%   <<"image">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"jobRoleArn">> => string(),
%%   <<"linuxParameters">> => linux_parameters(),
%%   <<"logConfiguration">> => log_configuration(),
%%   <<"logStreamName">> => string(),
%%   <<"memory">> => integer(),
%%   <<"mountPoints">> => list(mount_point()),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"networkInterfaces">> => list(network_interface()),
%%   <<"privileged">> => boolean(),
%%   <<"readonlyRootFilesystem">> => boolean(),
%%   <<"reason">> => string(),
%%   <<"repositoryCredentials">> => repository_credentials(),
%%   <<"resourceRequirements">> => list(resource_requirement()),
%%   <<"runtimePlatform">> => runtime_platform(),
%%   <<"secrets">> => list(secret()),
%%   <<"taskArn">> => string(),
%%   <<"ulimits">> => list(ulimit()),
%%   <<"user">> => string(),
%%   <<"vcpus">> => integer(),
%%   <<"volumes">> => list(volume())
%% }
-type container_detail() :: #{binary() => any()}.


%% Example:
%% network_configuration() :: #{
%%   <<"assignPublicIp">> => list(any())
%% }
-type network_configuration() :: #{binary() => any()}.


%% Example:
%% update_consumable_resource_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"consumableResource">> := string(),
%%   <<"operation">> => string(),
%%   <<"quantity">> => float()
%% }
-type update_consumable_resource_request() :: #{binary() => any()}.


%% Example:
%% scheduling_policy_listing_detail() :: #{
%%   <<"arn">> => string()
%% }
-type scheduling_policy_listing_detail() :: #{binary() => any()}.

%% Example:
%% delete_consumable_resource_response() :: #{}
-type delete_consumable_resource_response() :: #{}.


%% Example:
%% describe_compute_environments_request() :: #{
%%   <<"computeEnvironments">> => list(string()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_compute_environments_request() :: #{binary() => any()}.


%% Example:
%% consumable_resource_requirement() :: #{
%%   <<"consumableResource">> => string(),
%%   <<"quantity">> => float()
%% }
-type consumable_resource_requirement() :: #{binary() => any()}.


%% Example:
%% node_overrides() :: #{
%%   <<"nodePropertyOverrides">> => list(node_property_override()),
%%   <<"numNodes">> => integer()
%% }
-type node_overrides() :: #{binary() => any()}.


%% Example:
%% volume() :: #{
%%   <<"efsVolumeConfiguration">> => e_f_s_volume_configuration(),
%%   <<"host">> => host(),
%%   <<"name">> => string()
%% }
-type volume() :: #{binary() => any()}.


%% Example:
%% describe_consumable_resource_response() :: #{
%%   <<"availableQuantity">> => float(),
%%   <<"consumableResourceArn">> => string(),
%%   <<"consumableResourceName">> => string(),
%%   <<"createdAt">> => float(),
%%   <<"inUseQuantity">> => float(),
%%   <<"resourceType">> => string(),
%%   <<"tags">> => map(),
%%   <<"totalQuantity">> => float()
%% }
-type describe_consumable_resource_response() :: #{binary() => any()}.


%% Example:
%% job_dependency() :: #{
%%   <<"jobId">> => string(),
%%   <<"type">> => list(any())
%% }
-type job_dependency() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% array_properties() :: #{
%%   <<"size">> => integer()
%% }
-type array_properties() :: #{binary() => any()}.


%% Example:
%% node_range_property() :: #{
%%   <<"consumableResourceProperties">> => consumable_resource_properties(),
%%   <<"container">> => container_properties(),
%%   <<"ecsProperties">> => ecs_properties(),
%%   <<"eksProperties">> => eks_properties(),
%%   <<"instanceTypes">> => list(string()),
%%   <<"targetNodes">> => string()
%% }
-type node_range_property() :: #{binary() => any()}.


%% Example:
%% eks_attempt_container_detail() :: #{
%%   <<"containerID">> => string(),
%%   <<"exitCode">> => integer(),
%%   <<"name">> => string(),
%%   <<"reason">> => string()
%% }
-type eks_attempt_container_detail() :: #{binary() => any()}.


%% Example:
%% eks_persistent_volume_claim() :: #{
%%   <<"claimName">> => string(),
%%   <<"readOnly">> => boolean()
%% }
-type eks_persistent_volume_claim() :: #{binary() => any()}.


%% Example:
%% describe_jobs_response() :: #{
%%   <<"jobs">> => list(job_detail())
%% }
-type describe_jobs_response() :: #{binary() => any()}.


%% Example:
%% key_value_pair() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type key_value_pair() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% launch_template_specification_override() :: #{
%%   <<"launchTemplateId">> => string(),
%%   <<"launchTemplateName">> => string(),
%%   <<"targetInstanceTypes">> => list(string()),
%%   <<"userdataType">> => list(any()),
%%   <<"version">> => string()
%% }
-type launch_template_specification_override() :: #{binary() => any()}.


%% Example:
%% runtime_platform() :: #{
%%   <<"cpuArchitecture">> => string(),
%%   <<"operatingSystemFamily">> => string()
%% }
-type runtime_platform() :: #{binary() => any()}.


%% Example:
%% delete_job_queue_request() :: #{
%%   <<"jobQueue">> := string()
%% }
-type delete_job_queue_request() :: #{binary() => any()}.

%% Example:
%% terminate_job_response() :: #{}
-type terminate_job_response() :: #{}.


%% Example:
%% eks_container_resource_requirements() :: #{
%%   <<"limits">> => map(),
%%   <<"requests">> => map()
%% }
-type eks_container_resource_requirements() :: #{binary() => any()}.


%% Example:
%% linux_parameters() :: #{
%%   <<"devices">> => list(device()),
%%   <<"initProcessEnabled">> => boolean(),
%%   <<"maxSwap">> => integer(),
%%   <<"sharedMemorySize">> => integer(),
%%   <<"swappiness">> => integer(),
%%   <<"tmpfs">> => list(tmpfs())
%% }
-type linux_parameters() :: #{binary() => any()}.


%% Example:
%% update_compute_environment_response() :: #{
%%   <<"computeEnvironmentArn">> => string(),
%%   <<"computeEnvironmentName">> => string()
%% }
-type update_compute_environment_response() :: #{binary() => any()}.


%% Example:
%% node_details() :: #{
%%   <<"isMainNode">> => boolean(),
%%   <<"nodeIndex">> => integer()
%% }
-type node_details() :: #{binary() => any()}.


%% Example:
%% eks_container_volume_mount() :: #{
%%   <<"mountPath">> => string(),
%%   <<"name">> => string(),
%%   <<"readOnly">> => boolean(),
%%   <<"subPath">> => string()
%% }
-type eks_container_volume_mount() :: #{binary() => any()}.


%% Example:
%% create_consumable_resource_response() :: #{
%%   <<"consumableResourceArn">> => string(),
%%   <<"consumableResourceName">> => string()
%% }
-type create_consumable_resource_response() :: #{binary() => any()}.


%% Example:
%% list_jobs_by_consumable_resource_response() :: #{
%%   <<"jobs">> => list(list_jobs_by_consumable_resource_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_by_consumable_resource_response() :: #{binary() => any()}.


%% Example:
%% eks_pod_properties() :: #{
%%   <<"containers">> => list(eks_container()),
%%   <<"dnsPolicy">> => string(),
%%   <<"hostNetwork">> => boolean(),
%%   <<"imagePullSecrets">> => list(image_pull_secret()),
%%   <<"initContainers">> => list(eks_container()),
%%   <<"metadata">> => eks_metadata(),
%%   <<"serviceAccountName">> => string(),
%%   <<"shareProcessNamespace">> => boolean(),
%%   <<"volumes">> => list(eks_volume())
%% }
-type eks_pod_properties() :: #{binary() => any()}.


%% Example:
%% server_exception() :: #{
%%   <<"message">> => string()
%% }
-type server_exception() :: #{binary() => any()}.


%% Example:
%% update_job_queue_response() :: #{
%%   <<"jobQueueArn">> => string(),
%%   <<"jobQueueName">> => string()
%% }
-type update_job_queue_response() :: #{binary() => any()}.


%% Example:
%% retry_strategy() :: #{
%%   <<"attempts">> => integer(),
%%   <<"evaluateOnExit">> => list(evaluate_on_exit())
%% }
-type retry_strategy() :: #{binary() => any()}.


%% Example:
%% describe_jobs_request() :: #{
%%   <<"jobs">> := list(string())
%% }
-type describe_jobs_request() :: #{binary() => any()}.


%% Example:
%% launch_template_specification() :: #{
%%   <<"launchTemplateId">> => string(),
%%   <<"launchTemplateName">> => string(),
%%   <<"overrides">> => list(launch_template_specification_override()),
%%   <<"userdataType">> => list(any()),
%%   <<"version">> => string()
%% }
-type launch_template_specification() :: #{binary() => any()}.


%% Example:
%% node_properties_summary() :: #{
%%   <<"isMainNode">> => boolean(),
%%   <<"nodeIndex">> => integer(),
%%   <<"numNodes">> => integer()
%% }
-type node_properties_summary() :: #{binary() => any()}.


%% Example:
%% list_consumable_resources_request() :: #{
%%   <<"filters">> => list(key_values_pair()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_consumable_resources_request() :: #{binary() => any()}.


%% Example:
%% compute_environment_detail() :: #{
%%   <<"computeEnvironmentArn">> => string(),
%%   <<"computeEnvironmentName">> => string(),
%%   <<"computeResources">> => compute_resource(),
%%   <<"containerOrchestrationType">> => list(any()),
%%   <<"context">> => string(),
%%   <<"ecsClusterArn">> => string(),
%%   <<"eksConfiguration">> => eks_configuration(),
%%   <<"serviceRole">> => string(),
%%   <<"state">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"unmanagedvCpus">> => integer(),
%%   <<"updatePolicy">> => update_policy(),
%%   <<"uuid">> => string()
%% }
-type compute_environment_detail() :: #{binary() => any()}.


%% Example:
%% device() :: #{
%%   <<"containerPath">> => string(),
%%   <<"hostPath">> => string(),
%%   <<"permissions">> => list(list(any())())
%% }
-type device() :: #{binary() => any()}.


%% Example:
%% eks_properties_detail() :: #{
%%   <<"podProperties">> => eks_pod_properties_detail()
%% }
-type eks_properties_detail() :: #{binary() => any()}.


%% Example:
%% describe_job_queues_request() :: #{
%%   <<"jobQueues">> => list(string()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_job_queues_request() :: #{binary() => any()}.


%% Example:
%% eks_container() :: #{
%%   <<"args">> => list(string()),
%%   <<"command">> => list(string()),
%%   <<"env">> => list(eks_container_environment_variable()),
%%   <<"image">> => string(),
%%   <<"imagePullPolicy">> => string(),
%%   <<"name">> => string(),
%%   <<"resources">> => eks_container_resource_requirements(),
%%   <<"securityContext">> => eks_container_security_context(),
%%   <<"volumeMounts">> => list(eks_container_volume_mount())
%% }
-type eks_container() :: #{binary() => any()}.


%% Example:
%% job_detail() :: #{
%%   <<"arrayProperties">> => array_properties_detail(),
%%   <<"attempts">> => list(attempt_detail()),
%%   <<"consumableResourceProperties">> => consumable_resource_properties(),
%%   <<"container">> => container_detail(),
%%   <<"createdAt">> => float(),
%%   <<"dependsOn">> => list(job_dependency()),
%%   <<"ecsProperties">> => ecs_properties_detail(),
%%   <<"eksAttempts">> => list(eks_attempt_detail()),
%%   <<"eksProperties">> => eks_properties_detail(),
%%   <<"isCancelled">> => boolean(),
%%   <<"isTerminated">> => boolean(),
%%   <<"jobArn">> => string(),
%%   <<"jobDefinition">> => string(),
%%   <<"jobId">> => string(),
%%   <<"jobName">> => string(),
%%   <<"jobQueue">> => string(),
%%   <<"nodeDetails">> => node_details(),
%%   <<"nodeProperties">> => node_properties(),
%%   <<"parameters">> => map(),
%%   <<"platformCapabilities">> => list(list(any())()),
%%   <<"propagateTags">> => boolean(),
%%   <<"retryStrategy">> => retry_strategy(),
%%   <<"schedulingPriority">> => integer(),
%%   <<"shareIdentifier">> => string(),
%%   <<"startedAt">> => float(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"stoppedAt">> => float(),
%%   <<"tags">> => map(),
%%   <<"timeout">> => job_timeout()
%% }
-type job_detail() :: #{binary() => any()}.


%% Example:
%% array_properties_detail() :: #{
%%   <<"index">> => integer(),
%%   <<"size">> => integer(),
%%   <<"statusSummary">> => map()
%% }
-type array_properties_detail() :: #{binary() => any()}.


%% Example:
%% describe_scheduling_policies_request() :: #{
%%   <<"arns">> := list(string())
%% }
-type describe_scheduling_policies_request() :: #{binary() => any()}.


%% Example:
%% array_properties_summary() :: #{
%%   <<"index">> => integer(),
%%   <<"size">> => integer()
%% }
-type array_properties_summary() :: #{binary() => any()}.


%% Example:
%% ecs_properties_detail() :: #{
%%   <<"taskProperties">> => list(ecs_task_details())
%% }
-type ecs_properties_detail() :: #{binary() => any()}.


%% Example:
%% consumable_resource_summary() :: #{
%%   <<"consumableResourceArn">> => string(),
%%   <<"consumableResourceName">> => string(),
%%   <<"inUseQuantity">> => float(),
%%   <<"resourceType">> => string(),
%%   <<"totalQuantity">> => float()
%% }
-type consumable_resource_summary() :: #{binary() => any()}.


%% Example:
%% create_job_queue_request() :: #{
%%   <<"computeEnvironmentOrder">> := list(compute_environment_order()),
%%   <<"jobQueueName">> := string(),
%%   <<"jobStateTimeLimitActions">> => list(job_state_time_limit_action()),
%%   <<"priority">> := integer(),
%%   <<"schedulingPolicyArn">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_job_queue_request() :: #{binary() => any()}.


%% Example:
%% log_configuration() :: #{
%%   <<"logDriver">> => list(any()),
%%   <<"options">> => map(),
%%   <<"secretOptions">> => list(secret())
%% }
-type log_configuration() :: #{binary() => any()}.


%% Example:
%% describe_consumable_resource_request() :: #{
%%   <<"consumableResource">> := string()
%% }
-type describe_consumable_resource_request() :: #{binary() => any()}.

%% Example:
%% cancel_job_response() :: #{}
-type cancel_job_response() :: #{}.

%% Example:
%% update_scheduling_policy_response() :: #{}
-type update_scheduling_policy_response() :: #{}.


%% Example:
%% resource_requirement() :: #{
%%   <<"type">> => list(any()),
%%   <<"value">> => string()
%% }
-type resource_requirement() :: #{binary() => any()}.


%% Example:
%% firelens_configuration() :: #{
%%   <<"options">> => map(),
%%   <<"type">> => list(any())
%% }
-type firelens_configuration() :: #{binary() => any()}.


%% Example:
%% job_state_time_limit_action() :: #{
%%   <<"action">> => list(any()),
%%   <<"maxTimeSeconds">> => integer(),
%%   <<"reason">> => string(),
%%   <<"state">> => list(any())
%% }
-type job_state_time_limit_action() :: #{binary() => any()}.


%% Example:
%% compute_resource() :: #{
%%   <<"allocationStrategy">> => list(any()),
%%   <<"bidPercentage">> => integer(),
%%   <<"desiredvCpus">> => integer(),
%%   <<"ec2Configuration">> => list(ec2_configuration()),
%%   <<"ec2KeyPair">> => string(),
%%   <<"imageId">> => string(),
%%   <<"instanceRole">> => string(),
%%   <<"instanceTypes">> => list(string()),
%%   <<"launchTemplate">> => launch_template_specification(),
%%   <<"maxvCpus">> => integer(),
%%   <<"minvCpus">> => integer(),
%%   <<"placementGroup">> => string(),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"spotIamFleetRole">> => string(),
%%   <<"subnets">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any())
%% }
-type compute_resource() :: #{binary() => any()}.


%% Example:
%% node_properties() :: #{
%%   <<"mainNode">> => integer(),
%%   <<"nodeRangeProperties">> => list(node_range_property()),
%%   <<"numNodes">> => integer()
%% }
-type node_properties() :: #{binary() => any()}.


%% Example:
%% eks_empty_dir() :: #{
%%   <<"medium">> => string(),
%%   <<"sizeLimit">> => string()
%% }
-type eks_empty_dir() :: #{binary() => any()}.


%% Example:
%% task_container_dependency() :: #{
%%   <<"condition">> => string(),
%%   <<"containerName">> => string()
%% }
-type task_container_dependency() :: #{binary() => any()}.


%% Example:
%% eks_pod_properties_override() :: #{
%%   <<"containers">> => list(eks_container_override()),
%%   <<"initContainers">> => list(eks_container_override()),
%%   <<"metadata">> => eks_metadata()
%% }
-type eks_pod_properties_override() :: #{binary() => any()}.


%% Example:
%% consumable_resource_properties() :: #{
%%   <<"consumableResourceList">> => list(consumable_resource_requirement())
%% }
-type consumable_resource_properties() :: #{binary() => any()}.


%% Example:
%% repository_credentials() :: #{
%%   <<"credentialsParameter">> => string()
%% }
-type repository_credentials() :: #{binary() => any()}.


%% Example:
%% eks_pod_properties_detail() :: #{
%%   <<"containers">> => list(eks_container_detail()),
%%   <<"dnsPolicy">> => string(),
%%   <<"hostNetwork">> => boolean(),
%%   <<"imagePullSecrets">> => list(image_pull_secret()),
%%   <<"initContainers">> => list(eks_container_detail()),
%%   <<"metadata">> => eks_metadata(),
%%   <<"nodeName">> => string(),
%%   <<"podName">> => string(),
%%   <<"serviceAccountName">> => string(),
%%   <<"shareProcessNamespace">> => boolean(),
%%   <<"volumes">> => list(eks_volume())
%% }
-type eks_pod_properties_detail() :: #{binary() => any()}.


%% Example:
%% tmpfs() :: #{
%%   <<"containerPath">> => string(),
%%   <<"mountOptions">> => list(string()),
%%   <<"size">> => integer()
%% }
-type tmpfs() :: #{binary() => any()}.

%% Example:
%% delete_compute_environment_response() :: #{}
-type delete_compute_environment_response() :: #{}.


%% Example:
%% task_container_properties() :: #{
%%   <<"command">> => list(string()),
%%   <<"dependsOn">> => list(task_container_dependency()),
%%   <<"environment">> => list(key_value_pair()),
%%   <<"essential">> => boolean(),
%%   <<"firelensConfiguration">> => firelens_configuration(),
%%   <<"image">> => string(),
%%   <<"linuxParameters">> => linux_parameters(),
%%   <<"logConfiguration">> => log_configuration(),
%%   <<"mountPoints">> => list(mount_point()),
%%   <<"name">> => string(),
%%   <<"privileged">> => boolean(),
%%   <<"readonlyRootFilesystem">> => boolean(),
%%   <<"repositoryCredentials">> => repository_credentials(),
%%   <<"resourceRequirements">> => list(resource_requirement()),
%%   <<"secrets">> => list(secret()),
%%   <<"ulimits">> => list(ulimit()),
%%   <<"user">> => string()
%% }
-type task_container_properties() :: #{binary() => any()}.

-type cancel_job_errors() ::
    server_exception() | 
    client_exception().

-type create_compute_environment_errors() ::
    server_exception() | 
    client_exception().

-type create_consumable_resource_errors() ::
    server_exception() | 
    client_exception().

-type create_job_queue_errors() ::
    server_exception() | 
    client_exception().

-type create_scheduling_policy_errors() ::
    server_exception() | 
    client_exception().

-type delete_compute_environment_errors() ::
    server_exception() | 
    client_exception().

-type delete_consumable_resource_errors() ::
    server_exception() | 
    client_exception().

-type delete_job_queue_errors() ::
    server_exception() | 
    client_exception().

-type delete_scheduling_policy_errors() ::
    server_exception() | 
    client_exception().

-type deregister_job_definition_errors() ::
    server_exception() | 
    client_exception().

-type describe_compute_environments_errors() ::
    server_exception() | 
    client_exception().

-type describe_consumable_resource_errors() ::
    server_exception() | 
    client_exception().

-type describe_job_definitions_errors() ::
    server_exception() | 
    client_exception().

-type describe_job_queues_errors() ::
    server_exception() | 
    client_exception().

-type describe_jobs_errors() ::
    server_exception() | 
    client_exception().

-type describe_scheduling_policies_errors() ::
    server_exception() | 
    client_exception().

-type get_job_queue_snapshot_errors() ::
    server_exception() | 
    client_exception().

-type list_consumable_resources_errors() ::
    server_exception() | 
    client_exception().

-type list_jobs_errors() ::
    server_exception() | 
    client_exception().

-type list_jobs_by_consumable_resource_errors() ::
    server_exception() | 
    client_exception().

-type list_scheduling_policies_errors() ::
    server_exception() | 
    client_exception().

-type list_tags_for_resource_errors() ::
    server_exception() | 
    client_exception().

-type register_job_definition_errors() ::
    server_exception() | 
    client_exception().

-type submit_job_errors() ::
    server_exception() | 
    client_exception().

-type tag_resource_errors() ::
    server_exception() | 
    client_exception().

-type terminate_job_errors() ::
    server_exception() | 
    client_exception().

-type untag_resource_errors() ::
    server_exception() | 
    client_exception().

-type update_compute_environment_errors() ::
    server_exception() | 
    client_exception().

-type update_consumable_resource_errors() ::
    server_exception() | 
    client_exception().

-type update_job_queue_errors() ::
    server_exception() | 
    client_exception().

-type update_scheduling_policy_errors() ::
    server_exception() | 
    client_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a job in an Batch job queue.
%%
%% Jobs that are in a `SUBMITTED', `PENDING', or `RUNNABLE' state
%% are cancelled and the job status is updated to `FAILED'.
%%
%% A `PENDING' job is canceled after all dependency jobs are completed.
%% Therefore, it may take longer than expected to cancel a job in
%% `PENDING'
%% status.
%%
%% When you try to cancel an array parent job in `PENDING', Batch
%% attempts to
%% cancel all child jobs. The array parent job is canceled when all child
%% jobs are
%% completed.
%%
%% Jobs that progressed to the `STARTING' or
%% `RUNNING' state aren't canceled. However, the API operation still
%% succeeds, even
%% if no job is canceled. These jobs must be terminated with the
%% `TerminateJob'
%% operation.
-spec cancel_job(aws_client:aws_client(), cancel_job_request()) ->
    {ok, cancel_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, Input) ->
    cancel_job(Client, Input, []).

-spec cancel_job(aws_client:aws_client(), cancel_job_request(), proplists:proplist()) ->
    {ok, cancel_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/canceljob"],
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

%% @doc Creates an Batch compute environment.
%%
%% You can create `MANAGED' or
%% `UNMANAGED' compute environments. `MANAGED' compute environments
%% can
%% use Amazon EC2 or Fargate resources. `UNMANAGED' compute environments
%% can only use
%% EC2 resources.
%%
%% In a managed compute environment, Batch manages the capacity and instance
%% types of the
%% compute resources within the environment. This is based on the compute
%% resource specification
%% that you define or the launch template:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html
%% that you
%% specify when you create the compute environment. Either, you can choose to
%% use EC2 On-Demand
%% Instances and EC2 Spot Instances. Or, you can use Fargate and Fargate Spot
%% capacity in
%% your managed compute environment. You can optionally set a maximum price
%% so that Spot
%% Instances only launch when the Spot Instance price is less than a
%% specified percentage of the
%% On-Demand price.
%%
%% Multi-node parallel jobs aren't supported on Spot Instances.
%%
%% In an unmanaged compute environment, you can manage your own EC2 compute
%% resources and
%% have flexibility with how you configure your compute resources. For
%% example, you can use
%% custom AMIs. However, you must verify that each of your AMIs meet the
%% Amazon ECS container instance
%% AMI specification. For more information, see container instance AMIs:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html
%% in the
%% Amazon Elastic Container Service Developer Guide. After you created your
%% unmanaged compute environment,
%% you can use the `DescribeComputeEnvironments' operation to find the
%% Amazon ECS
%% cluster that's associated with it. Then, launch your container
%% instances into that Amazon ECS
%% cluster. For more information, see Launching an Amazon ECS container
%% instance:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% To create a compute environment that uses EKS resources, the caller must
%% have
%% permissions to call `eks:DescribeCluster'.
%%
%% Batch doesn't automatically upgrade the AMIs in a compute environment
%% after it's
%% created. For example, it also doesn't update the AMIs in your compute
%% environment when a
%% newer version of the Amazon ECS optimized AMI is available. You're
%% responsible for the management
%% of the guest operating system. This includes any updates and security
%% patches. You're also
%% responsible for any additional application software or utilities that you
%% install on the
%% compute resources. There are two ways to use a new AMI for your Batch
%% jobs. The original
%% method is to complete these steps:
%%
%% Create a new compute environment with the new AMI.
%%
%% Add the compute environment to an existing job queue.
%%
%% Remove the earlier compute environment from your job queue.
%%
%% Delete the earlier compute environment.
%%
%% In April 2022, Batch added enhanced support for updating compute
%% environments. For
%% more information, see Updating compute environments:
%% https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html.
%% To use the enhanced updating of compute environments to update AMIs,
%% follow these
%% rules:
%%
%% Either don't set the service role (`serviceRole') parameter or set
%% it to
%% the AWSBatchServiceRole service-linked role.
%%
%% Set the allocation strategy (`allocationStrategy') parameter to
%% `BEST_FIT_PROGRESSIVE', `SPOT_CAPACITY_OPTIMIZED', or
%% `SPOT_PRICE_CAPACITY_OPTIMIZED'.
%%
%% Set the update to latest image version (`updateToLatestImageVersion')
%% parameter to `true'. The `updateToLatestImageVersion' parameter
%% is used when you update a compute environment. This parameter is ignored
%% when you create
%% a compute environment.
%%
%% Don't specify an AMI ID in `imageId', `imageIdOverride' (in
%%
%% `ec2Configuration'
%% :
%% https://docs.aws.amazon.com/batch/latest/APIReference/API_Ec2Configuration.html),
%% or in the launch template
%% (`launchTemplate'). In that case, Batch selects the latest Amazon ECS
%% optimized AMI that's supported by Batch at the time the infrastructure
%% update is
%% initiated. Alternatively, you can specify the AMI ID in the `imageId'
%% or
%% `imageIdOverride' parameters, or the launch template identified by the
%% `LaunchTemplate' properties. Changing any of these properties starts
%% an
%% infrastructure update. If the AMI ID is specified in the launch template,
%% it can't be
%% replaced by specifying an AMI ID in either the `imageId' or
%% `imageIdOverride' parameters. It can only be replaced by specifying a
%% different launch template, or if the launch template version is set to
%% `$Default' or `$Latest', by setting either a new default version
%% for the launch template (if `$Default') or by adding a new version to
%% the
%% launch template (if `$Latest').
%%
%% If these rules are followed, any update that starts an infrastructure
%% update causes the
%% AMI ID to be re-selected. If the `version' setting in the launch
%% template
%% (`launchTemplate') is set to `$Latest' or `$Default', the
%% latest or default version of the launch template is evaluated up at the
%% time of the
%% infrastructure update, even if the `launchTemplate' wasn't
%% updated.
-spec create_compute_environment(aws_client:aws_client(), create_compute_environment_request()) ->
    {ok, create_compute_environment_response(), tuple()} |
    {error, any()} |
    {error, create_compute_environment_errors(), tuple()}.
create_compute_environment(Client, Input) ->
    create_compute_environment(Client, Input, []).

-spec create_compute_environment(aws_client:aws_client(), create_compute_environment_request(), proplists:proplist()) ->
    {ok, create_compute_environment_response(), tuple()} |
    {error, any()} |
    {error, create_compute_environment_errors(), tuple()}.
create_compute_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/createcomputeenvironment"],
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

%% @doc Creates an Batch consumable resource.
-spec create_consumable_resource(aws_client:aws_client(), create_consumable_resource_request()) ->
    {ok, create_consumable_resource_response(), tuple()} |
    {error, any()} |
    {error, create_consumable_resource_errors(), tuple()}.
create_consumable_resource(Client, Input) ->
    create_consumable_resource(Client, Input, []).

-spec create_consumable_resource(aws_client:aws_client(), create_consumable_resource_request(), proplists:proplist()) ->
    {ok, create_consumable_resource_response(), tuple()} |
    {error, any()} |
    {error, create_consumable_resource_errors(), tuple()}.
create_consumable_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/createconsumableresource"],
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

%% @doc Creates an Batch job queue.
%%
%% When you create a job queue, you associate one or more
%% compute environments to the queue and assign an order of preference for
%% the compute
%% environments.
%%
%% You also set a priority to the job queue that determines the order that
%% the Batch
%% scheduler places jobs onto its associated compute environments. For
%% example, if a compute
%% environment is associated with more than one job queue, the job queue with
%% a higher priority
%% is given preference for scheduling jobs to that compute environment.
-spec create_job_queue(aws_client:aws_client(), create_job_queue_request()) ->
    {ok, create_job_queue_response(), tuple()} |
    {error, any()} |
    {error, create_job_queue_errors(), tuple()}.
create_job_queue(Client, Input) ->
    create_job_queue(Client, Input, []).

-spec create_job_queue(aws_client:aws_client(), create_job_queue_request(), proplists:proplist()) ->
    {ok, create_job_queue_response(), tuple()} |
    {error, any()} |
    {error, create_job_queue_errors(), tuple()}.
create_job_queue(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/createjobqueue"],
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

%% @doc Creates an Batch scheduling policy.
-spec create_scheduling_policy(aws_client:aws_client(), create_scheduling_policy_request()) ->
    {ok, create_scheduling_policy_response(), tuple()} |
    {error, any()} |
    {error, create_scheduling_policy_errors(), tuple()}.
create_scheduling_policy(Client, Input) ->
    create_scheduling_policy(Client, Input, []).

-spec create_scheduling_policy(aws_client:aws_client(), create_scheduling_policy_request(), proplists:proplist()) ->
    {ok, create_scheduling_policy_response(), tuple()} |
    {error, any()} |
    {error, create_scheduling_policy_errors(), tuple()}.
create_scheduling_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/createschedulingpolicy"],
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

%% @doc Deletes an Batch compute environment.
%%
%% Before you can delete a compute environment, you must set its state to
%% `DISABLED' with the `UpdateComputeEnvironment' API operation and
%% disassociate it from any job queues with the `UpdateJobQueue' API
%% operation.
%% Compute environments that use Fargate resources must terminate all active
%% jobs on that
%% compute environment before deleting the compute environment. If this
%% isn't done, the compute
%% environment enters an invalid state.
-spec delete_compute_environment(aws_client:aws_client(), delete_compute_environment_request()) ->
    {ok, delete_compute_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_compute_environment_errors(), tuple()}.
delete_compute_environment(Client, Input) ->
    delete_compute_environment(Client, Input, []).

-spec delete_compute_environment(aws_client:aws_client(), delete_compute_environment_request(), proplists:proplist()) ->
    {ok, delete_compute_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_compute_environment_errors(), tuple()}.
delete_compute_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/deletecomputeenvironment"],
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

%% @doc Deletes the specified consumable resource.
-spec delete_consumable_resource(aws_client:aws_client(), delete_consumable_resource_request()) ->
    {ok, delete_consumable_resource_response(), tuple()} |
    {error, any()} |
    {error, delete_consumable_resource_errors(), tuple()}.
delete_consumable_resource(Client, Input) ->
    delete_consumable_resource(Client, Input, []).

-spec delete_consumable_resource(aws_client:aws_client(), delete_consumable_resource_request(), proplists:proplist()) ->
    {ok, delete_consumable_resource_response(), tuple()} |
    {error, any()} |
    {error, delete_consumable_resource_errors(), tuple()}.
delete_consumable_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/deleteconsumableresource"],
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

%% @doc Deletes the specified job queue.
%%
%% You must first disable submissions for a queue with the
%% `UpdateJobQueue' operation. All jobs in the queue are eventually
%% terminated
%% when you delete a job queue. The jobs are terminated at a rate of about 16
%% jobs each
%% second.
%%
%% It's not necessary to disassociate compute environments from a queue
%% before submitting a
%% `DeleteJobQueue' request.
-spec delete_job_queue(aws_client:aws_client(), delete_job_queue_request()) ->
    {ok, delete_job_queue_response(), tuple()} |
    {error, any()} |
    {error, delete_job_queue_errors(), tuple()}.
delete_job_queue(Client, Input) ->
    delete_job_queue(Client, Input, []).

-spec delete_job_queue(aws_client:aws_client(), delete_job_queue_request(), proplists:proplist()) ->
    {ok, delete_job_queue_response(), tuple()} |
    {error, any()} |
    {error, delete_job_queue_errors(), tuple()}.
delete_job_queue(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/deletejobqueue"],
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

%% @doc Deletes the specified scheduling policy.
%%
%% You can't delete a scheduling policy that's used in any job
%% queues.
-spec delete_scheduling_policy(aws_client:aws_client(), delete_scheduling_policy_request()) ->
    {ok, delete_scheduling_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_scheduling_policy_errors(), tuple()}.
delete_scheduling_policy(Client, Input) ->
    delete_scheduling_policy(Client, Input, []).

-spec delete_scheduling_policy(aws_client:aws_client(), delete_scheduling_policy_request(), proplists:proplist()) ->
    {ok, delete_scheduling_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_scheduling_policy_errors(), tuple()}.
delete_scheduling_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/deleteschedulingpolicy"],
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

%% @doc Deregisters an Batch job definition.
%%
%% Job definitions are permanently deleted after 180
%% days.
-spec deregister_job_definition(aws_client:aws_client(), deregister_job_definition_request()) ->
    {ok, deregister_job_definition_response(), tuple()} |
    {error, any()} |
    {error, deregister_job_definition_errors(), tuple()}.
deregister_job_definition(Client, Input) ->
    deregister_job_definition(Client, Input, []).

-spec deregister_job_definition(aws_client:aws_client(), deregister_job_definition_request(), proplists:proplist()) ->
    {ok, deregister_job_definition_response(), tuple()} |
    {error, any()} |
    {error, deregister_job_definition_errors(), tuple()}.
deregister_job_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/deregisterjobdefinition"],
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

%% @doc Describes one or more of your compute environments.
%%
%% If you're using an unmanaged compute environment, you can use the
%% `DescribeComputeEnvironment' operation to determine the
%% `ecsClusterArn' that you launch your Amazon ECS container instances
%% into.
-spec describe_compute_environments(aws_client:aws_client(), describe_compute_environments_request()) ->
    {ok, describe_compute_environments_response(), tuple()} |
    {error, any()} |
    {error, describe_compute_environments_errors(), tuple()}.
describe_compute_environments(Client, Input) ->
    describe_compute_environments(Client, Input, []).

-spec describe_compute_environments(aws_client:aws_client(), describe_compute_environments_request(), proplists:proplist()) ->
    {ok, describe_compute_environments_response(), tuple()} |
    {error, any()} |
    {error, describe_compute_environments_errors(), tuple()}.
describe_compute_environments(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describecomputeenvironments"],
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

%% @doc Returns a description of the specified consumable resource.
-spec describe_consumable_resource(aws_client:aws_client(), describe_consumable_resource_request()) ->
    {ok, describe_consumable_resource_response(), tuple()} |
    {error, any()} |
    {error, describe_consumable_resource_errors(), tuple()}.
describe_consumable_resource(Client, Input) ->
    describe_consumable_resource(Client, Input, []).

-spec describe_consumable_resource(aws_client:aws_client(), describe_consumable_resource_request(), proplists:proplist()) ->
    {ok, describe_consumable_resource_response(), tuple()} |
    {error, any()} |
    {error, describe_consumable_resource_errors(), tuple()}.
describe_consumable_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describeconsumableresource"],
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

%% @doc Describes a list of job definitions.
%%
%% You can specify a `status' (such as
%% `ACTIVE') to only return job definitions that match that status.
-spec describe_job_definitions(aws_client:aws_client(), describe_job_definitions_request()) ->
    {ok, describe_job_definitions_response(), tuple()} |
    {error, any()} |
    {error, describe_job_definitions_errors(), tuple()}.
describe_job_definitions(Client, Input) ->
    describe_job_definitions(Client, Input, []).

-spec describe_job_definitions(aws_client:aws_client(), describe_job_definitions_request(), proplists:proplist()) ->
    {ok, describe_job_definitions_response(), tuple()} |
    {error, any()} |
    {error, describe_job_definitions_errors(), tuple()}.
describe_job_definitions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describejobdefinitions"],
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

%% @doc Describes one or more of your job queues.
-spec describe_job_queues(aws_client:aws_client(), describe_job_queues_request()) ->
    {ok, describe_job_queues_response(), tuple()} |
    {error, any()} |
    {error, describe_job_queues_errors(), tuple()}.
describe_job_queues(Client, Input) ->
    describe_job_queues(Client, Input, []).

-spec describe_job_queues(aws_client:aws_client(), describe_job_queues_request(), proplists:proplist()) ->
    {ok, describe_job_queues_response(), tuple()} |
    {error, any()} |
    {error, describe_job_queues_errors(), tuple()}.
describe_job_queues(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describejobqueues"],
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

%% @doc Describes a list of Batch jobs.
-spec describe_jobs(aws_client:aws_client(), describe_jobs_request()) ->
    {ok, describe_jobs_response(), tuple()} |
    {error, any()} |
    {error, describe_jobs_errors(), tuple()}.
describe_jobs(Client, Input) ->
    describe_jobs(Client, Input, []).

-spec describe_jobs(aws_client:aws_client(), describe_jobs_request(), proplists:proplist()) ->
    {ok, describe_jobs_response(), tuple()} |
    {error, any()} |
    {error, describe_jobs_errors(), tuple()}.
describe_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describejobs"],
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

%% @doc Describes one or more of your scheduling policies.
-spec describe_scheduling_policies(aws_client:aws_client(), describe_scheduling_policies_request()) ->
    {ok, describe_scheduling_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_scheduling_policies_errors(), tuple()}.
describe_scheduling_policies(Client, Input) ->
    describe_scheduling_policies(Client, Input, []).

-spec describe_scheduling_policies(aws_client:aws_client(), describe_scheduling_policies_request(), proplists:proplist()) ->
    {ok, describe_scheduling_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_scheduling_policies_errors(), tuple()}.
describe_scheduling_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/describeschedulingpolicies"],
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

%% @doc Provides a list of the first 100 `RUNNABLE' jobs associated to a
%% single job queue.
-spec get_job_queue_snapshot(aws_client:aws_client(), get_job_queue_snapshot_request()) ->
    {ok, get_job_queue_snapshot_response(), tuple()} |
    {error, any()} |
    {error, get_job_queue_snapshot_errors(), tuple()}.
get_job_queue_snapshot(Client, Input) ->
    get_job_queue_snapshot(Client, Input, []).

-spec get_job_queue_snapshot(aws_client:aws_client(), get_job_queue_snapshot_request(), proplists:proplist()) ->
    {ok, get_job_queue_snapshot_response(), tuple()} |
    {error, any()} |
    {error, get_job_queue_snapshot_errors(), tuple()}.
get_job_queue_snapshot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/getjobqueuesnapshot"],
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

%% @doc Returns a list of Batch consumable resources.
-spec list_consumable_resources(aws_client:aws_client(), list_consumable_resources_request()) ->
    {ok, list_consumable_resources_response(), tuple()} |
    {error, any()} |
    {error, list_consumable_resources_errors(), tuple()}.
list_consumable_resources(Client, Input) ->
    list_consumable_resources(Client, Input, []).

-spec list_consumable_resources(aws_client:aws_client(), list_consumable_resources_request(), proplists:proplist()) ->
    {ok, list_consumable_resources_response(), tuple()} |
    {error, any()} |
    {error, list_consumable_resources_errors(), tuple()}.
list_consumable_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/listconsumableresources"],
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

%% @doc Returns a list of Batch jobs.
%%
%% You must specify only one of the following items:
%%
%% A job queue ID to return a list of jobs in that job queue
%%
%% A multi-node parallel job ID to return a list of nodes for that job
%%
%% An array job ID to return a list of the children for that job
%%
%% You can filter the results by job status with the `jobStatus'
%% parameter. If you
%% don't specify a status, only `RUNNING' jobs are returned.
-spec list_jobs(aws_client:aws_client(), list_jobs_request()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, Input) ->
    list_jobs(Client, Input, []).

-spec list_jobs(aws_client:aws_client(), list_jobs_request(), proplists:proplist()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/listjobs"],
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

%% @doc Returns a list of Batch jobs that require a specific consumable
%% resource.
-spec list_jobs_by_consumable_resource(aws_client:aws_client(), list_jobs_by_consumable_resource_request()) ->
    {ok, list_jobs_by_consumable_resource_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_by_consumable_resource_errors(), tuple()}.
list_jobs_by_consumable_resource(Client, Input) ->
    list_jobs_by_consumable_resource(Client, Input, []).

-spec list_jobs_by_consumable_resource(aws_client:aws_client(), list_jobs_by_consumable_resource_request(), proplists:proplist()) ->
    {ok, list_jobs_by_consumable_resource_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_by_consumable_resource_errors(), tuple()}.
list_jobs_by_consumable_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/listjobsbyconsumableresource"],
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

%% @doc Returns a list of Batch scheduling policies.
-spec list_scheduling_policies(aws_client:aws_client(), list_scheduling_policies_request()) ->
    {ok, list_scheduling_policies_response(), tuple()} |
    {error, any()} |
    {error, list_scheduling_policies_errors(), tuple()}.
list_scheduling_policies(Client, Input) ->
    list_scheduling_policies(Client, Input, []).

-spec list_scheduling_policies(aws_client:aws_client(), list_scheduling_policies_request(), proplists:proplist()) ->
    {ok, list_scheduling_policies_response(), tuple()} |
    {error, any()} |
    {error, list_scheduling_policies_errors(), tuple()}.
list_scheduling_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/listschedulingpolicies"],
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

%% @doc Lists the tags for an Batch resource.
%%
%% Batch resources that support tags are compute environments, jobs, job
%% definitions, job queues,
%% and scheduling policies. ARNs for child jobs of array and multi-node
%% parallel (MNP) jobs aren't supported.
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
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Registers an Batch job definition.
-spec register_job_definition(aws_client:aws_client(), register_job_definition_request()) ->
    {ok, register_job_definition_response(), tuple()} |
    {error, any()} |
    {error, register_job_definition_errors(), tuple()}.
register_job_definition(Client, Input) ->
    register_job_definition(Client, Input, []).

-spec register_job_definition(aws_client:aws_client(), register_job_definition_request(), proplists:proplist()) ->
    {ok, register_job_definition_response(), tuple()} |
    {error, any()} |
    {error, register_job_definition_errors(), tuple()}.
register_job_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/registerjobdefinition"],
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

%% @doc Submits an Batch job from a job definition.
%%
%% Parameters that are specified during `SubmitJob' override parameters
%% defined in the job definition. vCPU and memory
%% requirements that are specified in the `resourceRequirements' objects
%% in the job
%% definition are the exception. They can't be overridden this way using
%% the `memory'
%% and `vcpus' parameters. Rather, you must specify updates to job
%% definition
%% parameters in a `resourceRequirements' object that's included in
%% the
%% `containerOverrides' parameter.
%%
%% Job queues with a scheduling policy are limited to 500 active share
%% identifiers at
%% a time.
%%
%% Jobs that run on Fargate resources can't be guaranteed to run for more
%% than 14 days.
%% This is because, after 14 days, Fargate resources might become unavailable
%% and job might be
%% terminated.
-spec submit_job(aws_client:aws_client(), submit_job_request()) ->
    {ok, submit_job_response(), tuple()} |
    {error, any()} |
    {error, submit_job_errors(), tuple()}.
submit_job(Client, Input) ->
    submit_job(Client, Input, []).

-spec submit_job(aws_client:aws_client(), submit_job_request(), proplists:proplist()) ->
    {ok, submit_job_response(), tuple()} |
    {error, any()} |
    {error, submit_job_errors(), tuple()}.
submit_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/submitjob"],
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

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource aren't specified in the request
%% parameters, they aren't
%% changed. When a resource is deleted, the tags that are associated with
%% that resource are
%% deleted as well. Batch resources that support tags are compute
%% environments, jobs, job definitions, job queues,
%% and scheduling policies. ARNs for child jobs of array and multi-node
%% parallel (MNP) jobs aren't supported.
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
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Terminates a job in a job queue.
%%
%% Jobs that are in the `STARTING' or
%% `RUNNING' state are terminated, which causes them to transition to
%% `FAILED'. Jobs that have not progressed to the `STARTING' state
%% are
%% cancelled.
-spec terminate_job(aws_client:aws_client(), terminate_job_request()) ->
    {ok, terminate_job_response(), tuple()} |
    {error, any()} |
    {error, terminate_job_errors(), tuple()}.
terminate_job(Client, Input) ->
    terminate_job(Client, Input, []).

-spec terminate_job(aws_client:aws_client(), terminate_job_request(), proplists:proplist()) ->
    {ok, terminate_job_response(), tuple()} |
    {error, any()} |
    {error, terminate_job_errors(), tuple()}.
terminate_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/terminatejob"],
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

%% @doc Deletes specified tags from an Batch resource.
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
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Updates an Batch compute environment.
-spec update_compute_environment(aws_client:aws_client(), update_compute_environment_request()) ->
    {ok, update_compute_environment_response(), tuple()} |
    {error, any()} |
    {error, update_compute_environment_errors(), tuple()}.
update_compute_environment(Client, Input) ->
    update_compute_environment(Client, Input, []).

-spec update_compute_environment(aws_client:aws_client(), update_compute_environment_request(), proplists:proplist()) ->
    {ok, update_compute_environment_response(), tuple()} |
    {error, any()} |
    {error, update_compute_environment_errors(), tuple()}.
update_compute_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/updatecomputeenvironment"],
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

%% @doc Updates a consumable resource.
-spec update_consumable_resource(aws_client:aws_client(), update_consumable_resource_request()) ->
    {ok, update_consumable_resource_response(), tuple()} |
    {error, any()} |
    {error, update_consumable_resource_errors(), tuple()}.
update_consumable_resource(Client, Input) ->
    update_consumable_resource(Client, Input, []).

-spec update_consumable_resource(aws_client:aws_client(), update_consumable_resource_request(), proplists:proplist()) ->
    {ok, update_consumable_resource_response(), tuple()} |
    {error, any()} |
    {error, update_consumable_resource_errors(), tuple()}.
update_consumable_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/updateconsumableresource"],
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

%% @doc Updates a job queue.
-spec update_job_queue(aws_client:aws_client(), update_job_queue_request()) ->
    {ok, update_job_queue_response(), tuple()} |
    {error, any()} |
    {error, update_job_queue_errors(), tuple()}.
update_job_queue(Client, Input) ->
    update_job_queue(Client, Input, []).

-spec update_job_queue(aws_client:aws_client(), update_job_queue_request(), proplists:proplist()) ->
    {ok, update_job_queue_response(), tuple()} |
    {error, any()} |
    {error, update_job_queue_errors(), tuple()}.
update_job_queue(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/updatejobqueue"],
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

%% @doc Updates a scheduling policy.
-spec update_scheduling_policy(aws_client:aws_client(), update_scheduling_policy_request()) ->
    {ok, update_scheduling_policy_response(), tuple()} |
    {error, any()} |
    {error, update_scheduling_policy_errors(), tuple()}.
update_scheduling_policy(Client, Input) ->
    update_scheduling_policy(Client, Input, []).

-spec update_scheduling_policy(aws_client:aws_client(), update_scheduling_policy_request(), proplists:proplist()) ->
    {ok, update_scheduling_policy_response(), tuple()} |
    {error, any()} |
    {error, update_scheduling_policy_errors(), tuple()}.
update_scheduling_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/updateschedulingpolicy"],
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
    Client1 = Client#{service => <<"batch">>},
    Host = build_host(<<"batch">>, Client1),
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
