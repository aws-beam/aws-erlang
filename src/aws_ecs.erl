%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic Container Service
%%
%% Amazon Elastic Container Service (Amazon ECS) is a highly scalable, fast,
%% container management service.
%%
%% It makes it easy to run,
%% stop, and manage Docker containers. You can host your cluster on a
%% serverless infrastructure that's
%% managed by Amazon ECS by launching your services or tasks on Fargate. For
%% more control, you can host your
%% tasks on a cluster of Amazon Elastic Compute Cloud (Amazon EC2) or
%% External (on-premises) instances that you manage.
%%
%% Amazon ECS makes it easy to launch and stop container-based applications
%% with simple API calls. This makes
%% it easy to get the state of your cluster from a centralized service, and
%% gives you access to many
%% familiar Amazon EC2 features.
%%
%% You can use Amazon ECS to schedule the placement of containers across your
%% cluster based on your resource
%% needs, isolation policies, and availability requirements. With Amazon ECS,
%% you don't need to operate your
%% own cluster management and configuration management systems. You also
%% don't need to worry about scaling
%% your management infrastructure.
-module(aws_ecs).

-export([create_capacity_provider/2,
         create_capacity_provider/3,
         create_cluster/2,
         create_cluster/3,
         create_service/2,
         create_service/3,
         create_task_set/2,
         create_task_set/3,
         delete_account_setting/2,
         delete_account_setting/3,
         delete_attributes/2,
         delete_attributes/3,
         delete_capacity_provider/2,
         delete_capacity_provider/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_service/2,
         delete_service/3,
         delete_task_definitions/2,
         delete_task_definitions/3,
         delete_task_set/2,
         delete_task_set/3,
         deregister_container_instance/2,
         deregister_container_instance/3,
         deregister_task_definition/2,
         deregister_task_definition/3,
         describe_capacity_providers/2,
         describe_capacity_providers/3,
         describe_clusters/2,
         describe_clusters/3,
         describe_container_instances/2,
         describe_container_instances/3,
         describe_service_deployments/2,
         describe_service_deployments/3,
         describe_service_revisions/2,
         describe_service_revisions/3,
         describe_services/2,
         describe_services/3,
         describe_task_definition/2,
         describe_task_definition/3,
         describe_task_sets/2,
         describe_task_sets/3,
         describe_tasks/2,
         describe_tasks/3,
         discover_poll_endpoint/2,
         discover_poll_endpoint/3,
         execute_command/2,
         execute_command/3,
         get_task_protection/2,
         get_task_protection/3,
         list_account_settings/2,
         list_account_settings/3,
         list_attributes/2,
         list_attributes/3,
         list_clusters/2,
         list_clusters/3,
         list_container_instances/2,
         list_container_instances/3,
         list_service_deployments/2,
         list_service_deployments/3,
         list_services/2,
         list_services/3,
         list_services_by_namespace/2,
         list_services_by_namespace/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_task_definition_families/2,
         list_task_definition_families/3,
         list_task_definitions/2,
         list_task_definitions/3,
         list_tasks/2,
         list_tasks/3,
         put_account_setting/2,
         put_account_setting/3,
         put_account_setting_default/2,
         put_account_setting_default/3,
         put_attributes/2,
         put_attributes/3,
         put_cluster_capacity_providers/2,
         put_cluster_capacity_providers/3,
         register_container_instance/2,
         register_container_instance/3,
         register_task_definition/2,
         register_task_definition/3,
         run_task/2,
         run_task/3,
         start_task/2,
         start_task/3,
         stop_task/2,
         stop_task/3,
         submit_attachment_state_changes/2,
         submit_attachment_state_changes/3,
         submit_container_state_change/2,
         submit_container_state_change/3,
         submit_task_state_change/2,
         submit_task_state_change/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_capacity_provider/2,
         update_capacity_provider/3,
         update_cluster/2,
         update_cluster/3,
         update_cluster_settings/2,
         update_cluster_settings/3,
         update_container_agent/2,
         update_container_agent/3,
         update_container_instances_state/2,
         update_container_instances_state/3,
         update_service/2,
         update_service/3,
         update_service_primary_task_set/2,
         update_service_primary_task_set/3,
         update_task_protection/2,
         update_task_protection/3,
         update_task_set/2,
         update_task_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% service_registry() :: #{
%%   <<"containerName">> => string(),
%%   <<"containerPort">> => integer(),
%%   <<"port">> => integer(),
%%   <<"registryArn">> => string()
%% }
-type service_registry() :: #{binary() => any()}.

%% Example:
%% describe_task_definition_response() :: #{
%%   <<"tags">> => list(tag()()),
%%   <<"taskDefinition">> => task_definition()
%% }
-type describe_task_definition_response() :: #{binary() => any()}.

%% Example:
%% container_instance_health_status() :: #{
%%   <<"details">> => list(instance_health_check_result()()),
%%   <<"overallStatus">> => list(any())
%% }
-type container_instance_health_status() :: #{binary() => any()}.

%% Example:
%% delete_capacity_provider_response() :: #{
%%   <<"capacityProvider">> => capacity_provider()
%% }
-type delete_capacity_provider_response() :: #{binary() => any()}.

%% Example:
%% update_container_instances_state_response() :: #{
%%   <<"containerInstances">> => list(container_instance()()),
%%   <<"failures">> => list(failure()())
%% }
-type update_container_instances_state_response() :: #{binary() => any()}.

%% Example:
%% list_service_deployments_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"createdAt">> => created_at(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"service">> := string(),
%%   <<"status">> => list(list(any())())
%% }
-type list_service_deployments_request() :: #{binary() => any()}.

%% Example:
%% task_set() :: #{
%%   <<"capacityProviderStrategy">> => list(capacity_provider_strategy_item()()),
%%   <<"clusterArn">> => string(),
%%   <<"computedDesiredCount">> => integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"externalId">> => string(),
%%   <<"fargateEphemeralStorage">> => deployment_ephemeral_storage(),
%%   <<"id">> => string(),
%%   <<"launchType">> => list(any()),
%%   <<"loadBalancers">> => list(load_balancer()()),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"pendingCount">> => integer(),
%%   <<"platformFamily">> => string(),
%%   <<"platformVersion">> => string(),
%%   <<"runningCount">> => integer(),
%%   <<"scale">> => scale(),
%%   <<"serviceArn">> => string(),
%%   <<"serviceRegistries">> => list(service_registry()()),
%%   <<"stabilityStatus">> => list(any()),
%%   <<"stabilityStatusAt">> => non_neg_integer(),
%%   <<"startedBy">> => string(),
%%   <<"status">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"taskDefinition">> => string(),
%%   <<"taskSetArn">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type task_set() :: #{binary() => any()}.

%% Example:
%% task() :: #{
%%   <<"healthStatus">> => list(any()),
%%   <<"containers">> => list(container()()),
%%   <<"attachments">> => list(attachment()()),
%%   <<"taskDefinitionArn">> => string(),
%%   <<"stoppedReason">> => string(),
%%   <<"pullStoppedAt">> => non_neg_integer(),
%%   <<"clusterArn">> => string(),
%%   <<"stoppingAt">> => non_neg_integer(),
%%   <<"availabilityZone">> => string(),
%%   <<"connectivity">> => list(any()),
%%   <<"executionStoppedAt">> => non_neg_integer(),
%%   <<"stoppedAt">> => non_neg_integer(),
%%   <<"desiredStatus">> => string(),
%%   <<"platformVersion">> => string(),
%%   <<"platformFamily">> => string(),
%%   <<"ephemeralStorage">> => ephemeral_storage(),
%%   <<"containerInstanceArn">> => string(),
%%   <<"overrides">> => task_override(),
%%   <<"attributes">> => list(attribute()()),
%%   <<"pullStartedAt">> => non_neg_integer(),
%%   <<"stopCode">> => list(any()),
%%   <<"version">> => float(),
%%   <<"enableExecuteCommand">> => boolean(),
%%   <<"launchType">> => list(any()),
%%   <<"capacityProviderName">> => string(),
%%   <<"cpu">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"lastStatus">> => string(),
%%   <<"taskArn">> => string(),
%%   <<"connectivityAt">> => non_neg_integer(),
%%   <<"memory">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"group">> => string(),
%%   <<"startedBy">> => string(),
%%   <<"inferenceAccelerators">> => list(inference_accelerator()()),
%%   <<"fargateEphemeralStorage">> => task_ephemeral_storage(),
%%   <<"startedAt">> => non_neg_integer()
%% }
-type task() :: #{binary() => any()}.

%% Example:
%% delete_capacity_provider_request() :: #{
%%   <<"capacityProvider">> := string()
%% }
-type delete_capacity_provider_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type update_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% stop_task_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"reason">> => string(),
%%   <<"task">> := string()
%% }
-type stop_task_request() :: #{binary() => any()}.

%% Example:
%% describe_container_instances_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"containerInstances">> := list(string()()),
%%   <<"include">> => list(list(any())())
%% }
-type describe_container_instances_request() :: #{binary() => any()}.

%% Example:
%% system_control() :: #{
%%   <<"namespace">> => string(),
%%   <<"value">> => string()
%% }
-type system_control() :: #{binary() => any()}.

%% Example:
%% container() :: #{
%%   <<"containerArn">> => string(),
%%   <<"cpu">> => string(),
%%   <<"exitCode">> => integer(),
%%   <<"gpuIds">> => list(string()()),
%%   <<"healthStatus">> => list(any()),
%%   <<"image">> => string(),
%%   <<"imageDigest">> => string(),
%%   <<"lastStatus">> => string(),
%%   <<"managedAgents">> => list(managed_agent()()),
%%   <<"memory">> => string(),
%%   <<"memoryReservation">> => string(),
%%   <<"name">> => string(),
%%   <<"networkBindings">> => list(network_binding()()),
%%   <<"networkInterfaces">> => list(network_interface()()),
%%   <<"reason">> => string(),
%%   <<"runtimeId">> => string(),
%%   <<"taskArn">> => string()
%% }
-type container() :: #{binary() => any()}.

%% Example:
%% service_deployment_circuit_breaker() :: #{
%%   <<"failureCount">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"threshold">> => integer()
%% }
-type service_deployment_circuit_breaker() :: #{binary() => any()}.

%% Example:
%% inference_accelerator() :: #{
%%   <<"deviceName">> => string(),
%%   <<"deviceType">> => string()
%% }
-type inference_accelerator() :: #{binary() => any()}.

%% Example:
%% run_task_response() :: #{
%%   <<"failures">> => list(failure()()),
%%   <<"tasks">> => list(task()())
%% }
-type run_task_response() :: #{binary() => any()}.

%% Example:
%% proxy_configuration() :: #{
%%   <<"containerName">> => string(),
%%   <<"properties">> => list(key_value_pair()()),
%%   <<"type">> => list(any())
%% }
-type proxy_configuration() :: #{binary() => any()}.

%% Example:
%% attribute_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type attribute_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% setting() :: #{
%%   <<"name">> => list(any()),
%%   <<"principalArn">> => string(),
%%   <<"type">> => list(any()),
%%   <<"value">> => string()
%% }
-type setting() :: #{binary() => any()}.

%% Example:
%% deployment() :: #{
%%   <<"capacityProviderStrategy">> => list(capacity_provider_strategy_item()()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"desiredCount">> => integer(),
%%   <<"failedTasks">> => integer(),
%%   <<"fargateEphemeralStorage">> => deployment_ephemeral_storage(),
%%   <<"id">> => string(),
%%   <<"launchType">> => list(any()),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"pendingCount">> => integer(),
%%   <<"platformFamily">> => string(),
%%   <<"platformVersion">> => string(),
%%   <<"rolloutState">> => list(any()),
%%   <<"rolloutStateReason">> => string(),
%%   <<"runningCount">> => integer(),
%%   <<"serviceConnectConfiguration">> => service_connect_configuration(),
%%   <<"serviceConnectResources">> => list(service_connect_service_resource()()),
%%   <<"status">> => string(),
%%   <<"taskDefinition">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"volumeConfigurations">> => list(service_volume_configuration()()),
%%   <<"vpcLatticeConfigurations">> => list(vpc_lattice_configuration()())
%% }
-type deployment() :: #{binary() => any()}.

%% Example:
%% service_event() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"message">> => string()
%% }
-type service_event() :: #{binary() => any()}.

%% Example:
%% describe_services_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"include">> => list(list(any())()),
%%   <<"services">> := list(string()())
%% }
-type describe_services_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% task_override() :: #{
%%   <<"containerOverrides">> => list(container_override()()),
%%   <<"cpu">> => string(),
%%   <<"ephemeralStorage">> => ephemeral_storage(),
%%   <<"executionRoleArn">> => string(),
%%   <<"inferenceAcceleratorOverrides">> => list(inference_accelerator_override()()),
%%   <<"memory">> => string(),
%%   <<"taskRoleArn">> => string()
%% }
-type task_override() :: #{binary() => any()}.

%% Example:
%% describe_service_deployments_response() :: #{
%%   <<"failures">> => list(failure()()),
%%   <<"serviceDeployments">> => list(service_deployment()())
%% }
-type describe_service_deployments_response() :: #{binary() => any()}.

%% Example:
%% create_cluster_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type create_cluster_response() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% put_account_setting_default_request() :: #{
%%   <<"name">> := list(any()),
%%   <<"value">> := string()
%% }
-type put_account_setting_default_request() :: #{binary() => any()}.

%% Example:
%% register_container_instance_response() :: #{
%%   <<"containerInstance">> => container_instance()
%% }
-type register_container_instance_response() :: #{binary() => any()}.

%% Example:
%% create_task_set_request() :: #{
%%   <<"capacityProviderStrategy">> => list(capacity_provider_strategy_item()()),
%%   <<"clientToken">> => string(),
%%   <<"cluster">> := string(),
%%   <<"externalId">> => string(),
%%   <<"launchType">> => list(any()),
%%   <<"loadBalancers">> => list(load_balancer()()),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"platformVersion">> => string(),
%%   <<"scale">> => scale(),
%%   <<"service">> := string(),
%%   <<"serviceRegistries">> => list(service_registry()()),
%%   <<"tags">> => list(tag()()),
%%   <<"taskDefinition">> := string()
%% }
-type create_task_set_request() :: #{binary() => any()}.

%% Example:
%% start_task_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"containerInstances">> := list(string()()),
%%   <<"enableECSManagedTags">> => boolean(),
%%   <<"enableExecuteCommand">> => boolean(),
%%   <<"group">> => string(),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"overrides">> => task_override(),
%%   <<"propagateTags">> => list(any()),
%%   <<"referenceId">> => string(),
%%   <<"startedBy">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"taskDefinition">> := string(),
%%   <<"volumeConfigurations">> => list(task_volume_configuration()())
%% }
-type start_task_request() :: #{binary() => any()}.

%% Example:
%% delete_account_setting_response() :: #{
%%   <<"setting">> => setting()
%% }
-type delete_account_setting_response() :: #{binary() => any()}.

%% Example:
%% update_capacity_provider_request() :: #{
%%   <<"autoScalingGroupProvider">> := auto_scaling_group_provider_update(),
%%   <<"name">> := string()
%% }
-type update_capacity_provider_request() :: #{binary() => any()}.

%% Example:
%% put_account_setting_response() :: #{
%%   <<"setting">> => setting()
%% }
-type put_account_setting_response() :: #{binary() => any()}.

%% Example:
%% list_services_by_namespace_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"namespace">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_services_by_namespace_request() :: #{binary() => any()}.

%% Example:
%% get_task_protection_response() :: #{
%%   <<"failures">> => list(failure()()),
%%   <<"protectedTasks">> => list(protected_task()())
%% }
-type get_task_protection_response() :: #{binary() => any()}.

%% Example:
%% service_connect_service_resource() :: #{
%%   <<"discoveryArn">> => string(),
%%   <<"discoveryName">> => string()
%% }
-type service_connect_service_resource() :: #{binary() => any()}.

%% Example:
%% cluster_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type cluster_not_found_exception() :: #{binary() => any()}.

%% Example:
%% host_volume_properties() :: #{
%%   <<"sourcePath">> => string()
%% }
-type host_volume_properties() :: #{binary() => any()}.

%% Example:
%% network_interface() :: #{
%%   <<"attachmentId">> => string(),
%%   <<"ipv6Address">> => string(),
%%   <<"privateIpv4Address">> => string()
%% }
-type network_interface() :: #{binary() => any()}.

%% Example:
%% update_task_set_request() :: #{
%%   <<"cluster">> := string(),
%%   <<"scale">> := scale(),
%%   <<"service">> := string(),
%%   <<"taskSet">> := string()
%% }
-type update_task_set_request() :: #{binary() => any()}.

%% Example:
%% execute_command_configuration() :: #{
%%   <<"kmsKeyId">> => string(),
%%   <<"logConfiguration">> => execute_command_log_configuration(),
%%   <<"logging">> => list(any())
%% }
-type execute_command_configuration() :: #{binary() => any()}.

%% Example:
%% attachment() :: #{
%%   <<"details">> => list(key_value_pair()()),
%%   <<"id">> => string(),
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type attachment() :: #{binary() => any()}.

%% Example:
%% service_revision_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"pendingTaskCount">> => integer(),
%%   <<"requestedTaskCount">> => integer(),
%%   <<"runningTaskCount">> => integer()
%% }
-type service_revision_summary() :: #{binary() => any()}.

%% Example:
%% target_not_connected_exception() :: #{
%%   <<"message">> => string()
%% }
-type target_not_connected_exception() :: #{binary() => any()}.

%% Example:
%% service_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_not_found_exception() :: #{binary() => any()}.

