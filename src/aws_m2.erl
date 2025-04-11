%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Mainframe Modernization provides tools and
%% resources to help you plan and implement migration and
%% modernization from mainframes to Amazon Web Services managed runtime
%% environments.
%%
%% It provides tools for
%% analyzing existing mainframe applications, developing or updating
%% mainframe applications
%% using COBOL or PL/I, and implementing an automated pipeline for continuous
%% integration and
%% continuous delivery (CI/CD) of the applications.
-module(aws_m2).

-export([cancel_batch_job_execution/4,
         cancel_batch_job_execution/5,
         create_application/2,
         create_application/3,
         create_data_set_export_task/3,
         create_data_set_export_task/4,
         create_data_set_import_task/3,
         create_data_set_import_task/4,
         create_deployment/3,
         create_deployment/4,
         create_environment/2,
         create_environment/3,
         delete_application/3,
         delete_application/4,
         delete_application_from_environment/4,
         delete_application_from_environment/5,
         delete_environment/3,
         delete_environment/4,
         get_application/2,
         get_application/4,
         get_application/5,
         get_application_version/3,
         get_application_version/5,
         get_application_version/6,
         get_batch_job_execution/3,
         get_batch_job_execution/5,
         get_batch_job_execution/6,
         get_data_set_details/3,
         get_data_set_details/5,
         get_data_set_details/6,
         get_data_set_export_task/3,
         get_data_set_export_task/5,
         get_data_set_export_task/6,
         get_data_set_import_task/3,
         get_data_set_import_task/5,
         get_data_set_import_task/6,
         get_deployment/3,
         get_deployment/5,
         get_deployment/6,
         get_environment/2,
         get_environment/4,
         get_environment/5,
         get_signed_bluinsights_url/1,
         get_signed_bluinsights_url/3,
         get_signed_bluinsights_url/4,
         list_application_versions/2,
         list_application_versions/4,
         list_application_versions/5,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_batch_job_definitions/2,
         list_batch_job_definitions/4,
         list_batch_job_definitions/5,
         list_batch_job_executions/2,
         list_batch_job_executions/4,
         list_batch_job_executions/5,
         list_batch_job_restart_points/3,
         list_batch_job_restart_points/5,
         list_batch_job_restart_points/6,
         list_data_set_export_history/2,
         list_data_set_export_history/4,
         list_data_set_export_history/5,
         list_data_set_import_history/2,
         list_data_set_import_history/4,
         list_data_set_import_history/5,
         list_data_sets/2,
         list_data_sets/4,
         list_data_sets/5,
         list_deployments/2,
         list_deployments/4,
         list_deployments/5,
         list_engine_versions/1,
         list_engine_versions/3,
         list_engine_versions/4,
         list_environments/1,
         list_environments/3,
         list_environments/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_application/3,
         start_application/4,
         start_batch_job/3,
         start_batch_job/4,
         stop_application/3,
         stop_application/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4,
         update_environment/3,
         update_environment/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% record_length() :: #{
%%   <<"max">> => integer(),
%%   <<"min">> => integer()
%% }
-type record_length() :: #{binary() => any()}.


%% Example:
%% alternate_key() :: #{
%%   <<"allowDuplicates">> => boolean(),
%%   <<"length">> => integer(),
%%   <<"name">> => [string()],
%%   <<"offset">> => integer()
%% }
-type alternate_key() :: #{binary() => any()}.


%% Example:
%% list_batch_job_executions_request() :: #{
%%   <<"executionIds">> => list(string()()),
%%   <<"jobName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startedAfter">> => non_neg_integer(),
%%   <<"startedBefore">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type list_batch_job_executions_request() :: #{binary() => any()}.


%% Example:
%% update_environment_response() :: #{
%%   <<"environmentId">> := string()
%% }
-type update_environment_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_deployments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_deployments_request() :: #{binary() => any()}.


%% Example:
%% pending_maintenance() :: #{
%%   <<"engineVersion">> => [string()],
%%   <<"schedule">> => maintenance_schedule()
%% }
-type pending_maintenance() :: #{binary() => any()}.


%% Example:
%% deployment_summary() :: #{
%%   <<"applicationId">> => string(),
%%   <<"applicationVersion">> => integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"deploymentId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type deployment_summary() :: #{binary() => any()}.


%% Example:
%% list_data_set_export_history_response() :: #{
%%   <<"dataSetExportTasks">> => list(data_set_export_task()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_set_export_history_response() :: #{binary() => any()}.


%% Example:
%% file_batch_job_identifier() :: #{
%%   <<"fileName">> => [string()],
%%   <<"folderPath">> => [string()]
%% }
-type file_batch_job_identifier() :: #{binary() => any()}.


%% Example:
%% list_data_sets_response() :: #{
%%   <<"dataSets">> => list(data_set_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_sets_response() :: #{binary() => any()}.


%% Example:
%% job_step() :: #{
%%   <<"procStepName">> => [string()],
%%   <<"procStepNumber">> => integer(),
%%   <<"stepCheckpoint">> => integer(),
%%   <<"stepCheckpointStatus">> => [string()],
%%   <<"stepCheckpointTime">> => non_neg_integer(),
%%   <<"stepCondCode">> => [string()],
%%   <<"stepName">> => [string()],
%%   <<"stepNumber">> => integer(),
%%   <<"stepRestartable">> => boolean()
%% }
-type job_step() :: #{binary() => any()}.


%% Example:
%% create_data_set_import_task_response() :: #{
%%   <<"taskId">> := string()
%% }
-type create_data_set_import_task_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% get_batch_job_execution_request() :: #{}
-type get_batch_job_execution_request() :: #{}.

%% Example:
%% delete_application_from_environment_request() :: #{}
-type delete_application_from_environment_request() :: #{}.


%% Example:
%% job_step_restart_marker() :: #{
%%   <<"fromProcStep">> => [string()],
%%   <<"fromStep">> => [string()],
%%   <<"skip">> => boolean(),
%%   <<"stepCheckpoint">> => integer(),
%%   <<"toProcStep">> => [string()],
%%   <<"toStep">> => [string()]
%% }
-type job_step_restart_marker() :: #{binary() => any()}.


