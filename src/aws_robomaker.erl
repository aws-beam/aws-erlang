%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This section provides documentation for the AWS RoboMaker API
%% operations.
-module(aws_robomaker).

-export([batch_delete_worlds/2,
         batch_delete_worlds/3,
         batch_describe_simulation_job/2,
         batch_describe_simulation_job/3,
         cancel_deployment_job/2,
         cancel_deployment_job/3,
         cancel_simulation_job/2,
         cancel_simulation_job/3,
         cancel_simulation_job_batch/2,
         cancel_simulation_job_batch/3,
         cancel_world_export_job/2,
         cancel_world_export_job/3,
         cancel_world_generation_job/2,
         cancel_world_generation_job/3,
         create_deployment_job/2,
         create_deployment_job/3,
         create_fleet/2,
         create_fleet/3,
         create_robot/2,
         create_robot/3,
         create_robot_application/2,
         create_robot_application/3,
         create_robot_application_version/2,
         create_robot_application_version/3,
         create_simulation_application/2,
         create_simulation_application/3,
         create_simulation_application_version/2,
         create_simulation_application_version/3,
         create_simulation_job/2,
         create_simulation_job/3,
         create_world_export_job/2,
         create_world_export_job/3,
         create_world_generation_job/2,
         create_world_generation_job/3,
         create_world_template/2,
         create_world_template/3,
         delete_fleet/2,
         delete_fleet/3,
         delete_robot/2,
         delete_robot/3,
         delete_robot_application/2,
         delete_robot_application/3,
         delete_simulation_application/2,
         delete_simulation_application/3,
         delete_world_template/2,
         delete_world_template/3,
         deregister_robot/2,
         deregister_robot/3,
         describe_deployment_job/2,
         describe_deployment_job/3,
         describe_fleet/2,
         describe_fleet/3,
         describe_robot/2,
         describe_robot/3,
         describe_robot_application/2,
         describe_robot_application/3,
         describe_simulation_application/2,
         describe_simulation_application/3,
         describe_simulation_job/2,
         describe_simulation_job/3,
         describe_simulation_job_batch/2,
         describe_simulation_job_batch/3,
         describe_world/2,
         describe_world/3,
         describe_world_export_job/2,
         describe_world_export_job/3,
         describe_world_generation_job/2,
         describe_world_generation_job/3,
         describe_world_template/2,
         describe_world_template/3,
         get_world_template_body/2,
         get_world_template_body/3,
         list_deployment_jobs/2,
         list_deployment_jobs/3,
         list_fleets/2,
         list_fleets/3,
         list_robot_applications/2,
         list_robot_applications/3,
         list_robots/2,
         list_robots/3,
         list_simulation_applications/2,
         list_simulation_applications/3,
         list_simulation_job_batches/2,
         list_simulation_job_batches/3,
         list_simulation_jobs/2,
         list_simulation_jobs/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_world_export_jobs/2,
         list_world_export_jobs/3,
         list_world_generation_jobs/2,
         list_world_generation_jobs/3,
         list_world_templates/2,
         list_world_templates/3,
         list_worlds/2,
         list_worlds/3,
         register_robot/2,
         register_robot/3,
         restart_simulation_job/2,
         restart_simulation_job/3,
         start_simulation_job_batch/2,
         start_simulation_job_batch/3,
         sync_deployment_job/2,
         sync_deployment_job/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_robot_application/2,
         update_robot_application/3,
         update_simulation_application/2,
         update_simulation_application/3,
         update_world_template/2,
         update_world_template/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_deployment_jobs_response() :: #{
%%   <<"deploymentJobs">> => list(deployment_job()),
%%   <<"nextToken">> => string()
%% }
-type list_deployment_jobs_response() :: #{binary() => any()}.


%% Example:
%% describe_deployment_job_request() :: #{
%%   <<"job">> := string()
%% }
-type describe_deployment_job_request() :: #{binary() => any()}.


%% Example:
%% deployment_application_config() :: #{
%%   <<"application">> => string(),
%%   <<"applicationVersion">> => string(),
%%   <<"launchConfig">> => deployment_launch_config()
%% }
-type deployment_application_config() :: #{binary() => any()}.


%% Example:
%% describe_deployment_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deploymentApplicationConfigs">> => list(deployment_application_config()),
%%   <<"deploymentConfig">> => deployment_config(),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"fleet">> => string(),
%%   <<"robotDeploymentSummary">> => list(robot_deployment()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type describe_deployment_job_response() :: #{binary() => any()}.


%% Example:
%% list_simulation_applications_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"simulationApplicationSummaries">> => list(simulation_application_summary())
%% }
-type list_simulation_applications_response() :: #{binary() => any()}.


%% Example:
%% list_world_export_jobs_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_world_export_jobs_request() :: #{binary() => any()}.


%% Example:
%% create_world_generation_job_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"tags">> => map(),
%%   <<"template">> := string(),
%%   <<"worldCount">> := world_count(),
%%   <<"worldTags">> => map()
%% }
-type create_world_generation_job_request() :: #{binary() => any()}.


%% Example:
%% robot_software_suite() :: #{
%%   <<"name">> => list(any()),
%%   <<"version">> => list(any())
%% }
-type robot_software_suite() :: #{binary() => any()}.


%% Example:
%% describe_simulation_job_batch_request() :: #{
%%   <<"batch">> := string()
%% }
-type describe_simulation_job_batch_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% delete_fleet_request() :: #{
%%   <<"fleet">> := string()
%% }
-type delete_fleet_request() :: #{binary() => any()}.


%% Example:
%% describe_simulation_application_response() :: #{
%%   <<"arn">> => string(),
%%   <<"environment">> => environment(),
%%   <<"imageDigest">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"renderingEngine">> => rendering_engine(),
%%   <<"revisionId">> => string(),
%%   <<"robotSoftwareSuite">> => robot_software_suite(),
%%   <<"simulationSoftwareSuite">> => simulation_software_suite(),
%%   <<"sources">> => list(source()),
%%   <<"tags">> => map(),
%%   <<"version">> => string()
%% }
-type describe_simulation_application_response() :: #{binary() => any()}.


%% Example:
%% start_simulation_job_batch_response() :: #{
%%   <<"arn">> => string(),
%%   <<"batchPolicy">> => batch_policy(),
%%   <<"clientRequestToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdRequests">> => list(simulation_job_summary()),
%%   <<"failedRequests">> => list(failed_create_simulation_job_request()),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"pendingRequests">> => list(simulation_job_request()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type start_simulation_job_batch_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% create_simulation_application_request() :: #{
%%   <<"environment">> => environment(),
%%   <<"name">> := string(),
%%   <<"renderingEngine">> => rendering_engine(),
%%   <<"robotSoftwareSuite">> := robot_software_suite(),
%%   <<"simulationSoftwareSuite">> := simulation_software_suite(),
%%   <<"sources">> => list(source_config()),
%%   <<"tags">> => map()
%% }
-type create_simulation_application_request() :: #{binary() => any()}.

%% Example:
%% delete_robot_response() :: #{}
-type delete_robot_response() :: #{}.


%% Example:
%% robot() :: #{
%%   <<"architecture">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"fleetArn">> => string(),
%%   <<"greenGrassGroupId">> => string(),
%%   <<"lastDeploymentJob">> => string(),
%%   <<"lastDeploymentTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type robot() :: #{binary() => any()}.

%% Example:
%% cancel_deployment_job_response() :: #{}
-type cancel_deployment_job_response() :: #{}.


%% Example:
%% world_generation_job_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"failedWorldCount">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"succeededWorldCount">> => integer(),
%%   <<"template">> => string(),
%%   <<"worldCount">> => world_count()
%% }
-type world_generation_job_summary() :: #{binary() => any()}.


%% Example:
%% create_fleet_request() :: #{
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_fleet_request() :: #{binary() => any()}.


%% Example:
%% compute_response() :: #{
%%   <<"computeType">> => list(any()),
%%   <<"gpuUnitLimit">> => integer(),
%%   <<"simulationUnitLimit">> => integer()
%% }
-type compute_response() :: #{binary() => any()}.


%% Example:
%% describe_world_request() :: #{
%%   <<"world">> := string()
%% }
-type describe_world_request() :: #{binary() => any()}.


%% Example:
%% create_deployment_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deploymentApplicationConfigs">> => list(deployment_application_config()),
%%   <<"deploymentConfig">> => deployment_config(),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"fleet">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_deployment_job_response() :: #{binary() => any()}.


%% Example:
%% update_world_template_request() :: #{
%%   <<"name">> => string(),
%%   <<"template">> := string(),
%%   <<"templateBody">> => string(),
%%   <<"templateLocation">> => template_location()
%% }
-type update_world_template_request() :: #{binary() => any()}.


%% Example:
%% deployment_config() :: #{
%%   <<"concurrentDeploymentPercentage">> => integer(),
%%   <<"downloadConditionFile">> => s3_object(),
%%   <<"failureThresholdPercentage">> => integer(),
%%   <<"robotDeploymentTimeoutInSeconds">> => float()
%% }
-type deployment_config() :: #{binary() => any()}.


%% Example:
%% compute() :: #{
%%   <<"computeType">> => list(any()),
%%   <<"gpuUnitLimit">> => integer(),
%%   <<"simulationUnitLimit">> => integer()
%% }
-type compute() :: #{binary() => any()}.

%% Example:
%% delete_fleet_response() :: #{}
-type delete_fleet_response() :: #{}.


%% Example:
%% network_interface() :: #{
%%   <<"networkInterfaceId">> => string(),
%%   <<"privateIpAddress">> => string(),
%%   <<"publicIpAddress">> => string()
%% }
-type network_interface() :: #{binary() => any()}.


%% Example:
%% update_robot_application_request() :: #{
%%   <<"application">> := string(),
%%   <<"currentRevisionId">> => string(),
%%   <<"environment">> => environment(),
%%   <<"robotSoftwareSuite">> := robot_software_suite(),
%%   <<"sources">> => list(source_config())
%% }
-type update_robot_application_request() :: #{binary() => any()}.