%% Example:
%% service() :: #{
%%   <<"availabilityZoneRebalancing">> => list(any()),
%%   <<"capacityProviderStrategy">> => list(capacity_provider_strategy_item()()),
%%   <<"clusterArn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"deploymentConfiguration">> => deployment_configuration(),
%%   <<"deploymentController">> => deployment_controller(),
%%   <<"deployments">> => list(deployment()()),
%%   <<"desiredCount">> => integer(),
%%   <<"enableECSManagedTags">> => boolean(),
%%   <<"enableExecuteCommand">> => boolean(),
%%   <<"events">> => list(service_event()()),
%%   <<"healthCheckGracePeriodSeconds">> => integer(),
%%   <<"launchType">> => list(any()),
%%   <<"loadBalancers">> => list(load_balancer()()),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"pendingCount">> => integer(),
%%   <<"placementConstraints">> => list(placement_constraint()()),
%%   <<"placementStrategy">> => list(placement_strategy()()),
%%   <<"platformFamily">> => string(),
%%   <<"platformVersion">> => string(),
%%   <<"propagateTags">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"runningCount">> => integer(),
%%   <<"schedulingStrategy">> => list(any()),
%%   <<"serviceArn">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"serviceRegistries">> => list(service_registry()()),
%%   <<"status">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"taskDefinition">> => string(),
%%   <<"taskSets">> => list(task_set()())
%% }
-type service() :: #{binary() => any()}.

%% Example:
%% host_entry() :: #{
%%   <<"hostname">> => string(),
%%   <<"ipAddress">> => string()
%% }
-type host_entry() :: #{binary() => any()}.

%% Example:
%% list_task_definitions_request() :: #{
%%   <<"familyPrefix">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sort">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type list_task_definitions_request() :: #{binary() => any()}.

%% Example:
%% service_deployment_brief() :: #{
%%   <<"clusterArn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"finishedAt">> => non_neg_integer(),
%%   <<"serviceArn">> => string(),
%%   <<"serviceDeploymentArn">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"targetServiceRevisionArn">> => string()
%% }
-type service_deployment_brief() :: #{binary() => any()}.

%% Example:
%% task_volume_configuration() :: #{
%%   <<"managedEBSVolume">> => task_managed_ebs_volume_configuration(),
%%   <<"name">> => string()
%% }
-type task_volume_configuration() :: #{binary() => any()}.

%% Example:
%% managed_agent_state_change() :: #{
%%   <<"containerName">> => string(),
%%   <<"managedAgentName">> => list(any()),
%%   <<"reason">> => string(),
%%   <<"status">> => string()
%% }
-type managed_agent_state_change() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_task_set_response() :: #{
%%   <<"taskSet">> => task_set()
%% }
-type delete_task_set_response() :: #{binary() => any()}.

%% Example:
%% update_container_instances_state_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"containerInstances">> := list(string()()),
%%   <<"status">> := list(any())
%% }
-type update_container_instances_state_request() :: #{binary() => any()}.

%% Example:
%% docker_volume_configuration() :: #{
%%   <<"autoprovision">> => boolean(),
%%   <<"driver">> => string(),
%%   <<"driverOpts">> => map(),
%%   <<"labels">> => map(),
%%   <<"scope">> => list(any())
%% }
-type docker_volume_configuration() :: #{binary() => any()}.

%% Example:
%% update_task_protection_request() :: #{
%%   <<"cluster">> := string(),
%%   <<"expiresInMinutes">> => integer(),
%%   <<"protectionEnabled">> := boolean(),
%%   <<"tasks">> := list(string()())
%% }
-type update_task_protection_request() :: #{binary() => any()}.

%% Example:
%% update_cluster_request() :: #{
%%   <<"cluster">> := string(),
%%   <<"configuration">> => cluster_configuration(),
%%   <<"serviceConnectDefaults">> => cluster_service_connect_defaults_request(),
%%   <<"settings">> => list(cluster_setting()())
%% }
-type update_cluster_request() :: #{binary() => any()}.

%% Example:
%% register_container_instance_request() :: #{
%%   <<"attributes">> => list(attribute()()),
%%   <<"cluster">> => string(),
%%   <<"containerInstanceArn">> => string(),
%%   <<"instanceIdentityDocument">> => string(),
%%   <<"instanceIdentityDocumentSignature">> => string(),
%%   <<"platformDevices">> => list(platform_device()()),
%%   <<"tags">> => list(tag()()),
%%   <<"totalResources">> => list(resource()()),
%%   <<"versionInfo">> => version_info()
%% }
-type register_container_instance_request() :: #{binary() => any()}.

%% Example:
%% mount_point() :: #{
%%   <<"containerPath">> => string(),
%%   <<"readOnly">> => boolean(),
%%   <<"sourceVolume">> => string()
%% }
-type mount_point() :: #{binary() => any()}.

%% Example:
%% timeout_configuration() :: #{
%%   <<"idleTimeoutSeconds">> => integer(),
%%   <<"perRequestTimeoutSeconds">> => integer()
%% }
-type timeout_configuration() :: #{binary() => any()}.

%% Example:
%% managed_agent() :: #{
%%   <<"lastStartedAt">> => non_neg_integer(),
%%   <<"lastStatus">> => string(),
%%   <<"name">> => list(any()),
%%   <<"reason">> => string()
%% }
-type managed_agent() :: #{binary() => any()}.

%% Example:
%% cluster_configuration() :: #{
%%   <<"executeCommandConfiguration">> => execute_command_configuration(),
%%   <<"managedStorageConfiguration">> => managed_storage_configuration()
%% }
-type cluster_configuration() :: #{binary() => any()}.

%% Example:
%% deployment_alarms() :: #{
%%   <<"alarmNames">> => list(string()()),
%%   <<"enable">> => boolean(),
%%   <<"rollback">> => boolean()
%% }
-type deployment_alarms() :: #{binary() => any()}.

%% Example:
%% put_account_setting_request() :: #{
%%   <<"name">> := list(any()),
%%   <<"principalArn">> => string(),
%%   <<"value">> := string()
%% }
-type put_account_setting_request() :: #{binary() => any()}.

%% Example:
%% list_services_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"launchType">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"schedulingStrategy">> => list(any())
%% }
-type list_services_request() :: #{binary() => any()}.

%% Example:
%% execute_command_response() :: #{
%%   <<"clusterArn">> => string(),
%%   <<"containerArn">> => string(),
%%   <<"containerName">> => string(),
%%   <<"interactive">> => boolean(),
%%   <<"session">> => session(),
%%   <<"taskArn">> => string()
%% }
-type execute_command_response() :: #{binary() => any()}.

%% Example:
%% describe_services_response() :: #{
%%   <<"failures">> => list(failure()()),
%%   <<"services">> => list(service()())
%% }
-type describe_services_response() :: #{binary() => any()}.

%% Example:
%% task_managed_ebs_volume_termination_policy() :: #{
%%   <<"deleteOnTermination">> => boolean()
%% }
-type task_managed_ebs_volume_termination_policy() :: #{binary() => any()}.

%% Example:
%% deregister_task_definition_response() :: #{
%%   <<"taskDefinition">> => task_definition()
%% }
-type deregister_task_definition_response() :: #{binary() => any()}.

%% Example:
%% namespace_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type namespace_not_found_exception() :: #{binary() => any()}.

%% Example:
%% unsupported_feature_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_feature_exception() :: #{binary() => any()}.

%% Example:
%% deployment_configuration() :: #{
%%   <<"alarms">> => deployment_alarms(),
%%   <<"deploymentCircuitBreaker">> => deployment_circuit_breaker(),
%%   <<"maximumPercent">> => integer(),
%%   <<"minimumHealthyPercent">> => integer()
%% }
-type deployment_configuration() :: #{binary() => any()}.

%% Example:
%% list_account_settings_request() :: #{
%%   <<"effectiveSettings">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"name">> => list(any()),
%%   <<"nextToken">> => string(),
%%   <<"principalArn">> => string(),
%%   <<"value">> => string()
%% }
-type list_account_settings_request() :: #{binary() => any()}.

%% Example:
%% list_account_settings_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"settings">> => list(setting()())
%% }
-type list_account_settings_response() :: #{binary() => any()}.

%% Example:
%% rollback() :: #{
%%   <<"reason">> => string(),
%%   <<"serviceRevisionArn">> => string(),
%%   <<"startedAt">> => non_neg_integer()
%% }
-type rollback() :: #{binary() => any()}.

%% Example:
%% create_cluster_request() :: #{
%%   <<"capacityProviders">> => list(string()()),
%%   <<"clusterName">> => string(),
%%   <<"configuration">> => cluster_configuration(),
%%   <<"defaultCapacityProviderStrategy">> => list(capacity_provider_strategy_item()()),
%%   <<"serviceConnectDefaults">> => cluster_service_connect_defaults_request(),
%%   <<"settings">> => list(cluster_setting()()),
%%   <<"tags">> => list(tag()())
%% }
-type create_cluster_request() :: #{binary() => any()}.

%% Example:
%% container_restart_policy() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"ignoredExitCodes">> => list(integer()()),
%%   <<"restartAttemptPeriod">> => integer()
%% }
-type container_restart_policy() :: #{binary() => any()}.

%% Example:
%% list_service_deployments_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceDeployments">> => list(service_deployment_brief()())
%% }
-type list_service_deployments_response() :: #{binary() => any()}.

%% Example:
%% service_connect_configuration() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"logConfiguration">> => log_configuration(),
%%   <<"namespace">> => string(),
%%   <<"services">> => list(service_connect_service()())
%% }
-type service_connect_configuration() :: #{binary() => any()}.

%% Example:
%% client_exception() :: #{
%%   <<"message">> => string()
%% }
-type client_exception() :: #{binary() => any()}.

%% Example:
%% describe_capacity_providers_request() :: #{
%%   <<"capacityProviders">> => list(string()()),
%%   <<"include">> => list(list(any())()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_capacity_providers_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceIds">> => list(string()())
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% container_definition() :: #{
%%   <<"pseudoTerminal">> => boolean(),
%%   <<"essential">> => boolean(),
%%   <<"hostname">> => string(),
%%   <<"links">> => list(string()()),
%%   <<"secrets">> => list(secret()()),
%%   <<"portMappings">> => list(port_mapping()()),
%%   <<"entryPoint">> => list(string()()),
%%   <<"environment">> => list(key_value_pair()()),
%%   <<"environmentFiles">> => list(environment_file()()),
%%   <<"readonlyRootFilesystem">> => boolean(),
%%   <<"resourceRequirements">> => list(resource_requirement()()),
%%   <<"dockerSecurityOptions">> => list(string()()),
%%   <<"dnsSearchDomains">> => list(string()()),
%%   <<"volumesFrom">> => list(volume_from()()),
%%   <<"interactive">> => boolean(),
%%   <<"privileged">> => boolean(),
%%   <<"stopTimeout">> => integer(),
%%   <<"logConfiguration">> => log_configuration(),
%%   <<"dependsOn">> => list(container_dependency()()),
%%   <<"ulimits">> => list(ulimit()()),
%%   <<"cpu">> => integer(),
%%   <<"mountPoints">> => list(mount_point()()),
%%   <<"memoryReservation">> => integer(),
%%   <<"dnsServers">> => list(string()()),
%%   <<"extraHosts">> => list(host_entry()()),
%%   <<"memory">> => integer(),
%%   <<"command">> => list(string()()),
%%   <<"linuxParameters">> => linux_parameters(),
%%   <<"firelensConfiguration">> => firelens_configuration(),
%%   <<"healthCheck">> => health_check(),
%%   <<"restartPolicy">> => container_restart_policy(),
%%   <<"systemControls">> => list(system_control()()),
%%   <<"workingDirectory">> => string(),
%%   <<"versionConsistency">> => list(any()),
%%   <<"startTimeout">> => integer(),
%%   <<"credentialSpecs">> => list(string()()),
%%   <<"repositoryCredentials">> => repository_credentials(),
%%   <<"dockerLabels">> => map(),
%%   <<"image">> => string(),
%%   <<"user">> => string(),
%%   <<"disableNetworking">> => boolean(),
%%   <<"name">> => string()
%% }
-type container_definition() :: #{binary() => any()}.

%% Example:
%% managed_storage_configuration() :: #{
%%   <<"fargateEphemeralStorageKmsKeyId">> => string(),
%%   <<"kmsKeyId">> => string()
%% }
-type managed_storage_configuration() :: #{binary() => any()}.

%% Example:
%% vpc_lattice_configuration() :: #{
%%   <<"portName">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"targetGroupArn">> => string()
%% }
-type vpc_lattice_configuration() :: #{binary() => any()}.

%% Example:
%% get_task_protection_request() :: #{
%%   <<"cluster">> := string(),
%%   <<"tasks">> => list(string()())
%% }
-type get_task_protection_request() :: #{binary() => any()}.

%% Example:
%% cluster_contains_tasks_exception() :: #{
%%   <<"message">> => string()
%% }
-type cluster_contains_tasks_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% list_task_definitions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"taskDefinitionArns">> => list(string()())
%% }
-type list_task_definitions_response() :: #{binary() => any()}.

%% Example:
%% container_override() :: #{
%%   <<"command">> => list(string()()),
%%   <<"cpu">> => integer(),
%%   <<"environment">> => list(key_value_pair()()),
%%   <<"environmentFiles">> => list(environment_file()()),
%%   <<"memory">> => integer(),
%%   <<"memoryReservation">> => integer(),
%%   <<"name">> => string(),
%%   <<"resourceRequirements">> => list(resource_requirement()())
%% }
-type container_override() :: #{binary() => any()}.

%% Example:
%% ulimit() :: #{
%%   <<"hardLimit">> => integer(),
%%   <<"name">> => list(any()),
%%   <<"softLimit">> => integer()
%% }
-type ulimit() :: #{binary() => any()}.

%% Example:
%% execute_command_log_configuration() :: #{
%%   <<"cloudWatchEncryptionEnabled">> => boolean(),
%%   <<"cloudWatchLogGroupName">> => string(),
%%   <<"s3BucketName">> => string(),
%%   <<"s3EncryptionEnabled">> => boolean(),
%%   <<"s3KeyPrefix">> => string()
%% }
-type execute_command_log_configuration() :: #{binary() => any()}.

%% Example:
%% cluster() :: #{
%%   <<"activeServicesCount">> => integer(),
%%   <<"attachments">> => list(attachment()()),
%%   <<"attachmentsStatus">> => string(),
%%   <<"capacityProviders">> => list(string()()),
%%   <<"clusterArn">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"configuration">> => cluster_configuration(),
%%   <<"defaultCapacityProviderStrategy">> => list(capacity_provider_strategy_item()()),
%%   <<"pendingTasksCount">> => integer(),
%%   <<"registeredContainerInstancesCount">> => integer(),
%%   <<"runningTasksCount">> => integer(),
%%   <<"serviceConnectDefaults">> => cluster_service_connect_defaults(),
%%   <<"settings">> => list(cluster_setting()()),
%%   <<"statistics">> => list(key_value_pair()()),
%%   <<"status">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type cluster() :: #{binary() => any()}.

%% Example:
%% attachment_state_change() :: #{
%%   <<"attachmentArn">> => string(),
%%   <<"status">> => string()
%% }
-type attachment_state_change() :: #{binary() => any()}.

%% Example:
%% list_services_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceArns">> => list(string()())
%% }
-type list_services_response() :: #{binary() => any()}.

%% Example:
%% describe_service_revisions_response() :: #{
%%   <<"failures">> => list(failure()()),
%%   <<"serviceRevisions">> => list(service_revision()())
%% }
-type describe_service_revisions_response() :: #{binary() => any()}.

%% Example:
%% service_deployment_alarms() :: #{
%%   <<"alarmNames">> => list(string()()),
%%   <<"status">> => list(any()),
%%   <<"triggeredAlarmNames">> => list(string()())
%% }
-type service_deployment_alarms() :: #{binary() => any()}.

%% Example:
%% service_not_active_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_not_active_exception() :: #{binary() => any()}.

%% Example:
%% cluster_setting() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => string()
%% }
-type cluster_setting() :: #{binary() => any()}.

%% Example:
%% delete_task_definitions_request() :: #{
%%   <<"taskDefinitions">> := list(string()())
%% }
-type delete_task_definitions_request() :: #{binary() => any()}.

%% Example:
%% describe_task_sets_request() :: #{
%%   <<"cluster">> := string(),
%%   <<"include">> => list(list(any())()),
%%   <<"service">> := string(),
%%   <<"taskSets">> => list(string()())
%% }
-type describe_task_sets_request() :: #{binary() => any()}.

%% Example:
%% submit_container_state_change_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"containerName">> => string(),
%%   <<"exitCode">> => integer(),
%%   <<"networkBindings">> => list(network_binding()()),
%%   <<"reason">> => string(),
%%   <<"runtimeId">> => string(),
%%   <<"status">> => string(),
%%   <<"task">> => string()
%% }
-type submit_container_state_change_request() :: #{binary() => any()}.

%% Example:
%% create_service_request() :: #{
%%   <<"availabilityZoneRebalancing">> => list(any()),
%%   <<"capacityProviderStrategy">> => list(capacity_provider_strategy_item()()),
%%   <<"clientToken">> => string(),
%%   <<"cluster">> => string(),
%%   <<"deploymentConfiguration">> => deployment_configuration(),
%%   <<"deploymentController">> => deployment_controller(),
%%   <<"desiredCount">> => integer(),
%%   <<"enableECSManagedTags">> => boolean(),
%%   <<"enableExecuteCommand">> => boolean(),
%%   <<"healthCheckGracePeriodSeconds">> => integer(),
%%   <<"launchType">> => list(any()),
%%   <<"loadBalancers">> => list(load_balancer()()),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"placementConstraints">> => list(placement_constraint()()),
%%   <<"placementStrategy">> => list(placement_strategy()()),
%%   <<"platformVersion">> => string(),
%%   <<"propagateTags">> => list(any()),
%%   <<"role">> => string(),
%%   <<"schedulingStrategy">> => list(any()),
%%   <<"serviceConnectConfiguration">> => service_connect_configuration(),
%%   <<"serviceName">> := string(),
%%   <<"serviceRegistries">> => list(service_registry()()),
%%   <<"tags">> => list(tag()()),
%%   <<"taskDefinition">> => string(),
%%   <<"volumeConfigurations">> => list(service_volume_configuration()()),
%%   <<"vpcLatticeConfigurations">> => list(vpc_lattice_configuration()())
%% }
-type create_service_request() :: #{binary() => any()}.