%% Example:
%% data_set() :: #{
%%   <<"datasetName">> => [string()],
%%   <<"datasetOrg">> => list(),
%%   <<"recordLength">> => record_length(),
%%   <<"relativePath">> => [string()],
%%   <<"storageType">> => [string()]
%% }
-type data_set() :: #{binary() => any()}.


%% Example:
%% list_deployments_response() :: #{
%%   <<"deployments">> => list(deployment_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_deployments_response() :: #{binary() => any()}.


%% Example:
%% list_data_set_export_history_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_set_export_history_request() :: #{binary() => any()}.


%% Example:
%% data_set_export_task() :: #{
%%   <<"status">> => string(),
%%   <<"statusReason">> => [string()],
%%   <<"summary">> => data_set_export_summary(),
%%   <<"taskId">> => string()
%% }
-type data_set_export_task() :: #{binary() => any()}.


%% Example:
%% vsam_attributes() :: #{
%%   <<"alternateKeys">> => list(alternate_key()()),
%%   <<"compressed">> => boolean(),
%%   <<"encoding">> => [string()],
%%   <<"format">> => [string()],
%%   <<"primaryKey">> => primary_key()
%% }
-type vsam_attributes() :: #{binary() => any()}.


%% Example:
%% deployed_version_summary() :: #{
%%   <<"applicationVersion">> => integer(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type deployed_version_summary() :: #{binary() => any()}.


%% Example:
%% environment_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"engineType">> => string(),
%%   <<"engineVersion">> => string(),
%%   <<"environmentArn">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"name">> => string(),
%%   <<"networkType">> => string(),
%%   <<"status">> => string()
%% }
-type environment_summary() :: #{binary() => any()}.

%% Example:
%% get_environment_request() :: #{}
-type get_environment_request() :: #{}.


%% Example:
%% create_deployment_request() :: #{
%%   <<"applicationVersion">> => integer(),
%%   <<"clientToken">> => string(),
%%   <<"environmentId">> => string()
%% }
-type create_deployment_request() :: #{binary() => any()}.


%% Example:
%% vsam_detail_attributes() :: #{
%%   <<"alternateKeys">> => list(alternate_key()()),
%%   <<"cacheAtStartup">> => boolean(),
%%   <<"compressed">> => boolean(),
%%   <<"encoding">> => string(),
%%   <<"primaryKey">> => primary_key(),
%%   <<"recordFormat">> => string()
%% }
-type vsam_detail_attributes() :: #{binary() => any()}.


%% Example:
%% list_data_sets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nameFilter">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"prefix">> => string()
%% }
-type list_data_sets_request() :: #{binary() => any()}.


%% Example:
%% get_data_set_details_response() :: #{
%%   <<"blocksize">> => integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"dataSetName">> => string(),
%%   <<"dataSetOrg">> => list(),
%%   <<"fileSize">> => [float()],
%%   <<"lastReferencedTime">> => non_neg_integer(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"location">> => string(),
%%   <<"recordLength">> => integer()
%% }
-type get_data_set_details_response() :: #{binary() => any()}.

%% Example:
%% get_data_set_details_request() :: #{}
-type get_data_set_details_request() :: #{}.


%% Example:
%% application_version_summary() :: #{
%%   <<"applicationVersion">> => integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type application_version_summary() :: #{binary() => any()}.


%% Example:
%% create_deployment_response() :: #{
%%   <<"deploymentId">> := string()
%% }
-type create_deployment_response() :: #{binary() => any()}.


%% Example:
%% get_environment_response() :: #{
%%   <<"actualCapacity">> => integer(),
%%   <<"creationTime">> := non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"engineType">> := string(),
%%   <<"engineVersion">> := string(),
%%   <<"environmentArn">> := string(),
%%   <<"environmentId">> := string(),
%%   <<"highAvailabilityConfig">> => high_availability_config(),
%%   <<"instanceType">> := string(),
%%   <<"kmsKeyId">> => [string()],
%%   <<"loadBalancerArn">> => [string()],
%%   <<"name">> := string(),
%%   <<"networkType">> => string(),
%%   <<"pendingMaintenance">> => pending_maintenance(),
%%   <<"preferredMaintenanceWindow">> => string(),
%%   <<"publiclyAccessible">> => boolean(),
%%   <<"securityGroupIds">> := list(string()()),
%%   <<"status">> := string(),
%%   <<"statusReason">> => [string()],
%%   <<"storageConfigurations">> => list(list()()),
%%   <<"subnetIds">> := list(string()()),
%%   <<"tags">> => map(),
%%   <<"vpcId">> := string()
%% }
-type get_environment_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% gdg_detail_attributes() :: #{
%%   <<"limit">> => integer(),
%%   <<"rollDisposition">> => string()
%% }
-type gdg_detail_attributes() :: #{binary() => any()}.


%% Example:
%% restart_batch_job_identifier() :: #{
%%   <<"executionId">> => string(),
%%   <<"jobStepRestartMarker">> => job_step_restart_marker()
%% }
-type restart_batch_job_identifier() :: #{binary() => any()}.


%% Example:
%% script_batch_job_identifier() :: #{
%%   <<"scriptName">> => [string()]
%% }
-type script_batch_job_identifier() :: #{binary() => any()}.


%% Example:
%% engine_versions_summary() :: #{
%%   <<"engineType">> => [string()],
%%   <<"engineVersion">> => [string()]
%% }
-type engine_versions_summary() :: #{binary() => any()}.


%% Example:
%% ps_attributes() :: #{
%%   <<"encoding">> => [string()],
%%   <<"format">> => [string()]
%% }
-type ps_attributes() :: #{binary() => any()}.


%% Example:
%% cancel_batch_job_execution_request() :: #{
%%   <<"authSecretsManagerArn">> => string()
%% }
-type cancel_batch_job_execution_request() :: #{binary() => any()}.


%% Example:
%% high_availability_config() :: #{
%%   <<"desiredCapacity">> => integer()
%% }
-type high_availability_config() :: #{binary() => any()}.


%% Example:
%% list_batch_job_restart_points_request() :: #{
%%   <<"authSecretsManagerArn">> => string()
%% }
-type list_batch_job_restart_points_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% script_batch_job_definition() :: #{
%%   <<"scriptName">> => [string()]
%% }
-type script_batch_job_definition() :: #{binary() => any()}.

