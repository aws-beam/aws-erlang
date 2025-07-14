%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Migration Hub Strategy Recommendations
%%
%% This API reference provides descriptions, syntax, and other details about
%% each of the
%% actions and data types for Migration Hub Strategy Recommendations
%% (Strategy Recommendations).
%%
%% The topic for each action shows the API
%% request parameters and the response. Alternatively, you can use one of the
%% AWS SDKs to
%% access an API that is tailored to the programming language or platform
%% that you're using. For
%% more information, see AWS SDKs: http://aws.amazon.com/tools/#SDKs.
-module(aws_migrationhubstrategy).

-export([get_application_component_details/2,
         get_application_component_details/4,
         get_application_component_details/5,
         get_application_component_strategies/2,
         get_application_component_strategies/4,
         get_application_component_strategies/5,
         get_assessment/2,
         get_assessment/4,
         get_assessment/5,
         get_import_file_task/2,
         get_import_file_task/4,
         get_import_file_task/5,
         get_latest_assessment_id/1,
         get_latest_assessment_id/3,
         get_latest_assessment_id/4,
         get_portfolio_preferences/1,
         get_portfolio_preferences/3,
         get_portfolio_preferences/4,
         get_portfolio_summary/1,
         get_portfolio_summary/3,
         get_portfolio_summary/4,
         get_recommendation_report_details/2,
         get_recommendation_report_details/4,
         get_recommendation_report_details/5,
         get_server_details/2,
         get_server_details/4,
         get_server_details/5,
         get_server_strategies/2,
         get_server_strategies/4,
         get_server_strategies/5,
         list_analyzable_servers/2,
         list_analyzable_servers/3,
         list_application_components/2,
         list_application_components/3,
         list_collectors/1,
         list_collectors/3,
         list_collectors/4,
         list_import_file_task/1,
         list_import_file_task/3,
         list_import_file_task/4,
         list_servers/2,
         list_servers/3,
         put_portfolio_preferences/2,
         put_portfolio_preferences/3,
         start_assessment/2,
         start_assessment/3,
         start_import_file_task/2,
         start_import_file_task/3,
         start_recommendation_report_generation/2,
         start_recommendation_report_generation/3,
         stop_assessment/2,
         stop_assessment/3,
         update_application_component_config/2,
         update_application_component_config/3,
         update_server_config/2,
         update_server_config/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% ip_address_based_remote_info() :: #{
%%   <<"authType">> => string(),
%%   <<"ipAddressConfigurationTimeStamp">> => string(),
%%   <<"osType">> => string()
%% }
-type ip_address_based_remote_info() :: #{binary() => any()}.

%% Example:
%% get_latest_assessment_id_request() :: #{}
-type get_latest_assessment_id_request() :: #{}.


%% Example:
%% start_import_file_task_request() :: #{
%%   <<"S3Bucket">> := string(),
%%   <<"dataSourceType">> => string(),
%%   <<"groupId">> => list(group()),
%%   <<"name">> := string(),
%%   <<"s3bucketForReportData">> => string(),
%%   <<"s3key">> := string()
%% }
-type start_import_file_task_request() :: #{binary() => any()}.


%% Example:
%% get_latest_assessment_id_response() :: #{
%%   <<"id">> => string()
%% }
-type get_latest_assessment_id_response() :: #{binary() => any()}.


%% Example:
%% no_database_migration_preference() :: #{
%%   <<"targetDatabaseEngine">> => list(string())
%% }
-type no_database_migration_preference() :: #{binary() => any()}.


%% Example:
%% heterogeneous() :: #{
%%   <<"targetDatabaseEngine">> => list(string())
%% }
-type heterogeneous() :: #{binary() => any()}.


%% Example:
%% dependency_exception() :: #{
%%   <<"message">> => string()
%% }
-type dependency_exception() :: #{binary() => any()}.


%% Example:
%% list_collectors_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_collectors_request() :: #{binary() => any()}.


%% Example:
%% start_import_file_task_response() :: #{
%%   <<"id">> => string()
%% }
-type start_import_file_task_response() :: #{binary() => any()}.


%% Example:
%% get_application_component_details_response() :: #{
%%   <<"applicationComponentDetail">> => application_component_detail(),
%%   <<"associatedApplications">> => list(associated_application()),
%%   <<"associatedServerIds">> => list(string()),
%%   <<"moreApplicationResource">> => boolean()
%% }
-type get_application_component_details_response() :: #{binary() => any()}.


%% Example:
%% server_status_summary() :: #{
%%   <<"count">> => integer(),
%%   <<"runTimeAssessmentStatus">> => string()
%% }
-type server_status_summary() :: #{binary() => any()}.


%% Example:
%% o_s_info() :: #{
%%   <<"type">> => string(),
%%   <<"version">> => string()
%% }
-type o_s_info() :: #{binary() => any()}.


%% Example:
%% app_unit_error() :: #{
%%   <<"appUnitErrorCategory">> => string()
%% }
-type app_unit_error() :: #{binary() => any()}.


%% Example:
%% strategy_summary() :: #{
%%   <<"count">> => integer(),
%%   <<"strategy">> => string()
%% }
-type strategy_summary() :: #{binary() => any()}.


