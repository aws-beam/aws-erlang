%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The next generation of AWS Resilience Hub is the single location in
%% AWS where you assess and improve the resilience of your critical
%% applications.
%%
%% It helps Site Reliability Engineers (SREs) and development teams
%% proactively reason about resilience at scale — identifying failure modes,
%% discovering hidden dependencies, and report on progress across the
%% enterprise.
-module(aws_resiliencehubv2).

-export([create_assertion/2,
         create_assertion/3,
         create_input_source/2,
         create_input_source/3,
         create_policy/2,
         create_policy/3,
         create_report/2,
         create_report/3,
         create_service/2,
         create_service/3,
         create_service_function/2,
         create_service_function/3,
         create_service_function_resources/2,
         create_service_function_resources/3,
         create_system/2,
         create_system/3,
         create_test/2,
         create_test/3,
         create_user_journey/2,
         create_user_journey/3,
         delete_assertion/2,
         delete_assertion/3,
         delete_input_source/2,
         delete_input_source/3,
         delete_policy/2,
         delete_policy/3,
         delete_service/2,
         delete_service/3,
         delete_service_function/2,
         delete_service_function/3,
         delete_service_function_resources/2,
         delete_service_function_resources/3,
         delete_system/2,
         delete_system/3,
         delete_test/2,
         delete_test/3,
         delete_test_sources/2,
         delete_test_sources/3,
         delete_user_journey/2,
         delete_user_journey/3,
         get_failure_mode_finding/3,
         get_failure_mode_finding/5,
         get_failure_mode_finding/6,
         get_policy/2,
         get_policy/4,
         get_policy/5,
         get_service/2,
         get_service/4,
         get_service/5,
         get_system/2,
         get_system/4,
         get_system/5,
         get_test/3,
         get_test/5,
         get_test/6,
         get_test_run/3,
         get_test_run/5,
         get_test_run/6,
         get_test_template/2,
         get_test_template/4,
         get_test_template/5,
         get_user_journey/3,
         get_user_journey/5,
         get_user_journey/6,
         import_app/2,
         import_app/3,
         import_policy/2,
         import_policy/3,
         list_assertions/2,
         list_assertions/4,
         list_assertions/5,
         list_dependencies/1,
         list_dependencies/3,
         list_dependencies/4,
         list_failure_mode_assessments/2,
         list_failure_mode_assessments/4,
         list_failure_mode_assessments/5,
         list_failure_mode_findings/2,
         list_failure_mode_findings/4,
         list_failure_mode_findings/5,
         list_input_sources/2,
         list_input_sources/4,
         list_input_sources/5,
         list_policies/1,
         list_policies/3,
         list_policies/4,
         list_reports/1,
         list_reports/3,
         list_reports/4,
         list_resolved_test_run_target_resources/3,
         list_resolved_test_run_target_resources/5,
         list_resolved_test_run_target_resources/6,
         list_resources/2,
         list_resources/4,
         list_resources/5,
         list_service_events/2,
         list_service_events/4,
         list_service_events/5,
         list_service_functions/2,
         list_service_functions/4,
         list_service_functions/5,
         list_service_topology_edges/2,
         list_service_topology_edges/4,
         list_service_topology_edges/5,
         list_services/1,
         list_services/3,
         list_services/4,
         list_system_events/2,
         list_system_events/4,
         list_system_events/5,
         list_systems/1,
         list_systems/3,
         list_systems/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_test_run_events/3,
         list_test_run_events/5,
         list_test_run_events/6,
         list_test_run_sources/3,
         list_test_run_sources/5,
         list_test_run_sources/6,
         list_test_runs/2,
         list_test_runs/4,
         list_test_runs/5,
         list_test_sources/3,
         list_test_sources/5,
         list_test_sources/6,
         list_test_templates/1,
         list_test_templates/3,
         list_test_templates/4,
         list_tests/2,
         list_tests/4,
         list_tests/5,
         list_user_journeys/2,
         list_user_journeys/4,
         list_user_journeys/5,
         put_test_sources/2,
         put_test_sources/3,
         start_failure_mode_assessment/2,
         start_failure_mode_assessment/3,
         start_test_run/2,
         start_test_run/3,
         stop_test_run/2,
         stop_test_run/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_assertion/2,
         update_assertion/3,
         update_dependency/2,
         update_dependency/3,
         update_failure_mode_finding/2,
         update_failure_mode_finding/3,
         update_policy/2,
         update_policy/3,
         update_service/2,
         update_service/3,
         update_service_function/2,
         update_service_function/3,
         update_system/2,
         update_system/3,
         update_test/2,
         update_test/3,
         update_user_journey/2,
         update_user_journey/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% achievability() :: #{
%%   <<"availabilitySlo">> => list(any()),
%%   <<"dataRecoveryTimeBetweenBackups">> => list(any()),
%%   <<"multiAzRtoRpo">> => list(any()),
%%   <<"multiRegionRtoRpo">> => list(any())
%% }
-type achievability() :: #{binary() => any()}.


%% Example:
%% assertion() :: #{
%%   <<"assertionId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"serviceArn">> => string(),
%%   <<"source">> => list(any()),
%%   <<"text">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type assertion() :: #{binary() => any()}.


%% Example:
%% assertion_created_metadata() :: #{
%%   <<"assertionId">> => [string()],
%%   <<"assertionName">> => [string()]
%% }
-type assertion_created_metadata() :: #{binary() => any()}.


%% Example:
%% assertion_deleted_metadata() :: #{
%%   <<"assertionId">> => [string()],
%%   <<"assertionName">> => [string()]
%% }
-type assertion_deleted_metadata() :: #{binary() => any()}.


%% Example:
%% assertion_updated_metadata() :: #{
%%   <<"assertionId">> => [string()],
%%   <<"assertionName">> => [string()]
%% }
-type assertion_updated_metadata() :: #{binary() => any()}.


%% Example:
%% assessment_cost() :: #{
%%   <<"amount">> => [float()],
%%   <<"currency">> => list(any())
%% }
-type assessment_cost() :: #{binary() => any()}.


%% Example:
%% assessment_summary() :: #{
%%   <<"achievability">> => achievability(),
%%   <<"assessmentCost">> => assessment_cost(),
%%   <<"assessmentId">> => string(),
%%   <<"assessmentStatus">> => list(any()),
%%   <<"assessmentStep">> => list(any()),
%%   <<"billableAssessmentUnitCount">> => [integer()],
%%   <<"endedAt">> => [non_neg_integer()],
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"serviceArn">> => string(),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"totalFindings">> => [integer()]
%% }
-type assessment_summary() :: #{binary() => any()}.


%% Example:
%% associated_system() :: #{
%%   <<"systemArn">> => string(),
%%   <<"systemName">> => string(),
%%   <<"userJourneyIds">> => list(string())
%% }
-type associated_system() :: #{binary() => any()}.


%% Example:
%% availability_slo() :: #{
%%   <<"target">> => [float()]
%% }
-type availability_slo() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_assertion_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"text">> := string()
%% }
-type create_assertion_request() :: #{binary() => any()}.


%% Example:
%% create_assertion_response() :: #{
%%   <<"assertion">> => assertion()
%% }
-type create_assertion_response() :: #{binary() => any()}.


%% Example:
%% create_input_source_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"resourceConfiguration">> := list(),
%%   <<"serviceArn">> := string()
%% }
-type create_input_source_request() :: #{binary() => any()}.


%% Example:
%% create_input_source_response() :: #{
%%   <<"inputSourceId">> => string(),
%%   <<"serviceArn">> => string()
%% }
-type create_input_source_response() :: #{binary() => any()}.


%% Example:
%% create_policy_request() :: #{
%%   <<"availabilitySlo">> => availability_slo(),
%%   <<"clientToken">> => string(),
%%   <<"dataRecovery">> => data_recovery_targets(),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"multiAz">> => multi_az_targets(),
%%   <<"multiRegion">> => multi_region_targets(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_policy_request() :: #{binary() => any()}.


%% Example:
%% create_policy_response() :: #{
%%   <<"policy">> => policy()
%% }
-type create_policy_response() :: #{binary() => any()}.


%% Example:
%% create_report_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"reportType">> := list(any()),
%%   <<"serviceArn">> := string()
%% }
-type create_report_request() :: #{binary() => any()}.


%% Example:
%% create_report_response() :: #{
%%   <<"reportGenerationResult">> => report_generation_result()
%% }
-type create_report_response() :: #{binary() => any()}.


%% Example:
%% create_service_function_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"criticality">> := list(any()),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"serviceArn">> := string()
%% }
-type create_service_function_request() :: #{binary() => any()}.


%% Example:
%% create_service_function_resources_request() :: #{
%%   <<"resources">> := list([string()]()),
%%   <<"serviceArn">> := string(),
%%   <<"serviceFunctionId">> := string()
%% }
-type create_service_function_resources_request() :: #{binary() => any()}.


%% Example:
%% create_service_function_resources_response() :: #{
%%   <<"resources">> => list([string()]()),
%%   <<"serviceArn">> => string(),
%%   <<"serviceFunctionId">> => string()
%% }
-type create_service_function_resources_response() :: #{binary() => any()}.


%% Example:
%% create_service_function_response() :: #{
%%   <<"serviceFunction">> => service_function()
%% }
-type create_service_function_response() :: #{binary() => any()}.


%% Example:
%% create_service_request() :: #{
%%   <<"associatedSystems">> => list(associated_system()),
%%   <<"clientToken">> => string(),
%%   <<"dependencyDiscovery">> => list(any()),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> := string(),
%%   <<"permissionModel">> := permission_model(),
%%   <<"policyArn">> => string(),
%%   <<"regions">> := list(string()),
%%   <<"reportConfiguration">> => service_report_configuration(),
%%   <<"tags">> => map()
%% }
-type create_service_request() :: #{binary() => any()}.


%% Example:
%% create_service_response() :: #{
%%   <<"service">> => service()
%% }
-type create_service_response() :: #{binary() => any()}.


%% Example:
%% create_system_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> := string(),
%%   <<"sharingEnabled">> => [boolean()],
%%   <<"tags">> => map()
%% }
-type create_system_request() :: #{binary() => any()}.


%% Example:
%% create_system_response() :: #{
%%   <<"system">> => system()
%% }
-type create_system_response() :: #{binary() => any()}.


%% Example:
%% create_test_request() :: #{
%%   <<"loggingConfiguration">> => logging_configuration(),
%%   <<"parameters">> => map(),
%%   <<"roleName">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"stopConditions">> => list(stop_condition()),
%%   <<"testTemplateArn">> := string()
%% }
-type create_test_request() :: #{binary() => any()}.


%% Example:
%% create_test_response() :: #{
%%   <<"test">> => test()
%% }
-type create_test_response() :: #{binary() => any()}.


%% Example:
%% create_user_journey_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"policyArn">> => string(),
%%   <<"systemArn">> := string()
%% }
-type create_user_journey_request() :: #{binary() => any()}.


%% Example:
%% create_user_journey_response() :: #{
%%   <<"userJourney">> => user_journey()
%% }
-type create_user_journey_response() :: #{binary() => any()}.


%% Example:
%% cross_account_role() :: #{
%%   <<"crossAccountRoleArn">> => string(),
%%   <<"externalId">> => [string()]
%% }
-type cross_account_role() :: #{binary() => any()}.


%% Example:
%% data_recovery_targets() :: #{
%%   <<"timeBetweenBackupsInMinutes">> => [integer()]
%% }
-type data_recovery_targets() :: #{binary() => any()}.


%% Example:
%% delete_assertion_request() :: #{
%%   <<"assertionId">> := string(),
%%   <<"serviceArn">> := string()
%% }
-type delete_assertion_request() :: #{binary() => any()}.


%% Example:
%% delete_assertion_response() :: #{
%%   <<"assertionId">> => string()
%% }
-type delete_assertion_response() :: #{binary() => any()}.


%% Example:
%% delete_input_source_request() :: #{
%%   <<"inputSourceId">> := string(),
%%   <<"serviceArn">> := string()
%% }
-type delete_input_source_request() :: #{binary() => any()}.


%% Example:
%% delete_input_source_response() :: #{
%%   <<"inputSourceId">> => string(),
%%   <<"serviceArn">> => string()
%% }
-type delete_input_source_response() :: #{binary() => any()}.


%% Example:
%% delete_policy_request() :: #{
%%   <<"policyArn">> := string()
%% }
-type delete_policy_request() :: #{binary() => any()}.


%% Example:
%% delete_policy_response() :: #{
%%   <<"policyArn">> => string()
%% }
-type delete_policy_response() :: #{binary() => any()}.


%% Example:
%% delete_service_function_request() :: #{
%%   <<"serviceArn">> := string(),
%%   <<"serviceFunctionId">> := string()
%% }
-type delete_service_function_request() :: #{binary() => any()}.


%% Example:
%% delete_service_function_resources_request() :: #{
%%   <<"resources">> := list([string()]()),
%%   <<"serviceArn">> := string(),
%%   <<"serviceFunctionId">> := string()
%% }
-type delete_service_function_resources_request() :: #{binary() => any()}.