%% Example:
%% simulation_job_request() :: #{
%%   <<"compute">> => compute(),
%%   <<"dataSources">> => list(data_source_config()),
%%   <<"failureBehavior">> => list(any()),
%%   <<"iamRole">> => string(),
%%   <<"loggingConfig">> => logging_config(),
%%   <<"maxJobDurationInSeconds">> => float(),
%%   <<"outputLocation">> => output_location(),
%%   <<"robotApplications">> => list(robot_application_config()),
%%   <<"simulationApplications">> => list(simulation_application_config()),
%%   <<"tags">> => map(),
%%   <<"useDefaultApplications">> => boolean(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type simulation_job_request() :: #{binary() => any()}.


%% Example:
%% list_fleets_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_fleets_request() :: #{binary() => any()}.


%% Example:
%% create_robot_response() :: #{
%%   <<"architecture">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"greengrassGroupId">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_robot_response() :: #{binary() => any()}.


%% Example:
%% s3_object() :: #{
%%   <<"bucket">> => string(),
%%   <<"etag">> => string(),
%%   <<"key">> => string()
%% }
-type s3_object() :: #{binary() => any()}.

%% Example:
%% restart_simulation_job_response() :: #{}
-type restart_simulation_job_response() :: #{}.


%% Example:
%% batch_policy() :: #{
%%   <<"maxConcurrency">> => integer(),
%%   <<"timeoutInSeconds">> => float()
%% }
-type batch_policy() :: #{binary() => any()}.


%% Example:
%% deregister_robot_response() :: #{
%%   <<"fleet">> => string(),
%%   <<"robot">> => string()
%% }
-type deregister_robot_response() :: #{binary() => any()}.


%% Example:
%% simulation_job_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"computeType">> => list(any()),
%%   <<"dataSourceNames">> => list(string()),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"robotApplicationNames">> => list(string()),
%%   <<"simulationApplicationNames">> => list(string()),
%%   <<"status">> => list(any())
%% }
-type simulation_job_summary() :: #{binary() => any()}.


%% Example:
%% list_fleets_response() :: #{
%%   <<"fleetDetails">> => list(fleet()),
%%   <<"nextToken">> => string()
%% }
-type list_fleets_response() :: #{binary() => any()}.


%% Example:
%% logging_config() :: #{
%%   <<"recordAllRosTopics">> => boolean()
%% }
-type logging_config() :: #{binary() => any()}.


%% Example:
%% update_robot_application_response() :: #{
%%   <<"arn">> => string(),
%%   <<"environment">> => environment(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"robotSoftwareSuite">> => robot_software_suite(),
%%   <<"sources">> => list(source()),
%%   <<"version">> => string()
%% }
-type update_robot_application_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_simulation_application_request() :: #{
%%   <<"application">> := string(),
%%   <<"currentRevisionId">> => string(),
%%   <<"environment">> => environment(),
%%   <<"renderingEngine">> => rendering_engine(),
%%   <<"robotSoftwareSuite">> := robot_software_suite(),
%%   <<"simulationSoftwareSuite">> := simulation_software_suite(),
%%   <<"sources">> => list(source_config())
%% }
-type update_simulation_application_request() :: #{binary() => any()}.


%% Example:
%% create_robot_application_version_request() :: #{
%%   <<"application">> := string(),
%%   <<"currentRevisionId">> => string(),
%%   <<"imageDigest">> => string(),
%%   <<"s3Etags">> => list(string())
%% }
-type create_robot_application_version_request() :: #{binary() => any()}.


%% Example:
%% cancel_world_generation_job_request() :: #{
%%   <<"job">> := string()
%% }
-type cancel_world_generation_job_request() :: #{binary() => any()}.


%% Example:
%% create_robot_request() :: #{
%%   <<"architecture">> := list(any()),
%%   <<"greengrassGroupId">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_robot_request() :: #{binary() => any()}.


%% Example:
%% simulation_job_batch_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdRequestCount">> => integer(),
%%   <<"failedRequestCount">> => integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"pendingRequestCount">> => integer(),
%%   <<"status">> => list(any())
%% }
-type simulation_job_batch_summary() :: #{binary() => any()}.


%% Example:
%% simulation_application_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"robotSoftwareSuite">> => robot_software_suite(),
%%   <<"simulationSoftwareSuite">> => simulation_software_suite(),
%%   <<"version">> => string()
%% }
-type simulation_application_summary() :: #{binary() => any()}.


%% Example:
%% create_robot_application_version_response() :: #{
%%   <<"arn">> => string(),
%%   <<"environment">> => environment(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"robotSoftwareSuite">> => robot_software_suite(),
%%   <<"sources">> => list(source()),
%%   <<"version">> => string()
%% }
-type create_robot_application_version_response() :: #{binary() => any()}.


%% Example:
%% world_config() :: #{
%%   <<"world">> => string()
%% }
-type world_config() :: #{binary() => any()}.


%% Example:
%% create_deployment_job_request() :: #{
%%   <<"clientRequestToken">> := string(),
%%   <<"deploymentApplicationConfigs">> := list(deployment_application_config()),
%%   <<"deploymentConfig">> => deployment_config(),
%%   <<"fleet">> := string(),
%%   <<"tags">> => map()
%% }
-type create_deployment_job_request() :: #{binary() => any()}.


%% Example:
%% describe_world_template_response() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"version">> => string()
%% }
-type describe_world_template_response() :: #{binary() => any()}.


%% Example:
%% register_robot_response() :: #{
%%   <<"fleet">> => string(),
%%   <<"robot">> => string()
%% }
-type register_robot_response() :: #{binary() => any()}.


%% Example:
%% world_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"generationJob">> => string(),
%%   <<"template">> => string()
%% }
-type world_summary() :: #{binary() => any()}.


%% Example:
%% create_world_export_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"failureCode">> => list(any()),
%%   <<"iamRole">> => string(),
%%   <<"outputLocation">> => output_location(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_world_export_job_response() :: #{binary() => any()}.


%% Example:
%% list_world_generation_jobs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"worldGenerationJobSummaries">> => list(world_generation_job_summary())
%% }
-type list_world_generation_jobs_response() :: #{binary() => any()}.


%% Example:
%% describe_fleet_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastDeploymentJob">> => string(),
%%   <<"lastDeploymentStatus">> => list(any()),
%%   <<"lastDeploymentTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"robots">> => list(robot()),
%%   <<"tags">> => map()
%% }
-type describe_fleet_response() :: #{binary() => any()}.


%% Example:
%% create_simulation_application_version_request() :: #{
%%   <<"application">> := string(),
%%   <<"currentRevisionId">> => string(),
%%   <<"imageDigest">> => string(),
%%   <<"s3Etags">> => list(string())
%% }
-type create_simulation_application_version_request() :: #{binary() => any()}.


%% Example:
%% progress_detail() :: #{
%%   <<"currentProgress">> => list(any()),
%%   <<"estimatedTimeRemainingSeconds">> => integer(),
%%   <<"percentDone">> => float(),
%%   <<"targetResource">> => string()
%% }
-type progress_detail() :: #{binary() => any()}.


%% Example:
%% concurrent_deployment_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_deployment_exception() :: #{binary() => any()}.


%% Example:
%% cancel_deployment_job_request() :: #{
%%   <<"job">> := string()
%% }
-type cancel_deployment_job_request() :: #{binary() => any()}.


%% Example:
%% s3_key_output() :: #{
%%   <<"etag">> => string(),
%%   <<"s3Key">> => string()
%% }
-type s3_key_output() :: #{binary() => any()}.


%% Example:
%% describe_simulation_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"compute">> => compute_response(),
%%   <<"dataSources">> => list(data_source()),
%%   <<"failureBehavior">> => list(any()),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"iamRole">> => string(),
%%   <<"lastStartedAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"loggingConfig">> => logging_config(),
%%   <<"maxJobDurationInSeconds">> => float(),
%%   <<"name">> => string(),
%%   <<"networkInterface">> => network_interface(),
%%   <<"outputLocation">> => output_location(),
%%   <<"robotApplications">> => list(robot_application_config()),
%%   <<"simulationApplications">> => list(simulation_application_config()),
%%   <<"simulationTimeMillis">> => float(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"vpcConfig">> => vpc_config_response()
%% }
-type describe_simulation_job_response() :: #{binary() => any()}.


%% Example:
%% create_world_template_response() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_world_template_response() :: #{binary() => any()}.


%% Example:
%% delete_world_template_request() :: #{
%%   <<"template">> := string()
%% }
-type delete_world_template_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% upload_configuration() :: #{
%%   <<"name">> => string(),
%%   <<"path">> => string(),
%%   <<"uploadBehavior">> => list(any())
%% }
-type upload_configuration() :: #{binary() => any()}.


%% Example:
%% list_world_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templateSummaries">> => list(template_summary())
%% }
-type list_world_templates_response() :: #{binary() => any()}.


%% Example:
%% environment() :: #{
%%   <<"uri">> => string()
%% }
-type environment() :: #{binary() => any()}.


%% Example:
%% create_simulation_application_version_response() :: #{
%%   <<"arn">> => string(),
%%   <<"environment">> => environment(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"renderingEngine">> => rendering_engine(),
%%   <<"revisionId">> => string(),
%%   <<"robotSoftwareSuite">> => robot_software_suite(),
%%   <<"simulationSoftwareSuite">> => simulation_software_suite(),
%%   <<"sources">> => list(source()),
%%   <<"version">> => string()
%% }
-type create_simulation_application_version_response() :: #{binary() => any()}.


%% Example:
%% simulation_software_suite() :: #{
%%   <<"name">> => list(any()),
%%   <<"version">> => string()
%% }
-type simulation_software_suite() :: #{binary() => any()}.