%% Example:
%% get_application_version_request() :: #{}
-type get_application_version_request() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_deployment_request() :: #{}
-type get_deployment_request() :: #{}.


%% Example:
%% stop_application_request() :: #{
%%   <<"forceStop">> => boolean()
%% }
-type stop_application_request() :: #{binary() => any()}.


%% Example:
%% data_set_export_summary() :: #{
%%   <<"failed">> => integer(),
%%   <<"inProgress">> => integer(),
%%   <<"pending">> => integer(),
%%   <<"succeeded">> => integer(),
%%   <<"total">> => integer()
%% }
-type data_set_export_summary() :: #{binary() => any()}.


%% Example:
%% data_set_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"dataSetName">> => string(),
%%   <<"dataSetOrg">> => string(),
%%   <<"format">> => string(),
%%   <<"lastReferencedTime">> => non_neg_integer(),
%%   <<"lastUpdatedTime">> => non_neg_integer()
%% }
-type data_set_summary() :: #{binary() => any()}.


%% Example:
%% po_attributes() :: #{
%%   <<"encoding">> => [string()],
%%   <<"format">> => [string()],
%%   <<"memberFileExtensions">> => list(string()())
%% }
-type po_attributes() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> := map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"definition">> := list(),
%%   <<"description">> => string(),
%%   <<"engineType">> := string(),
%%   <<"kmsKeyId">> => [string()],
%%   <<"name">> := string(),
%%   <<"roleArn">> => string(),
%%   <<"tags">> => map()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% list_environments_request() :: #{
%%   <<"engineType">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"names">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_environments_request() :: #{binary() => any()}.


%% Example:
%% data_set_import_summary() :: #{
%%   <<"failed">> => integer(),
%%   <<"inProgress">> => integer(),
%%   <<"pending">> => integer(),
%%   <<"succeeded">> => integer(),
%%   <<"total">> => integer()
%% }
-type data_set_import_summary() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% log_group_summary() :: #{
%%   <<"logGroupName">> => string(),
%%   <<"logType">> => string()
%% }
-type log_group_summary() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% create_application_response() :: #{
%%   <<"applicationArn">> := string(),
%%   <<"applicationId">> := string(),
%%   <<"applicationVersion">> := integer()
%% }
-type create_application_response() :: #{binary() => any()}.


%% Example:
%% execution_timeout_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type execution_timeout_exception() :: #{binary() => any()}.


%% Example:
%% list_data_set_import_history_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_set_import_history_request() :: #{binary() => any()}.

%% Example:
%% get_data_set_export_task_request() :: #{}
-type get_data_set_export_task_request() :: #{}.


%% Example:
%% create_data_set_import_task_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"importConfig">> := list()
%% }
-type create_data_set_import_task_request() :: #{binary() => any()}.


%% Example:
%% efs_storage_configuration() :: #{
%%   <<"fileSystemId">> => string(),
%%   <<"mountPoint">> => string()
%% }
-type efs_storage_configuration() :: #{binary() => any()}.

%% Example:
%% delete_application_response() :: #{}
-type delete_application_response() :: #{}.

%% Example:
%% start_application_response() :: #{}
-type start_application_response() :: #{}.


%% Example:
%% create_environment_response() :: #{
%%   <<"environmentId">> := string()
%% }
-type create_environment_response() :: #{binary() => any()}.


%% Example:
%% po_detail_attributes() :: #{
%%   <<"encoding">> => [string()],
%%   <<"format">> => [string()]
%% }
-type po_detail_attributes() :: #{binary() => any()}.


%% Example:
%% update_application_request() :: #{
%%   <<"currentApplicationVersion">> := integer(),
%%   <<"definition">> => list(),
%%   <<"description">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.


%% Example:
%% update_application_response() :: #{
%%   <<"applicationVersion">> := integer()
%% }
-type update_application_response() :: #{binary() => any()}.


%% Example:
%% list_batch_job_restart_points_response() :: #{
%%   <<"batchJobSteps">> => list(job_step()())
%% }
-type list_batch_job_restart_points_response() :: #{binary() => any()}.


%% Example:
%% get_signed_bluinsights_url_response() :: #{
%%   <<"signedBiUrl">> => [string()]
%% }
-type get_signed_bluinsights_url_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_environment_request() :: #{}
-type delete_environment_request() :: #{}.


%% Example:
%% data_set_export_item() :: #{
%%   <<"datasetName">> => string(),
%%   <<"externalLocation">> => list()
%% }
-type data_set_export_item() :: #{binary() => any()}.

%% Example:
%% start_application_request() :: #{}
-type start_application_request() :: #{}.


%% Example:
%% get_application_response() :: #{
%%   <<"applicationArn">> := string(),
%%   <<"applicationId">> := string(),
%%   <<"creationTime">> := non_neg_integer(),
%%   <<"deployedVersion">> => deployed_version_summary(),
%%   <<"description">> => string(),
%%   <<"engineType">> := string(),
%%   <<"environmentId">> => string(),
%%   <<"kmsKeyId">> => [string()],
%%   <<"lastStartTime">> => non_neg_integer(),
%%   <<"latestVersion">> := application_version_summary(),
%%   <<"listenerArns">> => list(string()()),
%%   <<"listenerPorts">> => list(integer()()),
%%   <<"loadBalancerDnsName">> => string(),
%%   <<"logGroups">> => list(log_group_summary()()),
%%   <<"name">> := string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> := string(),
%%   <<"statusReason">> => [string()],
%%   <<"tags">> => map(),
%%   <<"targetGroupArns">> => list(string()())
%% }
-type get_application_response() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"environmentId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"names">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% s3_batch_job_identifier() :: #{
%%   <<"bucket">> => [string()],
%%   <<"identifier">> => list(),
%%   <<"keyPrefix">> => [string()]
%% }
-type s3_batch_job_identifier() :: #{binary() => any()}.

%% Example:
%% stop_application_response() :: #{}
-type stop_application_response() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% file_batch_job_definition() :: #{
%%   <<"fileName">> => [string()],
%%   <<"folderPath">> => [string()]
%% }
-type file_batch_job_definition() :: #{binary() => any()}.


