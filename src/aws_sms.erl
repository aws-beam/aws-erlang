%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% Product update
%%
%% We recommend Amazon Web Services Application Migration Service:
%% http://aws.amazon.com/application-migration-service (Amazon Web Services
%% MGN) as the primary migration service for lift-and-shift migrations.
%%
%% If Amazon Web Services MGN is
%% unavailable in a specific Amazon Web Services Region, you can use the
%% Server Migration Service APIs through March
%% 2023.
%%
%% Server Migration Service (Server Migration Service) makes it easier and
%% faster for you to migrate your
%% on-premises workloads to Amazon Web Services. To learn more about Server
%% Migration Service, see the following
%% resources:
%%
%% Server Migration Service
%% product page: http://aws.amazon.com/server-migration-service/
%%
%% Server Migration Service User Guide:
%% https://docs.aws.amazon.com/server-migration-service/latest/userguide/
-module(aws_sms).

-export([create_app/2,
         create_app/3,
         create_replication_job/2,
         create_replication_job/3,
         delete_app/2,
         delete_app/3,
         delete_app_launch_configuration/2,
         delete_app_launch_configuration/3,
         delete_app_replication_configuration/2,
         delete_app_replication_configuration/3,
         delete_app_validation_configuration/2,
         delete_app_validation_configuration/3,
         delete_replication_job/2,
         delete_replication_job/3,
         delete_server_catalog/2,
         delete_server_catalog/3,
         disassociate_connector/2,
         disassociate_connector/3,
         generate_change_set/2,
         generate_change_set/3,
         generate_template/2,
         generate_template/3,
         get_app/2,
         get_app/3,
         get_app_launch_configuration/2,
         get_app_launch_configuration/3,
         get_app_replication_configuration/2,
         get_app_replication_configuration/3,
         get_app_validation_configuration/2,
         get_app_validation_configuration/3,
         get_app_validation_output/2,
         get_app_validation_output/3,
         get_connectors/2,
         get_connectors/3,
         get_replication_jobs/2,
         get_replication_jobs/3,
         get_replication_runs/2,
         get_replication_runs/3,
         get_servers/2,
         get_servers/3,
         import_app_catalog/2,
         import_app_catalog/3,
         import_server_catalog/2,
         import_server_catalog/3,
         launch_app/2,
         launch_app/3,
         list_apps/2,
         list_apps/3,
         notify_app_validation_output/2,
         notify_app_validation_output/3,
         put_app_launch_configuration/2,
         put_app_launch_configuration/3,
         put_app_replication_configuration/2,
         put_app_replication_configuration/3,
         put_app_validation_configuration/2,
         put_app_validation_configuration/3,
         start_app_replication/2,
         start_app_replication/3,
         start_on_demand_app_replication/2,
         start_on_demand_app_replication/3,
         start_on_demand_replication_run/2,
         start_on_demand_replication_run/3,
         stop_app_replication/2,
         stop_app_replication/3,
         terminate_app/2,
         terminate_app/3,
         update_app/2,
         update_app/3,
         update_replication_job/2,
         update_replication_job/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% connector() :: #{
%%   <<"associatedOn">> => non_neg_integer(),
%%   <<"capabilityList">> => list(list(any())()),
%%   <<"connectorId">> => string(),
%%   <<"ipAddress">> => string(),
%%   <<"macAddress">> => string(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string(),
%%   <<"vmManagerId">> => string(),
%%   <<"vmManagerName">> => string(),
%%   <<"vmManagerType">> => list(any())
%% }
-type connector() :: #{binary() => any()}.

%% Example:
%% get_app_launch_configuration_request() :: #{
%%   <<"appId">> => string()
%% }
-type get_app_launch_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_replication_jobs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"replicationJobList">> => list(replication_job())
%% }
-type get_replication_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_apps_response() :: #{
%%   <<"apps">> => list(app_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_apps_response() :: #{binary() => any()}.

%% Example:
%% delete_app_launch_configuration_response() :: #{

%% }
-type delete_app_launch_configuration_response() :: #{binary() => any()}.

%% Example:
%% import_server_catalog_response() :: #{

%% }
-type import_server_catalog_response() :: #{binary() => any()}.

%% Example:
%% terminate_app_request() :: #{
%%   <<"appId">> => string()
%% }
-type terminate_app_request() :: #{binary() => any()}.

%% Example:
%% create_app_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"roleName">> => string(),
%%   <<"serverGroups">> => list(server_group()),
%%   <<"tags">> => list(tag())
%% }
-type create_app_request() :: #{binary() => any()}.

%% Example:
%% dry_run_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type dry_run_operation_exception() :: #{binary() => any()}.

%% Example:
%% delete_app_response() :: #{

%% }
-type delete_app_response() :: #{binary() => any()}.

%% Example:
%% generate_change_set_request() :: #{
%%   <<"appId">> => string(),
%%   <<"changesetFormat">> => list(any())
%% }
-type generate_change_set_request() :: #{binary() => any()}.

%% Example:
%% put_app_validation_configuration_response() :: #{

%% }
-type put_app_validation_configuration_response() :: #{binary() => any()}.

%% Example:
%% stop_app_replication_response() :: #{

%% }
-type stop_app_replication_response() :: #{binary() => any()}.

%% Example:
%% server_replication_parameters() :: #{
%%   <<"encrypted">> => boolean(),
%%   <<"frequency">> => integer(),
%%   <<"kmsKeyId">> => string(),
%%   <<"licenseType">> => list(any()),
%%   <<"numberOfRecentAmisToKeep">> => integer(),
%%   <<"runOnce">> => boolean(),
%%   <<"seedTime">> => non_neg_integer()
%% }
-type server_replication_parameters() :: #{binary() => any()}.

%% Example:
%% launch_app_response() :: #{

%% }
-type launch_app_response() :: #{binary() => any()}.

%% Example:
%% delete_app_launch_configuration_request() :: #{
%%   <<"appId">> => string()
%% }
-type delete_app_launch_configuration_request() :: #{binary() => any()}.

%% Example:
%% create_replication_job_request() :: #{
%%   <<"description">> => string(),
%%   <<"encrypted">> => boolean(),
%%   <<"frequency">> => integer(),
%%   <<"kmsKeyId">> => string(),
%%   <<"licenseType">> => list(any()),
%%   <<"numberOfRecentAmisToKeep">> => integer(),
%%   <<"roleName">> => string(),
%%   <<"runOnce">> => boolean(),
%%   <<"seedReplicationTime">> := non_neg_integer(),
%%   <<"serverId">> := string()
%% }
-type create_replication_job_request() :: #{binary() => any()}.