%% Example:
%% sync_deployment_job_request() :: #{
%%   <<"clientRequestToken">> := string(),
%%   <<"fleet">> := string()
%% }
-type sync_deployment_job_request() :: #{binary() => any()}.


%% Example:
%% launch_config() :: #{
%%   <<"command">> => list(string()),
%%   <<"environmentVariables">> => map(),
%%   <<"launchFile">> => string(),
%%   <<"packageName">> => string(),
%%   <<"portForwardingConfig">> => port_forwarding_config(),
%%   <<"streamUI">> => boolean()
%% }
-type launch_config() :: #{binary() => any()}.


%% Example:
%% describe_world_generation_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"finishedWorldsSummary">> => finished_worlds_summary(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"template">> => string(),
%%   <<"worldCount">> => world_count(),
%%   <<"worldTags">> => map()
%% }
-type describe_world_generation_job_response() :: #{binary() => any()}.


%% Example:
%% create_simulation_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"compute">> => compute_response(),
%%   <<"dataSources">> => list(data_source()),
%%   <<"failureBehavior">> => list(any()),
%%   <<"failureCode">> => list(any()),
%%   <<"iamRole">> => string(),
%%   <<"lastStartedAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"loggingConfig">> => logging_config(),
%%   <<"maxJobDurationInSeconds">> => float(),
%%   <<"outputLocation">> => output_location(),
%%   <<"robotApplications">> => list(robot_application_config()),
%%   <<"simulationApplications">> => list(simulation_application_config()),
%%   <<"simulationTimeMillis">> => float(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"vpcConfig">> => vpc_config_response()
%% }
-type create_simulation_job_response() :: #{binary() => any()}.


%% Example:
%% port_forwarding_config() :: #{
%%   <<"portMappings">> => list(port_mapping())
%% }
-type port_forwarding_config() :: #{binary() => any()}.


%% Example:
%% describe_world_export_job_request() :: #{
%%   <<"job">> := string()
%% }
-type describe_world_export_job_request() :: #{binary() => any()}.


%% Example:
%% create_world_template_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"templateBody">> => string(),
%%   <<"templateLocation">> => template_location()
%% }
-type create_world_template_request() :: #{binary() => any()}.


%% Example:
%% data_source_config() :: #{
%%   <<"destination">> => string(),
%%   <<"name">> => string(),
%%   <<"s3Bucket">> => string(),
%%   <<"s3Keys">> => list(string()),
%%   <<"type">> => list(any())
%% }
-type data_source_config() :: #{binary() => any()}.


%% Example:
%% idempotent_parameter_mismatch_exception() :: #{
%%   <<"message">> => string()
%% }
-type idempotent_parameter_mismatch_exception() :: #{binary() => any()}.


%% Example:
%% template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"version">> => string()
%% }
-type template_summary() :: #{binary() => any()}.


%% Example:
%% create_world_generation_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"failureCode">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"template">> => string(),
%%   <<"worldCount">> => world_count(),
%%   <<"worldTags">> => map()
%% }
-type create_world_generation_job_response() :: #{binary() => any()}.

%% Example:
%% cancel_simulation_job_response() :: #{}
-type cancel_simulation_job_response() :: #{}.

%% Example:
%% delete_robot_application_response() :: #{}
-type delete_robot_application_response() :: #{}.


%% Example:
%% vpc_config() :: #{
%%   <<"assignPublicIp">> => boolean(),
%%   <<"securityGroups">> => list(string()),
%%   <<"subnets">> => list(string())
%% }
-type vpc_config() :: #{binary() => any()}.


%% Example:
%% list_world_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_world_templates_request() :: #{binary() => any()}.


%% Example:
%% world_export_job_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"outputLocation">> => output_location(),
%%   <<"status">> => list(any()),
%%   <<"worlds">> => list(string())
%% }
-type world_export_job_summary() :: #{binary() => any()}.


%% Example:
%% simulation_job() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"compute">> => compute_response(),
%%   <<"dataSources">> => list(data_source()),
%%   <<"failureBehavior">> => list(any()),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"iamRole">> => string(),
%%   <<"lastStartedAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"loggingConfig">> => logging_config(),
%%   <<"maxJobDurationInSeconds">> => float(),
%%   <<"name">> => string(),
%%   <<"networkInterface">> => network_interface(),
%%   <<"outputLocation">> => output_location(),
%%   <<"robotApplications">> => list(robot_application_config()),
%%   <<"simulationApplications">> => list(simulation_application_config()),
%%   <<"simulationTimeMillis">> => float(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"vpcConfig">> => vpc_config_response()
%% }
-type simulation_job() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% batch_describe_simulation_job_response() :: #{
%%   <<"jobs">> => list(simulation_job()),
%%   <<"unprocessedJobs">> => list(string())
%% }
-type batch_describe_simulation_job_response() :: #{binary() => any()}.


%% Example:
%% list_world_export_jobs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"worldExportJobSummaries">> => list(world_export_job_summary())
%% }
-type list_world_export_jobs_response() :: #{binary() => any()}.


%% Example:
%% describe_robot_response() :: #{
%%   <<"architecture">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"fleetArn">> => string(),
%%   <<"greengrassGroupId">> => string(),
%%   <<"lastDeploymentJob">> => string(),
%%   <<"lastDeploymentTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type describe_robot_response() :: #{binary() => any()}.


%% Example:
%% robot_deployment() :: #{
%%   <<"arn">> => string(),
%%   <<"deploymentFinishTime">> => non_neg_integer(),
%%   <<"deploymentStartTime">> => non_neg_integer(),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"progressDetail">> => progress_detail(),
%%   <<"status">> => list(any())
%% }
-type robot_deployment() :: #{binary() => any()}.


%% Example:
%% output_location() :: #{
%%   <<"s3Bucket">> => string(),
%%   <<"s3Prefix">> => string()
%% }
-type output_location() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% deployment_launch_config() :: #{
%%   <<"environmentVariables">> => map(),
%%   <<"launchFile">> => string(),
%%   <<"packageName">> => string(),
%%   <<"postLaunchFile">> => string(),
%%   <<"preLaunchFile">> => string()
%% }
-type deployment_launch_config() :: #{binary() => any()}.

%% Example:
%% delete_world_template_response() :: #{}
-type delete_world_template_response() :: #{}.


%% Example:
%% describe_simulation_job_request() :: #{
%%   <<"job">> := string()
%% }
-type describe_simulation_job_request() :: #{binary() => any()}.


%% Example:
%% batch_delete_worlds_request() :: #{
%%   <<"worlds">> := list(string())
%% }
-type batch_delete_worlds_request() :: #{binary() => any()}.


%% Example:
%% list_robot_applications_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"robotApplicationSummaries">> => list(robot_application_summary())
%% }
-type list_robot_applications_response() :: #{binary() => any()}.


%% Example:
%% get_world_template_body_response() :: #{
%%   <<"templateBody">> => string()
%% }
-type get_world_template_body_response() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% describe_world_generation_job_request() :: #{
%%   <<"job">> := string()
%% }
-type describe_world_generation_job_request() :: #{binary() => any()}.


%% Example:
%% list_world_generation_jobs_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_world_generation_jobs_request() :: #{binary() => any()}.


%% Example:
%% list_simulation_job_batches_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"simulationJobBatchSummaries">> => list(simulation_job_batch_summary())
%% }
-type list_simulation_job_batches_response() :: #{binary() => any()}.


%% Example:
%% update_simulation_application_response() :: #{
%%   <<"arn">> => string(),
%%   <<"environment">> => environment(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"renderingEngine">> => rendering_engine(),
%%   <<"revisionId">> => string(),
%%   <<"robotSoftwareSuite">> => robot_software_suite(),
%%   <<"simulationSoftwareSuite">> => simulation_software_suite(),
%%   <<"sources">> => list(source()),
%%   <<"version">> => string()
%% }
-type update_simulation_application_response() :: #{binary() => any()}.


%% Example:
%% list_robots_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"robots">> => list(robot())
%% }
-type list_robots_response() :: #{binary() => any()}.


%% Example:
%% source() :: #{
%%   <<"architecture">> => list(any()),
%%   <<"etag">> => string(),
%%   <<"s3Bucket">> => string(),
%%   <<"s3Key">> => string()
%% }
-type source() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% start_simulation_job_batch_request() :: #{
%%   <<"batchPolicy">> => batch_policy(),
%%   <<"clientRequestToken">> => string(),
%%   <<"createSimulationJobRequests">> := list(simulation_job_request()),
%%   <<"tags">> => map()
%% }
-type start_simulation_job_batch_request() :: #{binary() => any()}.


%% Example:
%% failure_summary() :: #{
%%   <<"failures">> => list(world_failure()),
%%   <<"totalFailureCount">> => integer()
%% }
-type failure_summary() :: #{binary() => any()}.


%% Example:
%% list_simulation_jobs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"simulationJobSummaries">> => list(simulation_job_summary())
%% }
-type list_simulation_jobs_response() :: #{binary() => any()}.

%% Example:
%% delete_simulation_application_response() :: #{}
-type delete_simulation_application_response() :: #{}.


%% Example:
%% template_location() :: #{
%%   <<"s3Bucket">> => string(),
%%   <<"s3Key">> => string()
%% }
-type template_location() :: #{binary() => any()}.


%% Example:
%% list_worlds_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_worlds_request() :: #{binary() => any()}.


%% Example:
%% cancel_simulation_job_request() :: #{
%%   <<"job">> := string()
%% }
-type cancel_simulation_job_request() :: #{binary() => any()}.


%% Example:
%% rendering_engine() :: #{
%%   <<"name">> => list(any()),
%%   <<"version">> => string()
%% }
-type rendering_engine() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% create_robot_application_response() :: #{
%%   <<"arn">> => string(),
%%   <<"environment">> => environment(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"robotSoftwareSuite">> => robot_software_suite(),
%%   <<"sources">> => list(source()),
%%   <<"tags">> => map(),
%%   <<"version">> => string()
%% }
-type create_robot_application_response() :: #{binary() => any()}.