%% Example:
%% create_data_set_export_task_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"exportConfig">> := list(),
%%   <<"kmsKeyId">> => string()
%% }
-type create_data_set_export_task_request() :: #{binary() => any()}.


%% Example:
%% get_batch_job_execution_response() :: #{
%%   <<"applicationId">> := string(),
%%   <<"batchJobIdentifier">> => list(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"executionId">> := string(),
%%   <<"jobId">> => string(),
%%   <<"jobName">> => string(),
%%   <<"jobStepRestartMarker">> => job_step_restart_marker(),
%%   <<"jobType">> => string(),
%%   <<"jobUser">> => string(),
%%   <<"returnCode">> => [string()],
%%   <<"startTime">> := non_neg_integer(),
%%   <<"status">> := string(),
%%   <<"statusReason">> => [string()]
%% }
-type get_batch_job_execution_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_batch_job_definitions_response() :: #{
%%   <<"batchJobDefinitions">> => list(list()()),
%%   <<"nextToken">> => string()
%% }
-type list_batch_job_definitions_response() :: #{binary() => any()}.


%% Example:
%% fsx_storage_configuration() :: #{
%%   <<"fileSystemId">> => string(),
%%   <<"mountPoint">> => string()
%% }
-type fsx_storage_configuration() :: #{binary() => any()}.


%% Example:
%% get_data_set_export_task_response() :: #{
%%   <<"kmsKeyArn">> => [string()],
%%   <<"status">> => string(),
%%   <<"statusReason">> => [string()],
%%   <<"summary">> => data_set_export_summary(),
%%   <<"taskId">> => string()
%% }
-type get_data_set_export_task_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% data_set_import_item() :: #{
%%   <<"dataSet">> => data_set(),
%%   <<"externalLocation">> => list()
%% }
-type data_set_import_item() :: #{binary() => any()}.


%% Example:
%% gdg_attributes() :: #{
%%   <<"limit">> => integer(),
%%   <<"rollDisposition">> => [string()]
%% }
-type gdg_attributes() :: #{binary() => any()}.


%% Example:
%% get_deployment_response() :: #{
%%   <<"applicationId">> := string(),
%%   <<"applicationVersion">> := integer(),
%%   <<"creationTime">> := non_neg_integer(),
%%   <<"deploymentId">> := string(),
%%   <<"environmentId">> := string(),
%%   <<"status">> := string(),
%%   <<"statusReason">> => [string()]
%% }
-type get_deployment_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => integer(),
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_batch_job_executions_response() :: #{
%%   <<"batchJobExecutions">> := list(batch_job_execution_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_batch_job_executions_response() :: #{binary() => any()}.


%% Example:
%% list_application_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_application_versions_request() :: #{binary() => any()}.


%% Example:
%% list_engine_versions_response() :: #{
%%   <<"engineVersions">> := list(engine_versions_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_engine_versions_response() :: #{binary() => any()}.


%% Example:
%% list_environments_response() :: #{
%%   <<"environments">> => list(environment_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_environments_response() :: #{binary() => any()}.


%% Example:
%% maintenance_schedule() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type maintenance_schedule() :: #{binary() => any()}.


%% Example:
%% get_application_version_response() :: #{
%%   <<"applicationVersion">> := integer(),
%%   <<"creationTime">> := non_neg_integer(),
%%   <<"definitionContent">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"status">> := string(),
%%   <<"statusReason">> => [string()]
%% }
-type get_application_version_response() :: #{binary() => any()}.


%% Example:
%% application_summary() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"applicationId">> => string(),
%%   <<"applicationVersion">> => integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"deploymentStatus">> => string(),
%%   <<"description">> => string(),
%%   <<"engineType">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"lastStartTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => string(),
%%   <<"versionStatus">> => string()
%% }
-type application_summary() :: #{binary() => any()}.


%% Example:
%% list_applications_response() :: #{
%%   <<"applications">> => list(application_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.


%% Example:
%% list_application_versions_response() :: #{
%%   <<"applicationVersions">> => list(application_version_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_application_versions_response() :: #{binary() => any()}.


%% Example:
%% create_environment_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"engineType">> := string(),
%%   <<"engineVersion">> => string(),
%%   <<"highAvailabilityConfig">> => high_availability_config(),
%%   <<"instanceType">> := string(),
%%   <<"kmsKeyId">> => [string()],
%%   <<"name">> := string(),
%%   <<"networkType">> => string(),
%%   <<"preferredMaintenanceWindow">> => string(),
%%   <<"publiclyAccessible">> => boolean(),
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"storageConfigurations">> => list(list()()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"tags">> => map()
%% }
-type create_environment_request() :: #{binary() => any()}.

%% Example:
%% cancel_batch_job_execution_response() :: #{}
-type cancel_batch_job_execution_response() :: #{}.


%% Example:
%% update_environment_request() :: #{
%%   <<"applyDuringMaintenanceWindow">> => boolean(),
%%   <<"desiredCapacity">> => integer(),
%%   <<"engineVersion">> => string(),
%%   <<"forceUpdate">> => boolean(),
%%   <<"instanceType">> => string(),
%%   <<"preferredMaintenanceWindow">> => [string()]
%% }
-type update_environment_request() :: #{binary() => any()}.


%% Example:
%% start_batch_job_response() :: #{
%%   <<"executionId">> := string()
%% }
-type start_batch_job_response() :: #{binary() => any()}.


%% Example:
%% list_data_set_import_history_response() :: #{
%%   <<"dataSetImportTasks">> => list(data_set_import_task()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_set_import_history_response() :: #{binary() => any()}.

%% Example:
%% delete_application_from_environment_response() :: #{}
-type delete_application_from_environment_response() :: #{}.


%% Example:
%% start_batch_job_request() :: #{
%%   <<"authSecretsManagerArn">> => string(),
%%   <<"batchJobIdentifier">> := list(),
%%   <<"jobParams">> => map()
%% }
-type start_batch_job_request() :: #{binary() => any()}.

%% Example:
%% get_data_set_import_task_request() :: #{}
-type get_data_set_import_task_request() :: #{}.


%% Example:
%% list_engine_versions_request() :: #{
%%   <<"engineType">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_engine_versions_request() :: #{binary() => any()}.


%% Example:
%% primary_key() :: #{
%%   <<"length">> => integer(),
%%   <<"name">> => [string()],
%%   <<"offset">> => integer()
%% }
-type primary_key() :: #{binary() => any()}.

