%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Mainframe Modernization Application Testing provides tools and
%% resources for automated functional equivalence testing for your migration
%% projects.
-module(aws_apptest).

-export([create_test_case/2,
         create_test_case/3,
         create_test_configuration/2,
         create_test_configuration/3,
         create_test_suite/2,
         create_test_suite/3,
         delete_test_case/3,
         delete_test_case/4,
         delete_test_configuration/3,
         delete_test_configuration/4,
         delete_test_run/3,
         delete_test_run/4,
         delete_test_suite/3,
         delete_test_suite/4,
         get_test_case/2,
         get_test_case/4,
         get_test_case/5,
         get_test_configuration/2,
         get_test_configuration/4,
         get_test_configuration/5,
         get_test_run_step/3,
         get_test_run_step/5,
         get_test_run_step/6,
         get_test_suite/2,
         get_test_suite/4,
         get_test_suite/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_test_cases/1,
         list_test_cases/3,
         list_test_cases/4,
         list_test_configurations/1,
         list_test_configurations/3,
         list_test_configurations/4,
         list_test_run_steps/2,
         list_test_run_steps/4,
         list_test_run_steps/5,
         list_test_run_test_cases/2,
         list_test_run_test_cases/4,
         list_test_run_test_cases/5,
         list_test_runs/1,
         list_test_runs/3,
         list_test_runs/4,
         list_test_suites/1,
         list_test_suites/3,
         list_test_suites/4,
         start_test_run/2,
         start_test_run/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_test_case/3,
         update_test_case/4,
         update_test_configuration/3,
         update_test_configuration/4,
         update_test_suite/3,
         update_test_suite/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_test_configuration_response() :: #{
%%   <<"testConfigurationId">> => string(),
%%   <<"testConfigurationVersion">> => integer()
%% }
-type create_test_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_test_configuration_request() :: #{
%%   <<"testConfigurationVersion">> => integer()
%% }
-type get_test_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_test_suite_request() :: #{}
-type delete_test_suite_request() :: #{}.


%% Example:
%% update_test_configuration_response() :: #{
%%   <<"testConfigurationId">> => string(),
%%   <<"testConfigurationVersion">> => integer()
%% }
-type update_test_configuration_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_test_case_response() :: #{}
-type delete_test_case_response() :: #{}.

%% Example:
%% delete_test_run_response() :: #{}
-type delete_test_run_response() :: #{}.


%% Example:
%% m2_non_managed_application_step_input() :: #{
%%   <<"actionType">> => list(any()),
%%   <<"listenerPort">> => [integer()],
%%   <<"runtime">> => list(any()),
%%   <<"vpcEndpointServiceName">> => [string()],
%%   <<"webAppName">> => [string()]
%% }
-type m2_non_managed_application_step_input() :: #{binary() => any()}.


%% Example:
%% batch_step_output() :: #{
%%   <<"dataSetDetails">> => list(data_set()),
%%   <<"dataSetExportLocation">> => string(),
%%   <<"dmsOutputLocation">> => string()
%% }
-type batch_step_output() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% create_cloud_formation_summary() :: #{
%%   <<"stepInput">> => create_cloud_formation_step_input(),
%%   <<"stepOutput">> => create_cloud_formation_step_output()
%% }
-type create_cloud_formation_summary() :: #{binary() => any()}.


%% Example:
%% list_test_run_test_cases_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testRunTestCases">> => list(test_case_run_summary())
%% }
-type list_test_run_test_cases_response() :: #{binary() => any()}.

%% Example:
%% delete_cloud_formation_step_output() :: #{}
-type delete_cloud_formation_step_output() :: #{}.


%% Example:
%% data_set() :: #{
%%   <<"ccsid">> => string(),
%%   <<"format">> => list(any()),
%%   <<"length">> => [integer()],
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type data_set() :: #{binary() => any()}.


%% Example:
%% input_file() :: #{
%%   <<"fileMetadata">> => list(),
%%   <<"sourceLocation">> => string(),
%%   <<"targetLocation">> => string()
%% }
-type input_file() :: #{binary() => any()}.


%% Example:
%% delete_cloud_formation_step_input() :: #{
%%   <<"stackId">> => [string()]
%% }
-type delete_cloud_formation_step_input() :: #{binary() => any()}.

%% Example:
%% delete_test_suite_response() :: #{}
-type delete_test_suite_response() :: #{}.


%% Example:
%% m2_non_managed_application() :: #{
%%   <<"listenerPort">> => string(),
%%   <<"runtime">> => list(any()),
%%   <<"vpcEndpointServiceName">> => string(),
%%   <<"webAppName">> => string()
%% }
-type m2_non_managed_application() :: #{binary() => any()}.


%% Example:
%% compare_data_sets_summary() :: #{
%%   <<"stepInput">> => compare_data_sets_step_input(),
%%   <<"stepOutput">> => compare_data_sets_step_output()
%% }
-type compare_data_sets_summary() :: #{binary() => any()}.


%% Example:
%% cloud_formation() :: #{
%%   <<"parameters">> => map(),
%%   <<"templateLocation">> => string()
%% }
-type cloud_formation() :: #{binary() => any()}.


%% Example:
%% create_test_suite_request() :: #{
%%   <<"afterSteps">> => list(step()),
%%   <<"beforeSteps">> => list(step()),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"testCases">> := list()
%% }
-type create_test_suite_request() :: #{binary() => any()}.