%% Example:
%% unauthorized_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_operation_exception() :: #{binary() => any()}.

%% Example:
%% replication_job_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type replication_job_not_found_exception() :: #{binary() => any()}.

%% Example:
%% update_replication_job_request() :: #{
%%   <<"description">> => string(),
%%   <<"encrypted">> => boolean(),
%%   <<"frequency">> => integer(),
%%   <<"kmsKeyId">> => string(),
%%   <<"licenseType">> => list(any()),
%%   <<"nextReplicationRunStartTime">> => non_neg_integer(),
%%   <<"numberOfRecentAmisToKeep">> => integer(),
%%   <<"replicationJobId">> := string(),
%%   <<"roleName">> => string()
%% }
-type update_replication_job_request() :: #{binary() => any()}.

%% Example:
%% start_on_demand_app_replication_response() :: #{

%% }
-type start_on_demand_app_replication_response() :: #{binary() => any()}.

%% Example:
%% vm_server() :: #{
%%   <<"vmManagerName">> => string(),
%%   <<"vmManagerType">> => list(any()),
%%   <<"vmName">> => string(),
%%   <<"vmPath">> => string(),
%%   <<"vmServerAddress">> => vm_server_address()
%% }
-type vm_server() :: #{binary() => any()}.

%% Example:
%% missing_required_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type missing_required_parameter_exception() :: #{binary() => any()}.

%% Example:
%% get_connectors_response() :: #{
%%   <<"connectorList">> => list(connector()),
%%   <<"nextToken">> => string()
%% }
-type get_connectors_response() :: #{binary() => any()}.

%% Example:
%% put_app_replication_configuration_request() :: #{
%%   <<"appId">> => string(),
%%   <<"serverGroupReplicationConfigurations">> => list(server_group_replication_configuration())
%% }
-type put_app_replication_configuration_request() :: #{binary() => any()}.

%% Example:
%% launch_app_request() :: #{
%%   <<"appId">> => string()
%% }
-type launch_app_request() :: #{binary() => any()}.

%% Example:
%% s_s_m_validation_parameters() :: #{
%%   <<"command">> => string(),
%%   <<"executionTimeoutSeconds">> => integer(),
%%   <<"instanceId">> => string(),
%%   <<"outputS3BucketName">> => string(),
%%   <<"scriptType">> => list(any()),
%%   <<"source">> => source()
%% }
-type s_s_m_validation_parameters() :: #{binary() => any()}.

%% Example:
%% terminate_app_response() :: #{

%% }
-type terminate_app_response() :: #{binary() => any()}.

%% Example:
%% server_group_launch_configuration() :: #{
%%   <<"launchOrder">> => integer(),
%%   <<"serverGroupId">> => string(),
%%   <<"serverLaunchConfigurations">> => list(server_launch_configuration())
%% }
-type server_group_launch_configuration() :: #{binary() => any()}.

%% Example:
%% start_app_replication_response() :: #{

%% }
-type start_app_replication_response() :: #{binary() => any()}.

%% Example:
%% server_cannot_be_replicated_exception() :: #{
%%   <<"message">> => string()
%% }
-type server_cannot_be_replicated_exception() :: #{binary() => any()}.

%% Example:
%% replication_run_stage_details() :: #{
%%   <<"stage">> => string(),
%%   <<"stageProgress">> => string()
%% }
-type replication_run_stage_details() :: #{binary() => any()}.

%% Example:
%% validation_output() :: #{
%%   <<"appValidationOutput">> => app_validation_output(),
%%   <<"latestValidationTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"serverValidationOutput">> => server_validation_output(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"validationId">> => string()
%% }
-type validation_output() :: #{binary() => any()}.

%% Example:
%% user_data() :: #{
%%   <<"s3Location">> => s3_location()
%% }
-type user_data() :: #{binary() => any()}.

%% Example:
%% server_group_replication_configuration() :: #{
%%   <<"serverGroupId">> => string(),
%%   <<"serverReplicationConfigurations">> => list(server_replication_configuration())
%% }
-type server_group_replication_configuration() :: #{binary() => any()}.

%% Example:
%% get_app_request() :: #{
%%   <<"appId">> => string()
%% }
-type get_app_request() :: #{binary() => any()}.

%% Example:
%% delete_replication_job_request() :: #{
%%   <<"replicationJobId">> := string()
%% }
-type delete_replication_job_request() :: #{binary() => any()}.

%% Example:
%% get_servers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"vmServerAddressList">> => list(vm_server_address())
%% }
-type get_servers_request() :: #{binary() => any()}.

%% Example:
%% get_app_replication_configuration_request() :: #{
%%   <<"appId">> => string()
%% }
-type get_app_replication_configuration_request() :: #{binary() => any()}.

%% Example:
%% disassociate_connector_response() :: #{

%% }
-type disassociate_connector_response() :: #{binary() => any()}.

%% Example:
%% app_validation_configuration() :: #{
%%   <<"appValidationStrategy">> => list(any()),
%%   <<"name">> => string(),
%%   <<"ssmValidationParameters">> => s_s_m_validation_parameters(),
%%   <<"validationId">> => string()
%% }
-type app_validation_configuration() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% put_app_launch_configuration_request() :: #{
%%   <<"appId">> => string(),
%%   <<"autoLaunch">> => boolean(),
%%   <<"roleName">> => string(),
%%   <<"serverGroupLaunchConfigurations">> => list(server_group_launch_configuration())
%% }
-type put_app_launch_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_app_replication_configuration_request() :: #{
%%   <<"appId">> => string()
%% }
-type delete_app_replication_configuration_request() :: #{binary() => any()}.

%% Example:
%% internal_error() :: #{
%%   <<"message">> => string()
%% }
-type internal_error() :: #{binary() => any()}.

%% Example:
%% notify_app_validation_output_response() :: #{

%% }
-type notify_app_validation_output_response() :: #{binary() => any()}.

%% Example:
%% no_connectors_available_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_connectors_available_exception() :: #{binary() => any()}.

%% Example:
%% update_replication_job_response() :: #{

%% }
-type update_replication_job_response() :: #{binary() => any()}.