%% Example:
%% delete_service_function_resources_response() :: #{
%%   <<"resources">> => list([string()]()),
%%   <<"serviceArn">> => string(),
%%   <<"serviceFunctionId">> => string()
%% }
-type delete_service_function_resources_response() :: #{binary() => any()}.


%% Example:
%% delete_service_function_response() :: #{
%%   <<"serviceFunctionId">> => string()
%% }
-type delete_service_function_response() :: #{binary() => any()}.


%% Example:
%% delete_service_request() :: #{
%%   <<"serviceArn">> := string()
%% }
-type delete_service_request() :: #{binary() => any()}.


%% Example:
%% delete_service_response() :: #{
%%   <<"serviceArn">> => string()
%% }
-type delete_service_response() :: #{binary() => any()}.


%% Example:
%% delete_system_request() :: #{
%%   <<"systemArn">> := string()
%% }
-type delete_system_request() :: #{binary() => any()}.


%% Example:
%% delete_system_response() :: #{
%%   <<"systemArn">> => string()
%% }
-type delete_system_response() :: #{binary() => any()}.


%% Example:
%% delete_test_request() :: #{
%%   <<"serviceArn">> := string(),
%%   <<"testId">> := string()
%% }
-type delete_test_request() :: #{binary() => any()}.


%% Example:
%% delete_test_response() :: #{
%%   <<"testId">> => string()
%% }
-type delete_test_response() :: #{binary() => any()}.


%% Example:
%% delete_test_sources_request() :: #{
%%   <<"serviceArn">> := string(),
%%   <<"testId">> := string(),
%%   <<"testSources">> := list(list())
%% }
-type delete_test_sources_request() :: #{binary() => any()}.

%% Example:
%% delete_test_sources_response() :: #{}
-type delete_test_sources_response() :: #{}.


%% Example:
%% delete_user_journey_request() :: #{
%%   <<"systemArn">> := string(),
%%   <<"userJourneyId">> := string()
%% }
-type delete_user_journey_request() :: #{binary() => any()}.


%% Example:
%% delete_user_journey_response() :: #{
%%   <<"userJourneyId">> => string()
%% }
-type delete_user_journey_response() :: #{binary() => any()}.


%% Example:
%% dependency_discovery_config() :: #{
%%   <<"eligibleResourceCount">> => [integer()],
%%   <<"message">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type dependency_discovery_config() :: #{binary() => any()}.


%% Example:
%% dependency_summary() :: #{
%%   <<"comment">> => [string()],
%%   <<"criticality">> => list(any()),
%%   <<"dependencyId">> => string(),
%%   <<"dependencyName">> => [string()],
%%   <<"dnsName">> => [string()],
%%   <<"lastDetectedTime">> => [non_neg_integer()],
%%   <<"location">> => [string()],
%%   <<"provider">> => [string()],
%%   <<"queryRange">> => query_range(),
%%   <<"serviceArn">> => string(),
%%   <<"sourceRegions">> => list(string())
%% }
-type dependency_summary() :: #{binary() => any()}.


%% Example:
%% disaster_recovery_source() :: #{
%%   <<"policyName">> => string(),
%%   <<"source">> => list(any()),
%%   <<"value">> => [string()]
%% }
-type disaster_recovery_source() :: #{binary() => any()}.


%% Example:
%% edge_property_summary() :: #{
%%   <<"label">> => [string()],
%%   <<"topologyType">> => list(any())
%% }
-type edge_property_summary() :: #{binary() => any()}.


%% Example:
%% effective_policy_values() :: #{
%%   <<"availabilitySlo">> => slo_source(),
%%   <<"dataRecoveryTimeBetweenBackups">> => target_source(),
%%   <<"multiAzDrApproach">> => disaster_recovery_source(),
%%   <<"multiAzRpo">> => target_source(),
%%   <<"multiAzRto">> => target_source(),
%%   <<"multiRegionDrApproach">> => disaster_recovery_source(),
%%   <<"multiRegionRpo">> => target_source(),
%%   <<"multiRegionRto">> => target_source()
%% }
-type effective_policy_values() :: #{binary() => any()}.


%% Example:
%% eks_source() :: #{
%%   <<"clusterArn">> => string(),
%%   <<"namespaces">> => list(string())
%% }
-type eks_source() :: #{binary() => any()}.


%% Example:
%% event_actor() :: #{
%%   <<"accountId">> => [string()],
%%   <<"principalId">> => [string()],
%%   <<"type">> => list(any()),
%%   <<"userName">> => [string()]
%% }
-type event_actor() :: #{binary() => any()}.


%% Example:
%% experiment_details() :: #{
%%   <<"details">> => [string()],
%%   <<"experimentArn">> => string()
%% }
-type experiment_details() :: #{binary() => any()}.


%% Example:
%% failed_report_output() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()]
%% }
-type failed_report_output() :: #{binary() => any()}.


%% Example:
%% finding() :: #{
%%   <<"comment">> => [string()],
%%   <<"description">> => string(),
%%   <<"failureCategory">> => list(any()),
%%   <<"findingId">> => string(),
%%   <<"infrastructureAndCodeRecommendations">> => list(infrastructure_and_code_recommendation()),
%%   <<"name">> => [string()],
%%   <<"observabilityRecommendations">> => list(observability_recommendation()),
%%   <<"policyComponent">> => list(any()),
%%   <<"reasoning">> => [string()],
%%   <<"serviceFunctions">> => list(string()),
%%   <<"severity">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"testingRecommendations">> => list(testing_recommendation()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type finding() :: #{binary() => any()}.


%% Example:
%% finding_summary() :: #{
%%   <<"description">> => string(),
%%   <<"failureCategory">> => list(any()),
%%   <<"findingId">> => string(),
%%   <<"name">> => [string()],
%%   <<"policyComponent">> => list(any()),
%%   <<"serviceArn">> => string(),
%%   <<"severity">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type finding_summary() :: #{binary() => any()}.


%% Example:
%% get_failure_mode_finding_request() :: #{
%%   <<"findingId">> := string(),
%%   <<"serviceArn">> := string()
%% }
-type get_failure_mode_finding_request() :: #{binary() => any()}.


%% Example:
%% get_failure_mode_finding_response() :: #{
%%   <<"finding">> => finding()
%% }
-type get_failure_mode_finding_response() :: #{binary() => any()}.


%% Example:
%% get_policy_request() :: #{
%%   <<"policyArn">> := string()
%% }
-type get_policy_request() :: #{binary() => any()}.


%% Example:
%% get_policy_response() :: #{
%%   <<"policy">> => policy()
%% }
-type get_policy_response() :: #{binary() => any()}.


%% Example:
%% get_service_request() :: #{
%%   <<"serviceArn">> := string()
%% }
-type get_service_request() :: #{binary() => any()}.


%% Example:
%% get_service_response() :: #{
%%   <<"service">> => service()
%% }
-type get_service_response() :: #{binary() => any()}.


%% Example:
%% get_system_request() :: #{
%%   <<"systemArn">> := string()
%% }
-type get_system_request() :: #{binary() => any()}.


%% Example:
%% get_system_response() :: #{
%%   <<"system">> => system()
%% }
-type get_system_response() :: #{binary() => any()}.


%% Example:
%% get_test_request() :: #{
%%   <<"serviceArn">> := string(),
%%   <<"testId">> := string()
%% }
-type get_test_request() :: #{binary() => any()}.


%% Example:
%% get_test_response() :: #{
%%   <<"test">> => test()
%% }
-type get_test_response() :: #{binary() => any()}.


%% Example:
%% get_test_run_request() :: #{
%%   <<"serviceArn">> := string(),
%%   <<"testRunId">> := string()
%% }
-type get_test_run_request() :: #{binary() => any()}.


%% Example:
%% get_test_run_response() :: #{
%%   <<"testRun">> => test_run()
%% }
-type get_test_run_response() :: #{binary() => any()}.


%% Example:
%% get_test_template_request() :: #{
%%   <<"testTemplateArn">> := string()
%% }
-type get_test_template_request() :: #{binary() => any()}.


%% Example:
%% get_test_template_response() :: #{
%%   <<"testTemplate">> => test_template()
%% }
-type get_test_template_response() :: #{binary() => any()}.


%% Example:
%% get_user_journey_request() :: #{
%%   <<"systemArn">> := string(),
%%   <<"userJourneyId">> := string()
%% }
-type get_user_journey_request() :: #{binary() => any()}.


%% Example:
%% get_user_journey_response() :: #{
%%   <<"userJourney">> => user_journey()
%% }
-type get_user_journey_response() :: #{binary() => any()}.


%% Example:
%% import_app_request() :: #{
%%   <<"associatedSystems">> => list(associated_system()),
%%   <<"clientToken">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"policyArn">> => string(),
%%   <<"skipManuallyAddedResources">> => [boolean()],
%%   <<"tags">> => map(),
%%   <<"v1AppArn">> := string()
%% }
-type import_app_request() :: #{binary() => any()}.


%% Example:
%% import_app_response() :: #{
%%   <<"service">> => service()
%% }
-type import_app_response() :: #{binary() => any()}.


%% Example:
%% import_policy_request() :: #{
%%   <<"availabilitySlo">> => availability_slo(),
%%   <<"clientToken">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"multiAzDisasterRecoveryApproach">> => list(any()),
%%   <<"multiRegionDisasterRecoveryApproach">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"v1PolicyArn">> := string()
%% }
-type import_policy_request() :: #{binary() => any()}.


%% Example:
%% import_policy_response() :: #{
%%   <<"policy">> => policy()
%% }
-type import_policy_response() :: #{binary() => any()}.


%% Example:
%% infrastructure_and_code_recommendation() :: #{
%%   <<"suggestedChanges">> => list(string())
%% }
-type infrastructure_and_code_recommendation() :: #{binary() => any()}.


%% Example:
%% input_source() :: #{
%%   <<"identifier">> => [string()],
%%   <<"type">> => list(any())
%% }
-type input_source() :: #{binary() => any()}.


%% Example:
%% input_source_summary() :: #{
%%   <<"cfnStackArn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"designFileS3Url">> => string(),
%%   <<"eks">> => eks_source(),
%%   <<"inputSourceId">> => string(),
%%   <<"resourceTags">> => list(resource_tag()),
%%   <<"tfStateFileUrl">> => string(),
%%   <<"type">> => list(any())
%% }
-type input_source_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_assertions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"source">> => list(any())
%% }
-type list_assertions_request() :: #{binary() => any()}.


%% Example:
%% list_assertions_response() :: #{
%%   <<"assertions">> => list(assertion()),
%%   <<"nextToken">> => string()
%% }
-type list_assertions_response() :: #{binary() => any()}.


%% Example:
%% list_dependencies_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"queryRangeEndTime">> => [non_neg_integer()],
%%   <<"queryRangeGranularity">> => list(any()),
%%   <<"queryRangeStartTime">> => [non_neg_integer()],
%%   <<"serviceArn">> => string()
%% }
-type list_dependencies_request() :: #{binary() => any()}.


%% Example:
%% list_dependencies_response() :: #{
%%   <<"dependencySummaries">> => list(dependency_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_dependencies_response() :: #{binary() => any()}.


%% Example:
%% list_failure_mode_assessments_request() :: #{
%%   <<"assessmentStatuses">> => list(list(any())()),
%%   <<"endedBefore">> => [non_neg_integer()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"startedAfter">> => [non_neg_integer()]
%% }
-type list_failure_mode_assessments_request() :: #{binary() => any()}.


%% Example:
%% list_failure_mode_assessments_response() :: #{
%%   <<"assessmentSummaries">> => list(assessment_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_failure_mode_assessments_response() :: #{binary() => any()}.


%% Example:
%% list_failure_mode_findings_request() :: #{
%%   <<"failureCategory">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"severity">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type list_failure_mode_findings_request() :: #{binary() => any()}.


%% Example:
%% list_failure_mode_findings_response() :: #{
%%   <<"findingsSummary">> => list(finding_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_failure_mode_findings_response() :: #{binary() => any()}.


%% Example:
%% list_input_sources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"type">> => list(any())
%% }
-type list_input_sources_request() :: #{binary() => any()}.


%% Example:
%% list_input_sources_response() :: #{
%%   <<"inputSourceSummaries">> => list(input_source_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_input_sources_response() :: #{binary() => any()}.


%% Example:
%% list_policies_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_policies_request() :: #{binary() => any()}.


%% Example:
%% list_policies_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"policySummaries">> => list(policy_summary())
%% }
-type list_policies_response() :: #{binary() => any()}.


%% Example:
%% list_reports_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"reportType">> => list(any()),
%%   <<"serviceArn">> => string(),
%%   <<"testRunId">> => string()
%% }
-type list_reports_request() :: #{binary() => any()}.


%% Example:
%% list_reports_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reportGenerationResults">> => list(report_generation_result())
%% }
-type list_reports_response() :: #{binary() => any()}.


%% Example:
%% list_resolved_test_run_target_resources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string()
%% }
-type list_resolved_test_run_target_resources_request() :: #{binary() => any()}.