%% Example:
%% list_test_suites_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"testSuiteIds">> => list(string())
%% }
-type list_test_suites_request() :: #{binary() => any()}.


%% Example:
%% script_summary() :: #{
%%   <<"scriptLocation">> => string(),
%%   <<"type">> => list(any())
%% }
-type script_summary() :: #{binary() => any()}.

%% Example:
%% delete_test_run_request() :: #{}
-type delete_test_run_request() :: #{}.


%% Example:
%% compare_database_c_d_c_step_output() :: #{
%%   <<"comparisonOutputLocation">> => [string()],
%%   <<"comparisonStatus">> => list(any())
%% }
-type compare_database_c_d_c_step_output() :: #{binary() => any()}.

%% Example:
%% m2_non_managed_application_step_output() :: #{}
-type m2_non_managed_application_step_output() :: #{}.


%% Example:
%% m2_managed_application() :: #{
%%   <<"applicationId">> => string(),
%%   <<"listenerPort">> => string(),
%%   <<"runtime">> => list(any()),
%%   <<"vpcEndpointServiceName">> => string()
%% }
-type m2_managed_application() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_test_run_steps_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"testCaseId">> => string(),
%%   <<"testSuiteId">> => string()
%% }
-type list_test_run_steps_request() :: #{binary() => any()}.


%% Example:
%% compare_database_c_d_c_step_input() :: #{
%%   <<"outputLocation">> => [string()],
%%   <<"sourceLocation">> => [string()],
%%   <<"sourceMetadata">> => source_database_metadata(),
%%   <<"targetLocation">> => [string()],
%%   <<"targetMetadata">> => target_database_metadata()
%% }
-type compare_database_c_d_c_step_input() :: #{binary() => any()}.

%% Example:
%% delete_test_configuration_response() :: #{}
-type delete_test_configuration_response() :: #{}.


%% Example:
%% test_case_summary() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"lastUpdateTime">> => [non_neg_integer()],
%%   <<"latestVersion">> => integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"testCaseArn">> => string(),
%%   <<"testCaseId">> => string()
%% }
-type test_case_summary() :: #{binary() => any()}.


%% Example:
%% compare_action_summary() :: #{
%%   <<"type">> => list()
%% }
-type compare_action_summary() :: #{binary() => any()}.


%% Example:
%% list_test_cases_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testCases">> => list(test_case_summary())
%% }
-type list_test_cases_response() :: #{binary() => any()}.


%% Example:
%% create_test_case_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"steps">> := list(step()),
%%   <<"tags">> => map()
%% }
-type create_test_case_request() :: #{binary() => any()}.


%% Example:
%% m2_non_managed_application_action() :: #{
%%   <<"actionType">> => list(any()),
%%   <<"resource">> => string()
%% }
-type m2_non_managed_application_action() :: #{binary() => any()}.


%% Example:
%% test_suite_latest_version() :: #{
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"version">> => integer()
%% }
-type test_suite_latest_version() :: #{binary() => any()}.


%% Example:
%% get_test_run_step_response() :: #{
%%   <<"afterStep">> => [boolean()],
%%   <<"beforeStep">> => [boolean()],
%%   <<"runEndTime">> => [non_neg_integer()],
%%   <<"runStartTime">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"stepName">> => string(),
%%   <<"stepRunSummary">> => list(),
%%   <<"testCaseId">> => string(),
%%   <<"testCaseVersion">> => integer(),
%%   <<"testRunId">> => string(),
%%   <<"testSuiteId">> => string(),
%%   <<"testSuiteVersion">> => integer()
%% }
-type get_test_run_step_response() :: #{binary() => any()}.


%% Example:
%% test_configuration_latest_version() :: #{
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"version">> => integer()
%% }
-type test_configuration_latest_version() :: #{binary() => any()}.


%% Example:
%% list_test_configurations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"testConfigurationIds">> => list(string())
%% }
-type list_test_configurations_request() :: #{binary() => any()}.


%% Example:
%% get_test_run_step_request() :: #{
%%   <<"testCaseId">> => string(),
%%   <<"testSuiteId">> => string()
%% }
-type get_test_run_step_request() :: #{binary() => any()}.


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
%% m2_managed_application_step_input() :: #{
%%   <<"actionType">> => list(any()),
%%   <<"applicationId">> => [string()],
%%   <<"listenerPort">> => [integer()],
%%   <<"properties">> => m2_managed_action_properties(),
%%   <<"runtime">> => [string()],
%%   <<"vpcEndpointServiceName">> => [string()]
%% }
-type m2_managed_application_step_input() :: #{binary() => any()}.


%% Example:
%% test_suite_summary() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"lastUpdateTime">> => [non_neg_integer()],
%%   <<"latestVersion">> => integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"testSuiteArn">> => string(),
%%   <<"testSuiteId">> => string()
%% }
-type test_suite_summary() :: #{binary() => any()}.


%% Example:
%% m2_managed_application_action() :: #{
%%   <<"actionType">> => list(any()),
%%   <<"properties">> => m2_managed_action_properties(),
%%   <<"resource">> => string()
%% }
-type m2_managed_application_action() :: #{binary() => any()}.