%% Example:
%% collector() :: #{
%%   <<"collectorHealth">> => string(),
%%   <<"collectorId">> => string(),
%%   <<"collectorVersion">> => string(),
%%   <<"configurationSummary">> => configuration_summary(),
%%   <<"hostName">> => string(),
%%   <<"ipAddress">> => string(),
%%   <<"lastActivityTimeStamp">> => string(),
%%   <<"registeredTimeStamp">> => string()
%% }
-type collector() :: #{binary() => any()}.


%% Example:
%% list_collectors_response() :: #{
%%   <<"Collectors">> => list(collector()),
%%   <<"nextToken">> => string()
%% }
-type list_collectors_response() :: #{binary() => any()}.


%% Example:
%% system_info() :: #{
%%   <<"cpuArchitecture">> => string(),
%%   <<"fileSystemType">> => string(),
%%   <<"networkInfoList">> => list(network_info()),
%%   <<"osInfo">> => o_s_info()
%% }
-type system_info() :: #{binary() => any()}.


%% Example:
%% homogeneous() :: #{
%%   <<"targetDatabaseEngine">> => list(string())
%% }
-type homogeneous() :: #{binary() => any()}.


%% Example:
%% get_server_details_response() :: #{
%%   <<"associatedApplications">> => list(associated_application()),
%%   <<"nextToken">> => string(),
%%   <<"serverDetail">> => server_detail()
%% }
-type get_server_details_response() :: #{binary() => any()}.


%% Example:
%% update_server_config_request() :: #{
%%   <<"serverId">> := string(),
%%   <<"strategyOption">> => strategy_option()
%% }
-type update_server_config_request() :: #{binary() => any()}.


%% Example:
%% stop_assessment_request() :: #{
%%   <<"assessmentId">> := string()
%% }
-type stop_assessment_request() :: #{binary() => any()}.


%% Example:
%% list_servers_request() :: #{
%%   <<"filterValue">> => string(),
%%   <<"groupIdFilter">> => list(group()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serverCriteria">> => string(),
%%   <<"sort">> => string()
%% }
-type list_servers_request() :: #{binary() => any()}.


%% Example:
%% antipattern_severity_summary() :: #{
%%   <<"count">> => integer(),
%%   <<"severity">> => string()
%% }
-type antipattern_severity_summary() :: #{binary() => any()}.


%% Example:
%% prioritize_business_goals() :: #{
%%   <<"businessGoals">> => business_goals()
%% }
-type prioritize_business_goals() :: #{binary() => any()}.


%% Example:
%% get_import_file_task_response() :: #{
%%   <<"completionTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"importName">> => string(),
%%   <<"inputS3Bucket">> => string(),
%%   <<"inputS3Key">> => string(),
%%   <<"numberOfRecordsFailed">> => integer(),
%%   <<"numberOfRecordsSuccess">> => integer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"statusReportS3Bucket">> => string(),
%%   <<"statusReportS3Key">> => string()
%% }
-type get_import_file_task_response() :: #{binary() => any()}.


%% Example:
%% s3_object() :: #{
%%   <<"s3Bucket">> => string(),
%%   <<"s3key">> => string()
%% }
-type s3_object() :: #{binary() => any()}.


%% Example:
%% associated_application() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type associated_application() :: #{binary() => any()}.

%% Example:
%% get_portfolio_summary_request() :: #{}
-type get_portfolio_summary_request() :: #{}.


%% Example:
%% list_application_components_request() :: #{
%%   <<"applicationComponentCriteria">> => string(),
%%   <<"filterValue">> => string(),
%%   <<"groupIdFilter">> => list(group()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sort">> => string()
%% }
-type list_application_components_request() :: #{binary() => any()}.

%% Example:
%% get_application_component_strategies_request() :: #{}
-type get_application_component_strategies_request() :: #{}.


%% Example:
%% no_management_preference() :: #{
%%   <<"targetDestination">> => list(string())
%% }
-type no_management_preference() :: #{binary() => any()}.


%% Example:
%% configuration_summary() :: #{
%%   <<"ipAddressBasedRemoteInfoList">> => list(ip_address_based_remote_info()),
%%   <<"pipelineInfoList">> => list(pipeline_info()),
%%   <<"remoteSourceCodeAnalysisServerInfo">> => remote_source_code_analysis_server_info(),
%%   <<"vcenterBasedRemoteInfoList">> => list(vcenter_based_remote_info()),
%%   <<"versionControlInfoList">> => list(version_control_info())
%% }
-type configuration_summary() :: #{binary() => any()}.

%% Example:
%% stop_assessment_response() :: #{}
-type stop_assessment_response() :: #{}.


%% Example:
%% application_component_status_summary() :: #{
%%   <<"count">> => integer(),
%%   <<"srcCodeOrDbAnalysisStatus">> => string()
%% }
-type application_component_status_summary() :: #{binary() => any()}.


%% Example:
%% pipeline_info() :: #{
%%   <<"pipelineConfigurationTimeStamp">> => string(),
%%   <<"pipelineType">> => string()
%% }
-type pipeline_info() :: #{binary() => any()}.


%% Example:
%% list_analyzable_servers_response() :: #{
%%   <<"analyzableServers">> => list(analyzable_server_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_analyzable_servers_response() :: #{binary() => any()}.


%% Example:
%% server_error() :: #{
%%   <<"serverErrorCategory">> => string()
%% }
-type server_error() :: #{binary() => any()}.


%% Example:
%% version_control_info() :: #{
%%   <<"versionControlConfigurationTimeStamp">> => string(),
%%   <<"versionControlType">> => string()
%% }
-type version_control_info() :: #{binary() => any()}.


