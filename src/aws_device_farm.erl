%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the AWS Device Farm API documentation, which contains APIs
%% for:
%%
%% Testing on desktop browsers
%%
%% Device Farm makes it possible for you to test your web applications on
%% desktop browsers using
%% Selenium.
%%
%% The APIs for desktop browser testing contain `TestGrid' in their
%% names. For
%% more information, see Testing Web
%% Applications on Selenium with Device Farm:
%% https://docs.aws.amazon.com/devicefarm/latest/testgrid/.
%%
%% Testing on real mobile devices
%%
%% Device Farm makes it possible for you to test apps on physical phones,
%% tablets, and other
%% devices in the cloud. For more information, see the Device Farm Developer
%% Guide: https://docs.aws.amazon.com/devicefarm/latest/developerguide/.
-module(aws_device_farm).

-export([create_device_pool/2,
         create_device_pool/3,
         create_instance_profile/2,
         create_instance_profile/3,
         create_network_profile/2,
         create_network_profile/3,
         create_project/2,
         create_project/3,
         create_remote_access_session/2,
         create_remote_access_session/3,
         create_test_grid_project/2,
         create_test_grid_project/3,
         create_test_grid_url/2,
         create_test_grid_url/3,
         create_upload/2,
         create_upload/3,
         create_vpce_configuration/2,
         create_vpce_configuration/3,
         delete_device_pool/2,
         delete_device_pool/3,
         delete_instance_profile/2,
         delete_instance_profile/3,
         delete_network_profile/2,
         delete_network_profile/3,
         delete_project/2,
         delete_project/3,
         delete_remote_access_session/2,
         delete_remote_access_session/3,
         delete_run/2,
         delete_run/3,
         delete_test_grid_project/2,
         delete_test_grid_project/3,
         delete_upload/2,
         delete_upload/3,
         delete_vpce_configuration/2,
         delete_vpce_configuration/3,
         get_account_settings/2,
         get_account_settings/3,
         get_device/2,
         get_device/3,
         get_device_instance/2,
         get_device_instance/3,
         get_device_pool/2,
         get_device_pool/3,
         get_device_pool_compatibility/2,
         get_device_pool_compatibility/3,
         get_instance_profile/2,
         get_instance_profile/3,
         get_job/2,
         get_job/3,
         get_network_profile/2,
         get_network_profile/3,
         get_offering_status/2,
         get_offering_status/3,
         get_project/2,
         get_project/3,
         get_remote_access_session/2,
         get_remote_access_session/3,
         get_run/2,
         get_run/3,
         get_suite/2,
         get_suite/3,
         get_test/2,
         get_test/3,
         get_test_grid_project/2,
         get_test_grid_project/3,
         get_test_grid_session/2,
         get_test_grid_session/3,
         get_upload/2,
         get_upload/3,
         get_vpce_configuration/2,
         get_vpce_configuration/3,
         install_to_remote_access_session/2,
         install_to_remote_access_session/3,
         list_artifacts/2,
         list_artifacts/3,
         list_device_instances/2,
         list_device_instances/3,
         list_device_pools/2,
         list_device_pools/3,
         list_devices/2,
         list_devices/3,
         list_instance_profiles/2,
         list_instance_profiles/3,
         list_jobs/2,
         list_jobs/3,
         list_network_profiles/2,
         list_network_profiles/3,
         list_offering_promotions/2,
         list_offering_promotions/3,
         list_offering_transactions/2,
         list_offering_transactions/3,
         list_offerings/2,
         list_offerings/3,
         list_projects/2,
         list_projects/3,
         list_remote_access_sessions/2,
         list_remote_access_sessions/3,
         list_runs/2,
         list_runs/3,
         list_samples/2,
         list_samples/3,
         list_suites/2,
         list_suites/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_test_grid_projects/2,
         list_test_grid_projects/3,
         list_test_grid_session_actions/2,
         list_test_grid_session_actions/3,
         list_test_grid_session_artifacts/2,
         list_test_grid_session_artifacts/3,
         list_test_grid_sessions/2,
         list_test_grid_sessions/3,
         list_tests/2,
         list_tests/3,
         list_unique_problems/2,
         list_unique_problems/3,
         list_uploads/2,
         list_uploads/3,
         list_vpce_configurations/2,
         list_vpce_configurations/3,
         purchase_offering/2,
         purchase_offering/3,
         renew_offering/2,
         renew_offering/3,
         schedule_run/2,
         schedule_run/3,
         stop_job/2,
         stop_job/3,
         stop_remote_access_session/2,
         stop_remote_access_session/3,
         stop_run/2,
         stop_run/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_device_instance/2,
         update_device_instance/3,
         update_device_pool/2,
         update_device_pool/3,
         update_instance_profile/2,
         update_instance_profile/3,
         update_network_profile/2,
         update_network_profile/3,
         update_project/2,
         update_project/3,
         update_test_grid_project/2,
         update_test_grid_project/3,
         update_upload/2,
         update_upload/3,
         update_vpce_configuration/2,
         update_vpce_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% update_test_grid_project_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"projectArn">> := string(),
%%   <<"vpcConfig">> => test_grid_vpc_config()
%% }
-type update_test_grid_project_request() :: #{binary() => any()}.

%% Example:
%% device_pool() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => string(),
%%   <<"maxDevices">> => integer(),
%%   <<"name">> => string(),
%%   <<"rules">> => list(rule()),
%%   <<"type">> => list(any())
%% }
-type device_pool() :: #{binary() => any()}.

%% Example:
%% create_vpce_configuration_result() :: #{
%%   <<"vpceConfiguration">> => vpce_configuration()
%% }
-type create_vpce_configuration_result() :: #{binary() => any()}.

%% Example:
%% create_remote_access_session_configuration() :: #{
%%   <<"billingMethod">> => list(any()),
%%   <<"deviceProxy">> => device_proxy(),
%%   <<"vpceConfigurationArns">> => list(string())
%% }
-type create_remote_access_session_configuration() :: #{binary() => any()}.

%% Example:
%% create_network_profile_request() :: #{
%%   <<"description">> => string(),
%%   <<"downlinkBandwidthBits">> => float(),
%%   <<"downlinkDelayMs">> => float(),
%%   <<"downlinkJitterMs">> => float(),
%%   <<"downlinkLossPercent">> => integer(),
%%   <<"name">> := string(),
%%   <<"projectArn">> := string(),
%%   <<"type">> => list(any()),
%%   <<"uplinkBandwidthBits">> => float(),
%%   <<"uplinkDelayMs">> => float(),
%%   <<"uplinkJitterMs">> => float(),
%%   <<"uplinkLossPercent">> => integer()
%% }
-type create_network_profile_request() :: #{binary() => any()}.

%% Example:
%% list_tests_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tests">> => list(test())
%% }
-type list_tests_result() :: #{binary() => any()}.

%% Example:
%% list_instance_profiles_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_instance_profiles_request() :: #{binary() => any()}.

%% Example:
%% create_device_pool_request() :: #{
%%   <<"description">> => string(),
%%   <<"maxDevices">> => integer(),
%%   <<"name">> := string(),
%%   <<"projectArn">> := string(),
%%   <<"rules">> := list(rule())
%% }
-type create_device_pool_request() :: #{binary() => any()}.

%% Example:
%% get_suite_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_suite_request() :: #{binary() => any()}.

%% Example:
%% get_upload_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_upload_request() :: #{binary() => any()}.

%% Example:
%% list_devices_request() :: #{
%%   <<"arn">> => string(),
%%   <<"filters">> => list(device_filter()),
%%   <<"nextToken">> => string()
%% }
-type list_devices_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_remote_access_session_request() :: #{
%%   <<"clientId">> => string(),
%%   <<"configuration">> => create_remote_access_session_configuration(),
%%   <<"deviceArn">> := string(),
%%   <<"instanceArn">> => string(),
%%   <<"interactionMode">> => list(any()),
%%   <<"name">> => string(),
%%   <<"projectArn">> := string(),
%%   <<"remoteDebugEnabled">> => boolean(),
%%   <<"remoteRecordAppArn">> => string(),
%%   <<"remoteRecordEnabled">> => boolean(),
%%   <<"skipAppResign">> => boolean(),
%%   <<"sshPublicKey">> => string()
%% }
-type create_remote_access_session_request() :: #{binary() => any()}.

%% Example:
%% instance_profile() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => string(),
%%   <<"excludeAppPackagesFromCleanup">> => list(string()),
%%   <<"name">> => string(),
%%   <<"packageCleanup">> => boolean(),
%%   <<"rebootAfterUse">> => boolean()
%% }
-type instance_profile() :: #{binary() => any()}.

%% Example:
%% list_test_grid_session_actions_request() :: #{
%%   <<"maxResult">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sessionArn">> := string()
%% }
-type list_test_grid_session_actions_request() :: #{binary() => any()}.

%% Example:
%% list_test_grid_session_artifacts_request() :: #{
%%   <<"maxResult">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sessionArn">> := string(),
%%   <<"type">> => list(any())
%% }
-type list_test_grid_session_artifacts_request() :: #{binary() => any()}.

%% Example:
%% delete_upload_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_upload_request() :: #{binary() => any()}.

%% Example:
%% get_run_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_run_request() :: #{binary() => any()}.

%% Example:
%% delete_remote_access_session_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_remote_access_session_request() :: #{binary() => any()}.

%% Example:
%% suite() :: #{
%%   <<"arn">> => string(),
%%   <<"counters">> => counters(),
%%   <<"created">> => non_neg_integer(),
%%   <<"deviceMinutes">> => device_minutes(),
%%   <<"message">> => string(),
%%   <<"name">> => string(),
%%   <<"result">> => list(any()),
%%   <<"started">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"stopped">> => non_neg_integer(),
%%   <<"type">> => list(any())
%% }
-type suite() :: #{binary() => any()}.

%% Example:
%% tag_operation_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type tag_operation_exception() :: #{binary() => any()}.

%% Example:
%% list_unique_problems_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_unique_problems_request() :: #{binary() => any()}.

%% Example:
%% list_jobs_result() :: #{
%%   <<"jobs">> => list(job()),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_result() :: #{binary() => any()}.

%% Example:
%% create_vpce_configuration_request() :: #{
%%   <<"serviceDnsName">> := string(),
%%   <<"vpceConfigurationDescription">> => string(),
%%   <<"vpceConfigurationName">> := string(),
%%   <<"vpceServiceName">> := string()
%% }
-type create_vpce_configuration_request() :: #{binary() => any()}.

%% Example:
%% not_eligible_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_eligible_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% schedule_run_request() :: #{
%%   <<"appArn">> => string(),
%%   <<"configuration">> => schedule_run_configuration(),
%%   <<"devicePoolArn">> => string(),
%%   <<"deviceSelectionConfiguration">> => device_selection_configuration(),
%%   <<"executionConfiguration">> => execution_configuration(),
%%   <<"name">> => string(),
%%   <<"projectArn">> := string(),
%%   <<"test">> := schedule_run_test()
%% }
-type schedule_run_request() :: #{binary() => any()}.

%% Example:
%% renew_offering_request() :: #{
%%   <<"offeringId">> := string(),
%%   <<"quantity">> := integer()
%% }
-type renew_offering_request() :: #{binary() => any()}.

%% Example:
%% update_upload_result() :: #{
%%   <<"upload">> => upload()
%% }
-type update_upload_result() :: #{binary() => any()}.

%% Example:
%% list_network_profiles_result() :: #{
%%   <<"networkProfiles">> => list(network_profile()),
%%   <<"nextToken">> => string()
%% }
-type list_network_profiles_result() :: #{binary() => any()}.

%% Example:
%% get_account_settings_request() :: #{

%% }
-type get_account_settings_request() :: #{binary() => any()}.

%% Example:
%% list_offering_promotions_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"offeringPromotions">> => list(offering_promotion())
%% }
-type list_offering_promotions_result() :: #{binary() => any()}.

%% Example:
%% monetary_amount() :: #{
%%   <<"amount">> => float(),
%%   <<"currencyCode">> => list(any())
%% }
-type monetary_amount() :: #{binary() => any()}.

%% Example:
%% list_jobs_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_request() :: #{binary() => any()}.

%% Example:
%% schedule_run_result() :: #{
%%   <<"run">> => run()
%% }
-type schedule_run_result() :: #{binary() => any()}.

%% Example:
%% list_devices_result() :: #{
%%   <<"devices">> => list(device()),
%%   <<"nextToken">> => string()
%% }
-type list_devices_result() :: #{binary() => any()}.

%% Example:
%% delete_upload_result() :: #{

%% }
-type delete_upload_result() :: #{binary() => any()}.

%% Example:
%% device_selection_configuration() :: #{
%%   <<"filters">> => list(device_filter()),
%%   <<"maxDevices">> => integer()
%% }
-type device_selection_configuration() :: #{binary() => any()}.

%% Example:
%% get_test_grid_session_request() :: #{
%%   <<"projectArn">> => string(),
%%   <<"sessionArn">> => string(),
%%   <<"sessionId">> => string()
%% }
-type get_test_grid_session_request() :: #{binary() => any()}.

%% Example:
%% list_offerings_request() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_offerings_request() :: #{binary() => any()}.

%% Example:
%% delete_project_result() :: #{

%% }
-type delete_project_result() :: #{binary() => any()}.

%% Example:
%% get_remote_access_session_result() :: #{
%%   <<"remoteAccessSession">> => remote_access_session()
%% }
-type get_remote_access_session_result() :: #{binary() => any()}.

%% Example:
%% delete_network_profile_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_network_profile_request() :: #{binary() => any()}.

%% Example:
%% get_vpce_configuration_result() :: #{
%%   <<"vpceConfiguration">> => vpce_configuration()
%% }
-type get_vpce_configuration_result() :: #{binary() => any()}.

%% Example:
%% get_project_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_project_request() :: #{binary() => any()}.

%% Example:
%% recurring_charge() :: #{
%%   <<"cost">> => monetary_amount(),
%%   <<"frequency">> => list(any())
%% }
-type recurring_charge() :: #{binary() => any()}.

%% Example:
%% delete_instance_profile_result() :: #{

%% }
-type delete_instance_profile_result() :: #{binary() => any()}.

%% Example:
%% update_device_instance_request() :: #{
%%   <<"arn">> := string(),
%%   <<"labels">> => list(string()),
%%   <<"profileArn">> => string()
%% }
-type update_device_instance_request() :: #{binary() => any()}.

%% Example:
%% get_instance_profile_result() :: #{
%%   <<"instanceProfile">> => instance_profile()
%% }
-type get_instance_profile_result() :: #{binary() => any()}.

%% Example:
%% create_instance_profile_result() :: #{
%%   <<"instanceProfile">> => instance_profile()
%% }
-type create_instance_profile_result() :: #{binary() => any()}.

%% Example:
%% invalid_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_operation_exception() :: #{binary() => any()}.

%% Example:
%% get_device_instance_result() :: #{
%%   <<"deviceInstance">> => device_instance()
%% }
-type get_device_instance_result() :: #{binary() => any()}.

%% Example:
%% stop_job_request() :: #{
%%   <<"arn">> := string()
%% }
-type stop_job_request() :: #{binary() => any()}.

%% Example:
%% vpce_configuration() :: #{
%%   <<"arn">> => string(),
%%   <<"serviceDnsName">> => string(),
%%   <<"vpceConfigurationDescription">> => string(),
%%   <<"vpceConfigurationName">> => string(),
%%   <<"vpceServiceName">> => string()
%% }
-type vpce_configuration() :: #{binary() => any()}.

%% Example:
%% install_to_remote_access_session_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"remoteAccessSessionArn">> := string()
%% }
-type install_to_remote_access_session_request() :: #{binary() => any()}.

%% Example:
%% get_offering_status_result() :: #{
%%   <<"current">> => map(),
%%   <<"nextPeriod">> => map(),
%%   <<"nextToken">> => string()
%% }
-type get_offering_status_result() :: #{binary() => any()}.

%% Example:
%% delete_vpce_configuration_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_vpce_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_uploads_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"type">> => list(any())
%% }
-type list_uploads_request() :: #{binary() => any()}.

%% Example:
%% offering_status() :: #{
%%   <<"effectiveOn">> => non_neg_integer(),
%%   <<"offering">> => offering(),
%%   <<"quantity">> => integer(),
%%   <<"type">> => list(any())
%% }
-type offering_status() :: #{binary() => any()}.

%% Example:
%% list_unique_problems_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"uniqueProblems">> => map()
%% }
-type list_unique_problems_result() :: #{binary() => any()}.

%% Example:
%% list_remote_access_sessions_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_remote_access_sessions_request() :: #{binary() => any()}.

%% Example:
%% tag_policy_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type tag_policy_exception() :: #{binary() => any()}.

%% Example:
%% list_instance_profiles_result() :: #{
%%   <<"instanceProfiles">> => list(instance_profile()),
%%   <<"nextToken">> => string()
%% }
-type list_instance_profiles_result() :: #{binary() => any()}.

%% Example:
%% create_device_pool_result() :: #{
%%   <<"devicePool">> => device_pool()
%% }
-type create_device_pool_result() :: #{binary() => any()}.

%% Example:
%% internal_service_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_upload_result() :: #{
%%   <<"upload">> => upload()
%% }
-type get_upload_result() :: #{binary() => any()}.

%% Example:
%% test() :: #{
%%   <<"arn">> => string(),
%%   <<"counters">> => counters(),
%%   <<"created">> => non_neg_integer(),
%%   <<"deviceMinutes">> => device_minutes(),
%%   <<"message">> => string(),
%%   <<"name">> => string(),
%%   <<"result">> => list(any()),
%%   <<"started">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"stopped">> => non_neg_integer(),
%%   <<"type">> => list(any())
%% }
-type test() :: #{binary() => any()}.

%% Example:
%% delete_device_pool_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_device_pool_request() :: #{binary() => any()}.

%% Example:
%% test_grid_vpc_config() :: #{
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcId">> => string()
%% }
-type test_grid_vpc_config() :: #{binary() => any()}.

%% Example:
%% upload() :: #{
%%   <<"arn">> => string(),
%%   <<"category">> => list(any()),
%%   <<"contentType">> => string(),
%%   <<"created">> => non_neg_integer(),
%%   <<"message">> => string(),
%%   <<"metadata">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"url">> => string()
%% }
-type upload() :: #{binary() => any()}.

%% Example:
%% network_profile() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => string(),
%%   <<"downlinkBandwidthBits">> => float(),
%%   <<"downlinkDelayMs">> => float(),
%%   <<"downlinkJitterMs">> => float(),
%%   <<"downlinkLossPercent">> => integer(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any()),
%%   <<"uplinkBandwidthBits">> => float(),
%%   <<"uplinkDelayMs">> => float(),
%%   <<"uplinkJitterMs">> => float(),
%%   <<"uplinkLossPercent">> => integer()
%% }
-type network_profile() :: #{binary() => any()}.

%% Example:
%% delete_instance_profile_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_instance_profile_request() :: #{binary() => any()}.

%% Example:
%% schedule_run_configuration() :: #{
%%   <<"auxiliaryApps">> => list(string()),
%%   <<"billingMethod">> => list(any()),
%%   <<"customerArtifactPaths">> => customer_artifact_paths(),
%%   <<"deviceProxy">> => device_proxy(),
%%   <<"extraDataPackageArn">> => string(),
%%   <<"locale">> => string(),
%%   <<"location">> => location(),
%%   <<"networkProfileArn">> => string(),
%%   <<"radios">> => radios(),
%%   <<"vpceConfigurationArns">> => list(string())
%% }
-type schedule_run_configuration() :: #{binary() => any()}.

%% Example:
%% create_instance_profile_request() :: #{
%%   <<"description">> => string(),
%%   <<"excludeAppPackagesFromCleanup">> => list(string()),
%%   <<"name">> := string(),
%%   <<"packageCleanup">> => boolean(),
%%   <<"rebootAfterUse">> => boolean()
%% }
-type create_instance_profile_request() :: #{binary() => any()}.

%% Example:
%% list_device_pools_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"type">> => list(any())
%% }
-type list_device_pools_request() :: #{binary() => any()}.

%% Example:
%% unique_problem() :: #{
%%   <<"message">> => string(),
%%   <<"problems">> => list(problem())
%% }
-type unique_problem() :: #{binary() => any()}.

%% Example:
%% list_network_profiles_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"type">> => list(any())
%% }
-type list_network_profiles_request() :: #{binary() => any()}.

%% Example:
%% get_job_result() :: #{
%%   <<"job">> => job()
%% }
-type get_job_result() :: #{binary() => any()}.

%% Example:
%% delete_vpce_configuration_result() :: #{

%% }
-type delete_vpce_configuration_result() :: #{binary() => any()}.

%% Example:
%% list_tests_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_tests_request() :: #{binary() => any()}.

%% Example:
%% counters() :: #{
%%   <<"errored">> => integer(),
%%   <<"failed">> => integer(),
%%   <<"passed">> => integer(),
%%   <<"skipped">> => integer(),
%%   <<"stopped">> => integer(),
%%   <<"total">> => integer(),
%%   <<"warned">> => integer()
%% }
-type counters() :: #{binary() => any()}.

%% Example:
%% get_network_profile_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_network_profile_request() :: #{binary() => any()}.

%% Example:
%% radios() :: #{
%%   <<"bluetooth">> => boolean(),
%%   <<"gps">> => boolean(),
%%   <<"nfc">> => boolean(),
%%   <<"wifi">> => boolean()
%% }
-type radios() :: #{binary() => any()}.

%% Example:
%% update_vpce_configuration_request() :: #{
%%   <<"arn">> := string(),
%%   <<"serviceDnsName">> => string(),
%%   <<"vpceConfigurationDescription">> => string(),
%%   <<"vpceConfigurationName">> => string(),
%%   <<"vpceServiceName">> => string()
%% }
-type update_vpce_configuration_request() :: #{binary() => any()}.

%% Example:
%% schedule_run_test() :: #{
%%   <<"filter">> => string(),
%%   <<"parameters">> => map(),
%%   <<"testPackageArn">> => string(),
%%   <<"testSpecArn">> => string(),
%%   <<"type">> => list(any())
%% }
-type schedule_run_test() :: #{binary() => any()}.

%% Example:
%% get_instance_profile_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_instance_profile_request() :: #{binary() => any()}.

%% Example:
%% delete_device_pool_result() :: #{

%% }
-type delete_device_pool_result() :: #{binary() => any()}.

%% Example:
%% get_project_result() :: #{
%%   <<"project">> => project()
%% }
-type get_project_result() :: #{binary() => any()}.

%% Example:
%% trial_minutes() :: #{
%%   <<"remaining">> => float(),
%%   <<"total">> => float()
%% }
-type trial_minutes() :: #{binary() => any()}.

%% Example:
%% update_instance_profile_result() :: #{
%%   <<"instanceProfile">> => instance_profile()
%% }
-type update_instance_profile_result() :: #{binary() => any()}.

%% Example:
%% list_samples_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"samples">> => list(sample())
%% }
-type list_samples_result() :: #{binary() => any()}.

%% Example:
%% get_suite_result() :: #{
%%   <<"suite">> => suite()
%% }
-type get_suite_result() :: #{binary() => any()}.

%% Example:
%% list_test_grid_projects_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testGridProjects">> => list(test_grid_project())
%% }
-type list_test_grid_projects_result() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% get_offering_status_request() :: #{
%%   <<"nextToken">> => string()
%% }
-type get_offering_status_request() :: #{binary() => any()}.

%% Example:
%% list_offering_transactions_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"offeringTransactions">> => list(offering_transaction())
%% }
-type list_offering_transactions_result() :: #{binary() => any()}.

%% Example:
%% project() :: #{
%%   <<"arn">> => string(),
%%   <<"created">> => non_neg_integer(),
%%   <<"defaultJobTimeoutMinutes">> => integer(),
%%   <<"name">> => string(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type project() :: #{binary() => any()}.

%% Example:
%% test_grid_session_action() :: #{
%%   <<"action">> => string(),
%%   <<"duration">> => float(),
%%   <<"requestMethod">> => string(),
%%   <<"started">> => non_neg_integer(),
%%   <<"statusCode">> => string()
%% }
-type test_grid_session_action() :: #{binary() => any()}.

%% Example:
%% cannot_delete_exception() :: #{
%%   <<"message">> => string()
%% }
-type cannot_delete_exception() :: #{binary() => any()}.

%% Example:
%% get_device_pool_compatibility_result() :: #{
%%   <<"compatibleDevices">> => list(device_pool_compatibility_result()),
%%   <<"incompatibleDevices">> => list(device_pool_compatibility_result())
%% }
-type get_device_pool_compatibility_result() :: #{binary() => any()}.

%% Example:
%% get_device_pool_compatibility_request() :: #{
%%   <<"appArn">> => string(),
%%   <<"configuration">> => schedule_run_configuration(),
%%   <<"devicePoolArn">> := string(),
%%   <<"projectArn">> => string(),
%%   <<"test">> => schedule_run_test(),
%%   <<"testType">> => list(any())
%% }
-type get_device_pool_compatibility_request() :: #{binary() => any()}.

%% Example:
%% offering_transaction() :: #{
%%   <<"cost">> => monetary_amount(),
%%   <<"createdOn">> => non_neg_integer(),
%%   <<"offeringPromotionId">> => string(),
%%   <<"offeringStatus">> => offering_status(),
%%   <<"transactionId">> => string()
%% }
-type offering_transaction() :: #{binary() => any()}.

%% Example:
%% test_grid_project() :: #{
%%   <<"arn">> => string(),
%%   <<"created">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"vpcConfig">> => test_grid_vpc_config()
%% }
-type test_grid_project() :: #{binary() => any()}.

%% Example:
%% purchase_offering_result() :: #{
%%   <<"offeringTransaction">> => offering_transaction()
%% }
-type purchase_offering_result() :: #{binary() => any()}.

%% Example:
%% update_vpce_configuration_result() :: #{
%%   <<"vpceConfiguration">> => vpce_configuration()
%% }
-type update_vpce_configuration_result() :: #{binary() => any()}.

%% Example:
%% get_remote_access_session_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_remote_access_session_request() :: #{binary() => any()}.

%% Example:
%% c_p_u() :: #{
%%   <<"architecture">> => string(),
%%   <<"clock">> => float(),
%%   <<"frequency">> => string()
%% }
-type c_p_u() :: #{binary() => any()}.

%% Example:
%% get_run_result() :: #{
%%   <<"run">> => run()
%% }
-type get_run_result() :: #{binary() => any()}.

%% Example:
%% create_test_grid_project_result() :: #{
%%   <<"testGridProject">> => test_grid_project()
%% }
-type create_test_grid_project_result() :: #{binary() => any()}.

%% Example:
%% list_device_instances_result() :: #{
%%   <<"deviceInstances">> => list(device_instance()),
%%   <<"nextToken">> => string()
%% }
-type list_device_instances_result() :: #{binary() => any()}.

%% Example:
%% list_runs_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"runs">> => list(run())
%% }
-type list_runs_result() :: #{binary() => any()}.

%% Example:
%% renew_offering_result() :: #{
%%   <<"offeringTransaction">> => offering_transaction()
%% }
-type renew_offering_result() :: #{binary() => any()}.

%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_test_grid_project_request() :: #{
%%   <<"projectArn">> := string()
%% }
-type delete_test_grid_project_request() :: #{binary() => any()}.

%% Example:
%% sample() :: #{
%%   <<"arn">> => string(),
%%   <<"type">> => list(any()),
%%   <<"url">> => string()
%% }
-type sample() :: #{binary() => any()}.

%% Example:
%% update_device_pool_request() :: #{
%%   <<"arn">> := string(),
%%   <<"clearMaxDevices">> => boolean(),
%%   <<"description">> => string(),
%%   <<"maxDevices">> => integer(),
%%   <<"name">> => string(),
%%   <<"rules">> => list(rule())
%% }
-type update_device_pool_request() :: #{binary() => any()}.

%% Example:
%% vpc_config() :: #{
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcId">> => string()
%% }
-type vpc_config() :: #{binary() => any()}.

%% Example:
%% list_test_grid_session_artifacts_result() :: #{
%%   <<"artifacts">> => list(test_grid_session_artifact()),
%%   <<"nextToken">> => string()
%% }
-type list_test_grid_session_artifacts_result() :: #{binary() => any()}.

%% Example:
%% get_device_result() :: #{
%%   <<"device">> => device()
%% }
-type get_device_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% problem_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string()
%% }
-type problem_detail() :: #{binary() => any()}.

%% Example:
%% create_network_profile_result() :: #{
%%   <<"networkProfile">> => network_profile()
%% }
-type create_network_profile_result() :: #{binary() => any()}.

%% Example:
%% location() :: #{
%%   <<"latitude">> => float(),
%%   <<"longitude">> => float()
%% }
-type location() :: #{binary() => any()}.

%% Example:
%% execution_configuration() :: #{
%%   <<"accountsCleanup">> => boolean(),
%%   <<"appPackagesCleanup">> => boolean(),
%%   <<"jobTimeoutMinutes">> => integer(),
%%   <<"skipAppResign">> => boolean(),
%%   <<"videoCapture">> => boolean()
%% }
-type execution_configuration() :: #{binary() => any()}.

%% Example:
%% list_offering_transactions_request() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_offering_transactions_request() :: #{binary() => any()}.

%% Example:
%% service_account_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_account_exception() :: #{binary() => any()}.

%% Example:
%% get_test_grid_project_request() :: #{
%%   <<"projectArn">> := string()
%% }
-type get_test_grid_project_request() :: #{binary() => any()}.

%% Example:
%% install_to_remote_access_session_result() :: #{
%%   <<"appUpload">> => upload()
%% }
-type install_to_remote_access_session_result() :: #{binary() => any()}.

%% Example:
%% list_samples_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_samples_request() :: #{binary() => any()}.

%% Example:
%% test_grid_session_artifact() :: #{
%%   <<"filename">> => string(),
%%   <<"type">> => list(any()),
%%   <<"url">> => string()
%% }
-type test_grid_session_artifact() :: #{binary() => any()}.

%% Example:
%% rule() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"value">> => string()
%% }
-type rule() :: #{binary() => any()}.

%% Example:
%% delete_run_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_run_request() :: #{binary() => any()}.

%% Example:
%% device_pool_compatibility_result() :: #{
%%   <<"compatible">> => boolean(),
%%   <<"device">> => device(),
%%   <<"incompatibilityMessages">> => list(incompatibility_message())
%% }
-type device_pool_compatibility_result() :: #{binary() => any()}.

%% Example:
%% get_device_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_device_request() :: #{binary() => any()}.

%% Example:
%% device_selection_result() :: #{
%%   <<"filters">> => list(device_filter()),
%%   <<"matchedDevicesCount">> => integer(),
%%   <<"maxDevices">> => integer()
%% }
-type device_selection_result() :: #{binary() => any()}.

%% Example:
%% create_upload_result() :: #{
%%   <<"upload">> => upload()
%% }
-type create_upload_result() :: #{binary() => any()}.

%% Example:
%% create_test_grid_url_result() :: #{
%%   <<"expires">> => non_neg_integer(),
%%   <<"url">> => string()
%% }
-type create_test_grid_url_result() :: #{binary() => any()}.

%% Example:
%% get_network_profile_result() :: #{
%%   <<"networkProfile">> => network_profile()
%% }
-type get_network_profile_result() :: #{binary() => any()}.

%% Example:
%% stop_remote_access_session_result() :: #{
%%   <<"remoteAccessSession">> => remote_access_session()
%% }
-type stop_remote_access_session_result() :: #{binary() => any()}.

%% Example:
%% update_device_instance_result() :: #{
%%   <<"deviceInstance">> => device_instance()
%% }
-type update_device_instance_result() :: #{binary() => any()}.

%% Example:
%% delete_remote_access_session_result() :: #{

%% }
-type delete_remote_access_session_result() :: #{binary() => any()}.

%% Example:
%% stop_run_result() :: #{
%%   <<"run">> => run()
%% }
-type stop_run_result() :: #{binary() => any()}.

%% Example:
%% list_offering_promotions_request() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_offering_promotions_request() :: #{binary() => any()}.

%% Example:
%% update_project_request() :: #{
%%   <<"arn">> := string(),
%%   <<"defaultJobTimeoutMinutes">> => integer(),
%%   <<"name">> => string(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type update_project_request() :: #{binary() => any()}.

%% Example:
%% test_grid_session() :: #{
%%   <<"arn">> => string(),
%%   <<"billingMinutes">> => float(),
%%   <<"created">> => non_neg_integer(),
%%   <<"ended">> => non_neg_integer(),
%%   <<"seleniumProperties">> => string(),
%%   <<"status">> => list(any())
%% }
-type test_grid_session() :: #{binary() => any()}.

%% Example:
%% update_upload_request() :: #{
%%   <<"arn">> := string(),
%%   <<"contentType">> => string(),
%%   <<"editContent">> => boolean(),
%%   <<"name">> => string()
%% }
-type update_upload_request() :: #{binary() => any()}.

%% Example:
%% stop_run_request() :: #{
%%   <<"arn">> := string()
%% }
-type stop_run_request() :: #{binary() => any()}.

%% Example:
%% delete_test_grid_project_result() :: #{

%% }
-type delete_test_grid_project_result() :: #{binary() => any()}.

%% Example:
%% incompatibility_message() :: #{
%%   <<"message">> => string(),
%%   <<"type">> => list(any())
%% }
-type incompatibility_message() :: #{binary() => any()}.

%% Example:
%% problem() :: #{
%%   <<"device">> => device(),
%%   <<"job">> => problem_detail(),
%%   <<"message">> => string(),
%%   <<"result">> => list(any()),
%%   <<"run">> => problem_detail(),
%%   <<"suite">> => problem_detail(),
%%   <<"test">> => problem_detail()
%% }
-type problem() :: #{binary() => any()}.

%% Example:
%% delete_run_result() :: #{

%% }
-type delete_run_result() :: #{binary() => any()}.

%% Example:
%% update_test_grid_project_result() :: #{
%%   <<"testGridProject">> => test_grid_project()
%% }
-type update_test_grid_project_result() :: #{binary() => any()}.

%% Example:
%% remote_access_session() :: #{
%%   <<"arn">> => string(),
%%   <<"billingMethod">> => list(any()),
%%   <<"clientId">> => string(),
%%   <<"created">> => non_neg_integer(),
%%   <<"device">> => device(),
%%   <<"deviceMinutes">> => device_minutes(),
%%   <<"deviceProxy">> => device_proxy(),
%%   <<"deviceUdid">> => string(),
%%   <<"endpoint">> => string(),
%%   <<"hostAddress">> => string(),
%%   <<"instanceArn">> => string(),
%%   <<"interactionMode">> => list(any()),
%%   <<"message">> => string(),
%%   <<"name">> => string(),
%%   <<"remoteDebugEnabled">> => boolean(),
%%   <<"remoteRecordAppArn">> => string(),
%%   <<"remoteRecordEnabled">> => boolean(),
%%   <<"result">> => list(any()),
%%   <<"skipAppResign">> => boolean(),
%%   <<"started">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"stopped">> => non_neg_integer(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type remote_access_session() :: #{binary() => any()}.

%% Example:
%% list_test_grid_sessions_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testGridSessions">> => list(test_grid_session())
%% }
-type list_test_grid_sessions_result() :: #{binary() => any()}.

%% Example:
%% customer_artifact_paths() :: #{
%%   <<"androidPaths">> => list(string()),
%%   <<"deviceHostPaths">> => list(string()),
%%   <<"iosPaths">> => list(string())
%% }
-type customer_artifact_paths() :: #{binary() => any()}.

%% Example:
%% device_instance() :: #{
%%   <<"arn">> => string(),
%%   <<"deviceArn">> => string(),
%%   <<"instanceProfile">> => instance_profile(),
%%   <<"labels">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"udid">> => string()
%% }
-type device_instance() :: #{binary() => any()}.

%% Example:
%% create_remote_access_session_result() :: #{
%%   <<"remoteAccessSession">> => remote_access_session()
%% }
-type create_remote_access_session_result() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_device_pool_result() :: #{
%%   <<"devicePool">> => device_pool()
%% }
-type get_device_pool_result() :: #{binary() => any()}.

%% Example:
%% get_device_pool_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_device_pool_request() :: #{binary() => any()}.

%% Example:
%% update_network_profile_result() :: #{
%%   <<"networkProfile">> => network_profile()
%% }
-type update_network_profile_result() :: #{binary() => any()}.

%% Example:
%% account_settings() :: #{
%%   <<"awsAccountNumber">> => string(),
%%   <<"defaultJobTimeoutMinutes">> => integer(),
%%   <<"maxJobTimeoutMinutes">> => integer(),
%%   <<"maxSlots">> => map(),
%%   <<"skipAppResign">> => boolean(),
%%   <<"trialMinutes">> => trial_minutes(),
%%   <<"unmeteredDevices">> => map(),
%%   <<"unmeteredRemoteAccessDevices">> => map()
%% }
-type account_settings() :: #{binary() => any()}.

%% Example:
%% update_device_pool_result() :: #{
%%   <<"devicePool">> => device_pool()
%% }
-type update_device_pool_result() :: #{binary() => any()}.

%% Example:
%% update_network_profile_request() :: #{
%%   <<"arn">> := string(),
%%   <<"description">> => string(),
%%   <<"downlinkBandwidthBits">> => float(),
%%   <<"downlinkDelayMs">> => float(),
%%   <<"downlinkJitterMs">> => float(),
%%   <<"downlinkLossPercent">> => integer(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any()),
%%   <<"uplinkBandwidthBits">> => float(),
%%   <<"uplinkDelayMs">> => float(),
%%   <<"uplinkJitterMs">> => float(),
%%   <<"uplinkLossPercent">> => integer()
%% }
-type update_network_profile_request() :: #{binary() => any()}.

%% Example:
%% create_upload_request() :: #{
%%   <<"contentType">> => string(),
%%   <<"name">> := string(),
%%   <<"projectArn">> := string(),
%%   <<"type">> := list(any())
%% }
-type create_upload_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% idempotency_exception() :: #{
%%   <<"message">> => string()
%% }
-type idempotency_exception() :: #{binary() => any()}.

%% Example:
%% job() :: #{
%%   <<"arn">> => string(),
%%   <<"counters">> => counters(),
%%   <<"created">> => non_neg_integer(),
%%   <<"device">> => device(),
%%   <<"deviceMinutes">> => device_minutes(),
%%   <<"instanceArn">> => string(),
%%   <<"message">> => string(),
%%   <<"name">> => string(),
%%   <<"result">> => list(any()),
%%   <<"started">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"stopped">> => non_neg_integer(),
%%   <<"type">> => list(any()),
%%   <<"videoCapture">> => boolean(),
%%   <<"videoEndpoint">> => string()
%% }
-type job() :: #{binary() => any()}.

%% Example:
%% list_artifacts_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"type">> := list(any())
%% }
-type list_artifacts_request() :: #{binary() => any()}.

%% Example:
%% delete_network_profile_result() :: #{

%% }
-type delete_network_profile_result() :: #{binary() => any()}.

%% Example:
%% list_device_instances_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_device_instances_request() :: #{binary() => any()}.

%% Example:
%% get_job_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_job_request() :: #{binary() => any()}.

%% Example:
%% create_project_request() :: #{
%%   <<"defaultJobTimeoutMinutes">> => integer(),
%%   <<"name">> := string(),
%%   <<"vpcConfig">> => vpc_config()
%% }
-type create_project_request() :: #{binary() => any()}.

%% Example:
%% list_vpce_configurations_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"vpceConfigurations">> => list(vpce_configuration())
%% }
-type list_vpce_configurations_result() :: #{binary() => any()}.

%% Example:
%% list_suites_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_suites_request() :: #{binary() => any()}.

%% Example:
%% list_projects_request() :: #{
%%   <<"arn">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_projects_request() :: #{binary() => any()}.

%% Example:
%% get_account_settings_result() :: #{
%%   <<"accountSettings">> => account_settings()
%% }
-type get_account_settings_result() :: #{binary() => any()}.

%% Example:
%% list_vpce_configurations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_vpce_configurations_request() :: #{binary() => any()}.

%% Example:
%% offering() :: #{
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"recurringCharges">> => list(recurring_charge()),
%%   <<"type">> => list(any())
%% }
-type offering() :: #{binary() => any()}.

%% Example:
%% device_minutes() :: #{
%%   <<"metered">> => float(),
%%   <<"total">> => float(),
%%   <<"unmetered">> => float()
%% }
-type device_minutes() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% resolution() :: #{
%%   <<"height">> => integer(),
%%   <<"width">> => integer()
%% }
-type resolution() :: #{binary() => any()}.

%% Example:
%% update_instance_profile_request() :: #{
%%   <<"arn">> := string(),
%%   <<"description">> => string(),
%%   <<"excludeAppPackagesFromCleanup">> => list(string()),
%%   <<"name">> => string(),
%%   <<"packageCleanup">> => boolean(),
%%   <<"rebootAfterUse">> => boolean()
%% }
-type update_instance_profile_request() :: #{binary() => any()}.

%% Example:
%% create_test_grid_url_request() :: #{
%%   <<"expiresInSeconds">> := integer(),
%%   <<"projectArn">> := string()
%% }
-type create_test_grid_url_request() :: #{binary() => any()}.

%% Example:
%% get_test_result() :: #{
%%   <<"test">> => test()
%% }
-type get_test_result() :: #{binary() => any()}.

%% Example:
%% list_device_pools_result() :: #{
%%   <<"devicePools">> => list(device_pool()),
%%   <<"nextToken">> => string()
%% }
-type list_device_pools_result() :: #{binary() => any()}.

%% Example:
%% list_suites_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"suites">> => list(suite())
%% }
-type list_suites_result() :: #{binary() => any()}.

%% Example:
%% get_test_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_test_request() :: #{binary() => any()}.

%% Example:
%% create_test_grid_project_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"vpcConfig">> => test_grid_vpc_config()
%% }
-type create_test_grid_project_request() :: #{binary() => any()}.

%% Example:
%% stop_remote_access_session_request() :: #{
%%   <<"arn">> := string()
%% }
-type stop_remote_access_session_request() :: #{binary() => any()}.

%% Example:
%% artifact() :: #{
%%   <<"arn">> => string(),
%%   <<"extension">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any()),
%%   <<"url">> => string()
%% }
-type artifact() :: #{binary() => any()}.

%% Example:
%% list_artifacts_result() :: #{
%%   <<"artifacts">> => list(artifact()),
%%   <<"nextToken">> => string()
%% }
-type list_artifacts_result() :: #{binary() => any()}.

%% Example:
%% device() :: #{
%%   <<"arn">> => string(),
%%   <<"availability">> => list(any()),
%%   <<"carrier">> => string(),
%%   <<"cpu">> => c_p_u(),
%%   <<"fleetName">> => string(),
%%   <<"fleetType">> => string(),
%%   <<"formFactor">> => list(any()),
%%   <<"heapSize">> => float(),
%%   <<"image">> => string(),
%%   <<"instances">> => list(device_instance()),
%%   <<"manufacturer">> => string(),
%%   <<"memory">> => float(),
%%   <<"model">> => string(),
%%   <<"modelId">> => string(),
%%   <<"name">> => string(),
%%   <<"os">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"radio">> => string(),
%%   <<"remoteAccessEnabled">> => boolean(),
%%   <<"remoteDebugEnabled">> => boolean(),
%%   <<"resolution">> => resolution()
%% }
-type device() :: #{binary() => any()}.

%% Example:
%% list_projects_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"projects">> => list(project())
%% }
-type list_projects_result() :: #{binary() => any()}.

%% Example:
%% delete_project_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_project_request() :: #{binary() => any()}.

%% Example:
%% list_remote_access_sessions_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"remoteAccessSessions">> => list(remote_access_session())
%% }
-type list_remote_access_sessions_result() :: #{binary() => any()}.

%% Example:
%% get_test_grid_project_result() :: #{
%%   <<"testGridProject">> => test_grid_project()
%% }
-type get_test_grid_project_result() :: #{binary() => any()}.

%% Example:
%% offering_promotion() :: #{
%%   <<"description">> => string(),
%%   <<"id">> => string()
%% }
-type offering_promotion() :: #{binary() => any()}.

%% Example:
%% list_offerings_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"offerings">> => list(offering())
%% }
-type list_offerings_result() :: #{binary() => any()}.

%% Example:
%% list_test_grid_session_actions_result() :: #{
%%   <<"actions">> => list(test_grid_session_action()),
%%   <<"nextToken">> => string()
%% }
-type list_test_grid_session_actions_result() :: #{binary() => any()}.

%% Example:
%% create_project_result() :: #{
%%   <<"project">> => project()
%% }
-type create_project_result() :: #{binary() => any()}.

%% Example:
%% device_proxy() :: #{
%%   <<"host">> => string(),
%%   <<"port">> => integer()
%% }
-type device_proxy() :: #{binary() => any()}.

%% Example:
%% stop_job_result() :: #{
%%   <<"job">> => job()
%% }
-type stop_job_result() :: #{binary() => any()}.

%% Example:
%% list_runs_request() :: #{
%%   <<"arn">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_runs_request() :: #{binary() => any()}.

%% Example:
%% get_vpce_configuration_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_vpce_configuration_request() :: #{binary() => any()}.

%% Example:
%% device_filter() :: #{
%%   <<"attribute">> => list(any()),
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type device_filter() :: #{binary() => any()}.

%% Example:
%% list_test_grid_sessions_request() :: #{
%%   <<"creationTimeAfter">> => non_neg_integer(),
%%   <<"creationTimeBefore">> => non_neg_integer(),
%%   <<"endTimeAfter">> => non_neg_integer(),
%%   <<"endTimeBefore">> => non_neg_integer(),
%%   <<"maxResult">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"projectArn">> := string(),
%%   <<"status">> => list(any())
%% }
-type list_test_grid_sessions_request() :: #{binary() => any()}.

%% Example:
%% list_uploads_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"uploads">> => list(upload())
%% }
-type list_uploads_result() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% get_test_grid_session_result() :: #{
%%   <<"testGridSession">> => test_grid_session()
%% }
-type get_test_grid_session_result() :: #{binary() => any()}.

%% Example:
%% get_device_instance_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_device_instance_request() :: #{binary() => any()}.

%% Example:
%% purchase_offering_request() :: #{
%%   <<"offeringId">> := string(),
%%   <<"offeringPromotionId">> => string(),
%%   <<"quantity">> := integer()
%% }
-type purchase_offering_request() :: #{binary() => any()}.

%% Example:
%% run() :: #{
%%   <<"networkProfile">> => network_profile(),
%%   <<"type">> => list(any()),
%%   <<"deviceMinutes">> => device_minutes(),
%%   <<"seed">> => integer(),
%%   <<"completedJobs">> => integer(),
%%   <<"testSpecArn">> => string(),
%%   <<"billingMethod">> => list(any()),
%%   <<"webUrl">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"location">> => location(),
%%   <<"counters">> => counters(),
%%   <<"status">> => list(any()),
%%   <<"jobTimeoutMinutes">> => integer(),
%%   <<"result">> => list(any()),
%%   <<"totalJobs">> => integer(),
%%   <<"vpcConfig">> => vpc_config(),
%%   <<"customerArtifactPaths">> => customer_artifact_paths(),
%%   <<"locale">> => string(),
%%   <<"skipAppResign">> => boolean(),
%%   <<"appUpload">> => string(),
%%   <<"deviceSelectionResult">> => device_selection_result(),
%%   <<"radios">> => radios(),
%%   <<"stopped">> => non_neg_integer(),
%%   <<"arn">> => string(),
%%   <<"parsingResultUrl">> => string(),
%%   <<"devicePoolArn">> => string(),
%%   <<"resultCode">> => list(any()),
%%   <<"deviceProxy">> => device_proxy(),
%%   <<"created">> => non_neg_integer(),
%%   <<"message">> => string(),
%%   <<"eventCount">> => integer(),
%%   <<"started">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type run() :: #{binary() => any()}.

%% Example:
%% argument_exception() :: #{
%%   <<"message">> => string()
%% }
-type argument_exception() :: #{binary() => any()}.

%% Example:
%% list_test_grid_projects_request() :: #{
%%   <<"maxResult">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_test_grid_projects_request() :: #{binary() => any()}.

%% Example:
%% update_project_result() :: #{
%%   <<"project">> => project()
%% }
-type update_project_result() :: #{binary() => any()}.

-type create_device_pool_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type create_instance_profile_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type create_network_profile_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type create_project_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception() | 
    tag_operation_exception().

-type create_remote_access_session_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type create_test_grid_project_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    internal_service_exception().

-type create_test_grid_url_errors() ::
    argument_exception() | 
    not_found_exception() | 
    internal_service_exception().

-type create_upload_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type create_vpce_configuration_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception().

-type delete_device_pool_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type delete_instance_profile_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type delete_network_profile_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type delete_project_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type delete_remote_access_session_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type delete_run_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type delete_test_grid_project_errors() ::
    argument_exception() | 
    not_found_exception() | 
    cannot_delete_exception() | 
    internal_service_exception().

-type delete_upload_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type delete_vpce_configuration_errors() ::
    argument_exception() | 
    service_account_exception() | 
    not_found_exception() | 
    invalid_operation_exception().

-type get_account_settings_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_device_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_device_instance_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_device_pool_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_device_pool_compatibility_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_instance_profile_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_job_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_network_profile_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_offering_status_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception() | 
    not_eligible_exception().

-type get_project_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_remote_access_session_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_run_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_suite_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_test_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_test_grid_project_errors() ::
    argument_exception() | 
    not_found_exception() | 
    internal_service_exception().

-type get_test_grid_session_errors() ::
    argument_exception() | 
    not_found_exception() | 
    internal_service_exception().

-type get_upload_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type get_vpce_configuration_errors() ::
    argument_exception() | 
    service_account_exception() | 
    not_found_exception().

-type install_to_remote_access_session_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_artifacts_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_device_instances_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_device_pools_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_devices_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_instance_profiles_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_jobs_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_network_profiles_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_offering_promotions_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception() | 
    not_eligible_exception().

-type list_offering_transactions_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception() | 
    not_eligible_exception().

-type list_offerings_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception() | 
    not_eligible_exception().

-type list_projects_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_remote_access_sessions_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_runs_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_samples_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_suites_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_tags_for_resource_errors() ::
    argument_exception() | 
    not_found_exception() | 
    tag_operation_exception().

-type list_test_grid_projects_errors() ::
    argument_exception() | 
    internal_service_exception().

-type list_test_grid_session_actions_errors() ::
    argument_exception() | 
    not_found_exception() | 
    internal_service_exception().

-type list_test_grid_session_artifacts_errors() ::
    argument_exception() | 
    not_found_exception() | 
    internal_service_exception().

-type list_test_grid_sessions_errors() ::
    argument_exception() | 
    not_found_exception() | 
    internal_service_exception().

-type list_tests_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_unique_problems_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_uploads_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type list_vpce_configurations_errors() ::
    argument_exception() | 
    service_account_exception().

-type purchase_offering_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception() | 
    not_eligible_exception().

-type renew_offering_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception() | 
    not_eligible_exception().

-type schedule_run_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    idempotency_exception() | 
    service_account_exception() | 
    not_found_exception().

-type stop_job_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type stop_remote_access_session_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type stop_run_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type tag_resource_errors() ::
    argument_exception() | 
    too_many_tags_exception() | 
    not_found_exception() | 
    tag_policy_exception() | 
    tag_operation_exception().

-type untag_resource_errors() ::
    argument_exception() | 
    not_found_exception() | 
    tag_operation_exception().

-type update_device_instance_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type update_device_pool_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type update_instance_profile_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type update_network_profile_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type update_project_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type update_test_grid_project_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    internal_service_exception().

-type update_upload_errors() ::
    argument_exception() | 
    limit_exceeded_exception() | 
    service_account_exception() | 
    not_found_exception().

-type update_vpce_configuration_errors() ::
    argument_exception() | 
    service_account_exception() | 
    not_found_exception() | 
    invalid_operation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a device pool.
-spec create_device_pool(aws_client:aws_client(), create_device_pool_request()) ->
    {ok, create_device_pool_result(), tuple()} |
    {error, any()} |
    {error, create_device_pool_errors(), tuple()}.
create_device_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_device_pool(Client, Input, []).

-spec create_device_pool(aws_client:aws_client(), create_device_pool_request(), proplists:proplist()) ->
    {ok, create_device_pool_result(), tuple()} |
    {error, any()} |
    {error, create_device_pool_errors(), tuple()}.
create_device_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDevicePool">>, Input, Options).

%% @doc Creates a profile that can be applied to one or more private fleet
%% device
%% instances.
-spec create_instance_profile(aws_client:aws_client(), create_instance_profile_request()) ->
    {ok, create_instance_profile_result(), tuple()} |
    {error, any()} |
    {error, create_instance_profile_errors(), tuple()}.
create_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_profile(Client, Input, []).

-spec create_instance_profile(aws_client:aws_client(), create_instance_profile_request(), proplists:proplist()) ->
    {ok, create_instance_profile_result(), tuple()} |
    {error, any()} |
    {error, create_instance_profile_errors(), tuple()}.
create_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceProfile">>, Input, Options).

%% @doc Creates a network profile.
-spec create_network_profile(aws_client:aws_client(), create_network_profile_request()) ->
    {ok, create_network_profile_result(), tuple()} |
    {error, any()} |
    {error, create_network_profile_errors(), tuple()}.
create_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_network_profile(Client, Input, []).

-spec create_network_profile(aws_client:aws_client(), create_network_profile_request(), proplists:proplist()) ->
    {ok, create_network_profile_result(), tuple()} |
    {error, any()} |
    {error, create_network_profile_errors(), tuple()}.
create_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNetworkProfile">>, Input, Options).

%% @doc Creates a project.
-spec create_project(aws_client:aws_client(), create_project_request()) ->
    {ok, create_project_result(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).

-spec create_project(aws_client:aws_client(), create_project_request(), proplists:proplist()) ->
    {ok, create_project_result(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProject">>, Input, Options).

%% @doc Specifies and starts a remote access session.
-spec create_remote_access_session(aws_client:aws_client(), create_remote_access_session_request()) ->
    {ok, create_remote_access_session_result(), tuple()} |
    {error, any()} |
    {error, create_remote_access_session_errors(), tuple()}.
create_remote_access_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_remote_access_session(Client, Input, []).

-spec create_remote_access_session(aws_client:aws_client(), create_remote_access_session_request(), proplists:proplist()) ->
    {ok, create_remote_access_session_result(), tuple()} |
    {error, any()} |
    {error, create_remote_access_session_errors(), tuple()}.
create_remote_access_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRemoteAccessSession">>, Input, Options).

%% @doc Creates a Selenium testing project.
%%
%% Projects are used to track `TestGridSession'
%% instances.
-spec create_test_grid_project(aws_client:aws_client(), create_test_grid_project_request()) ->
    {ok, create_test_grid_project_result(), tuple()} |
    {error, any()} |
    {error, create_test_grid_project_errors(), tuple()}.