%% Example:
%% test_case_run_summary() :: #{
%%   <<"runEndTime">> => [non_neg_integer()],
%%   <<"runStartTime">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"testCaseId">> => string(),
%%   <<"testCaseVersion">> => integer(),
%%   <<"testRunId">> => string()
%% }
-type test_case_run_summary() :: #{binary() => any()}.


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
%% create_test_suite_response() :: #{
%%   <<"testSuiteId">> => string(),
%%   <<"testSuiteVersion">> => integer()
%% }
-type create_test_suite_response() :: #{binary() => any()}.


%% Example:
%% mainframe_action() :: #{
%%   <<"actionType">> => list(),
%%   <<"properties">> => mainframe_action_properties(),
%%   <<"resource">> => string()
%% }
-type mainframe_action() :: #{binary() => any()}.


%% Example:
%% source_database_metadata() :: #{
%%   <<"captureTool">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type source_database_metadata() :: #{binary() => any()}.


%% Example:
%% get_test_suite_request() :: #{
%%   <<"testSuiteVersion">> => integer()
%% }
-type get_test_suite_request() :: #{binary() => any()}.


%% Example:
%% list_test_suites_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testSuites">> => list(test_suite_summary())
%% }
-type list_test_suites_response() :: #{binary() => any()}.


%% Example:
%% delete_cloud_formation_summary() :: #{
%%   <<"stepInput">> => delete_cloud_formation_step_input(),
%%   <<"stepOutput">> => delete_cloud_formation_step_output()
%% }
-type delete_cloud_formation_summary() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% test_configuration_summary() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"lastUpdateTime">> => [non_neg_integer()],
%%   <<"latestVersion">> => integer(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"testConfigurationArn">> => string(),
%%   <<"testConfigurationId">> => string()
%% }
-type test_configuration_summary() :: #{binary() => any()}.


%% Example:
%% start_test_run_response() :: #{
%%   <<"testRunId">> => string(),
%%   <<"testRunStatus">> => list(any())
%% }
-type start_test_run_response() :: #{binary() => any()}.


%% Example:
%% target_database_metadata() :: #{
%%   <<"captureTool">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type target_database_metadata() :: #{binary() => any()}.

%% Example:
%% delete_test_case_request() :: #{}
-type delete_test_case_request() :: #{}.


%% Example:
%% t_n3270_summary() :: #{
%%   <<"stepInput">> => t_n3270_step_input(),
%%   <<"stepOutput">> => t_n3270_step_output()
%% }
-type t_n3270_summary() :: #{binary() => any()}.


%% Example:
%% update_test_suite_request() :: #{
%%   <<"afterSteps">> => list(step()),
%%   <<"beforeSteps">> => list(step()),
%%   <<"description">> => string(),
%%   <<"testCases">> => list()
%% }
-type update_test_suite_request() :: #{binary() => any()}.


%% Example:
%% create_cloud_formation_step_input() :: #{
%%   <<"parameters">> => map(),
%%   <<"templateLocation">> => string()
%% }
-type create_cloud_formation_step_input() :: #{binary() => any()}.


%% Example:
%% m2_managed_application_summary() :: #{
%%   <<"applicationId">> => string(),
%%   <<"listenerPort">> => [integer()],
%%   <<"runtime">> => list(any())
%% }
-type m2_managed_application_summary() :: #{binary() => any()}.


%% Example:
%% output_file() :: #{
%%   <<"fileLocation">> => string()
%% }
-type output_file() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% batch_summary() :: #{
%%   <<"stepInput">> => batch_step_input(),
%%   <<"stepOutput">> => batch_step_output()
%% }
-type batch_summary() :: #{binary() => any()}.


%% Example:
%% m2_managed_application_step_summary() :: #{
%%   <<"stepInput">> => m2_managed_application_step_input(),
%%   <<"stepOutput">> => m2_managed_application_step_output()
%% }
-type m2_managed_application_step_summary() :: #{binary() => any()}.


%% Example:
%% batch_step_input() :: #{
%%   <<"batchJobName">> => string(),
%%   <<"batchJobParameters">> => map(),
%%   <<"exportDataSetNames">> => list(string()),
%%   <<"properties">> => mainframe_action_properties(),
%%   <<"resource">> => list()
%% }
-type batch_step_input() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% update_test_case_request() :: #{
%%   <<"description">> => string(),
%%   <<"steps">> => list(step())
%% }
-type update_test_case_request() :: #{binary() => any()}.


%% Example:
%% list_test_cases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"testCaseIds">> => list(string())
%% }
-type list_test_cases_request() :: #{binary() => any()}.


%% Example:
%% database_c_d_c() :: #{
%%   <<"sourceMetadata">> => source_database_metadata(),
%%   <<"targetMetadata">> => target_database_metadata()
%% }
-type database_c_d_c() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% mainframe_action_properties() :: #{
%%   <<"dmsTaskArn">> => string()
%% }
-type mainframe_action_properties() :: #{binary() => any()}.


%% Example:
%% test_case_latest_version() :: #{
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"version">> => integer()
%% }
-type test_case_latest_version() :: #{binary() => any()}.


%% Example:
%% update_test_suite_response() :: #{
%%   <<"testSuiteId">> => string(),
%%   <<"testSuiteVersion">> => integer()
%% }
-type update_test_suite_response() :: #{binary() => any()}.