%% Example:
%% get_application_request() :: #{}
-type get_application_request() :: #{}.


%% Example:
%% ps_detail_attributes() :: #{
%%   <<"encoding">> => [string()],
%%   <<"format">> => [string()]
%% }
-type ps_detail_attributes() :: #{binary() => any()}.


%% Example:
%% list_batch_job_definitions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"prefix">> => [string()]
%% }
-type list_batch_job_definitions_request() :: #{binary() => any()}.

%% Example:
%% delete_environment_response() :: #{}
-type delete_environment_response() :: #{}.


%% Example:
%% create_data_set_export_task_response() :: #{
%%   <<"taskId">> => string()
%% }
-type create_data_set_export_task_response() :: #{binary() => any()}.


%% Example:
%% batch_job_execution_summary() :: #{
%%   <<"applicationId">> => string(),
%%   <<"batchJobIdentifier">> => list(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"executionId">> => string(),
%%   <<"jobId">> => string(),
%%   <<"jobName">> => string(),
%%   <<"jobType">> => string(),
%%   <<"returnCode">> => [string()],
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string()
%% }
-type batch_job_execution_summary() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{}
-type delete_application_request() :: #{}.


%% Example:
%% get_data_set_import_task_response() :: #{
%%   <<"status">> := string(),
%%   <<"summary">> => data_set_import_summary(),
%%   <<"taskId">> := string()
%% }
-type get_data_set_import_task_response() :: #{binary() => any()}.


%% Example:
%% data_set_import_task() :: #{
%%   <<"status">> => string(),
%%   <<"statusReason">> => [string()],
%%   <<"summary">> => data_set_import_summary(),
%%   <<"taskId">> => string()
%% }
-type data_set_import_task() :: #{binary() => any()}.

-type cancel_batch_job_execution_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_data_set_export_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_set_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_application_from_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type get_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_application_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_batch_job_execution_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_set_details_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    execution_timeout_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_data_set_export_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_set_import_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_deployment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_signed_bluinsights_url_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_application_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_applications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_batch_job_definitions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_batch_job_executions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_batch_job_restart_points_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_data_set_export_history_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_data_set_import_history_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_data_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    execution_timeout_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_deployments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_engine_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_environments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_batch_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels the running of a specific batch job execution.
-spec cancel_batch_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_batch_job_execution_request()) ->
    {ok, cancel_batch_job_execution_response(), tuple()} |
    {error, any()} |
    {error, cancel_batch_job_execution_errors(), tuple()}.
cancel_batch_job_execution(Client, ApplicationId, ExecutionId, Input) ->
    cancel_batch_job_execution(Client, ApplicationId, ExecutionId, Input, []).

-spec cancel_batch_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_batch_job_execution_request(), proplists:proplist()) ->
    {ok, cancel_batch_job_execution_response(), tuple()} |
    {error, any()} |
    {error, cancel_batch_job_execution_errors(), tuple()}.