%% Example:
%% list_import_file_task_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_import_file_task_request() :: #{binary() => any()}.


%% Example:
%% database_preferences() :: #{
%%   <<"databaseManagementPreference">> => string(),
%%   <<"databaseMigrationPreference">> => list()
%% }
-type database_preferences() :: #{binary() => any()}.


%% Example:
%% strategy_option() :: #{
%%   <<"isPreferred">> => boolean(),
%%   <<"strategy">> => string(),
%%   <<"targetDestination">> => string(),
%%   <<"toolName">> => string()
%% }
-type strategy_option() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% recommendation_set() :: #{
%%   <<"strategy">> => string(),
%%   <<"targetDestination">> => string(),
%%   <<"transformationTool">> => transformation_tool()
%% }
-type recommendation_set() :: #{binary() => any()}.


%% Example:
%% aws_managed_resources() :: #{
%%   <<"targetDestination">> => list(string())
%% }
-type aws_managed_resources() :: #{binary() => any()}.


%% Example:
%% application_component_strategy() :: #{
%%   <<"isPreferred">> => boolean(),
%%   <<"recommendation">> => recommendation_set(),
%%   <<"status">> => string()
%% }
-type application_component_strategy() :: #{binary() => any()}.


%% Example:
%% application_component_detail() :: #{
%%   <<"analysisStatus">> => string(),
%%   <<"antipatternReportS3Object">> => s3_object(),
%%   <<"antipatternReportStatus">> => string(),
%%   <<"antipatternReportStatusMessage">> => string(),
%%   <<"appType">> => string(),
%%   <<"appUnitError">> => app_unit_error(),
%%   <<"associatedServerId">> => string(),
%%   <<"databaseConfigDetail">> => database_config_detail(),
%%   <<"id">> => string(),
%%   <<"inclusionStatus">> => string(),
%%   <<"lastAnalyzedTimestamp">> => non_neg_integer(),
%%   <<"listAntipatternSeveritySummary">> => list(antipattern_severity_summary()),
%%   <<"moreServerAssociationExists">> => boolean(),
%%   <<"name">> => string(),
%%   <<"osDriver">> => string(),
%%   <<"osVersion">> => string(),
%%   <<"recommendationSet">> => recommendation_set(),
%%   <<"resourceSubType">> => string(),
%%   <<"resultList">> => list(result()),
%%   <<"runtimeStatus">> => string(),
%%   <<"runtimeStatusMessage">> => string(),
%%   <<"sourceCodeRepositories">> => list(source_code_repository()),
%%   <<"statusMessage">> => string()
%% }
-type application_component_detail() :: #{binary() => any()}.


%% Example:
%% server_detail() :: #{
%%   <<"antipatternReportS3Object">> => s3_object(),
%%   <<"antipatternReportStatus">> => string(),
%%   <<"antipatternReportStatusMessage">> => string(),
%%   <<"applicationComponentStrategySummary">> => list(strategy_summary()),
%%   <<"dataCollectionStatus">> => string(),
%%   <<"id">> => string(),
%%   <<"lastAnalyzedTimestamp">> => non_neg_integer(),
%%   <<"listAntipatternSeveritySummary">> => list(antipattern_severity_summary()),
%%   <<"name">> => string(),
%%   <<"recommendationSet">> => recommendation_set(),
%%   <<"serverError">> => server_error(),
%%   <<"serverType">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"systemInfo">> => system_info()
%% }
-type server_detail() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_server_strategies_response() :: #{
%%   <<"serverStrategies">> => list(server_strategy())
%% }
-type get_server_strategies_response() :: #{binary() => any()}.


%% Example:
%% recommendation_report_details() :: #{
%%   <<"completionTime">> => non_neg_integer(),
%%   <<"s3Bucket">> => string(),
%%   <<"s3Keys">> => list(string()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string()
%% }
-type recommendation_report_details() :: #{binary() => any()}.

%% Example:
%% get_server_strategies_request() :: #{}
-type get_server_strategies_request() :: #{}.


%% Example:
%% result() :: #{
%%   <<"analysisStatus">> => list(),
%%   <<"analysisType">> => string(),
%%   <<"antipatternReportResultList">> => list(antipattern_report_result()),
%%   <<"statusMessage">> => string()
%% }
-type result() :: #{binary() => any()}.


%% Example:
%% business_goals() :: #{
%%   <<"licenseCostReduction">> => integer(),
%%   <<"modernizeInfrastructureWithCloudNativeTechnologies">> => integer(),
%%   <<"reduceOperationalOverheadWithManagedServices">> => integer(),
%%   <<"speedOfMigration">> => integer()
%% }
-type business_goals() :: #{binary() => any()}.


%% Example:
%% server_strategy() :: #{
%%   <<"isPreferred">> => boolean(),
%%   <<"numberOfApplicationComponents">> => integer(),
%%   <<"recommendation">> => recommendation_set(),
%%   <<"status">> => string()
%% }
-type server_strategy() :: #{binary() => any()}.


%% Example:
%% start_assessment_request() :: #{
%%   <<"assessmentDataSourceType">> => string(),
%%   <<"assessmentTargets">> => list(assessment_target()),
%%   <<"s3bucketForAnalysisData">> => string(),
%%   <<"s3bucketForReportData">> => string()
%% }
-type start_assessment_request() :: #{binary() => any()}.