%% Example:
%% start_app_replication_request() :: #{
%%   <<"appId">> => string()
%% }
-type start_app_replication_request() :: #{binary() => any()}.

%% Example:
%% get_connectors_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_connectors_request() :: #{binary() => any()}.

%% Example:
%% generate_template_response() :: #{
%%   <<"s3Location">> => s3_location()
%% }
-type generate_template_response() :: #{binary() => any()}.

%% Example:
%% generate_change_set_response() :: #{
%%   <<"s3Location">> => s3_location()
%% }
-type generate_change_set_response() :: #{binary() => any()}.

%% Example:
%% put_app_validation_configuration_request() :: #{
%%   <<"appId">> := string(),
%%   <<"appValidationConfigurations">> => list(app_validation_configuration()),
%%   <<"serverGroupValidationConfigurations">> => list(server_group_validation_configuration())
%% }
-type put_app_validation_configuration_request() :: #{binary() => any()}.

%% Example:
%% vm_server_address() :: #{
%%   <<"vmId">> => string(),
%%   <<"vmManagerId">> => string()
%% }
-type vm_server_address() :: #{binary() => any()}.

%% Example:
%% user_data_validation_parameters() :: #{
%%   <<"scriptType">> => list(any()),
%%   <<"source">> => source()
%% }
-type user_data_validation_parameters() :: #{binary() => any()}.

%% Example:
%% server_validation_output() :: #{
%%   <<"server">> => server()
%% }
-type server_validation_output() :: #{binary() => any()}.

%% Example:
%% operation_not_permitted_exception() :: #{
%%   <<"message">> => string()
%% }
-type operation_not_permitted_exception() :: #{binary() => any()}.

%% Example:
%% s_s_m_output() :: #{
%%   <<"s3Location">> => s3_location()
%% }
-type s_s_m_output() :: #{binary() => any()}.

%% Example:
%% s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string()
%% }
-type s3_location() :: #{binary() => any()}.

%% Example:
%% import_app_catalog_request() :: #{
%%   <<"roleName">> => string()
%% }
-type import_app_catalog_request() :: #{binary() => any()}.

%% Example:
%% stop_app_replication_request() :: #{
%%   <<"appId">> => string()
%% }
-type stop_app_replication_request() :: #{binary() => any()}.

%% Example:
%% replication_job_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type replication_job_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% app_summary() :: #{
%%   <<"appId">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"importedAppId">> => string(),
%%   <<"lastModified">> => non_neg_integer(),
%%   <<"latestReplicationTime">> => non_neg_integer(),
%%   <<"launchConfigurationStatus">> => list(any()),
%%   <<"launchDetails">> => launch_details(),
%%   <<"launchStatus">> => list(any()),
%%   <<"launchStatusMessage">> => string(),
%%   <<"name">> => string(),
%%   <<"replicationConfigurationStatus">> => list(any()),
%%   <<"replicationStatus">> => list(any()),
%%   <<"replicationStatusMessage">> => string(),
%%   <<"roleName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"totalServerGroups">> => integer(),
%%   <<"totalServers">> => integer()
%% }
-type app_summary() :: #{binary() => any()}.

%% Example:
%% delete_server_catalog_response() :: #{

%% }
-type delete_server_catalog_response() :: #{binary() => any()}.

%% Example:
%% get_app_response() :: #{
%%   <<"appSummary">> => app_summary(),
%%   <<"serverGroups">> => list(server_group()),
%%   <<"tags">> => list(tag())
%% }
-type get_app_response() :: #{binary() => any()}.

%% Example:
%% get_app_validation_configuration_request() :: #{
%%   <<"appId">> := string()
%% }
-type get_app_validation_configuration_request() :: #{binary() => any()}.

%% Example:
%% update_app_response() :: #{
%%   <<"appSummary">> => app_summary(),
%%   <<"serverGroups">> => list(server_group()),
%%   <<"tags">> => list(tag())
%% }
-type update_app_response() :: #{binary() => any()}.

%% Example:
%% source() :: #{
%%   <<"s3Location">> => s3_location()
%% }
-type source() :: #{binary() => any()}.

%% Example:
%% server_group_validation_configuration() :: #{
%%   <<"serverGroupId">> => string(),
%%   <<"serverValidationConfigurations">> => list(server_validation_configuration())
%% }
-type server_group_validation_configuration() :: #{binary() => any()}.

%% Example:
%% generate_template_request() :: #{
%%   <<"appId">> => string(),
%%   <<"templateFormat">> => list(any())
%% }
-type generate_template_request() :: #{binary() => any()}.

%% Example:
%% delete_app_request() :: #{
%%   <<"appId">> => string(),
%%   <<"forceStopAppReplication">> => boolean(),
%%   <<"forceTerminateApp">> => boolean()
%% }
-type delete_app_request() :: #{binary() => any()}.

%% Example:
%% temporarily_unavailable_exception() :: #{

%% }
-type temporarily_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% get_app_validation_configuration_response() :: #{
%%   <<"appValidationConfigurations">> => list(app_validation_configuration()),
%%   <<"serverGroupValidationConfigurations">> => list(server_group_validation_configuration())
%% }
-type get_app_validation_configuration_response() :: #{binary() => any()}.

%% Example:
%% notification_context() :: #{
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"validationId">> => string()
%% }
-type notification_context() :: #{binary() => any()}.

%% Example:
%% start_on_demand_replication_run_response() :: #{
%%   <<"replicationRunId">> => string()
%% }
-type start_on_demand_replication_run_response() :: #{binary() => any()}.

%% Example:
%% server_replication_configuration() :: #{
%%   <<"server">> => server(),
%%   <<"serverReplicationParameters">> => server_replication_parameters()
%% }
-type server_replication_configuration() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% start_on_demand_replication_run_request() :: #{
%%   <<"description">> => string(),
%%   <<"replicationJobId">> := string()
%% }
-type start_on_demand_replication_run_request() :: #{binary() => any()}.

%% Example:
%% delete_app_validation_configuration_request() :: #{
%%   <<"appId">> := string()
%% }
-type delete_app_validation_configuration_request() :: #{binary() => any()}.

%% Example:
%% server() :: #{
%%   <<"replicationJobId">> => string(),
%%   <<"replicationJobTerminated">> => boolean(),
%%   <<"serverId">> => string(),
%%   <<"serverType">> => list(any()),
%%   <<"vmServer">> => vm_server()
%% }
-type server() :: #{binary() => any()}.