%% Example:
%% list_resolved_test_run_target_resources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resolvedTargetResources">> => list(resolved_target_resource())
%% }
-type list_resolved_test_run_target_resources_response() :: #{binary() => any()}.


%% Example:
%% list_resources_request() :: #{
%%   <<"awsRegion">> => string(),
%%   <<"billable">> => [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceTypes">> => list(string()),
%%   <<"serviceArn">> := string(),
%%   <<"serviceFunctionId">> => string()
%% }
-type list_resources_request() :: #{binary() => any()}.


%% Example:
%% list_resources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceFunctionId">> => string(),
%%   <<"serviceResources">> => list(service_resource())
%% }
-type list_resources_response() :: #{binary() => any()}.


%% Example:
%% list_service_events_request() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"eventTypes">> => list(list(any())()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type list_service_events_request() :: #{binary() => any()}.


%% Example:
%% list_service_events_response() :: #{
%%   <<"events">> => list(service_event()),
%%   <<"nextToken">> => string()
%% }
-type list_service_events_response() :: #{binary() => any()}.


%% Example:
%% list_service_functions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string()
%% }
-type list_service_functions_request() :: #{binary() => any()}.


%% Example:
%% list_service_functions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceFunctions">> => list(service_function())
%% }
-type list_service_functions_response() :: #{binary() => any()}.


%% Example:
%% list_service_topology_edges_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string()
%% }
-type list_service_topology_edges_request() :: #{binary() => any()}.


%% Example:
%% list_service_topology_edges_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceTopologyEdgeSummaries">> => list(service_topology_edge_summary())
%% }
-type list_service_topology_edges_response() :: #{binary() => any()}.


%% Example:
%% list_services_request() :: #{
%%   <<"accountId">> => string(),
%%   <<"assessmentStatus">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"ouId">> => string(),
%%   <<"policyArn">> => string(),
%%   <<"systemArn">> => string(),
%%   <<"userJourneyId">> => string()
%% }
-type list_services_request() :: #{binary() => any()}.


%% Example:
%% list_services_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"serviceSummaries">> => list(service_summary())
%% }
-type list_services_response() :: #{binary() => any()}.


%% Example:
%% list_system_events_request() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"eventTypes">> => list(list(any())()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"systemArn">> := string()
%% }
-type list_system_events_request() :: #{binary() => any()}.


%% Example:
%% list_system_events_response() :: #{
%%   <<"events">> => list(system_event()),
%%   <<"nextToken">> => string()
%% }
-type list_system_events_response() :: #{binary() => any()}.


%% Example:
%% list_systems_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"ouId">> => string()
%% }
-type list_systems_request() :: #{binary() => any()}.


%% Example:
%% list_systems_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"systemSummaries">> => list(system_summary())
%% }
-type list_systems_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_test_run_events_request() :: #{
%%   <<"endedAt">> => [non_neg_integer()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"startedAt">> => [non_neg_integer()]
%% }
-type list_test_run_events_request() :: #{binary() => any()}.


%% Example:
%% list_test_run_events_response() :: #{
%%   <<"events">> => list(test_run_event()),
%%   <<"nextToken">> => string()
%% }
-type list_test_run_events_response() :: #{binary() => any()}.


%% Example:
%% list_test_run_sources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"type">> => list(any())
%% }
-type list_test_run_sources_request() :: #{binary() => any()}.


%% Example:
%% list_test_run_sources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testRunSources">> => list(list())
%% }
-type list_test_run_sources_response() :: #{binary() => any()}.


%% Example:
%% list_test_runs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"testId">> => string()
%% }
-type list_test_runs_request() :: #{binary() => any()}.


%% Example:
%% list_test_runs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testRuns">> => list(test_run_summary())
%% }
-type list_test_runs_response() :: #{binary() => any()}.


%% Example:
%% list_test_sources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"type">> => list(any())
%% }
-type list_test_sources_request() :: #{binary() => any()}.


%% Example:
%% list_test_sources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testSources">> => list(list())
%% }
-type list_test_sources_response() :: #{binary() => any()}.

%% Example:
%% list_test_templates_request() :: #{}
-type list_test_templates_request() :: #{}.


%% Example:
%% list_test_templates_response() :: #{
%%   <<"testTemplates">> => list(test_template_summary())
%% }
-type list_test_templates_response() :: #{binary() => any()}.


%% Example:
%% list_tests_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"serviceArn">> := string()
%% }
-type list_tests_request() :: #{binary() => any()}.


%% Example:
%% list_tests_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tests">> => list(test_summary())
%% }
-type list_tests_response() :: #{binary() => any()}.


%% Example:
%% list_user_journeys_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"systemArn">> := string()
%% }
-type list_user_journeys_request() :: #{binary() => any()}.


%% Example:
%% list_user_journeys_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"userJourneySummaries">> => list(user_journey_summary())
%% }
-type list_user_journeys_response() :: #{binary() => any()}.


%% Example:
%% logging_configuration() :: #{
%%   <<"cloudWatchLogGroupArn">> => string(),
%%   <<"logSchemaVersion">> => [string()],
%%   <<"s3BucketName">> => [string()]
%% }
-type logging_configuration() :: #{binary() => any()}.


%% Example:
%% multi_az_targets() :: #{
%%   <<"disasterRecoveryApproach">> => list(any()),
%%   <<"rpoInMinutes">> => [integer()],
%%   <<"rtoInMinutes">> => [integer()]
%% }
-type multi_az_targets() :: #{binary() => any()}.


%% Example:
%% multi_region_targets() :: #{
%%   <<"disasterRecoveryApproach">> => list(any()),
%%   <<"rpoInMinutes">> => [integer()],
%%   <<"rtoInMinutes">> => [integer()]
%% }
-type multi_region_targets() :: #{binary() => any()}.


%% Example:
%% observability_alarm_input() :: #{
%%   <<"alarmArn">> => string()
%% }
-type observability_alarm_input() :: #{binary() => any()}.


%% Example:
%% observability_alarm_summary() :: #{
%%   <<"accountId">> => [string()],
%%   <<"alarmArn">> => string(),
%%   <<"alarmName">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"region">> => [string()]
%% }
-type observability_alarm_summary() :: #{binary() => any()}.


%% Example:
%% observability_recommendation() :: #{
%%   <<"suggestedChanges">> => list(string())
%% }
-type observability_recommendation() :: #{binary() => any()}.


%% Example:
%% permission_model() :: #{
%%   <<"crossAccountRoles">> => list(cross_account_role()),
%%   <<"invokerRoleName">> => string()
%% }
-type permission_model() :: #{binary() => any()}.


%% Example:
%% policy() :: #{
%%   <<"associatedServiceCount">> => [integer()],
%%   <<"availabilitySlo">> => availability_slo(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dataRecovery">> => data_recovery_targets(),
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"multiAz">> => multi_az_targets(),
%%   <<"multiRegion">> => multi_region_targets(),
%%   <<"name">> => string(),
%%   <<"policyArn">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type policy() :: #{binary() => any()}.


%% Example:
%% policy_summary() :: #{
%%   <<"associatedServiceCount">> => [integer()],
%%   <<"availabilitySlo">> => availability_slo(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dataRecovery">> => data_recovery_targets(),
%%   <<"multiAz">> => multi_az_targets(),
%%   <<"multiRegion">> => multi_region_targets(),
%%   <<"name">> => string(),
%%   <<"policyArn">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type policy_summary() :: #{binary() => any()}.


%% Example:
%% put_test_sources_request() :: #{
%%   <<"serviceArn">> := string(),
%%   <<"testId">> := string(),
%%   <<"testSources">> := list(list())
%% }
-type put_test_sources_request() :: #{binary() => any()}.

%% Example:
%% put_test_sources_response() :: #{}
-type put_test_sources_response() :: #{}.


%% Example:
%% query_data_point() :: #{
%%   <<"queryCount">> => [float()],
%%   <<"timestamp">> => [non_neg_integer()]
%% }
-type query_data_point() :: #{binary() => any()}.


%% Example:
%% query_range() :: #{
%%   <<"dataPoints">> => list(query_data_point()),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"granularity">> => list(any()),
%%   <<"startTime">> => [non_neg_integer()]
%% }
-type query_range() :: #{binary() => any()}.


%% Example:
%% report_generation_result() :: #{
%%   <<"assessmentId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"reportOutput">> => list(),
%%   <<"reportType">> => list(any()),
%%   <<"serviceArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"testRunId">> => string(),
%%   <<"testTemplateArn">> => string()
%% }
-type report_generation_result() :: #{binary() => any()}.


%% Example:
%% resolved_target_resource() :: #{
%%   <<"resourceType">> => [string()],
%%   <<"targetInformation">> => map(),
%%   <<"targetName">> => [string()]
%% }
-type resolved_target_resource() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"identifier">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource() :: #{binary() => any()}.


%% Example:
%% resource_discovery_status() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"lastRunAt">> => [non_neg_integer()],
%%   <<"status">> => list(any())
%% }
-type resource_discovery_status() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% resource_tag() :: #{
%%   <<"key">> => string(),
%%   <<"values">> => list(string())
%% }
-type resource_tag() :: #{binary() => any()}.


%% Example:
%% s3_report_output() :: #{
%%   <<"s3ObjectKey">> => [string()]
%% }
-type s3_report_output() :: #{binary() => any()}.


%% Example:
%% s3_report_output_configuration() :: #{
%%   <<"bucketOwner">> => string(),
%%   <<"bucketPath">> => string()
%% }
-type s3_report_output_configuration() :: #{binary() => any()}.


%% Example:
%% service() :: #{
%%   <<"accountId">> => string(),
%%   <<"achievability">> => achievability(),
%%   <<"assessmentStatus">> => list(any()),
%%   <<"associatedSystems">> => list(associated_system()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dependencyDiscovery">> => dependency_discovery_config(),
%%   <<"description">> => string(),
%%   <<"effectivePolicyValues">> => effective_policy_values(),
%%   <<"estimatedAssessmentCost">> => assessment_cost(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"openFindingsCount">> => [integer()],
%%   <<"organizationId">> => string(),
%%   <<"ouId">> => string(),
%%   <<"permissionModel">> => permission_model(),
%%   <<"policyArn">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"reportConfiguration">> => service_report_configuration(),
%%   <<"rerunAssessment">> => [boolean()],
%%   <<"resolvedFindingsCount">> => [integer()],
%%   <<"resourceDiscovery">> => resource_discovery_status(),
%%   <<"serviceArn">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type service() :: #{binary() => any()}.


%% Example:
%% service_achievability_updated_metadata() :: #{
%%   <<"assessmentId">> => [string()],
%%   <<"availabilitySlo">> => [string()],
%%   <<"multiAzRtoRpo">> => [string()],
%%   <<"multiRegionRtoRpo">> => [string()]
%% }
-type service_achievability_updated_metadata() :: #{binary() => any()}.

%% Example:
%% service_created_metadata() :: #{}
-type service_created_metadata() :: #{}.

%% Example:
%% service_deleted_metadata() :: #{}
-type service_deleted_metadata() :: #{}.


%% Example:
%% service_event() :: #{
%%   <<"actor">> => event_actor(),
%%   <<"eventDetails">> => service_event_details(),
%%   <<"eventId">> => string(),
%%   <<"eventType">> => list(any()),
%%   <<"serviceArn">> => string(),
%%   <<"timestamp">> => [non_neg_integer()]
%% }
-type service_event() :: #{binary() => any()}.


%% Example:
%% service_event_details() :: #{
%%   <<"description">> => [string()],
%%   <<"eventMetadata">> => list(),
%%   <<"title">> => [string()]
%% }
-type service_event_details() :: #{binary() => any()}.


%% Example:
%% service_function() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"criticality">> => list(any()),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"resourceCount">> => [integer()],
%%   <<"serviceArn">> => string(),
%%   <<"serviceFunctionId">> => string(),
%%   <<"source">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type service_function() :: #{binary() => any()}.


%% Example:
%% service_function_created_metadata() :: #{
%%   <<"serviceFunctionId">> => [string()],
%%   <<"serviceFunctionName">> => [string()]
%% }
-type service_function_created_metadata() :: #{binary() => any()}.


%% Example:
%% service_function_deleted_metadata() :: #{
%%   <<"serviceFunctionId">> => [string()],
%%   <<"serviceFunctionName">> => [string()]
%% }
-type service_function_deleted_metadata() :: #{binary() => any()}.


%% Example:
%% service_function_resources_added_metadata() :: #{
%%   <<"resourcesAdded">> => list(string()),
%%   <<"serviceFunctionId">> => [string()],
%%   <<"serviceFunctionName">> => [string()]
%% }
-type service_function_resources_added_metadata() :: #{binary() => any()}.


%% Example:
%% service_function_resources_removed_metadata() :: #{
%%   <<"resourcesRemoved">> => list(string()),
%%   <<"serviceFunctionId">> => [string()],
%%   <<"serviceFunctionName">> => [string()]
%% }
-type service_function_resources_removed_metadata() :: #{binary() => any()}.