%% Example:
%% task_definition_placement_constraint() :: #{
%%   <<"expression">> => string(),
%%   <<"type">> => list(any())
%% }
-type task_definition_placement_constraint() :: #{binary() => any()}.

%% Example:
%% list_task_definition_families_response() :: #{
%%   <<"families">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_task_definition_families_response() :: #{binary() => any()}.

%% Example:
%% container_image() :: #{
%%   <<"containerName">> => string(),
%%   <<"image">> => string(),
%%   <<"imageDigest">> => string()
%% }
-type container_image() :: #{binary() => any()}.

%% Example:
%% update_task_set_response() :: #{
%%   <<"taskSet">> => task_set()
%% }
-type update_task_set_response() :: #{binary() => any()}.

%% Example:
%% delete_attributes_response() :: #{
%%   <<"attributes">> => list(attribute()())
%% }
-type delete_attributes_response() :: #{binary() => any()}.

%% Example:
%% describe_tasks_response() :: #{
%%   <<"failures">> => list(failure()()),
%%   <<"tasks">> => list(task()())
%% }
-type describe_tasks_response() :: #{binary() => any()}.

%% Example:
%% deployment_circuit_breaker() :: #{
%%   <<"enable">> => boolean(),
%%   <<"rollback">> => boolean()
%% }
-type deployment_circuit_breaker() :: #{binary() => any()}.

%% Example:
%% describe_container_instances_response() :: #{
%%   <<"containerInstances">> => list(container_instance()()),
%%   <<"failures">> => list(failure()())
%% }
-type describe_container_instances_response() :: #{binary() => any()}.

%% Example:
%% container_state_change() :: #{
%%   <<"containerName">> => string(),
%%   <<"exitCode">> => integer(),
%%   <<"imageDigest">> => string(),
%%   <<"networkBindings">> => list(network_binding()()),
%%   <<"reason">> => string(),
%%   <<"runtimeId">> => string(),
%%   <<"status">> => string()
%% }
-type container_state_change() :: #{binary() => any()}.

%% Example:
%% secret() :: #{
%%   <<"name">> => string(),
%%   <<"valueFrom">> => string()
%% }
-type secret() :: #{binary() => any()}.

%% Example:
%% put_cluster_capacity_providers_request() :: #{
%%   <<"capacityProviders">> := list(string()()),
%%   <<"cluster">> := string(),
%%   <<"defaultCapacityProviderStrategy">> := list(capacity_provider_strategy_item()())
%% }
-type put_cluster_capacity_providers_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group_provider_update() :: #{
%%   <<"managedDraining">> => list(any()),
%%   <<"managedScaling">> => managed_scaling(),
%%   <<"managedTerminationProtection">> => list(any())
%% }
-type auto_scaling_group_provider_update() :: #{binary() => any()}.

%% Example:
%% instance_health_check_result() :: #{
%%   <<"lastStatusChange">> => non_neg_integer(),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type instance_health_check_result() :: #{binary() => any()}.

%% Example:
%% network_binding() :: #{
%%   <<"bindIP">> => string(),
%%   <<"containerPort">> => integer(),
%%   <<"containerPortRange">> => string(),
%%   <<"hostPort">> => integer(),
%%   <<"hostPortRange">> => string(),
%%   <<"protocol">> => list(any())
%% }
-type network_binding() :: #{binary() => any()}.

%% Example:
%% service_deployment() :: #{
%%   <<"alarms">> => service_deployment_alarms(),
%%   <<"clusterArn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deploymentCircuitBreaker">> => service_deployment_circuit_breaker(),
%%   <<"deploymentConfiguration">> => deployment_configuration(),
%%   <<"finishedAt">> => non_neg_integer(),
%%   <<"rollback">> => rollback(),
%%   <<"serviceArn">> => string(),
%%   <<"serviceDeploymentArn">> => string(),
%%   <<"sourceServiceRevisions">> => list(service_revision_summary()()),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"stoppedAt">> => non_neg_integer(),
%%   <<"targetServiceRevision">> => service_revision_summary(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type service_deployment() :: #{binary() => any()}.

%% Example:
%% describe_task_sets_response() :: #{
%%   <<"failures">> => list(failure()()),
%%   <<"taskSets">> => list(task_set()())
%% }
-type describe_task_sets_response() :: #{binary() => any()}.

%% Example:
%% deregister_container_instance_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"containerInstance">> := string(),
%%   <<"force">> => boolean()
%% }
-type deregister_container_instance_request() :: #{binary() => any()}.

%% Example:
%% list_container_instances_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"filter">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_container_instances_request() :: #{binary() => any()}.

%% Example:
%% submit_task_state_change_request() :: #{
%%   <<"attachments">> => list(attachment_state_change()()),
%%   <<"cluster">> => string(),
%%   <<"containers">> => list(container_state_change()()),
%%   <<"executionStoppedAt">> => non_neg_integer(),
%%   <<"managedAgents">> => list(managed_agent_state_change()()),
%%   <<"pullStartedAt">> => non_neg_integer(),
%%   <<"pullStoppedAt">> => non_neg_integer(),
%%   <<"reason">> => string(),
%%   <<"status">> => string(),
%%   <<"task">> => string()
%% }
-type submit_task_state_change_request() :: #{binary() => any()}.

%% Example:
%% health_check() :: #{
%%   <<"command">> => list(string()()),
%%   <<"interval">> => integer(),
%%   <<"retries">> => integer(),
%%   <<"startPeriod">> => integer(),
%%   <<"timeout">> => integer()
%% }
-type health_check() :: #{binary() => any()}.

%% Example:
%% update_container_agent_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"containerInstance">> := string()
%% }
-type update_container_agent_request() :: #{binary() => any()}.

%% Example:
%% ephemeral_storage() :: #{
%%   <<"sizeInGiB">> => integer()
%% }
-type ephemeral_storage() :: #{binary() => any()}.

%% Example:
%% submit_attachment_state_changes_response() :: #{
%%   <<"acknowledgment">> => string()
%% }
-type submit_attachment_state_changes_response() :: #{binary() => any()}.

%% Example:
%% list_clusters_response() :: #{
%%   <<"clusterArns">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_clusters_response() :: #{binary() => any()}.

%% Example:
%% task_set_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type task_set_not_found_exception() :: #{binary() => any()}.

%% Example:
%% session() :: #{
%%   <<"sessionId">> => string(),
%%   <<"streamUrl">> => string(),
%%   <<"tokenValue">> => string()
%% }
-type session() :: #{binary() => any()}.

%% Example:
%% delete_cluster_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type delete_cluster_response() :: #{binary() => any()}.

%% Example:
%% create_capacity_provider_response() :: #{
%%   <<"capacityProvider">> => capacity_provider()
%% }
-type create_capacity_provider_response() :: #{binary() => any()}.

%% Example:
%% update_container_agent_response() :: #{
%%   <<"containerInstance">> => container_instance()
%% }
-type update_container_agent_response() :: #{binary() => any()}.

%% Example:
%% put_attributes_response() :: #{
%%   <<"attributes">> => list(attribute()())
%% }
-type put_attributes_response() :: #{binary() => any()}.

%% Example:
%% task_definition() :: #{
%%   <<"compatibilities">> => list(list(any())()),
%%   <<"containerDefinitions">> => list(container_definition()()),
%%   <<"cpu">> => string(),
%%   <<"deregisteredAt">> => non_neg_integer(),
%%   <<"ephemeralStorage">> => ephemeral_storage(),
%%   <<"executionRoleArn">> => string(),
%%   <<"family">> => string(),
%%   <<"inferenceAccelerators">> => list(inference_accelerator()()),
%%   <<"ipcMode">> => list(any()),
%%   <<"memory">> => string(),
%%   <<"networkMode">> => list(any()),
%%   <<"pidMode">> => list(any()),
%%   <<"placementConstraints">> => list(task_definition_placement_constraint()()),
%%   <<"proxyConfiguration">> => proxy_configuration(),
%%   <<"registeredAt">> => non_neg_integer(),
%%   <<"registeredBy">> => string(),
%%   <<"requiresAttributes">> => list(attribute()()),
%%   <<"requiresCompatibilities">> => list(list(any())()),
%%   <<"revision">> => integer(),
%%   <<"runtimePlatform">> => runtime_platform(),
%%   <<"status">> => list(any()),
%%   <<"taskDefinitionArn">> => string(),
%%   <<"taskRoleArn">> => string(),
%%   <<"volumes">> => list(volume()())
%% }
-type task_definition() :: #{binary() => any()}.

%% Example:
%% list_container_instances_response() :: #{
%%   <<"containerInstanceArns">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_container_instances_response() :: #{binary() => any()}.

%% Example:
%% update_cluster_settings_request() :: #{
%%   <<"cluster">> := string(),
%%   <<"settings">> := list(cluster_setting()())
%% }
-type update_cluster_settings_request() :: #{binary() => any()}.

%% Example:
%% update_service_request() :: #{
%%   <<"availabilityZoneRebalancing">> => list(any()),
%%   <<"capacityProviderStrategy">> => list(capacity_provider_strategy_item()()),
%%   <<"cluster">> => string(),
%%   <<"deploymentConfiguration">> => deployment_configuration(),
%%   <<"desiredCount">> => integer(),
%%   <<"enableECSManagedTags">> => boolean(),
%%   <<"enableExecuteCommand">> => boolean(),
%%   <<"forceNewDeployment">> => boolean(),
%%   <<"healthCheckGracePeriodSeconds">> => integer(),
%%   <<"loadBalancers">> => list(load_balancer()()),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"placementConstraints">> => list(placement_constraint()()),
%%   <<"placementStrategy">> => list(placement_strategy()()),
%%   <<"platformVersion">> => string(),
%%   <<"propagateTags">> => list(any()),
%%   <<"service">> := string(),
%%   <<"serviceConnectConfiguration">> => service_connect_configuration(),
%%   <<"serviceRegistries">> => list(service_registry()()),
%%   <<"taskDefinition">> => string(),
%%   <<"volumeConfigurations">> => list(service_volume_configuration()()),
%%   <<"vpcLatticeConfigurations">> => list(vpc_lattice_configuration()())
%% }
-type update_service_request() :: #{binary() => any()}.

%% Example:
%% ebs_tag_specification() :: #{
%%   <<"propagateTags">> => list(any()),
%%   <<"resourceType">> => list(any()),
%%   <<"tags">> => list(tag()())
%% }
-type ebs_tag_specification() :: #{binary() => any()}.

%% Example:
%% deployment_controller() :: #{
%%   <<"type">> => list(any())
%% }
-type deployment_controller() :: #{binary() => any()}.

%% Example:
%% put_account_setting_default_response() :: #{
%%   <<"setting">> => setting()
%% }
-type put_account_setting_default_response() :: #{binary() => any()}.

%% Example:
%% discover_poll_endpoint_response() :: #{
%%   <<"endpoint">> => string(),
%%   <<"serviceConnectEndpoint">> => string(),
%%   <<"telemetryEndpoint">> => string()
%% }
-type discover_poll_endpoint_response() :: #{binary() => any()}.

%% Example:
%% list_clusters_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_clusters_request() :: #{binary() => any()}.

%% Example:
%% describe_task_definition_request() :: #{
%%   <<"include">> => list(list(any())()),
%%   <<"taskDefinition">> := string()
%% }
-type describe_task_definition_request() :: #{binary() => any()}.

%% Example:
%% f_sx_windows_file_server_authorization_config() :: #{
%%   <<"credentialsParameter">> => string(),
%%   <<"domain">> => string()
%% }
-type f_sx_windows_file_server_authorization_config() :: #{binary() => any()}.

%% Example:
%% update_capacity_provider_response() :: #{
%%   <<"capacityProvider">> => capacity_provider()
%% }
-type update_capacity_provider_response() :: #{binary() => any()}.

%% Example:
%% platform_unknown_exception() :: #{
%%   <<"message">> => string()
%% }
-type platform_unknown_exception() :: #{binary() => any()}.

%% Example:
%% delete_attributes_request() :: #{
%%   <<"attributes">> := list(attribute()()),
%%   <<"cluster">> => string()
%% }
-type delete_attributes_request() :: #{binary() => any()}.

%% Example:
%% e_f_s_authorization_config() :: #{
%%   <<"accessPointId">> => string(),
%%   <<"iam">> => list(any())
%% }
-type e_f_s_authorization_config() :: #{binary() => any()}.

%% Example:
%% update_task_protection_response() :: #{
%%   <<"failures">> => list(failure()()),
%%   <<"protectedTasks">> => list(protected_task()())
%% }
-type update_task_protection_response() :: #{binary() => any()}.

%% Example:
%% delete_task_set_request() :: #{
%%   <<"cluster">> := string(),
%%   <<"force">> => boolean(),
%%   <<"service">> := string(),
%%   <<"taskSet">> := string()
%% }
-type delete_task_set_request() :: #{binary() => any()}.

%% Example:
%% cluster_contains_container_instances_exception() :: #{
%%   <<"message">> => string()
%% }
-type cluster_contains_container_instances_exception() :: #{binary() => any()}.

%% Example:
%% submit_container_state_change_response() :: #{
%%   <<"acknowledgment">> => string()
%% }
-type submit_container_state_change_response() :: #{binary() => any()}.

%% Example:
%% list_task_definition_families_request() :: #{
%%   <<"familyPrefix">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_task_definition_families_request() :: #{binary() => any()}.

%% Example:
%% delete_cluster_request() :: #{
%%   <<"cluster">> := string()
%% }
-type delete_cluster_request() :: #{binary() => any()}.

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
%% update_cluster_settings_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type update_cluster_settings_response() :: #{binary() => any()}.

%% Example:
%% capacity_provider_strategy_item() :: #{
%%   <<"base">> => integer(),
%%   <<"capacityProvider">> => string(),
%%   <<"weight">> => integer()
%% }
-type capacity_provider_strategy_item() :: #{binary() => any()}.

%% Example:
%% no_update_available_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_update_available_exception() :: #{binary() => any()}.

%% Example:
%% delete_task_definitions_response() :: #{
%%   <<"failures">> => list(failure()()),
%%   <<"taskDefinitions">> => list(task_definition()())
%% }
-type delete_task_definitions_response() :: #{binary() => any()}.

%% Example:
%% placement_constraint() :: #{
%%   <<"expression">> => string(),
%%   <<"type">> => list(any())
%% }
-type placement_constraint() :: #{binary() => any()}.

%% Example:
%% network_configuration() :: #{
%%   <<"awsvpcConfiguration">> => aws_vpc_configuration()
%% }
-type network_configuration() :: #{binary() => any()}.

%% Example:
%% managed_scaling() :: #{
%%   <<"instanceWarmupPeriod">> => integer(),
%%   <<"maximumScalingStepSize">> => integer(),
%%   <<"minimumScalingStepSize">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"targetCapacity">> => integer()
%% }
-type managed_scaling() :: #{binary() => any()}.

%% Example:
%% created_at() :: #{
%%   <<"after">> => non_neg_integer(),
%%   <<"before">> => non_neg_integer()
%% }
-type created_at() :: #{binary() => any()}.

%% Example:
%% volume() :: #{
%%   <<"configuredAtLaunch">> => boolean(),
%%   <<"dockerVolumeConfiguration">> => docker_volume_configuration(),
%%   <<"efsVolumeConfiguration">> => e_f_s_volume_configuration(),
%%   <<"fsxWindowsFileServerVolumeConfiguration">> => f_sx_windows_file_server_volume_configuration(),
%%   <<"host">> => host_volume_properties(),
%%   <<"name">> => string()
%% }
-type volume() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% missing_version_exception() :: #{
%%   <<"message">> => string()
%% }
-type missing_version_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% register_task_definition_request() :: #{
%%   <<"containerDefinitions">> := list(container_definition()()),
%%   <<"cpu">> => string(),
%%   <<"ephemeralStorage">> => ephemeral_storage(),
%%   <<"executionRoleArn">> => string(),
%%   <<"family">> := string(),
%%   <<"inferenceAccelerators">> => list(inference_accelerator()()),
%%   <<"ipcMode">> => list(any()),
%%   <<"memory">> => string(),
%%   <<"networkMode">> => list(any()),
%%   <<"pidMode">> => list(any()),
%%   <<"placementConstraints">> => list(task_definition_placement_constraint()()),
%%   <<"proxyConfiguration">> => proxy_configuration(),
%%   <<"requiresCompatibilities">> => list(list(any())()),
%%   <<"runtimePlatform">> => runtime_platform(),
%%   <<"tags">> => list(tag()()),
%%   <<"taskRoleArn">> => string(),
%%   <<"volumes">> => list(volume()())
%% }
-type register_task_definition_request() :: #{binary() => any()}.

%% Example:
%% describe_tasks_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"include">> => list(list(any())()),
%%   <<"tasks">> := list(string()())
%% }
-type describe_tasks_request() :: #{binary() => any()}.

%% Example:
%% inference_accelerator_override() :: #{
%%   <<"deviceName">> => string(),
%%   <<"deviceType">> => string()
%% }
-type inference_accelerator_override() :: #{binary() => any()}.