%% Example:
%% service_settings() :: #{
%%   <<"kmsKeyId">> => [string()]
%% }
-type service_settings() :: #{binary() => any()}.


%% Example:
%% list_test_run_steps_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testRunSteps">> => list(test_run_step_summary())
%% }
-type list_test_run_steps_response() :: #{binary() => any()}.


%% Example:
%% get_test_configuration_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"lastUpdateTime">> => [non_neg_integer()],
%%   <<"latestVersion">> => test_configuration_latest_version(),
%%   <<"name">> => string(),
%%   <<"properties">> => map(),
%%   <<"resources">> => list(resource()),
%%   <<"serviceSettings">> => service_settings(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"tags">> => map(),
%%   <<"testConfigurationArn">> => string(),
%%   <<"testConfigurationId">> => string(),
%%   <<"testConfigurationVersion">> => integer()
%% }
-type get_test_configuration_response() :: #{binary() => any()}.


%% Example:
%% batch() :: #{
%%   <<"batchJobName">> => string(),
%%   <<"batchJobParameters">> => map(),
%%   <<"exportDataSetNames">> => list(string())
%% }
-type batch() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% m2_non_managed_application_step_summary() :: #{
%%   <<"stepInput">> => m2_non_managed_application_step_input(),
%%   <<"stepOutput">> => m2_non_managed_application_step_output()
%% }
-type m2_non_managed_application_step_summary() :: #{binary() => any()}.


%% Example:
%% list_test_run_test_cases_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_test_run_test_cases_request() :: #{binary() => any()}.


%% Example:
%% compare_action() :: #{
%%   <<"input">> => list(),
%%   <<"output">> => list()
%% }
-type compare_action() :: #{binary() => any()}.


%% Example:
%% get_test_suite_response() :: #{
%%   <<"afterSteps">> => list(step()),
%%   <<"beforeSteps">> => list(step()),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"lastUpdateTime">> => [non_neg_integer()],
%%   <<"latestVersion">> => test_suite_latest_version(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"tags">> => map(),
%%   <<"testCases">> => list(),
%%   <<"testSuiteArn">> => string(),
%%   <<"testSuiteId">> => string(),
%%   <<"testSuiteVersion">> => integer()
%% }
-type get_test_suite_response() :: #{binary() => any()}.


%% Example:
%% script() :: #{
%%   <<"scriptLocation">> => string(),
%%   <<"type">> => list(any())
%% }
-type script() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% t_n3270() :: #{
%%   <<"exportDataSetNames">> => list(string()),
%%   <<"script">> => script()
%% }
-type t_n3270() :: #{binary() => any()}.


%% Example:
%% compare_database_c_d_c_summary() :: #{
%%   <<"stepInput">> => compare_database_c_d_c_step_input(),
%%   <<"stepOutput">> => compare_database_c_d_c_step_output()
%% }
-type compare_database_c_d_c_summary() :: #{binary() => any()}.


%% Example:
%% compare_data_sets_step_input() :: #{
%%   <<"sourceDataSets">> => list(data_set()),
%%   <<"sourceLocation">> => string(),
%%   <<"targetDataSets">> => list(data_set()),
%%   <<"targetLocation">> => string()
%% }
-type compare_data_sets_step_input() :: #{binary() => any()}.


%% Example:
%% m2_non_managed_application_summary() :: #{
%%   <<"listenerPort">> => [integer()],
%%   <<"runtime">> => list(any()),
%%   <<"vpcEndpointServiceName">> => [string()],
%%   <<"webAppName">> => [string()]
%% }
-type m2_non_managed_application_summary() :: #{binary() => any()}.


%% Example:
%% list_test_runs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testRuns">> => list(test_run_summary())
%% }
-type list_test_runs_response() :: #{binary() => any()}.


%% Example:
%% test_run_step_summary() :: #{
%%   <<"afterStep">> => [boolean()],
%%   <<"beforeStep">> => [boolean()],
%%   <<"runEndTime">> => [non_neg_integer()],
%%   <<"runStartTime">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"stepName">> => string(),
%%   <<"testCaseId">> => string(),
%%   <<"testCaseVersion">> => integer(),
%%   <<"testRunId">> => string(),
%%   <<"testSuiteId">> => string(),
%%   <<"testSuiteVersion">> => integer()
%% }
-type test_run_step_summary() :: #{binary() => any()}.


%% Example:
%% cloud_formation_action() :: #{
%%   <<"actionType">> => list(any()),
%%   <<"resource">> => string()
%% }
-type cloud_formation_action() :: #{binary() => any()}.


%% Example:
%% create_test_case_response() :: #{
%%   <<"testCaseId">> => string(),
%%   <<"testCaseVersion">> => integer()
%% }
-type create_test_case_response() :: #{binary() => any()}.


%% Example:
%% m2_managed_application_step_output() :: #{
%%   <<"importDataSetSummary">> => map()
%% }
-type m2_managed_application_step_output() :: #{binary() => any()}.


%% Example:
%% m2_managed_action_properties() :: #{
%%   <<"forceStop">> => [boolean()],
%%   <<"importDataSetLocation">> => string()
%% }
-type m2_managed_action_properties() :: #{binary() => any()}.