%% Example:
%% service_function_updated_metadata() :: #{
%%   <<"resourcesAdded">> => list(string()),
%%   <<"resourcesRemoved">> => list(string()),
%%   <<"serviceFunctionId">> => [string()],
%%   <<"serviceFunctionName">> => [string()]
%% }
-type service_function_updated_metadata() :: #{binary() => any()}.

%% Example:
%% service_input_sources_updated_metadata() :: #{}
-type service_input_sources_updated_metadata() :: #{}.


%% Example:
%% service_policy_associated_metadata() :: #{
%%   <<"policyArn">> => string(),
%%   <<"policyName">> => [string()]
%% }
-type service_policy_associated_metadata() :: #{binary() => any()}.


%% Example:
%% service_policy_disassociated_metadata() :: #{
%%   <<"policyArn">> => string(),
%%   <<"policyName">> => [string()]
%% }
-type service_policy_disassociated_metadata() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% service_reference() :: #{
%%   <<"serviceId">> => [string()],
%%   <<"serviceName">> => [string()]
%% }
-type service_reference() :: #{binary() => any()}.


%% Example:
%% service_reference_changes() :: #{
%%   <<"added">> => list(service_reference()),
%%   <<"removed">> => list(service_reference())
%% }
-type service_reference_changes() :: #{binary() => any()}.


%% Example:
%% service_report_configuration() :: #{
%%   <<"reportOutputs">> => list(list())
%% }
-type service_report_configuration() :: #{binary() => any()}.


%% Example:
%% service_resource() :: #{
%%   <<"inputSource">> => input_source(),
%%   <<"resource">> => resource(),
%%   <<"resourceIdentifier">> => [string()]
%% }
-type service_resource() :: #{binary() => any()}.


%% Example:
%% service_resources_associated_metadata() :: #{
%%   <<"resourceCount">> => [integer()],
%%   <<"resourceTypes">> => list([string()]())
%% }
-type service_resources_associated_metadata() :: #{binary() => any()}.


%% Example:
%% service_resources_disassociated_metadata() :: #{
%%   <<"resourceCount">> => [integer()],
%%   <<"resourceTypes">> => list([string()]())
%% }
-type service_resources_disassociated_metadata() :: #{binary() => any()}.


%% Example:
%% service_summary() :: #{
%%   <<"accountId">> => string(),
%%   <<"achievability">> => achievability(),
%%   <<"assessmentStatus">> => list(any()),
%%   <<"associatedSystems">> => list(associated_system()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dependencyDiscovery">> => dependency_discovery_config(),
%%   <<"name">> => string(),
%%   <<"openFindingsCount">> => [integer()],
%%   <<"organizationId">> => string(),
%%   <<"ouId">> => string(),
%%   <<"policyArn">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"resolvedFindingsCount">> => [integer()],
%%   <<"serviceArn">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type service_summary() :: #{binary() => any()}.


%% Example:
%% service_system_associated_metadata() :: #{
%%   <<"systemArn">> => string(),
%%   <<"systemName">> => [string()]
%% }
-type service_system_associated_metadata() :: #{binary() => any()}.


%% Example:
%% service_system_disassociated_metadata() :: #{
%%   <<"systemArn">> => string(),
%%   <<"systemId">> => [string()],
%%   <<"systemName">> => [string()]
%% }
-type service_system_disassociated_metadata() :: #{binary() => any()}.


%% Example:
%% service_topology_edge_summary() :: #{
%%   <<"destinationAccount">> => string(),
%%   <<"destinationRegion">> => string(),
%%   <<"destinationResourceIdentifier">> => [string()],
%%   <<"properties">> => list(edge_property_summary()),
%%   <<"sourceAccount">> => string(),
%%   <<"sourceRegion">> => string(),
%%   <<"sourceResourceIdentifier">> => [string()]
%% }
-type service_topology_edge_summary() :: #{binary() => any()}.


%% Example:
%% service_workflow_updated_metadata() :: #{
%%   <<"serviceFunctionId">> => [string()],
%%   <<"serviceFunctionName">> => [string()]
%% }
-type service_workflow_updated_metadata() :: #{binary() => any()}.


%% Example:
%% slo_source() :: #{
%%   <<"policyName">> => string(),
%%   <<"source">> => list(any()),
%%   <<"value">> => [float()]
%% }
-type slo_source() :: #{binary() => any()}.


%% Example:
%% start_failure_mode_assessment_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"serviceArn">> := string()
%% }
-type start_failure_mode_assessment_request() :: #{binary() => any()}.


%% Example:
%% start_failure_mode_assessment_response() :: #{
%%   <<"assessmentId">> => string(),
%%   <<"assessmentStatus">> => list(any()),
%%   <<"serviceArn">> => string(),
%%   <<"startedAt">> => [non_neg_integer()]
%% }
-type start_failure_mode_assessment_response() :: #{binary() => any()}.


%% Example:
%% start_test_run_request() :: #{
%%   <<"serviceArn">> := string(),
%%   <<"testId">> := string()
%% }
-type start_test_run_request() :: #{binary() => any()}.


%% Example:
%% start_test_run_response() :: #{
%%   <<"experimentArns">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"testRunId">> => string()
%% }
-type start_test_run_response() :: #{binary() => any()}.


%% Example:
%% stop_condition() :: #{
%%   <<"source">> => list(any()),
%%   <<"value">> => [string()]
%% }
-type stop_condition() :: #{binary() => any()}.


%% Example:
%% stop_test_run_request() :: #{
%%   <<"serviceArn">> := string(),
%%   <<"testRunId">> := string()
%% }
-type stop_test_run_request() :: #{binary() => any()}.


%% Example:
%% stop_test_run_response() :: #{
%%   <<"status">> => list(any()),
%%   <<"testRunId">> => string()
%% }
-type stop_test_run_response() :: #{binary() => any()}.


%% Example:
%% string_change() :: #{
%%   <<"newValue">> => [string()],
%%   <<"oldValue">> => [string()]
%% }
-type string_change() :: #{binary() => any()}.


%% Example:
%% success_criteria_alarm_input() :: #{
%%   <<"alarmArn">> => string()
%% }
-type success_criteria_alarm_input() :: #{binary() => any()}.


%% Example:
%% success_criteria_alarm_summary() :: #{
%%   <<"accountId">> => [string()],
%%   <<"alarmArn">> => string(),
%%   <<"alarmName">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"region">> => [string()]
%% }
-type success_criteria_alarm_summary() :: #{binary() => any()}.


%% Example:
%% system() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"organizationId">> => string(),
%%   <<"ouId">> => string(),
%%   <<"sharingEnabled">> => [boolean()],
%%   <<"systemArn">> => string(),
%%   <<"systemId">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type system() :: #{binary() => any()}.

%% Example:
%% system_created_metadata() :: #{}
-type system_created_metadata() :: #{}.

%% Example:
%% system_deleted_metadata() :: #{}
-type system_deleted_metadata() :: #{}.


%% Example:
%% system_event() :: #{
%%   <<"actor">> => event_actor(),
%%   <<"eventDetails">> => system_event_details(),
%%   <<"eventId">> => string(),
%%   <<"eventType">> => list(any()),
%%   <<"systemArn">> => string(),
%%   <<"timestamp">> => [non_neg_integer()]
%% }
-type system_event() :: #{binary() => any()}.


%% Example:
%% system_event_details() :: #{
%%   <<"description">> => [string()],
%%   <<"eventMetadata">> => list(),
%%   <<"title">> => [string()]
%% }
-type system_event_details() :: #{binary() => any()}.


%% Example:
%% system_policy_associated_metadata() :: #{
%%   <<"policyArn">> => string(),
%%   <<"policyName">> => [string()]
%% }
-type system_policy_associated_metadata() :: #{binary() => any()}.


%% Example:
%% system_policy_disassociated_metadata() :: #{
%%   <<"policyArn">> => string(),
%%   <<"policyName">> => [string()]
%% }
-type system_policy_disassociated_metadata() :: #{binary() => any()}.


%% Example:
%% system_service_associated_metadata() :: #{
%%   <<"serviceArn">> => string(),
%%   <<"serviceName">> => [string()],
%%   <<"userJourneys">> => list([string()]())
%% }
-type system_service_associated_metadata() :: #{binary() => any()}.


%% Example:
%% system_service_disassociated_metadata() :: #{
%%   <<"comment">> => [string()],
%%   <<"serviceArn">> => string(),
%%   <<"serviceName">> => [string()],
%%   <<"userJourneysAffected">> => list([string()]())
%% }
-type system_service_disassociated_metadata() :: #{binary() => any()}.


%% Example:
%% system_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"organizationId">> => string(),
%%   <<"ouId">> => string(),
%%   <<"servicesCount">> => [integer()],
%%   <<"systemArn">> => string(),
%%   <<"systemId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"userJourneysCount">> => [integer()]
%% }
-type system_summary() :: #{binary() => any()}.


%% Example:
%% system_user_journey_created_metadata() :: #{
%%   <<"associatedServices">> => list(service_reference()),
%%   <<"userJourneyName">> => [string()]
%% }
-type system_user_journey_created_metadata() :: #{binary() => any()}.


%% Example:
%% system_user_journey_deleted_metadata() :: #{
%%   <<"associatedServicesAtDeletion">> => list(service_reference()),
%%   <<"userJourneyName">> => [string()]
%% }
-type system_user_journey_deleted_metadata() :: #{binary() => any()}.


%% Example:
%% system_user_journey_updated_metadata() :: #{
%%   <<"changes">> => user_journey_changes(),
%%   <<"userJourneyName">> => [string()]
%% }
-type system_user_journey_updated_metadata() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% target_source() :: #{
%%   <<"policyName">> => string(),
%%   <<"source">> => list(any()),
%%   <<"value">> => [integer()]
%% }
-type target_source() :: #{binary() => any()}.


%% Example:
%% test() :: #{
%%   <<"actions">> => list(test_action()),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"loggingConfiguration">> => logging_configuration(),
%%   <<"name">> => [string()],
%%   <<"parameters">> => map(),
%%   <<"roleName">> => string(),
%%   <<"serviceArn">> => string(),
%%   <<"stopConditions">> => list(stop_condition()),
%%   <<"successfulTestRuns">> => [integer()],
%%   <<"testId">> => string(),
%%   <<"testTemplateArn">> => string(),
%%   <<"totalTestRuns">> => [integer()]
%% }
-type test() :: #{binary() => any()}.


%% Example:
%% test_action() :: #{
%%   <<"actionId">> => [string()],
%%   <<"description">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type test_action() :: #{binary() => any()}.


%% Example:
%% test_run() :: #{
%%   <<"accountTargeting">> => list(any()),
%%   <<"endedAt">> => [non_neg_integer()],
%%   <<"errorMessage">> => [string()],
%%   <<"eventCount">> => [integer()],
%%   <<"experiments">> => list(experiment_details()),
%%   <<"loggingConfiguration">> => logging_configuration(),
%%   <<"parameters">> => map(),
%%   <<"permissionModel">> => permission_model(),
%%   <<"policy">> => test_run_policy_snapshot(),
%%   <<"regionSwitchExecutionId">> => string(),
%%   <<"regionSwitchPlanArn">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"reportConfiguration">> => test_run_report_configuration(),
%%   <<"reportOutput">> => report_generation_result(),
%%   <<"roleName">> => string(),
%%   <<"serviceArn">> => string(),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"stopConditions">> => list(stop_condition()),
%%   <<"testId">> => string(),
%%   <<"testRunId">> => string(),
%%   <<"testTemplateArn">> => string()
%% }
-type test_run() :: #{binary() => any()}.


%% Example:
%% test_run_event() :: #{
%%   <<"attributes">> => map(),
%%   <<"eventId">> => [string()],
%%   <<"eventType">> => [string()],
%%   <<"message">> => [string()],
%%   <<"timestamp">> => [non_neg_integer()]
%% }
-type test_run_event() :: #{binary() => any()}.


%% Example:
%% test_run_observability_alarm_summary() :: #{
%%   <<"accountId">> => [string()],
%%   <<"alarmArn">> => string(),
%%   <<"alarmName">> => [string()],
%%   <<"region">> => [string()]
%% }
-type test_run_observability_alarm_summary() :: #{binary() => any()}.


%% Example:
%% test_run_policy_snapshot() :: #{
%%   <<"availabilitySlo">> => availability_slo(),
%%   <<"dataRecovery">> => data_recovery_targets(),
%%   <<"multiAz">> => multi_az_targets(),
%%   <<"multiRegion">> => multi_region_targets(),
%%   <<"name">> => string(),
%%   <<"policyArn">> => string()
%% }
-type test_run_policy_snapshot() :: #{binary() => any()}.


%% Example:
%% test_run_report_configuration() :: #{
%%   <<"reportOutput">> => list(list())
%% }
-type test_run_report_configuration() :: #{binary() => any()}.


%% Example:
%% test_run_success_criteria_alarm_summary() :: #{
%%   <<"accountId">> => [string()],
%%   <<"alarmArn">> => string(),
%%   <<"alarmName">> => [string()],
%%   <<"outcome">> => list(any()),
%%   <<"outcomeReason">> => [string()],
%%   <<"region">> => [string()]
%% }
-type test_run_success_criteria_alarm_summary() :: #{binary() => any()}.