%% Example:
%% auto_scaling_group_provider() :: #{
%%   <<"autoScalingGroupArn">> => string(),
%%   <<"managedDraining">> => list(any()),
%%   <<"managedScaling">> => managed_scaling(),
%%   <<"managedTerminationProtection">> => list(any())
%% }
-type auto_scaling_group_provider() :: #{binary() => any()}.

%% Example:
%% platform_task_definition_incompatibility_exception() :: #{
%%   <<"message">> => string()
%% }
-type platform_task_definition_incompatibility_exception() :: #{binary() => any()}.

%% Example:
%% port_mapping() :: #{
%%   <<"appProtocol">> => list(any()),
%%   <<"containerPort">> => integer(),
%%   <<"containerPortRange">> => string(),
%%   <<"hostPort">> => integer(),
%%   <<"name">> => string(),
%%   <<"protocol">> => list(any())
%% }
-type port_mapping() :: #{binary() => any()}.

%% Example:
%% describe_clusters_response() :: #{
%%   <<"clusters">> => list(cluster()()),
%%   <<"failures">> => list(failure()())
%% }
-type describe_clusters_response() :: #{binary() => any()}.

%% Example:
%% start_task_response() :: #{
%%   <<"failures">> => list(failure()()),
%%   <<"tasks">> => list(task()())
%% }
-type start_task_response() :: #{binary() => any()}.

%% Example:
%% load_balancer() :: #{
%%   <<"containerName">> => string(),
%%   <<"containerPort">> => integer(),
%%   <<"loadBalancerName">> => string(),
%%   <<"targetGroupArn">> => string()
%% }
-type load_balancer() :: #{binary() => any()}.

%% Example:
%% key_value_pair() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type key_value_pair() :: #{binary() => any()}.

%% Example:
%% cluster_service_connect_defaults() :: #{
%%   <<"namespace">> => string()
%% }
-type cluster_service_connect_defaults() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% kernel_capabilities() :: #{
%%   <<"add">> => list(string()()),
%%   <<"drop">> => list(string()())
%% }
-type kernel_capabilities() :: #{binary() => any()}.

%% Example:
%% execute_command_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"command">> := string(),
%%   <<"container">> => string(),
%%   <<"interactive">> := boolean(),
%%   <<"task">> := string()
%% }
-type execute_command_request() :: #{binary() => any()}.

%% Example:
%% update_service_primary_task_set_request() :: #{
%%   <<"cluster">> := string(),
%%   <<"primaryTaskSet">> := string(),
%%   <<"service">> := string()
%% }
-type update_service_primary_task_set_request() :: #{binary() => any()}.

%% Example:
%% runtime_platform() :: #{
%%   <<"cpuArchitecture">> => list(any()),
%%   <<"operatingSystemFamily">> => list(any())
%% }
-type runtime_platform() :: #{binary() => any()}.

%% Example:
%% target_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type target_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_service_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"force">> => boolean(),
%%   <<"service">> := string()
%% }
-type delete_service_request() :: #{binary() => any()}.

%% Example:
%% linux_parameters() :: #{
%%   <<"capabilities">> => kernel_capabilities(),
%%   <<"devices">> => list(device()()),
%%   <<"initProcessEnabled">> => boolean(),
%%   <<"maxSwap">> => integer(),
%%   <<"sharedMemorySize">> => integer(),
%%   <<"swappiness">> => integer(),
%%   <<"tmpfs">> => list(tmpfs()())
%% }
-type linux_parameters() :: #{binary() => any()}.

%% Example:
%% submit_task_state_change_response() :: #{
%%   <<"acknowledgment">> => string()
%% }
-type submit_task_state_change_response() :: #{binary() => any()}.

%% Example:
%% service_connect_service() :: #{
%%   <<"clientAliases">> => list(service_connect_client_alias()()),
%%   <<"discoveryName">> => string(),
%%   <<"ingressPortOverride">> => integer(),
%%   <<"portName">> => string(),
%%   <<"timeout">> => timeout_configuration(),
%%   <<"tls">> => service_connect_tls_configuration()
%% }
-type service_connect_service() :: #{binary() => any()}.

%% Example:
%% scale() :: #{
%%   <<"unit">> => list(any()),
%%   <<"value">> => float()
%% }
-type scale() :: #{binary() => any()}.

%% Example:
%% server_exception() :: #{
%%   <<"message">> => string()
%% }
-type server_exception() :: #{binary() => any()}.

%% Example:
%% platform_device() :: #{
%%   <<"id">> => string(),
%%   <<"type">> => list(any())
%% }
-type platform_device() :: #{binary() => any()}.

%% Example:
%% discover_poll_endpoint_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"containerInstance">> => string()
%% }
-type discover_poll_endpoint_request() :: #{binary() => any()}.

%% Example:
%% describe_service_deployments_request() :: #{
%%   <<"serviceDeploymentArns">> := list(string()())
%% }
-type describe_service_deployments_request() :: #{binary() => any()}.

%% Example:
%% cluster_contains_services_exception() :: #{
%%   <<"message">> => string()
%% }
-type cluster_contains_services_exception() :: #{binary() => any()}.

%% Example:
%% blocked_exception() :: #{
%%   <<"message">> => string()
%% }
-type blocked_exception() :: #{binary() => any()}.

%% Example:
%% attribute() :: #{
%%   <<"name">> => string(),
%%   <<"targetId">> => string(),
%%   <<"targetType">> => list(any()),
%%   <<"value">> => string()
%% }
-type attribute() :: #{binary() => any()}.

%% Example:
%% list_tasks_request() :: #{
%%   <<"cluster">> => string(),
%%   <<"containerInstance">> => string(),
%%   <<"desiredStatus">> => list(any()),
%%   <<"family">> => string(),
%%   <<"launchType">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"startedBy">> => string()
%% }
-type list_tasks_request() :: #{binary() => any()}.

%% Example:
%% task_ephemeral_storage() :: #{
%%   <<"kmsKeyId">> => string(),
%%   <<"sizeInGiB">> => integer()
%% }
-type task_ephemeral_storage() :: #{binary() => any()}.

%% Example:
%% describe_capacity_providers_response() :: #{
%%   <<"capacityProviders">> => list(capacity_provider()()),
%%   <<"failures">> => list(failure()()),
%%   <<"nextToken">> => string()
%% }
-type describe_capacity_providers_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% failure() :: #{
%%   <<"arn">> => string(),
%%   <<"detail">> => string(),
%%   <<"reason">> => string()
%% }
-type failure() :: #{binary() => any()}.

%% Example:
%% stop_task_response() :: #{
%%   <<"task">> => task()
%% }
-type stop_task_response() :: #{binary() => any()}.

%% Example:
%% list_services_by_namespace_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceArns">> => list(string()())
%% }
-type list_services_by_namespace_response() :: #{binary() => any()}.

%% Example:
%% service_connect_client_alias() :: #{
%%   <<"dnsName">> => string(),
%%   <<"port">> => integer()
%% }
-type service_connect_client_alias() :: #{binary() => any()}.

%% Example:
%% aws_vpc_configuration() :: #{
%%   <<"assignPublicIp">> => list(any()),
%%   <<"securityGroups">> => list(string()()),
%%   <<"subnets">> => list(string()())
%% }
-type aws_vpc_configuration() :: #{binary() => any()}.

%% Example:
%% capacity_provider() :: #{
%%   <<"autoScalingGroupProvider">> => auto_scaling_group_provider(),
%%   <<"capacityProviderArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => list(tag()()),
%%   <<"updateStatus">> => list(any()),
%%   <<"updateStatusReason">> => string()
%% }
-type capacity_provider() :: #{binary() => any()}.

%% Example:
%% create_capacity_provider_request() :: #{
%%   <<"autoScalingGroupProvider">> := auto_scaling_group_provider(),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_capacity_provider_request() :: #{binary() => any()}.

%% Example:
%% put_attributes_request() :: #{
%%   <<"attributes">> := list(attribute()()),
%%   <<"cluster">> => string()
%% }
-type put_attributes_request() :: #{binary() => any()}.

%% Example:
%% put_cluster_capacity_providers_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type put_cluster_capacity_providers_response() :: #{binary() => any()}.

%% Example:
%% protected_task() :: #{
%%   <<"expirationDate">> => non_neg_integer(),
%%   <<"protectionEnabled">> => boolean(),
%%   <<"taskArn">> => string()
%% }
-type protected_task() :: #{binary() => any()}.

%% Example:
%% service_connect_tls_configuration() :: #{
%%   <<"issuerCertificateAuthority">> => service_connect_tls_certificate_authority(),
%%   <<"kmsKey">> => string(),
%%   <<"roleArn">> => string()
%% }
-type service_connect_tls_configuration() :: #{binary() => any()}.

%% Example:
%% service_revision() :: #{
%%   <<"capacityProviderStrategy">> => list(capacity_provider_strategy_item()()),
%%   <<"clusterArn">> => string(),
%%   <<"containerImages">> => list(container_image()()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"fargateEphemeralStorage">> => deployment_ephemeral_storage(),
%%   <<"guardDutyEnabled">> => boolean(),
%%   <<"launchType">> => list(any()),
%%   <<"loadBalancers">> => list(load_balancer()()),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"platformFamily">> => string(),
%%   <<"platformVersion">> => string(),
%%   <<"serviceArn">> => string(),
%%   <<"serviceConnectConfiguration">> => service_connect_configuration(),
%%   <<"serviceRegistries">> => list(service_registry()()),
%%   <<"serviceRevisionArn">> => string(),
%%   <<"taskDefinition">> => string(),
%%   <<"volumeConfigurations">> => list(service_volume_configuration()()),
%%   <<"vpcLatticeConfigurations">> => list(vpc_lattice_configuration()())
%% }
-type service_revision() :: #{binary() => any()}.

%% Example:
%% list_attributes_request() :: #{
%%   <<"attributeName">> => string(),
%%   <<"attributeValue">> => string(),
%%   <<"cluster">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"targetType">> := list(any())
%% }
-type list_attributes_request() :: #{binary() => any()}.

%% Example:
%% update_service_response() :: #{
%%   <<"service">> => service()
%% }
-type update_service_response() :: #{binary() => any()}.

%% Example:
%% volume_from() :: #{
%%   <<"readOnly">> => boolean(),
%%   <<"sourceContainer">> => string()
%% }
-type volume_from() :: #{binary() => any()}.

%% Example:
%% delete_service_response() :: #{
%%   <<"service">> => service()
%% }
-type delete_service_response() :: #{binary() => any()}.

%% Example:
%% device() :: #{
%%   <<"containerPath">> => string(),
%%   <<"hostPath">> => string(),
%%   <<"permissions">> => list(list(any())())
%% }
-type device() :: #{binary() => any()}.

%% Example:
%% submit_attachment_state_changes_request() :: #{
%%   <<"attachments">> := list(attachment_state_change()()),
%%   <<"cluster">> => string()
%% }
-type submit_attachment_state_changes_request() :: #{binary() => any()}.

%% Example:
%% delete_account_setting_request() :: #{
%%   <<"name">> := list(any()),
%%   <<"principalArn">> => string()
%% }
-type delete_account_setting_request() :: #{binary() => any()}.

%% Example:
%% create_task_set_response() :: #{
%%   <<"taskSet">> => task_set()
%% }
-type create_task_set_response() :: #{binary() => any()}.

%% Example:
%% service_volume_configuration() :: #{
%%   <<"managedEBSVolume">> => service_managed_ebs_volume_configuration(),
%%   <<"name">> => string()
%% }
-type service_volume_configuration() :: #{binary() => any()}.

%% Example:
%% describe_service_revisions_request() :: #{
%%   <<"serviceRevisionArns">> := list(string()())
%% }
-type describe_service_revisions_request() :: #{binary() => any()}.

%% Example:
%% list_tasks_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"taskArns">> => list(string()())
%% }
-type list_tasks_response() :: #{binary() => any()}.

%% Example:
%% create_service_response() :: #{
%%   <<"service">> => service()
%% }
-type create_service_response() :: #{binary() => any()}.

%% Example:
%% task_managed_ebs_volume_configuration() :: #{
%%   <<"encrypted">> => boolean(),
%%   <<"filesystemType">> => list(any()),
%%   <<"iops">> => integer(),
%%   <<"kmsKeyId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"sizeInGiB">> => integer(),
%%   <<"snapshotId">> => string(),
%%   <<"tagSpecifications">> => list(ebs_tag_specification()()),
%%   <<"terminationPolicy">> => task_managed_ebs_volume_termination_policy(),
%%   <<"throughput">> => integer(),
%%   <<"volumeType">> => string()
%% }
-type task_managed_ebs_volume_configuration() :: #{binary() => any()}.

%% Example:
%% log_configuration() :: #{
%%   <<"logDriver">> => list(any()),
%%   <<"options">> => map(),
%%   <<"secretOptions">> => list(secret()())
%% }
-type log_configuration() :: #{binary() => any()}.

%% Example:
%% container_instance() :: #{
%%   <<"agentConnected">> => boolean(),
%%   <<"agentUpdateStatus">> => list(any()),
%%   <<"attachments">> => list(attachment()()),
%%   <<"attributes">> => list(attribute()()),
%%   <<"capacityProviderName">> => string(),
%%   <<"containerInstanceArn">> => string(),
%%   <<"ec2InstanceId">> => string(),
%%   <<"healthStatus">> => container_instance_health_status(),
%%   <<"pendingTasksCount">> => integer(),
%%   <<"registeredAt">> => non_neg_integer(),
%%   <<"registeredResources">> => list(resource()()),
%%   <<"remainingResources">> => list(resource()()),
%%   <<"runningTasksCount">> => integer(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"version">> => float(),
%%   <<"versionInfo">> => version_info()
%% }
-type container_instance() :: #{binary() => any()}.

%% Example:
%% service_connect_tls_certificate_authority() :: #{
%%   <<"awsPcaAuthorityArn">> => string()
%% }
-type service_connect_tls_certificate_authority() :: #{binary() => any()}.

%% Example:
%% deregister_task_definition_request() :: #{
%%   <<"taskDefinition">> := string()
%% }
-type deregister_task_definition_request() :: #{binary() => any()}.

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
%% version_info() :: #{
%%   <<"agentHash">> => string(),
%%   <<"agentVersion">> => string(),
%%   <<"dockerVersion">> => string()
%% }
-type version_info() :: #{binary() => any()}.

%% Example:
%% update_service_primary_task_set_response() :: #{
%%   <<"taskSet">> => task_set()
%% }
-type update_service_primary_task_set_response() :: #{binary() => any()}.

%% Example:
%% service_managed_ebs_volume_configuration() :: #{
%%   <<"encrypted">> => boolean(),
%%   <<"filesystemType">> => list(any()),
%%   <<"iops">> => integer(),
%%   <<"kmsKeyId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"sizeInGiB">> => integer(),
%%   <<"snapshotId">> => string(),
%%   <<"tagSpecifications">> => list(ebs_tag_specification()()),
%%   <<"throughput">> => integer(),
%%   <<"volumeType">> => string()
%% }
-type service_managed_ebs_volume_configuration() :: #{binary() => any()}.

%% Example:
%% register_task_definition_response() :: #{
%%   <<"tags">> => list(tag()()),
%%   <<"taskDefinition">> => task_definition()
%% }
-type register_task_definition_response() :: #{binary() => any()}.

%% Example:
%% describe_clusters_request() :: #{
%%   <<"clusters">> => list(string()()),
%%   <<"include">> => list(list(any())())
%% }
-type describe_clusters_request() :: #{binary() => any()}.

%% Example:
%% run_task_request() :: #{
%%   <<"capacityProviderStrategy">> => list(capacity_provider_strategy_item()()),
%%   <<"clientToken">> => string(),
%%   <<"cluster">> => string(),
%%   <<"count">> => integer(),
%%   <<"enableECSManagedTags">> => boolean(),
%%   <<"enableExecuteCommand">> => boolean(),
%%   <<"group">> => string(),
%%   <<"launchType">> => list(any()),
%%   <<"networkConfiguration">> => network_configuration(),
%%   <<"overrides">> => task_override(),
%%   <<"placementConstraints">> => list(placement_constraint()()),
%%   <<"placementStrategy">> => list(placement_strategy()()),
%%   <<"platformVersion">> => string(),
%%   <<"propagateTags">> => list(any()),
%%   <<"referenceId">> => string(),
%%   <<"startedBy">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"taskDefinition">> := string(),
%%   <<"volumeConfigurations">> => list(task_volume_configuration()())
%% }
-type run_task_request() :: #{binary() => any()}.

%% Example:
%% deregister_container_instance_response() :: #{
%%   <<"containerInstance">> => container_instance()
%% }
-type deregister_container_instance_response() :: #{binary() => any()}.

%% Example:
%% deployment_ephemeral_storage() :: #{
%%   <<"kmsKeyId">> => string()
%% }
-type deployment_ephemeral_storage() :: #{binary() => any()}.

%% Example:
%% cluster_service_connect_defaults_request() :: #{
%%   <<"namespace">> => string()
%% }
-type cluster_service_connect_defaults_request() :: #{binary() => any()}.

%% Example:
%% list_attributes_response() :: #{
%%   <<"attributes">> => list(attribute()()),
%%   <<"nextToken">> => string()
%% }
-type list_attributes_response() :: #{binary() => any()}.

%% Example:
%% repository_credentials() :: #{
%%   <<"credentialsParameter">> => string()
%% }
-type repository_credentials() :: #{binary() => any()}.

%% Example:
%% f_sx_windows_file_server_volume_configuration() :: #{
%%   <<"authorizationConfig">> => f_sx_windows_file_server_authorization_config(),
%%   <<"fileSystemId">> => string(),
%%   <<"rootDirectory">> => string()
%% }
-type f_sx_windows_file_server_volume_configuration() :: #{binary() => any()}.