%% Example:
%% get_application_component_strategies_response() :: #{
%%   <<"applicationComponentStrategies">> => list(application_component_strategy())
%% }
-type get_application_component_strategies_response() :: #{binary() => any()}.

%% Example:
%% get_recommendation_report_details_request() :: #{}
-type get_recommendation_report_details_request() :: #{}.


%% Example:
%% list_import_file_task_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"taskInfos">> => list(import_file_task_information())
%% }
-type list_import_file_task_response() :: #{binary() => any()}.


%% Example:
%% start_recommendation_report_generation_request() :: #{
%%   <<"groupIdFilter">> => list(group()),
%%   <<"outputFormat">> => string()
%% }
-type start_recommendation_report_generation_request() :: #{binary() => any()}.


%% Example:
%% network_info() :: #{
%%   <<"interfaceName">> => string(),
%%   <<"ipAddress">> => string(),
%%   <<"macAddress">> => string(),
%%   <<"netMask">> => string()
%% }
-type network_info() :: #{binary() => any()}.

%% Example:
%% put_portfolio_preferences_response() :: #{}
-type put_portfolio_preferences_response() :: #{}.


%% Example:
%% source_code_repository() :: #{
%%   <<"branch">> => string(),
%%   <<"projectName">> => string(),
%%   <<"repository">> => string(),
%%   <<"versionControlType">> => string()
%% }
-type source_code_repository() :: #{binary() => any()}.

%% Example:
%% get_assessment_request() :: #{}
-type get_assessment_request() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% application_preferences() :: #{
%%   <<"managementPreference">> => list()
%% }
-type application_preferences() :: #{binary() => any()}.


%% Example:
%% application_component_summary() :: #{
%%   <<"appType">> => string(),
%%   <<"count">> => integer()
%% }
-type application_component_summary() :: #{binary() => any()}.


%% Example:
%% server_summary() :: #{
%%   <<"ServerOsType">> => string(),
%%   <<"count">> => integer()
%% }
-type server_summary() :: #{binary() => any()}.


%% Example:
%% analyzable_server_summary() :: #{
%%   <<"hostname">> => string(),
%%   <<"ipAddress">> => string(),
%%   <<"source">> => string(),
%%   <<"vmId">> => string()
%% }
-type analyzable_server_summary() :: #{binary() => any()}.


%% Example:
%% update_application_component_config_request() :: #{
%%   <<"appType">> => string(),
%%   <<"applicationComponentId">> := string(),
%%   <<"configureOnly">> => boolean(),
%%   <<"inclusionStatus">> => string(),
%%   <<"secretsManagerKey">> => string(),
%%   <<"sourceCodeList">> => list(source_code()),
%%   <<"strategyOption">> => strategy_option()
%% }
-type update_application_component_config_request() :: #{binary() => any()}.

%% Example:
%% get_import_file_task_request() :: #{}
-type get_import_file_task_request() :: #{}.


%% Example:
%% transformation_tool() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"tranformationToolInstallationLink">> => string()
%% }
-type transformation_tool() :: #{binary() => any()}.


%% Example:
%% get_assessment_response() :: #{
%%   <<"assessmentTargets">> => list(assessment_target()),
%%   <<"dataCollectionDetails">> => data_collection_details(),
%%   <<"id">> => string()
%% }
-type get_assessment_response() :: #{binary() => any()}.

%% Example:
%% get_application_component_details_request() :: #{}
-type get_application_component_details_request() :: #{}.


%% Example:
%% get_server_details_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_server_details_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% data_collection_details() :: #{
%%   <<"completionTime">> => non_neg_integer(),
%%   <<"failed">> => integer(),
%%   <<"inProgress">> => integer(),
%%   <<"servers">> => integer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"statusMessage">> => string(),
%%   <<"success">> => integer()
%% }
-type data_collection_details() :: #{binary() => any()}.


%% Example:
%% list_application_components_response() :: #{
%%   <<"applicationComponentInfos">> => list(application_component_detail()),
%%   <<"nextToken">> => string()
%% }
-type list_application_components_response() :: #{binary() => any()}.


%% Example:
%% get_portfolio_preferences_response() :: #{
%%   <<"applicationMode">> => string(),
%%   <<"applicationPreferences">> => application_preferences(),
%%   <<"databasePreferences">> => database_preferences(),
%%   <<"prioritizeBusinessGoals">> => prioritize_business_goals()
%% }
-type get_portfolio_preferences_response() :: #{binary() => any()}.

%% Example:
%% get_portfolio_preferences_request() :: #{}
-type get_portfolio_preferences_request() :: #{}.


%% Example:
%% get_recommendation_report_details_response() :: #{
%%   <<"id">> => string(),
%%   <<"recommendationReportDetails">> => recommendation_report_details()
%% }
-type get_recommendation_report_details_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% database_config_detail() :: #{
%%   <<"secretName">> => string()
%% }
-type database_config_detail() :: #{binary() => any()}.


%% Example:
%% service_linked_role_lock_client_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_linked_role_lock_client_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% group() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type group() :: #{binary() => any()}.


%% Example:
%% source_code() :: #{
%%   <<"location">> => string(),
%%   <<"projectName">> => string(),
%%   <<"sourceVersion">> => string(),
%%   <<"versionControl">> => string()
%% }
-type source_code() :: #{binary() => any()}.