create_test_grid_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_test_grid_project(Client, Input, []).

-spec create_test_grid_project(aws_client:aws_client(), create_test_grid_project_request(), proplists:proplist()) ->
    {ok, create_test_grid_project_result(), tuple()} |
    {error, any()} |
    {error, create_test_grid_project_errors(), tuple()}.
create_test_grid_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTestGridProject">>, Input, Options).

%% @doc Creates a signed, short-term URL that can be passed to a Selenium
%% `RemoteWebDriver'
%% constructor.
-spec create_test_grid_url(aws_client:aws_client(), create_test_grid_url_request()) ->
    {ok, create_test_grid_url_result(), tuple()} |
    {error, any()} |
    {error, create_test_grid_url_errors(), tuple()}.
create_test_grid_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_test_grid_url(Client, Input, []).

-spec create_test_grid_url(aws_client:aws_client(), create_test_grid_url_request(), proplists:proplist()) ->
    {ok, create_test_grid_url_result(), tuple()} |
    {error, any()} |
    {error, create_test_grid_url_errors(), tuple()}.
create_test_grid_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTestGridUrl">>, Input, Options).

%% @doc Uploads an app or test scripts.
-spec create_upload(aws_client:aws_client(), create_upload_request()) ->
    {ok, create_upload_result(), tuple()} |
    {error, any()} |
    {error, create_upload_errors(), tuple()}.
create_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_upload(Client, Input, []).

-spec create_upload(aws_client:aws_client(), create_upload_request(), proplists:proplist()) ->
    {ok, create_upload_result(), tuple()} |
    {error, any()} |
    {error, create_upload_errors(), tuple()}.
create_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUpload">>, Input, Options).

%% @doc Creates a configuration record in Device Farm for your Amazon Virtual
%% Private Cloud
%% (VPC) endpoint.
-spec create_vpce_configuration(aws_client:aws_client(), create_vpce_configuration_request()) ->
    {ok, create_vpce_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_vpce_configuration_errors(), tuple()}.
create_vpce_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpce_configuration(Client, Input, []).

-spec create_vpce_configuration(aws_client:aws_client(), create_vpce_configuration_request(), proplists:proplist()) ->
    {ok, create_vpce_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_vpce_configuration_errors(), tuple()}.
create_vpce_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVPCEConfiguration">>, Input, Options).

%% @doc Deletes a device pool given the pool ARN.
%%
%% Does not allow deletion of curated pools
%% owned by the system.
-spec delete_device_pool(aws_client:aws_client(), delete_device_pool_request()) ->
    {ok, delete_device_pool_result(), tuple()} |
    {error, any()} |
    {error, delete_device_pool_errors(), tuple()}.
delete_device_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_device_pool(Client, Input, []).

-spec delete_device_pool(aws_client:aws_client(), delete_device_pool_request(), proplists:proplist()) ->
    {ok, delete_device_pool_result(), tuple()} |
    {error, any()} |
    {error, delete_device_pool_errors(), tuple()}.
delete_device_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDevicePool">>, Input, Options).

%% @doc Deletes a profile that can be applied to one or more private device
%% instances.
-spec delete_instance_profile(aws_client:aws_client(), delete_instance_profile_request()) ->
    {ok, delete_instance_profile_result(), tuple()} |
    {error, any()} |
    {error, delete_instance_profile_errors(), tuple()}.
delete_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_profile(Client, Input, []).

-spec delete_instance_profile(aws_client:aws_client(), delete_instance_profile_request(), proplists:proplist()) ->
    {ok, delete_instance_profile_result(), tuple()} |
    {error, any()} |
    {error, delete_instance_profile_errors(), tuple()}.
delete_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceProfile">>, Input, Options).

%% @doc Deletes a network profile.
-spec delete_network_profile(aws_client:aws_client(), delete_network_profile_request()) ->
    {ok, delete_network_profile_result(), tuple()} |
    {error, any()} |
    {error, delete_network_profile_errors(), tuple()}.
delete_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_profile(Client, Input, []).

-spec delete_network_profile(aws_client:aws_client(), delete_network_profile_request(), proplists:proplist()) ->
    {ok, delete_network_profile_result(), tuple()} |
    {error, any()} |
    {error, delete_network_profile_errors(), tuple()}.
delete_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkProfile">>, Input, Options).

%% @doc Deletes an AWS Device Farm project, given the project ARN.
%%
%% Deleting this resource does not stop an in-progress run.
-spec delete_project(aws_client:aws_client(), delete_project_request()) ->
    {ok, delete_project_result(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).

-spec delete_project(aws_client:aws_client(), delete_project_request(), proplists:proplist()) ->
    {ok, delete_project_result(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc Deletes a completed remote access session and its results.
-spec delete_remote_access_session(aws_client:aws_client(), delete_remote_access_session_request()) ->
    {ok, delete_remote_access_session_result(), tuple()} |
    {error, any()} |
    {error, delete_remote_access_session_errors(), tuple()}.
delete_remote_access_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_remote_access_session(Client, Input, []).

-spec delete_remote_access_session(aws_client:aws_client(), delete_remote_access_session_request(), proplists:proplist()) ->
    {ok, delete_remote_access_session_result(), tuple()} |
    {error, any()} |
    {error, delete_remote_access_session_errors(), tuple()}.
delete_remote_access_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRemoteAccessSession">>, Input, Options).

%% @doc Deletes the run, given the run ARN.
%%
%% Deleting this resource does not stop an in-progress run.
-spec delete_run(aws_client:aws_client(), delete_run_request()) ->
    {ok, delete_run_result(), tuple()} |
    {error, any()} |
    {error, delete_run_errors(), tuple()}.
delete_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_run(Client, Input, []).

-spec delete_run(aws_client:aws_client(), delete_run_request(), proplists:proplist()) ->
    {ok, delete_run_result(), tuple()} |
    {error, any()} |
    {error, delete_run_errors(), tuple()}.
delete_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRun">>, Input, Options).

%% @doc Deletes a Selenium testing project and all content generated under
%% it.
%%
%% You cannot undo this operation.
%%
%% You cannot delete a project if it has active sessions.
-spec delete_test_grid_project(aws_client:aws_client(), delete_test_grid_project_request()) ->
    {ok, delete_test_grid_project_result(), tuple()} |
    {error, any()} |
    {error, delete_test_grid_project_errors(), tuple()}.
delete_test_grid_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_test_grid_project(Client, Input, []).

-spec delete_test_grid_project(aws_client:aws_client(), delete_test_grid_project_request(), proplists:proplist()) ->
    {ok, delete_test_grid_project_result(), tuple()} |
    {error, any()} |
    {error, delete_test_grid_project_errors(), tuple()}.
delete_test_grid_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTestGridProject">>, Input, Options).

%% @doc Deletes an upload given the upload ARN.
-spec delete_upload(aws_client:aws_client(), delete_upload_request()) ->
    {ok, delete_upload_result(), tuple()} |
    {error, any()} |
    {error, delete_upload_errors(), tuple()}.
delete_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_upload(Client, Input, []).

-spec delete_upload(aws_client:aws_client(), delete_upload_request(), proplists:proplist()) ->
    {ok, delete_upload_result(), tuple()} |
    {error, any()} |
    {error, delete_upload_errors(), tuple()}.
delete_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUpload">>, Input, Options).

%% @doc Deletes a configuration for your Amazon Virtual Private Cloud (VPC)
%% endpoint.
-spec delete_vpce_configuration(aws_client:aws_client(), delete_vpce_configuration_request()) ->
    {ok, delete_vpce_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_vpce_configuration_errors(), tuple()}.
delete_vpce_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpce_configuration(Client, Input, []).

-spec delete_vpce_configuration(aws_client:aws_client(), delete_vpce_configuration_request(), proplists:proplist()) ->
    {ok, delete_vpce_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_vpce_configuration_errors(), tuple()}.
delete_vpce_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVPCEConfiguration">>, Input, Options).

%% @doc Returns the number of unmetered iOS or unmetered Android devices that
%% have been purchased by the
%% account.
-spec get_account_settings(aws_client:aws_client(), get_account_settings_request()) ->
    {ok, get_account_settings_result(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_settings(Client, Input, []).

-spec get_account_settings(aws_client:aws_client(), get_account_settings_request(), proplists:proplist()) ->
    {ok, get_account_settings_result(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountSettings">>, Input, Options).

%% @doc Gets information about a unique device type.
-spec get_device(aws_client:aws_client(), get_device_request()) ->
    {ok, get_device_result(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device(Client, Input, []).

-spec get_device(aws_client:aws_client(), get_device_request(), proplists:proplist()) ->
    {ok, get_device_result(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevice">>, Input, Options).

%% @doc Returns information about a device instance that belongs to a private
%% device fleet.
-spec get_device_instance(aws_client:aws_client(), get_device_instance_request()) ->
    {ok, get_device_instance_result(), tuple()} |
    {error, any()} |
    {error, get_device_instance_errors(), tuple()}.
get_device_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device_instance(Client, Input, []).

-spec get_device_instance(aws_client:aws_client(), get_device_instance_request(), proplists:proplist()) ->
    {ok, get_device_instance_result(), tuple()} |
    {error, any()} |
    {error, get_device_instance_errors(), tuple()}.
get_device_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeviceInstance">>, Input, Options).

%% @doc Gets information about a device pool.
-spec get_device_pool(aws_client:aws_client(), get_device_pool_request()) ->
    {ok, get_device_pool_result(), tuple()} |
    {error, any()} |
    {error, get_device_pool_errors(), tuple()}.
get_device_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device_pool(Client, Input, []).

-spec get_device_pool(aws_client:aws_client(), get_device_pool_request(), proplists:proplist()) ->
    {ok, get_device_pool_result(), tuple()} |
    {error, any()} |
    {error, get_device_pool_errors(), tuple()}.
get_device_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevicePool">>, Input, Options).

%% @doc Gets information about compatibility with a device pool.
-spec get_device_pool_compatibility(aws_client:aws_client(), get_device_pool_compatibility_request()) ->
    {ok, get_device_pool_compatibility_result(), tuple()} |
    {error, any()} |
    {error, get_device_pool_compatibility_errors(), tuple()}.
get_device_pool_compatibility(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device_pool_compatibility(Client, Input, []).

-spec get_device_pool_compatibility(aws_client:aws_client(), get_device_pool_compatibility_request(), proplists:proplist()) ->
    {ok, get_device_pool_compatibility_result(), tuple()} |
    {error, any()} |
    {error, get_device_pool_compatibility_errors(), tuple()}.
get_device_pool_compatibility(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDevicePoolCompatibility">>, Input, Options).

%% @doc Returns information about the specified instance profile.
-spec get_instance_profile(aws_client:aws_client(), get_instance_profile_request()) ->
    {ok, get_instance_profile_result(), tuple()} |
    {error, any()} |
    {error, get_instance_profile_errors(), tuple()}.
get_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_profile(Client, Input, []).

-spec get_instance_profile(aws_client:aws_client(), get_instance_profile_request(), proplists:proplist()) ->
    {ok, get_instance_profile_result(), tuple()} |
    {error, any()} |
    {error, get_instance_profile_errors(), tuple()}.
get_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceProfile">>, Input, Options).

%% @doc Gets information about a job.
-spec get_job(aws_client:aws_client(), get_job_request()) ->
    {ok, get_job_result(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job(Client, Input, []).

-spec get_job(aws_client:aws_client(), get_job_request(), proplists:proplist()) ->
    {ok, get_job_result(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJob">>, Input, Options).

%% @doc Returns information about a network profile.
-spec get_network_profile(aws_client:aws_client(), get_network_profile_request()) ->
    {ok, get_network_profile_result(), tuple()} |
    {error, any()} |
    {error, get_network_profile_errors(), tuple()}.
get_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_network_profile(Client, Input, []).

-spec get_network_profile(aws_client:aws_client(), get_network_profile_request(), proplists:proplist()) ->
    {ok, get_network_profile_result(), tuple()} |
    {error, any()} |
    {error, get_network_profile_errors(), tuple()}.
get_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNetworkProfile">>, Input, Options).

%% @doc Gets the current status and future status of all offerings purchased
%% by an AWS account.
%%
%% The response
%% indicates how many offerings are currently available and the offerings
%% that will be available in the next
%% period. The API returns a `NotEligible' error if the user is not
%% permitted to invoke the
%% operation. If you must be able to invoke this operation, contact
%% aws-devicefarm-support@amazon.com:
%% mailto:aws-devicefarm-support@amazon.com.
-spec get_offering_status(aws_client:aws_client(), get_offering_status_request()) ->
    {ok, get_offering_status_result(), tuple()} |
    {error, any()} |
    {error, get_offering_status_errors(), tuple()}.