%% Example:
%% test_run_summary() :: #{
%%   <<"accountTargeting">> => list(any()),
%%   <<"endedAt">> => [non_neg_integer()],
%%   <<"errorMessage">> => [string()],
%%   <<"serviceArn">> => string(),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"testRunId">> => string(),
%%   <<"testTemplateArn">> => string()
%% }
-type test_run_summary() :: #{binary() => any()}.


%% Example:
%% test_summary() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"serviceArn">> => string(),
%%   <<"successfulTestRuns">> => [integer()],
%%   <<"testId">> => string(),
%%   <<"testTemplateArn">> => string(),
%%   <<"totalTestRuns">> => [integer()]
%% }
-type test_summary() :: #{binary() => any()}.


%% Example:
%% test_template() :: #{
%%   <<"actions">> => list(test_action()),
%%   <<"description">> => [string()],
%%   <<"name">> => [string()],
%%   <<"parameters">> => list(test_template_parameter()),
%%   <<"testTemplateArn">> => string()
%% }
-type test_template() :: #{binary() => any()}.


%% Example:
%% test_template_parameter() :: #{
%%   <<"defaultValue">> => [string()],
%%   <<"description">> => [string()],
%%   <<"maxValues">> => [integer()],
%%   <<"name">> => [string()],
%%   <<"required">> => [boolean()],
%%   <<"type">> => list(any())
%% }
-type test_template_parameter() :: #{binary() => any()}.


%% Example:
%% test_template_summary() :: #{
%%   <<"description">> => [string()],
%%   <<"name">> => [string()],
%%   <<"testTemplateArn">> => string()
%% }
-type test_template_summary() :: #{binary() => any()}.


%% Example:
%% testing_recommendation() :: #{
%%   <<"suggestedChanges">> => list(string())
%% }
-type testing_recommendation() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_assertion_request() :: #{
%%   <<"assertionId">> := string(),
%%   <<"serviceArn">> := string(),
%%   <<"text">> => string()
%% }
-type update_assertion_request() :: #{binary() => any()}.


%% Example:
%% update_assertion_response() :: #{
%%   <<"assertion">> => assertion()
%% }
-type update_assertion_response() :: #{binary() => any()}.


%% Example:
%% update_dependency_request() :: #{
%%   <<"comment">> => [string()],
%%   <<"criticality">> => list(any()),
%%   <<"dependencyId">> := string(),
%%   <<"serviceArn">> := string()
%% }
-type update_dependency_request() :: #{binary() => any()}.


%% Example:
%% update_dependency_response() :: #{
%%   <<"comment">> => [string()],
%%   <<"criticality">> => list(any()),
%%   <<"dependencyId">> => string(),
%%   <<"dependencyName">> => [string()],
%%   <<"location">> => [string()],
%%   <<"provider">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_dependency_response() :: #{binary() => any()}.


%% Example:
%% update_failure_mode_finding_request() :: #{
%%   <<"comment">> => [string()],
%%   <<"findingId">> := string(),
%%   <<"serviceArn">> := string(),
%%   <<"status">> := list(any())
%% }
-type update_failure_mode_finding_request() :: #{binary() => any()}.


%% Example:
%% update_failure_mode_finding_response() :: #{
%%   <<"finding">> => finding()
%% }
-type update_failure_mode_finding_response() :: #{binary() => any()}.


%% Example:
%% update_policy_request() :: #{
%%   <<"availabilitySlo">> => availability_slo(),
%%   <<"dataRecovery">> => data_recovery_targets(),
%%   <<"description">> => string(),
%%   <<"multiAz">> => multi_az_targets(),
%%   <<"multiRegion">> => multi_region_targets(),
%%   <<"policyArn">> := string()
%% }
-type update_policy_request() :: #{binary() => any()}.


%% Example:
%% update_policy_response() :: #{
%%   <<"policy">> => policy()
%% }
-type update_policy_response() :: #{binary() => any()}.


%% Example:
%% update_service_function_request() :: #{
%%   <<"criticality">> => list(any()),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"serviceFunctionId">> := string()
%% }
-type update_service_function_request() :: #{binary() => any()}.


%% Example:
%% update_service_function_response() :: #{
%%   <<"serviceFunction">> => service_function()
%% }
-type update_service_function_response() :: #{binary() => any()}.


%% Example:
%% update_service_request() :: #{
%%   <<"associatedSystems">> => list(associated_system()),
%%   <<"dependencyDiscovery">> => list(any()),
%%   <<"description">> => string(),
%%   <<"permissionModel">> => permission_model(),
%%   <<"policyArn">> => string(),
%%   <<"regions">> => list(string()),
%%   <<"reportConfiguration">> => service_report_configuration(),
%%   <<"serviceArn">> := string()
%% }
-type update_service_request() :: #{binary() => any()}.


%% Example:
%% update_service_response() :: #{
%%   <<"service">> => service()
%% }
-type update_service_response() :: #{binary() => any()}.


%% Example:
%% update_system_request() :: #{
%%   <<"description">> => string(),
%%   <<"sharingEnabled">> => [boolean()],
%%   <<"systemArn">> := string()
%% }
-type update_system_request() :: #{binary() => any()}.


%% Example:
%% update_system_response() :: #{
%%   <<"system">> => system()
%% }
-type update_system_response() :: #{binary() => any()}.


%% Example:
%% update_test_request() :: #{
%%   <<"loggingConfiguration">> => logging_configuration(),
%%   <<"parameters">> => map(),
%%   <<"roleName">> => string(),
%%   <<"serviceArn">> := string(),
%%   <<"stopConditions">> => list(stop_condition()),
%%   <<"testId">> := string()
%% }
-type update_test_request() :: #{binary() => any()}.


%% Example:
%% update_test_response() :: #{
%%   <<"test">> => test()
%% }
-type update_test_response() :: #{binary() => any()}.


%% Example:
%% update_user_journey_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"policyArn">> => string(),
%%   <<"systemArn">> := string(),
%%   <<"userJourneyId">> := string()
%% }
-type update_user_journey_request() :: #{binary() => any()}.


%% Example:
%% update_user_journey_response() :: #{
%%   <<"userJourney">> => user_journey()
%% }
-type update_user_journey_response() :: #{binary() => any()}.


%% Example:
%% user_journey() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"policyArn">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"userJourneyId">> => string()
%% }
-type user_journey() :: #{binary() => any()}.


%% Example:
%% user_journey_changes() :: #{
%%   <<"associatedServices">> => service_reference_changes(),
%%   <<"journeyDescription">> => string_change()
%% }
-type user_journey_changes() :: #{binary() => any()}.


%% Example:
%% user_journey_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"userJourneyId">> => string()
%% }
-type user_journey_summary() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type create_assertion_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_input_source_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_policy_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_report_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_service_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_service_function_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_service_function_resources_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_system_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_test_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_user_journey_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_assertion_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type delete_input_source_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type delete_policy_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_service_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_service_function_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_service_function_resources_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_system_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_test_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_test_sources_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_user_journey_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_failure_mode_finding_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_policy_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_service_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_system_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_test_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_test_run_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_test_template_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_user_journey_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type import_app_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type import_policy_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type list_assertions_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_dependencies_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_failure_mode_assessments_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_failure_mode_findings_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_input_sources_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_policies_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_reports_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_resolved_test_run_target_resources_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_resources_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_service_events_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_service_functions_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_service_topology_edges_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_services_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_system_events_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_systems_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_test_run_events_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_test_run_sources_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_test_runs_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_test_sources_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_test_templates_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tests_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_user_journeys_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type put_test_sources_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type start_failure_mode_assessment_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type start_test_run_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type stop_test_run_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type update_assertion_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_dependency_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_failure_mode_finding_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_policy_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_service_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_service_function_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_system_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_test_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_user_journey_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a resilience assertion for a service.
-spec create_assertion(aws_client:aws_client(), create_assertion_request()) ->
    {ok, create_assertion_response(), tuple()} |
    {error, any()} |
    {error, create_assertion_errors(), tuple()}.
create_assertion(Client, Input) ->
    create_assertion(Client, Input, []).

-spec create_assertion(aws_client:aws_client(), create_assertion_request(), proplists:proplist()) ->
    {ok, create_assertion_response(), tuple()} |
    {error, any()} |
    {error, create_assertion_errors(), tuple()}.