cancel_batch_job_execution(Client, ApplicationId, ExecutionId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job-executions/", aws_util:encode_uri(ExecutionId), "/cancel"],
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

%% @doc Creates a new application with given parameters.
%%
%% Requires an existing runtime
%% environment and application definition file.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
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

%% @doc Starts a data set export task for a specific application.
-spec create_data_set_export_task(aws_client:aws_client(), binary() | list(), create_data_set_export_task_request()) ->
    {ok, create_data_set_export_task_response(), tuple()} |
    {error, any()} |
    {error, create_data_set_export_task_errors(), tuple()}.
create_data_set_export_task(Client, ApplicationId, Input) ->
    create_data_set_export_task(Client, ApplicationId, Input, []).

-spec create_data_set_export_task(aws_client:aws_client(), binary() | list(), create_data_set_export_task_request(), proplists:proplist()) ->
    {ok, create_data_set_export_task_response(), tuple()} |
    {error, any()} |
    {error, create_data_set_export_task_errors(), tuple()}.
create_data_set_export_task(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataset-export-task"],
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

%% @doc Starts a data set import task for a specific application.
-spec create_data_set_import_task(aws_client:aws_client(), binary() | list(), create_data_set_import_task_request()) ->
    {ok, create_data_set_import_task_response(), tuple()} |
    {error, any()} |
    {error, create_data_set_import_task_errors(), tuple()}.
create_data_set_import_task(Client, ApplicationId, Input) ->
    create_data_set_import_task(Client, ApplicationId, Input, []).

-spec create_data_set_import_task(aws_client:aws_client(), binary() | list(), create_data_set_import_task_request(), proplists:proplist()) ->
    {ok, create_data_set_import_task_response(), tuple()} |
    {error, any()} |
    {error, create_data_set_import_task_errors(), tuple()}.
create_data_set_import_task(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataset-import-task"],
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

%% @doc Creates and starts a deployment to deploy an application into a
%% runtime
%% environment.
-spec create_deployment(aws_client:aws_client(), binary() | list(), create_deployment_request()) ->
    {ok, create_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, ApplicationId, Input) ->
    create_deployment(Client, ApplicationId, Input, []).

-spec create_deployment(aws_client:aws_client(), binary() | list(), create_deployment_request(), proplists:proplist()) ->
    {ok, create_deployment_response(), tuple()} |
    {error, any()} |
    {error, create_deployment_errors(), tuple()}.
create_deployment(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/deployments"],
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

%% @doc Creates a runtime environment for a given runtime engine.
-spec create_environment(aws_client:aws_client(), create_environment_request()) ->
    {ok, create_environment_response(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input) ->
    create_environment(Client, Input, []).

-spec create_environment(aws_client:aws_client(), create_environment_request(), proplists:proplist()) ->
    {ok, create_environment_response(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/environments"],
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

%% @doc Deletes a specific application.
%%
%% You cannot delete a running application.
-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Deletes a specific application from the specific runtime environment
%% where it was
%% previously deployed.
%%
%% You cannot delete a runtime environment using DeleteEnvironment if any
%% application has ever been deployed to it. This API removes the association
%% of the
%% application with the runtime environment so you can delete the environment
%% smoothly.
-spec delete_application_from_environment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_application_from_environment_request()) ->
    {ok, delete_application_from_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_application_from_environment_errors(), tuple()}.
delete_application_from_environment(Client, ApplicationId, EnvironmentId, Input) ->
    delete_application_from_environment(Client, ApplicationId, EnvironmentId, Input, []).

-spec delete_application_from_environment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_application_from_environment_request(), proplists:proplist()) ->
    {ok, delete_application_from_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_application_from_environment_errors(), tuple()}.
delete_application_from_environment(Client, ApplicationId, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/environment/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc Deletes a specific runtime environment.
%%
%% The environment cannot contain deployed
%% applications. If it does, you must delete those applications before you
%% delete the
%% environment.
-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_request()) ->
    {ok, delete_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, EnvironmentId, Input) ->
    delete_environment(Client, EnvironmentId, Input, []).

-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_request(), proplists:proplist()) ->
    {ok, delete_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc Describes the details of a specific application.
-spec get_application(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId)
  when is_map(Client) ->
    get_application(Client, ApplicationId, #{}, #{}).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a specific version of a specific application.
-spec get_application_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_application_version_response(), tuple()} |
    {error, any()} |
    {error, get_application_version_errors(), tuple()}.
get_application_version(Client, ApplicationId, ApplicationVersion)
  when is_map(Client) ->
    get_application_version(Client, ApplicationId, ApplicationVersion, #{}, #{}).

-spec get_application_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_application_version_response(), tuple()} |
    {error, any()} |
    {error, get_application_version_errors(), tuple()}.
get_application_version(Client, ApplicationId, ApplicationVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_version(Client, ApplicationId, ApplicationVersion, QueryMap, HeadersMap, []).

-spec get_application_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_version_response(), tuple()} |
    {error, any()} |
    {error, get_application_version_errors(), tuple()}.
get_application_version(Client, ApplicationId, ApplicationVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/versions/", aws_util:encode_uri(ApplicationVersion), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of a specific batch job execution for a specific
%% application.
-spec get_batch_job_execution(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_batch_job_execution_response(), tuple()} |
    {error, any()} |
    {error, get_batch_job_execution_errors(), tuple()}.
get_batch_job_execution(Client, ApplicationId, ExecutionId)
  when is_map(Client) ->
    get_batch_job_execution(Client, ApplicationId, ExecutionId, #{}, #{}).

-spec get_batch_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_batch_job_execution_response(), tuple()} |
    {error, any()} |
    {error, get_batch_job_execution_errors(), tuple()}.
get_batch_job_execution(Client, ApplicationId, ExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_batch_job_execution(Client, ApplicationId, ExecutionId, QueryMap, HeadersMap, []).

-spec get_batch_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_batch_job_execution_response(), tuple()} |
    {error, any()} |
    {error, get_batch_job_execution_errors(), tuple()}.
get_batch_job_execution(Client, ApplicationId, ExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job-executions/", aws_util:encode_uri(ExecutionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of a specific data set.
-spec get_data_set_details(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_set_details_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_details_errors(), tuple()}.
get_data_set_details(Client, ApplicationId, DataSetName)
  when is_map(Client) ->
    get_data_set_details(Client, ApplicationId, DataSetName, #{}, #{}).

-spec get_data_set_details(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_set_details_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_details_errors(), tuple()}.
get_data_set_details(Client, ApplicationId, DataSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_set_details(Client, ApplicationId, DataSetName, QueryMap, HeadersMap, []).

-spec get_data_set_details(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_set_details_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_details_errors(), tuple()}.
get_data_set_details(Client, ApplicationId, DataSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/datasets/", aws_util:encode_uri(DataSetName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the status of a data set import task initiated with the
%% `CreateDataSetExportTask' operation.
-spec get_data_set_export_task(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_set_export_task_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_export_task_errors(), tuple()}.
get_data_set_export_task(Client, ApplicationId, TaskId)
  when is_map(Client) ->
    get_data_set_export_task(Client, ApplicationId, TaskId, #{}, #{}).

-spec get_data_set_export_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_set_export_task_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_export_task_errors(), tuple()}.
get_data_set_export_task(Client, ApplicationId, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_set_export_task(Client, ApplicationId, TaskId, QueryMap, HeadersMap, []).

-spec get_data_set_export_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_set_export_task_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_export_task_errors(), tuple()}.
get_data_set_export_task(Client, ApplicationId, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataset-export-tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the status of a data set import task initiated with the
%% `CreateDataSetImportTask' operation.
-spec get_data_set_import_task(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_set_import_task_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_import_task_errors(), tuple()}.
get_data_set_import_task(Client, ApplicationId, TaskId)
  when is_map(Client) ->
    get_data_set_import_task(Client, ApplicationId, TaskId, #{}, #{}).

-spec get_data_set_import_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_set_import_task_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_import_task_errors(), tuple()}.
get_data_set_import_task(Client, ApplicationId, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_set_import_task(Client, ApplicationId, TaskId, QueryMap, HeadersMap, []).

-spec get_data_set_import_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_set_import_task_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_import_task_errors(), tuple()}.
get_data_set_import_task(Client, ApplicationId, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataset-import-tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details of a specific deployment with a given deployment
%% identifier.
-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, ApplicationId, DeploymentId)
  when is_map(Client) ->
    get_deployment(Client, ApplicationId, DeploymentId, #{}, #{}).

-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, ApplicationId, DeploymentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deployment(Client, ApplicationId, DeploymentId, QueryMap, HeadersMap, []).

-spec get_deployment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_deployment_response(), tuple()} |
    {error, any()} |
    {error, get_deployment_errors(), tuple()}.
get_deployment(Client, ApplicationId, DeploymentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/deployments/", aws_util:encode_uri(DeploymentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a specific runtime environment.
-spec get_environment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentId)
  when is_map(Client) ->
    get_environment(Client, EnvironmentId, #{}, #{}).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, EnvironmentId, QueryMap, HeadersMap, []).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a single sign-on URL that can be used to connect to AWS Blu
%% Insights.
-spec get_signed_bluinsights_url(aws_client:aws_client()) ->
    {ok, get_signed_bluinsights_url_response(), tuple()} |
    {error, any()} |
    {error, get_signed_bluinsights_url_errors(), tuple()}.
get_signed_bluinsights_url(Client)
  when is_map(Client) ->
    get_signed_bluinsights_url(Client, #{}, #{}).

-spec get_signed_bluinsights_url(aws_client:aws_client(), map(), map()) ->
    {ok, get_signed_bluinsights_url_response(), tuple()} |
    {error, any()} |
    {error, get_signed_bluinsights_url_errors(), tuple()}.
get_signed_bluinsights_url(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_signed_bluinsights_url(Client, QueryMap, HeadersMap, []).

-spec get_signed_bluinsights_url(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_signed_bluinsights_url_response(), tuple()} |
    {error, any()} |
    {error, get_signed_bluinsights_url_errors(), tuple()}.
get_signed_bluinsights_url(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/signed-bi-url"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the application versions for a specific
%% application.
-spec list_application_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_application_versions_response(), tuple()} |
    {error, any()} |
    {error, list_application_versions_errors(), tuple()}.
list_application_versions(Client, ApplicationId)
  when is_map(Client) ->
    list_application_versions(Client, ApplicationId, #{}, #{}).

-spec list_application_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_application_versions_response(), tuple()} |
    {error, any()} |
    {error, list_application_versions_errors(), tuple()}.
list_application_versions(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_versions(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_application_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_application_versions_response(), tuple()} |
    {error, any()} |
    {error, list_application_versions_errors(), tuple()}.
list_application_versions(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the applications associated with a specific Amazon Web Services
%% account.
%%
%% You can provide the
%% unique identifier of a specific runtime environment in a query parameter
%% to see all
%% applications associated with that environment.
-spec list_applications(aws_client:aws_client()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

-spec list_applications(aws_client:aws_client(), map(), map()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

-spec list_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"environmentId">>, maps:get(<<"environmentId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"names">>, maps:get(<<"names">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the available batch job definitions based on the batch job
%% resources uploaded
%% during the application creation.
%%
%% You can use the batch job definitions in the list to start
%% a batch job.
-spec list_batch_job_definitions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_batch_job_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_batch_job_definitions_errors(), tuple()}.
list_batch_job_definitions(Client, ApplicationId)
  when is_map(Client) ->
    list_batch_job_definitions(Client, ApplicationId, #{}, #{}).

-spec list_batch_job_definitions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_batch_job_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_batch_job_definitions_errors(), tuple()}.
list_batch_job_definitions(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_batch_job_definitions(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_batch_job_definitions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_batch_job_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_batch_job_definitions_errors(), tuple()}.
list_batch_job_definitions(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job-definitions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists historical, current, and scheduled batch job executions for a
%% specific
%% application.
-spec list_batch_job_executions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_batch_job_executions_response(), tuple()} |
    {error, any()} |
    {error, list_batch_job_executions_errors(), tuple()}.
list_batch_job_executions(Client, ApplicationId)
  when is_map(Client) ->
    list_batch_job_executions(Client, ApplicationId, #{}, #{}).

-spec list_batch_job_executions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_batch_job_executions_response(), tuple()} |
    {error, any()} |
    {error, list_batch_job_executions_errors(), tuple()}.
list_batch_job_executions(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_batch_job_executions(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_batch_job_executions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_batch_job_executions_response(), tuple()} |
    {error, any()} |
    {error, list_batch_job_executions_errors(), tuple()}.
list_batch_job_executions(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job-executions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"executionIds">>, maps:get(<<"executionIds">>, QueryMap, undefined)},
        {<<"jobName">>, maps:get(<<"jobName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startedAfter">>, maps:get(<<"startedAfter">>, QueryMap, undefined)},
        {<<"startedBefore">>, maps:get(<<"startedBefore">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the job steps for a JCL file to restart a batch job.
%%
%% This is only applicable for Micro Focus engine with versions 8.0.6 and
%% above.
-spec list_batch_job_restart_points(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_batch_job_restart_points_response(), tuple()} |
    {error, any()} |
    {error, list_batch_job_restart_points_errors(), tuple()}.
list_batch_job_restart_points(Client, ApplicationId, ExecutionId)
  when is_map(Client) ->
    list_batch_job_restart_points(Client, ApplicationId, ExecutionId, #{}, #{}).

-spec list_batch_job_restart_points(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_batch_job_restart_points_response(), tuple()} |
    {error, any()} |
    {error, list_batch_job_restart_points_errors(), tuple()}.
list_batch_job_restart_points(Client, ApplicationId, ExecutionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_batch_job_restart_points(Client, ApplicationId, ExecutionId, QueryMap, HeadersMap, []).

-spec list_batch_job_restart_points(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_batch_job_restart_points_response(), tuple()} |
    {error, any()} |
    {error, list_batch_job_restart_points_errors(), tuple()}.
list_batch_job_restart_points(Client, ApplicationId, ExecutionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job-executions/", aws_util:encode_uri(ExecutionId), "/steps"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"authSecretsManagerArn">>, maps:get(<<"authSecretsManagerArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the data set exports for the specified application.
-spec list_data_set_export_history(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_set_export_history_response(), tuple()} |
    {error, any()} |
    {error, list_data_set_export_history_errors(), tuple()}.
list_data_set_export_history(Client, ApplicationId)
  when is_map(Client) ->
    list_data_set_export_history(Client, ApplicationId, #{}, #{}).

-spec list_data_set_export_history(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_set_export_history_response(), tuple()} |
    {error, any()} |
    {error, list_data_set_export_history_errors(), tuple()}.
list_data_set_export_history(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_set_export_history(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_data_set_export_history(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_set_export_history_response(), tuple()} |
    {error, any()} |
    {error, list_data_set_export_history_errors(), tuple()}.
list_data_set_export_history(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataset-export-tasks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the data set imports for the specified application.
-spec list_data_set_import_history(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_set_import_history_response(), tuple()} |
    {error, any()} |
    {error, list_data_set_import_history_errors(), tuple()}.
list_data_set_import_history(Client, ApplicationId)
  when is_map(Client) ->
    list_data_set_import_history(Client, ApplicationId, #{}, #{}).

-spec list_data_set_import_history(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_set_import_history_response(), tuple()} |
    {error, any()} |
    {error, list_data_set_import_history_errors(), tuple()}.
list_data_set_import_history(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_set_import_history(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_data_set_import_history(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_set_import_history_response(), tuple()} |
    {error, any()} |
    {error, list_data_set_import_history_errors(), tuple()}.
list_data_set_import_history(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dataset-import-tasks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the data sets imported for a specific application.
%%
%% In Amazon Web Services Mainframe Modernization, data sets are
%% associated with applications deployed on runtime environments. This is
%% known as importing
%% data sets. Currently, Amazon Web Services Mainframe Modernization can
%% import data sets into catalogs using CreateDataSetImportTask:
%% https://docs.aws.amazon.com/m2/latest/APIReference/API_CreateDataSetImportTask.html.
-spec list_data_sets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_data_sets_errors(), tuple()}.
list_data_sets(Client, ApplicationId)
  when is_map(Client) ->
    list_data_sets(Client, ApplicationId, #{}, #{}).

-spec list_data_sets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_data_sets_errors(), tuple()}.
list_data_sets(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sets(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_data_sets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_data_sets_errors(), tuple()}.
list_data_sets(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/datasets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameFilter">>, maps:get(<<"nameFilter">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all deployments of a specific application.
%%
%% A deployment is a
%% combination of a specific application and a specific version of that
%% application. Each
%% deployment is mapped to a particular application version.
-spec list_deployments(aws_client:aws_client(), binary() | list()) ->
    {ok, list_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, ApplicationId)
  when is_map(Client) ->
    list_deployments(Client, ApplicationId, #{}, #{}).

-spec list_deployments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deployments(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_deployments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_deployments_response(), tuple()} |
    {error, any()} |
    {error, list_deployments_errors(), tuple()}.
list_deployments(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/deployments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the available engine versions.
-spec list_engine_versions(aws_client:aws_client()) ->
    {ok, list_engine_versions_response(), tuple()} |
    {error, any()} |
    {error, list_engine_versions_errors(), tuple()}.
list_engine_versions(Client)
  when is_map(Client) ->
    list_engine_versions(Client, #{}, #{}).

-spec list_engine_versions(aws_client:aws_client(), map(), map()) ->
    {ok, list_engine_versions_response(), tuple()} |
    {error, any()} |
    {error, list_engine_versions_errors(), tuple()}.
list_engine_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_engine_versions(Client, QueryMap, HeadersMap, []).

-spec list_engine_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_engine_versions_response(), tuple()} |
    {error, any()} |
    {error, list_engine_versions_errors(), tuple()}.
list_engine_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/engine-versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"engineType">>, maps:get(<<"engineType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the runtime environments.
-spec list_environments(aws_client:aws_client()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client)
  when is_map(Client) ->
    list_environments(Client, #{}, #{}).

-spec list_environments(aws_client:aws_client(), map(), map()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, QueryMap, HeadersMap, []).

-spec list_environments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"engineType">>, maps:get(<<"engineType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"names">>, maps:get(<<"names">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for the specified resource.
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

%% @doc Starts an application that is currently stopped.
-spec start_application(aws_client:aws_client(), binary() | list(), start_application_request()) ->
    {ok, start_application_response(), tuple()} |
    {error, any()} |
    {error, start_application_errors(), tuple()}.
start_application(Client, ApplicationId, Input) ->
    start_application(Client, ApplicationId, Input, []).

-spec start_application(aws_client:aws_client(), binary() | list(), start_application_request(), proplists:proplist()) ->
    {ok, start_application_response(), tuple()} |
    {error, any()} |
    {error, start_application_errors(), tuple()}.
start_application(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/start"],
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

%% @doc Starts a batch job and returns the unique identifier of this
%% execution of the batch job.
%%
%% The associated application must be running in order to start the batch
%% job.
-spec start_batch_job(aws_client:aws_client(), binary() | list(), start_batch_job_request()) ->
    {ok, start_batch_job_response(), tuple()} |
    {error, any()} |
    {error, start_batch_job_errors(), tuple()}.
start_batch_job(Client, ApplicationId, Input) ->
    start_batch_job(Client, ApplicationId, Input, []).

-spec start_batch_job(aws_client:aws_client(), binary() | list(), start_batch_job_request(), proplists:proplist()) ->
    {ok, start_batch_job_response(), tuple()} |
    {error, any()} |
    {error, start_batch_job_errors(), tuple()}.
start_batch_job(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/batch-job"],
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

%% @doc Stops a running application.
-spec stop_application(aws_client:aws_client(), binary() | list(), stop_application_request()) ->
    {ok, stop_application_response(), tuple()} |
    {error, any()} |
    {error, stop_application_errors(), tuple()}.
stop_application(Client, ApplicationId, Input) ->
    stop_application(Client, ApplicationId, Input, []).

-spec stop_application(aws_client:aws_client(), binary() | list(), stop_application_request(), proplists:proplist()) ->
    {ok, stop_application_response(), tuple()} |
    {error, any()} |
    {error, stop_application_errors(), tuple()}.
stop_application(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/stop"],
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

%% @doc Adds one or more tags to the specified resource.
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

%% @doc Removes one or more tags from the specified resource.
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

%% @doc Updates an application and creates a new version.
-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).

-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Updates the configuration details for a specific runtime environment.
-spec update_environment(aws_client:aws_client(), binary() | list(), update_environment_request()) ->
    {ok, update_environment_response(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, EnvironmentId, Input) ->
    update_environment(Client, EnvironmentId, Input, []).

-spec update_environment(aws_client:aws_client(), binary() | list(), update_environment_request(), proplists:proplist()) ->
    {ok, update_environment_response(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = patch,
    Path = ["/environments/", aws_util:encode_uri(EnvironmentId), ""],
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
    Client1 = Client#{service => <<"m2">>},
    Host = build_host(<<"m2">>, Client1),
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