%% Example:
%% update_server_config_response() :: #{}
-type update_server_config_response() :: #{}.


%% Example:
%% list_servers_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serverInfos">> => list(server_detail())
%% }
-type list_servers_response() :: #{binary() => any()}.


%% Example:
%% start_recommendation_report_generation_response() :: #{
%%   <<"id">> => string()
%% }
-type start_recommendation_report_generation_response() :: #{binary() => any()}.


%% Example:
%% put_portfolio_preferences_request() :: #{
%%   <<"applicationMode">> => string(),
%%   <<"applicationPreferences">> => application_preferences(),
%%   <<"databasePreferences">> => database_preferences(),
%%   <<"prioritizeBusinessGoals">> => prioritize_business_goals()
%% }
-type put_portfolio_preferences_request() :: #{binary() => any()}.


%% Example:
%% start_assessment_response() :: #{
%%   <<"assessmentId">> => string()
%% }
-type start_assessment_response() :: #{binary() => any()}.


%% Example:
%% list_analyzable_servers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sort">> => string()
%% }
-type list_analyzable_servers_request() :: #{binary() => any()}.


%% Example:
%% remote_source_code_analysis_server_info() :: #{
%%   <<"remoteSourceCodeAnalysisServerConfigurationTimestamp">> => string()
%% }
-type remote_source_code_analysis_server_info() :: #{binary() => any()}.

%% Example:
%% update_application_component_config_response() :: #{}
-type update_application_component_config_response() :: #{}.


%% Example:
%% vcenter_based_remote_info() :: #{
%%   <<"osType">> => string(),
%%   <<"vcenterConfigurationTimeStamp">> => string()
%% }
-type vcenter_based_remote_info() :: #{binary() => any()}.


%% Example:
%% self_manage_resources() :: #{
%%   <<"targetDestination">> => list(string())
%% }
-type self_manage_resources() :: #{binary() => any()}.


%% Example:
%% assessment_target() :: #{
%%   <<"condition">> => string(),
%%   <<"name">> => string(),
%%   <<"values">> => list(string())
%% }
-type assessment_target() :: #{binary() => any()}.


%% Example:
%% assessment_summary() :: #{
%%   <<"antipatternReportS3Object">> => s3_object(),
%%   <<"antipatternReportStatus">> => string(),
%%   <<"antipatternReportStatusMessage">> => string(),
%%   <<"lastAnalyzedTimestamp">> => non_neg_integer(),
%%   <<"listAntipatternSeveritySummary">> => list(antipattern_severity_summary()),
%%   <<"listApplicationComponentStatusSummary">> => list(application_component_status_summary()),
%%   <<"listApplicationComponentStrategySummary">> => list(strategy_summary()),
%%   <<"listApplicationComponentSummary">> => list(application_component_summary()),
%%   <<"listServerStatusSummary">> => list(server_status_summary()),
%%   <<"listServerStrategySummary">> => list(strategy_summary()),
%%   <<"listServerSummary">> => list(server_summary())
%% }
-type assessment_summary() :: #{binary() => any()}.


%% Example:
%% antipattern_report_result() :: #{
%%   <<"analyzerName">> => list(),
%%   <<"antiPatternReportS3Object">> => s3_object(),
%%   <<"antipatternReportStatus">> => string(),
%%   <<"antipatternReportStatusMessage">> => string()
%% }
-type antipattern_report_result() :: #{binary() => any()}.


%% Example:
%% import_file_task_information() :: #{
%%   <<"completionTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"importName">> => string(),
%%   <<"inputS3Bucket">> => string(),
%%   <<"inputS3Key">> => string(),
%%   <<"numberOfRecordsFailed">> => integer(),
%%   <<"numberOfRecordsSuccess">> => integer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => string(),
%%   <<"statusReportS3Bucket">> => string(),
%%   <<"statusReportS3Key">> => string()
%% }
-type import_file_task_information() :: #{binary() => any()}.


%% Example:
%% get_portfolio_summary_response() :: #{
%%   <<"assessmentSummary">> => assessment_summary()
%% }
-type get_portfolio_summary_response() :: #{binary() => any()}.

-type get_application_component_details_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_application_component_strategies_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_assessment_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_import_file_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_latest_assessment_id_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    dependency_exception().

-type get_portfolio_preferences_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_portfolio_summary_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_recommendation_report_details_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_server_details_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_server_strategies_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_analyzable_servers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_application_components_errors() ::
    service_linked_role_lock_client_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_collectors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_import_file_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_servers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type put_portfolio_preferences_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type start_assessment_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type start_import_file_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type start_recommendation_report_generation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type stop_assessment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_application_component_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_server_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves details about an application component.
-spec get_application_component_details(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_component_details_response(), tuple()} |
    {error, any()} |
    {error, get_application_component_details_errors(), tuple()}.