%% Example:
%% t_n3270_step_output() :: #{
%%   <<"dataSetDetails">> => list(data_set()),
%%   <<"dataSetExportLocation">> => string(),
%%   <<"dmsOutputLocation">> => string(),
%%   <<"scriptOutputLocation">> => string()
%% }
-type t_n3270_step_output() :: #{binary() => any()}.


%% Example:
%% create_cloud_formation_step_output() :: #{
%%   <<"exports">> => map(),
%%   <<"stackId">> => [string()]
%% }
-type create_cloud_formation_step_output() :: #{binary() => any()}.


%% Example:
%% step() :: #{
%%   <<"action">> => list(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type step() :: #{binary() => any()}.


%% Example:
%% t_n3270_step_input() :: #{
%%   <<"exportDataSetNames">> => list(string()),
%%   <<"properties">> => mainframe_action_properties(),
%%   <<"resource">> => list(),
%%   <<"script">> => script_summary()
%% }
-type t_n3270_step_input() :: #{binary() => any()}.


%% Example:
%% update_test_case_response() :: #{
%%   <<"testCaseId">> => string(),
%%   <<"testCaseVersion">> => integer()
%% }
-type update_test_case_response() :: #{binary() => any()}.


%% Example:
%% list_test_configurations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testConfigurations">> => list(test_configuration_summary())
%% }
-type list_test_configurations_response() :: #{binary() => any()}.


%% Example:
%% get_test_case_request() :: #{
%%   <<"testCaseVersion">> => integer()
%% }
-type get_test_case_request() :: #{binary() => any()}.


%% Example:
%% compare_data_sets_step_output() :: #{
%%   <<"comparisonOutputLocation">> => string(),
%%   <<"comparisonStatus">> => list(any())
%% }
-type compare_data_sets_step_output() :: #{binary() => any()}.


%% Example:
%% test_run_summary() :: #{
%%   <<"runEndTime">> => [non_neg_integer()],
%%   <<"runStartTime">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"testConfigurationId">> => string(),
%%   <<"testConfigurationVersion">> => integer(),
%%   <<"testRunArn">> => string(),
%%   <<"testRunId">> => string(),
%%   <<"testSuiteId">> => string(),
%%   <<"testSuiteVersion">> => integer()
%% }
-type test_run_summary() :: #{binary() => any()}.

%% Example:
%% delete_test_configuration_request() :: #{}
-type delete_test_configuration_request() :: #{}.


%% Example:
%% create_test_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"properties">> => map(),
%%   <<"resources">> := list(resource()),
%%   <<"serviceSettings">> => service_settings(),
%%   <<"tags">> => map()
%% }
-type create_test_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_test_case_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"lastUpdateTime">> => [non_neg_integer()],
%%   <<"latestVersion">> => test_case_latest_version(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"steps">> => list(step()),
%%   <<"tags">> => map(),
%%   <<"testCaseArn">> => string(),
%%   <<"testCaseId">> => string(),
%%   <<"testCaseVersion">> => integer()
%% }
-type get_test_case_response() :: #{binary() => any()}.


%% Example:
%% list_test_runs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"testRunIds">> => list(string()),
%%   <<"testSuiteId">> => string()
%% }
-type list_test_runs_request() :: #{binary() => any()}.


%% Example:
%% update_test_configuration_request() :: #{
%%   <<"description">> => string(),
%%   <<"properties">> => map(),
%%   <<"resources">> => list(resource()),
%%   <<"serviceSettings">> => service_settings()
%% }
-type update_test_configuration_request() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => list()
%% }
-type resource() :: #{binary() => any()}.


%% Example:
%% start_test_run_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map(),
%%   <<"testConfigurationId">> => string(),
%%   <<"testSuiteId">> := string()
%% }
-type start_test_run_request() :: #{binary() => any()}.

-type create_test_case_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_test_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_test_suite_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_test_case_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_test_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_test_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_test_suite_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type get_test_case_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_test_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_test_run_step_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_test_suite_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_test_cases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_test_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_test_run_steps_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_test_run_test_cases_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_test_runs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_test_suites_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_test_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
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

-type update_test_case_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_test_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_test_suite_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a test case.
-spec create_test_case(aws_client:aws_client(), create_test_case_request()) ->
    {ok, create_test_case_response(), tuple()} |
    {error, any()} |
    {error, create_test_case_errors(), tuple()}.
create_test_case(Client, Input) ->
    create_test_case(Client, Input, []).

-spec create_test_case(aws_client:aws_client(), create_test_case_request(), proplists:proplist()) ->
    {ok, create_test_case_response(), tuple()} |
    {error, any()} |
    {error, create_test_case_errors(), tuple()}.
create_test_case(Client, Input0, Options0) ->
    Method = post,
    Path = ["/testcase"],
    SuccessStatusCode = 201,
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

%% @doc Creates a test configuration.
-spec create_test_configuration(aws_client:aws_client(), create_test_configuration_request()) ->
    {ok, create_test_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_test_configuration_errors(), tuple()}.
create_test_configuration(Client, Input) ->
    create_test_configuration(Client, Input, []).

-spec create_test_configuration(aws_client:aws_client(), create_test_configuration_request(), proplists:proplist()) ->
    {ok, create_test_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_test_configuration_errors(), tuple()}.
create_test_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/testconfiguration"],
    SuccessStatusCode = 201,
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