%% Example:
%% tmpfs() :: #{
%%   <<"containerPath">> => string(),
%%   <<"mountOptions">> => list(string()()),
%%   <<"size">> => integer()
%% }
-type tmpfs() :: #{binary() => any()}.

%% Example:
%% environment_file() :: #{
%%   <<"type">> => list(any()),
%%   <<"value">> => string()
%% }
-type environment_file() :: #{binary() => any()}.

%% Example:
%% placement_strategy() :: #{
%%   <<"field">> => string(),
%%   <<"type">> => list(any())
%% }
-type placement_strategy() :: #{binary() => any()}.

%% Example:
%% update_cluster_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type update_cluster_response() :: #{binary() => any()}.

%% Example:
%% container_dependency() :: #{
%%   <<"condition">> => list(any()),
%%   <<"containerName">> => string()
%% }
-type container_dependency() :: #{binary() => any()}.

%% Example:
%% resource() :: #{
%%   <<"doubleValue">> => float(),
%%   <<"integerValue">> => integer(),
%%   <<"longValue">> => float(),
%%   <<"name">> => string(),
%%   <<"stringSetValue">> => list(string()()),
%%   <<"type">> => string()
%% }
-type resource() :: #{binary() => any()}.

-type create_capacity_provider_errors() ::
    limit_exceeded_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    update_in_progress_exception().

-type create_cluster_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    namespace_not_found_exception().

-type create_service_errors() ::
    server_exception() | 
    platform_task_definition_incompatibility_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    platform_unknown_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    namespace_not_found_exception() | 
    cluster_not_found_exception().

-type create_task_set_errors() ::
    server_exception() | 
    platform_task_definition_incompatibility_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    platform_unknown_exception() | 
    service_not_active_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    namespace_not_found_exception() | 
    service_not_found_exception() | 
    cluster_not_found_exception().

-type delete_account_setting_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type delete_attributes_errors() ::
    target_not_found_exception() | 
    invalid_parameter_exception() | 
    cluster_not_found_exception().

-type delete_capacity_provider_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type delete_cluster_errors() ::
    cluster_contains_services_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    cluster_contains_container_instances_exception() | 
    cluster_contains_tasks_exception() | 
    client_exception() | 
    cluster_not_found_exception() | 
    update_in_progress_exception().

-type delete_service_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    service_not_found_exception() | 
    cluster_not_found_exception().

-type delete_task_definitions_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    client_exception().

-type delete_task_set_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    task_set_not_found_exception() | 
    service_not_active_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    service_not_found_exception() | 
    cluster_not_found_exception().

-type deregister_container_instance_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type deregister_task_definition_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type describe_capacity_providers_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type describe_clusters_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type describe_container_instances_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type describe_service_deployments_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    service_not_found_exception() | 
    cluster_not_found_exception().

-type describe_service_revisions_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    service_not_found_exception() | 
    cluster_not_found_exception().

-type describe_services_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type describe_task_definition_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type describe_task_sets_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_not_active_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    service_not_found_exception() | 
    cluster_not_found_exception().

-type describe_tasks_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type discover_poll_endpoint_errors() ::
    server_exception() | 
    client_exception().

-type execute_command_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    client_exception() | 
    target_not_connected_exception() | 
    cluster_not_found_exception().

-type get_task_protection_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    cluster_not_found_exception().

-type list_account_settings_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type list_attributes_errors() ::
    invalid_parameter_exception() | 
    cluster_not_found_exception().

-type list_clusters_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type list_container_instances_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type list_service_deployments_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    service_not_found_exception().

-type list_services_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type list_services_by_namespace_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    namespace_not_found_exception().

-type list_tags_for_resource_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type list_task_definition_families_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type list_task_definitions_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type list_tasks_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    service_not_found_exception() | 
    cluster_not_found_exception().

-type put_account_setting_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type put_account_setting_default_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type put_attributes_errors() ::
    target_not_found_exception() | 
    invalid_parameter_exception() | 
    cluster_not_found_exception() | 
    attribute_limit_exceeded_exception().

-type put_cluster_capacity_providers_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception() | 
    resource_in_use_exception() | 
    update_in_progress_exception().

-type register_container_instance_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type register_task_definition_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type run_task_errors() ::
    blocked_exception() | 
    server_exception() | 
    platform_task_definition_incompatibility_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    platform_unknown_exception() | 
    conflict_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    cluster_not_found_exception().

-type start_task_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    cluster_not_found_exception().

-type stop_task_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type submit_attachment_state_changes_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    client_exception().

-type submit_container_state_change_errors() ::
    server_exception() | 
    access_denied_exception() | 
    client_exception().

-type submit_task_state_change_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    client_exception().

-type tag_resource_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type untag_resource_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type update_capacity_provider_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception().

-type update_cluster_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    namespace_not_found_exception() | 
    cluster_not_found_exception().

-type update_cluster_settings_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type update_container_agent_errors() ::
    server_exception() | 
    missing_version_exception() | 
    invalid_parameter_exception() | 
    no_update_available_exception() | 
    client_exception() | 
    cluster_not_found_exception() | 
    update_in_progress_exception().

-type update_container_instances_state_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    client_exception() | 
    cluster_not_found_exception().

-type update_service_errors() ::
    server_exception() | 
    platform_task_definition_incompatibility_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    platform_unknown_exception() | 
    service_not_active_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    namespace_not_found_exception() | 
    service_not_found_exception() | 
    cluster_not_found_exception().

-type update_service_primary_task_set_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    task_set_not_found_exception() | 
    service_not_active_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    service_not_found_exception() | 
    cluster_not_found_exception().

-type update_task_protection_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    cluster_not_found_exception().

-type update_task_set_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    task_set_not_found_exception() | 
    service_not_active_exception() | 
    client_exception() | 
    unsupported_feature_exception() | 
    service_not_found_exception() | 
    cluster_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new capacity provider.
%%
%% Capacity providers are associated with an Amazon ECS cluster and are used
%% in capacity provider strategies to facilitate cluster auto scaling.
%%
%% Only capacity providers that use an Auto Scaling group can be created.
%% Amazon ECS tasks on Fargate use
%% the `FARGATE' and `FARGATE_SPOT' capacity providers. These
%% providers are
%% available to all accounts in the Amazon Web Services Regions that Fargate
%% supports.
-spec create_capacity_provider(aws_client:aws_client(), create_capacity_provider_request()) ->
    {ok, create_capacity_provider_response(), tuple()} |
    {error, any()} |
    {error, create_capacity_provider_errors(), tuple()}.
create_capacity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_capacity_provider(Client, Input, []).

-spec create_capacity_provider(aws_client:aws_client(), create_capacity_provider_request(), proplists:proplist()) ->
    {ok, create_capacity_provider_response(), tuple()} |
    {error, any()} |
    {error, create_capacity_provider_errors(), tuple()}.
create_capacity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCapacityProvider">>, Input, Options).

%% @doc Creates a new Amazon ECS cluster.
%%
%% By default, your account receives a `default' cluster when
%% you launch your first container instance. However, you can create your own
%% cluster with a unique
%% name.
%%
%% When you call the CreateCluster:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCluster.html
%% API operation,
%% Amazon ECS attempts to create the Amazon ECS service-linked role for your
%% account. This is so that it can
%% manage required resources in other Amazon Web Services services on your
%% behalf. However, if the user that makes
%% the call doesn't have permissions to create the service-linked role,
%% it isn't created. For more
%% information, see Using service-linked
%% roles for Amazon ECS:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
%% in the Amazon Elastic Container Service Developer Guide.
-spec create_cluster(aws_client:aws_client(), create_cluster_request()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_request(), proplists:proplist()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Runs and maintains your desired number of tasks from a specified task
%% definition.
%%
%% If the number of
%% tasks running in a service drops below the `desiredCount', Amazon ECS
%% runs another copy of the
%% task in the specified cluster. To update an existing service, use
%% UpdateService:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html.
%%
%% On March 21, 2024, a change was made to resolve the task definition
%% revision before authorization. When a task definition revision is not
%% specified, authorization will occur using the latest revision of a task
%% definition.
%%
%% Amazon Elastic Inference (EI) is no longer available to customers.
%%
%% In addition to maintaining the desired count of tasks in your service, you
%% can optionally run your
%% service behind one or more load balancers. The load balancers distribute
%% traffic across the tasks that
%% are associated with the service. For more information, see Service load
%% balancing:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the
%% volume when creating or updating a
%% service. `volumeConfigurations' is only supported for REPLICA service
%% and not DAEMON
%% service. For more infomation, see Amazon EBS
%% volumes:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% Tasks for services that don't use a load balancer are considered
%% healthy if they're in the
%% `RUNNING' state. Tasks for services that use a load balancer are
%% considered healthy if
%% they're in the `RUNNING' state and are reported as healthy by the
%% load balancer.
%%
%% There are two service scheduler strategies available:
%%
%% `REPLICA' - The replica scheduling strategy places and maintains your
%% desired number of tasks across your cluster. By default, the service
%% scheduler spreads tasks
%% across Availability Zones. You can use task placement strategies and
%% constraints to customize
%% task placement decisions. For more information, see Service
%% scheduler concepts:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% `DAEMON' - The daemon scheduling strategy deploys exactly one task on
%% each
%% active container instance that meets all of the task placement constraints
%% that you specify in
%% your cluster. The service scheduler also evaluates the task placement
%% constraints for running
%% tasks. It also stops tasks that don't meet the placement constraints.
%% When using this strategy,
%% you don't need to specify a desired number of tasks, a task placement
%% strategy, or use Service
%% Auto Scaling policies. For more information, see Service
%% scheduler concepts:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% You can optionally specify a deployment configuration for your service.
%% The deployment is initiated
%% by changing properties. For example, the deployment might be initiated by
%% the task definition or by
%% your desired count of a service. You can use UpdateService:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html.
%% The default value for a replica service for
%% `minimumHealthyPercent' is 100%. The default value for a daemon
%% service for
%% `minimumHealthyPercent' is 0%.
%%
%% If a service uses the `ECS' deployment controller, the minimum healthy
%% percent represents
%% a lower limit on the number of tasks in a service that must remain in the
%% `RUNNING' state
%% during a deployment. Specifically, it represents it as a percentage of
%% your desired number of tasks
%% (rounded up to the nearest integer). This happens when any of your
%% container instances are in the
%% `DRAINING' state if the service contains tasks using the EC2 launch
%% type.
%% Using this parameter, you can deploy without using additional cluster
%% capacity. For example, if you set
%% your service to have desired number of four tasks and a minimum healthy
%% percent of 50%, the scheduler
%% might stop two existing tasks to free up cluster capacity before starting
%% two new tasks. If they're in
%% the `RUNNING' state, tasks for services that don't use a load
%% balancer are considered
%% healthy . If they're in the `RUNNING' state and reported as
%% healthy by the load balancer,
%% tasks for services that do use a load balancer are considered healthy .
%% The
%% default value for minimum healthy percent is 100%.
%%
%% If a service uses the `ECS' deployment controller, the maximum
%% percent parameter represents an upper limit on the number of tasks in a
%% service that are
%% allowed in the `RUNNING' or `PENDING' state during a deployment.
%% Specifically, it
%% represents it as a percentage of the desired number of tasks (rounded down
%% to the nearest integer).
%% This happens when any of your container instances are in the
%% `DRAINING' state if the service
%% contains tasks using the EC2 launch type. Using this parameter, you can
%% define the
%% deployment batch size. For example, if your service has a desired number
%% of four tasks and a maximum
%% percent value of 200%, the scheduler may start four new tasks before
%% stopping the four older tasks
%% (provided that the cluster resources required to do this are available).
%% The default value for maximum
%% percent is 200%.
%%
%% If a service uses either the `CODE_DEPLOY' or `EXTERNAL'
%% deployment controller
%% types and tasks that use the EC2 launch type, the minimum healthy
%% percent and maximum percent values are used only to
%% define the lower and upper limit on the number of the tasks in the service
%% that remain in the
%% `RUNNING' state. This is while the container instances are in the
%% `DRAINING'
%% state. If the tasks in the service use the Fargate launch type, the
%% minimum healthy
%% percent and maximum percent values aren't used. This is the case even
%% if they're currently visible when
%% describing your service.
%%
%% When creating a service that uses the `EXTERNAL' deployment
%% controller, you can specify
%% only parameters that aren't controlled at the task set level. The only
%% required parameter is the
%% service name. You control your services using the CreateTaskSet:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html.
%% For more information, see Amazon ECS deployment
%% types:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% When the service scheduler launches new tasks, it determines task
%% placement. For information about
%% task placement and task placement strategies, see Amazon ECS task
%% placement:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement.html
%% in the Amazon Elastic Container Service Developer Guide
-spec create_service(aws_client:aws_client(), create_service_request()) ->
    {ok, create_service_response(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service(Client, Input, []).

-spec create_service(aws_client:aws_client(), create_service_request(), proplists:proplist()) ->
    {ok, create_service_response(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateService">>, Input, Options).

%% @doc Create a task set in the specified cluster and service.
%%
%% This is used when a service uses the
%% `EXTERNAL' deployment controller type. For more information, see
%% Amazon ECS deployment
%% types:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% On March 21, 2024, a change was made to resolve the task definition
%% revision before authorization. When a task definition revision is not
%% specified, authorization will occur using the latest revision of a task
%% definition.
%%
%% For information about the maximum number of task sets and other quotas,
%% see Amazon ECS service
%% quotas:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-quotas.html
%% in the Amazon Elastic Container Service Developer Guide.
-spec create_task_set(aws_client:aws_client(), create_task_set_request()) ->
    {ok, create_task_set_response(), tuple()} |
    {error, any()} |
    {error, create_task_set_errors(), tuple()}.
create_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_task_set(Client, Input, []).

-spec create_task_set(aws_client:aws_client(), create_task_set_request(), proplists:proplist()) ->
    {ok, create_task_set_response(), tuple()} |
    {error, any()} |
    {error, create_task_set_errors(), tuple()}.
create_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTaskSet">>, Input, Options).

%% @doc Disables an account setting for a specified user, role, or the root
%% user for an account.
-spec delete_account_setting(aws_client:aws_client(), delete_account_setting_request()) ->
    {ok, delete_account_setting_response(), tuple()} |
    {error, any()} |
    {error, delete_account_setting_errors(), tuple()}.
delete_account_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_account_setting(Client, Input, []).

-spec delete_account_setting(aws_client:aws_client(), delete_account_setting_request(), proplists:proplist()) ->
    {ok, delete_account_setting_response(), tuple()} |
    {error, any()} |
    {error, delete_account_setting_errors(), tuple()}.
delete_account_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccountSetting">>, Input, Options).

%% @doc Deletes one or more custom attributes from an Amazon ECS resource.
-spec delete_attributes(aws_client:aws_client(), delete_attributes_request()) ->
    {ok, delete_attributes_response(), tuple()} |
    {error, any()} |
    {error, delete_attributes_errors(), tuple()}.
delete_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_attributes(Client, Input, []).

-spec delete_attributes(aws_client:aws_client(), delete_attributes_request(), proplists:proplist()) ->
    {ok, delete_attributes_response(), tuple()} |
    {error, any()} |
    {error, delete_attributes_errors(), tuple()}.
delete_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAttributes">>, Input, Options).

%% @doc Deletes the specified capacity provider.
%%
%% The `FARGATE' and `FARGATE_SPOT' capacity providers are reserved
%% and can't
%% be deleted. You can disassociate them from a cluster using either
%% PutClusterCapacityProviders:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
%% or by deleting the cluster.
%%
%% Prior to a capacity provider being deleted, the capacity provider must be
%% removed from the capacity
%% provider strategy from all services. The UpdateService:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html
%% API can be used to
%% remove a capacity provider from a service's capacity provider
%% strategy. When updating a service, the
%% `forceNewDeployment' option can be used to ensure that any tasks using
%% the Amazon EC2
%% instance capacity provided by the capacity provider are transitioned to
%% use the capacity from the
%% remaining capacity providers. Only capacity providers that aren't
%% associated with a cluster can be
%% deleted. To remove a capacity provider from a cluster, you can either use
%% PutClusterCapacityProviders:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
%% or delete the cluster.
-spec delete_capacity_provider(aws_client:aws_client(), delete_capacity_provider_request()) ->
    {ok, delete_capacity_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_capacity_provider_errors(), tuple()}.
delete_capacity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_capacity_provider(Client, Input, []).

-spec delete_capacity_provider(aws_client:aws_client(), delete_capacity_provider_request(), proplists:proplist()) ->
    {ok, delete_capacity_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_capacity_provider_errors(), tuple()}.
delete_capacity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCapacityProvider">>, Input, Options).

%% @doc Deletes the specified cluster.
%%
%% The cluster transitions to the `INACTIVE' state. Clusters
%% with an `INACTIVE' status might remain discoverable in your account
%% for a period of time.
%% However, this behavior is subject to change in the future. We don't
%% recommend that you rely on
%% `INACTIVE' clusters persisting.
%%
%% You must deregister all container instances from this cluster before you
%% may delete it. You can list
%% the container instances in a cluster with ListContainerInstances:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListContainerInstances.html
%% and deregister them with DeregisterContainerInstance:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterContainerInstance.html.
-spec delete_cluster(aws_client:aws_client(), delete_cluster_request()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).