%% Example:
%% update_world_template_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type update_world_template_response() :: #{binary() => any()}.


%% Example:
%% describe_world_export_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"iamRole">> => string(),
%%   <<"outputLocation">> => output_location(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"worlds">> => list(string())
%% }
-type describe_world_export_job_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% delete_simulation_application_request() :: #{
%%   <<"application">> := string(),
%%   <<"applicationVersion">> => string()
%% }
-type delete_simulation_application_request() :: #{binary() => any()}.


%% Example:
%% port_mapping() :: #{
%%   <<"applicationPort">> => integer(),
%%   <<"enableOnPublicIp">> => boolean(),
%%   <<"jobPort">> => integer()
%% }
-type port_mapping() :: #{binary() => any()}.


%% Example:
%% describe_robot_request() :: #{
%%   <<"robot">> := string()
%% }
-type describe_robot_request() :: #{binary() => any()}.

%% Example:
%% cancel_simulation_job_batch_response() :: #{}
-type cancel_simulation_job_batch_response() :: #{}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_simulation_jobs_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_simulation_jobs_request() :: #{binary() => any()}.


%% Example:
%% create_robot_application_request() :: #{
%%   <<"environment">> => environment(),
%%   <<"name">> := string(),
%%   <<"robotSoftwareSuite">> := robot_software_suite(),
%%   <<"sources">> => list(source_config()),
%%   <<"tags">> => map()
%% }
-type create_robot_application_request() :: #{binary() => any()}.


%% Example:
%% describe_simulation_job_batch_response() :: #{
%%   <<"arn">> => string(),
%%   <<"batchPolicy">> => batch_policy(),
%%   <<"clientRequestToken">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdRequests">> => list(simulation_job_summary()),
%%   <<"failedRequests">> => list(failed_create_simulation_job_request()),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"pendingRequests">> => list(simulation_job_request()),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type describe_simulation_job_batch_response() :: #{binary() => any()}.


%% Example:
%% batch_delete_worlds_response() :: #{
%%   <<"unprocessedWorlds">> => list(string())
%% }
-type batch_delete_worlds_response() :: #{binary() => any()}.


%% Example:
%% list_robot_applications_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"versionQualifier">> => string()
%% }
-type list_robot_applications_request() :: #{binary() => any()}.


%% Example:
%% failed_create_simulation_job_request() :: #{
%%   <<"failedAt">> => non_neg_integer(),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"request">> => simulation_job_request()
%% }
-type failed_create_simulation_job_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% describe_world_template_request() :: #{
%%   <<"template">> := string()
%% }
-type describe_world_template_request() :: #{binary() => any()}.


%% Example:
%% describe_robot_application_request() :: #{
%%   <<"application">> := string(),
%%   <<"applicationVersion">> => string()
%% }
-type describe_robot_application_request() :: #{binary() => any()}.


%% Example:
%% register_robot_request() :: #{
%%   <<"fleet">> := string(),
%%   <<"robot">> := string()
%% }
-type register_robot_request() :: #{binary() => any()}.


%% Example:
%% delete_robot_application_request() :: #{
%%   <<"application">> := string(),
%%   <<"applicationVersion">> => string()
%% }
-type delete_robot_application_request() :: #{binary() => any()}.


%% Example:
%% batch_describe_simulation_job_request() :: #{
%%   <<"jobs">> := list(string())
%% }
-type batch_describe_simulation_job_request() :: #{binary() => any()}.

%% Example:
%% cancel_world_generation_job_response() :: #{}
-type cancel_world_generation_job_response() :: #{}.


%% Example:
%% finished_worlds_summary() :: #{
%%   <<"failureSummary">> => failure_summary(),
%%   <<"finishedCount">> => integer(),
%%   <<"succeededWorlds">> => list(string())
%% }
-type finished_worlds_summary() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_simulation_job_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"compute">> => compute(),
%%   <<"dataSources">> => list(data_source_config()),
%%   <<"failureBehavior">> => list(any()),
%%   <<"iamRole">> := string(),
%%   <<"loggingConfig">> => logging_config(),
%%   <<"maxJobDurationInSeconds">> := float(),
%%   <<"outputLocation">> => output_location(),
%%   <<"robotApplications">> => list(robot_application_config()),
%%   <<"simulationApplications">> => list(simulation_application_config()),
%%   <<"tags">> => map(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type create_simulation_job_request() :: #{binary() => any()}.


%% Example:
%% world_failure() :: #{
%%   <<"failureCode">> => list(any()),
%%   <<"failureCount">> => integer(),
%%   <<"sampleFailureReason">> => string()
%% }
-type world_failure() :: #{binary() => any()}.


%% Example:
%% source_config() :: #{
%%   <<"architecture">> => list(any()),
%%   <<"s3Bucket">> => string(),
%%   <<"s3Key">> => string()
%% }
-type source_config() :: #{binary() => any()}.


%% Example:
%% describe_fleet_request() :: #{
%%   <<"fleet">> := string()
%% }
-type describe_fleet_request() :: #{binary() => any()}.


%% Example:
%% vpc_config_response() :: #{
%%   <<"assignPublicIp">> => boolean(),
%%   <<"securityGroups">> => list(string()),
%%   <<"subnets">> => list(string()),
%%   <<"vpcId">> => string()
%% }
-type vpc_config_response() :: #{binary() => any()}.


%% Example:
%% simulation_application_config() :: #{
%%   <<"application">> => string(),
%%   <<"applicationVersion">> => string(),
%%   <<"launchConfig">> => launch_config(),
%%   <<"tools">> => list(tool()),
%%   <<"uploadConfigurations">> => list(upload_configuration()),
%%   <<"useDefaultTools">> => boolean(),
%%   <<"useDefaultUploadConfigurations">> => boolean(),
%%   <<"worldConfigs">> => list(world_config())
%% }
-type simulation_application_config() :: #{binary() => any()}.


%% Example:
%% robot_application_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"robotSoftwareSuite">> => robot_software_suite(),
%%   <<"version">> => string()
%% }
-type robot_application_summary() :: #{binary() => any()}.


%% Example:
%% sync_deployment_job_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deploymentApplicationConfigs">> => list(deployment_application_config()),
%%   <<"deploymentConfig">> => deployment_config(),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"fleet">> => string(),
%%   <<"status">> => list(any())
%% }
-type sync_deployment_job_response() :: #{binary() => any()}.


%% Example:
%% cancel_world_export_job_request() :: #{
%%   <<"job">> := string()
%% }
-type cancel_world_export_job_request() :: #{binary() => any()}.


%% Example:
%% delete_robot_request() :: #{
%%   <<"robot">> := string()
%% }
-type delete_robot_request() :: #{binary() => any()}.


%% Example:
%% create_simulation_application_response() :: #{
%%   <<"arn">> => string(),
%%   <<"environment">> => environment(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"renderingEngine">> => rendering_engine(),
%%   <<"revisionId">> => string(),
%%   <<"robotSoftwareSuite">> => robot_software_suite(),
%%   <<"simulationSoftwareSuite">> => simulation_software_suite(),
%%   <<"sources">> => list(source()),
%%   <<"tags">> => map(),
%%   <<"version">> => string()
%% }
-type create_simulation_application_response() :: #{binary() => any()}.


%% Example:
%% get_world_template_body_request() :: #{
%%   <<"generationJob">> => string(),
%%   <<"template">> => string()
%% }
-type get_world_template_body_request() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% data_source() :: #{
%%   <<"destination">> => string(),
%%   <<"name">> => string(),
%%   <<"s3Bucket">> => string(),
%%   <<"s3Keys">> => list(s3_key_output()),
%%   <<"type">> => list(any())
%% }
-type data_source() :: #{binary() => any()}.


%% Example:
%% list_robots_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_robots_request() :: #{binary() => any()}.


%% Example:
%% describe_simulation_application_request() :: #{
%%   <<"application">> := string(),
%%   <<"applicationVersion">> => string()
%% }
-type describe_simulation_application_request() :: #{binary() => any()}.


%% Example:
%% describe_robot_application_response() :: #{
%%   <<"arn">> => string(),
%%   <<"environment">> => environment(),
%%   <<"imageDigest">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"revisionId">> => string(),
%%   <<"robotSoftwareSuite">> => robot_software_suite(),
%%   <<"sources">> => list(source()),
%%   <<"tags">> => map(),
%%   <<"version">> => string()
%% }
-type describe_robot_application_response() :: #{binary() => any()}.


%% Example:
%% list_simulation_job_batches_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_simulation_job_batches_request() :: #{binary() => any()}.


%% Example:
%% list_worlds_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"worldSummaries">> => list(world_summary())
%% }
-type list_worlds_response() :: #{binary() => any()}.


%% Example:
%% create_fleet_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_fleet_response() :: #{binary() => any()}.


%% Example:
%% deregister_robot_request() :: #{
%%   <<"fleet">> := string(),
%%   <<"robot">> := string()
%% }
-type deregister_robot_request() :: #{binary() => any()}.


%% Example:
%% create_world_export_job_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"iamRole">> := string(),
%%   <<"outputLocation">> := output_location(),
%%   <<"tags">> => map(),
%%   <<"worlds">> := list(string())
%% }
-type create_world_export_job_request() :: #{binary() => any()}.


%% Example:
%% tool() :: #{
%%   <<"command">> => string(),
%%   <<"exitBehavior">> => list(any()),
%%   <<"name">> => string(),
%%   <<"streamOutputToCloudWatch">> => boolean(),
%%   <<"streamUI">> => boolean()
%% }
-type tool() :: #{binary() => any()}.


%% Example:
%% cancel_simulation_job_batch_request() :: #{
%%   <<"batch">> := string()
%% }
-type cancel_simulation_job_batch_request() :: #{binary() => any()}.