%% @doc Creates a test suite.
-spec create_test_suite(aws_client:aws_client(), create_test_suite_request()) ->
    {ok, create_test_suite_response(), tuple()} |
    {error, any()} |
    {error, create_test_suite_errors(), tuple()}.
create_test_suite(Client, Input) ->
    create_test_suite(Client, Input, []).

-spec create_test_suite(aws_client:aws_client(), create_test_suite_request(), proplists:proplist()) ->
    {ok, create_test_suite_response(), tuple()} |
    {error, any()} |
    {error, create_test_suite_errors(), tuple()}.
create_test_suite(Client, Input0, Options0) ->
    Method = post,
    Path = ["/testsuite"],
    SuccessStatusCode = 201,
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

%% @doc Deletes a test case.
-spec delete_test_case(aws_client:aws_client(), binary() | list(), delete_test_case_request()) ->
    {ok, delete_test_case_response(), tuple()} |
    {error, any()} |
    {error, delete_test_case_errors(), tuple()}.
delete_test_case(Client, TestCaseId, Input) ->
    delete_test_case(Client, TestCaseId, Input, []).

-spec delete_test_case(aws_client:aws_client(), binary() | list(), delete_test_case_request(), proplists:proplist()) ->
    {ok, delete_test_case_response(), tuple()} |
    {error, any()} |
    {error, delete_test_case_errors(), tuple()}.