get_application_component_details(Client, ApplicationComponentId)
  when is_map(Client) ->
    get_application_component_details(Client, ApplicationComponentId, #{}, #{}).

-spec get_application_component_details(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_component_details_response(), tuple()} |
    {error, any()} |
    {error, get_application_component_details_errors(), tuple()}.
get_application_component_details(Client, ApplicationComponentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_component_details(Client, ApplicationComponentId, QueryMap, HeadersMap, []).

-spec get_application_component_details(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_component_details_response(), tuple()} |
    {error, any()} |
    {error, get_application_component_details_errors(), tuple()}.
get_application_component_details(Client, ApplicationComponentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-applicationcomponent-details/", aws_util:encode_uri(ApplicationComponentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of all the recommended strategies and tools for an
%% application component
%% running on a server.
-spec get_application_component_strategies(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_component_strategies_response(), tuple()} |
    {error, any()} |
    {error, get_application_component_strategies_errors(), tuple()}.
get_application_component_strategies(Client, ApplicationComponentId)
  when is_map(Client) ->
    get_application_component_strategies(Client, ApplicationComponentId, #{}, #{}).

-spec get_application_component_strategies(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_component_strategies_response(), tuple()} |
    {error, any()} |
    {error, get_application_component_strategies_errors(), tuple()}.
get_application_component_strategies(Client, ApplicationComponentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_component_strategies(Client, ApplicationComponentId, QueryMap, HeadersMap, []).

-spec get_application_component_strategies(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_component_strategies_response(), tuple()} |
    {error, any()} |
    {error, get_application_component_strategies_errors(), tuple()}.
get_application_component_strategies(Client, ApplicationComponentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-applicationcomponent-strategies/", aws_util:encode_uri(ApplicationComponentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the status of an on-going assessment.
-spec get_assessment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_errors(), tuple()}.
get_assessment(Client, Id)
  when is_map(Client) ->
    get_assessment(Client, Id, #{}, #{}).

-spec get_assessment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_errors(), tuple()}.
get_assessment(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_assessment(Client, Id, QueryMap, HeadersMap, []).

-spec get_assessment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_assessment_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_errors(), tuple()}.
get_assessment(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-assessment/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details about a specific import task.
-spec get_import_file_task(aws_client:aws_client(), binary() | list()) ->
    {ok, get_import_file_task_response(), tuple()} |
    {error, any()} |
    {error, get_import_file_task_errors(), tuple()}.
get_import_file_task(Client, Id)
  when is_map(Client) ->
    get_import_file_task(Client, Id, #{}, #{}).

-spec get_import_file_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_import_file_task_response(), tuple()} |
    {error, any()} |
    {error, get_import_file_task_errors(), tuple()}.
get_import_file_task(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_file_task(Client, Id, QueryMap, HeadersMap, []).

-spec get_import_file_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_import_file_task_response(), tuple()} |
    {error, any()} |
    {error, get_import_file_task_errors(), tuple()}.
get_import_file_task(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-import-file-task/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the latest ID of a specific assessment task.
-spec get_latest_assessment_id(aws_client:aws_client()) ->
    {ok, get_latest_assessment_id_response(), tuple()} |
    {error, any()} |
    {error, get_latest_assessment_id_errors(), tuple()}.
get_latest_assessment_id(Client)
  when is_map(Client) ->
    get_latest_assessment_id(Client, #{}, #{}).

-spec get_latest_assessment_id(aws_client:aws_client(), map(), map()) ->
    {ok, get_latest_assessment_id_response(), tuple()} |
    {error, any()} |
    {error, get_latest_assessment_id_errors(), tuple()}.
get_latest_assessment_id(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_latest_assessment_id(Client, QueryMap, HeadersMap, []).

-spec get_latest_assessment_id(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_latest_assessment_id_response(), tuple()} |
    {error, any()} |
    {error, get_latest_assessment_id_errors(), tuple()}.
get_latest_assessment_id(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-latest-assessment-id"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves your migration and modernization preferences.
-spec get_portfolio_preferences(aws_client:aws_client()) ->
    {ok, get_portfolio_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_portfolio_preferences_errors(), tuple()}.
get_portfolio_preferences(Client)
  when is_map(Client) ->
    get_portfolio_preferences(Client, #{}, #{}).

-spec get_portfolio_preferences(aws_client:aws_client(), map(), map()) ->
    {ok, get_portfolio_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_portfolio_preferences_errors(), tuple()}.
get_portfolio_preferences(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_portfolio_preferences(Client, QueryMap, HeadersMap, []).

-spec get_portfolio_preferences(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_portfolio_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_portfolio_preferences_errors(), tuple()}.
get_portfolio_preferences(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-portfolio-preferences"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves overall summary including the number of servers to rehost
%% and the overall
%% number of anti-patterns.
-spec get_portfolio_summary(aws_client:aws_client()) ->
    {ok, get_portfolio_summary_response(), tuple()} |
    {error, any()} |
    {error, get_portfolio_summary_errors(), tuple()}.
get_portfolio_summary(Client)
  when is_map(Client) ->
    get_portfolio_summary(Client, #{}, #{}).

-spec get_portfolio_summary(aws_client:aws_client(), map(), map()) ->
    {ok, get_portfolio_summary_response(), tuple()} |
    {error, any()} |
    {error, get_portfolio_summary_errors(), tuple()}.
get_portfolio_summary(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_portfolio_summary(Client, QueryMap, HeadersMap, []).

-spec get_portfolio_summary(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_portfolio_summary_response(), tuple()} |
    {error, any()} |
    {error, get_portfolio_summary_errors(), tuple()}.
get_portfolio_summary(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-portfolio-summary"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about the specified recommendation
%% report.
-spec get_recommendation_report_details(aws_client:aws_client(), binary() | list()) ->
    {ok, get_recommendation_report_details_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_report_details_errors(), tuple()}.
get_recommendation_report_details(Client, Id)
  when is_map(Client) ->
    get_recommendation_report_details(Client, Id, #{}, #{}).

-spec get_recommendation_report_details(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_recommendation_report_details_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_report_details_errors(), tuple()}.
get_recommendation_report_details(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommendation_report_details(Client, Id, QueryMap, HeadersMap, []).

-spec get_recommendation_report_details(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_recommendation_report_details_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_report_details_errors(), tuple()}.
get_recommendation_report_details(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-recommendation-report-details/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about a specified server.
-spec get_server_details(aws_client:aws_client(), binary() | list()) ->
    {ok, get_server_details_response(), tuple()} |
    {error, any()} |
    {error, get_server_details_errors(), tuple()}.
get_server_details(Client, ServerId)
  when is_map(Client) ->
    get_server_details(Client, ServerId, #{}, #{}).

-spec get_server_details(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_server_details_response(), tuple()} |
    {error, any()} |
    {error, get_server_details_errors(), tuple()}.
get_server_details(Client, ServerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_server_details(Client, ServerId, QueryMap, HeadersMap, []).

-spec get_server_details(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_server_details_response(), tuple()} |
    {error, any()} |
    {error, get_server_details_errors(), tuple()}.
get_server_details(Client, ServerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-server-details/", aws_util:encode_uri(ServerId), ""],
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

%% @doc Retrieves recommended strategies and tools for the specified server.
-spec get_server_strategies(aws_client:aws_client(), binary() | list()) ->
    {ok, get_server_strategies_response(), tuple()} |
    {error, any()} |
    {error, get_server_strategies_errors(), tuple()}.
get_server_strategies(Client, ServerId)
  when is_map(Client) ->
    get_server_strategies(Client, ServerId, #{}, #{}).

-spec get_server_strategies(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_server_strategies_response(), tuple()} |
    {error, any()} |
    {error, get_server_strategies_errors(), tuple()}.
get_server_strategies(Client, ServerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_server_strategies(Client, ServerId, QueryMap, HeadersMap, []).

-spec get_server_strategies(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_server_strategies_response(), tuple()} |
    {error, any()} |
    {error, get_server_strategies_errors(), tuple()}.
get_server_strategies(Client, ServerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/get-server-strategies/", aws_util:encode_uri(ServerId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of all the servers fetched from customer vCenter
%% using Strategy Recommendation Collector.
-spec list_analyzable_servers(aws_client:aws_client(), list_analyzable_servers_request()) ->
    {ok, list_analyzable_servers_response(), tuple()} |
    {error, any()} |
    {error, list_analyzable_servers_errors(), tuple()}.
list_analyzable_servers(Client, Input) ->
    list_analyzable_servers(Client, Input, []).

-spec list_analyzable_servers(aws_client:aws_client(), list_analyzable_servers_request(), proplists:proplist()) ->
    {ok, list_analyzable_servers_response(), tuple()} |
    {error, any()} |
    {error, list_analyzable_servers_errors(), tuple()}.
list_analyzable_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-analyzable-servers"],
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

%% @doc Retrieves a list of all the application components (processes).
-spec list_application_components(aws_client:aws_client(), list_application_components_request()) ->
    {ok, list_application_components_response(), tuple()} |
    {error, any()} |
    {error, list_application_components_errors(), tuple()}.
list_application_components(Client, Input) ->
    list_application_components(Client, Input, []).

-spec list_application_components(aws_client:aws_client(), list_application_components_request(), proplists:proplist()) ->
    {ok, list_application_components_response(), tuple()} |
    {error, any()} |
    {error, list_application_components_errors(), tuple()}.
list_application_components(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-applicationcomponents"],
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

%% @doc Retrieves a list of all the installed collectors.
-spec list_collectors(aws_client:aws_client()) ->
    {ok, list_collectors_response(), tuple()} |
    {error, any()} |
    {error, list_collectors_errors(), tuple()}.
list_collectors(Client)
  when is_map(Client) ->
    list_collectors(Client, #{}, #{}).

-spec list_collectors(aws_client:aws_client(), map(), map()) ->
    {ok, list_collectors_response(), tuple()} |
    {error, any()} |
    {error, list_collectors_errors(), tuple()}.
list_collectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collectors(Client, QueryMap, HeadersMap, []).

-spec list_collectors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_collectors_response(), tuple()} |
    {error, any()} |
    {error, list_collectors_errors(), tuple()}.
list_collectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-collectors"],
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

%% @doc Retrieves a list of all the imports performed.
-spec list_import_file_task(aws_client:aws_client()) ->
    {ok, list_import_file_task_response(), tuple()} |
    {error, any()} |
    {error, list_import_file_task_errors(), tuple()}.
list_import_file_task(Client)
  when is_map(Client) ->
    list_import_file_task(Client, #{}, #{}).

-spec list_import_file_task(aws_client:aws_client(), map(), map()) ->
    {ok, list_import_file_task_response(), tuple()} |
    {error, any()} |
    {error, list_import_file_task_errors(), tuple()}.
list_import_file_task(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_import_file_task(Client, QueryMap, HeadersMap, []).

-spec list_import_file_task(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_import_file_task_response(), tuple()} |
    {error, any()} |
    {error, list_import_file_task_errors(), tuple()}.
list_import_file_task(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-import-file-task"],
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

%% @doc Returns a list of all the servers.
-spec list_servers(aws_client:aws_client(), list_servers_request()) ->
    {ok, list_servers_response(), tuple()} |
    {error, any()} |
    {error, list_servers_errors(), tuple()}.
list_servers(Client, Input) ->
    list_servers(Client, Input, []).

-spec list_servers(aws_client:aws_client(), list_servers_request(), proplists:proplist()) ->
    {ok, list_servers_response(), tuple()} |
    {error, any()} |
    {error, list_servers_errors(), tuple()}.
list_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-servers"],
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

%% @doc Saves the specified migration and modernization preferences.
-spec put_portfolio_preferences(aws_client:aws_client(), put_portfolio_preferences_request()) ->
    {ok, put_portfolio_preferences_response(), tuple()} |
    {error, any()} |
    {error, put_portfolio_preferences_errors(), tuple()}.
put_portfolio_preferences(Client, Input) ->
    put_portfolio_preferences(Client, Input, []).

-spec put_portfolio_preferences(aws_client:aws_client(), put_portfolio_preferences_request(), proplists:proplist()) ->
    {ok, put_portfolio_preferences_response(), tuple()} |
    {error, any()} |
    {error, put_portfolio_preferences_errors(), tuple()}.
put_portfolio_preferences(Client, Input0, Options0) ->
    Method = post,
    Path = ["/put-portfolio-preferences"],
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

%% @doc Starts the assessment of an on-premises environment.
-spec start_assessment(aws_client:aws_client(), start_assessment_request()) ->
    {ok, start_assessment_response(), tuple()} |
    {error, any()} |
    {error, start_assessment_errors(), tuple()}.
start_assessment(Client, Input) ->
    start_assessment(Client, Input, []).

-spec start_assessment(aws_client:aws_client(), start_assessment_request(), proplists:proplist()) ->
    {ok, start_assessment_response(), tuple()} |
    {error, any()} |
    {error, start_assessment_errors(), tuple()}.
start_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-assessment"],
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

%% @doc Starts a file import.
-spec start_import_file_task(aws_client:aws_client(), start_import_file_task_request()) ->
    {ok, start_import_file_task_response(), tuple()} |
    {error, any()} |
    {error, start_import_file_task_errors(), tuple()}.
start_import_file_task(Client, Input) ->
    start_import_file_task(Client, Input, []).

-spec start_import_file_task(aws_client:aws_client(), start_import_file_task_request(), proplists:proplist()) ->
    {ok, start_import_file_task_response(), tuple()} |
    {error, any()} |
    {error, start_import_file_task_errors(), tuple()}.
start_import_file_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-import-file-task"],
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

%% @doc Starts generating a recommendation report.
-spec start_recommendation_report_generation(aws_client:aws_client(), start_recommendation_report_generation_request()) ->
    {ok, start_recommendation_report_generation_response(), tuple()} |
    {error, any()} |
    {error, start_recommendation_report_generation_errors(), tuple()}.
start_recommendation_report_generation(Client, Input) ->
    start_recommendation_report_generation(Client, Input, []).

-spec start_recommendation_report_generation(aws_client:aws_client(), start_recommendation_report_generation_request(), proplists:proplist()) ->
    {ok, start_recommendation_report_generation_response(), tuple()} |
    {error, any()} |
    {error, start_recommendation_report_generation_errors(), tuple()}.
start_recommendation_report_generation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-recommendation-report-generation"],
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

%% @doc Stops the assessment of an on-premises environment.
-spec stop_assessment(aws_client:aws_client(), stop_assessment_request()) ->
    {ok, stop_assessment_response(), tuple()} |
    {error, any()} |
    {error, stop_assessment_errors(), tuple()}.
stop_assessment(Client, Input) ->
    stop_assessment(Client, Input, []).

-spec stop_assessment(aws_client:aws_client(), stop_assessment_request(), proplists:proplist()) ->
    {ok, stop_assessment_response(), tuple()} |
    {error, any()} |
    {error, stop_assessment_errors(), tuple()}.
stop_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stop-assessment"],
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

%% @doc Updates the configuration of an application component.
-spec update_application_component_config(aws_client:aws_client(), update_application_component_config_request()) ->
    {ok, update_application_component_config_response(), tuple()} |
    {error, any()} |
    {error, update_application_component_config_errors(), tuple()}.
update_application_component_config(Client, Input) ->
    update_application_component_config(Client, Input, []).

-spec update_application_component_config(aws_client:aws_client(), update_application_component_config_request(), proplists:proplist()) ->
    {ok, update_application_component_config_response(), tuple()} |
    {error, any()} |
    {error, update_application_component_config_errors(), tuple()}.
update_application_component_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-applicationcomponent-config/"],
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

%% @doc Updates the configuration of the specified server.
-spec update_server_config(aws_client:aws_client(), update_server_config_request()) ->
    {ok, update_server_config_response(), tuple()} |
    {error, any()} |
    {error, update_server_config_errors(), tuple()}.
update_server_config(Client, Input) ->
    update_server_config(Client, Input, []).

-spec update_server_config(aws_client:aws_client(), update_server_config_request(), proplists:proplist()) ->
    {ok, update_server_config_response(), tuple()} |
    {error, any()} |
    {error, update_server_config_errors(), tuple()}.
update_server_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-server-config/"],
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
    Client1 = Client#{service => <<"migrationhub-strategy">>},
    Host = build_host(<<"migrationhub-strategy">>, Client1),
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