%% Example:
%% list_simulation_applications_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"versionQualifier">> => string()
%% }
-type list_simulation_applications_request() :: #{binary() => any()}.

%% Example:
%% cancel_world_export_job_response() :: #{}
-type cancel_world_export_job_response() :: #{}.


%% Example:
%% world_count() :: #{
%%   <<"floorplanCount">> => integer(),
%%   <<"interiorCountPerFloorplan">> => integer()
%% }
-type world_count() :: #{binary() => any()}.


%% Example:
%% fleet() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastDeploymentJob">> => string(),
%%   <<"lastDeploymentStatus">> => list(any()),
%%   <<"lastDeploymentTime">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type fleet() :: #{binary() => any()}.


%% Example:
%% deployment_job() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deploymentApplicationConfigs">> => list(deployment_application_config()),
%%   <<"deploymentConfig">> => deployment_config(),
%%   <<"failureCode">> => list(any()),
%%   <<"failureReason">> => string(),
%%   <<"fleet">> => string(),
%%   <<"status">> => list(any())
%% }
-type deployment_job() :: #{binary() => any()}.


%% Example:
%% robot_application_config() :: #{
%%   <<"application">> => string(),
%%   <<"applicationVersion">> => string(),
%%   <<"launchConfig">> => launch_config(),
%%   <<"tools">> => list(tool()),
%%   <<"uploadConfigurations">> => list(upload_configuration()),
%%   <<"useDefaultTools">> => boolean(),
%%   <<"useDefaultUploadConfigurations">> => boolean()
%% }
-type robot_application_config() :: #{binary() => any()}.


%% Example:
%% list_deployment_jobs_request() :: #{
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_deployment_jobs_request() :: #{binary() => any()}.


%% Example:
%% describe_world_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"generationJob">> => string(),
%%   <<"tags">> => map(),
%%   <<"template">> => string(),
%%   <<"worldDescriptionBody">> => string()
%% }
-type describe_world_response() :: #{binary() => any()}.


%% Example:
%% restart_simulation_job_request() :: #{
%%   <<"job">> := string()
%% }
-type restart_simulation_job_request() :: #{binary() => any()}.

-type batch_delete_worlds_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type batch_describe_simulation_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_deployment_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_simulation_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_simulation_job_batch_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_world_export_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_world_generation_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_deployment_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_not_found_exception() | 
    concurrent_deployment_exception().

-type create_fleet_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type create_robot_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type create_robot_application_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    idempotent_parameter_mismatch_exception().

-type create_robot_application_version_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    idempotent_parameter_mismatch_exception().

-type create_simulation_application_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    idempotent_parameter_mismatch_exception().

-type create_simulation_application_version_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    idempotent_parameter_mismatch_exception().

-type create_simulation_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_not_found_exception().

-type create_world_export_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_not_found_exception().

-type create_world_generation_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_not_found_exception().

-type create_world_template_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_fleet_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type delete_robot_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type delete_robot_application_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type delete_simulation_application_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type delete_world_template_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type deregister_robot_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_deployment_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_fleet_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_robot_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_robot_application_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_simulation_application_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_simulation_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_simulation_job_batch_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_world_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_world_export_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_world_generation_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_world_template_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_world_template_body_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_deployment_jobs_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_fleets_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_robot_applications_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type list_robots_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_simulation_applications_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type list_simulation_job_batches_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception().

-type list_simulation_jobs_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_world_export_jobs_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type list_world_generation_jobs_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type list_world_templates_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type list_worlds_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type register_robot_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type restart_simulation_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_simulation_job_batch_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    idempotent_parameter_mismatch_exception().

-type sync_deployment_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    idempotent_parameter_mismatch_exception() | 
    resource_not_found_exception() | 
    concurrent_deployment_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_robot_application_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_simulation_application_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_world_template_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Deletes one or more worlds in a batch operation.
-spec batch_delete_worlds(aws_client:aws_client(), batch_delete_worlds_request()) ->
    {ok, batch_delete_worlds_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_worlds_errors(), tuple()}.
batch_delete_worlds(Client, Input) ->
    batch_delete_worlds(Client, Input, []).

-spec batch_delete_worlds(aws_client:aws_client(), batch_delete_worlds_request(), proplists:proplist()) ->
    {ok, batch_delete_worlds_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_worlds_errors(), tuple()}.