delete_test_case(Client, TestCaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/testcases/", aws_util:encode_uri(TestCaseId), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a test configuration.
-spec delete_test_configuration(aws_client:aws_client(), binary() | list(), delete_test_configuration_request()) ->
    {ok, delete_test_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_test_configuration_errors(), tuple()}.
delete_test_configuration(Client, TestConfigurationId, Input) ->
    delete_test_configuration(Client, TestConfigurationId, Input, []).

-spec delete_test_configuration(aws_client:aws_client(), binary() | list(), delete_test_configuration_request(), proplists:proplist()) ->
    {ok, delete_test_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_test_configuration_errors(), tuple()}.
delete_test_configuration(Client, TestConfigurationId, Input0, Options0) ->
    Method = delete,
    Path = ["/testconfigurations/", aws_util:encode_uri(TestConfigurationId), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a test run.
-spec delete_test_run(aws_client:aws_client(), binary() | list(), delete_test_run_request()) ->
    {ok, delete_test_run_response(), tuple()} |
    {error, any()} |
    {error, delete_test_run_errors(), tuple()}.
delete_test_run(Client, TestRunId, Input) ->
    delete_test_run(Client, TestRunId, Input, []).

-spec delete_test_run(aws_client:aws_client(), binary() | list(), delete_test_run_request(), proplists:proplist()) ->
    {ok, delete_test_run_response(), tuple()} |
    {error, any()} |
    {error, delete_test_run_errors(), tuple()}.
delete_test_run(Client, TestRunId, Input0, Options0) ->
    Method = delete,
    Path = ["/testruns/", aws_util:encode_uri(TestRunId), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a test suite.
-spec delete_test_suite(aws_client:aws_client(), binary() | list(), delete_test_suite_request()) ->
    {ok, delete_test_suite_response(), tuple()} |
    {error, any()} |
    {error, delete_test_suite_errors(), tuple()}.
delete_test_suite(Client, TestSuiteId, Input) ->
    delete_test_suite(Client, TestSuiteId, Input, []).

-spec delete_test_suite(aws_client:aws_client(), binary() | list(), delete_test_suite_request(), proplists:proplist()) ->
    {ok, delete_test_suite_response(), tuple()} |
    {error, any()} |
    {error, delete_test_suite_errors(), tuple()}.
delete_test_suite(Client, TestSuiteId, Input0, Options0) ->
    Method = delete,
    Path = ["/testsuites/", aws_util:encode_uri(TestSuiteId), ""],
    SuccessStatusCode = 204,
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

%% @doc Gets a test case.
-spec get_test_case(aws_client:aws_client(), binary() | list()) ->
    {ok, get_test_case_response(), tuple()} |
    {error, any()} |
    {error, get_test_case_errors(), tuple()}.
get_test_case(Client, TestCaseId)
  when is_map(Client) ->
    get_test_case(Client, TestCaseId, #{}, #{}).

-spec get_test_case(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_test_case_response(), tuple()} |
    {error, any()} |
    {error, get_test_case_errors(), tuple()}.
get_test_case(Client, TestCaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_test_case(Client, TestCaseId, QueryMap, HeadersMap, []).

-spec get_test_case(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_test_case_response(), tuple()} |
    {error, any()} |
    {error, get_test_case_errors(), tuple()}.
get_test_case(Client, TestCaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testcases/", aws_util:encode_uri(TestCaseId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"testCaseVersion">>, maps:get(<<"testCaseVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a test configuration.
-spec get_test_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_test_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_test_configuration_errors(), tuple()}.
get_test_configuration(Client, TestConfigurationId)
  when is_map(Client) ->
    get_test_configuration(Client, TestConfigurationId, #{}, #{}).

-spec get_test_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_test_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_test_configuration_errors(), tuple()}.
get_test_configuration(Client, TestConfigurationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_test_configuration(Client, TestConfigurationId, QueryMap, HeadersMap, []).

-spec get_test_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_test_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_test_configuration_errors(), tuple()}.
get_test_configuration(Client, TestConfigurationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testconfigurations/", aws_util:encode_uri(TestConfigurationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"testConfigurationVersion">>, maps:get(<<"testConfigurationVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a test run step.
-spec get_test_run_step(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_test_run_step_response(), tuple()} |
    {error, any()} |
    {error, get_test_run_step_errors(), tuple()}.
get_test_run_step(Client, StepName, TestRunId)
  when is_map(Client) ->
    get_test_run_step(Client, StepName, TestRunId, #{}, #{}).

-spec get_test_run_step(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_test_run_step_response(), tuple()} |
    {error, any()} |
    {error, get_test_run_step_errors(), tuple()}.
get_test_run_step(Client, StepName, TestRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_test_run_step(Client, StepName, TestRunId, QueryMap, HeadersMap, []).

-spec get_test_run_step(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_test_run_step_response(), tuple()} |
    {error, any()} |
    {error, get_test_run_step_errors(), tuple()}.
get_test_run_step(Client, StepName, TestRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testruns/", aws_util:encode_uri(TestRunId), "/steps/", aws_util:encode_uri(StepName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"testCaseId">>, maps:get(<<"testCaseId">>, QueryMap, undefined)},
        {<<"testSuiteId">>, maps:get(<<"testSuiteId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a test suite.
-spec get_test_suite(aws_client:aws_client(), binary() | list()) ->
    {ok, get_test_suite_response(), tuple()} |
    {error, any()} |
    {error, get_test_suite_errors(), tuple()}.
get_test_suite(Client, TestSuiteId)
  when is_map(Client) ->
    get_test_suite(Client, TestSuiteId, #{}, #{}).

-spec get_test_suite(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_test_suite_response(), tuple()} |
    {error, any()} |
    {error, get_test_suite_errors(), tuple()}.
get_test_suite(Client, TestSuiteId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_test_suite(Client, TestSuiteId, QueryMap, HeadersMap, []).

-spec get_test_suite(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_test_suite_response(), tuple()} |
    {error, any()} |
    {error, get_test_suite_errors(), tuple()}.
get_test_suite(Client, TestSuiteId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testsuites/", aws_util:encode_uri(TestSuiteId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"testSuiteVersion">>, maps:get(<<"testSuiteVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for a resource.
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

%% @doc Lists test cases.
-spec list_test_cases(aws_client:aws_client()) ->
    {ok, list_test_cases_response(), tuple()} |
    {error, any()} |
    {error, list_test_cases_errors(), tuple()}.
list_test_cases(Client)
  when is_map(Client) ->
    list_test_cases(Client, #{}, #{}).

-spec list_test_cases(aws_client:aws_client(), map(), map()) ->
    {ok, list_test_cases_response(), tuple()} |
    {error, any()} |
    {error, list_test_cases_errors(), tuple()}.
list_test_cases(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_cases(Client, QueryMap, HeadersMap, []).

-spec list_test_cases(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_test_cases_response(), tuple()} |
    {error, any()} |
    {error, list_test_cases_errors(), tuple()}.
list_test_cases(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testcases"],
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
        {<<"testCaseIds">>, maps:get(<<"testCaseIds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists test configurations.
-spec list_test_configurations(aws_client:aws_client()) ->
    {ok, list_test_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_test_configurations_errors(), tuple()}.
list_test_configurations(Client)
  when is_map(Client) ->
    list_test_configurations(Client, #{}, #{}).

-spec list_test_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_test_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_test_configurations_errors(), tuple()}.
list_test_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_configurations(Client, QueryMap, HeadersMap, []).

-spec list_test_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_test_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_test_configurations_errors(), tuple()}.
list_test_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testconfigurations"],
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
        {<<"testConfigurationIds">>, maps:get(<<"testConfigurationIds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists test run steps.
-spec list_test_run_steps(aws_client:aws_client(), binary() | list()) ->
    {ok, list_test_run_steps_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_steps_errors(), tuple()}.
list_test_run_steps(Client, TestRunId)
  when is_map(Client) ->
    list_test_run_steps(Client, TestRunId, #{}, #{}).

-spec list_test_run_steps(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_test_run_steps_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_steps_errors(), tuple()}.
list_test_run_steps(Client, TestRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_run_steps(Client, TestRunId, QueryMap, HeadersMap, []).

-spec list_test_run_steps(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_test_run_steps_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_steps_errors(), tuple()}.
list_test_run_steps(Client, TestRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testruns/", aws_util:encode_uri(TestRunId), "/steps"],
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
        {<<"testCaseId">>, maps:get(<<"testCaseId">>, QueryMap, undefined)},
        {<<"testSuiteId">>, maps:get(<<"testSuiteId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists test run test cases.
-spec list_test_run_test_cases(aws_client:aws_client(), binary() | list()) ->
    {ok, list_test_run_test_cases_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_test_cases_errors(), tuple()}.
list_test_run_test_cases(Client, TestRunId)
  when is_map(Client) ->
    list_test_run_test_cases(Client, TestRunId, #{}, #{}).

-spec list_test_run_test_cases(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_test_run_test_cases_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_test_cases_errors(), tuple()}.
list_test_run_test_cases(Client, TestRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_run_test_cases(Client, TestRunId, QueryMap, HeadersMap, []).

-spec list_test_run_test_cases(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_test_run_test_cases_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_test_cases_errors(), tuple()}.
list_test_run_test_cases(Client, TestRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testruns/", aws_util:encode_uri(TestRunId), "/testcases"],
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

%% @doc Lists test runs.
-spec list_test_runs(aws_client:aws_client()) ->
    {ok, list_test_runs_response(), tuple()} |
    {error, any()} |
    {error, list_test_runs_errors(), tuple()}.
list_test_runs(Client)
  when is_map(Client) ->
    list_test_runs(Client, #{}, #{}).

-spec list_test_runs(aws_client:aws_client(), map(), map()) ->
    {ok, list_test_runs_response(), tuple()} |
    {error, any()} |
    {error, list_test_runs_errors(), tuple()}.
list_test_runs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_runs(Client, QueryMap, HeadersMap, []).

-spec list_test_runs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_test_runs_response(), tuple()} |
    {error, any()} |
    {error, list_test_runs_errors(), tuple()}.
list_test_runs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testruns"],
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
        {<<"testrunIds">>, maps:get(<<"testrunIds">>, QueryMap, undefined)},
        {<<"testSuiteId">>, maps:get(<<"testSuiteId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists test suites.
-spec list_test_suites(aws_client:aws_client()) ->
    {ok, list_test_suites_response(), tuple()} |
    {error, any()} |
    {error, list_test_suites_errors(), tuple()}.
list_test_suites(Client)
  when is_map(Client) ->
    list_test_suites(Client, #{}, #{}).

-spec list_test_suites(aws_client:aws_client(), map(), map()) ->
    {ok, list_test_suites_response(), tuple()} |
    {error, any()} |
    {error, list_test_suites_errors(), tuple()}.
list_test_suites(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_suites(Client, QueryMap, HeadersMap, []).

-spec list_test_suites(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_test_suites_response(), tuple()} |
    {error, any()} |
    {error, list_test_suites_errors(), tuple()}.
list_test_suites(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/testsuites"],
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
        {<<"testSuiteIds">>, maps:get(<<"testSuiteIds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a test run.
-spec start_test_run(aws_client:aws_client(), start_test_run_request()) ->
    {ok, start_test_run_response(), tuple()} |
    {error, any()} |
    {error, start_test_run_errors(), tuple()}.
start_test_run(Client, Input) ->
    start_test_run(Client, Input, []).

-spec start_test_run(aws_client:aws_client(), start_test_run_request(), proplists:proplist()) ->
    {ok, start_test_run_response(), tuple()} |
    {error, any()} |
    {error, start_test_run_errors(), tuple()}.
start_test_run(Client, Input0, Options0) ->
    Method = post,
    Path = ["/testrun"],
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

%% @doc Specifies tags of a resource.
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

%% @doc Untags a resource.
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

%% @doc Updates a test case.
-spec update_test_case(aws_client:aws_client(), binary() | list(), update_test_case_request()) ->
    {ok, update_test_case_response(), tuple()} |
    {error, any()} |
    {error, update_test_case_errors(), tuple()}.
update_test_case(Client, TestCaseId, Input) ->
    update_test_case(Client, TestCaseId, Input, []).

-spec update_test_case(aws_client:aws_client(), binary() | list(), update_test_case_request(), proplists:proplist()) ->
    {ok, update_test_case_response(), tuple()} |
    {error, any()} |
    {error, update_test_case_errors(), tuple()}.
update_test_case(Client, TestCaseId, Input0, Options0) ->
    Method = patch,
    Path = ["/testcases/", aws_util:encode_uri(TestCaseId), ""],
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

%% @doc Updates a test configuration.
-spec update_test_configuration(aws_client:aws_client(), binary() | list(), update_test_configuration_request()) ->
    {ok, update_test_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_test_configuration_errors(), tuple()}.
update_test_configuration(Client, TestConfigurationId, Input) ->
    update_test_configuration(Client, TestConfigurationId, Input, []).

-spec update_test_configuration(aws_client:aws_client(), binary() | list(), update_test_configuration_request(), proplists:proplist()) ->
    {ok, update_test_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_test_configuration_errors(), tuple()}.
update_test_configuration(Client, TestConfigurationId, Input0, Options0) ->
    Method = patch,
    Path = ["/testconfigurations/", aws_util:encode_uri(TestConfigurationId), ""],
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

%% @doc Updates a test suite.
-spec update_test_suite(aws_client:aws_client(), binary() | list(), update_test_suite_request()) ->
    {ok, update_test_suite_response(), tuple()} |
    {error, any()} |
    {error, update_test_suite_errors(), tuple()}.
update_test_suite(Client, TestSuiteId, Input) ->
    update_test_suite(Client, TestSuiteId, Input, []).

-spec update_test_suite(aws_client:aws_client(), binary() | list(), update_test_suite_request(), proplists:proplist()) ->
    {ok, update_test_suite_response(), tuple()} |
    {error, any()} |
    {error, update_test_suite_errors(), tuple()}.
update_test_suite(Client, TestSuiteId, Input0, Options0) ->
    Method = patch,
    Path = ["/testsuites/", aws_util:encode_uri(TestSuiteId), ""],
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
    Client1 = Client#{service => <<"apptest">>},
    Host = build_host(<<"apptest">>, Client1),
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