%% Example:
%% delete_app_replication_configuration_response() :: #{

%% }
-type delete_app_replication_configuration_response() :: #{binary() => any()}.

%% Example:
%% start_on_demand_app_replication_request() :: #{
%%   <<"appId">> := string(),
%%   <<"description">> => string()
%% }
-type start_on_demand_app_replication_request() :: #{binary() => any()}.

%% Example:
%% delete_replication_job_response() :: #{

%% }
-type delete_replication_job_response() :: #{binary() => any()}.

%% Example:
%% create_replication_job_response() :: #{
%%   <<"replicationJobId">> => string()
%% }
-type create_replication_job_response() :: #{binary() => any()}.

%% Example:
%% update_app_request() :: #{
%%   <<"appId">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"roleName">> => string(),
%%   <<"serverGroups">> => list(server_group()),
%%   <<"tags">> => list(tag())
%% }
-type update_app_request() :: #{binary() => any()}.

%% Example:
%% app_validation_output() :: #{
%%   <<"ssmOutput">> => s_s_m_output()
%% }
-type app_validation_output() :: #{binary() => any()}.

%% Example:
%% get_servers_response() :: #{
%%   <<"lastModifiedOn">> => non_neg_integer(),
%%   <<"nextToken">> => string(),
%%   <<"serverCatalogStatus">> => list(any()),
%%   <<"serverList">> => list(server())
%% }
-type get_servers_response() :: #{binary() => any()}.

%% Example:
%% get_replication_runs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"replicationJobId">> := string()
%% }
-type get_replication_runs_request() :: #{binary() => any()}.

%% Example:
%% disassociate_connector_request() :: #{
%%   <<"connectorId">> := string()
%% }
-type disassociate_connector_request() :: #{binary() => any()}.

%% Example:
%% replication_run_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type replication_run_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_apps_request() :: #{
%%   <<"appIds">> => list(string()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_apps_request() :: #{binary() => any()}.

%% Example:
%% get_app_validation_output_request() :: #{
%%   <<"appId">> := string()
%% }
-type get_app_validation_output_request() :: #{binary() => any()}.

%% Example:
%% server_validation_configuration() :: #{
%%   <<"name">> => string(),
%%   <<"server">> => server(),
%%   <<"serverValidationStrategy">> => list(any()),
%%   <<"userDataValidationParameters">> => user_data_validation_parameters(),
%%   <<"validationId">> => string()
%% }
-type server_validation_configuration() :: #{binary() => any()}.

%% Example:
%% put_app_launch_configuration_response() :: #{

%% }
-type put_app_launch_configuration_response() :: #{binary() => any()}.

%% Example:
%% replication_run() :: #{
%%   <<"amiId">> => string(),
%%   <<"completedTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"encrypted">> => boolean(),
%%   <<"kmsKeyId">> => string(),
%%   <<"replicationRunId">> => string(),
%%   <<"scheduledStartTime">> => non_neg_integer(),
%%   <<"stageDetails">> => replication_run_stage_details(),
%%   <<"state">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"type">> => list(any())
%% }
-type replication_run() :: #{binary() => any()}.

%% Example:
%% get_app_replication_configuration_response() :: #{
%%   <<"serverGroupReplicationConfigurations">> => list(server_group_replication_configuration())
%% }
-type get_app_replication_configuration_response() :: #{binary() => any()}.

%% Example:
%% import_server_catalog_request() :: #{

%% }
-type import_server_catalog_request() :: #{binary() => any()}.

%% Example:
%% put_app_replication_configuration_response() :: #{

%% }
-type put_app_replication_configuration_response() :: #{binary() => any()}.

%% Example:
%% delete_app_validation_configuration_response() :: #{

%% }
-type delete_app_validation_configuration_response() :: #{binary() => any()}.

%% Example:
%% create_app_response() :: #{
%%   <<"appSummary">> => app_summary(),
%%   <<"serverGroups">> => list(server_group()),
%%   <<"tags">> => list(tag())
%% }
-type create_app_response() :: #{binary() => any()}.

%% Example:
%% launch_details() :: #{
%%   <<"latestLaunchTime">> => non_neg_integer(),
%%   <<"stackId">> => string(),
%%   <<"stackName">> => string()
%% }
-type launch_details() :: #{binary() => any()}.

%% Example:
%% server_launch_configuration() :: #{
%%   <<"associatePublicIpAddress">> => boolean(),
%%   <<"configureScript">> => s3_location(),
%%   <<"configureScriptType">> => list(any()),
%%   <<"ec2KeyName">> => string(),
%%   <<"iamInstanceProfileName">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"logicalId">> => string(),
%%   <<"securityGroup">> => string(),
%%   <<"server">> => server(),
%%   <<"subnet">> => string(),
%%   <<"userData">> => user_data(),
%%   <<"vpc">> => string()
%% }
-type server_launch_configuration() :: #{binary() => any()}.

%% Example:
%% get_app_validation_output_response() :: #{
%%   <<"validationOutputList">> => list(validation_output())
%% }
-type get_app_validation_output_response() :: #{binary() => any()}.

%% Example:
%% get_app_launch_configuration_response() :: #{
%%   <<"appId">> => string(),
%%   <<"autoLaunch">> => boolean(),
%%   <<"roleName">> => string(),
%%   <<"serverGroupLaunchConfigurations">> => list(server_group_launch_configuration())
%% }
-type get_app_launch_configuration_response() :: #{binary() => any()}.

%% Example:
%% import_app_catalog_response() :: #{

%% }
-type import_app_catalog_response() :: #{binary() => any()}.

%% Example:
%% notify_app_validation_output_request() :: #{
%%   <<"appId">> := string(),
%%   <<"notificationContext">> => notification_context()
%% }
-type notify_app_validation_output_request() :: #{binary() => any()}.

%% Example:
%% delete_server_catalog_request() :: #{

%% }
-type delete_server_catalog_request() :: #{binary() => any()}.