batch_delete_worlds(Client, Input0, Options0) ->
    Method = post,
    Path = ["/batchDeleteWorlds"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Describes one or more simulation jobs.
-spec batch_describe_simulation_job(aws_client:aws_client(), batch_describe_simulation_job_request()) ->
    {ok, batch_describe_simulation_job_response(), tuple()} |
    {error, any()} |
    {error, batch_describe_simulation_job_errors(), tuple()}.
batch_describe_simulation_job(Client, Input) ->
    batch_describe_simulation_job(Client, Input, []).

-spec batch_describe_simulation_job(aws_client:aws_client(), batch_describe_simulation_job_request(), proplists:proplist()) ->
    {ok, batch_describe_simulation_job_response(), tuple()} |
    {error, any()} |
    {error, batch_describe_simulation_job_errors(), tuple()}.
batch_describe_simulation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/batchDescribeSimulationJob"],
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

%% @doc
%% This API is no longer supported.
%%
%% For more information, see the May 2, 2022 update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Cancels the specified deployment job.
-spec cancel_deployment_job(aws_client:aws_client(), cancel_deployment_job_request()) ->
    {ok, cancel_deployment_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_deployment_job_errors(), tuple()}.
cancel_deployment_job(Client, Input) ->
    cancel_deployment_job(Client, Input, []).

-spec cancel_deployment_job(aws_client:aws_client(), cancel_deployment_job_request(), proplists:proplist()) ->
    {ok, cancel_deployment_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_deployment_job_errors(), tuple()}.
cancel_deployment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancelDeploymentJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Cancels the specified simulation job.
-spec cancel_simulation_job(aws_client:aws_client(), cancel_simulation_job_request()) ->
    {ok, cancel_simulation_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_simulation_job_errors(), tuple()}.
cancel_simulation_job(Client, Input) ->
    cancel_simulation_job(Client, Input, []).

-spec cancel_simulation_job(aws_client:aws_client(), cancel_simulation_job_request(), proplists:proplist()) ->
    {ok, cancel_simulation_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_simulation_job_errors(), tuple()}.
cancel_simulation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancelSimulationJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Cancels a simulation job batch. When you cancel a simulation job batch,
%% you are also
%% cancelling all of the active simulation jobs created as part of the batch.
-spec cancel_simulation_job_batch(aws_client:aws_client(), cancel_simulation_job_batch_request()) ->
    {ok, cancel_simulation_job_batch_response(), tuple()} |
    {error, any()} |
    {error, cancel_simulation_job_batch_errors(), tuple()}.
cancel_simulation_job_batch(Client, Input) ->
    cancel_simulation_job_batch(Client, Input, []).

-spec cancel_simulation_job_batch(aws_client:aws_client(), cancel_simulation_job_batch_request(), proplists:proplist()) ->
    {ok, cancel_simulation_job_batch_response(), tuple()} |
    {error, any()} |
    {error, cancel_simulation_job_batch_errors(), tuple()}.
cancel_simulation_job_batch(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancelSimulationJobBatch"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Cancels the specified export job.
-spec cancel_world_export_job(aws_client:aws_client(), cancel_world_export_job_request()) ->
    {ok, cancel_world_export_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_world_export_job_errors(), tuple()}.
cancel_world_export_job(Client, Input) ->
    cancel_world_export_job(Client, Input, []).

-spec cancel_world_export_job(aws_client:aws_client(), cancel_world_export_job_request(), proplists:proplist()) ->
    {ok, cancel_world_export_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_world_export_job_errors(), tuple()}.
cancel_world_export_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancelWorldExportJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Cancels the specified world generator job.
-spec cancel_world_generation_job(aws_client:aws_client(), cancel_world_generation_job_request()) ->
    {ok, cancel_world_generation_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_world_generation_job_errors(), tuple()}.
cancel_world_generation_job(Client, Input) ->
    cancel_world_generation_job(Client, Input, []).

-spec cancel_world_generation_job(aws_client:aws_client(), cancel_world_generation_job_request(), proplists:proplist()) ->
    {ok, cancel_world_generation_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_world_generation_job_errors(), tuple()}.
cancel_world_generation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancelWorldGenerationJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported and will throw an error if used. For more
%% information, see the January 31, 2022 update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022
%% page.
%%
%% Deploys a specific version of a robot application to robots in a fleet.
%%
%% The robot application must have a numbered `applicationVersion' for
%% consistency reasons. To create a new version, use
%% `CreateRobotApplicationVersion' or see
%% Creating a Robot Application Version:
%% https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html.
%%
%% After 90 days, deployment jobs expire and will be deleted. They will no
%% longer be
%% accessible.
-spec create_deployment_job(aws_client:aws_client(), create_deployment_job_request()) ->
    {ok, create_deployment_job_response(), tuple()} |
    {error, any()} |
    {error, create_deployment_job_errors(), tuple()}.
create_deployment_job(Client, Input) ->
    create_deployment_job(Client, Input, []).

-spec create_deployment_job(aws_client:aws_client(), create_deployment_job_request(), proplists:proplist()) ->
    {ok, create_deployment_job_response(), tuple()} |
    {error, any()} |
    {error, create_deployment_job_errors(), tuple()}.
create_deployment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createDeploymentJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported and will throw an error if used. For more
%% information, see the January 31, 2022 update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022
%% page.
%%
%% Creates a fleet, a logical group of robots running the same robot
%% application.
-spec create_fleet(aws_client:aws_client(), create_fleet_request()) ->
    {ok, create_fleet_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, Input) ->
    create_fleet(Client, Input, []).

-spec create_fleet(aws_client:aws_client(), create_fleet_request(), proplists:proplist()) ->
    {ok, create_fleet_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createFleet"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported and will throw an error if used. For more
%% information, see the January 31, 2022 update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022
%% page.
%%
%% Creates a robot.
-spec create_robot(aws_client:aws_client(), create_robot_request()) ->
    {ok, create_robot_response(), tuple()} |
    {error, any()} |
    {error, create_robot_errors(), tuple()}.
create_robot(Client, Input) ->
    create_robot(Client, Input, []).

-spec create_robot(aws_client:aws_client(), create_robot_request(), proplists:proplist()) ->
    {ok, create_robot_response(), tuple()} |
    {error, any()} |
    {error, create_robot_errors(), tuple()}.
create_robot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createRobot"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Creates a robot application.
-spec create_robot_application(aws_client:aws_client(), create_robot_application_request()) ->
    {ok, create_robot_application_response(), tuple()} |
    {error, any()} |
    {error, create_robot_application_errors(), tuple()}.
create_robot_application(Client, Input) ->
    create_robot_application(Client, Input, []).

-spec create_robot_application(aws_client:aws_client(), create_robot_application_request(), proplists:proplist()) ->
    {ok, create_robot_application_response(), tuple()} |
    {error, any()} |
    {error, create_robot_application_errors(), tuple()}.
create_robot_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createRobotApplication"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Creates a version of a robot application.
-spec create_robot_application_version(aws_client:aws_client(), create_robot_application_version_request()) ->
    {ok, create_robot_application_version_response(), tuple()} |
    {error, any()} |
    {error, create_robot_application_version_errors(), tuple()}.
create_robot_application_version(Client, Input) ->
    create_robot_application_version(Client, Input, []).

-spec create_robot_application_version(aws_client:aws_client(), create_robot_application_version_request(), proplists:proplist()) ->
    {ok, create_robot_application_version_response(), tuple()} |
    {error, any()} |
    {error, create_robot_application_version_errors(), tuple()}.
create_robot_application_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createRobotApplicationVersion"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Creates a simulation application.
-spec create_simulation_application(aws_client:aws_client(), create_simulation_application_request()) ->
    {ok, create_simulation_application_response(), tuple()} |
    {error, any()} |
    {error, create_simulation_application_errors(), tuple()}.
create_simulation_application(Client, Input) ->
    create_simulation_application(Client, Input, []).

-spec create_simulation_application(aws_client:aws_client(), create_simulation_application_request(), proplists:proplist()) ->
    {ok, create_simulation_application_response(), tuple()} |
    {error, any()} |
    {error, create_simulation_application_errors(), tuple()}.
create_simulation_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createSimulationApplication"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Creates a simulation application with a specific revision id.
-spec create_simulation_application_version(aws_client:aws_client(), create_simulation_application_version_request()) ->
    {ok, create_simulation_application_version_response(), tuple()} |
    {error, any()} |
    {error, create_simulation_application_version_errors(), tuple()}.
create_simulation_application_version(Client, Input) ->
    create_simulation_application_version(Client, Input, []).

-spec create_simulation_application_version(aws_client:aws_client(), create_simulation_application_version_request(), proplists:proplist()) ->
    {ok, create_simulation_application_version_response(), tuple()} |
    {error, any()} |
    {error, create_simulation_application_version_errors(), tuple()}.
create_simulation_application_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createSimulationApplicationVersion"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Creates a simulation job.
%%
%% After 90 days, simulation jobs expire and will be deleted. They will no
%% longer be
%% accessible.
-spec create_simulation_job(aws_client:aws_client(), create_simulation_job_request()) ->
    {ok, create_simulation_job_response(), tuple()} |
    {error, any()} |
    {error, create_simulation_job_errors(), tuple()}.
create_simulation_job(Client, Input) ->
    create_simulation_job(Client, Input, []).

-spec create_simulation_job(aws_client:aws_client(), create_simulation_job_request(), proplists:proplist()) ->
    {ok, create_simulation_job_response(), tuple()} |
    {error, any()} |
    {error, create_simulation_job_errors(), tuple()}.
create_simulation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createSimulationJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Creates a world export job.
-spec create_world_export_job(aws_client:aws_client(), create_world_export_job_request()) ->
    {ok, create_world_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_world_export_job_errors(), tuple()}.
create_world_export_job(Client, Input) ->
    create_world_export_job(Client, Input, []).

-spec create_world_export_job(aws_client:aws_client(), create_world_export_job_request(), proplists:proplist()) ->
    {ok, create_world_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_world_export_job_errors(), tuple()}.
create_world_export_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createWorldExportJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Creates worlds using the specified template.
-spec create_world_generation_job(aws_client:aws_client(), create_world_generation_job_request()) ->
    {ok, create_world_generation_job_response(), tuple()} |
    {error, any()} |
    {error, create_world_generation_job_errors(), tuple()}.
create_world_generation_job(Client, Input) ->
    create_world_generation_job(Client, Input, []).

-spec create_world_generation_job(aws_client:aws_client(), create_world_generation_job_request(), proplists:proplist()) ->
    {ok, create_world_generation_job_response(), tuple()} |
    {error, any()} |
    {error, create_world_generation_job_errors(), tuple()}.
create_world_generation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createWorldGenerationJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Creates a world template.
-spec create_world_template(aws_client:aws_client(), create_world_template_request()) ->
    {ok, create_world_template_response(), tuple()} |
    {error, any()} |
    {error, create_world_template_errors(), tuple()}.
create_world_template(Client, Input) ->
    create_world_template(Client, Input, []).

-spec create_world_template(aws_client:aws_client(), create_world_template_request(), proplists:proplist()) ->
    {ok, create_world_template_response(), tuple()} |
    {error, any()} |
    {error, create_world_template_errors(), tuple()}.
create_world_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createWorldTemplate"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported. For more information, see the May 2, 2022
%% update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Deletes a fleet.
-spec delete_fleet(aws_client:aws_client(), delete_fleet_request()) ->
    {ok, delete_fleet_response(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, Input) ->
    delete_fleet(Client, Input, []).

-spec delete_fleet(aws_client:aws_client(), delete_fleet_request(), proplists:proplist()) ->
    {ok, delete_fleet_response(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteFleet"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported. For more information, see the May 2, 2022
%% update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Deletes a robot.
-spec delete_robot(aws_client:aws_client(), delete_robot_request()) ->
    {ok, delete_robot_response(), tuple()} |
    {error, any()} |
    {error, delete_robot_errors(), tuple()}.
delete_robot(Client, Input) ->
    delete_robot(Client, Input, []).

-spec delete_robot(aws_client:aws_client(), delete_robot_request(), proplists:proplist()) ->
    {ok, delete_robot_response(), tuple()} |
    {error, any()} |
    {error, delete_robot_errors(), tuple()}.
delete_robot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteRobot"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Deletes a robot application.
-spec delete_robot_application(aws_client:aws_client(), delete_robot_application_request()) ->
    {ok, delete_robot_application_response(), tuple()} |
    {error, any()} |
    {error, delete_robot_application_errors(), tuple()}.
delete_robot_application(Client, Input) ->
    delete_robot_application(Client, Input, []).

-spec delete_robot_application(aws_client:aws_client(), delete_robot_application_request(), proplists:proplist()) ->
    {ok, delete_robot_application_response(), tuple()} |
    {error, any()} |
    {error, delete_robot_application_errors(), tuple()}.
delete_robot_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteRobotApplication"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Deletes a simulation application.
-spec delete_simulation_application(aws_client:aws_client(), delete_simulation_application_request()) ->
    {ok, delete_simulation_application_response(), tuple()} |
    {error, any()} |
    {error, delete_simulation_application_errors(), tuple()}.
delete_simulation_application(Client, Input) ->
    delete_simulation_application(Client, Input, []).

-spec delete_simulation_application(aws_client:aws_client(), delete_simulation_application_request(), proplists:proplist()) ->
    {ok, delete_simulation_application_response(), tuple()} |
    {error, any()} |
    {error, delete_simulation_application_errors(), tuple()}.
delete_simulation_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteSimulationApplication"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Deletes a world template.
-spec delete_world_template(aws_client:aws_client(), delete_world_template_request()) ->
    {ok, delete_world_template_response(), tuple()} |
    {error, any()} |
    {error, delete_world_template_errors(), tuple()}.
delete_world_template(Client, Input) ->
    delete_world_template(Client, Input, []).

-spec delete_world_template(aws_client:aws_client(), delete_world_template_request(), proplists:proplist()) ->
    {ok, delete_world_template_response(), tuple()} |
    {error, any()} |
    {error, delete_world_template_errors(), tuple()}.
delete_world_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteWorldTemplate"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported. For more information, see the May 2, 2022
%% update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Deregisters a robot.
-spec deregister_robot(aws_client:aws_client(), deregister_robot_request()) ->
    {ok, deregister_robot_response(), tuple()} |
    {error, any()} |
    {error, deregister_robot_errors(), tuple()}.
deregister_robot(Client, Input) ->
    deregister_robot(Client, Input, []).

-spec deregister_robot(aws_client:aws_client(), deregister_robot_request(), proplists:proplist()) ->
    {ok, deregister_robot_response(), tuple()} |
    {error, any()} |
    {error, deregister_robot_errors(), tuple()}.
deregister_robot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deregisterRobot"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported. For more information, see the May 2, 2022
%% update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Describes a deployment job.
-spec describe_deployment_job(aws_client:aws_client(), describe_deployment_job_request()) ->
    {ok, describe_deployment_job_response(), tuple()} |
    {error, any()} |
    {error, describe_deployment_job_errors(), tuple()}.
describe_deployment_job(Client, Input) ->
    describe_deployment_job(Client, Input, []).

-spec describe_deployment_job(aws_client:aws_client(), describe_deployment_job_request(), proplists:proplist()) ->
    {ok, describe_deployment_job_response(), tuple()} |
    {error, any()} |
    {error, describe_deployment_job_errors(), tuple()}.
describe_deployment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeDeploymentJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported. For more information, see the May 2, 2022
%% update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Describes a fleet.
-spec describe_fleet(aws_client:aws_client(), describe_fleet_request()) ->
    {ok, describe_fleet_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_errors(), tuple()}.
describe_fleet(Client, Input) ->
    describe_fleet(Client, Input, []).

-spec describe_fleet(aws_client:aws_client(), describe_fleet_request(), proplists:proplist()) ->
    {ok, describe_fleet_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_errors(), tuple()}.
describe_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeFleet"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported. For more information, see the May 2, 2022
%% update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Describes a robot.
-spec describe_robot(aws_client:aws_client(), describe_robot_request()) ->
    {ok, describe_robot_response(), tuple()} |
    {error, any()} |
    {error, describe_robot_errors(), tuple()}.
describe_robot(Client, Input) ->
    describe_robot(Client, Input, []).

-spec describe_robot(aws_client:aws_client(), describe_robot_request(), proplists:proplist()) ->
    {ok, describe_robot_response(), tuple()} |
    {error, any()} |
    {error, describe_robot_errors(), tuple()}.
describe_robot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeRobot"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Describes a robot application.
-spec describe_robot_application(aws_client:aws_client(), describe_robot_application_request()) ->
    {ok, describe_robot_application_response(), tuple()} |
    {error, any()} |
    {error, describe_robot_application_errors(), tuple()}.
describe_robot_application(Client, Input) ->
    describe_robot_application(Client, Input, []).

-spec describe_robot_application(aws_client:aws_client(), describe_robot_application_request(), proplists:proplist()) ->
    {ok, describe_robot_application_response(), tuple()} |
    {error, any()} |
    {error, describe_robot_application_errors(), tuple()}.
describe_robot_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeRobotApplication"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Describes a simulation application.
-spec describe_simulation_application(aws_client:aws_client(), describe_simulation_application_request()) ->
    {ok, describe_simulation_application_response(), tuple()} |
    {error, any()} |
    {error, describe_simulation_application_errors(), tuple()}.
describe_simulation_application(Client, Input) ->
    describe_simulation_application(Client, Input, []).

-spec describe_simulation_application(aws_client:aws_client(), describe_simulation_application_request(), proplists:proplist()) ->
    {ok, describe_simulation_application_response(), tuple()} |
    {error, any()} |
    {error, describe_simulation_application_errors(), tuple()}.
describe_simulation_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeSimulationApplication"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Describes a simulation job.
-spec describe_simulation_job(aws_client:aws_client(), describe_simulation_job_request()) ->
    {ok, describe_simulation_job_response(), tuple()} |
    {error, any()} |
    {error, describe_simulation_job_errors(), tuple()}.
describe_simulation_job(Client, Input) ->
    describe_simulation_job(Client, Input, []).

-spec describe_simulation_job(aws_client:aws_client(), describe_simulation_job_request(), proplists:proplist()) ->
    {ok, describe_simulation_job_response(), tuple()} |
    {error, any()} |
    {error, describe_simulation_job_errors(), tuple()}.
describe_simulation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeSimulationJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Describes a simulation job batch.
-spec describe_simulation_job_batch(aws_client:aws_client(), describe_simulation_job_batch_request()) ->
    {ok, describe_simulation_job_batch_response(), tuple()} |
    {error, any()} |
    {error, describe_simulation_job_batch_errors(), tuple()}.
describe_simulation_job_batch(Client, Input) ->
    describe_simulation_job_batch(Client, Input, []).

-spec describe_simulation_job_batch(aws_client:aws_client(), describe_simulation_job_batch_request(), proplists:proplist()) ->
    {ok, describe_simulation_job_batch_response(), tuple()} |
    {error, any()} |
    {error, describe_simulation_job_batch_errors(), tuple()}.
describe_simulation_job_batch(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeSimulationJobBatch"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Describes a world.
-spec describe_world(aws_client:aws_client(), describe_world_request()) ->
    {ok, describe_world_response(), tuple()} |
    {error, any()} |
    {error, describe_world_errors(), tuple()}.
describe_world(Client, Input) ->
    describe_world(Client, Input, []).

-spec describe_world(aws_client:aws_client(), describe_world_request(), proplists:proplist()) ->
    {ok, describe_world_response(), tuple()} |
    {error, any()} |
    {error, describe_world_errors(), tuple()}.
describe_world(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeWorld"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Describes a world export job.
-spec describe_world_export_job(aws_client:aws_client(), describe_world_export_job_request()) ->
    {ok, describe_world_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_world_export_job_errors(), tuple()}.
describe_world_export_job(Client, Input) ->
    describe_world_export_job(Client, Input, []).

-spec describe_world_export_job(aws_client:aws_client(), describe_world_export_job_request(), proplists:proplist()) ->
    {ok, describe_world_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_world_export_job_errors(), tuple()}.
describe_world_export_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeWorldExportJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Describes a world generation job.
-spec describe_world_generation_job(aws_client:aws_client(), describe_world_generation_job_request()) ->
    {ok, describe_world_generation_job_response(), tuple()} |
    {error, any()} |
    {error, describe_world_generation_job_errors(), tuple()}.
describe_world_generation_job(Client, Input) ->
    describe_world_generation_job(Client, Input, []).

-spec describe_world_generation_job(aws_client:aws_client(), describe_world_generation_job_request(), proplists:proplist()) ->
    {ok, describe_world_generation_job_response(), tuple()} |
    {error, any()} |
    {error, describe_world_generation_job_errors(), tuple()}.
describe_world_generation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeWorldGenerationJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Describes a world template.
-spec describe_world_template(aws_client:aws_client(), describe_world_template_request()) ->
    {ok, describe_world_template_response(), tuple()} |
    {error, any()} |
    {error, describe_world_template_errors(), tuple()}.
describe_world_template(Client, Input) ->
    describe_world_template(Client, Input, []).

-spec describe_world_template(aws_client:aws_client(), describe_world_template_request(), proplists:proplist()) ->
    {ok, describe_world_template_response(), tuple()} |
    {error, any()} |
    {error, describe_world_template_errors(), tuple()}.
describe_world_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeWorldTemplate"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Gets the world template body.
-spec get_world_template_body(aws_client:aws_client(), get_world_template_body_request()) ->
    {ok, get_world_template_body_response(), tuple()} |
    {error, any()} |
    {error, get_world_template_body_errors(), tuple()}.
get_world_template_body(Client, Input) ->
    get_world_template_body(Client, Input, []).

-spec get_world_template_body(aws_client:aws_client(), get_world_template_body_request(), proplists:proplist()) ->
    {ok, get_world_template_body_response(), tuple()} |
    {error, any()} |
    {error, get_world_template_body_errors(), tuple()}.
get_world_template_body(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getWorldTemplateBody"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported. For more information, see the May 2, 2022
%% update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Returns a list of deployment jobs for a fleet. You can optionally provide
%% filters to retrieve specific deployment jobs.
-spec list_deployment_jobs(aws_client:aws_client(), list_deployment_jobs_request()) ->
    {ok, list_deployment_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_deployment_jobs_errors(), tuple()}.
list_deployment_jobs(Client, Input) ->
    list_deployment_jobs(Client, Input, []).

-spec list_deployment_jobs(aws_client:aws_client(), list_deployment_jobs_request(), proplists:proplist()) ->
    {ok, list_deployment_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_deployment_jobs_errors(), tuple()}.
list_deployment_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listDeploymentJobs"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported. For more information, see the May 2, 2022
%% update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Returns a list of fleets. You can optionally provide filters to retrieve
%% specific fleets.
-spec list_fleets(aws_client:aws_client(), list_fleets_request()) ->
    {ok, list_fleets_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, Input) ->
    list_fleets(Client, Input, []).

-spec list_fleets(aws_client:aws_client(), list_fleets_request(), proplists:proplist()) ->
    {ok, list_fleets_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listFleets"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Returns a list of robot application. You can optionally provide filters to
%% retrieve
%% specific robot applications.
-spec list_robot_applications(aws_client:aws_client(), list_robot_applications_request()) ->
    {ok, list_robot_applications_response(), tuple()} |
    {error, any()} |
    {error, list_robot_applications_errors(), tuple()}.
list_robot_applications(Client, Input) ->
    list_robot_applications(Client, Input, []).

-spec list_robot_applications(aws_client:aws_client(), list_robot_applications_request(), proplists:proplist()) ->
    {ok, list_robot_applications_response(), tuple()} |
    {error, any()} |
    {error, list_robot_applications_errors(), tuple()}.
list_robot_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listRobotApplications"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported. For more information, see the May 2, 2022
%% update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Returns a list of robots. You can optionally provide filters to retrieve
%% specific robots.
-spec list_robots(aws_client:aws_client(), list_robots_request()) ->
    {ok, list_robots_response(), tuple()} |
    {error, any()} |
    {error, list_robots_errors(), tuple()}.
list_robots(Client, Input) ->
    list_robots(Client, Input, []).

-spec list_robots(aws_client:aws_client(), list_robots_request(), proplists:proplist()) ->
    {ok, list_robots_response(), tuple()} |
    {error, any()} |
    {error, list_robots_errors(), tuple()}.
list_robots(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listRobots"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Returns a list of simulation applications. You can optionally provide
%% filters to
%% retrieve specific simulation applications.
-spec list_simulation_applications(aws_client:aws_client(), list_simulation_applications_request()) ->
    {ok, list_simulation_applications_response(), tuple()} |
    {error, any()} |
    {error, list_simulation_applications_errors(), tuple()}.
list_simulation_applications(Client, Input) ->
    list_simulation_applications(Client, Input, []).

-spec list_simulation_applications(aws_client:aws_client(), list_simulation_applications_request(), proplists:proplist()) ->
    {ok, list_simulation_applications_response(), tuple()} |
    {error, any()} |
    {error, list_simulation_applications_errors(), tuple()}.
list_simulation_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listSimulationApplications"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Returns a list simulation job batches. You can optionally provide filters
%% to retrieve
%% specific simulation batch jobs.
-spec list_simulation_job_batches(aws_client:aws_client(), list_simulation_job_batches_request()) ->
    {ok, list_simulation_job_batches_response(), tuple()} |
    {error, any()} |
    {error, list_simulation_job_batches_errors(), tuple()}.
list_simulation_job_batches(Client, Input) ->
    list_simulation_job_batches(Client, Input, []).

-spec list_simulation_job_batches(aws_client:aws_client(), list_simulation_job_batches_request(), proplists:proplist()) ->
    {ok, list_simulation_job_batches_response(), tuple()} |
    {error, any()} |
    {error, list_simulation_job_batches_errors(), tuple()}.
list_simulation_job_batches(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listSimulationJobBatches"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Returns a list of simulation jobs. You can optionally provide filters to
%% retrieve
%% specific simulation jobs.
-spec list_simulation_jobs(aws_client:aws_client(), list_simulation_jobs_request()) ->
    {ok, list_simulation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_simulation_jobs_errors(), tuple()}.
list_simulation_jobs(Client, Input) ->
    list_simulation_jobs(Client, Input, []).

-spec list_simulation_jobs(aws_client:aws_client(), list_simulation_jobs_request(), proplists:proplist()) ->
    {ok, list_simulation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_simulation_jobs_errors(), tuple()}.
list_simulation_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listSimulationJobs"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Lists all tags on a AWS RoboMaker resource.
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Lists world export jobs.
-spec list_world_export_jobs(aws_client:aws_client(), list_world_export_jobs_request()) ->
    {ok, list_world_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_world_export_jobs_errors(), tuple()}.
list_world_export_jobs(Client, Input) ->
    list_world_export_jobs(Client, Input, []).

-spec list_world_export_jobs(aws_client:aws_client(), list_world_export_jobs_request(), proplists:proplist()) ->
    {ok, list_world_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_world_export_jobs_errors(), tuple()}.
list_world_export_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWorldExportJobs"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Lists world generator jobs.
-spec list_world_generation_jobs(aws_client:aws_client(), list_world_generation_jobs_request()) ->
    {ok, list_world_generation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_world_generation_jobs_errors(), tuple()}.
list_world_generation_jobs(Client, Input) ->
    list_world_generation_jobs(Client, Input, []).

-spec list_world_generation_jobs(aws_client:aws_client(), list_world_generation_jobs_request(), proplists:proplist()) ->
    {ok, list_world_generation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_world_generation_jobs_errors(), tuple()}.
list_world_generation_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWorldGenerationJobs"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Lists world templates.
-spec list_world_templates(aws_client:aws_client(), list_world_templates_request()) ->
    {ok, list_world_templates_response(), tuple()} |
    {error, any()} |
    {error, list_world_templates_errors(), tuple()}.
list_world_templates(Client, Input) ->
    list_world_templates(Client, Input, []).

-spec list_world_templates(aws_client:aws_client(), list_world_templates_request(), proplists:proplist()) ->
    {ok, list_world_templates_response(), tuple()} |
    {error, any()} |
    {error, list_world_templates_errors(), tuple()}.
list_world_templates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWorldTemplates"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Lists worlds.
-spec list_worlds(aws_client:aws_client(), list_worlds_request()) ->
    {ok, list_worlds_response(), tuple()} |
    {error, any()} |
    {error, list_worlds_errors(), tuple()}.
list_worlds(Client, Input) ->
    list_worlds(Client, Input, []).

-spec list_worlds(aws_client:aws_client(), list_worlds_request(), proplists:proplist()) ->
    {ok, list_worlds_response(), tuple()} |
    {error, any()} |
    {error, list_worlds_errors(), tuple()}.
list_worlds(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWorlds"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Registers a robot with a fleet.
%%
%% This API is no longer supported and will throw an error if used. For more
%% information, see the January 31, 2022 update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022
%% page.
-spec register_robot(aws_client:aws_client(), register_robot_request()) ->
    {ok, register_robot_response(), tuple()} |
    {error, any()} |
    {error, register_robot_errors(), tuple()}.
register_robot(Client, Input) ->
    register_robot(Client, Input, []).

-spec register_robot(aws_client:aws_client(), register_robot_request(), proplists:proplist()) ->
    {ok, register_robot_response(), tuple()} |
    {error, any()} |
    {error, register_robot_errors(), tuple()}.
register_robot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/registerRobot"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Restarts a running simulation job.
-spec restart_simulation_job(aws_client:aws_client(), restart_simulation_job_request()) ->
    {ok, restart_simulation_job_response(), tuple()} |
    {error, any()} |
    {error, restart_simulation_job_errors(), tuple()}.
restart_simulation_job(Client, Input) ->
    restart_simulation_job(Client, Input, []).

-spec restart_simulation_job(aws_client:aws_client(), restart_simulation_job_request(), proplists:proplist()) ->
    {ok, restart_simulation_job_response(), tuple()} |
    {error, any()} |
    {error, restart_simulation_job_errors(), tuple()}.
restart_simulation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/restartSimulationJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Starts a new simulation job batch. The batch is defined using one or more
%% `SimulationJobRequest' objects.
-spec start_simulation_job_batch(aws_client:aws_client(), start_simulation_job_batch_request()) ->
    {ok, start_simulation_job_batch_response(), tuple()} |
    {error, any()} |
    {error, start_simulation_job_batch_errors(), tuple()}.
start_simulation_job_batch(Client, Input) ->
    start_simulation_job_batch(Client, Input, []).

-spec start_simulation_job_batch(aws_client:aws_client(), start_simulation_job_batch_request(), proplists:proplist()) ->
    {ok, start_simulation_job_batch_response(), tuple()} |
    {error, any()} |
    {error, start_simulation_job_batch_errors(), tuple()}.
start_simulation_job_batch(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startSimulationJobBatch"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% This API is no longer supported. For more information, see the May 2, 2022
%% update in the Support policy:
%% https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022
%% page.
%%
%% Syncrhonizes robots in a fleet to the latest deployment. This is helpful
%% if robots were added after a deployment.
-spec sync_deployment_job(aws_client:aws_client(), sync_deployment_job_request()) ->
    {ok, sync_deployment_job_response(), tuple()} |
    {error, any()} |
    {error, sync_deployment_job_errors(), tuple()}.
sync_deployment_job(Client, Input) ->
    sync_deployment_job(Client, Input, []).

-spec sync_deployment_job(aws_client:aws_client(), sync_deployment_job_request(), proplists:proplist()) ->
    {ok, sync_deployment_job_response(), tuple()} |
    {error, any()} |
    {error, sync_deployment_job_errors(), tuple()}.
sync_deployment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/syncDeploymentJob"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Adds or edits tags for a AWS RoboMaker resource.
%%
%% Each tag consists of a tag key and a tag value. Tag keys and tag values
%% are both
%% required, but tag values can be empty strings.
%%
%% For information about the rules that apply to tag keys and tag values, see
%% User-Defined Tag Restrictions:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html
%% in the AWS Billing and Cost Management
%% User Guide.
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Removes the specified tags from the specified AWS RoboMaker resource.
%%
%% To remove a tag, specify the tag key. To change the tag value of an
%% existing tag key,
%% use
%% `TagResource'
%% : https://docs.aws.amazon.com/robomaker/latest/dg/API_TagResource.html.
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Updates a robot application.
-spec update_robot_application(aws_client:aws_client(), update_robot_application_request()) ->
    {ok, update_robot_application_response(), tuple()} |
    {error, any()} |
    {error, update_robot_application_errors(), tuple()}.
update_robot_application(Client, Input) ->
    update_robot_application(Client, Input, []).

-spec update_robot_application(aws_client:aws_client(), update_robot_application_request(), proplists:proplist()) ->
    {ok, update_robot_application_response(), tuple()} |
    {error, any()} |
    {error, update_robot_application_errors(), tuple()}.
update_robot_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateRobotApplication"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Updates a simulation application.
-spec update_simulation_application(aws_client:aws_client(), update_simulation_application_request()) ->
    {ok, update_simulation_application_response(), tuple()} |
    {error, any()} |
    {error, update_simulation_application_errors(), tuple()}.
update_simulation_application(Client, Input) ->
    update_simulation_application(Client, Input, []).

-spec update_simulation_application(aws_client:aws_client(), update_simulation_application_request(), proplists:proplist()) ->
    {ok, update_simulation_application_response(), tuple()} |
    {error, any()} |
    {error, update_simulation_application_errors(), tuple()}.
update_simulation_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateSimulationApplication"],
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

%% @doc
%% End of support notice: On September 10, 2025, Amazon Web Services
%% will discontinue support for Amazon Web Services RoboMaker.
%%
%% After September 10, 2025, you will
%% no longer be able to access the Amazon Web Services RoboMaker console or
%% Amazon Web Services RoboMaker resources.
%% For more information on transitioning to Batch to help run containerized
%% simulations, visit
%% [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/].
%%
%% Updates a world template.
-spec update_world_template(aws_client:aws_client(), update_world_template_request()) ->
    {ok, update_world_template_response(), tuple()} |
    {error, any()} |
    {error, update_world_template_errors(), tuple()}.
update_world_template(Client, Input) ->
    update_world_template(Client, Input, []).

-spec update_world_template(aws_client:aws_client(), update_world_template_request(), proplists:proplist()) ->
    {ok, update_world_template_response(), tuple()} |
    {error, any()} |
    {error, update_world_template_errors(), tuple()}.
update_world_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateWorldTemplate"],
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
    Client1 = Client#{service => <<"robomaker">>},
    Host = build_host(<<"robomaker">>, Client1),
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