create_assertion(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/create-assertion"],
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

%% @doc Creates an input source for a service.
-spec create_input_source(aws_client:aws_client(), create_input_source_request()) ->
    {ok, create_input_source_response(), tuple()} |
    {error, any()} |
    {error, create_input_source_errors(), tuple()}.
create_input_source(Client, Input) ->
    create_input_source(Client, Input, []).

-spec create_input_source(aws_client:aws_client(), create_input_source_request(), proplists:proplist()) ->
    {ok, create_input_source_response(), tuple()} |
    {error, any()} |
    {error, create_input_source_errors(), tuple()}.
create_input_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/create-input-source"],
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

%% @doc Creates a resilience policy that defines availability and disaster
%% recovery requirements.
-spec create_policy(aws_client:aws_client(), create_policy_request()) ->
    {ok, create_policy_response(), tuple()} |
    {error, any()} |
    {error, create_policy_errors(), tuple()}.
create_policy(Client, Input) ->
    create_policy(Client, Input, []).

-spec create_policy(aws_client:aws_client(), create_policy_request(), proplists:proplist()) ->
    {ok, create_policy_response(), tuple()} |
    {error, any()} |
    {error, create_policy_errors(), tuple()}.
create_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/create-policy"],
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

%% @doc On-demand report creation.
%%
%% Idempotent — duplicate requests with same clientToken return existing
%% result.
-spec create_report(aws_client:aws_client(), create_report_request()) ->
    {ok, create_report_response(), tuple()} |
    {error, any()} |
    {error, create_report_errors(), tuple()}.
create_report(Client, Input) ->
    create_report(Client, Input, []).

-spec create_report(aws_client:aws_client(), create_report_request(), proplists:proplist()) ->
    {ok, create_report_response(), tuple()} |
    {error, any()} |
    {error, create_report_errors(), tuple()}.
create_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/create-report"],
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

%% @doc Creates a service.
-spec create_service(aws_client:aws_client(), create_service_request()) ->
    {ok, create_service_response(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, Input) ->
    create_service(Client, Input, []).

-spec create_service(aws_client:aws_client(), create_service_request(), proplists:proplist()) ->
    {ok, create_service_response(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/create-service"],
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

%% @doc Creates a service function within a service.
-spec create_service_function(aws_client:aws_client(), create_service_function_request()) ->
    {ok, create_service_function_response(), tuple()} |
    {error, any()} |
    {error, create_service_function_errors(), tuple()}.
create_service_function(Client, Input) ->
    create_service_function(Client, Input, []).

-spec create_service_function(aws_client:aws_client(), create_service_function_request(), proplists:proplist()) ->
    {ok, create_service_function_response(), tuple()} |
    {error, any()} |
    {error, create_service_function_errors(), tuple()}.
create_service_function(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/create-service-function"],
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

%% @doc Associates resources with a service function.
-spec create_service_function_resources(aws_client:aws_client(), create_service_function_resources_request()) ->
    {ok, create_service_function_resources_response(), tuple()} |
    {error, any()} |
    {error, create_service_function_resources_errors(), tuple()}.
create_service_function_resources(Client, Input) ->
    create_service_function_resources(Client, Input, []).

-spec create_service_function_resources(aws_client:aws_client(), create_service_function_resources_request(), proplists:proplist()) ->
    {ok, create_service_function_resources_response(), tuple()} |
    {error, any()} |
    {error, create_service_function_resources_errors(), tuple()}.
create_service_function_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/create-service-function-resources"],
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

%% @doc Creates a system that represents a logical grouping of services.
-spec create_system(aws_client:aws_client(), create_system_request()) ->
    {ok, create_system_response(), tuple()} |
    {error, any()} |
    {error, create_system_errors(), tuple()}.
create_system(Client, Input) ->
    create_system(Client, Input, []).

-spec create_system(aws_client:aws_client(), create_system_request(), proplists:proplist()) ->
    {ok, create_system_response(), tuple()} |
    {error, any()} |
    {error, create_system_errors(), tuple()}.
create_system(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/create-system"],
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

%% @doc Creates a test for a service by configuring a test template.
%%
%% Each service has one test per template.
-spec create_test(aws_client:aws_client(), create_test_request()) ->
    {ok, create_test_response(), tuple()} |
    {error, any()} |
    {error, create_test_errors(), tuple()}.
create_test(Client, Input) ->
    create_test(Client, Input, []).

-spec create_test(aws_client:aws_client(), create_test_request(), proplists:proplist()) ->
    {ok, create_test_response(), tuple()} |
    {error, any()} |
    {error, create_test_errors(), tuple()}.
create_test(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/create-test"],
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

%% @doc Creates a user journey within a system.
-spec create_user_journey(aws_client:aws_client(), create_user_journey_request()) ->
    {ok, create_user_journey_response(), tuple()} |
    {error, any()} |
    {error, create_user_journey_errors(), tuple()}.
create_user_journey(Client, Input) ->
    create_user_journey(Client, Input, []).

-spec create_user_journey(aws_client:aws_client(), create_user_journey_request(), proplists:proplist()) ->
    {ok, create_user_journey_response(), tuple()} |
    {error, any()} |
    {error, create_user_journey_errors(), tuple()}.
create_user_journey(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/create-user-journey"],
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

%% @doc Deletes a resilience assertion from a service.
-spec delete_assertion(aws_client:aws_client(), delete_assertion_request()) ->
    {ok, delete_assertion_response(), tuple()} |
    {error, any()} |
    {error, delete_assertion_errors(), tuple()}.
delete_assertion(Client, Input) ->
    delete_assertion(Client, Input, []).

-spec delete_assertion(aws_client:aws_client(), delete_assertion_request(), proplists:proplist()) ->
    {ok, delete_assertion_response(), tuple()} |
    {error, any()} |
    {error, delete_assertion_errors(), tuple()}.
delete_assertion(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/delete-assertion"],
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

%% @doc Deletes an input source.
-spec delete_input_source(aws_client:aws_client(), delete_input_source_request()) ->
    {ok, delete_input_source_response(), tuple()} |
    {error, any()} |
    {error, delete_input_source_errors(), tuple()}.
delete_input_source(Client, Input) ->
    delete_input_source(Client, Input, []).

-spec delete_input_source(aws_client:aws_client(), delete_input_source_request(), proplists:proplist()) ->
    {ok, delete_input_source_response(), tuple()} |
    {error, any()} |
    {error, delete_input_source_errors(), tuple()}.
delete_input_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/delete-input-source"],
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

%% @doc Deletes a resilience policy.
-spec delete_policy(aws_client:aws_client(), delete_policy_request()) ->
    {ok, delete_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input) ->
    delete_policy(Client, Input, []).

-spec delete_policy(aws_client:aws_client(), delete_policy_request(), proplists:proplist()) ->
    {ok, delete_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/delete-policy"],
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

%% @doc Deletes a service.
-spec delete_service(aws_client:aws_client(), delete_service_request()) ->
    {ok, delete_service_response(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, Input) ->
    delete_service(Client, Input, []).

-spec delete_service(aws_client:aws_client(), delete_service_request(), proplists:proplist()) ->
    {ok, delete_service_response(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/delete-service"],
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

%% @doc Deletes a service function.
-spec delete_service_function(aws_client:aws_client(), delete_service_function_request()) ->
    {ok, delete_service_function_response(), tuple()} |
    {error, any()} |
    {error, delete_service_function_errors(), tuple()}.
delete_service_function(Client, Input) ->
    delete_service_function(Client, Input, []).

-spec delete_service_function(aws_client:aws_client(), delete_service_function_request(), proplists:proplist()) ->
    {ok, delete_service_function_response(), tuple()} |
    {error, any()} |
    {error, delete_service_function_errors(), tuple()}.
delete_service_function(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/delete-function"],
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

%% @doc Removes resources from a service function.
-spec delete_service_function_resources(aws_client:aws_client(), delete_service_function_resources_request()) ->
    {ok, delete_service_function_resources_response(), tuple()} |
    {error, any()} |
    {error, delete_service_function_resources_errors(), tuple()}.
delete_service_function_resources(Client, Input) ->
    delete_service_function_resources(Client, Input, []).

-spec delete_service_function_resources(aws_client:aws_client(), delete_service_function_resources_request(), proplists:proplist()) ->
    {ok, delete_service_function_resources_response(), tuple()} |
    {error, any()} |
    {error, delete_service_function_resources_errors(), tuple()}.
delete_service_function_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/delete-service-function-resources"],
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

%% @doc Deletes a system.
-spec delete_system(aws_client:aws_client(), delete_system_request()) ->
    {ok, delete_system_response(), tuple()} |
    {error, any()} |
    {error, delete_system_errors(), tuple()}.
delete_system(Client, Input) ->
    delete_system(Client, Input, []).

-spec delete_system(aws_client:aws_client(), delete_system_request(), proplists:proplist()) ->
    {ok, delete_system_response(), tuple()} |
    {error, any()} |
    {error, delete_system_errors(), tuple()}.
delete_system(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/delete-system"],
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

%% @doc Deletes a test.
-spec delete_test(aws_client:aws_client(), delete_test_request()) ->
    {ok, delete_test_response(), tuple()} |
    {error, any()} |
    {error, delete_test_errors(), tuple()}.
delete_test(Client, Input) ->
    delete_test(Client, Input, []).

-spec delete_test(aws_client:aws_client(), delete_test_request(), proplists:proplist()) ->
    {ok, delete_test_response(), tuple()} |
    {error, any()} |
    {error, delete_test_errors(), tuple()}.
delete_test(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/delete-test"],
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

%% @doc Removes monitoring sources from a test.
%%
%% The operation is transactional and idempotent — removing a source that is
%% not attached is a no-op.
-spec delete_test_sources(aws_client:aws_client(), delete_test_sources_request()) ->
    {ok, delete_test_sources_response(), tuple()} |
    {error, any()} |
    {error, delete_test_sources_errors(), tuple()}.
delete_test_sources(Client, Input) ->
    delete_test_sources(Client, Input, []).

-spec delete_test_sources(aws_client:aws_client(), delete_test_sources_request(), proplists:proplist()) ->
    {ok, delete_test_sources_response(), tuple()} |
    {error, any()} |
    {error, delete_test_sources_errors(), tuple()}.
delete_test_sources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/delete-test-sources"],
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

%% @doc Deletes a user journey.
-spec delete_user_journey(aws_client:aws_client(), delete_user_journey_request()) ->
    {ok, delete_user_journey_response(), tuple()} |
    {error, any()} |
    {error, delete_user_journey_errors(), tuple()}.
delete_user_journey(Client, Input) ->
    delete_user_journey(Client, Input, []).

-spec delete_user_journey(aws_client:aws_client(), delete_user_journey_request(), proplists:proplist()) ->
    {ok, delete_user_journey_response(), tuple()} |
    {error, any()} |
    {error, delete_user_journey_errors(), tuple()}.
delete_user_journey(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/delete-user-journey"],
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

%% @doc Retrieves a finding by findingId.
-spec get_failure_mode_finding(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_failure_mode_finding_response(), tuple()} |
    {error, any()} |
    {error, get_failure_mode_finding_errors(), tuple()}.
get_failure_mode_finding(Client, FindingId, ServiceArn)
  when is_map(Client) ->
    get_failure_mode_finding(Client, FindingId, ServiceArn, #{}, #{}).

-spec get_failure_mode_finding(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_failure_mode_finding_response(), tuple()} |
    {error, any()} |
    {error, get_failure_mode_finding_errors(), tuple()}.
get_failure_mode_finding(Client, FindingId, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_failure_mode_finding(Client, FindingId, ServiceArn, QueryMap, HeadersMap, []).

-spec get_failure_mode_finding(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_failure_mode_finding_response(), tuple()} |
    {error, any()} |
    {error, get_failure_mode_finding_errors(), tuple()}.
get_failure_mode_finding(Client, FindingId, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/get-failure-mode-finding"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"findingId">>, FindingId},
        {<<"serviceArn">>, ServiceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a resilience policy by ARN.
-spec get_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, PolicyArn)
  when is_map(Client) ->
    get_policy(Client, PolicyArn, #{}, #{}).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, PolicyArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, PolicyArn, QueryMap, HeadersMap, []).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, PolicyArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/get-policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"policyArn">>, PolicyArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a service by ARN.
-spec get_service(aws_client:aws_client(), binary() | list()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ServiceArn)
  when is_map(Client) ->
    get_service(Client, ServiceArn, #{}, #{}).

-spec get_service(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec get_service(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/get-service"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"serviceArn">>, ServiceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a system by ARN.
-spec get_system(aws_client:aws_client(), binary() | list()) ->
    {ok, get_system_response(), tuple()} |
    {error, any()} |
    {error, get_system_errors(), tuple()}.
get_system(Client, SystemArn)
  when is_map(Client) ->
    get_system(Client, SystemArn, #{}, #{}).

-spec get_system(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_system_response(), tuple()} |
    {error, any()} |
    {error, get_system_errors(), tuple()}.
get_system(Client, SystemArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_system(Client, SystemArn, QueryMap, HeadersMap, []).

-spec get_system(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_system_response(), tuple()} |
    {error, any()} |
    {error, get_system_errors(), tuple()}.
get_system(Client, SystemArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/get-system"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"systemArn">>, SystemArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a test by ID.
-spec get_test(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_test_response(), tuple()} |
    {error, any()} |
    {error, get_test_errors(), tuple()}.
get_test(Client, ServiceArn, TestId)
  when is_map(Client) ->
    get_test(Client, ServiceArn, TestId, #{}, #{}).

-spec get_test(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_test_response(), tuple()} |
    {error, any()} |
    {error, get_test_errors(), tuple()}.
get_test(Client, ServiceArn, TestId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_test(Client, ServiceArn, TestId, QueryMap, HeadersMap, []).

-spec get_test(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_test_response(), tuple()} |
    {error, any()} |
    {error, get_test_errors(), tuple()}.
get_test(Client, ServiceArn, TestId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/get-test"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"serviceArn">>, ServiceArn},
        {<<"testId">>, TestId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a test run by ID, including its status, results, and the
%% configuration snapshotted when the run started.
-spec get_test_run(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_test_run_response(), tuple()} |
    {error, any()} |
    {error, get_test_run_errors(), tuple()}.
get_test_run(Client, ServiceArn, TestRunId)
  when is_map(Client) ->
    get_test_run(Client, ServiceArn, TestRunId, #{}, #{}).

-spec get_test_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_test_run_response(), tuple()} |
    {error, any()} |
    {error, get_test_run_errors(), tuple()}.
get_test_run(Client, ServiceArn, TestRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_test_run(Client, ServiceArn, TestRunId, QueryMap, HeadersMap, []).

-spec get_test_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_test_run_response(), tuple()} |
    {error, any()} |
    {error, get_test_run_errors(), tuple()}.
get_test_run(Client, ServiceArn, TestRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/get-test-run"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"serviceArn">>, ServiceArn},
        {<<"testRunId">>, TestRunId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a resilience test template by ARN, including the parameters
%% it accepts and the fault actions it runs.
-spec get_test_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_test_template_response(), tuple()} |
    {error, any()} |
    {error, get_test_template_errors(), tuple()}.
get_test_template(Client, TestTemplateArn)
  when is_map(Client) ->
    get_test_template(Client, TestTemplateArn, #{}, #{}).

-spec get_test_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_test_template_response(), tuple()} |
    {error, any()} |
    {error, get_test_template_errors(), tuple()}.
get_test_template(Client, TestTemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_test_template(Client, TestTemplateArn, QueryMap, HeadersMap, []).

-spec get_test_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_test_template_response(), tuple()} |
    {error, any()} |
    {error, get_test_template_errors(), tuple()}.
get_test_template(Client, TestTemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/get-test-template"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"testTemplateArn">>, TestTemplateArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a user journey.
-spec get_user_journey(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_user_journey_response(), tuple()} |
    {error, any()} |
    {error, get_user_journey_errors(), tuple()}.
get_user_journey(Client, SystemArn, UserJourneyId)
  when is_map(Client) ->
    get_user_journey(Client, SystemArn, UserJourneyId, #{}, #{}).

-spec get_user_journey(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_user_journey_response(), tuple()} |
    {error, any()} |
    {error, get_user_journey_errors(), tuple()}.
get_user_journey(Client, SystemArn, UserJourneyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_journey(Client, SystemArn, UserJourneyId, QueryMap, HeadersMap, []).

-spec get_user_journey(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_user_journey_response(), tuple()} |
    {error, any()} |
    {error, get_user_journey_errors(), tuple()}.
get_user_journey(Client, SystemArn, UserJourneyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/get-user-journey"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"systemArn">>, SystemArn},
        {<<"userJourneyId">>, UserJourneyId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports a V1 app into the V2 resource model, creating a service with
%% the same name.
-spec import_app(aws_client:aws_client(), import_app_request()) ->
    {ok, import_app_response(), tuple()} |
    {error, any()} |
    {error, import_app_errors(), tuple()}.
import_app(Client, Input) ->
    import_app(Client, Input, []).

-spec import_app(aws_client:aws_client(), import_app_request(), proplists:proplist()) ->
    {ok, import_app_response(), tuple()} |
    {error, any()} |
    {error, import_app_errors(), tuple()}.
import_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/import-app"],
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

%% @doc Imports a V1 policy into V2, mapping RTO/RPO values from V1
%% scenarios.
-spec import_policy(aws_client:aws_client(), import_policy_request()) ->
    {ok, import_policy_response(), tuple()} |
    {error, any()} |
    {error, import_policy_errors(), tuple()}.
import_policy(Client, Input) ->
    import_policy(Client, Input, []).

-spec import_policy(aws_client:aws_client(), import_policy_request(), proplists:proplist()) ->
    {ok, import_policy_response(), tuple()} |
    {error, any()} |
    {error, import_policy_errors(), tuple()}.
import_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/import-policy"],
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

%% @doc Lists resilience assertions for a service.
-spec list_assertions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_assertions_response(), tuple()} |
    {error, any()} |
    {error, list_assertions_errors(), tuple()}.
list_assertions(Client, ServiceArn)
  when is_map(Client) ->
    list_assertions(Client, ServiceArn, #{}, #{}).

-spec list_assertions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_assertions_response(), tuple()} |
    {error, any()} |
    {error, list_assertions_errors(), tuple()}.
list_assertions(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assertions(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec list_assertions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_assertions_response(), tuple()} |
    {error, any()} |
    {error, list_assertions_errors(), tuple()}.
list_assertions(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-assertions"],
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
        {<<"serviceArn">>, ServiceArn},
        {<<"source">>, maps:get(<<"source">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists dependencies discovered for services.
-spec list_dependencies(aws_client:aws_client()) ->
    {ok, list_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_dependencies_errors(), tuple()}.
list_dependencies(Client)
  when is_map(Client) ->
    list_dependencies(Client, #{}, #{}).

-spec list_dependencies(aws_client:aws_client(), map(), map()) ->
    {ok, list_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_dependencies_errors(), tuple()}.
list_dependencies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dependencies(Client, QueryMap, HeadersMap, []).

-spec list_dependencies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_dependencies_errors(), tuple()}.
list_dependencies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-dependencies"],
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
        {<<"queryRangeEndTime">>, maps:get(<<"queryRangeEndTime">>, QueryMap, undefined)},
        {<<"queryRangeGranularity">>, maps:get(<<"queryRangeGranularity">>, QueryMap, undefined)},
        {<<"queryRangeStartTime">>, maps:get(<<"queryRangeStartTime">>, QueryMap, undefined)},
        {<<"serviceArn">>, maps:get(<<"serviceArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists failure mode assessments.
-spec list_failure_mode_assessments(aws_client:aws_client(), binary() | list()) ->
    {ok, list_failure_mode_assessments_response(), tuple()} |
    {error, any()} |
    {error, list_failure_mode_assessments_errors(), tuple()}.
list_failure_mode_assessments(Client, ServiceArn)
  when is_map(Client) ->
    list_failure_mode_assessments(Client, ServiceArn, #{}, #{}).

-spec list_failure_mode_assessments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_failure_mode_assessments_response(), tuple()} |
    {error, any()} |
    {error, list_failure_mode_assessments_errors(), tuple()}.
list_failure_mode_assessments(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_failure_mode_assessments(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec list_failure_mode_assessments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_failure_mode_assessments_response(), tuple()} |
    {error, any()} |
    {error, list_failure_mode_assessments_errors(), tuple()}.
list_failure_mode_assessments(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-failure-mode-assessments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assessmentStatuses">>, maps:get(<<"assessmentStatuses">>, QueryMap, undefined)},
        {<<"endedBefore">>, maps:get(<<"endedBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"serviceArn">>, ServiceArn},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"startedAfter">>, maps:get(<<"startedAfter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List findings.
-spec list_failure_mode_findings(aws_client:aws_client(), binary() | list()) ->
    {ok, list_failure_mode_findings_response(), tuple()} |
    {error, any()} |
    {error, list_failure_mode_findings_errors(), tuple()}.
list_failure_mode_findings(Client, ServiceArn)
  when is_map(Client) ->
    list_failure_mode_findings(Client, ServiceArn, #{}, #{}).

-spec list_failure_mode_findings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_failure_mode_findings_response(), tuple()} |
    {error, any()} |
    {error, list_failure_mode_findings_errors(), tuple()}.
list_failure_mode_findings(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_failure_mode_findings(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec list_failure_mode_findings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_failure_mode_findings_response(), tuple()} |
    {error, any()} |
    {error, list_failure_mode_findings_errors(), tuple()}.
list_failure_mode_findings(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-failure-mode-findings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"failureCategory">>, maps:get(<<"failureCategory">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"serviceArn">>, ServiceArn},
        {<<"severity">>, maps:get(<<"severity">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists input sources for a service.
-spec list_input_sources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_input_sources_response(), tuple()} |
    {error, any()} |
    {error, list_input_sources_errors(), tuple()}.
list_input_sources(Client, ServiceArn)
  when is_map(Client) ->
    list_input_sources(Client, ServiceArn, #{}, #{}).

-spec list_input_sources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_input_sources_response(), tuple()} |
    {error, any()} |
    {error, list_input_sources_errors(), tuple()}.
list_input_sources(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_input_sources(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec list_input_sources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_input_sources_response(), tuple()} |
    {error, any()} |
    {error, list_input_sources_errors(), tuple()}.
list_input_sources(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-input-sources"],
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
        {<<"serviceArn">>, ServiceArn},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists resilience policies.
-spec list_policies(aws_client:aws_client()) ->
    {ok, list_policies_response(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client)
  when is_map(Client) ->
    list_policies(Client, #{}, #{}).

-spec list_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_policies_response(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policies(Client, QueryMap, HeadersMap, []).

-spec list_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_policies_response(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-policies"],
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

%% @doc List reports for a service, or all reports owned by the account if
%% serviceArn is not provided.
-spec list_reports(aws_client:aws_client()) ->
    {ok, list_reports_response(), tuple()} |
    {error, any()} |
    {error, list_reports_errors(), tuple()}.
list_reports(Client)
  when is_map(Client) ->
    list_reports(Client, #{}, #{}).

-spec list_reports(aws_client:aws_client(), map(), map()) ->
    {ok, list_reports_response(), tuple()} |
    {error, any()} |
    {error, list_reports_errors(), tuple()}.
list_reports(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_reports(Client, QueryMap, HeadersMap, []).

-spec list_reports(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_reports_response(), tuple()} |
    {error, any()} |
    {error, list_reports_errors(), tuple()}.
list_reports(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-reports"],
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
        {<<"reportType">>, maps:get(<<"reportType">>, QueryMap, undefined)},
        {<<"serviceArn">>, maps:get(<<"serviceArn">>, QueryMap, undefined)},
        {<<"testRunId">>, maps:get(<<"testRunId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the AWS resources that AWS Fault Injection Service (AWS FIS)
%% resolved as targets for a test run.
-spec list_resolved_test_run_target_resources(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_resolved_test_run_target_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resolved_test_run_target_resources_errors(), tuple()}.
list_resolved_test_run_target_resources(Client, TestRunId, ServiceArn)
  when is_map(Client) ->
    list_resolved_test_run_target_resources(Client, TestRunId, ServiceArn, #{}, #{}).

-spec list_resolved_test_run_target_resources(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_resolved_test_run_target_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resolved_test_run_target_resources_errors(), tuple()}.
list_resolved_test_run_target_resources(Client, TestRunId, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resolved_test_run_target_resources(Client, TestRunId, ServiceArn, QueryMap, HeadersMap, []).

-spec list_resolved_test_run_target_resources(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resolved_test_run_target_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resolved_test_run_target_resources_errors(), tuple()}.
list_resolved_test_run_target_resources(Client, TestRunId, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/test-runs/", aws_util:encode_uri(TestRunId), "/resolved-target-resources"],
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
        {<<"serviceArn">>, ServiceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List resources.
-spec list_resources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, ServiceArn)
  when is_map(Client) ->
    list_resources(Client, ServiceArn, #{}, #{}).

-spec list_resources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resources(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec list_resources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_resources_response(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-resources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"awsRegion">>, maps:get(<<"awsRegion">>, QueryMap, undefined)},
        {<<"billable">>, maps:get(<<"billable">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceTypes">>, maps:get(<<"resourceTypes">>, QueryMap, undefined)},
        {<<"serviceArn">>, ServiceArn},
        {<<"serviceFunctionId">>, maps:get(<<"serviceFunctionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists events for a service.
-spec list_service_events(aws_client:aws_client(), binary() | list()) ->
    {ok, list_service_events_response(), tuple()} |
    {error, any()} |
    {error, list_service_events_errors(), tuple()}.
list_service_events(Client, ServiceArn)
  when is_map(Client) ->
    list_service_events(Client, ServiceArn, #{}, #{}).

-spec list_service_events(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_service_events_response(), tuple()} |
    {error, any()} |
    {error, list_service_events_errors(), tuple()}.
list_service_events(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_events(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec list_service_events(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_service_events_response(), tuple()} |
    {error, any()} |
    {error, list_service_events_errors(), tuple()}.
list_service_events(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-service-events"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"eventTypes">>, maps:get(<<"eventTypes">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"serviceArn">>, ServiceArn},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists service functions for a service.
-spec list_service_functions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_service_functions_response(), tuple()} |
    {error, any()} |
    {error, list_service_functions_errors(), tuple()}.
list_service_functions(Client, ServiceArn)
  when is_map(Client) ->
    list_service_functions(Client, ServiceArn, #{}, #{}).

-spec list_service_functions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_service_functions_response(), tuple()} |
    {error, any()} |
    {error, list_service_functions_errors(), tuple()}.
list_service_functions(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_functions(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec list_service_functions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_service_functions_response(), tuple()} |
    {error, any()} |
    {error, list_service_functions_errors(), tuple()}.
list_service_functions(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-functions"],
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
        {<<"serviceArn">>, ServiceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists topology edges for a service.
-spec list_service_topology_edges(aws_client:aws_client(), binary() | list()) ->
    {ok, list_service_topology_edges_response(), tuple()} |
    {error, any()} |
    {error, list_service_topology_edges_errors(), tuple()}.
list_service_topology_edges(Client, ServiceArn)
  when is_map(Client) ->
    list_service_topology_edges(Client, ServiceArn, #{}, #{}).

-spec list_service_topology_edges(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_service_topology_edges_response(), tuple()} |
    {error, any()} |
    {error, list_service_topology_edges_errors(), tuple()}.
list_service_topology_edges(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_topology_edges(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec list_service_topology_edges(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_service_topology_edges_response(), tuple()} |
    {error, any()} |
    {error, list_service_topology_edges_errors(), tuple()}.
list_service_topology_edges(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-service-topology-edges"],
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
        {<<"serviceArn">>, ServiceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists services.
-spec list_services(aws_client:aws_client()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client)
  when is_map(Client) ->
    list_services(Client, #{}, #{}).

-spec list_services(aws_client:aws_client(), map(), map()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_services(Client, QueryMap, HeadersMap, []).

-spec list_services(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-services"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accountId">>, maps:get(<<"accountId">>, QueryMap, undefined)},
        {<<"assessmentStatus">>, maps:get(<<"assessmentStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"ouId">>, maps:get(<<"ouId">>, QueryMap, undefined)},
        {<<"policyArn">>, maps:get(<<"policyArn">>, QueryMap, undefined)},
        {<<"systemArn">>, maps:get(<<"systemArn">>, QueryMap, undefined)},
        {<<"userJourneyId">>, maps:get(<<"userJourneyId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists events for a system.
-spec list_system_events(aws_client:aws_client(), binary() | list()) ->
    {ok, list_system_events_response(), tuple()} |
    {error, any()} |
    {error, list_system_events_errors(), tuple()}.
list_system_events(Client, SystemArn)
  when is_map(Client) ->
    list_system_events(Client, SystemArn, #{}, #{}).

-spec list_system_events(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_system_events_response(), tuple()} |
    {error, any()} |
    {error, list_system_events_errors(), tuple()}.
list_system_events(Client, SystemArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_system_events(Client, SystemArn, QueryMap, HeadersMap, []).

-spec list_system_events(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_system_events_response(), tuple()} |
    {error, any()} |
    {error, list_system_events_errors(), tuple()}.
list_system_events(Client, SystemArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-system-events"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"eventTypes">>, maps:get(<<"eventTypes">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)},
        {<<"systemArn">>, SystemArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists systems.
-spec list_systems(aws_client:aws_client()) ->
    {ok, list_systems_response(), tuple()} |
    {error, any()} |
    {error, list_systems_errors(), tuple()}.
list_systems(Client)
  when is_map(Client) ->
    list_systems(Client, #{}, #{}).

-spec list_systems(aws_client:aws_client(), map(), map()) ->
    {ok, list_systems_response(), tuple()} |
    {error, any()} |
    {error, list_systems_errors(), tuple()}.
list_systems(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_systems(Client, QueryMap, HeadersMap, []).

-spec list_systems(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_systems_response(), tuple()} |
    {error, any()} |
    {error, list_systems_errors(), tuple()}.
list_systems(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-systems"],
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
        {<<"ouId">>, maps:get(<<"ouId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for a resource.
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
    Path = ["/v2/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the events in a test run's timeline.
-spec list_test_run_events(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_test_run_events_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_events_errors(), tuple()}.
list_test_run_events(Client, TestRunId, ServiceArn)
  when is_map(Client) ->
    list_test_run_events(Client, TestRunId, ServiceArn, #{}, #{}).

-spec list_test_run_events(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_test_run_events_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_events_errors(), tuple()}.
list_test_run_events(Client, TestRunId, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_run_events(Client, TestRunId, ServiceArn, QueryMap, HeadersMap, []).

-spec list_test_run_events(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_test_run_events_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_events_errors(), tuple()}.
list_test_run_events(Client, TestRunId, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/test-runs/", aws_util:encode_uri(TestRunId), "/events"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endedAt">>, maps:get(<<"endedAt">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"serviceArn">>, ServiceArn},
        {<<"startedAt">>, maps:get(<<"startedAt">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the monitoring source snapshots captured for a test run,
%% optionally filtered by type.
-spec list_test_run_sources(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_test_run_sources_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_sources_errors(), tuple()}.
list_test_run_sources(Client, TestRunId, ServiceArn)
  when is_map(Client) ->
    list_test_run_sources(Client, TestRunId, ServiceArn, #{}, #{}).

-spec list_test_run_sources(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_test_run_sources_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_sources_errors(), tuple()}.
list_test_run_sources(Client, TestRunId, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_run_sources(Client, TestRunId, ServiceArn, QueryMap, HeadersMap, []).

-spec list_test_run_sources(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_test_run_sources_response(), tuple()} |
    {error, any()} |
    {error, list_test_run_sources_errors(), tuple()}.
list_test_run_sources(Client, TestRunId, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/test-runs/", aws_util:encode_uri(TestRunId), "/sources"],
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
        {<<"serviceArn">>, ServiceArn},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the runs of a test, or all test runs for a service.
-spec list_test_runs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_test_runs_response(), tuple()} |
    {error, any()} |
    {error, list_test_runs_errors(), tuple()}.
list_test_runs(Client, ServiceArn)
  when is_map(Client) ->
    list_test_runs(Client, ServiceArn, #{}, #{}).

-spec list_test_runs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_test_runs_response(), tuple()} |
    {error, any()} |
    {error, list_test_runs_errors(), tuple()}.
list_test_runs(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_runs(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec list_test_runs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_test_runs_response(), tuple()} |
    {error, any()} |
    {error, list_test_runs_errors(), tuple()}.
list_test_runs(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-test-runs"],
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
        {<<"serviceArn">>, ServiceArn},
        {<<"testId">>, maps:get(<<"testId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the monitoring sources attached to a test, optionally filtered
%% by type.
-spec list_test_sources(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_test_sources_response(), tuple()} |
    {error, any()} |
    {error, list_test_sources_errors(), tuple()}.
list_test_sources(Client, TestId, ServiceArn)
  when is_map(Client) ->
    list_test_sources(Client, TestId, ServiceArn, #{}, #{}).

-spec list_test_sources(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_test_sources_response(), tuple()} |
    {error, any()} |
    {error, list_test_sources_errors(), tuple()}.
list_test_sources(Client, TestId, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_sources(Client, TestId, ServiceArn, QueryMap, HeadersMap, []).

-spec list_test_sources(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_test_sources_response(), tuple()} |
    {error, any()} |
    {error, list_test_sources_errors(), tuple()}.
list_test_sources(Client, TestId, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/tests/", aws_util:encode_uri(TestId), "/sources"],
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
        {<<"serviceArn">>, ServiceArn},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the available resilience test templates.
%%
%% A test template is a pre-configured, AWS recommended test that defines
%% which resilience capability to validate.
-spec list_test_templates(aws_client:aws_client()) ->
    {ok, list_test_templates_response(), tuple()} |
    {error, any()} |
    {error, list_test_templates_errors(), tuple()}.
list_test_templates(Client)
  when is_map(Client) ->
    list_test_templates(Client, #{}, #{}).

-spec list_test_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_test_templates_response(), tuple()} |
    {error, any()} |
    {error, list_test_templates_errors(), tuple()}.
list_test_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_templates(Client, QueryMap, HeadersMap, []).

-spec list_test_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_test_templates_response(), tuple()} |
    {error, any()} |
    {error, list_test_templates_errors(), tuple()}.
list_test_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-test-templates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tests configured for a service.
-spec list_tests(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tests_response(), tuple()} |
    {error, any()} |
    {error, list_tests_errors(), tuple()}.
list_tests(Client, ServiceArn)
  when is_map(Client) ->
    list_tests(Client, ServiceArn, #{}, #{}).

-spec list_tests(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tests_response(), tuple()} |
    {error, any()} |
    {error, list_tests_errors(), tuple()}.
list_tests(Client, ServiceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tests(Client, ServiceArn, QueryMap, HeadersMap, []).

-spec list_tests(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tests_response(), tuple()} |
    {error, any()} |
    {error, list_tests_errors(), tuple()}.
list_tests(Client, ServiceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-tests"],
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
        {<<"serviceArn">>, ServiceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists user journeys for a system.
-spec list_user_journeys(aws_client:aws_client(), binary() | list()) ->
    {ok, list_user_journeys_response(), tuple()} |
    {error, any()} |
    {error, list_user_journeys_errors(), tuple()}.
list_user_journeys(Client, SystemArn)
  when is_map(Client) ->
    list_user_journeys(Client, SystemArn, #{}, #{}).

-spec list_user_journeys(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_user_journeys_response(), tuple()} |
    {error, any()} |
    {error, list_user_journeys_errors(), tuple()}.
list_user_journeys(Client, SystemArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_user_journeys(Client, SystemArn, QueryMap, HeadersMap, []).

-spec list_user_journeys(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_user_journeys_response(), tuple()} |
    {error, any()} |
    {error, list_user_journeys_errors(), tuple()}.
list_user_journeys(Client, SystemArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/list-user-journeys"],
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
        {<<"systemArn">>, SystemArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds or updates the monitoring sources on a test.
%%
%% The operation is transactional — either every source is written or the
%% call fails and nothing is written.
-spec put_test_sources(aws_client:aws_client(), put_test_sources_request()) ->
    {ok, put_test_sources_response(), tuple()} |
    {error, any()} |
    {error, put_test_sources_errors(), tuple()}.
put_test_sources(Client, Input) ->
    put_test_sources(Client, Input, []).

-spec put_test_sources(aws_client:aws_client(), put_test_sources_request(), proplists:proplist()) ->
    {ok, put_test_sources_response(), tuple()} |
    {error, any()} |
    {error, put_test_sources_errors(), tuple()}.
put_test_sources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/put-test-sources"],
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

%% @doc Starts a failure mode assessment.
-spec start_failure_mode_assessment(aws_client:aws_client(), start_failure_mode_assessment_request()) ->
    {ok, start_failure_mode_assessment_response(), tuple()} |
    {error, any()} |
    {error, start_failure_mode_assessment_errors(), tuple()}.
start_failure_mode_assessment(Client, Input) ->
    start_failure_mode_assessment(Client, Input, []).

-spec start_failure_mode_assessment(aws_client:aws_client(), start_failure_mode_assessment_request(), proplists:proplist()) ->
    {ok, start_failure_mode_assessment_response(), tuple()} |
    {error, any()} |
    {error, start_failure_mode_assessment_errors(), tuple()}.
start_failure_mode_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/start-failure-mode-assessment"],
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

%% @doc Starts a run of a test.
%%
%% Each run scopes to the current resources in the service and produces a
%% pass or fail outcome.
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
    Path = ["/v2/start-test-run"],
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

%% @doc Stops an in-progress test run.
-spec stop_test_run(aws_client:aws_client(), stop_test_run_request()) ->
    {ok, stop_test_run_response(), tuple()} |
    {error, any()} |
    {error, stop_test_run_errors(), tuple()}.
stop_test_run(Client, Input) ->
    stop_test_run(Client, Input, []).

-spec stop_test_run(aws_client:aws_client(), stop_test_run_request(), proplists:proplist()) ->
    {ok, stop_test_run_response(), tuple()} |
    {error, any()} |
    {error, stop_test_run_errors(), tuple()}.
stop_test_run(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/stop-test-run"],
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

%% @doc Adds tags to a resource.
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
    Path = ["/v2/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes tags from a resource.
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
    Path = ["/v2/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Updates a resilience assertion.
-spec update_assertion(aws_client:aws_client(), update_assertion_request()) ->
    {ok, update_assertion_response(), tuple()} |
    {error, any()} |
    {error, update_assertion_errors(), tuple()}.
update_assertion(Client, Input) ->
    update_assertion(Client, Input, []).

-spec update_assertion(aws_client:aws_client(), update_assertion_request(), proplists:proplist()) ->
    {ok, update_assertion_response(), tuple()} |
    {error, any()} |
    {error, update_assertion_errors(), tuple()}.
update_assertion(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/update-assertion"],
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

%% @doc Updates a dependency classification.
-spec update_dependency(aws_client:aws_client(), update_dependency_request()) ->
    {ok, update_dependency_response(), tuple()} |
    {error, any()} |
    {error, update_dependency_errors(), tuple()}.
update_dependency(Client, Input) ->
    update_dependency(Client, Input, []).

-spec update_dependency(aws_client:aws_client(), update_dependency_request(), proplists:proplist()) ->
    {ok, update_dependency_response(), tuple()} |
    {error, any()} |
    {error, update_dependency_errors(), tuple()}.
update_dependency(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/update-dependency"],
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

%% @doc Updates an existing finding.
-spec update_failure_mode_finding(aws_client:aws_client(), update_failure_mode_finding_request()) ->
    {ok, update_failure_mode_finding_response(), tuple()} |
    {error, any()} |
    {error, update_failure_mode_finding_errors(), tuple()}.
update_failure_mode_finding(Client, Input) ->
    update_failure_mode_finding(Client, Input, []).

-spec update_failure_mode_finding(aws_client:aws_client(), update_failure_mode_finding_request(), proplists:proplist()) ->
    {ok, update_failure_mode_finding_response(), tuple()} |
    {error, any()} |
    {error, update_failure_mode_finding_errors(), tuple()}.
update_failure_mode_finding(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/update-failure-mode-finding"],
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

%% @doc Updates an existing resilience policy.
-spec update_policy(aws_client:aws_client(), update_policy_request()) ->
    {ok, update_policy_response(), tuple()} |
    {error, any()} |
    {error, update_policy_errors(), tuple()}.
update_policy(Client, Input) ->
    update_policy(Client, Input, []).

-spec update_policy(aws_client:aws_client(), update_policy_request(), proplists:proplist()) ->
    {ok, update_policy_response(), tuple()} |
    {error, any()} |
    {error, update_policy_errors(), tuple()}.
update_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/update-policy"],
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

%% @doc Updates an existing service.
-spec update_service(aws_client:aws_client(), update_service_request()) ->
    {ok, update_service_response(), tuple()} |
    {error, any()} |
    {error, update_service_errors(), tuple()}.
update_service(Client, Input) ->
    update_service(Client, Input, []).

-spec update_service(aws_client:aws_client(), update_service_request(), proplists:proplist()) ->
    {ok, update_service_response(), tuple()} |
    {error, any()} |
    {error, update_service_errors(), tuple()}.
update_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/update-service"],
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

%% @doc Updates a service function.
-spec update_service_function(aws_client:aws_client(), update_service_function_request()) ->
    {ok, update_service_function_response(), tuple()} |
    {error, any()} |
    {error, update_service_function_errors(), tuple()}.
update_service_function(Client, Input) ->
    update_service_function(Client, Input, []).

-spec update_service_function(aws_client:aws_client(), update_service_function_request(), proplists:proplist()) ->
    {ok, update_service_function_response(), tuple()} |
    {error, any()} |
    {error, update_service_function_errors(), tuple()}.
update_service_function(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/update-function"],
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

%% @doc Updates an existing system.
-spec update_system(aws_client:aws_client(), update_system_request()) ->
    {ok, update_system_response(), tuple()} |
    {error, any()} |
    {error, update_system_errors(), tuple()}.
update_system(Client, Input) ->
    update_system(Client, Input, []).

-spec update_system(aws_client:aws_client(), update_system_request(), proplists:proplist()) ->
    {ok, update_system_response(), tuple()} |
    {error, any()} |
    {error, update_system_errors(), tuple()}.
update_system(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/update-system"],
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

%% @doc Updates the configuration of an existing test.
-spec update_test(aws_client:aws_client(), update_test_request()) ->
    {ok, update_test_response(), tuple()} |
    {error, any()} |
    {error, update_test_errors(), tuple()}.
update_test(Client, Input) ->
    update_test(Client, Input, []).

-spec update_test(aws_client:aws_client(), update_test_request(), proplists:proplist()) ->
    {ok, update_test_response(), tuple()} |
    {error, any()} |
    {error, update_test_errors(), tuple()}.
update_test(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/update-test"],
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

%% @doc Updates an existing user journey.
-spec update_user_journey(aws_client:aws_client(), update_user_journey_request()) ->
    {ok, update_user_journey_response(), tuple()} |
    {error, any()} |
    {error, update_user_journey_errors(), tuple()}.
update_user_journey(Client, Input) ->
    update_user_journey(Client, Input, []).

-spec update_user_journey(aws_client:aws_client(), update_user_journey_request(), proplists:proplist()) ->
    {ok, update_user_journey_response(), tuple()} |
    {error, any()} |
    {error, update_user_journey_errors(), tuple()}.
update_user_journey(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/update-user-journey"],
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
    Client1 = Client#{service => <<"resiliencehub">>},
    DefaultHost = build_host(<<"resiliencehub">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_RESILIENCEHUBV2">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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