get_offering_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_offering_status(Client, Input, []).

-spec get_offering_status(aws_client:aws_client(), get_offering_status_request(), proplists:proplist()) ->
    {ok, get_offering_status_result(), tuple()} |
    {error, any()} |
    {error, get_offering_status_errors(), tuple()}.
get_offering_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOfferingStatus">>, Input, Options).

%% @doc Gets information about a project.
-spec get_project(aws_client:aws_client(), get_project_request()) ->
    {ok, get_project_result(), tuple()} |
    {error, any()} |
    {error, get_project_errors(), tuple()}.
get_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_project(Client, Input, []).

-spec get_project(aws_client:aws_client(), get_project_request(), proplists:proplist()) ->
    {ok, get_project_result(), tuple()} |
    {error, any()} |
    {error, get_project_errors(), tuple()}.
get_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProject">>, Input, Options).

%% @doc Returns a link to a currently running remote access session.
-spec get_remote_access_session(aws_client:aws_client(), get_remote_access_session_request()) ->
    {ok, get_remote_access_session_result(), tuple()} |
    {error, any()} |
    {error, get_remote_access_session_errors(), tuple()}.
get_remote_access_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_remote_access_session(Client, Input, []).

-spec get_remote_access_session(aws_client:aws_client(), get_remote_access_session_request(), proplists:proplist()) ->
    {ok, get_remote_access_session_result(), tuple()} |
    {error, any()} |
    {error, get_remote_access_session_errors(), tuple()}.