%% Example:
%% replication_job() :: #{
%%   <<"description">> => string(),
%%   <<"encrypted">> => boolean(),
%%   <<"frequency">> => integer(),
%%   <<"kmsKeyId">> => string(),
%%   <<"latestAmiId">> => string(),
%%   <<"licenseType">> => list(any()),
%%   <<"nextReplicationRunStartTime">> => non_neg_integer(),
%%   <<"numberOfRecentAmisToKeep">> => integer(),
%%   <<"replicationJobId">> => string(),
%%   <<"replicationRunList">> => list(replication_run()),
%%   <<"roleName">> => string(),
%%   <<"runOnce">> => boolean(),
%%   <<"seedReplicationTime">> => non_neg_integer(),
%%   <<"serverId">> => string(),
%%   <<"serverType">> => list(any()),
%%   <<"state">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"vmServer">> => vm_server()
%% }
-type replication_job() :: #{binary() => any()}.

%% Example:
%% get_replication_runs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"replicationJob">> => replication_job(),
%%   <<"replicationRunList">> => list(replication_run())
%% }
-type get_replication_runs_response() :: #{binary() => any()}.

%% Example:
%% get_replication_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"replicationJobId">> => string()
%% }
-type get_replication_jobs_request() :: #{binary() => any()}.

%% Example:
%% server_group() :: #{
%%   <<"name">> => string(),
%%   <<"serverGroupId">> => string(),
%%   <<"serverList">> => list(server())
%% }
-type server_group() :: #{binary() => any()}.

-type create_app_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type create_replication_job_errors() ::
    invalid_parameter_exception() | 
    temporarily_unavailable_exception() | 
    replication_job_already_exists_exception() | 
    operation_not_permitted_exception() | 
    no_connectors_available_exception() | 
    internal_error() | 
    server_cannot_be_replicated_exception() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type delete_app_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type delete_app_launch_configuration_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type delete_app_replication_configuration_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type delete_app_validation_configuration_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type delete_replication_job_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    missing_required_parameter_exception() | 
    replication_job_not_found_exception() | 
    unauthorized_operation_exception().

-type delete_server_catalog_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type disassociate_connector_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type generate_change_set_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type generate_template_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type get_app_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type get_app_launch_configuration_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type get_app_replication_configuration_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type get_app_validation_configuration_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type get_app_validation_output_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type get_connectors_errors() ::
    unauthorized_operation_exception().

-type get_replication_jobs_errors() ::
    invalid_parameter_exception() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type get_replication_runs_errors() ::
    invalid_parameter_exception() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type get_servers_errors() ::
    invalid_parameter_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type import_app_catalog_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type import_server_catalog_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    no_connectors_available_exception() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type launch_app_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type list_apps_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type notify_app_validation_output_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type put_app_launch_configuration_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type put_app_replication_configuration_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type put_app_validation_configuration_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type start_app_replication_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type start_on_demand_app_replication_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type start_on_demand_replication_run_errors() ::
    replication_run_limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception() | 
    dry_run_operation_exception().

-type stop_app_replication_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type terminate_app_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type update_app_errors() ::
    invalid_parameter_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    missing_required_parameter_exception() | 
    unauthorized_operation_exception().

-type update_replication_job_errors() ::
    invalid_parameter_exception() | 
    temporarily_unavailable_exception() | 
    operation_not_permitted_exception() | 
    internal_error() | 
    server_cannot_be_replicated_exception() | 
    missing_required_parameter_exception() | 
    replication_job_not_found_exception() | 
    unauthorized_operation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application.