-spec delete_cluster(aws_client:aws_client(), delete_cluster_request(), proplists:proplist()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes a specified service within a cluster.
%%
%% You can delete a service if you have no running tasks
%% in it and the desired task count is zero. If the service is actively
%% maintaining tasks, you can't
%% delete it, and you must update the service to a desired task count of
%% zero. For more information, see
%% UpdateService:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html.
%%
%% When you delete a service, if there are still running tasks that require
%% cleanup, the service
%% status moves from `ACTIVE' to `DRAINING', and the service is no
%% longer
%% visible in the console or in the ListServices:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServices.html
%% API operation.
%% After all tasks have transitioned to either `STOPPING' or
%% `STOPPED' status,
%% the service status moves from `DRAINING' to `INACTIVE'. Services
%% in the
%% `DRAINING' or `INACTIVE' status can still be viewed with the
%% DescribeServices:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServices.html
%% API operation. However, in the future, `INACTIVE' services
%% may be cleaned up and purged from Amazon ECS record keeping, and
%% DescribeServices:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServices.html
%% calls on
%% those services return a `ServiceNotFoundException' error.
%%
%% If you attempt to create a new service with the same name as an existing
%% service in either
%% `ACTIVE' or `DRAINING' status, you receive an error.
-spec delete_service(aws_client:aws_client(), delete_service_request()) ->
    {ok, delete_service_response(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service(Client, Input, []).

-spec delete_service(aws_client:aws_client(), delete_service_request(), proplists:proplist()) ->
    {ok, delete_service_response(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteService">>, Input, Options).

%% @doc Deletes one or more task definitions.
%%
%% You must deregister a task definition revision before you delete it. For
%% more information, see DeregisterTaskDefinition:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterTaskDefinition.html.
%%
%% When you delete a task definition revision, it is immediately transitions
%% from the
%% `INACTIVE' to `DELETE_IN_PROGRESS'. Existing tasks and services
%% that
%% reference a `DELETE_IN_PROGRESS' task definition revision continue to
%% run without
%% disruption. Existing services that reference a `DELETE_IN_PROGRESS'
%% task definition revision
%% can still scale up or down by modifying the service's desired count.
%%
%% You can't use a `DELETE_IN_PROGRESS' task definition revision to
%% run new tasks or create
%% new services. You also can't update an existing service to reference a
%% `DELETE_IN_PROGRESS'
%% task definition revision.
%%
%% A task definition revision will stay in `DELETE_IN_PROGRESS' status
%% until all the
%% associated tasks and services have been terminated.
%%
%% When you delete all `INACTIVE' task definition revisions, the task
%% definition name is not
%% displayed in the console and not returned in the API. If a task definition
%% revisions are in the
%% `DELETE_IN_PROGRESS' state, the task definition name is displayed in
%% the console and
%% returned in the API. The task definition name is retained by Amazon ECS
%% and the revision is incremented the
%% next time you create a task definition with that name.
-spec delete_task_definitions(aws_client:aws_client(), delete_task_definitions_request()) ->
    {ok, delete_task_definitions_response(), tuple()} |
    {error, any()} |
    {error, delete_task_definitions_errors(), tuple()}.
delete_task_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_task_definitions(Client, Input, []).

-spec delete_task_definitions(aws_client:aws_client(), delete_task_definitions_request(), proplists:proplist()) ->
    {ok, delete_task_definitions_response(), tuple()} |
    {error, any()} |
    {error, delete_task_definitions_errors(), tuple()}.
delete_task_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTaskDefinitions">>, Input, Options).

%% @doc Deletes a specified task set within a service.
%%
%% This is used when a service uses the
%% `EXTERNAL' deployment controller type. For more information, see
%% Amazon ECS deployment
%% types:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
%% in the Amazon Elastic Container Service Developer Guide.
-spec delete_task_set(aws_client:aws_client(), delete_task_set_request()) ->
    {ok, delete_task_set_response(), tuple()} |
    {error, any()} |
    {error, delete_task_set_errors(), tuple()}.
delete_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_task_set(Client, Input, []).

-spec delete_task_set(aws_client:aws_client(), delete_task_set_request(), proplists:proplist()) ->
    {ok, delete_task_set_response(), tuple()} |
    {error, any()} |
    {error, delete_task_set_errors(), tuple()}.
delete_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTaskSet">>, Input, Options).

%% @doc Deregisters an Amazon ECS container instance from the specified
%% cluster.
%%
%% This instance is no longer
%% available to run tasks.
%%
%% If you intend to use the container instance for some other purpose after
%% deregistration, we recommend
%% that you stop all of the tasks running on the container instance before
%% deregistration. That prevents
%% any orphaned tasks from consuming resources.
%%
%% Deregistering a container instance removes the instance from a cluster,
%% but it doesn't terminate the
%% EC2 instance. If you are finished using the instance, be sure to terminate
%% it in the Amazon EC2 console to
%% stop billing.
%%
%% If you terminate a running container instance, Amazon ECS automatically
%% deregisters the instance from
%% your cluster (stopped container instances or instances with disconnected
%% agents aren't
%% automatically deregistered when terminated).
-spec deregister_container_instance(aws_client:aws_client(), deregister_container_instance_request()) ->
    {ok, deregister_container_instance_response(), tuple()} |
    {error, any()} |
    {error, deregister_container_instance_errors(), tuple()}.
deregister_container_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_container_instance(Client, Input, []).

-spec deregister_container_instance(aws_client:aws_client(), deregister_container_instance_request(), proplists:proplist()) ->
    {ok, deregister_container_instance_response(), tuple()} |
    {error, any()} |
    {error, deregister_container_instance_errors(), tuple()}.
deregister_container_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterContainerInstance">>, Input, Options).

%% @doc Deregisters the specified task definition by family and revision.
%%
%% Upon deregistration, the task
%% definition is marked as `INACTIVE'. Existing tasks and services that
%% reference an
%% `INACTIVE' task definition continue to run without disruption.
%% Existing services that
%% reference an `INACTIVE' task definition can still scale up or down by
%% modifying the
%% service's desired count. If you want to delete a task definition
%% revision, you must first deregister
%% the task definition revision.
%%
%% You can't use an `INACTIVE' task definition to run new tasks or
%% create new services, and
%% you can't update an existing service to reference an `INACTIVE'
%% task definition. However,
%% there may be up to a 10-minute window following deregistration where these
%% restrictions have not yet
%% taken effect.
%%
%% At this time, `INACTIVE' task definitions remain discoverable in your
%% account
%% indefinitely. However, this behavior is subject to change in the future.
%% We don't recommend that
%% you rely on `INACTIVE' task definitions persisting beyond the
%% lifecycle of any
%% associated tasks and services.
%%
%% You must deregister a task definition revision before you delete it. For
%% more information, see DeleteTaskDefinitions:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteTaskDefinitions.html.
-spec deregister_task_definition(aws_client:aws_client(), deregister_task_definition_request()) ->
    {ok, deregister_task_definition_response(), tuple()} |
    {error, any()} |
    {error, deregister_task_definition_errors(), tuple()}.
deregister_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_task_definition(Client, Input, []).

-spec deregister_task_definition(aws_client:aws_client(), deregister_task_definition_request(), proplists:proplist()) ->
    {ok, deregister_task_definition_response(), tuple()} |
    {error, any()} |
    {error, deregister_task_definition_errors(), tuple()}.
deregister_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTaskDefinition">>, Input, Options).

%% @doc Describes one or more of your capacity providers.
-spec describe_capacity_providers(aws_client:aws_client(), describe_capacity_providers_request()) ->
    {ok, describe_capacity_providers_response(), tuple()} |
    {error, any()} |
    {error, describe_capacity_providers_errors(), tuple()}.
describe_capacity_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_capacity_providers(Client, Input, []).

-spec describe_capacity_providers(aws_client:aws_client(), describe_capacity_providers_request(), proplists:proplist()) ->
    {ok, describe_capacity_providers_response(), tuple()} |
    {error, any()} |
    {error, describe_capacity_providers_errors(), tuple()}.
describe_capacity_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCapacityProviders">>, Input, Options).

%% @doc Describes one or more of your clusters.
%%
%% For CLI examples, see describe-clusters.rst:
%% https://github.com/aws/aws-cli/blob/develop/awscli/examples/ecs/describe-clusters.rst
%% on GitHub.
-spec describe_clusters(aws_client:aws_client(), describe_clusters_request()) ->
    {ok, describe_clusters_response(), tuple()} |
    {error, any()} |
    {error, describe_clusters_errors(), tuple()}.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).

-spec describe_clusters(aws_client:aws_client(), describe_clusters_request(), proplists:proplist()) ->
    {ok, describe_clusters_response(), tuple()} |
    {error, any()} |
    {error, describe_clusters_errors(), tuple()}.
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Describes one or more container instances.
%%
%% Returns metadata about each container instance
%% requested.
-spec describe_container_instances(aws_client:aws_client(), describe_container_instances_request()) ->
    {ok, describe_container_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_container_instances_errors(), tuple()}.
describe_container_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_container_instances(Client, Input, []).

-spec describe_container_instances(aws_client:aws_client(), describe_container_instances_request(), proplists:proplist()) ->
    {ok, describe_container_instances_response(), tuple()} |
    {error, any()} |
    {error, describe_container_instances_errors(), tuple()}.
describe_container_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContainerInstances">>, Input, Options).

%% @doc Describes one or more of your service deployments.
%%
%% A service deployment happens when you release a software update for the
%% service. For more information, see Amazon ECS service deployments:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-deployments.html.
-spec describe_service_deployments(aws_client:aws_client(), describe_service_deployments_request()) ->
    {ok, describe_service_deployments_response(), tuple()} |
    {error, any()} |
    {error, describe_service_deployments_errors(), tuple()}.
describe_service_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_deployments(Client, Input, []).

-spec describe_service_deployments(aws_client:aws_client(), describe_service_deployments_request(), proplists:proplist()) ->
    {ok, describe_service_deployments_response(), tuple()} |
    {error, any()} |
    {error, describe_service_deployments_errors(), tuple()}.
describe_service_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceDeployments">>, Input, Options).

%% @doc Describes one or more service revisions.
%%
%% A service revision is a version of the service that includes the values
%% for the Amazon ECS
%% resources (for example, task definition) and the environment resources
%% (for example,
%% load balancers, subnets, and security groups). For more information, see
%% Amazon ECS service revisions:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-revision.html.
%%
%% You can't describe a service revision that was created before October
%% 25, 2024.
-spec describe_service_revisions(aws_client:aws_client(), describe_service_revisions_request()) ->
    {ok, describe_service_revisions_response(), tuple()} |
    {error, any()} |
    {error, describe_service_revisions_errors(), tuple()}.
describe_service_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_revisions(Client, Input, []).

-spec describe_service_revisions(aws_client:aws_client(), describe_service_revisions_request(), proplists:proplist()) ->
    {ok, describe_service_revisions_response(), tuple()} |
    {error, any()} |
    {error, describe_service_revisions_errors(), tuple()}.
describe_service_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceRevisions">>, Input, Options).

%% @doc Describes the specified services running in your cluster.
-spec describe_services(aws_client:aws_client(), describe_services_request()) ->
    {ok, describe_services_response(), tuple()} |
    {error, any()} |
    {error, describe_services_errors(), tuple()}.
describe_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_services(Client, Input, []).

-spec describe_services(aws_client:aws_client(), describe_services_request(), proplists:proplist()) ->
    {ok, describe_services_response(), tuple()} |
    {error, any()} |
    {error, describe_services_errors(), tuple()}.
describe_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServices">>, Input, Options).

%% @doc Describes a task definition.
%%
%% You can specify a `family' and `revision' to find
%% information about a specific task definition, or you can simply specify
%% the family to find the latest
%% `ACTIVE' revision in that family.
%%
%% You can only describe `INACTIVE' task definitions while an active task
%% or service
%% references them.
-spec describe_task_definition(aws_client:aws_client(), describe_task_definition_request()) ->
    {ok, describe_task_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_task_definition_errors(), tuple()}.
describe_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_task_definition(Client, Input, []).

-spec describe_task_definition(aws_client:aws_client(), describe_task_definition_request(), proplists:proplist()) ->
    {ok, describe_task_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_task_definition_errors(), tuple()}.
describe_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTaskDefinition">>, Input, Options).

%% @doc Describes the task sets in the specified cluster and service.
%%
%% This is used when a service uses the
%% `EXTERNAL' deployment controller type. For more information, see
%% Amazon ECS Deployment
%% Types:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
%% in the Amazon Elastic Container Service Developer Guide.
-spec describe_task_sets(aws_client:aws_client(), describe_task_sets_request()) ->
    {ok, describe_task_sets_response(), tuple()} |
    {error, any()} |
    {error, describe_task_sets_errors(), tuple()}.
describe_task_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_task_sets(Client, Input, []).

-spec describe_task_sets(aws_client:aws_client(), describe_task_sets_request(), proplists:proplist()) ->
    {ok, describe_task_sets_response(), tuple()} |
    {error, any()} |
    {error, describe_task_sets_errors(), tuple()}.
describe_task_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTaskSets">>, Input, Options).

%% @doc Describes a specified task or tasks.
%%
%% Currently, stopped tasks appear in the returned results for at least one
%% hour.
%%
%% If you have tasks with tags, and then delete the cluster, the tagged tasks
%% are returned in the
%% response. If you create a new cluster with the same name as the deleted
%% cluster, the tagged tasks are
%% not included in the response.
-spec describe_tasks(aws_client:aws_client(), describe_tasks_request()) ->
    {ok, describe_tasks_response(), tuple()} |
    {error, any()} |
    {error, describe_tasks_errors(), tuple()}.
describe_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tasks(Client, Input, []).

-spec describe_tasks(aws_client:aws_client(), describe_tasks_request(), proplists:proplist()) ->
    {ok, describe_tasks_response(), tuple()} |
    {error, any()} |
    {error, describe_tasks_errors(), tuple()}.
describe_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTasks">>, Input, Options).

%% @doc
%% This action is only used by the Amazon ECS agent, and it is not intended
%% for use outside of the agent.
%%
%% Returns an endpoint for the Amazon ECS agent to poll for updates.
-spec discover_poll_endpoint(aws_client:aws_client(), discover_poll_endpoint_request()) ->
    {ok, discover_poll_endpoint_response(), tuple()} |
    {error, any()} |
    {error, discover_poll_endpoint_errors(), tuple()}.
discover_poll_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_poll_endpoint(Client, Input, []).

-spec discover_poll_endpoint(aws_client:aws_client(), discover_poll_endpoint_request(), proplists:proplist()) ->
    {ok, discover_poll_endpoint_response(), tuple()} |
    {error, any()} |
    {error, discover_poll_endpoint_errors(), tuple()}.
discover_poll_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverPollEndpoint">>, Input, Options).

%% @doc Runs a command remotely on a container within a task.
%%
%% If you use a condition key in your IAM policy to refine the conditions for
%% the policy statement,
%% for example limit the actions to a specific cluster, you receive an
%% `AccessDeniedException'
%% when there is a mismatch between the condition key value and the
%% corresponding parameter value.
%%
%% For information about required permissions and considerations, see Using
%% Amazon ECS Exec for debugging:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-exec.html
%% in the
%% Amazon ECS Developer Guide.
-spec execute_command(aws_client:aws_client(), execute_command_request()) ->
    {ok, execute_command_response(), tuple()} |
    {error, any()} |
    {error, execute_command_errors(), tuple()}.
execute_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_command(Client, Input, []).

-spec execute_command(aws_client:aws_client(), execute_command_request(), proplists:proplist()) ->
    {ok, execute_command_response(), tuple()} |
    {error, any()} |
    {error, execute_command_errors(), tuple()}.
execute_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteCommand">>, Input, Options).

%% @doc Retrieves the protection status of tasks in an Amazon ECS service.
-spec get_task_protection(aws_client:aws_client(), get_task_protection_request()) ->
    {ok, get_task_protection_response(), tuple()} |
    {error, any()} |
    {error, get_task_protection_errors(), tuple()}.
get_task_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_task_protection(Client, Input, []).

-spec get_task_protection(aws_client:aws_client(), get_task_protection_request(), proplists:proplist()) ->
    {ok, get_task_protection_response(), tuple()} |
    {error, any()} |
    {error, get_task_protection_errors(), tuple()}.
get_task_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTaskProtection">>, Input, Options).

%% @doc Lists the account settings for a specified principal.
-spec list_account_settings(aws_client:aws_client(), list_account_settings_request()) ->
    {ok, list_account_settings_response(), tuple()} |
    {error, any()} |
    {error, list_account_settings_errors(), tuple()}.
list_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_settings(Client, Input, []).

-spec list_account_settings(aws_client:aws_client(), list_account_settings_request(), proplists:proplist()) ->
    {ok, list_account_settings_response(), tuple()} |
    {error, any()} |
    {error, list_account_settings_errors(), tuple()}.
list_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountSettings">>, Input, Options).

%% @doc Lists the attributes for Amazon ECS resources within a specified
%% target type and cluster.
%%
%% When you specify
%% a target type and cluster, `ListAttributes' returns a list of
%% attribute objects, one for
%% each attribute on each resource. You can filter the list of results to a
%% single attribute name to only
%% return results that have that name. You can also filter the results by
%% attribute name and value. You
%% can do this, for example, to see which container instances in a cluster
%% are running a Linux AMI
%% (`ecs.os-type=linux').
-spec list_attributes(aws_client:aws_client(), list_attributes_request()) ->
    {ok, list_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_attributes_errors(), tuple()}.
list_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attributes(Client, Input, []).

-spec list_attributes(aws_client:aws_client(), list_attributes_request(), proplists:proplist()) ->
    {ok, list_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_attributes_errors(), tuple()}.
list_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttributes">>, Input, Options).

%% @doc Returns a list of existing clusters.
-spec list_clusters(aws_client:aws_client(), list_clusters_request()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).

-spec list_clusters(aws_client:aws_client(), list_clusters_request(), proplists:proplist()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc Returns a list of container instances in a specified cluster.
%%
%% You can filter the results of a
%% `ListContainerInstances' operation with cluster query language
%% statements inside the
%% `filter' parameter. For more information, see Cluster
%% Query Language:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
%% in the Amazon Elastic Container Service Developer Guide.
-spec list_container_instances(aws_client:aws_client(), list_container_instances_request()) ->
    {ok, list_container_instances_response(), tuple()} |
    {error, any()} |
    {error, list_container_instances_errors(), tuple()}.
list_container_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_container_instances(Client, Input, []).

-spec list_container_instances(aws_client:aws_client(), list_container_instances_request(), proplists:proplist()) ->
    {ok, list_container_instances_response(), tuple()} |
    {error, any()} |
    {error, list_container_instances_errors(), tuple()}.
list_container_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContainerInstances">>, Input, Options).

%% @doc This operation lists all the service deployments that meet the
%% specified filter criteria.
%%
%% A service deployment happens when you release a softwre update for the
%% service. You
%% route traffic from the running service revisions to the new service
%% revison and control
%% the number of running tasks.
%%
%% This API returns the values that you use for the request parameters in
%% DescribeServiceRevisions:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServiceRevisions.html.
-spec list_service_deployments(aws_client:aws_client(), list_service_deployments_request()) ->
    {ok, list_service_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_service_deployments_errors(), tuple()}.
list_service_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_deployments(Client, Input, []).

-spec list_service_deployments(aws_client:aws_client(), list_service_deployments_request(), proplists:proplist()) ->
    {ok, list_service_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_service_deployments_errors(), tuple()}.
list_service_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceDeployments">>, Input, Options).

%% @doc Returns a list of services.
%%
%% You can filter the results by cluster, launch type, and scheduling
%% strategy.
-spec list_services(aws_client:aws_client(), list_services_request()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services(Client, Input, []).

-spec list_services(aws_client:aws_client(), list_services_request(), proplists:proplist()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServices">>, Input, Options).

%% @doc This operation lists all of the services that are associated with a
%% Cloud Map namespace.
%%
%% This list
%% might include services in different clusters. In contrast,
%% `ListServices' can only list
%% services in one cluster at a time. If you need to filter the list of
%% services in a single cluster by
%% various parameters, use `ListServices'. For more information, see
%% Service Connect:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
%% in the Amazon Elastic Container Service Developer Guide.
-spec list_services_by_namespace(aws_client:aws_client(), list_services_by_namespace_request()) ->
    {ok, list_services_by_namespace_response(), tuple()} |
    {error, any()} |
    {error, list_services_by_namespace_errors(), tuple()}.
list_services_by_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services_by_namespace(Client, Input, []).

-spec list_services_by_namespace(aws_client:aws_client(), list_services_by_namespace_request(), proplists:proplist()) ->
    {ok, list_services_by_namespace_response(), tuple()} |
    {error, any()} |
    {error, list_services_by_namespace_errors(), tuple()}.
list_services_by_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServicesByNamespace">>, Input, Options).

%% @doc List the tags for an Amazon ECS resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns a list of task definition families that are registered to
%% your account.
%%
%% This list includes
%% task definition families that no longer have any `ACTIVE' task
%% definition revisions.
%%
%% You can filter out task definition families that don't contain any
%% `ACTIVE' task
%% definition revisions by setting the `status' parameter to
%% `ACTIVE'. You can also
%% filter the results with the `familyPrefix' parameter.
-spec list_task_definition_families(aws_client:aws_client(), list_task_definition_families_request()) ->
    {ok, list_task_definition_families_response(), tuple()} |
    {error, any()} |
    {error, list_task_definition_families_errors(), tuple()}.
list_task_definition_families(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_task_definition_families(Client, Input, []).

-spec list_task_definition_families(aws_client:aws_client(), list_task_definition_families_request(), proplists:proplist()) ->
    {ok, list_task_definition_families_response(), tuple()} |
    {error, any()} |
    {error, list_task_definition_families_errors(), tuple()}.
list_task_definition_families(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTaskDefinitionFamilies">>, Input, Options).

%% @doc Returns a list of task definitions that are registered to your
%% account.
%%
%% You can filter the results by
%% family name with the `familyPrefix' parameter or by status with the
%% `status'
%% parameter.
-spec list_task_definitions(aws_client:aws_client(), list_task_definitions_request()) ->
    {ok, list_task_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_task_definitions_errors(), tuple()}.
list_task_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_task_definitions(Client, Input, []).

-spec list_task_definitions(aws_client:aws_client(), list_task_definitions_request(), proplists:proplist()) ->
    {ok, list_task_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_task_definitions_errors(), tuple()}.
list_task_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTaskDefinitions">>, Input, Options).

%% @doc Returns a list of tasks.
%%
%% You can filter the results by cluster, task definition family, container
%% instance, launch type, what IAM principal started the task, or by the
%% desired status of the
%% task.
%%
%% Recently stopped tasks might appear in the returned results.
-spec list_tasks(aws_client:aws_client(), list_tasks_request()) ->
    {ok, list_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_tasks_errors(), tuple()}.
list_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tasks(Client, Input, []).

-spec list_tasks(aws_client:aws_client(), list_tasks_request(), proplists:proplist()) ->
    {ok, list_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_tasks_errors(), tuple()}.
list_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTasks">>, Input, Options).

%% @doc Modifies an account setting.
%%
%% Account settings are set on a per-Region basis.
%%
%% If you change the root user account setting, the default settings are
%% reset for users and roles that do
%% not have specified individual account settings. For more information, see
%% Account Settings:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html
%% in the
%% Amazon Elastic Container Service Developer Guide.
-spec put_account_setting(aws_client:aws_client(), put_account_setting_request()) ->
    {ok, put_account_setting_response(), tuple()} |
    {error, any()} |
    {error, put_account_setting_errors(), tuple()}.
put_account_setting(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_setting(Client, Input, []).

-spec put_account_setting(aws_client:aws_client(), put_account_setting_request(), proplists:proplist()) ->
    {ok, put_account_setting_response(), tuple()} |
    {error, any()} |
    {error, put_account_setting_errors(), tuple()}.
put_account_setting(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountSetting">>, Input, Options).

%% @doc Modifies an account setting for all users on an account for whom no
%% individual account setting has
%% been specified.
%%
%% Account settings are set on a per-Region basis.
-spec put_account_setting_default(aws_client:aws_client(), put_account_setting_default_request()) ->
    {ok, put_account_setting_default_response(), tuple()} |
    {error, any()} |
    {error, put_account_setting_default_errors(), tuple()}.
put_account_setting_default(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_setting_default(Client, Input, []).

-spec put_account_setting_default(aws_client:aws_client(), put_account_setting_default_request(), proplists:proplist()) ->
    {ok, put_account_setting_default_response(), tuple()} |
    {error, any()} |
    {error, put_account_setting_default_errors(), tuple()}.
put_account_setting_default(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountSettingDefault">>, Input, Options).

%% @doc Create or update an attribute on an Amazon ECS resource.
%%
%% If the attribute doesn't exist, it's created. If
%% the attribute exists, its value is replaced with the specified value. To
%% delete an attribute, use
%% DeleteAttributes:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteAttributes.html.
%% For more information, see Attributes:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes
%% in the Amazon Elastic Container Service Developer Guide.
-spec put_attributes(aws_client:aws_client(), put_attributes_request()) ->
    {ok, put_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_attributes_errors(), tuple()}.
put_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_attributes(Client, Input, []).

-spec put_attributes(aws_client:aws_client(), put_attributes_request(), proplists:proplist()) ->
    {ok, put_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_attributes_errors(), tuple()}.
put_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAttributes">>, Input, Options).

%% @doc Modifies the available capacity providers and the default capacity
%% provider strategy for a
%% cluster.
%%
%% You must specify both the available capacity providers and a default
%% capacity provider strategy for
%% the cluster. If the specified cluster has existing capacity providers
%% associated with it, you must
%% specify all existing capacity providers in addition to any new ones you
%% want to add. Any existing
%% capacity providers that are associated with a cluster that are omitted
%% from a PutClusterCapacityProviders:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
%% API call will be disassociated with the cluster. You can only
%% disassociate an existing capacity provider from a cluster if it's not
%% being used by any existing
%% tasks.
%%
%% When creating a service or running a task on a cluster, if no capacity
%% provider or launch type is
%% specified, then the cluster's default capacity provider strategy is
%% used. We recommend that you define
%% a default capacity provider strategy for your cluster. However, you must
%% specify an empty array
%% (`[]') to bypass defining a default strategy.
-spec put_cluster_capacity_providers(aws_client:aws_client(), put_cluster_capacity_providers_request()) ->
    {ok, put_cluster_capacity_providers_response(), tuple()} |
    {error, any()} |
    {error, put_cluster_capacity_providers_errors(), tuple()}.
put_cluster_capacity_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_cluster_capacity_providers(Client, Input, []).

-spec put_cluster_capacity_providers(aws_client:aws_client(), put_cluster_capacity_providers_request(), proplists:proplist()) ->
    {ok, put_cluster_capacity_providers_response(), tuple()} |
    {error, any()} |
    {error, put_cluster_capacity_providers_errors(), tuple()}.
put_cluster_capacity_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutClusterCapacityProviders">>, Input, Options).

%% @doc
%% This action is only used by the Amazon ECS agent, and it is not intended
%% for use outside of the agent.
%%
%% Registers an EC2 instance into the specified cluster. This instance
%% becomes available to place
%% containers on.
-spec register_container_instance(aws_client:aws_client(), register_container_instance_request()) ->
    {ok, register_container_instance_response(), tuple()} |
    {error, any()} |
    {error, register_container_instance_errors(), tuple()}.
register_container_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_container_instance(Client, Input, []).

-spec register_container_instance(aws_client:aws_client(), register_container_instance_request(), proplists:proplist()) ->
    {ok, register_container_instance_response(), tuple()} |
    {error, any()} |
    {error, register_container_instance_errors(), tuple()}.
register_container_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterContainerInstance">>, Input, Options).

%% @doc Registers a new task definition from the supplied `family' and
%% `containerDefinitions'.
%%
%% Optionally, you can add data volumes to your containers with the
%% `volumes' parameter. For more information about task definition
%% parameters and defaults,
%% see Amazon ECS Task
%% Definitions:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% You can specify a role for your task with the `taskRoleArn' parameter.
%% When you specify a
%% role for a task, its containers can then use the latest versions of the
%% CLI or SDKs to make API
%% requests to the Amazon Web Services services that are specified in the
%% policy that's associated with the role. For
%% more information, see IAM Roles for Tasks:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
%% in the
%% Amazon Elastic Container Service Developer Guide.
%%
%% You can specify a Docker networking mode for the containers in your task
%% definition with the
%% `networkMode' parameter. If you specify the `awsvpc' network mode,
%% the task
%% is allocated an elastic network interface, and you must specify a
%% NetworkConfiguration:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html
%% when
%% you create a service or run a task with the task definition. For more
%% information, see Task
%% Networking:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
%% in the Amazon Elastic Container Service Developer Guide.
-spec register_task_definition(aws_client:aws_client(), register_task_definition_request()) ->
    {ok, register_task_definition_response(), tuple()} |
    {error, any()} |
    {error, register_task_definition_errors(), tuple()}.
register_task_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_task_definition(Client, Input, []).

-spec register_task_definition(aws_client:aws_client(), register_task_definition_request(), proplists:proplist()) ->
    {ok, register_task_definition_response(), tuple()} |
    {error, any()} |
    {error, register_task_definition_errors(), tuple()}.
register_task_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTaskDefinition">>, Input, Options).

%% @doc Starts a new task using the specified task definition.
%%
%% On March 21, 2024, a change was made to resolve the task definition
%% revision before authorization. When a task definition revision is not
%% specified, authorization will occur using the latest revision of a task
%% definition.
%%
%% Amazon Elastic Inference (EI) is no longer available to customers.
%%
%% You can allow Amazon ECS to place tasks for you, or you can customize how
%% Amazon ECS places tasks using
%% placement constraints and placement strategies. For more information, see
%% Scheduling
%% Tasks:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% Alternatively, you can use `StartTask' to use your own scheduler or
%% place tasks manually
%% on specific container instances.
%%
%% You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the
%% volume when creating or updating a
%% service. For more infomation, see Amazon EBS
%% volumes:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% The Amazon ECS API follows an eventual consistency model. This is because
%% of the distributed nature of the
%% system supporting the API. This means that the result of an API command
%% you run that affects your Amazon ECS
%% resources might not be immediately visible to all subsequent commands you
%% run. Keep this in mind when
%% you carry out an API command that immediately follows a previous API
%% command.
%%
%% To manage eventual consistency, you can do the following:
%%
%% Confirm the state of the resource before you run a command to modify it.
%% Run the
%% DescribeTasks command using an exponential backoff algorithm to ensure
%% that you allow enough
%% time for the previous command to propagate through the system. To do this,
%% run the
%% DescribeTasks command repeatedly, starting with a couple of seconds of
%% wait time and increasing
%% gradually up to five minutes of wait time.
%%
%% Add wait time between subsequent commands, even if the DescribeTasks
%% command returns an
%% accurate response. Apply an exponential backoff algorithm starting with a
%% couple of seconds of
%% wait time, and increase gradually up to about five minutes of wait time.
-spec run_task(aws_client:aws_client(), run_task_request()) ->
    {ok, run_task_response(), tuple()} |
    {error, any()} |
    {error, run_task_errors(), tuple()}.
run_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_task(Client, Input, []).

-spec run_task(aws_client:aws_client(), run_task_request(), proplists:proplist()) ->
    {ok, run_task_response(), tuple()} |
    {error, any()} |
    {error, run_task_errors(), tuple()}.
run_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunTask">>, Input, Options).

%% @doc Starts a new task from the specified task definition on the specified
%% container instance or
%% instances.
%%
%% On March 21, 2024, a change was made to resolve the task definition
%% revision before authorization. When a task definition revision is not
%% specified, authorization will occur using the latest revision of a task
%% definition.
%%
%% Amazon Elastic Inference (EI) is no longer available to customers.
%%
%% Alternatively, you can use`RunTask' to place tasks for you. For more
%% information, see
%% Scheduling
%% Tasks:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the
%% volume when creating or updating a
%% service. For more infomation, see Amazon EBS
%% volumes:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
%% in the Amazon Elastic Container Service Developer Guide.
-spec start_task(aws_client:aws_client(), start_task_request()) ->
    {ok, start_task_response(), tuple()} |
    {error, any()} |
    {error, start_task_errors(), tuple()}.
start_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_task(Client, Input, []).

-spec start_task(aws_client:aws_client(), start_task_request(), proplists:proplist()) ->
    {ok, start_task_response(), tuple()} |
    {error, any()} |
    {error, start_task_errors(), tuple()}.
start_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTask">>, Input, Options).

%% @doc Stops a running task.
%%
%% Any tags associated with the task will be deleted.
%%
%% When you call `StopTask' on a task, the equivalent of `docker
%% stop' is issued
%% to the containers running in the task. This results in a `SIGTERM'
%% value and a default
%% 30-second timeout, after which the `SIGKILL' value is sent and the
%% containers are forcibly
%% stopped. If the container handles the `SIGTERM' value gracefully and
%% exits within 30 seconds
%% from receiving it, no `SIGKILL' value is sent.
%%
%% For Windows containers, POSIX signals do not work and runtime stops the
%% container by sending a
%% `CTRL_SHUTDOWN_EVENT'. For more information, see Unable to react to
%% graceful shutdown of (Windows)
%% container #25982: https://github.com/moby/moby/issues/25982 on GitHub.
%%
%% The default 30-second timeout can be configured on the Amazon ECS
%% container agent with the
%% `ECS_CONTAINER_STOP_TIMEOUT' variable. For more information, see
%% Amazon ECS
%% Container Agent Configuration:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
%% in the Amazon Elastic Container Service Developer Guide.
-spec stop_task(aws_client:aws_client(), stop_task_request()) ->
    {ok, stop_task_response(), tuple()} |
    {error, any()} |
    {error, stop_task_errors(), tuple()}.
stop_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_task(Client, Input, []).

-spec stop_task(aws_client:aws_client(), stop_task_request(), proplists:proplist()) ->
    {ok, stop_task_response(), tuple()} |
    {error, any()} |
    {error, stop_task_errors(), tuple()}.
stop_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTask">>, Input, Options).

%% @doc
%% This action is only used by the Amazon ECS agent, and it is not intended
%% for use outside of the agent.
%%
%% Sent to acknowledge that an attachment changed states.
-spec submit_attachment_state_changes(aws_client:aws_client(), submit_attachment_state_changes_request()) ->
    {ok, submit_attachment_state_changes_response(), tuple()} |
    {error, any()} |
    {error, submit_attachment_state_changes_errors(), tuple()}.
submit_attachment_state_changes(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_attachment_state_changes(Client, Input, []).

-spec submit_attachment_state_changes(aws_client:aws_client(), submit_attachment_state_changes_request(), proplists:proplist()) ->
    {ok, submit_attachment_state_changes_response(), tuple()} |
    {error, any()} |
    {error, submit_attachment_state_changes_errors(), tuple()}.
submit_attachment_state_changes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitAttachmentStateChanges">>, Input, Options).

%% @doc
%% This action is only used by the Amazon ECS agent, and it is not intended
%% for use outside of the agent.
%%
%% Sent to acknowledge that a container changed states.
-spec submit_container_state_change(aws_client:aws_client(), submit_container_state_change_request()) ->
    {ok, submit_container_state_change_response(), tuple()} |
    {error, any()} |
    {error, submit_container_state_change_errors(), tuple()}.
submit_container_state_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_container_state_change(Client, Input, []).

-spec submit_container_state_change(aws_client:aws_client(), submit_container_state_change_request(), proplists:proplist()) ->
    {ok, submit_container_state_change_response(), tuple()} |
    {error, any()} |
    {error, submit_container_state_change_errors(), tuple()}.
submit_container_state_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitContainerStateChange">>, Input, Options).

%% @doc
%% This action is only used by the Amazon ECS agent, and it is not intended
%% for use outside of the agent.
%%
%% Sent to acknowledge that a task changed states.
-spec submit_task_state_change(aws_client:aws_client(), submit_task_state_change_request()) ->
    {ok, submit_task_state_change_response(), tuple()} |
    {error, any()} |
    {error, submit_task_state_change_errors(), tuple()}.
submit_task_state_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_task_state_change(Client, Input, []).

-spec submit_task_state_change(aws_client:aws_client(), submit_task_state_change_request(), proplists:proplist()) ->
    {ok, submit_task_state_change_response(), tuple()} |
    {error, any()} |
    {error, submit_task_state_change_errors(), tuple()}.
submit_task_state_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitTaskStateChange">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing
%% tags on a resource aren't specified in the request parameters, they
%% aren't changed. When a resource is
%% deleted, the tags that are associated with that resource are deleted as
%% well.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes specified tags from a resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies the parameters for a capacity provider.
-spec update_capacity_provider(aws_client:aws_client(), update_capacity_provider_request()) ->
    {ok, update_capacity_provider_response(), tuple()} |
    {error, any()} |
    {error, update_capacity_provider_errors(), tuple()}.
update_capacity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_capacity_provider(Client, Input, []).

-spec update_capacity_provider(aws_client:aws_client(), update_capacity_provider_request(), proplists:proplist()) ->
    {ok, update_capacity_provider_response(), tuple()} |
    {error, any()} |
    {error, update_capacity_provider_errors(), tuple()}.
update_capacity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCapacityProvider">>, Input, Options).

%% @doc Updates the cluster.
-spec update_cluster(aws_client:aws_client(), update_cluster_request()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster(Client, Input, []).

-spec update_cluster(aws_client:aws_client(), update_cluster_request(), proplists:proplist()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCluster">>, Input, Options).

%% @doc Modifies the settings to use for a cluster.
-spec update_cluster_settings(aws_client:aws_client(), update_cluster_settings_request()) ->
    {ok, update_cluster_settings_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_settings_errors(), tuple()}.
update_cluster_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster_settings(Client, Input, []).

-spec update_cluster_settings(aws_client:aws_client(), update_cluster_settings_request(), proplists:proplist()) ->
    {ok, update_cluster_settings_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_settings_errors(), tuple()}.
update_cluster_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateClusterSettings">>, Input, Options).

%% @doc Updates the Amazon ECS container agent on a specified container
%% instance.
%%
%% Updating the Amazon ECS container
%% agent doesn't interrupt running tasks or services on the container
%% instance. The process for updating
%% the agent differs depending on whether your container instance was
%% launched with the Amazon ECS-optimized
%% AMI or another operating system.
%%
%% The `UpdateContainerAgent' API isn't supported for container
%% instances using the
%% Amazon ECS-optimized Amazon Linux 2 (arm64) AMI. To update the container
%% agent, you can update the
%% `ecs-init' package. This updates the agent. For more information, see
%% Updating
%% the Amazon ECS container agent:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/agent-update-ecs-ami.html
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% Agent updates with the `UpdateContainerAgent' API operation do not
%% apply to Windows
%% container instances. We recommend that you launch new container instances
%% to update the agent
%% version in your Windows clusters.
%%
%% The `UpdateContainerAgent' API requires an Amazon ECS-optimized AMI or
%% Amazon Linux AMI with
%% the `ecs-init' service installed and running. For help updating the
%% Amazon ECS container agent on
%% other operating systems, see Manually updating
%% the Amazon ECS container agent:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent
%% in the Amazon Elastic Container Service Developer Guide.
-spec update_container_agent(aws_client:aws_client(), update_container_agent_request()) ->
    {ok, update_container_agent_response(), tuple()} |
    {error, any()} |
    {error, update_container_agent_errors(), tuple()}.
update_container_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_container_agent(Client, Input, []).

-spec update_container_agent(aws_client:aws_client(), update_container_agent_request(), proplists:proplist()) ->
    {ok, update_container_agent_response(), tuple()} |
    {error, any()} |
    {error, update_container_agent_errors(), tuple()}.
update_container_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContainerAgent">>, Input, Options).

%% @doc Modifies the status of an Amazon ECS container instance.
%%
%% Once a container instance has reached an `ACTIVE' state, you can
%% change the status of a
%% container instance to `DRAINING' to manually remove an instance from a
%% cluster, for example
%% to perform system updates, update the Docker daemon, or scale down the
%% cluster size.
%%
%% A container instance can't be changed to `DRAINING' until it has
%% reached an
%% `ACTIVE' status. If the instance is in any other status, an error will
%% be
%% received.
%%
%% When you set a container instance to `DRAINING', Amazon ECS prevents
%% new tasks from being
%% scheduled for placement on the container instance and replacement service
%% tasks are started on other
%% container instances in the cluster if the resources are available. Service
%% tasks on the container
%% instance that are in the `PENDING' state are stopped immediately.
%%
%% Service tasks on the container instance that are in the `RUNNING'
%% state are stopped and
%% replaced according to the service's deployment configuration
%% parameters,
%% `minimumHealthyPercent' and `maximumPercent'. You can change the
%% deployment
%% configuration of your service using UpdateService:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html.
%%
%% If `minimumHealthyPercent' is below 100%, the scheduler can ignore
%% `desiredCount' temporarily during task replacement. For example,
%% `desiredCount' is four tasks, a minimum of 50% allows the scheduler to
%% stop two
%% existing tasks before starting two new tasks. If the minimum is 100%, the
%% service scheduler
%% can't remove existing tasks until the replacement tasks are considered
%% healthy. Tasks for
%% services that do not use a load balancer are considered healthy if
%% they're in the
%% `RUNNING' state. Tasks for services that use a load balancer are
%% considered
%% healthy if they're in the `RUNNING' state and are reported as
%% healthy by the load
%% balancer.
%%
%% The `maximumPercent' parameter represents an upper limit on the number
%% of running
%% tasks during task replacement. You can use this to define the replacement
%% batch size. For
%% example, if `desiredCount' is four tasks, a maximum of 200% starts
%% four new tasks
%% before stopping the four tasks to be drained, provided that the cluster
%% resources required to
%% do this are available. If the maximum is 100%, then replacement tasks
%% can't start until the
%% draining tasks have stopped.
%%
%% Any `PENDING' or `RUNNING' tasks that do not belong to a service
%% aren't
%% affected. You must wait for them to finish or stop them manually.
%%
%% A container instance has completed draining when it has no more
%% `RUNNING' tasks. You can
%% verify this using ListTasks:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html.
%%
%% When a container instance has been drained, you can set a container
%% instance to `ACTIVE'
%% status and once it has reached that status the Amazon ECS scheduler can
%% begin scheduling tasks on the
%% instance again.
-spec update_container_instances_state(aws_client:aws_client(), update_container_instances_state_request()) ->
    {ok, update_container_instances_state_response(), tuple()} |
    {error, any()} |
    {error, update_container_instances_state_errors(), tuple()}.
update_container_instances_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_container_instances_state(Client, Input, []).

-spec update_container_instances_state(aws_client:aws_client(), update_container_instances_state_request(), proplists:proplist()) ->
    {ok, update_container_instances_state_response(), tuple()} |
    {error, any()} |
    {error, update_container_instances_state_errors(), tuple()}.
update_container_instances_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContainerInstancesState">>, Input, Options).

%% @doc Modifies the parameters of a service.
%%
%% On March 21, 2024, a change was made to resolve the task definition
%% revision before authorization. When a task definition revision is not
%% specified, authorization will occur using the latest revision of a task
%% definition.
%%
%% For services using the rolling update (`ECS') you can update the
%% desired count, deployment
%% configuration, network configuration, load balancers, service registries,
%% enable ECS managed tags
%% option, propagate tags option, task placement constraints and strategies,
%% and task definition. When you
%% update any of these parameters, Amazon ECS starts new tasks with the new
%% configuration.
%%
%% You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the
%% volume when starting or running a
%% task, or when creating or updating a service. For more infomation, see
%% Amazon EBS
%% volumes:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
%% in the Amazon Elastic Container Service Developer Guide. You can update
%% your volume configurations and trigger a new
%% deployment. `volumeConfigurations' is only supported for REPLICA
%% service and not DAEMON
%% service. If you leave `volumeConfigurations'
%% `null', it doesn't trigger a new deployment. For more infomation
%% on volumes, see Amazon EBS
%% volumes:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% For services using the blue/green (`CODE_DEPLOY') deployment
%% controller, only the desired
%% count, deployment configuration, health check grace period, task placement
%% constraints and strategies,
%% enable ECS managed tags option, and propagate tags can be updated using
%% this API. If the network
%% configuration, platform version, task definition, or load balancer need to
%% be updated, create a new
%% CodeDeploy deployment. For more information, see CreateDeployment:
%% https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html
%% in the
%% CodeDeploy API Reference.
%%
%% For services using an external deployment controller, you can update only
%% the desired count, task
%% placement constraints and strategies, health check grace period, enable
%% ECS managed tags option, and
%% propagate tags option, using this API. If the launch type, load balancer,
%% network configuration,
%% platform version, or task definition need to be updated, create a new task
%% set For more information,
%% see CreateTaskSet:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html.
%%
%% You can add to or subtract from the number of instantiations of a task
%% definition in a service by
%% specifying the cluster that the service is running in and a new
%% `desiredCount'
%% parameter.
%%
%% You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the
%% volume when starting or running a
%% task, or when creating or updating a service. For more infomation, see
%% Amazon EBS
%% volumes:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
%% in the Amazon Elastic Container Service Developer Guide.
%%
%% If you have updated the container image of your application, you can
%% create a new task definition
%% with that image and deploy it to your service. The service scheduler uses
%% the minimum healthy percent
%% and maximum percent parameters (in the service's deployment
%% configuration) to determine the deployment
%% strategy.
%%
%% If your updated Docker image uses the same tag as what is in the existing
%% task definition for
%% your service (for example, `my_image:latest'), you don't need to
%% create a new revision
%% of your task definition. You can update the service using the
%% `forceNewDeployment'
%% option. The new tasks launched by the deployment pull the current
%% image/tag combination from your
%% repository when they start.
%%
%% You can also update the deployment configuration of a service. When a
%% deployment is triggered by
%% updating the task definition of a service, the service scheduler uses the
%% deployment configuration
%% parameters, `minimumHealthyPercent' and `maximumPercent', to
%% determine the
%% deployment strategy.
%%
%% If `minimumHealthyPercent' is below 100%, the scheduler can ignore
%% `desiredCount' temporarily during a deployment. For example, if
%% `desiredCount' is four tasks, a minimum of 50% allows the scheduler to
%% stop two
%% existing tasks before starting two new tasks. Tasks for services that
%% don't use a load balancer
%% are considered healthy if they're in the `RUNNING' state. Tasks
%% for services that
%% use a load balancer are considered healthy if they're in the
%% `RUNNING' state and are
%% reported as healthy by the load balancer.
%%
%% The `maximumPercent' parameter represents an upper limit on the number
%% of running
%% tasks during a deployment. You can use it to define the deployment batch
%% size. For example, if
%% `desiredCount' is four tasks, a maximum of 200% starts four new tasks
%% before
%% stopping the four older tasks (provided that the cluster resources
%% required to do this are
%% available).
%%
%% When UpdateService:
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html
%% stops a task during a deployment, the equivalent of `docker stop'
%% is issued to the containers running in the task. This results in a
%% `SIGTERM' and a 30-second
%% timeout. After this, `SIGKILL' is sent and the containers are forcibly
%% stopped. If the
%% container handles the `SIGTERM' gracefully and exits within 30 seconds
%% from receiving it, no
%% `SIGKILL' is sent.
%%
%% When the service scheduler launches new tasks, it determines task
%% placement in your cluster with the
%% following logic.
%%
%% Determine which of the container instances in your cluster can support
%% your service's task
%% definition. For example, they have the required CPU, memory, ports, and
%% container instance
%% attributes.
%%
%% By default, the service scheduler attempts to balance tasks across
%% Availability Zones in this
%% manner even though you can choose a different placement strategy.
%%
%% Sort the valid container instances by the fewest number of running tasks
%% for this
%% service in the same Availability Zone as the instance. For example, if
%% zone A has one
%% running service task and zones B and C each have zero, valid container
%% instances in
%% either zone B or C are considered optimal for placement.
%%
%% Place the new service task on a valid container instance in an optimal
%% Availability
%% Zone (based on the previous steps), favoring container instances with the
%% fewest number
%% of running tasks for this service.
%%
%% When the service scheduler stops running tasks, it attempts to maintain
%% balance across the
%% Availability Zones in your cluster using the following logic:
%%
%% Sort the container instances by the largest number of running tasks for
%% this service in the
%% same Availability Zone as the instance. For example, if zone A has one
%% running service task and
%% zones B and C each have two, container instances in either zone B or C are
%% considered optimal
%% for termination.
%%
%% Stop the task on a container instance in an optimal Availability Zone
%% (based on the previous
%% steps), favoring container instances with the largest number of running
%% tasks for this
%% service.
%%
%% You must have a service-linked role when you update any of the following
%% service
%% properties:
%%
%% `loadBalancers',
%%
%% `serviceRegistries'
%%
%% For more information about the role see the `CreateService' request
%% parameter
%% `role'
%% :
%% https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html#ECS-CreateService-request-role.
-spec update_service(aws_client:aws_client(), update_service_request()) ->
    {ok, update_service_response(), tuple()} |
    {error, any()} |
    {error, update_service_errors(), tuple()}.
update_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service(Client, Input, []).

-spec update_service(aws_client:aws_client(), update_service_request(), proplists:proplist()) ->
    {ok, update_service_response(), tuple()} |
    {error, any()} |
    {error, update_service_errors(), tuple()}.
update_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateService">>, Input, Options).

%% @doc Modifies which task set in a service is the primary task set.
%%
%% Any parameters that are updated on the
%% primary task set in a service will transition to the service. This is used
%% when a service uses the
%% `EXTERNAL' deployment controller type. For more information, see
%% Amazon ECS Deployment
%% Types:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
%% in the Amazon Elastic Container Service Developer Guide.
-spec update_service_primary_task_set(aws_client:aws_client(), update_service_primary_task_set_request()) ->
    {ok, update_service_primary_task_set_response(), tuple()} |
    {error, any()} |
    {error, update_service_primary_task_set_errors(), tuple()}.
update_service_primary_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_primary_task_set(Client, Input, []).

-spec update_service_primary_task_set(aws_client:aws_client(), update_service_primary_task_set_request(), proplists:proplist()) ->
    {ok, update_service_primary_task_set_response(), tuple()} |
    {error, any()} |
    {error, update_service_primary_task_set_errors(), tuple()}.
update_service_primary_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServicePrimaryTaskSet">>, Input, Options).

%% @doc Updates the protection status of a task.
%%
%% You can set `protectionEnabled' to
%% `true' to protect your task from termination during scale-in events
%% from Service
%% Autoscaling:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html
%% or deployments:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html.
%%
%% Task-protection, by default, expires after 2 hours at which point Amazon
%% ECS clears the
%% `protectionEnabled' property making the task eligible for termination
%% by a subsequent
%% scale-in event.
%%
%% You can specify a custom expiration period for task protection from 1
%% minute to up to 2,880 minutes
%% (48 hours). To specify the custom expiration period, set the
%% `expiresInMinutes' property.
%% The `expiresInMinutes' property is always reset when you invoke this
%% operation for a task
%% that already has `protectionEnabled' set to `true'. You can keep
%% extending the
%% protection expiration period of a task by invoking this operation
%% repeatedly.
%%
%% To learn more about Amazon ECS task protection, see Task scale-in
%% protection:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection.html
%% in the
%% Amazon Elastic Container Service Developer Guide
%% .
%%
%% This operation is only supported for tasks belonging to an Amazon ECS
%% service. Invoking this operation
%% for a standalone task will result in an `TASK_NOT_VALID' failure. For
%% more information,
%% see API failure reasons:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html.
%%
%% If you prefer to set task protection from within the container, we
%% recommend using the Task scale-in
%% protection endpoint:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection-endpoint.html.
-spec update_task_protection(aws_client:aws_client(), update_task_protection_request()) ->
    {ok, update_task_protection_response(), tuple()} |
    {error, any()} |
    {error, update_task_protection_errors(), tuple()}.
update_task_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task_protection(Client, Input, []).

-spec update_task_protection(aws_client:aws_client(), update_task_protection_request(), proplists:proplist()) ->
    {ok, update_task_protection_response(), tuple()} |
    {error, any()} |
    {error, update_task_protection_errors(), tuple()}.
update_task_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTaskProtection">>, Input, Options).

%% @doc Modifies a task set.
%%
%% This is used when a service uses the `EXTERNAL' deployment controller
%% type. For more information, see Amazon ECS Deployment Types:
%% https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
%% in the
%% Amazon Elastic Container Service Developer Guide.
-spec update_task_set(aws_client:aws_client(), update_task_set_request()) ->
    {ok, update_task_set_response(), tuple()} |
    {error, any()} |
    {error, update_task_set_errors(), tuple()}.
update_task_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task_set(Client, Input, []).

-spec update_task_set(aws_client:aws_client(), update_task_set_request(), proplists:proplist()) ->
    {ok, update_task_set_response(), tuple()} |
    {error, any()} |
    {error, update_task_set_errors(), tuple()}.
update_task_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTaskSet">>, Input, Options).

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
    Client1 = Client#{service => <<"ecs">>},
    Host = build_host(<<"ecs">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonEC2ContainerServiceV20141113.", Action/binary>>}
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