get_remote_access_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRemoteAccessSession">>, Input, Options).

%% @doc Gets information about a run.
-spec get_run(aws_client:aws_client(), get_run_request()) ->
    {ok, get_run_result(), tuple()} |
    {error, any()} |
    {error, get_run_errors(), tuple()}.
get_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_run(Client, Input, []).

-spec get_run(aws_client:aws_client(), get_run_request(), proplists:proplist()) ->
    {ok, get_run_result(), tuple()} |
    {error, any()} |
    {error, get_run_errors(), tuple()}.
get_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRun">>, Input, Options).

%% @doc Gets information about a suite.
-spec get_suite(aws_client:aws_client(), get_suite_request()) ->
    {ok, get_suite_result(), tuple()} |
    {error, any()} |
    {error, get_suite_errors(), tuple()}.
get_suite(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_suite(Client, Input, []).

-spec get_suite(aws_client:aws_client(), get_suite_request(), proplists:proplist()) ->
    {ok, get_suite_result(), tuple()} |
    {error, any()} |
    {error, get_suite_errors(), tuple()}.
get_suite(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSuite">>, Input, Options).

%% @doc Gets information about a test.
-spec get_test(aws_client:aws_client(), get_test_request()) ->
    {ok, get_test_result(), tuple()} |
    {error, any()} |
    {error, get_test_errors(), tuple()}.
get_test(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_test(Client, Input, []).

-spec get_test(aws_client:aws_client(), get_test_request(), proplists:proplist()) ->
    {ok, get_test_result(), tuple()} |
    {error, any()} |
    {error, get_test_errors(), tuple()}.
get_test(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTest">>, Input, Options).

%% @doc Retrieves information about a Selenium testing project.
-spec get_test_grid_project(aws_client:aws_client(), get_test_grid_project_request()) ->
    {ok, get_test_grid_project_result(), tuple()} |
    {error, any()} |
    {error, get_test_grid_project_errors(), tuple()}.
get_test_grid_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_test_grid_project(Client, Input, []).

-spec get_test_grid_project(aws_client:aws_client(), get_test_grid_project_request(), proplists:proplist()) ->
    {ok, get_test_grid_project_result(), tuple()} |
    {error, any()} |
    {error, get_test_grid_project_errors(), tuple()}.
get_test_grid_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTestGridProject">>, Input, Options).

%% @doc A session is an instance of a browser created through a
%% `RemoteWebDriver' with the URL from `CreateTestGridUrlResult$url'.
%%
%% You can use the following to look up sessions:
%%
%% The session ARN (`GetTestGridSessionRequest$sessionArn').
%%
%% The project ARN and a session ID
%% (`GetTestGridSessionRequest$projectArn' and
%% `GetTestGridSessionRequest$sessionId').
-spec get_test_grid_session(aws_client:aws_client(), get_test_grid_session_request()) ->
    {ok, get_test_grid_session_result(), tuple()} |
    {error, any()} |
    {error, get_test_grid_session_errors(), tuple()}.
get_test_grid_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_test_grid_session(Client, Input, []).

-spec get_test_grid_session(aws_client:aws_client(), get_test_grid_session_request(), proplists:proplist()) ->
    {ok, get_test_grid_session_result(), tuple()} |
    {error, any()} |
    {error, get_test_grid_session_errors(), tuple()}.
get_test_grid_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTestGridSession">>, Input, Options).

%% @doc Gets information about an upload.
-spec get_upload(aws_client:aws_client(), get_upload_request()) ->
    {ok, get_upload_result(), tuple()} |
    {error, any()} |
    {error, get_upload_errors(), tuple()}.
get_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_upload(Client, Input, []).

-spec get_upload(aws_client:aws_client(), get_upload_request(), proplists:proplist()) ->
    {ok, get_upload_result(), tuple()} |
    {error, any()} |
    {error, get_upload_errors(), tuple()}.
get_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUpload">>, Input, Options).

%% @doc Returns information about the configuration settings for your Amazon
%% Virtual Private
%% Cloud (VPC) endpoint.
-spec get_vpce_configuration(aws_client:aws_client(), get_vpce_configuration_request()) ->
    {ok, get_vpce_configuration_result(), tuple()} |
    {error, any()} |
    {error, get_vpce_configuration_errors(), tuple()}.
get_vpce_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vpce_configuration(Client, Input, []).

-spec get_vpce_configuration(aws_client:aws_client(), get_vpce_configuration_request(), proplists:proplist()) ->
    {ok, get_vpce_configuration_result(), tuple()} |
    {error, any()} |
    {error, get_vpce_configuration_errors(), tuple()}.
get_vpce_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVPCEConfiguration">>, Input, Options).

%% @doc Installs an application to the device in a remote access session.
%%
%% For Android
%% applications, the file must be in .apk format. For iOS applications, the
%% file must be in
%% .ipa format.
-spec install_to_remote_access_session(aws_client:aws_client(), install_to_remote_access_session_request()) ->
    {ok, install_to_remote_access_session_result(), tuple()} |
    {error, any()} |
    {error, install_to_remote_access_session_errors(), tuple()}.
install_to_remote_access_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    install_to_remote_access_session(Client, Input, []).

-spec install_to_remote_access_session(aws_client:aws_client(), install_to_remote_access_session_request(), proplists:proplist()) ->
    {ok, install_to_remote_access_session_result(), tuple()} |
    {error, any()} |
    {error, install_to_remote_access_session_errors(), tuple()}.
install_to_remote_access_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InstallToRemoteAccessSession">>, Input, Options).

%% @doc Gets information about artifacts.
-spec list_artifacts(aws_client:aws_client(), list_artifacts_request()) ->
    {ok, list_artifacts_result(), tuple()} |
    {error, any()} |
    {error, list_artifacts_errors(), tuple()}.
list_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_artifacts(Client, Input, []).

-spec list_artifacts(aws_client:aws_client(), list_artifacts_request(), proplists:proplist()) ->
    {ok, list_artifacts_result(), tuple()} |
    {error, any()} |
    {error, list_artifacts_errors(), tuple()}.
list_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListArtifacts">>, Input, Options).

%% @doc Returns information about the private device instances associated
%% with one or more AWS
%% accounts.
-spec list_device_instances(aws_client:aws_client(), list_device_instances_request()) ->
    {ok, list_device_instances_result(), tuple()} |
    {error, any()} |
    {error, list_device_instances_errors(), tuple()}.
list_device_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_device_instances(Client, Input, []).

-spec list_device_instances(aws_client:aws_client(), list_device_instances_request(), proplists:proplist()) ->
    {ok, list_device_instances_result(), tuple()} |
    {error, any()} |
    {error, list_device_instances_errors(), tuple()}.
list_device_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeviceInstances">>, Input, Options).

%% @doc Gets information about device pools.
-spec list_device_pools(aws_client:aws_client(), list_device_pools_request()) ->
    {ok, list_device_pools_result(), tuple()} |
    {error, any()} |
    {error, list_device_pools_errors(), tuple()}.
list_device_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_device_pools(Client, Input, []).

-spec list_device_pools(aws_client:aws_client(), list_device_pools_request(), proplists:proplist()) ->
    {ok, list_device_pools_result(), tuple()} |
    {error, any()} |
    {error, list_device_pools_errors(), tuple()}.
list_device_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevicePools">>, Input, Options).

%% @doc Gets information about unique device types.
-spec list_devices(aws_client:aws_client(), list_devices_request()) ->
    {ok, list_devices_result(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_devices(Client, Input, []).

-spec list_devices(aws_client:aws_client(), list_devices_request(), proplists:proplist()) ->
    {ok, list_devices_result(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevices">>, Input, Options).

%% @doc Returns information about all the instance profiles in an AWS
%% account.
-spec list_instance_profiles(aws_client:aws_client(), list_instance_profiles_request()) ->
    {ok, list_instance_profiles_result(), tuple()} |
    {error, any()} |
    {error, list_instance_profiles_errors(), tuple()}.
list_instance_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_profiles(Client, Input, []).

-spec list_instance_profiles(aws_client:aws_client(), list_instance_profiles_request(), proplists:proplist()) ->
    {ok, list_instance_profiles_result(), tuple()} |
    {error, any()} |
    {error, list_instance_profiles_errors(), tuple()}.
list_instance_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceProfiles">>, Input, Options).

%% @doc Gets information about jobs for a given test run.
-spec list_jobs(aws_client:aws_client(), list_jobs_request()) ->
    {ok, list_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_jobs(Client, Input, []).

-spec list_jobs(aws_client:aws_client(), list_jobs_request(), proplists:proplist()) ->
    {ok, list_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListJobs">>, Input, Options).

%% @doc Returns the list of available network profiles.
-spec list_network_profiles(aws_client:aws_client(), list_network_profiles_request()) ->
    {ok, list_network_profiles_result(), tuple()} |
    {error, any()} |
    {error, list_network_profiles_errors(), tuple()}.
list_network_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_network_profiles(Client, Input, []).

-spec list_network_profiles(aws_client:aws_client(), list_network_profiles_request(), proplists:proplist()) ->
    {ok, list_network_profiles_result(), tuple()} |
    {error, any()} |
    {error, list_network_profiles_errors(), tuple()}.
list_network_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNetworkProfiles">>, Input, Options).

%% @doc Returns a list of offering promotions.
%%
%% Each offering promotion record contains the ID and description
%% of the promotion. The API returns a `NotEligible' error if the caller
%% is not permitted to invoke
%% the operation. Contact aws-devicefarm-support@amazon.com:
%% mailto:aws-devicefarm-support@amazon.com if you must be able to invoke
%% this operation.
-spec list_offering_promotions(aws_client:aws_client(), list_offering_promotions_request()) ->
    {ok, list_offering_promotions_result(), tuple()} |
    {error, any()} |
    {error, list_offering_promotions_errors(), tuple()}.
list_offering_promotions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_offering_promotions(Client, Input, []).

-spec list_offering_promotions(aws_client:aws_client(), list_offering_promotions_request(), proplists:proplist()) ->
    {ok, list_offering_promotions_result(), tuple()} |
    {error, any()} |
    {error, list_offering_promotions_errors(), tuple()}.
list_offering_promotions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOfferingPromotions">>, Input, Options).

%% @doc Returns a list of all historical purchases, renewals, and system
%% renewal transactions for an AWS
%% account.
%%
%% The list is paginated and ordered by a descending timestamp (most recent
%% transactions are first).
%% The API returns a `NotEligible' error if the user is not permitted to
%% invoke the operation. If
%% you must be able to invoke this operation, contact
%% aws-devicefarm-support@amazon.com:
%% mailto:aws-devicefarm-support@amazon.com.
-spec list_offering_transactions(aws_client:aws_client(), list_offering_transactions_request()) ->
    {ok, list_offering_transactions_result(), tuple()} |
    {error, any()} |
    {error, list_offering_transactions_errors(), tuple()}.
list_offering_transactions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_offering_transactions(Client, Input, []).

-spec list_offering_transactions(aws_client:aws_client(), list_offering_transactions_request(), proplists:proplist()) ->
    {ok, list_offering_transactions_result(), tuple()} |
    {error, any()} |
    {error, list_offering_transactions_errors(), tuple()}.
list_offering_transactions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOfferingTransactions">>, Input, Options).

%% @doc Returns a list of products or offerings that the user can manage
%% through the API.
%%
%% Each offering record
%% indicates the recurring price per unit and the frequency for that
%% offering. The API returns a
%% `NotEligible' error if the user is not permitted to invoke the
%% operation. If you must be
%% able to invoke this operation, contact aws-devicefarm-support@amazon.com:
%% mailto:aws-devicefarm-support@amazon.com.
-spec list_offerings(aws_client:aws_client(), list_offerings_request()) ->
    {ok, list_offerings_result(), tuple()} |
    {error, any()} |
    {error, list_offerings_errors(), tuple()}.
list_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_offerings(Client, Input, []).

-spec list_offerings(aws_client:aws_client(), list_offerings_request(), proplists:proplist()) ->
    {ok, list_offerings_result(), tuple()} |
    {error, any()} |
    {error, list_offerings_errors(), tuple()}.
list_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOfferings">>, Input, Options).

%% @doc Gets information about projects.
-spec list_projects(aws_client:aws_client(), list_projects_request()) ->
    {ok, list_projects_result(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_projects(Client, Input, []).

-spec list_projects(aws_client:aws_client(), list_projects_request(), proplists:proplist()) ->
    {ok, list_projects_result(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProjects">>, Input, Options).

%% @doc Returns a list of all currently running remote access sessions.
-spec list_remote_access_sessions(aws_client:aws_client(), list_remote_access_sessions_request()) ->
    {ok, list_remote_access_sessions_result(), tuple()} |
    {error, any()} |
    {error, list_remote_access_sessions_errors(), tuple()}.
list_remote_access_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_remote_access_sessions(Client, Input, []).

-spec list_remote_access_sessions(aws_client:aws_client(), list_remote_access_sessions_request(), proplists:proplist()) ->
    {ok, list_remote_access_sessions_result(), tuple()} |
    {error, any()} |
    {error, list_remote_access_sessions_errors(), tuple()}.
list_remote_access_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRemoteAccessSessions">>, Input, Options).

%% @doc Gets information about runs, given an AWS Device Farm project ARN.
-spec list_runs(aws_client:aws_client(), list_runs_request()) ->
    {ok, list_runs_result(), tuple()} |
    {error, any()} |
    {error, list_runs_errors(), tuple()}.
list_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_runs(Client, Input, []).

-spec list_runs(aws_client:aws_client(), list_runs_request(), proplists:proplist()) ->
    {ok, list_runs_result(), tuple()} |
    {error, any()} |
    {error, list_runs_errors(), tuple()}.
list_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuns">>, Input, Options).

%% @doc Gets information about samples, given an AWS Device Farm job ARN.
-spec list_samples(aws_client:aws_client(), list_samples_request()) ->
    {ok, list_samples_result(), tuple()} |
    {error, any()} |
    {error, list_samples_errors(), tuple()}.
list_samples(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_samples(Client, Input, []).

-spec list_samples(aws_client:aws_client(), list_samples_request(), proplists:proplist()) ->
    {ok, list_samples_result(), tuple()} |
    {error, any()} |
    {error, list_samples_errors(), tuple()}.
list_samples(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSamples">>, Input, Options).

%% @doc Gets information about test suites for a given job.
-spec list_suites(aws_client:aws_client(), list_suites_request()) ->
    {ok, list_suites_result(), tuple()} |
    {error, any()} |
    {error, list_suites_errors(), tuple()}.
list_suites(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_suites(Client, Input, []).

-spec list_suites(aws_client:aws_client(), list_suites_request(), proplists:proplist()) ->
    {ok, list_suites_result(), tuple()} |
    {error, any()} |
    {error, list_suites_errors(), tuple()}.
list_suites(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSuites">>, Input, Options).

%% @doc List the tags for an AWS Device Farm resource.
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

%% @doc Gets a list of all Selenium testing projects in your account.
-spec list_test_grid_projects(aws_client:aws_client(), list_test_grid_projects_request()) ->
    {ok, list_test_grid_projects_result(), tuple()} |
    {error, any()} |
    {error, list_test_grid_projects_errors(), tuple()}.
list_test_grid_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_test_grid_projects(Client, Input, []).

-spec list_test_grid_projects(aws_client:aws_client(), list_test_grid_projects_request(), proplists:proplist()) ->
    {ok, list_test_grid_projects_result(), tuple()} |
    {error, any()} |
    {error, list_test_grid_projects_errors(), tuple()}.
list_test_grid_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTestGridProjects">>, Input, Options).

%% @doc Returns a list of the actions taken in a `TestGridSession'.
-spec list_test_grid_session_actions(aws_client:aws_client(), list_test_grid_session_actions_request()) ->
    {ok, list_test_grid_session_actions_result(), tuple()} |
    {error, any()} |
    {error, list_test_grid_session_actions_errors(), tuple()}.
list_test_grid_session_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_test_grid_session_actions(Client, Input, []).

-spec list_test_grid_session_actions(aws_client:aws_client(), list_test_grid_session_actions_request(), proplists:proplist()) ->
    {ok, list_test_grid_session_actions_result(), tuple()} |
    {error, any()} |
    {error, list_test_grid_session_actions_errors(), tuple()}.
list_test_grid_session_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTestGridSessionActions">>, Input, Options).

%% @doc Retrieves a list of artifacts created during the session.
-spec list_test_grid_session_artifacts(aws_client:aws_client(), list_test_grid_session_artifacts_request()) ->
    {ok, list_test_grid_session_artifacts_result(), tuple()} |
    {error, any()} |
    {error, list_test_grid_session_artifacts_errors(), tuple()}.
list_test_grid_session_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_test_grid_session_artifacts(Client, Input, []).

-spec list_test_grid_session_artifacts(aws_client:aws_client(), list_test_grid_session_artifacts_request(), proplists:proplist()) ->
    {ok, list_test_grid_session_artifacts_result(), tuple()} |
    {error, any()} |
    {error, list_test_grid_session_artifacts_errors(), tuple()}.
list_test_grid_session_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTestGridSessionArtifacts">>, Input, Options).

%% @doc Retrieves a list of sessions for a `TestGridProject'.
-spec list_test_grid_sessions(aws_client:aws_client(), list_test_grid_sessions_request()) ->
    {ok, list_test_grid_sessions_result(), tuple()} |
    {error, any()} |
    {error, list_test_grid_sessions_errors(), tuple()}.
list_test_grid_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_test_grid_sessions(Client, Input, []).

-spec list_test_grid_sessions(aws_client:aws_client(), list_test_grid_sessions_request(), proplists:proplist()) ->
    {ok, list_test_grid_sessions_result(), tuple()} |
    {error, any()} |
    {error, list_test_grid_sessions_errors(), tuple()}.
list_test_grid_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTestGridSessions">>, Input, Options).

%% @doc Gets information about tests in a given test suite.
-spec list_tests(aws_client:aws_client(), list_tests_request()) ->
    {ok, list_tests_result(), tuple()} |
    {error, any()} |
    {error, list_tests_errors(), tuple()}.
list_tests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tests(Client, Input, []).

-spec list_tests(aws_client:aws_client(), list_tests_request(), proplists:proplist()) ->
    {ok, list_tests_result(), tuple()} |
    {error, any()} |
    {error, list_tests_errors(), tuple()}.
list_tests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTests">>, Input, Options).

%% @doc Gets information about unique problems, such as exceptions or
%% crashes.
%%
%% Unique problems are defined as a single instance of an error across a run,
%% job, or suite. For example,
%% if a call in your application consistently raises an exception (
%% ```
%% OutOfBoundsException in MyActivity.java:386'''),
%% `ListUniqueProblems' returns a single entry instead of many
%% individual entries for that exception.
-spec list_unique_problems(aws_client:aws_client(), list_unique_problems_request()) ->
    {ok, list_unique_problems_result(), tuple()} |
    {error, any()} |
    {error, list_unique_problems_errors(), tuple()}.
list_unique_problems(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_unique_problems(Client, Input, []).

-spec list_unique_problems(aws_client:aws_client(), list_unique_problems_request(), proplists:proplist()) ->
    {ok, list_unique_problems_result(), tuple()} |
    {error, any()} |
    {error, list_unique_problems_errors(), tuple()}.
list_unique_problems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUniqueProblems">>, Input, Options).

%% @doc Gets information about uploads, given an AWS Device Farm project ARN.
-spec list_uploads(aws_client:aws_client(), list_uploads_request()) ->
    {ok, list_uploads_result(), tuple()} |
    {error, any()} |
    {error, list_uploads_errors(), tuple()}.
list_uploads(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_uploads(Client, Input, []).

-spec list_uploads(aws_client:aws_client(), list_uploads_request(), proplists:proplist()) ->
    {ok, list_uploads_result(), tuple()} |
    {error, any()} |
    {error, list_uploads_errors(), tuple()}.
list_uploads(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUploads">>, Input, Options).

%% @doc Returns information about all Amazon Virtual Private Cloud (VPC)
%% endpoint
%% configurations in the AWS account.
-spec list_vpce_configurations(aws_client:aws_client(), list_vpce_configurations_request()) ->
    {ok, list_vpce_configurations_result(), tuple()} |
    {error, any()} |
    {error, list_vpce_configurations_errors(), tuple()}.
list_vpce_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vpce_configurations(Client, Input, []).

-spec list_vpce_configurations(aws_client:aws_client(), list_vpce_configurations_request(), proplists:proplist()) ->
    {ok, list_vpce_configurations_result(), tuple()} |
    {error, any()} |
    {error, list_vpce_configurations_errors(), tuple()}.
list_vpce_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVPCEConfigurations">>, Input, Options).

%% @doc Immediately purchases offerings for an AWS account.
%%
%% Offerings renew with the latest total purchased
%% quantity for an offering, unless the renewal was overridden. The API
%% returns a `NotEligible'
%% error if the user is not permitted to invoke the operation. If you must be
%% able to invoke this operation,
%% contact aws-devicefarm-support@amazon.com:
%% mailto:aws-devicefarm-support@amazon.com.
-spec purchase_offering(aws_client:aws_client(), purchase_offering_request()) ->
    {ok, purchase_offering_result(), tuple()} |
    {error, any()} |
    {error, purchase_offering_errors(), tuple()}.
purchase_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_offering(Client, Input, []).

-spec purchase_offering(aws_client:aws_client(), purchase_offering_request(), proplists:proplist()) ->
    {ok, purchase_offering_result(), tuple()} |
    {error, any()} |
    {error, purchase_offering_errors(), tuple()}.
purchase_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseOffering">>, Input, Options).

%% @doc Explicitly sets the quantity of devices to renew for an offering,
%% starting from the
%% `effectiveDate' of the next period.
%%
%% The API returns a `NotEligible' error if the
%% user is not permitted to invoke the operation. If you must be able to
%% invoke this operation, contact aws-devicefarm-support@amazon.com:
%% mailto:aws-devicefarm-support@amazon.com.
-spec renew_offering(aws_client:aws_client(), renew_offering_request()) ->
    {ok, renew_offering_result(), tuple()} |
    {error, any()} |
    {error, renew_offering_errors(), tuple()}.
renew_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    renew_offering(Client, Input, []).

-spec renew_offering(aws_client:aws_client(), renew_offering_request(), proplists:proplist()) ->
    {ok, renew_offering_result(), tuple()} |
    {error, any()} |
    {error, renew_offering_errors(), tuple()}.
renew_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RenewOffering">>, Input, Options).

%% @doc Schedules a run.
-spec schedule_run(aws_client:aws_client(), schedule_run_request()) ->
    {ok, schedule_run_result(), tuple()} |
    {error, any()} |
    {error, schedule_run_errors(), tuple()}.
schedule_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    schedule_run(Client, Input, []).

-spec schedule_run(aws_client:aws_client(), schedule_run_request(), proplists:proplist()) ->
    {ok, schedule_run_result(), tuple()} |
    {error, any()} |
    {error, schedule_run_errors(), tuple()}.
schedule_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ScheduleRun">>, Input, Options).

%% @doc Initiates a stop request for the current job.
%%
%% AWS Device Farm immediately stops the job on the device
%% where tests have not started. You are not billed for this device. On the
%% device where tests have started,
%% setup suite and teardown suite tests run to completion on the device. You
%% are billed for setup, teardown,
%% and any tests that were in progress or already completed.
-spec stop_job(aws_client:aws_client(), stop_job_request()) ->
    {ok, stop_job_result(), tuple()} |
    {error, any()} |
    {error, stop_job_errors(), tuple()}.
stop_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_job(Client, Input, []).

-spec stop_job(aws_client:aws_client(), stop_job_request(), proplists:proplist()) ->
    {ok, stop_job_result(), tuple()} |
    {error, any()} |
    {error, stop_job_errors(), tuple()}.
stop_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopJob">>, Input, Options).

%% @doc Ends a specified remote access session.
-spec stop_remote_access_session(aws_client:aws_client(), stop_remote_access_session_request()) ->
    {ok, stop_remote_access_session_result(), tuple()} |
    {error, any()} |
    {error, stop_remote_access_session_errors(), tuple()}.
stop_remote_access_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_remote_access_session(Client, Input, []).

-spec stop_remote_access_session(aws_client:aws_client(), stop_remote_access_session_request(), proplists:proplist()) ->
    {ok, stop_remote_access_session_result(), tuple()} |
    {error, any()} |
    {error, stop_remote_access_session_errors(), tuple()}.
stop_remote_access_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRemoteAccessSession">>, Input, Options).

%% @doc Initiates a stop request for the current test run.
%%
%% AWS Device Farm immediately stops the run on devices
%% where tests have not started. You are not billed for these devices. On
%% devices where tests have started
%% executing, setup suite and teardown suite tests run to completion on those
%% devices. You are billed for
%% setup, teardown, and any tests that were in progress or already completed.
-spec stop_run(aws_client:aws_client(), stop_run_request()) ->
    {ok, stop_run_result(), tuple()} |
    {error, any()} |
    {error, stop_run_errors(), tuple()}.
stop_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_run(Client, Input, []).

-spec stop_run(aws_client:aws_client(), stop_run_request(), proplists:proplist()) ->
    {ok, stop_run_result(), tuple()} |
    {error, any()} |
    {error, stop_run_errors(), tuple()}.
stop_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRun">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags
%% on a resource are not specified in the request parameters, they are not
%% changed. When a resource is deleted,
%% the tags associated with that resource are also deleted.
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

%% @doc Deletes the specified tags from a resource.
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

%% @doc Updates information about a private device instance.
-spec update_device_instance(aws_client:aws_client(), update_device_instance_request()) ->
    {ok, update_device_instance_result(), tuple()} |
    {error, any()} |
    {error, update_device_instance_errors(), tuple()}.
update_device_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device_instance(Client, Input, []).

-spec update_device_instance(aws_client:aws_client(), update_device_instance_request(), proplists:proplist()) ->
    {ok, update_device_instance_result(), tuple()} |
    {error, any()} |
    {error, update_device_instance_errors(), tuple()}.
update_device_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDeviceInstance">>, Input, Options).

%% @doc Modifies the name, description, and rules in a device pool given the
%% attributes and
%% the pool ARN.
%%
%% Rule updates are all-or-nothing, meaning they can only be updated as a
%% whole (or not at all).
-spec update_device_pool(aws_client:aws_client(), update_device_pool_request()) ->
    {ok, update_device_pool_result(), tuple()} |
    {error, any()} |
    {error, update_device_pool_errors(), tuple()}.
update_device_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device_pool(Client, Input, []).

-spec update_device_pool(aws_client:aws_client(), update_device_pool_request(), proplists:proplist()) ->
    {ok, update_device_pool_result(), tuple()} |
    {error, any()} |
    {error, update_device_pool_errors(), tuple()}.
update_device_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDevicePool">>, Input, Options).

%% @doc Updates information about an existing private device instance
%% profile.
-spec update_instance_profile(aws_client:aws_client(), update_instance_profile_request()) ->
    {ok, update_instance_profile_result(), tuple()} |
    {error, any()} |
    {error, update_instance_profile_errors(), tuple()}.
update_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance_profile(Client, Input, []).

-spec update_instance_profile(aws_client:aws_client(), update_instance_profile_request(), proplists:proplist()) ->
    {ok, update_instance_profile_result(), tuple()} |
    {error, any()} |
    {error, update_instance_profile_errors(), tuple()}.
update_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstanceProfile">>, Input, Options).

%% @doc Updates the network profile.
-spec update_network_profile(aws_client:aws_client(), update_network_profile_request()) ->
    {ok, update_network_profile_result(), tuple()} |
    {error, any()} |
    {error, update_network_profile_errors(), tuple()}.
update_network_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_network_profile(Client, Input, []).

-spec update_network_profile(aws_client:aws_client(), update_network_profile_request(), proplists:proplist()) ->
    {ok, update_network_profile_result(), tuple()} |
    {error, any()} |
    {error, update_network_profile_errors(), tuple()}.
update_network_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNetworkProfile">>, Input, Options).

%% @doc Modifies the specified project name, given the project ARN and a new
%% name.
-spec update_project(aws_client:aws_client(), update_project_request()) ->
    {ok, update_project_result(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project(Client, Input, []).

-spec update_project(aws_client:aws_client(), update_project_request(), proplists:proplist()) ->
    {ok, update_project_result(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProject">>, Input, Options).

%% @doc Change details of a project.
-spec update_test_grid_project(aws_client:aws_client(), update_test_grid_project_request()) ->
    {ok, update_test_grid_project_result(), tuple()} |
    {error, any()} |
    {error, update_test_grid_project_errors(), tuple()}.
update_test_grid_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_test_grid_project(Client, Input, []).

-spec update_test_grid_project(aws_client:aws_client(), update_test_grid_project_request(), proplists:proplist()) ->
    {ok, update_test_grid_project_result(), tuple()} |
    {error, any()} |
    {error, update_test_grid_project_errors(), tuple()}.
update_test_grid_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTestGridProject">>, Input, Options).

%% @doc Updates an uploaded test spec.
-spec update_upload(aws_client:aws_client(), update_upload_request()) ->
    {ok, update_upload_result(), tuple()} |
    {error, any()} |
    {error, update_upload_errors(), tuple()}.
update_upload(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_upload(Client, Input, []).

-spec update_upload(aws_client:aws_client(), update_upload_request(), proplists:proplist()) ->
    {ok, update_upload_result(), tuple()} |
    {error, any()} |
    {error, update_upload_errors(), tuple()}.
update_upload(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUpload">>, Input, Options).

%% @doc Updates information about an Amazon Virtual Private Cloud (VPC)
%% endpoint configuration.
-spec update_vpce_configuration(aws_client:aws_client(), update_vpce_configuration_request()) ->
    {ok, update_vpce_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_vpce_configuration_errors(), tuple()}.
update_vpce_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vpce_configuration(Client, Input, []).

-spec update_vpce_configuration(aws_client:aws_client(), update_vpce_configuration_request(), proplists:proplist()) ->
    {ok, update_vpce_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_vpce_configuration_errors(), tuple()}.
update_vpce_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVPCEConfiguration">>, Input, Options).

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
    Client1 = Client#{service => <<"devicefarm">>},
    Host = build_host(<<"devicefarm">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"DeviceFarm_20150623.", Action/binary>>}
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