%%
%% An application consists of one or more server groups. Each
%% server group contain one or more servers.
-spec create_app(aws_client:aws_client(), create_app_request()) ->
    {ok, create_app_response(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app(Client, Input, []).

-spec create_app(aws_client:aws_client(), create_app_request(), proplists:proplist()) ->
    {ok, create_app_response(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApp">>, Input, Options).

%% @doc Creates a replication job.
%%
%% The replication job schedules periodic replication runs
%% to replicate your server to Amazon Web Services. Each replication run
%% creates an Amazon Machine Image
%% (AMI).
-spec create_replication_job(aws_client:aws_client(), create_replication_job_request()) ->
    {ok, create_replication_job_response(), tuple()} |
    {error, any()} |
    {error, create_replication_job_errors(), tuple()}.
create_replication_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_job(Client, Input, []).

-spec create_replication_job(aws_client:aws_client(), create_replication_job_request(), proplists:proplist()) ->
    {ok, create_replication_job_response(), tuple()} |
    {error, any()} |
    {error, create_replication_job_errors(), tuple()}.
create_replication_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationJob">>, Input, Options).

%% @doc Deletes the specified application.
%%
%% Optionally deletes the launched stack associated with
%% the application and all Server Migration Service replication jobs for
%% servers in the application.
-spec delete_app(aws_client:aws_client(), delete_app_request()) ->
    {ok, delete_app_response(), tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app(Client, Input, []).

-spec delete_app(aws_client:aws_client(), delete_app_request(), proplists:proplist()) ->
    {ok, delete_app_response(), tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApp">>, Input, Options).

%% @doc Deletes the launch configuration for the specified application.
-spec delete_app_launch_configuration(aws_client:aws_client(), delete_app_launch_configuration_request()) ->
    {ok, delete_app_launch_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_app_launch_configuration_errors(), tuple()}.
delete_app_launch_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_launch_configuration(Client, Input, []).

-spec delete_app_launch_configuration(aws_client:aws_client(), delete_app_launch_configuration_request(), proplists:proplist()) ->
    {ok, delete_app_launch_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_app_launch_configuration_errors(), tuple()}.
delete_app_launch_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppLaunchConfiguration">>, Input, Options).

%% @doc Deletes the replication configuration for the specified application.
-spec delete_app_replication_configuration(aws_client:aws_client(), delete_app_replication_configuration_request()) ->
    {ok, delete_app_replication_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_app_replication_configuration_errors(), tuple()}.
delete_app_replication_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_replication_configuration(Client, Input, []).

-spec delete_app_replication_configuration(aws_client:aws_client(), delete_app_replication_configuration_request(), proplists:proplist()) ->
    {ok, delete_app_replication_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_app_replication_configuration_errors(), tuple()}.
delete_app_replication_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppReplicationConfiguration">>, Input, Options).

%% @doc Deletes the validation configuration for the specified application.
-spec delete_app_validation_configuration(aws_client:aws_client(), delete_app_validation_configuration_request()) ->
    {ok, delete_app_validation_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_app_validation_configuration_errors(), tuple()}.
delete_app_validation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_validation_configuration(Client, Input, []).

-spec delete_app_validation_configuration(aws_client:aws_client(), delete_app_validation_configuration_request(), proplists:proplist()) ->
    {ok, delete_app_validation_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_app_validation_configuration_errors(), tuple()}.
delete_app_validation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppValidationConfiguration">>, Input, Options).

%% @doc Deletes the specified replication job.
%%
%% After you delete a replication job, there are no further replication runs.
%% Amazon Web Services
%% deletes the contents of the Amazon S3 bucket used to store Server
%% Migration Service artifacts. The AMIs created
%% by the replication runs are not deleted.
-spec delete_replication_job(aws_client:aws_client(), delete_replication_job_request()) ->
    {ok, delete_replication_job_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_job_errors(), tuple()}.
delete_replication_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_job(Client, Input, []).

-spec delete_replication_job(aws_client:aws_client(), delete_replication_job_request(), proplists:proplist()) ->
    {ok, delete_replication_job_response(), tuple()} |
    {error, any()} |
    {error, delete_replication_job_errors(), tuple()}.
delete_replication_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationJob">>, Input, Options).

%% @doc Deletes all servers from your server catalog.
-spec delete_server_catalog(aws_client:aws_client(), delete_server_catalog_request()) ->
    {ok, delete_server_catalog_response(), tuple()} |
    {error, any()} |
    {error, delete_server_catalog_errors(), tuple()}.
delete_server_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_server_catalog(Client, Input, []).

-spec delete_server_catalog(aws_client:aws_client(), delete_server_catalog_request(), proplists:proplist()) ->
    {ok, delete_server_catalog_response(), tuple()} |
    {error, any()} |
    {error, delete_server_catalog_errors(), tuple()}.
delete_server_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServerCatalog">>, Input, Options).

%% @doc Disassociates the specified connector from Server Migration Service.
%%
%% After you disassociate a connector, it is no longer available to support
%% replication jobs.
-spec disassociate_connector(aws_client:aws_client(), disassociate_connector_request()) ->
    {ok, disassociate_connector_response(), tuple()} |
    {error, any()} |
    {error, disassociate_connector_errors(), tuple()}.
disassociate_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_connector(Client, Input, []).

-spec disassociate_connector(aws_client:aws_client(), disassociate_connector_request(), proplists:proplist()) ->
    {ok, disassociate_connector_response(), tuple()} |
    {error, any()} |
    {error, disassociate_connector_errors(), tuple()}.
disassociate_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateConnector">>, Input, Options).

%% @doc Generates a target change set for a currently launched stack and
%% writes it to an Amazon S3
%% object in the customer’s Amazon S3 bucket.
-spec generate_change_set(aws_client:aws_client(), generate_change_set_request()) ->
    {ok, generate_change_set_response(), tuple()} |
    {error, any()} |
    {error, generate_change_set_errors(), tuple()}.
generate_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_change_set(Client, Input, []).

-spec generate_change_set(aws_client:aws_client(), generate_change_set_request(), proplists:proplist()) ->
    {ok, generate_change_set_response(), tuple()} |
    {error, any()} |
    {error, generate_change_set_errors(), tuple()}.
generate_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateChangeSet">>, Input, Options).

%% @doc Generates an CloudFormation template based on the current launch
%% configuration and writes it to
%% an Amazon S3 object in the customer’s Amazon S3 bucket.
-spec generate_template(aws_client:aws_client(), generate_template_request()) ->
    {ok, generate_template_response(), tuple()} |
    {error, any()} |
    {error, generate_template_errors(), tuple()}.
generate_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_template(Client, Input, []).

-spec generate_template(aws_client:aws_client(), generate_template_request(), proplists:proplist()) ->
    {ok, generate_template_response(), tuple()} |
    {error, any()} |
    {error, generate_template_errors(), tuple()}.
generate_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateTemplate">>, Input, Options).

%% @doc Retrieve information about the specified application.
-spec get_app(aws_client:aws_client(), get_app_request()) ->
    {ok, get_app_response(), tuple()} |
    {error, any()} |
    {error, get_app_errors(), tuple()}.
get_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_app(Client, Input, []).

-spec get_app(aws_client:aws_client(), get_app_request(), proplists:proplist()) ->
    {ok, get_app_response(), tuple()} |
    {error, any()} |
    {error, get_app_errors(), tuple()}.
get_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApp">>, Input, Options).

%% @doc Retrieves the application launch configuration associated with the
%% specified application.
-spec get_app_launch_configuration(aws_client:aws_client(), get_app_launch_configuration_request()) ->
    {ok, get_app_launch_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_app_launch_configuration_errors(), tuple()}.
get_app_launch_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_app_launch_configuration(Client, Input, []).

-spec get_app_launch_configuration(aws_client:aws_client(), get_app_launch_configuration_request(), proplists:proplist()) ->
    {ok, get_app_launch_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_app_launch_configuration_errors(), tuple()}.
get_app_launch_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppLaunchConfiguration">>, Input, Options).

%% @doc Retrieves the application replication configuration associated with
%% the specified
%% application.
-spec get_app_replication_configuration(aws_client:aws_client(), get_app_replication_configuration_request()) ->
    {ok, get_app_replication_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_app_replication_configuration_errors(), tuple()}.
get_app_replication_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_app_replication_configuration(Client, Input, []).

-spec get_app_replication_configuration(aws_client:aws_client(), get_app_replication_configuration_request(), proplists:proplist()) ->
    {ok, get_app_replication_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_app_replication_configuration_errors(), tuple()}.
get_app_replication_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppReplicationConfiguration">>, Input, Options).

%% @doc Retrieves information about a configuration for validating an
%% application.
-spec get_app_validation_configuration(aws_client:aws_client(), get_app_validation_configuration_request()) ->
    {ok, get_app_validation_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_app_validation_configuration_errors(), tuple()}.
get_app_validation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_app_validation_configuration(Client, Input, []).

-spec get_app_validation_configuration(aws_client:aws_client(), get_app_validation_configuration_request(), proplists:proplist()) ->
    {ok, get_app_validation_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_app_validation_configuration_errors(), tuple()}.
get_app_validation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppValidationConfiguration">>, Input, Options).

%% @doc Retrieves output from validating an application.
-spec get_app_validation_output(aws_client:aws_client(), get_app_validation_output_request()) ->
    {ok, get_app_validation_output_response(), tuple()} |
    {error, any()} |
    {error, get_app_validation_output_errors(), tuple()}.
get_app_validation_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_app_validation_output(Client, Input, []).

-spec get_app_validation_output(aws_client:aws_client(), get_app_validation_output_request(), proplists:proplist()) ->
    {ok, get_app_validation_output_response(), tuple()} |
    {error, any()} |
    {error, get_app_validation_output_errors(), tuple()}.
get_app_validation_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppValidationOutput">>, Input, Options).

%% @doc Describes the connectors registered with the Server Migration
%% Service.
-spec get_connectors(aws_client:aws_client(), get_connectors_request()) ->
    {ok, get_connectors_response(), tuple()} |
    {error, any()} |
    {error, get_connectors_errors(), tuple()}.
get_connectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connectors(Client, Input, []).

-spec get_connectors(aws_client:aws_client(), get_connectors_request(), proplists:proplist()) ->
    {ok, get_connectors_response(), tuple()} |
    {error, any()} |
    {error, get_connectors_errors(), tuple()}.
get_connectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnectors">>, Input, Options).

%% @doc Describes the specified replication job or all of your replication
%% jobs.
-spec get_replication_jobs(aws_client:aws_client(), get_replication_jobs_request()) ->
    {ok, get_replication_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_replication_jobs_errors(), tuple()}.
get_replication_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_replication_jobs(Client, Input, []).

-spec get_replication_jobs(aws_client:aws_client(), get_replication_jobs_request(), proplists:proplist()) ->
    {ok, get_replication_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_replication_jobs_errors(), tuple()}.
get_replication_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReplicationJobs">>, Input, Options).

%% @doc Describes the replication runs for the specified replication job.
-spec get_replication_runs(aws_client:aws_client(), get_replication_runs_request()) ->
    {ok, get_replication_runs_response(), tuple()} |
    {error, any()} |
    {error, get_replication_runs_errors(), tuple()}.
get_replication_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_replication_runs(Client, Input, []).

-spec get_replication_runs(aws_client:aws_client(), get_replication_runs_request(), proplists:proplist()) ->
    {ok, get_replication_runs_response(), tuple()} |
    {error, any()} |
    {error, get_replication_runs_errors(), tuple()}.
get_replication_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReplicationRuns">>, Input, Options).

%% @doc Describes the servers in your server catalog.
%%
%% Before you can describe your servers, you must import them using
%% `ImportServerCatalog'.
-spec get_servers(aws_client:aws_client(), get_servers_request()) ->
    {ok, get_servers_response(), tuple()} |
    {error, any()} |
    {error, get_servers_errors(), tuple()}.
get_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_servers(Client, Input, []).

-spec get_servers(aws_client:aws_client(), get_servers_request(), proplists:proplist()) ->
    {ok, get_servers_response(), tuple()} |
    {error, any()} |
    {error, get_servers_errors(), tuple()}.
get_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServers">>, Input, Options).

%% @doc Allows application import from Migration Hub.
-spec import_app_catalog(aws_client:aws_client(), import_app_catalog_request()) ->
    {ok, import_app_catalog_response(), tuple()} |
    {error, any()} |
    {error, import_app_catalog_errors(), tuple()}.
import_app_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_app_catalog(Client, Input, []).

-spec import_app_catalog(aws_client:aws_client(), import_app_catalog_request(), proplists:proplist()) ->
    {ok, import_app_catalog_response(), tuple()} |
    {error, any()} |
    {error, import_app_catalog_errors(), tuple()}.
import_app_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportAppCatalog">>, Input, Options).

%% @doc Gathers a complete list of on-premises servers.
%%
%% Connectors must be installed and
%% monitoring all servers to import.
%%
%% This call returns immediately, but might take additional time to retrieve
%% all the
%% servers.
-spec import_server_catalog(aws_client:aws_client(), import_server_catalog_request()) ->
    {ok, import_server_catalog_response(), tuple()} |
    {error, any()} |
    {error, import_server_catalog_errors(), tuple()}.
import_server_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_server_catalog(Client, Input, []).

-spec import_server_catalog(aws_client:aws_client(), import_server_catalog_request(), proplists:proplist()) ->
    {ok, import_server_catalog_response(), tuple()} |
    {error, any()} |
    {error, import_server_catalog_errors(), tuple()}.
import_server_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportServerCatalog">>, Input, Options).

%% @doc Launches the specified application as a stack in CloudFormation.
-spec launch_app(aws_client:aws_client(), launch_app_request()) ->
    {ok, launch_app_response(), tuple()} |
    {error, any()} |
    {error, launch_app_errors(), tuple()}.
launch_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    launch_app(Client, Input, []).

-spec launch_app(aws_client:aws_client(), launch_app_request(), proplists:proplist()) ->
    {ok, launch_app_response(), tuple()} |
    {error, any()} |
    {error, launch_app_errors(), tuple()}.
launch_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LaunchApp">>, Input, Options).

%% @doc Retrieves summaries for all applications.
-spec list_apps(aws_client:aws_client(), list_apps_request()) ->
    {ok, list_apps_response(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_apps(Client, Input, []).

-spec list_apps(aws_client:aws_client(), list_apps_request(), proplists:proplist()) ->
    {ok, list_apps_response(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApps">>, Input, Options).

%% @doc Provides information to Server Migration Service about whether
%% application validation is successful.
-spec notify_app_validation_output(aws_client:aws_client(), notify_app_validation_output_request()) ->
    {ok, notify_app_validation_output_response(), tuple()} |
    {error, any()} |
    {error, notify_app_validation_output_errors(), tuple()}.
notify_app_validation_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_app_validation_output(Client, Input, []).

-spec notify_app_validation_output(aws_client:aws_client(), notify_app_validation_output_request(), proplists:proplist()) ->
    {ok, notify_app_validation_output_response(), tuple()} |
    {error, any()} |
    {error, notify_app_validation_output_errors(), tuple()}.
notify_app_validation_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyAppValidationOutput">>, Input, Options).

%% @doc Creates or updates the launch configuration for the specified
%% application.
-spec put_app_launch_configuration(aws_client:aws_client(), put_app_launch_configuration_request()) ->
    {ok, put_app_launch_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_app_launch_configuration_errors(), tuple()}.
put_app_launch_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_app_launch_configuration(Client, Input, []).

-spec put_app_launch_configuration(aws_client:aws_client(), put_app_launch_configuration_request(), proplists:proplist()) ->
    {ok, put_app_launch_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_app_launch_configuration_errors(), tuple()}.
put_app_launch_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAppLaunchConfiguration">>, Input, Options).

%% @doc Creates or updates the replication configuration for the specified
%% application.
-spec put_app_replication_configuration(aws_client:aws_client(), put_app_replication_configuration_request()) ->
    {ok, put_app_replication_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_app_replication_configuration_errors(), tuple()}.
put_app_replication_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_app_replication_configuration(Client, Input, []).

-spec put_app_replication_configuration(aws_client:aws_client(), put_app_replication_configuration_request(), proplists:proplist()) ->
    {ok, put_app_replication_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_app_replication_configuration_errors(), tuple()}.
put_app_replication_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAppReplicationConfiguration">>, Input, Options).

%% @doc Creates or updates a validation configuration for the specified
%% application.
-spec put_app_validation_configuration(aws_client:aws_client(), put_app_validation_configuration_request()) ->
    {ok, put_app_validation_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_app_validation_configuration_errors(), tuple()}.
put_app_validation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_app_validation_configuration(Client, Input, []).

-spec put_app_validation_configuration(aws_client:aws_client(), put_app_validation_configuration_request(), proplists:proplist()) ->
    {ok, put_app_validation_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_app_validation_configuration_errors(), tuple()}.
put_app_validation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAppValidationConfiguration">>, Input, Options).

%% @doc Starts replicating the specified application by creating replication
%% jobs for each server in the
%% application.
-spec start_app_replication(aws_client:aws_client(), start_app_replication_request()) ->
    {ok, start_app_replication_response(), tuple()} |
    {error, any()} |
    {error, start_app_replication_errors(), tuple()}.
start_app_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_app_replication(Client, Input, []).

-spec start_app_replication(aws_client:aws_client(), start_app_replication_request(), proplists:proplist()) ->
    {ok, start_app_replication_response(), tuple()} |
    {error, any()} |
    {error, start_app_replication_errors(), tuple()}.
start_app_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAppReplication">>, Input, Options).

%% @doc Starts an on-demand replication run for the specified application.
-spec start_on_demand_app_replication(aws_client:aws_client(), start_on_demand_app_replication_request()) ->
    {ok, start_on_demand_app_replication_response(), tuple()} |
    {error, any()} |
    {error, start_on_demand_app_replication_errors(), tuple()}.
start_on_demand_app_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_on_demand_app_replication(Client, Input, []).

-spec start_on_demand_app_replication(aws_client:aws_client(), start_on_demand_app_replication_request(), proplists:proplist()) ->
    {ok, start_on_demand_app_replication_response(), tuple()} |
    {error, any()} |
    {error, start_on_demand_app_replication_errors(), tuple()}.
start_on_demand_app_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartOnDemandAppReplication">>, Input, Options).

%% @doc Starts an on-demand replication run for the specified replication
%% job.
%%
%% This
%% replication run starts immediately. This replication run is in addition to
%% the ones
%% already scheduled.
%%
%% There is a limit on the number of on-demand replications runs that you can
%% request
%% in a 24-hour period.
-spec start_on_demand_replication_run(aws_client:aws_client(), start_on_demand_replication_run_request()) ->
    {ok, start_on_demand_replication_run_response(), tuple()} |
    {error, any()} |
    {error, start_on_demand_replication_run_errors(), tuple()}.
start_on_demand_replication_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_on_demand_replication_run(Client, Input, []).

-spec start_on_demand_replication_run(aws_client:aws_client(), start_on_demand_replication_run_request(), proplists:proplist()) ->
    {ok, start_on_demand_replication_run_response(), tuple()} |
    {error, any()} |
    {error, start_on_demand_replication_run_errors(), tuple()}.
start_on_demand_replication_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartOnDemandReplicationRun">>, Input, Options).

%% @doc Stops replicating the specified application by deleting the
%% replication job for each server in
%% the application.
-spec stop_app_replication(aws_client:aws_client(), stop_app_replication_request()) ->
    {ok, stop_app_replication_response(), tuple()} |
    {error, any()} |
    {error, stop_app_replication_errors(), tuple()}.
stop_app_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_app_replication(Client, Input, []).

-spec stop_app_replication(aws_client:aws_client(), stop_app_replication_request(), proplists:proplist()) ->
    {ok, stop_app_replication_response(), tuple()} |
    {error, any()} |
    {error, stop_app_replication_errors(), tuple()}.
stop_app_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAppReplication">>, Input, Options).

%% @doc Terminates the stack for the specified application.
-spec terminate_app(aws_client:aws_client(), terminate_app_request()) ->
    {ok, terminate_app_response(), tuple()} |
    {error, any()} |
    {error, terminate_app_errors(), tuple()}.
terminate_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_app(Client, Input, []).

-spec terminate_app(aws_client:aws_client(), terminate_app_request(), proplists:proplist()) ->
    {ok, terminate_app_response(), tuple()} |
    {error, any()} |
    {error, terminate_app_errors(), tuple()}.
terminate_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateApp">>, Input, Options).

%% @doc Updates the specified application.
-spec update_app(aws_client:aws_client(), update_app_request()) ->
    {ok, update_app_response(), tuple()} |
    {error, any()} |
    {error, update_app_errors(), tuple()}.
update_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_app(Client, Input, []).

-spec update_app(aws_client:aws_client(), update_app_request(), proplists:proplist()) ->
    {ok, update_app_response(), tuple()} |
    {error, any()} |
    {error, update_app_errors(), tuple()}.
update_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApp">>, Input, Options).

%% @doc Updates the specified settings for the specified replication job.
-spec update_replication_job(aws_client:aws_client(), update_replication_job_request()) ->
    {ok, update_replication_job_response(), tuple()} |
    {error, any()} |
    {error, update_replication_job_errors(), tuple()}.
update_replication_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_replication_job(Client, Input, []).

-spec update_replication_job(aws_client:aws_client(), update_replication_job_request(), proplists:proplist()) ->
    {ok, update_replication_job_response(), tuple()} |
    {error, any()} |
    {error, update_replication_job_errors(), tuple()}.
update_replication_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateReplicationJob">>, Input, Options).

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
    Client1 = Client#{service => <<"sms">>},
    Host = build_host(<<"sms">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSServerMigrationService_V2016_10_24.", Action/binary>>}
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
