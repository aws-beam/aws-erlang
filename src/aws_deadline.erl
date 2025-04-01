%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Web Services Deadline Cloud API provides infrastructure
%% and centralized management for your
%% projects.
%%
%% Use the Deadline Cloud API to onboard users, assign projects, and attach
%% permissions
%% specific to their job function.
%%
%% With Deadline Cloud, content production teams can deploy resources for
%% their workforce
%% securely in the cloud, reducing the costs of added physical
%% infrastructure. Keep your
%% content production operations secure, while allowing your contributors to
%% access the tools
%% they need, such as scalable high-speed storage, licenses, and cost
%% management
%% services.
-module(aws_deadline).

-export([associate_member_to_farm/4,
         associate_member_to_farm/5,
         associate_member_to_fleet/5,
         associate_member_to_fleet/6,
         associate_member_to_job/6,
         associate_member_to_job/7,
         associate_member_to_queue/5,
         associate_member_to_queue/6,
         assume_fleet_role_for_read/3,
         assume_fleet_role_for_read/5,
         assume_fleet_role_for_read/6,
         assume_fleet_role_for_worker/4,
         assume_fleet_role_for_worker/6,
         assume_fleet_role_for_worker/7,
         assume_queue_role_for_read/3,
         assume_queue_role_for_read/5,
         assume_queue_role_for_read/6,
         assume_queue_role_for_user/3,
         assume_queue_role_for_user/5,
         assume_queue_role_for_user/6,
         assume_queue_role_for_worker/5,
         assume_queue_role_for_worker/7,
         assume_queue_role_for_worker/8,
         batch_get_job_entity/5,
         batch_get_job_entity/6,
         copy_job_template/5,
         copy_job_template/6,
         create_budget/3,
         create_budget/4,
         create_farm/2,
         create_farm/3,
         create_fleet/3,
         create_fleet/4,
         create_job/4,
         create_job/5,
         create_license_endpoint/2,
         create_license_endpoint/3,
         create_limit/3,
         create_limit/4,
         create_monitor/2,
         create_monitor/3,
         create_queue/3,
         create_queue/4,
         create_queue_environment/4,
         create_queue_environment/5,
         create_queue_fleet_association/3,
         create_queue_fleet_association/4,
         create_queue_limit_association/3,
         create_queue_limit_association/4,
         create_storage_profile/3,
         create_storage_profile/4,
         create_worker/4,
         create_worker/5,
         delete_budget/4,
         delete_budget/5,
         delete_farm/3,
         delete_farm/4,
         delete_fleet/4,
         delete_fleet/5,
         delete_license_endpoint/3,
         delete_license_endpoint/4,
         delete_limit/4,
         delete_limit/5,
         delete_metered_product/4,
         delete_metered_product/5,
         delete_monitor/3,
         delete_monitor/4,
         delete_queue/4,
         delete_queue/5,
         delete_queue_environment/5,
         delete_queue_environment/6,
         delete_queue_fleet_association/5,
         delete_queue_fleet_association/6,
         delete_queue_limit_association/5,
         delete_queue_limit_association/6,
         delete_storage_profile/4,
         delete_storage_profile/5,
         delete_worker/5,
         delete_worker/6,
         disassociate_member_from_farm/4,
         disassociate_member_from_farm/5,
         disassociate_member_from_fleet/5,
         disassociate_member_from_fleet/6,
         disassociate_member_from_job/6,
         disassociate_member_from_job/7,
         disassociate_member_from_queue/5,
         disassociate_member_from_queue/6,
         get_budget/3,
         get_budget/5,
         get_budget/6,
         get_farm/2,
         get_farm/4,
         get_farm/5,
         get_fleet/3,
         get_fleet/5,
         get_fleet/6,
         get_job/4,
         get_job/6,
         get_job/7,
         get_license_endpoint/2,
         get_license_endpoint/4,
         get_license_endpoint/5,
         get_limit/3,
         get_limit/5,
         get_limit/6,
         get_monitor/2,
         get_monitor/4,
         get_monitor/5,
         get_queue/3,
         get_queue/5,
         get_queue/6,
         get_queue_environment/4,
         get_queue_environment/6,
         get_queue_environment/7,
         get_queue_fleet_association/4,
         get_queue_fleet_association/6,
         get_queue_fleet_association/7,
         get_queue_limit_association/4,
         get_queue_limit_association/6,
         get_queue_limit_association/7,
         get_session/5,
         get_session/7,
         get_session/8,
         get_session_action/5,
         get_session_action/7,
         get_session_action/8,
         get_sessions_statistics_aggregation/3,
         get_sessions_statistics_aggregation/5,
         get_sessions_statistics_aggregation/6,
         get_step/5,
         get_step/7,
         get_step/8,
         get_storage_profile/3,
         get_storage_profile/5,
         get_storage_profile/6,
         get_storage_profile_for_queue/4,
         get_storage_profile_for_queue/6,
         get_storage_profile_for_queue/7,
         get_task/6,
         get_task/8,
         get_task/9,
         get_worker/4,
         get_worker/6,
         get_worker/7,
         list_available_metered_products/1,
         list_available_metered_products/3,
         list_available_metered_products/4,
         list_budgets/2,
         list_budgets/4,
         list_budgets/5,
         list_farm_members/2,
         list_farm_members/4,
         list_farm_members/5,
         list_farms/1,
         list_farms/3,
         list_farms/4,
         list_fleet_members/3,
         list_fleet_members/5,
         list_fleet_members/6,
         list_fleets/2,
         list_fleets/4,
         list_fleets/5,
         list_job_members/4,
         list_job_members/6,
         list_job_members/7,
         list_job_parameter_definitions/4,
         list_job_parameter_definitions/6,
         list_job_parameter_definitions/7,
         list_jobs/3,
         list_jobs/5,
         list_jobs/6,
         list_license_endpoints/1,
         list_license_endpoints/3,
         list_license_endpoints/4,
         list_limits/2,
         list_limits/4,
         list_limits/5,
         list_metered_products/2,
         list_metered_products/4,
         list_metered_products/5,
         list_monitors/1,
         list_monitors/3,
         list_monitors/4,
         list_queue_environments/3,
         list_queue_environments/5,
         list_queue_environments/6,
         list_queue_fleet_associations/2,
         list_queue_fleet_associations/4,
         list_queue_fleet_associations/5,
         list_queue_limit_associations/2,
         list_queue_limit_associations/4,
         list_queue_limit_associations/5,
         list_queue_members/3,
         list_queue_members/5,
         list_queue_members/6,
         list_queues/2,
         list_queues/4,
         list_queues/5,
         list_session_actions/4,
         list_session_actions/6,
         list_session_actions/7,
         list_sessions/4,
         list_sessions/6,
         list_sessions/7,
         list_sessions_for_worker/4,
         list_sessions_for_worker/6,
         list_sessions_for_worker/7,
         list_step_consumers/5,
         list_step_consumers/7,
         list_step_consumers/8,
         list_step_dependencies/5,
         list_step_dependencies/7,
         list_step_dependencies/8,
         list_steps/4,
         list_steps/6,
         list_steps/7,
         list_storage_profiles/2,
         list_storage_profiles/4,
         list_storage_profiles/5,
         list_storage_profiles_for_queue/3,
         list_storage_profiles_for_queue/5,
         list_storage_profiles_for_queue/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_tasks/5,
         list_tasks/7,
         list_tasks/8,
         list_workers/3,
         list_workers/5,
         list_workers/6,
         put_metered_product/4,
         put_metered_product/5,
         search_jobs/3,
         search_jobs/4,
         search_steps/3,
         search_steps/4,
         search_tasks/3,
         search_tasks/4,
         search_workers/3,
         search_workers/4,
         start_sessions_statistics_aggregation/3,
         start_sessions_statistics_aggregation/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_budget/4,
         update_budget/5,
         update_farm/3,
         update_farm/4,
         update_fleet/4,
         update_fleet/5,
         update_job/5,
         update_job/6,
         update_limit/4,
         update_limit/5,
         update_monitor/3,
         update_monitor/4,
         update_queue/4,
         update_queue/5,
         update_queue_environment/5,
         update_queue_environment/6,
         update_queue_fleet_association/5,
         update_queue_fleet_association/6,
         update_queue_limit_association/5,
         update_queue_limit_association/6,
         update_session/6,
         update_session/7,
         update_step/6,
         update_step/7,
         update_storage_profile/4,
         update_storage_profile/5,
         update_task/7,
         update_task/8,
         update_worker/5,
         update_worker/6,
         update_worker_schedule/5,
         update_worker_schedule/6]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_fleet_members_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_fleet_members_request() :: #{binary() => any()}.

%% Example:
%% update_queue_fleet_association_response() :: #{}
-type update_queue_fleet_association_response() :: #{}.


%% Example:
%% list_steps_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_steps_request() :: #{binary() => any()}.


%% Example:
%% windows_user() :: #{
%%   <<"passwordArn">> => string(),
%%   <<"user">> => string()
%% }
-type windows_user() :: #{binary() => any()}.


%% Example:
%% start_sessions_statistics_aggregation_response() :: #{
%%   <<"aggregationId">> => string()
%% }
-type start_sessions_statistics_aggregation_response() :: #{binary() => any()}.

%% Example:
%% assume_queue_role_for_user_request() :: #{}
-type assume_queue_role_for_user_request() :: #{}.


%% Example:
%% fleet_attribute_capability() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string()())
%% }
-type fleet_attribute_capability() :: #{binary() => any()}.


%% Example:
%% job_details_error() :: #{
%%   <<"code">> => list(any()),
%%   <<"jobId">> => string(),
%%   <<"message">> => string()
%% }
-type job_details_error() :: #{binary() => any()}.


%% Example:
%% create_queue_environment_response() :: #{
%%   <<"queueEnvironmentId">> => string()
%% }
-type create_queue_environment_response() :: #{binary() => any()}.


%% Example:
%% list_queue_environments_response() :: #{
%%   <<"environments">> => list(queue_environment_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_queue_environments_response() :: #{binary() => any()}.


%% Example:
%% fixed_budget_schedule() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type fixed_budget_schedule() :: #{binary() => any()}.


%% Example:
%% assigned_sync_input_job_attachments_session_action_definition() :: #{
%%   <<"stepId">> => string()
%% }
-type assigned_sync_input_job_attachments_session_action_definition() :: #{binary() => any()}.


%% Example:
%% get_queue_response() :: #{
%%   <<"allowedStorageProfileIds">> => list(string()()),
%%   <<"blockedReason">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"defaultBudgetAction">> => list(any()),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"farmId">> => string(),
%%   <<"jobAttachmentSettings">> => job_attachment_settings(),
%%   <<"jobRunAsUser">> => job_run_as_user(),
%%   <<"queueId">> => string(),
%%   <<"requiredFileSystemLocationNames">> => list(string()()),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_queue_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> => map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_task_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"failureRetryCount">> => integer(),
%%   <<"latestSessionActionId">> => string(),
%%   <<"parameters">> => map(),
%%   <<"runStatus">> => list(any()),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"targetRunStatus">> => list(any()),
%%   <<"taskId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_task_response() :: #{binary() => any()}.


%% Example:
%% delete_fleet_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_fleet_request() :: #{binary() => any()}.


%% Example:
%% environment_enter_session_action_definition_summary() :: #{
%%   <<"environmentId">> => string()
%% }
-type environment_enter_session_action_definition_summary() :: #{binary() => any()}.


%% Example:
%% list_queues_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principalId">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_queues_request() :: #{binary() => any()}.

%% Example:
%% associate_member_to_farm_response() :: #{}
-type associate_member_to_farm_response() :: #{}.


%% Example:
%% budget_action_to_remove() :: #{
%%   <<"thresholdPercentage">> => float(),
%%   <<"type">> => list(any())
%% }
-type budget_action_to_remove() :: #{binary() => any()}.


%% Example:
%% task_run_session_action_definition_summary() :: #{
%%   <<"stepId">> => string(),
%%   <<"taskId">> => string()
%% }
-type task_run_session_action_definition_summary() :: #{binary() => any()}.


%% Example:
%% session_summary() :: #{
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"fleetId">> => string(),
%%   <<"lifecycleStatus">> => list(any()),
%%   <<"sessionId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"targetLifecycleStatus">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"workerId">> => string()
%% }
-type session_summary() :: #{binary() => any()}.

%% Example:
%% delete_monitor_request() :: #{}
-type delete_monitor_request() :: #{}.

%% Example:
%% disassociate_member_from_farm_request() :: #{}
-type disassociate_member_from_farm_request() :: #{}.


%% Example:
%% search_tasks_request() :: #{
%%   <<"filterExpressions">> => search_grouped_filter_expressions(),
%%   <<"itemOffset">> := integer(),
%%   <<"jobId">> => string(),
%%   <<"pageSize">> => integer(),
%%   <<"queueIds">> := list(string()()),
%%   <<"sortExpressions">> => list(list()())
%% }
-type search_tasks_request() :: #{binary() => any()}.


%% Example:
%% get_session_response() :: #{
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"fleetId">> => string(),
%%   <<"hostProperties">> => host_properties_response(),
%%   <<"lifecycleStatus">> => list(any()),
%%   <<"log">> => log_configuration(),
%%   <<"sessionId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"targetLifecycleStatus">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"workerId">> => string(),
%%   <<"workerLog">> => log_configuration()
%% }
-type get_session_response() :: #{binary() => any()}.

%% Example:
%% delete_budget_response() :: #{}
-type delete_budget_response() :: #{}.


%% Example:
%% list_monitors_response() :: #{
%%   <<"monitors">> => list(monitor_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_monitors_response() :: #{binary() => any()}.


%% Example:
%% update_queue_limit_association_request() :: #{
%%   <<"status">> := list(any())
%% }
-type update_queue_limit_association_request() :: #{binary() => any()}.


%% Example:
%% create_job_response() :: #{
%%   <<"jobId">> => string()
%% }
-type create_job_response() :: #{binary() => any()}.


%% Example:
%% batch_get_job_entity_request() :: #{
%%   <<"identifiers">> := list(list()())
%% }
-type batch_get_job_entity_request() :: #{binary() => any()}.


%% Example:
%% update_step_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"targetTaskRunStatus">> := list(any())
%% }
-type update_step_request() :: #{binary() => any()}.


%% Example:
%% list_session_actions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"taskId">> => string()
%% }
-type list_session_actions_request() :: #{binary() => any()}.

%% Example:
%% delete_queue_fleet_association_request() :: #{}
-type delete_queue_fleet_association_request() :: #{}.


%% Example:
%% batch_get_job_entity_response() :: #{
%%   <<"entities">> => list(list()()),
%%   <<"errors">> => list(list()())
%% }
-type batch_get_job_entity_response() :: #{binary() => any()}.


%% Example:
%% create_budget_response() :: #{
%%   <<"budgetId">> => string()
%% }
-type create_budget_response() :: #{binary() => any()}.


%% Example:
%% updated_session_action_info() :: #{
%%   <<"completedStatus">> => list(any()),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"processExitCode">> => integer(),
%%   <<"progressMessage">> => string(),
%%   <<"progressPercent">> => float(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type updated_session_action_info() :: #{binary() => any()}.

%% Example:
%% disassociate_member_from_queue_response() :: #{}
-type disassociate_member_from_queue_response() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_queue_fleet_associations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"queueFleetAssociations">> => list(queue_fleet_association_summary()())
%% }
-type list_queue_fleet_associations_response() :: #{binary() => any()}.


%% Example:
%% list_sessions_for_worker_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_sessions_for_worker_request() :: #{binary() => any()}.

%% Example:
%% get_limit_request() :: #{}
-type get_limit_request() :: #{}.

%% Example:
%% get_task_request() :: #{}
-type get_task_request() :: #{}.


%% Example:
%% list_available_metered_products_response() :: #{
%%   <<"meteredProducts">> => list(metered_product_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_available_metered_products_response() :: #{binary() => any()}.


%% Example:
%% create_fleet_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> := list(),
%%   <<"description">> => string(),
%%   <<"displayName">> := string(),
%%   <<"maxWorkerCount">> := integer(),
%%   <<"minWorkerCount">> => integer(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map()
%% }
-type create_fleet_request() :: #{binary() => any()}.


%% Example:
%% service_managed_ec2_instance_market_options() :: #{
%%   <<"type">> => list(any())
%% }
-type service_managed_ec2_instance_market_options() :: #{binary() => any()}.


%% Example:
%% fleet_capabilities() :: #{
%%   <<"amounts">> => list(fleet_amount_capability()()),
%%   <<"attributes">> => list(fleet_attribute_capability()())
%% }
-type fleet_capabilities() :: #{binary() => any()}.


%% Example:
%% step_required_capabilities() :: #{
%%   <<"amounts">> => list(step_amount_capability()()),
%%   <<"attributes">> => list(step_attribute_capability()())
%% }
-type step_required_capabilities() :: #{binary() => any()}.


%% Example:
%% list_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principalId">> => string()
%% }
-type list_jobs_request() :: #{binary() => any()}.


%% Example:
%% queue_limit_association_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"limitId">> => string(),
%%   <<"queueId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type queue_limit_association_summary() :: #{binary() => any()}.


%% Example:
%% update_storage_profile_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"displayName">> => string(),
%%   <<"fileSystemLocationsToAdd">> => list(file_system_location()()),
%%   <<"fileSystemLocationsToRemove">> => list(file_system_location()()),
%%   <<"osFamily">> => list(any())
%% }
-type update_storage_profile_request() :: #{binary() => any()}.


%% Example:
%% v_cpu_count_range() :: #{
%%   <<"max">> => integer(),
%%   <<"min">> => integer()
%% }
-type v_cpu_count_range() :: #{binary() => any()}.

%% Example:
%% update_limit_response() :: #{}
-type update_limit_response() :: #{}.

%% Example:
%% disassociate_member_from_fleet_response() :: #{}
-type disassociate_member_from_fleet_response() :: #{}.

%% Example:
%% get_worker_request() :: #{}
-type get_worker_request() :: #{}.

%% Example:
%% get_monitor_request() :: #{}
-type get_monitor_request() :: #{}.

%% Example:
%% delete_fleet_response() :: #{}
-type delete_fleet_response() :: #{}.


%% Example:
%% budget_summary() :: #{
%%   <<"approximateDollarLimit">> => float(),
%%   <<"budgetId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"usageTrackingResource">> => list(),
%%   <<"usages">> => consumed_usages()
%% }
-type budget_summary() :: #{binary() => any()}.


%% Example:
%% update_worker_request() :: #{
%%   <<"capabilities">> => worker_capabilities(),
%%   <<"hostProperties">> => host_properties_request(),
%%   <<"status">> => list(any())
%% }
-type update_worker_request() :: #{binary() => any()}.


%% Example:
%% search_workers_request() :: #{
%%   <<"filterExpressions">> => search_grouped_filter_expressions(),
%%   <<"fleetIds">> := list(string()()),
%%   <<"itemOffset">> := integer(),
%%   <<"pageSize">> => integer(),
%%   <<"sortExpressions">> => list(list()())
%% }
-type search_workers_request() :: #{binary() => any()}.


%% Example:
%% search_term_filter_expression() :: #{
%%   <<"matchType">> => list(any()),
%%   <<"searchTerm">> => string()
%% }
-type search_term_filter_expression() :: #{binary() => any()}.


%% Example:
%% customer_managed_fleet_configuration() :: #{
%%   <<"mode">> => list(any()),
%%   <<"storageProfileId">> => string(),
%%   <<"workerCapabilities">> => customer_managed_worker_capabilities()
%% }
-type customer_managed_fleet_configuration() :: #{binary() => any()}.


%% Example:
%% list_license_endpoints_response() :: #{
%%   <<"licenseEndpoints">> => list(license_endpoint_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_license_endpoints_response() :: #{binary() => any()}.


%% Example:
%% service_managed_ec2_fleet_configuration() :: #{
%%   <<"instanceCapabilities">> => service_managed_ec2_instance_capabilities(),
%%   <<"instanceMarketOptions">> => service_managed_ec2_instance_market_options()
%% }
-type service_managed_ec2_fleet_configuration() :: #{binary() => any()}.


%% Example:
%% string_filter_expression() :: #{
%%   <<"name">> => string(),
%%   <<"operator">> => list(any()),
%%   <<"value">> => string()
%% }
-type string_filter_expression() :: #{binary() => any()}.


%% Example:
%% worker_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"farmId">> => string(),
%%   <<"fleetId">> => string(),
%%   <<"hostProperties">> => host_properties_response(),
%%   <<"log">> => log_configuration(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"workerId">> => string()
%% }
-type worker_summary() :: #{binary() => any()}.


%% Example:
%% memory_mi_b_range() :: #{
%%   <<"max">> => integer(),
%%   <<"min">> => integer()
%% }
-type memory_mi_b_range() :: #{binary() => any()}.


%% Example:
%% manifest_properties() :: #{
%%   <<"fileSystemLocationName">> => string(),
%%   <<"inputManifestHash">> => string(),
%%   <<"inputManifestPath">> => string(),
%%   <<"outputRelativeDirectories">> => list(string()()),
%%   <<"rootPath">> => string(),
%%   <<"rootPathFormat">> => list(any())
%% }
-type manifest_properties() :: #{binary() => any()}.


%% Example:
%% list_sessions_for_worker_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sessions">> => list(worker_session_summary()())
%% }
-type list_sessions_for_worker_response() :: #{binary() => any()}.


%% Example:
%% list_fleets_request() :: #{
%%   <<"displayName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principalId">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_fleets_request() :: #{binary() => any()}.


%% Example:
%% list_budgets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_budgets_request() :: #{binary() => any()}.


%% Example:
%% worker_attribute_capability() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string()())
%% }
-type worker_attribute_capability() :: #{binary() => any()}.


%% Example:
%% environment_exit_session_action_definition() :: #{
%%   <<"environmentId">> => string()
%% }
-type environment_exit_session_action_definition() :: #{binary() => any()}.


%% Example:
%% task_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"failureRetryCount">> => integer(),
%%   <<"latestSessionActionId">> => string(),
%%   <<"parameters">> => map(),
%%   <<"runStatus">> => list(any()),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"targetRunStatus">> => list(any()),
%%   <<"taskId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type task_summary() :: #{binary() => any()}.


%% Example:
%% dependency_counts() :: #{
%%   <<"consumersResolved">> => integer(),
%%   <<"consumersUnresolved">> => integer(),
%%   <<"dependenciesResolved">> => integer(),
%%   <<"dependenciesUnresolved">> => integer()
%% }
-type dependency_counts() :: #{binary() => any()}.


%% Example:
%% step_search_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"lifecycleStatus">> => list(any()),
%%   <<"lifecycleStatusMessage">> => string(),
%%   <<"name">> => string(),
%%   <<"parameterSpace">> => parameter_space(),
%%   <<"queueId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"stepId">> => string(),
%%   <<"targetTaskRunStatus">> => list(any()),
%%   <<"taskRunStatus">> => list(any()),
%%   <<"taskRunStatusCounts">> => map()
%% }
-type step_search_summary() :: #{binary() => any()}.


%% Example:
%% search_steps_response() :: #{
%%   <<"nextItemOffset">> => integer(),
%%   <<"steps">> => list(step_search_summary()()),
%%   <<"totalResults">> => integer()
%% }
-type search_steps_response() :: #{binary() => any()}.

%% Example:
%% delete_monitor_response() :: #{}
-type delete_monitor_response() :: #{}.

%% Example:
%% associate_member_to_fleet_response() :: #{}
-type associate_member_to_fleet_response() :: #{}.


%% Example:
%% step_amount_capability() :: #{
%%   <<"max">> => float(),
%%   <<"min">> => float(),
%%   <<"name">> => string(),
%%   <<"value">> => float()
%% }
-type step_amount_capability() :: #{binary() => any()}.


%% Example:
%% assume_queue_role_for_worker_response() :: #{
%%   <<"credentials">> => aws_credentials()
%% }
-type assume_queue_role_for_worker_response() :: #{binary() => any()}.

%% Example:
%% disassociate_member_from_queue_request() :: #{}
-type disassociate_member_from_queue_request() :: #{}.


%% Example:
%% date_time_filter_expression() :: #{
%%   <<"dateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"operator">> => list(any())
%% }
-type date_time_filter_expression() :: #{binary() => any()}.


%% Example:
%% list_workers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_workers_request() :: #{binary() => any()}.


%% Example:
%% list_jobs_response() :: #{
%%   <<"jobs">> => list(job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_response() :: #{binary() => any()}.


%% Example:
%% create_job_request() :: #{
%%   <<"attachments">> => attachments(),
%%   <<"clientToken">> => string(),
%%   <<"maxFailedTasksCount">> => integer(),
%%   <<"maxRetriesPerTask">> => integer(),
%%   <<"maxWorkerCount">> => integer(),
%%   <<"parameters">> => map(),
%%   <<"priority">> := integer(),
%%   <<"sourceJobId">> => string(),
%%   <<"storageProfileId">> => string(),
%%   <<"targetTaskRunStatus">> => list(any()),
%%   <<"template">> => string(),
%%   <<"templateType">> => list(any())
%% }
-type create_job_request() :: #{binary() => any()}.


%% Example:
%% list_limits_response() :: #{
%%   <<"limits">> => list(limit_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_limits_response() :: #{binary() => any()}.


%% Example:
%% list_monitors_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_monitors_request() :: #{binary() => any()}.


%% Example:
%% list_step_dependencies_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_step_dependencies_request() :: #{binary() => any()}.

%% Example:
%% update_storage_profile_response() :: #{}
-type update_storage_profile_response() :: #{}.


%% Example:
%% list_fleets_response() :: #{
%%   <<"fleets">> => list(fleet_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_fleets_response() :: #{binary() => any()}.


%% Example:
%% license_endpoint_summary() :: #{
%%   <<"licenseEndpointId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"vpcId">> => string()
%% }
-type license_endpoint_summary() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% ec2_ebs_volume() :: #{
%%   <<"iops">> => integer(),
%%   <<"sizeGiB">> => integer(),
%%   <<"throughputMiB">> => integer()
%% }
-type ec2_ebs_volume() :: #{binary() => any()}.


%% Example:
%% update_queue_request() :: #{
%%   <<"allowedStorageProfileIdsToAdd">> => list(string()()),
%%   <<"allowedStorageProfileIdsToRemove">> => list(string()()),
%%   <<"clientToken">> => string(),
%%   <<"defaultBudgetAction">> => list(any()),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"jobAttachmentSettings">> => job_attachment_settings(),
%%   <<"jobRunAsUser">> => job_run_as_user(),
%%   <<"requiredFileSystemLocationNamesToAdd">> => list(string()()),
%%   <<"requiredFileSystemLocationNamesToRemove">> => list(string()()),
%%   <<"roleArn">> => string()
%% }
-type update_queue_request() :: #{binary() => any()}.


%% Example:
%% update_worker_schedule_request() :: #{
%%   <<"updatedSessionActions">> => map()
%% }
-type update_worker_schedule_request() :: #{binary() => any()}.


%% Example:
%% list_job_members_response() :: #{
%%   <<"members">> => list(job_member()()),
%%   <<"nextToken">> => string()
%% }
-type list_job_members_response() :: #{binary() => any()}.


%% Example:
%% create_queue_limit_association_request() :: #{
%%   <<"limitId">> := string(),
%%   <<"queueId">> := string()
%% }
-type create_queue_limit_association_request() :: #{binary() => any()}.

%% Example:
%% update_monitor_response() :: #{}
-type update_monitor_response() :: #{}.


%% Example:
%% storage_profile_summary() :: #{
%%   <<"displayName">> => string(),
%%   <<"osFamily">> => list(any()),
%%   <<"storageProfileId">> => string()
%% }
-type storage_profile_summary() :: #{binary() => any()}.


%% Example:
%% create_monitor_response() :: #{
%%   <<"identityCenterApplicationArn">> => string(),
%%   <<"monitorId">> => string()
%% }
-type create_monitor_response() :: #{binary() => any()}.

%% Example:
%% delete_metered_product_response() :: #{}
-type delete_metered_product_response() :: #{}.

%% Example:
%% get_session_request() :: #{}
-type get_session_request() :: #{}.

%% Example:
%% delete_queue_limit_association_response() :: #{}
-type delete_queue_limit_association_response() :: #{}.


%% Example:
%% get_storage_profile_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"displayName">> => string(),
%%   <<"fileSystemLocations">> => list(file_system_location()()),
%%   <<"osFamily">> => list(any()),
%%   <<"storageProfileId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_storage_profile_response() :: #{binary() => any()}.


%% Example:
%% service_managed_ec2_instance_capabilities() :: #{
%%   <<"acceleratorCapabilities">> => accelerator_capabilities(),
%%   <<"allowedInstanceTypes">> => list(string()()),
%%   <<"cpuArchitectureType">> => list(any()),
%%   <<"customAmounts">> => list(fleet_amount_capability()()),
%%   <<"customAttributes">> => list(fleet_attribute_capability()()),
%%   <<"excludedInstanceTypes">> => list(string()()),
%%   <<"memoryMiB">> => memory_mi_b_range(),
%%   <<"osFamily">> => list(any()),
%%   <<"rootEbsVolume">> => ec2_ebs_volume(),
%%   <<"vCpuCount">> => v_cpu_count_range()
%% }
-type service_managed_ec2_instance_capabilities() :: #{binary() => any()}.


%% Example:
%% task_search_summary() :: #{
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"failureRetryCount">> => integer(),
%%   <<"jobId">> => string(),
%%   <<"parameters">> => map(),
%%   <<"queueId">> => string(),
%%   <<"runStatus">> => list(any()),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"stepId">> => string(),
%%   <<"targetRunStatus">> => list(any()),
%%   <<"taskId">> => string()
%% }
-type task_search_summary() :: #{binary() => any()}.


%% Example:
%% list_session_actions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sessionActions">> => list(session_action_summary()())
%% }
-type list_session_actions_response() :: #{binary() => any()}.


%% Example:
%% response_budget_action() :: #{
%%   <<"description">> => string(),
%%   <<"thresholdPercentage">> => float(),
%%   <<"type">> => list(any())
%% }
-type response_budget_action() :: #{binary() => any()}.


%% Example:
%% update_budget_request() :: #{
%%   <<"actionsToAdd">> => list(budget_action_to_add()()),
%%   <<"actionsToRemove">> => list(budget_action_to_remove()()),
%%   <<"approximateDollarLimit">> => float(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"schedule">> => list(),
%%   <<"status">> => list(any())
%% }
-type update_budget_request() :: #{binary() => any()}.


%% Example:
%% step_attribute_capability() :: #{
%%   <<"allOf">> => list(string()()),
%%   <<"anyOf">> => list(string()()),
%%   <<"name">> => string()
%% }
-type step_attribute_capability() :: #{binary() => any()}.


%% Example:
%% get_queue_limit_association_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"limitId">> => string(),
%%   <<"queueId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_queue_limit_association_response() :: #{binary() => any()}.


%% Example:
%% step_details_entity() :: #{
%%   <<"dependencies">> => list(string()()),
%%   <<"jobId">> => string(),
%%   <<"schemaVersion">> => string(),
%%   <<"stepId">> => string(),
%%   <<"template">> => any()
%% }
-type step_details_entity() :: #{binary() => any()}.


%% Example:
%% get_step_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"dependencyCounts">> => dependency_counts(),
%%   <<"description">> => string(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"lifecycleStatus">> => list(any()),
%%   <<"lifecycleStatusMessage">> => string(),
%%   <<"name">> => string(),
%%   <<"parameterSpace">> => parameter_space(),
%%   <<"requiredCapabilities">> => step_required_capabilities(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"stepId">> => string(),
%%   <<"targetTaskRunStatus">> => list(any()),
%%   <<"taskRunStatus">> => list(any()),
%%   <<"taskRunStatusCounts">> => map(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_step_response() :: #{binary() => any()}.


%% Example:
%% queue_summary() :: #{
%%   <<"blockedReason">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"defaultBudgetAction">> => list(any()),
%%   <<"displayName">> => string(),
%%   <<"farmId">> => string(),
%%   <<"queueId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type queue_summary() :: #{binary() => any()}.

%% Example:
%% put_metered_product_request() :: #{}
-type put_metered_product_request() :: #{}.

%% Example:
%% delete_storage_profile_response() :: #{}
-type delete_storage_profile_response() :: #{}.


%% Example:
%% list_queue_limit_associations_request() :: #{
%%   <<"limitId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"queueId">> => string()
%% }
-type list_queue_limit_associations_request() :: #{binary() => any()}.


%% Example:
%% update_worker_schedule_response() :: #{
%%   <<"assignedSessions">> => map(),
%%   <<"cancelSessionActions">> => map(),
%%   <<"desiredWorkerStatus">> => list(any()),
%%   <<"updateIntervalSeconds">> => integer()
%% }
-type update_worker_schedule_response() :: #{binary() => any()}.


%% Example:
%% assigned_task_run_session_action_definition() :: #{
%%   <<"parameters">> => map(),
%%   <<"stepId">> => string(),
%%   <<"taskId">> => string()
%% }
-type assigned_task_run_session_action_definition() :: #{binary() => any()}.

%% Example:
%% create_queue_fleet_association_response() :: #{}
-type create_queue_fleet_association_response() :: #{}.

%% Example:
%% delete_queue_environment_request() :: #{}
-type delete_queue_environment_request() :: #{}.


%% Example:
%% job_member() :: #{
%%   <<"farmId">> => string(),
%%   <<"identityStoreId">> => string(),
%%   <<"jobId">> => string(),
%%   <<"membershipLevel">> => list(any()),
%%   <<"principalId">> => string(),
%%   <<"principalType">> => list(any()),
%%   <<"queueId">> => string()
%% }
-type job_member() :: #{binary() => any()}.


%% Example:
%% create_license_endpoint_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"securityGroupIds">> := list(string()()),
%%   <<"subnetIds">> := list(string()()),
%%   <<"tags">> => map(),
%%   <<"vpcId">> := string()
%% }
-type create_license_endpoint_request() :: #{binary() => any()}.

%% Example:
%% assume_queue_role_for_read_request() :: #{}
-type assume_queue_role_for_read_request() :: #{}.


%% Example:
%% search_grouped_filter_expressions() :: #{
%%   <<"filters">> => list(list()()),
%%   <<"operator">> => list(any())
%% }
-type search_grouped_filter_expressions() :: #{binary() => any()}.

%% Example:
%% delete_worker_request() :: #{}
-type delete_worker_request() :: #{}.


%% Example:
%% job_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"lifecycleStatus">> => list(any()),
%%   <<"lifecycleStatusMessage">> => string(),
%%   <<"maxFailedTasksCount">> => integer(),
%%   <<"maxRetriesPerTask">> => integer(),
%%   <<"maxWorkerCount">> => integer(),
%%   <<"name">> => string(),
%%   <<"priority">> => integer(),
%%   <<"sourceJobId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"targetTaskRunStatus">> => list(any()),
%%   <<"taskRunStatus">> => list(any()),
%%   <<"taskRunStatusCounts">> => map(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type job_summary() :: #{binary() => any()}.


%% Example:
%% update_farm_request() :: #{
%%   <<"description">> => string(),
%%   <<"displayName">> => string()
%% }
-type update_farm_request() :: #{binary() => any()}.


%% Example:
%% list_job_parameter_definitions_response() :: #{
%%   <<"jobParameterDefinitions">> => list(any()()),
%%   <<"nextToken">> => string()
%% }
-type list_job_parameter_definitions_response() :: #{binary() => any()}.


%% Example:
%% search_jobs_request() :: #{
%%   <<"filterExpressions">> => search_grouped_filter_expressions(),
%%   <<"itemOffset">> := integer(),
%%   <<"pageSize">> => integer(),
%%   <<"queueIds">> := list(string()()),
%%   <<"sortExpressions">> => list(list()())
%% }
-type search_jobs_request() :: #{binary() => any()}.


%% Example:
%% create_storage_profile_response() :: #{
%%   <<"storageProfileId">> => string()
%% }
-type create_storage_profile_response() :: #{binary() => any()}.


%% Example:
%% list_sessions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sessions">> => list(session_summary()())
%% }
-type list_sessions_response() :: #{binary() => any()}.


%% Example:
%% job_details_entity() :: #{
%%   <<"jobAttachmentSettings">> => job_attachment_settings(),
%%   <<"jobId">> => string(),
%%   <<"jobRunAsUser">> => job_run_as_user(),
%%   <<"logGroupName">> => string(),
%%   <<"parameters">> => map(),
%%   <<"pathMappingRules">> => list(path_mapping_rule()()),
%%   <<"queueRoleArn">> => string(),
%%   <<"schemaVersion">> => string()
%% }
-type job_details_entity() :: #{binary() => any()}.

%% Example:
%% update_task_response() :: #{}
-type update_task_response() :: #{}.


%% Example:
%% list_storage_profiles_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"storageProfiles">> => list(storage_profile_summary()())
%% }
-type list_storage_profiles_response() :: #{binary() => any()}.


%% Example:
%% create_worker_response() :: #{
%%   <<"workerId">> => string()
%% }
-type create_worker_response() :: #{binary() => any()}.


%% Example:
%% assigned_environment_enter_session_action_definition() :: #{
%%   <<"environmentId">> => string()
%% }
-type assigned_environment_enter_session_action_definition() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"context">> => map(),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any()),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_worker_response() :: #{}
-type delete_worker_response() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"context">> => map(),
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% accelerator_capabilities() :: #{
%%   <<"count">> => accelerator_count_range(),
%%   <<"selections">> => list(accelerator_selection()())
%% }
-type accelerator_capabilities() :: #{binary() => any()}.


%% Example:
%% posix_user() :: #{
%%   <<"group">> => string(),
%%   <<"user">> => string()
%% }
-type posix_user() :: #{binary() => any()}.


%% Example:
%% environment_details_entity() :: #{
%%   <<"environmentId">> => string(),
%%   <<"jobId">> => string(),
%%   <<"schemaVersion">> => string(),
%%   <<"template">> => any()
%% }
-type environment_details_entity() :: #{binary() => any()}.

%% Example:
%% get_queue_environment_request() :: #{}
-type get_queue_environment_request() :: #{}.


%% Example:
%% host_properties_response() :: #{
%%   <<"ec2InstanceArn">> => string(),
%%   <<"ec2InstanceType">> => string(),
%%   <<"hostName">> => string(),
%%   <<"ipAddresses">> => ip_addresses()
%% }
-type host_properties_response() :: #{binary() => any()}.


%% Example:
%% update_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"lifecycleStatus">> => list(any()),
%%   <<"maxFailedTasksCount">> => integer(),
%%   <<"maxRetriesPerTask">> => integer(),
%%   <<"maxWorkerCount">> => integer(),
%%   <<"priority">> => integer(),
%%   <<"targetTaskRunStatus">> => list(any())
%% }
-type update_job_request() :: #{binary() => any()}.


%% Example:
%% consumed_usages() :: #{
%%   <<"approximateDollarUsage">> => [float()]
%% }
-type consumed_usages() :: #{binary() => any()}.


%% Example:
%% list_storage_profiles_for_queue_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"storageProfiles">> => list(storage_profile_summary()())
%% }
-type list_storage_profiles_for_queue_response() :: #{binary() => any()}.


%% Example:
%% get_session_action_response() :: #{
%%   <<"acquiredLimits">> => list(acquired_limit()()),
%%   <<"definition">> => list(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"processExitCode">> => integer(),
%%   <<"progressMessage">> => string(),
%%   <<"progressPercent">> => float(),
%%   <<"sessionActionId">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"workerUpdatedAt">> => non_neg_integer()
%% }
-type get_session_action_response() :: #{binary() => any()}.

%% Example:
%% get_queue_request() :: #{}
-type get_queue_request() :: #{}.


%% Example:
%% get_sessions_statistics_aggregation_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"statistics">> => list(statistics()()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string()
%% }
-type get_sessions_statistics_aggregation_response() :: #{binary() => any()}.


%% Example:
%% update_fleet_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> => list(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"maxWorkerCount">> => integer(),
%%   <<"minWorkerCount">> => integer(),
%%   <<"roleArn">> => string()
%% }
-type update_fleet_request() :: #{binary() => any()}.


%% Example:
%% list_metered_products_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_metered_products_request() :: #{binary() => any()}.

%% Example:
%% get_fleet_request() :: #{}
-type get_fleet_request() :: #{}.


%% Example:
%% search_workers_response() :: #{
%%   <<"nextItemOffset">> => integer(),
%%   <<"totalResults">> => integer(),
%%   <<"workers">> => list(worker_search_summary()())
%% }
-type search_workers_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"context">> => map(),
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"reason">> => list(any()),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% job_details_identifiers() :: #{
%%   <<"jobId">> => string()
%% }
-type job_details_identifiers() :: #{binary() => any()}.


%% Example:
%% get_farm_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"farmId">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_farm_response() :: #{binary() => any()}.


%% Example:
%% step_parameter() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type step_parameter() :: #{binary() => any()}.


%% Example:
%% job_attachment_details_entity() :: #{
%%   <<"attachments">> => attachments(),
%%   <<"jobId">> => string()
%% }
-type job_attachment_details_entity() :: #{binary() => any()}.


%% Example:
%% session_action_summary() :: #{
%%   <<"definition">> => list(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"progressPercent">> => float(),
%%   <<"sessionActionId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"workerUpdatedAt">> => non_neg_integer()
%% }
-type session_action_summary() :: #{binary() => any()}.

%% Example:
%% delete_queue_fleet_association_response() :: #{}
-type delete_queue_fleet_association_response() :: #{}.

%% Example:
%% delete_farm_response() :: #{}
-type delete_farm_response() :: #{}.


%% Example:
%% stats() :: #{
%%   <<"avg">> => float(),
%%   <<"max">> => float(),
%%   <<"min">> => float(),
%%   <<"sum">> => float()
%% }
-type stats() :: #{binary() => any()}.


%% Example:
%% create_license_endpoint_response() :: #{
%%   <<"licenseEndpointId">> => string()
%% }
-type create_license_endpoint_response() :: #{binary() => any()}.


%% Example:
%% get_limit_response() :: #{
%%   <<"amountRequirementName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"currentCount">> => integer(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"farmId">> => string(),
%%   <<"limitId">> => string(),
%%   <<"maxCount">> => integer(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_limit_response() :: #{binary() => any()}.


%% Example:
%% assume_queue_role_for_worker_request() :: #{
%%   <<"queueId">> := string()
%% }
-type assume_queue_role_for_worker_request() :: #{binary() => any()}.


%% Example:
%% update_queue_environment_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"priority">> => integer(),
%%   <<"template">> => string(),
%%   <<"templateType">> => list(any())
%% }
-type update_queue_environment_request() :: #{binary() => any()}.


%% Example:
%% fleet_summary() :: #{
%%   <<"autoScalingStatus">> => list(any()),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"displayName">> => string(),
%%   <<"farmId">> => string(),
%%   <<"fleetId">> => string(),
%%   <<"maxWorkerCount">> => integer(),
%%   <<"minWorkerCount">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"targetWorkerCount">> => integer(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"workerCount">> => integer()
%% }
-type fleet_summary() :: #{binary() => any()}.


%% Example:
%% list_job_members_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_job_members_request() :: #{binary() => any()}.


%% Example:
%% update_session_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"targetLifecycleStatus">> := list(any())
%% }
-type update_session_request() :: #{binary() => any()}.


%% Example:
%% list_queue_limit_associations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"queueLimitAssociations">> => list(queue_limit_association_summary()())
%% }
-type list_queue_limit_associations_response() :: #{binary() => any()}.


%% Example:
%% assume_queue_role_for_read_response() :: #{
%%   <<"credentials">> => aws_credentials()
%% }
-type assume_queue_role_for_read_response() :: #{binary() => any()}.

%% Example:
%% get_budget_request() :: #{}
-type get_budget_request() :: #{}.

%% Example:
%% update_budget_response() :: #{}
-type update_budget_response() :: #{}.


%% Example:
%% assume_queue_role_for_user_response() :: #{
%%   <<"credentials">> => aws_credentials()
%% }
-type assume_queue_role_for_user_response() :: #{binary() => any()}.


%% Example:
%% field_sort_expression() :: #{
%%   <<"name">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type field_sort_expression() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% associate_member_to_job_request() :: #{
%%   <<"identityStoreId">> := string(),
%%   <<"membershipLevel">> := list(any()),
%%   <<"principalType">> := list(any())
%% }
-type associate_member_to_job_request() :: #{binary() => any()}.


%% Example:
%% parameter_space() :: #{
%%   <<"combination">> => string(),
%%   <<"parameters">> => list(step_parameter()())
%% }
-type parameter_space() :: #{binary() => any()}.


%% Example:
%% list_metered_products_response() :: #{
%%   <<"meteredProducts">> => list(metered_product_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_metered_products_response() :: #{binary() => any()}.


%% Example:
%% list_sessions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_sessions_request() :: #{binary() => any()}.


%% Example:
%% assume_fleet_role_for_read_response() :: #{
%%   <<"credentials">> => aws_credentials()
%% }
-type assume_fleet_role_for_read_response() :: #{binary() => any()}.


%% Example:
%% assigned_session() :: #{
%%   <<"jobId">> => string(),
%%   <<"logConfiguration">> => log_configuration(),
%%   <<"queueId">> => string(),
%%   <<"sessionActions">> => list(assigned_session_action()())
%% }
-type assigned_session() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% search_jobs_response() :: #{
%%   <<"jobs">> => list(job_search_summary()()),
%%   <<"nextItemOffset">> => integer(),
%%   <<"totalResults">> => integer()
%% }
-type search_jobs_response() :: #{binary() => any()}.


%% Example:
%% limit_summary() :: #{
%%   <<"amountRequirementName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"currentCount">> => integer(),
%%   <<"displayName">> => string(),
%%   <<"farmId">> => string(),
%%   <<"limitId">> => string(),
%%   <<"maxCount">> => integer(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type limit_summary() :: #{binary() => any()}.


%% Example:
%% environment_exit_session_action_definition_summary() :: #{
%%   <<"environmentId">> => string()
%% }
-type environment_exit_session_action_definition_summary() :: #{binary() => any()}.


%% Example:
%% update_task_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"targetRunStatus">> := list(any())
%% }
-type update_task_request() :: #{binary() => any()}.


%% Example:
%% acquired_limit() :: #{
%%   <<"count">> => integer(),
%%   <<"limitId">> => string()
%% }
-type acquired_limit() :: #{binary() => any()}.


%% Example:
%% create_queue_request() :: #{
%%   <<"allowedStorageProfileIds">> => list(string()()),
%%   <<"clientToken">> => string(),
%%   <<"defaultBudgetAction">> => list(any()),
%%   <<"description">> => string(),
%%   <<"displayName">> := string(),
%%   <<"jobAttachmentSettings">> => job_attachment_settings(),
%%   <<"jobRunAsUser">> => job_run_as_user(),
%%   <<"requiredFileSystemLocationNames">> => list(string()()),
%%   <<"roleArn">> => string(),
%%   <<"tags">> => map()
%% }
-type create_queue_request() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"bucketName">> => string(),
%%   <<"key">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% list_storage_profiles_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_storage_profiles_request() :: #{binary() => any()}.


%% Example:
%% sync_input_job_attachments_session_action_definition() :: #{
%%   <<"stepId">> => string()
%% }
-type sync_input_job_attachments_session_action_definition() :: #{binary() => any()}.


%% Example:
%% list_queue_members_response() :: #{
%%   <<"members">> => list(queue_member()()),
%%   <<"nextToken">> => string()
%% }
-type list_queue_members_response() :: #{binary() => any()}.


%% Example:
%% get_queue_environment_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"name">> => string(),
%%   <<"priority">> => integer(),
%%   <<"queueEnvironmentId">> => string(),
%%   <<"template">> => string(),
%%   <<"templateType">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_queue_environment_response() :: #{binary() => any()}.


%% Example:
%% update_monitor_request() :: #{
%%   <<"displayName">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"subdomain">> => string()
%% }
-type update_monitor_request() :: #{binary() => any()}.

%% Example:
%% get_farm_request() :: #{}
-type get_farm_request() :: #{}.


%% Example:
%% create_queue_environment_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"priority">> := integer(),
%%   <<"template">> := string(),
%%   <<"templateType">> := list(any())
%% }
-type create_queue_environment_request() :: #{binary() => any()}.


%% Example:
%% queue_environment_summary() :: #{
%%   <<"name">> => string(),
%%   <<"priority">> => integer(),
%%   <<"queueEnvironmentId">> => string()
%% }
-type queue_environment_summary() :: #{binary() => any()}.


%% Example:
%% list_farm_members_response() :: #{
%%   <<"members">> => list(farm_member()()),
%%   <<"nextToken">> => string()
%% }
-type list_farm_members_response() :: #{binary() => any()}.

%% Example:
%% disassociate_member_from_job_request() :: #{}
-type disassociate_member_from_job_request() :: #{}.


%% Example:
%% step_details_error() :: #{
%%   <<"code">> => list(any()),
%%   <<"jobId">> => string(),
%%   <<"message">> => string(),
%%   <<"stepId">> => string()
%% }
-type step_details_error() :: #{binary() => any()}.


%% Example:
%% environment_enter_session_action_definition() :: #{
%%   <<"environmentId">> => string()
%% }
-type environment_enter_session_action_definition() :: #{binary() => any()}.


%% Example:
%% search_steps_request() :: #{
%%   <<"filterExpressions">> => search_grouped_filter_expressions(),
%%   <<"itemOffset">> := integer(),
%%   <<"jobId">> => string(),
%%   <<"pageSize">> => integer(),
%%   <<"queueIds">> := list(string()()),
%%   <<"sortExpressions">> => list(list()())
%% }
-type search_steps_request() :: #{binary() => any()}.

%% Example:
%% update_fleet_response() :: #{}
-type update_fleet_response() :: #{}.

%% Example:
%% update_job_response() :: #{}
-type update_job_response() :: #{}.


%% Example:
%% get_license_endpoint_response() :: #{
%%   <<"dnsName">> => string(),
%%   <<"licenseEndpointId">> => string(),
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcId">> => string()
%% }
-type get_license_endpoint_response() :: #{binary() => any()}.


%% Example:
%% create_farm_response() :: #{
%%   <<"farmId">> => string()
%% }
-type create_farm_response() :: #{binary() => any()}.


%% Example:
%% get_worker_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"farmId">> => string(),
%%   <<"fleetId">> => string(),
%%   <<"hostProperties">> => host_properties_response(),
%%   <<"log">> => log_configuration(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"workerId">> => string()
%% }
-type get_worker_response() :: #{binary() => any()}.


%% Example:
%% job_run_as_user() :: #{
%%   <<"posix">> => posix_user(),
%%   <<"runAs">> => list(any()),
%%   <<"windows">> => windows_user()
%% }
-type job_run_as_user() :: #{binary() => any()}.


%% Example:
%% create_queue_fleet_association_request() :: #{
%%   <<"fleetId">> := string(),
%%   <<"queueId">> := string()
%% }
-type create_queue_fleet_association_request() :: #{binary() => any()}.


%% Example:
%% attachments() :: #{
%%   <<"fileSystem">> => list(any()),
%%   <<"manifests">> => list(manifest_properties()())
%% }
-type attachments() :: #{binary() => any()}.


%% Example:
%% task_run_session_action_definition() :: #{
%%   <<"parameters">> => map(),
%%   <<"stepId">> => string(),
%%   <<"taskId">> => string()
%% }
-type task_run_session_action_definition() :: #{binary() => any()}.


%% Example:
%% accelerator_total_memory_mi_b_range() :: #{
%%   <<"max">> => integer(),
%%   <<"min">> => integer()
%% }
-type accelerator_total_memory_mi_b_range() :: #{binary() => any()}.

%% Example:
%% put_metered_product_response() :: #{}
-type put_metered_product_response() :: #{}.

%% Example:
%% delete_limit_response() :: #{}
-type delete_limit_response() :: #{}.


%% Example:
%% step_dependency() :: #{
%%   <<"status">> => list(any()),
%%   <<"stepId">> => string()
%% }
-type step_dependency() :: #{binary() => any()}.


%% Example:
%% associate_member_to_fleet_request() :: #{
%%   <<"identityStoreId">> := string(),
%%   <<"membershipLevel">> := list(any()),
%%   <<"principalType">> := list(any())
%% }
-type associate_member_to_fleet_request() :: #{binary() => any()}.


%% Example:
%% user_jobs_first() :: #{
%%   <<"userIdentityId">> => string()
%% }
-type user_jobs_first() :: #{binary() => any()}.

%% Example:
%% get_session_action_request() :: #{}
-type get_session_action_request() :: #{}.


%% Example:
%% list_steps_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"steps">> => list(step_summary()())
%% }
-type list_steps_response() :: #{binary() => any()}.


%% Example:
%% list_workers_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workers">> => list(worker_summary()())
%% }
-type list_workers_response() :: #{binary() => any()}.


%% Example:
%% start_sessions_statistics_aggregation_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"groupBy">> := list(list(any())()),
%%   <<"period">> => list(any()),
%%   <<"resourceIds">> := list(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"statistics">> := list(list(any())()),
%%   <<"timezone">> => string()
%% }
-type start_sessions_statistics_aggregation_request() :: #{binary() => any()}.


%% Example:
%% list_farm_members_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_farm_members_request() :: #{binary() => any()}.


%% Example:
%% environment_details_error() :: #{
%%   <<"code">> => list(any()),
%%   <<"environmentId">> => string(),
%%   <<"jobId">> => string(),
%%   <<"message">> => string()
%% }
-type environment_details_error() :: #{binary() => any()}.


%% Example:
%% list_step_consumers_response() :: #{
%%   <<"consumers">> => list(step_consumer()()),
%%   <<"nextToken">> => string()
%% }
-type list_step_consumers_response() :: #{binary() => any()}.


%% Example:
%% associate_member_to_queue_request() :: #{
%%   <<"identityStoreId">> := string(),
%%   <<"membershipLevel">> := list(any()),
%%   <<"principalType">> := list(any())
%% }
-type associate_member_to_queue_request() :: #{binary() => any()}.


%% Example:
%% create_storage_profile_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"displayName">> := string(),
%%   <<"fileSystemLocations">> => list(file_system_location()()),
%%   <<"osFamily">> := list(any())
%% }
-type create_storage_profile_request() :: #{binary() => any()}.


%% Example:
%% search_tasks_response() :: #{
%%   <<"nextItemOffset">> => integer(),
%%   <<"tasks">> => list(task_search_summary()()),
%%   <<"totalResults">> => integer()
%% }
-type search_tasks_response() :: #{binary() => any()}.


%% Example:
%% worker_amount_capability() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => [float()]
%% }
-type worker_amount_capability() :: #{binary() => any()}.


%% Example:
%% customer_managed_worker_capabilities() :: #{
%%   <<"acceleratorCount">> => accelerator_count_range(),
%%   <<"acceleratorTotalMemoryMiB">> => accelerator_total_memory_mi_b_range(),
%%   <<"acceleratorTypes">> => list(list(any())()),
%%   <<"cpuArchitectureType">> => list(any()),
%%   <<"customAmounts">> => list(fleet_amount_capability()()),
%%   <<"customAttributes">> => list(fleet_attribute_capability()()),
%%   <<"memoryMiB">> => memory_mi_b_range(),
%%   <<"osFamily">> => list(any()),
%%   <<"vCpuCount">> => v_cpu_count_range()
%% }
-type customer_managed_worker_capabilities() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"context">> => map(),
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% assigned_environment_exit_session_action_definition() :: #{
%%   <<"environmentId">> => string()
%% }
-type assigned_environment_exit_session_action_definition() :: #{binary() => any()}.


%% Example:
%% ip_addresses() :: #{
%%   <<"ipV4Addresses">> => list(string()()),
%%   <<"ipV6Addresses">> => list(string()())
%% }
-type ip_addresses() :: #{binary() => any()}.


%% Example:
%% get_sessions_statistics_aggregation_request() :: #{
%%   <<"aggregationId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_sessions_statistics_aggregation_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% copy_job_template_response() :: #{
%%   <<"templateType">> => list(any())
%% }
-type copy_job_template_response() :: #{binary() => any()}.


%% Example:
%% aws_credentials() :: #{
%%   <<"accessKeyId">> => string(),
%%   <<"expiration">> => non_neg_integer(),
%%   <<"secretAccessKey">> => string(),
%%   <<"sessionToken">> => string()
%% }
-type aws_credentials() :: #{binary() => any()}.


%% Example:
%% fleet_amount_capability() :: #{
%%   <<"max">> => [float()],
%%   <<"min">> => [float()],
%%   <<"name">> => string()
%% }
-type fleet_amount_capability() :: #{binary() => any()}.


%% Example:
%% get_queue_fleet_association_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"fleetId">> => string(),
%%   <<"queueId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_queue_fleet_association_response() :: #{binary() => any()}.


%% Example:
%% create_budget_request() :: #{
%%   <<"actions">> := list(budget_action_to_add()()),
%%   <<"approximateDollarLimit">> := float(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> := string(),
%%   <<"schedule">> := list(),
%%   <<"usageTrackingResource">> := list()
%% }
-type create_budget_request() :: #{binary() => any()}.


%% Example:
%% list_budgets_response() :: #{
%%   <<"budgets">> => list(budget_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_budgets_response() :: #{binary() => any()}.

%% Example:
%% delete_storage_profile_request() :: #{}
-type delete_storage_profile_request() :: #{}.


%% Example:
%% statistics() :: #{
%%   <<"aggregationEndTime">> => non_neg_integer(),
%%   <<"aggregationStartTime">> => non_neg_integer(),
%%   <<"costInUsd">> => stats(),
%%   <<"count">> => integer(),
%%   <<"fleetId">> => string(),
%%   <<"instanceType">> => string(),
%%   <<"jobId">> => string(),
%%   <<"jobName">> => string(),
%%   <<"licenseProduct">> => string(),
%%   <<"queueId">> => string(),
%%   <<"runtimeInSeconds">> => stats(),
%%   <<"usageType">> => list(any()),
%%   <<"userId">> => string()
%% }
-type statistics() :: #{binary() => any()}.


%% Example:
%% get_job_response() :: #{
%%   <<"attachments">> => attachments(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"lifecycleStatus">> => list(any()),
%%   <<"lifecycleStatusMessage">> => string(),
%%   <<"maxFailedTasksCount">> => integer(),
%%   <<"maxRetriesPerTask">> => integer(),
%%   <<"maxWorkerCount">> => integer(),
%%   <<"name">> => string(),
%%   <<"parameters">> => map(),
%%   <<"priority">> => integer(),
%%   <<"sourceJobId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"storageProfileId">> => string(),
%%   <<"targetTaskRunStatus">> => list(any()),
%%   <<"taskRunStatus">> => list(any()),
%%   <<"taskRunStatusCounts">> => map(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_job_response() :: #{binary() => any()}.

%% Example:
%% get_storage_profile_request() :: #{}
-type get_storage_profile_request() :: #{}.


%% Example:
%% create_limit_request() :: #{
%%   <<"amountRequirementName">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> := string(),
%%   <<"maxCount">> := integer()
%% }
-type create_limit_request() :: #{binary() => any()}.

%% Example:
%% update_queue_environment_response() :: #{}
-type update_queue_environment_response() :: #{}.


%% Example:
%% queue_fleet_association_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"fleetId">> => string(),
%%   <<"queueId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type queue_fleet_association_summary() :: #{binary() => any()}.

%% Example:
%% delete_limit_request() :: #{}
-type delete_limit_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"context">> => map(),
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.

%% Example:
%% disassociate_member_from_fleet_request() :: #{}
-type disassociate_member_from_fleet_request() :: #{}.

%% Example:
%% assume_fleet_role_for_read_request() :: #{}
-type assume_fleet_role_for_read_request() :: #{}.

%% Example:
%% update_step_response() :: #{}
-type update_step_response() :: #{}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => integer()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% environment_details_identifiers() :: #{
%%   <<"environmentId">> => string(),
%%   <<"jobId">> => string()
%% }
-type environment_details_identifiers() :: #{binary() => any()}.

%% Example:
%% get_step_request() :: #{}
-type get_step_request() :: #{}.

%% Example:
%% get_job_request() :: #{}
-type get_job_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"context">> => map(),
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => integer(),
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% assume_fleet_role_for_worker_response() :: #{
%%   <<"credentials">> => aws_credentials()
%% }
-type assume_fleet_role_for_worker_response() :: #{binary() => any()}.


%% Example:
%% job_attachment_details_error() :: #{
%%   <<"code">> => list(any()),
%%   <<"jobId">> => string(),
%%   <<"message">> => string()
%% }
-type job_attachment_details_error() :: #{binary() => any()}.

%% Example:
%% delete_license_endpoint_response() :: #{}
-type delete_license_endpoint_response() :: #{}.

%% Example:
%% update_farm_response() :: #{}
-type update_farm_response() :: #{}.

%% Example:
%% associate_member_to_job_response() :: #{}
-type associate_member_to_job_response() :: #{}.


%% Example:
%% list_queue_environments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_queue_environments_request() :: #{binary() => any()}.


%% Example:
%% get_monitor_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"displayName">> => string(),
%%   <<"identityCenterApplicationArn">> => string(),
%%   <<"identityCenterInstanceArn">> => string(),
%%   <<"monitorId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"subdomain">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"url">> => string()
%% }
-type get_monitor_response() :: #{binary() => any()}.


%% Example:
%% assigned_session_action() :: #{
%%   <<"definition">> => list(),
%%   <<"sessionActionId">> => string()
%% }
-type assigned_session_action() :: #{binary() => any()}.


%% Example:
%% parameter_sort_expression() :: #{
%%   <<"name">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type parameter_sort_expression() :: #{binary() => any()}.


%% Example:
%% list_available_metered_products_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_available_metered_products_request() :: #{binary() => any()}.

%% Example:
%% update_session_response() :: #{}
-type update_session_response() :: #{}.


%% Example:
%% list_tasks_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_tasks_request() :: #{binary() => any()}.


%% Example:
%% accelerator_selection() :: #{
%%   <<"name">> => list(any()),
%%   <<"runtime">> => string()
%% }
-type accelerator_selection() :: #{binary() => any()}.


%% Example:
%% list_queues_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"queues">> => list(queue_summary()())
%% }
-type list_queues_response() :: #{binary() => any()}.

%% Example:
%% delete_queue_environment_response() :: #{}
-type delete_queue_environment_response() :: #{}.


%% Example:
%% list_license_endpoints_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_license_endpoints_request() :: #{binary() => any()}.


%% Example:
%% list_queue_fleet_associations_request() :: #{
%%   <<"fleetId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"queueId">> => string()
%% }
-type list_queue_fleet_associations_request() :: #{binary() => any()}.


%% Example:
%% update_limit_request() :: #{
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"maxCount">> => integer()
%% }
-type update_limit_request() :: #{binary() => any()}.


%% Example:
%% update_queue_fleet_association_request() :: #{
%%   <<"status">> := list(any())
%% }
-type update_queue_fleet_association_request() :: #{binary() => any()}.


%% Example:
%% metered_product_summary() :: #{
%%   <<"family">> => string(),
%%   <<"port">> => integer(),
%%   <<"productId">> => string(),
%%   <<"vendor">> => string()
%% }
-type metered_product_summary() :: #{binary() => any()}.

%% Example:
%% update_queue_response() :: #{}
-type update_queue_response() :: #{}.


%% Example:
%% queue_member() :: #{
%%   <<"farmId">> => string(),
%%   <<"identityStoreId">> => string(),
%%   <<"membershipLevel">> => list(any()),
%%   <<"principalId">> => string(),
%%   <<"principalType">> => list(any()),
%%   <<"queueId">> => string()
%% }
-type queue_member() :: #{binary() => any()}.

%% Example:
%% delete_farm_request() :: #{}
-type delete_farm_request() :: #{}.

%% Example:
%% delete_queue_request() :: #{}
-type delete_queue_request() :: #{}.

%% Example:
%% delete_budget_request() :: #{}
-type delete_budget_request() :: #{}.


%% Example:
%% update_worker_response() :: #{
%%   <<"log">> => log_configuration()
%% }
-type update_worker_response() :: #{binary() => any()}.


%% Example:
%% sync_input_job_attachments_session_action_definition_summary() :: #{
%%   <<"stepId">> => string()
%% }
-type sync_input_job_attachments_session_action_definition_summary() :: #{binary() => any()}.


%% Example:
%% create_limit_response() :: #{
%%   <<"limitId">> => string()
%% }
-type create_limit_response() :: #{binary() => any()}.


%% Example:
%% job_search_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"jobParameters">> => map(),
%%   <<"lifecycleStatus">> => list(any()),
%%   <<"lifecycleStatusMessage">> => string(),
%%   <<"maxFailedTasksCount">> => integer(),
%%   <<"maxRetriesPerTask">> => integer(),
%%   <<"maxWorkerCount">> => integer(),
%%   <<"name">> => string(),
%%   <<"priority">> => integer(),
%%   <<"queueId">> => string(),
%%   <<"sourceJobId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"targetTaskRunStatus">> => list(any()),
%%   <<"taskRunStatus">> => list(any()),
%%   <<"taskRunStatusCounts">> => map()
%% }
-type job_search_summary() :: #{binary() => any()}.

%% Example:
%% get_storage_profile_for_queue_request() :: #{}
-type get_storage_profile_for_queue_request() :: #{}.


%% Example:
%% copy_job_template_request() :: #{
%%   <<"targetS3Location">> := s3_location()
%% }
-type copy_job_template_request() :: #{binary() => any()}.


%% Example:
%% path_mapping_rule() :: #{
%%   <<"destinationPath">> => string(),
%%   <<"sourcePath">> => string(),
%%   <<"sourcePathFormat">> => list(any())
%% }
-type path_mapping_rule() :: #{binary() => any()}.


%% Example:
%% create_worker_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"hostProperties">> => host_properties_request()
%% }
-type create_worker_request() :: #{binary() => any()}.

%% Example:
%% disassociate_member_from_job_response() :: #{}
-type disassociate_member_from_job_response() :: #{}.


%% Example:
%% job_attachment_details_identifiers() :: #{
%%   <<"jobId">> => string()
%% }
-type job_attachment_details_identifiers() :: #{binary() => any()}.

%% Example:
%% get_queue_fleet_association_request() :: #{}
-type get_queue_fleet_association_request() :: #{}.

%% Example:
%% delete_license_endpoint_request() :: #{}
-type delete_license_endpoint_request() :: #{}.


%% Example:
%% budget_action_to_add() :: #{
%%   <<"description">> => string(),
%%   <<"thresholdPercentage">> => float(),
%%   <<"type">> => list(any())
%% }
-type budget_action_to_add() :: #{binary() => any()}.


%% Example:
%% create_monitor_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"displayName">> := string(),
%%   <<"identityCenterInstanceArn">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"subdomain">> := string()
%% }
-type create_monitor_request() :: #{binary() => any()}.

%% Example:
%% delete_metered_product_request() :: #{}
-type delete_metered_product_request() :: #{}.


%% Example:
%% list_tasks_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tasks">> => list(task_summary()())
%% }
-type list_tasks_response() :: #{binary() => any()}.


%% Example:
%% get_budget_response() :: #{
%%   <<"actions">> => list(response_budget_action()()),
%%   <<"approximateDollarLimit">> => float(),
%%   <<"budgetId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"queueStoppedAt">> => non_neg_integer(),
%%   <<"schedule">> => list(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"usageTrackingResource">> => list(),
%%   <<"usages">> => consumed_usages()
%% }
-type get_budget_response() :: #{binary() => any()}.


%% Example:
%% associate_member_to_farm_request() :: #{
%%   <<"identityStoreId">> := string(),
%%   <<"membershipLevel">> := list(any()),
%%   <<"principalType">> := list(any())
%% }
-type associate_member_to_farm_request() :: #{binary() => any()}.


%% Example:
%% step_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"dependencyCounts">> => dependency_counts(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"lifecycleStatus">> => list(any()),
%%   <<"lifecycleStatusMessage">> => string(),
%%   <<"name">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"stepId">> => string(),
%%   <<"targetTaskRunStatus">> => list(any()),
%%   <<"taskRunStatus">> => list(any()),
%%   <<"taskRunStatusCounts">> => map(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type step_summary() :: #{binary() => any()}.


%% Example:
%% create_farm_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> := string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"tags">> => map()
%% }
-type create_farm_request() :: #{binary() => any()}.


%% Example:
%% host_properties_request() :: #{
%%   <<"hostName">> => string(),
%%   <<"ipAddresses">> => ip_addresses()
%% }
-type host_properties_request() :: #{binary() => any()}.


%% Example:
%% log_configuration() :: #{
%%   <<"error">> => string(),
%%   <<"logDriver">> => string(),
%%   <<"options">> => map(),
%%   <<"parameters">> => map()
%% }
-type log_configuration() :: #{binary() => any()}.

%% Example:
%% update_queue_limit_association_response() :: #{}
-type update_queue_limit_association_response() :: #{}.


%% Example:
%% list_fleet_members_response() :: #{
%%   <<"members">> => list(fleet_member()()),
%%   <<"nextToken">> => string()
%% }
-type list_fleet_members_response() :: #{binary() => any()}.


%% Example:
%% file_system_location() :: #{
%%   <<"name">> => string(),
%%   <<"path">> => string(),
%%   <<"type">> => list(any())
%% }
-type file_system_location() :: #{binary() => any()}.

%% Example:
%% delete_queue_response() :: #{}
-type delete_queue_response() :: #{}.


%% Example:
%% list_limits_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_limits_request() :: #{binary() => any()}.


%% Example:
%% create_fleet_response() :: #{
%%   <<"fleetId">> => string()
%% }
-type create_fleet_response() :: #{binary() => any()}.

%% Example:
%% create_queue_limit_association_response() :: #{}
-type create_queue_limit_association_response() :: #{}.


%% Example:
%% worker_session_summary() :: #{
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"lifecycleStatus">> => list(any()),
%%   <<"queueId">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"targetLifecycleStatus">> => list(any())
%% }
-type worker_session_summary() :: #{binary() => any()}.


%% Example:
%% list_job_parameter_definitions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_job_parameter_definitions_request() :: #{binary() => any()}.


%% Example:
%% step_consumer() :: #{
%%   <<"status">> => list(any()),
%%   <<"stepId">> => string()
%% }
-type step_consumer() :: #{binary() => any()}.


%% Example:
%% list_storage_profiles_for_queue_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_storage_profiles_for_queue_request() :: #{binary() => any()}.


%% Example:
%% get_fleet_response() :: #{
%%   <<"autoScalingStatus">> => list(any()),
%%   <<"capabilities">> => fleet_capabilities(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"farmId">> => string(),
%%   <<"fleetId">> => string(),
%%   <<"maxWorkerCount">> => integer(),
%%   <<"minWorkerCount">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"targetWorkerCount">> => integer(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"workerCount">> => integer()
%% }
-type get_fleet_response() :: #{binary() => any()}.

%% Example:
%% associate_member_to_queue_response() :: #{}
-type associate_member_to_queue_response() :: #{}.


%% Example:
%% list_queue_members_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_queue_members_request() :: #{binary() => any()}.

%% Example:
%% get_queue_limit_association_request() :: #{}
-type get_queue_limit_association_request() :: #{}.

%% Example:
%% delete_queue_limit_association_request() :: #{}
-type delete_queue_limit_association_request() :: #{}.


%% Example:
%% farm_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"displayName">> => string(),
%%   <<"farmId">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type farm_summary() :: #{binary() => any()}.


%% Example:
%% monitor_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"displayName">> => string(),
%%   <<"identityCenterApplicationArn">> => string(),
%%   <<"identityCenterInstanceArn">> => string(),
%%   <<"monitorId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"subdomain">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"url">> => string()
%% }
-type monitor_summary() :: #{binary() => any()}.

%% Example:
%% disassociate_member_from_farm_response() :: #{}
-type disassociate_member_from_farm_response() :: #{}.

%% Example:
%% get_license_endpoint_request() :: #{}
-type get_license_endpoint_request() :: #{}.


%% Example:
%% parameter_filter_expression() :: #{
%%   <<"name">> => string(),
%%   <<"operator">> => list(any()),
%%   <<"value">> => string()
%% }
-type parameter_filter_expression() :: #{binary() => any()}.


%% Example:
%% list_farms_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principalId">> => string()
%% }
-type list_farms_request() :: #{binary() => any()}.


%% Example:
%% accelerator_count_range() :: #{
%%   <<"max">> => integer(),
%%   <<"min">> => integer()
%% }
-type accelerator_count_range() :: #{binary() => any()}.


%% Example:
%% list_step_consumers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_step_consumers_request() :: #{binary() => any()}.


%% Example:
%% step_details_identifiers() :: #{
%%   <<"jobId">> => string(),
%%   <<"stepId">> => string()
%% }
-type step_details_identifiers() :: #{binary() => any()}.

%% Example:
%% assume_fleet_role_for_worker_request() :: #{}
-type assume_fleet_role_for_worker_request() :: #{}.


%% Example:
%% farm_member() :: #{
%%   <<"farmId">> => string(),
%%   <<"identityStoreId">> => string(),
%%   <<"membershipLevel">> => list(any()),
%%   <<"principalId">> => string(),
%%   <<"principalType">> => list(any())
%% }
-type farm_member() :: #{binary() => any()}.


%% Example:
%% create_queue_response() :: #{
%%   <<"queueId">> => string()
%% }
-type create_queue_response() :: #{binary() => any()}.


%% Example:
%% worker_capabilities() :: #{
%%   <<"amounts">> => list(worker_amount_capability()()),
%%   <<"attributes">> => list(worker_attribute_capability()())
%% }
-type worker_capabilities() :: #{binary() => any()}.


%% Example:
%% worker_search_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"fleetId">> => string(),
%%   <<"hostProperties">> => host_properties_response(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"workerId">> => string()
%% }
-type worker_search_summary() :: #{binary() => any()}.


%% Example:
%% list_farms_response() :: #{
%%   <<"farms">> => list(farm_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_farms_response() :: #{binary() => any()}.


%% Example:
%% list_step_dependencies_response() :: #{
%%   <<"dependencies">> => list(step_dependency()()),
%%   <<"nextToken">> => string()
%% }
-type list_step_dependencies_response() :: #{binary() => any()}.


%% Example:
%% job_attachment_settings() :: #{
%%   <<"rootPrefix">> => string(),
%%   <<"s3BucketName">> => string()
%% }
-type job_attachment_settings() :: #{binary() => any()}.


%% Example:
%% get_storage_profile_for_queue_response() :: #{
%%   <<"displayName">> => string(),
%%   <<"fileSystemLocations">> => list(file_system_location()()),
%%   <<"osFamily">> => list(any()),
%%   <<"storageProfileId">> => string()
%% }
-type get_storage_profile_for_queue_response() :: #{binary() => any()}.


%% Example:
%% fleet_member() :: #{
%%   <<"farmId">> => string(),
%%   <<"fleetId">> => string(),
%%   <<"identityStoreId">> => string(),
%%   <<"membershipLevel">> => list(any()),
%%   <<"principalId">> => string(),
%%   <<"principalType">> => list(any())
%% }
-type fleet_member() :: #{binary() => any()}.

-type associate_member_to_farm_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type associate_member_to_fleet_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type associate_member_to_job_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type associate_member_to_queue_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type assume_fleet_role_for_read_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type assume_fleet_role_for_worker_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type assume_queue_role_for_read_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type assume_queue_role_for_user_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type assume_queue_role_for_worker_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_get_job_entity_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type copy_job_template_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type create_budget_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_farm_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_fleet_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_job_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_license_endpoint_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_limit_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_monitor_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception().

-type create_queue_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_queue_environment_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_queue_fleet_association_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type create_queue_limit_association_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type create_storage_profile_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_worker_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_budget_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_farm_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_fleet_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_license_endpoint_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_limit_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception().

-type delete_metered_product_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_monitor_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_queue_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_queue_environment_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception().

-type delete_queue_fleet_association_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_queue_limit_association_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_storage_profile_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception().

-type delete_worker_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_member_from_farm_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type disassociate_member_from_fleet_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_member_from_job_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type disassociate_member_from_queue_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_budget_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_farm_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_fleet_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_job_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_license_endpoint_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_limit_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_monitor_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_queue_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_queue_environment_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_queue_fleet_association_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_queue_limit_association_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_session_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_session_action_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_sessions_statistics_aggregation_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_step_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_storage_profile_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_storage_profile_for_queue_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_task_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_worker_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_available_metered_products_errors() ::
    throttling_exception() | 
    internal_server_error_exception().

-type list_budgets_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_farm_members_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_farms_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_fleet_members_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_fleets_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_job_members_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_job_parameter_definitions_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_jobs_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_license_endpoints_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_limits_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_metered_products_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_monitors_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_queue_environments_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_queue_fleet_associations_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_queue_limit_associations_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_queue_members_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_queues_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_session_actions_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_sessions_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_sessions_for_worker_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_step_consumers_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_step_dependencies_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_steps_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_storage_profiles_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_storage_profiles_for_queue_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_tasks_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_workers_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type put_metered_product_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type search_jobs_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type search_steps_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type search_tasks_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type search_workers_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type start_sessions_statistics_aggregation_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_budget_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_farm_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_fleet_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_job_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_limit_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_monitor_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_queue_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_queue_environment_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_queue_fleet_association_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_queue_limit_association_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_session_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_step_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_storage_profile_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_task_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_worker_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_worker_schedule_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Assigns a farm membership level to a member.
-spec associate_member_to_farm(aws_client:aws_client(), binary() | list(), binary() | list(), associate_member_to_farm_request()) ->
    {ok, associate_member_to_farm_response(), tuple()} |
    {error, any()} |
    {error, associate_member_to_farm_errors(), tuple()}.
associate_member_to_farm(Client, FarmId, PrincipalId, Input) ->
    associate_member_to_farm(Client, FarmId, PrincipalId, Input, []).

-spec associate_member_to_farm(aws_client:aws_client(), binary() | list(), binary() | list(), associate_member_to_farm_request(), proplists:proplist()) ->
    {ok, associate_member_to_farm_response(), tuple()} |
    {error, any()} |
    {error, associate_member_to_farm_errors(), tuple()}.
associate_member_to_farm(Client, FarmId, PrincipalId, Input0, Options0) ->
    Method = put,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/members/", aws_util:encode_uri(PrincipalId), ""],
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

%% @doc Assigns a fleet membership level to a member.
-spec associate_member_to_fleet(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), associate_member_to_fleet_request()) ->
    {ok, associate_member_to_fleet_response(), tuple()} |
    {error, any()} |
    {error, associate_member_to_fleet_errors(), tuple()}.
associate_member_to_fleet(Client, FarmId, FleetId, PrincipalId, Input) ->
    associate_member_to_fleet(Client, FarmId, FleetId, PrincipalId, Input, []).

-spec associate_member_to_fleet(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), associate_member_to_fleet_request(), proplists:proplist()) ->
    {ok, associate_member_to_fleet_response(), tuple()} |
    {error, any()} |
    {error, associate_member_to_fleet_errors(), tuple()}.
associate_member_to_fleet(Client, FarmId, FleetId, PrincipalId, Input0, Options0) ->
    Method = put,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/members/", aws_util:encode_uri(PrincipalId), ""],
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

%% @doc Assigns a job membership level to a member
-spec associate_member_to_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), associate_member_to_job_request()) ->
    {ok, associate_member_to_job_response(), tuple()} |
    {error, any()} |
    {error, associate_member_to_job_errors(), tuple()}.
associate_member_to_job(Client, FarmId, JobId, PrincipalId, QueueId, Input) ->
    associate_member_to_job(Client, FarmId, JobId, PrincipalId, QueueId, Input, []).

-spec associate_member_to_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), associate_member_to_job_request(), proplists:proplist()) ->
    {ok, associate_member_to_job_response(), tuple()} |
    {error, any()} |
    {error, associate_member_to_job_errors(), tuple()}.
associate_member_to_job(Client, FarmId, JobId, PrincipalId, QueueId, Input0, Options0) ->
    Method = put,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/members/", aws_util:encode_uri(PrincipalId), ""],
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

%% @doc Assigns a queue membership level to a member
-spec associate_member_to_queue(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), associate_member_to_queue_request()) ->
    {ok, associate_member_to_queue_response(), tuple()} |
    {error, any()} |
    {error, associate_member_to_queue_errors(), tuple()}.
associate_member_to_queue(Client, FarmId, PrincipalId, QueueId, Input) ->
    associate_member_to_queue(Client, FarmId, PrincipalId, QueueId, Input, []).

-spec associate_member_to_queue(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), associate_member_to_queue_request(), proplists:proplist()) ->
    {ok, associate_member_to_queue_response(), tuple()} |
    {error, any()} |
    {error, associate_member_to_queue_errors(), tuple()}.
associate_member_to_queue(Client, FarmId, PrincipalId, QueueId, Input0, Options0) ->
    Method = put,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/members/", aws_util:encode_uri(PrincipalId), ""],
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

%% @doc Get Amazon Web Services credentials from the fleet role.
%%
%% The IAM permissions of the credentials are
%% scoped down to have read-only access.
-spec assume_fleet_role_for_read(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, assume_fleet_role_for_read_response(), tuple()} |
    {error, any()} |
    {error, assume_fleet_role_for_read_errors(), tuple()}.
assume_fleet_role_for_read(Client, FarmId, FleetId)
  when is_map(Client) ->
    assume_fleet_role_for_read(Client, FarmId, FleetId, #{}, #{}).

-spec assume_fleet_role_for_read(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, assume_fleet_role_for_read_response(), tuple()} |
    {error, any()} |
    {error, assume_fleet_role_for_read_errors(), tuple()}.
assume_fleet_role_for_read(Client, FarmId, FleetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    assume_fleet_role_for_read(Client, FarmId, FleetId, QueryMap, HeadersMap, []).

-spec assume_fleet_role_for_read(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, assume_fleet_role_for_read_response(), tuple()} |
    {error, any()} |
    {error, assume_fleet_role_for_read_errors(), tuple()}.
assume_fleet_role_for_read(Client, FarmId, FleetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/read-roles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get credentials from the fleet role for a worker.
-spec assume_fleet_role_for_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, assume_fleet_role_for_worker_response(), tuple()} |
    {error, any()} |
    {error, assume_fleet_role_for_worker_errors(), tuple()}.
assume_fleet_role_for_worker(Client, FarmId, FleetId, WorkerId)
  when is_map(Client) ->
    assume_fleet_role_for_worker(Client, FarmId, FleetId, WorkerId, #{}, #{}).

-spec assume_fleet_role_for_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, assume_fleet_role_for_worker_response(), tuple()} |
    {error, any()} |
    {error, assume_fleet_role_for_worker_errors(), tuple()}.
assume_fleet_role_for_worker(Client, FarmId, FleetId, WorkerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    assume_fleet_role_for_worker(Client, FarmId, FleetId, WorkerId, QueryMap, HeadersMap, []).

-spec assume_fleet_role_for_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, assume_fleet_role_for_worker_response(), tuple()} |
    {error, any()} |
    {error, assume_fleet_role_for_worker_errors(), tuple()}.
assume_fleet_role_for_worker(Client, FarmId, FleetId, WorkerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/workers/", aws_util:encode_uri(WorkerId), "/fleet-roles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets Amazon Web Services credentials from the queue role.
%%
%% The IAM permissions of the credentials are
%% scoped down to have read-only access.
-spec assume_queue_role_for_read(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, assume_queue_role_for_read_response(), tuple()} |
    {error, any()} |
    {error, assume_queue_role_for_read_errors(), tuple()}.
assume_queue_role_for_read(Client, FarmId, QueueId)
  when is_map(Client) ->
    assume_queue_role_for_read(Client, FarmId, QueueId, #{}, #{}).

-spec assume_queue_role_for_read(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, assume_queue_role_for_read_response(), tuple()} |
    {error, any()} |
    {error, assume_queue_role_for_read_errors(), tuple()}.
assume_queue_role_for_read(Client, FarmId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    assume_queue_role_for_read(Client, FarmId, QueueId, QueryMap, HeadersMap, []).

-spec assume_queue_role_for_read(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, assume_queue_role_for_read_response(), tuple()} |
    {error, any()} |
    {error, assume_queue_role_for_read_errors(), tuple()}.
assume_queue_role_for_read(Client, FarmId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/read-roles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Allows a user to assume a role for a queue.
-spec assume_queue_role_for_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, assume_queue_role_for_user_response(), tuple()} |
    {error, any()} |
    {error, assume_queue_role_for_user_errors(), tuple()}.
assume_queue_role_for_user(Client, FarmId, QueueId)
  when is_map(Client) ->
    assume_queue_role_for_user(Client, FarmId, QueueId, #{}, #{}).

-spec assume_queue_role_for_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, assume_queue_role_for_user_response(), tuple()} |
    {error, any()} |
    {error, assume_queue_role_for_user_errors(), tuple()}.
assume_queue_role_for_user(Client, FarmId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    assume_queue_role_for_user(Client, FarmId, QueueId, QueryMap, HeadersMap, []).

-spec assume_queue_role_for_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, assume_queue_role_for_user_response(), tuple()} |
    {error, any()} |
    {error, assume_queue_role_for_user_errors(), tuple()}.
assume_queue_role_for_user(Client, FarmId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/user-roles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Allows a worker to assume a queue role.
-spec assume_queue_role_for_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, assume_queue_role_for_worker_response(), tuple()} |
    {error, any()} |
    {error, assume_queue_role_for_worker_errors(), tuple()}.
assume_queue_role_for_worker(Client, FarmId, FleetId, WorkerId, QueueId)
  when is_map(Client) ->
    assume_queue_role_for_worker(Client, FarmId, FleetId, WorkerId, QueueId, #{}, #{}).

-spec assume_queue_role_for_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, assume_queue_role_for_worker_response(), tuple()} |
    {error, any()} |
    {error, assume_queue_role_for_worker_errors(), tuple()}.
assume_queue_role_for_worker(Client, FarmId, FleetId, WorkerId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    assume_queue_role_for_worker(Client, FarmId, FleetId, WorkerId, QueueId, QueryMap, HeadersMap, []).

-spec assume_queue_role_for_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, assume_queue_role_for_worker_response(), tuple()} |
    {error, any()} |
    {error, assume_queue_role_for_worker_errors(), tuple()}.
assume_queue_role_for_worker(Client, FarmId, FleetId, WorkerId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/workers/", aws_util:encode_uri(WorkerId), "/queue-roles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"queueId">>, QueueId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get batched job details for a worker.
-spec batch_get_job_entity(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), batch_get_job_entity_request()) ->
    {ok, batch_get_job_entity_response(), tuple()} |
    {error, any()} |
    {error, batch_get_job_entity_errors(), tuple()}.
batch_get_job_entity(Client, FarmId, FleetId, WorkerId, Input) ->
    batch_get_job_entity(Client, FarmId, FleetId, WorkerId, Input, []).

-spec batch_get_job_entity(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), batch_get_job_entity_request(), proplists:proplist()) ->
    {ok, batch_get_job_entity_response(), tuple()} |
    {error, any()} |
    {error, batch_get_job_entity_errors(), tuple()}.
batch_get_job_entity(Client, FarmId, FleetId, WorkerId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/workers/", aws_util:encode_uri(WorkerId), "/batchGetJobEntity"],
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

%% @doc Copies a job template to an Amazon S3 bucket.
-spec copy_job_template(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), copy_job_template_request()) ->
    {ok, copy_job_template_response(), tuple()} |
    {error, any()} |
    {error, copy_job_template_errors(), tuple()}.
copy_job_template(Client, FarmId, JobId, QueueId, Input) ->
    copy_job_template(Client, FarmId, JobId, QueueId, Input, []).

-spec copy_job_template(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), copy_job_template_request(), proplists:proplist()) ->
    {ok, copy_job_template_response(), tuple()} |
    {error, any()} |
    {error, copy_job_template_errors(), tuple()}.
copy_job_template(Client, FarmId, JobId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/template"],
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

%% @doc Creates a budget to set spending thresholds for your rendering
%% activity.
-spec create_budget(aws_client:aws_client(), binary() | list(), create_budget_request()) ->
    {ok, create_budget_response(), tuple()} |
    {error, any()} |
    {error, create_budget_errors(), tuple()}.
create_budget(Client, FarmId, Input) ->
    create_budget(Client, FarmId, Input, []).

-spec create_budget(aws_client:aws_client(), binary() | list(), create_budget_request(), proplists:proplist()) ->
    {ok, create_budget_response(), tuple()} |
    {error, any()} |
    {error, create_budget_errors(), tuple()}.
create_budget(Client, FarmId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/budgets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a farm to allow space for queues and fleets.
%%
%% Farms are the space where the
%% components of your renders gather and are pieced together in the cloud.
%% Farms contain
%% budgets and allow you to enforce permissions. Deadline Cloud farms are a
%% useful container for
%% large projects.
-spec create_farm(aws_client:aws_client(), create_farm_request()) ->
    {ok, create_farm_response(), tuple()} |
    {error, any()} |
    {error, create_farm_errors(), tuple()}.
create_farm(Client, Input) ->
    create_farm(Client, Input, []).

-spec create_farm(aws_client:aws_client(), create_farm_request(), proplists:proplist()) ->
    {ok, create_farm_response(), tuple()} |
    {error, any()} |
    {error, create_farm_errors(), tuple()}.
create_farm(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a fleet.
%%
%% Fleets gather information relating to compute, or capacity, for renders
%% within your farms. You can choose to manage your own capacity or opt to
%% have fleets fully
%% managed by Deadline Cloud.
-spec create_fleet(aws_client:aws_client(), binary() | list(), create_fleet_request()) ->
    {ok, create_fleet_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, FarmId, Input) ->
    create_fleet(Client, FarmId, Input, []).

-spec create_fleet(aws_client:aws_client(), binary() | list(), create_fleet_request(), proplists:proplist()) ->
    {ok, create_fleet_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, FarmId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a job.
%%
%% A job is a set of instructions that Deadline Cloud uses to schedule
%% and run work on available workers. For more information, see Deadline
%% Cloud
%% jobs:
%% https://docs.aws.amazon.com/deadline-cloud/latest/userguide/deadline-cloud-jobs.html.
-spec create_job(aws_client:aws_client(), binary() | list(), binary() | list(), create_job_request()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, FarmId, QueueId, Input) ->
    create_job(Client, FarmId, QueueId, Input, []).

-spec create_job(aws_client:aws_client(), binary() | list(), binary() | list(), create_job_request(), proplists:proplist()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, FarmId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a license endpoint to integrate your various licensed
%% software used for
%% rendering on Deadline Cloud.
-spec create_license_endpoint(aws_client:aws_client(), create_license_endpoint_request()) ->
    {ok, create_license_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_license_endpoint_errors(), tuple()}.
create_license_endpoint(Client, Input) ->
    create_license_endpoint(Client, Input, []).

-spec create_license_endpoint(aws_client:aws_client(), create_license_endpoint_request(), proplists:proplist()) ->
    {ok, create_license_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_license_endpoint_errors(), tuple()}.
create_license_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/license-endpoints"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a limit that manages the distribution of shared resources,
%% such as floating
%% licenses.
%%
%% A limit can throttle work assignments, help manage workloads, and track
%% current
%% usage. Before you use a limit, you must associate the limit with one or
%% more queues.
%%
%% You must add the `amountRequirementName' to a step in a job template
%% to
%% declare the limit requirement.
-spec create_limit(aws_client:aws_client(), binary() | list(), create_limit_request()) ->
    {ok, create_limit_response(), tuple()} |
    {error, any()} |
    {error, create_limit_errors(), tuple()}.
create_limit(Client, FarmId, Input) ->
    create_limit(Client, FarmId, Input, []).

-spec create_limit(aws_client:aws_client(), binary() | list(), create_limit_request(), proplists:proplist()) ->
    {ok, create_limit_response(), tuple()} |
    {error, any()} |
    {error, create_limit_errors(), tuple()}.
create_limit(Client, FarmId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/limits"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Web Services Deadline Cloud monitor that you can
%% use to view your farms, queues, and
%% fleets.
%%
%% After you submit a job, you can track the progress of the tasks and steps
%% that make
%% up the job, and then download the job's results.
-spec create_monitor(aws_client:aws_client(), create_monitor_request()) ->
    {ok, create_monitor_response(), tuple()} |
    {error, any()} |
    {error, create_monitor_errors(), tuple()}.
create_monitor(Client, Input) ->
    create_monitor(Client, Input, []).

-spec create_monitor(aws_client:aws_client(), create_monitor_request(), proplists:proplist()) ->
    {ok, create_monitor_response(), tuple()} |
    {error, any()} |
    {error, create_monitor_errors(), tuple()}.
create_monitor(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/monitors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a queue to coordinate the order in which jobs run on a farm.
%%
%% A queue can also
%% specify where to pull resources and indicate where to output completed
%% jobs.
-spec create_queue(aws_client:aws_client(), binary() | list(), create_queue_request()) ->
    {ok, create_queue_response(), tuple()} |
    {error, any()} |
    {error, create_queue_errors(), tuple()}.
create_queue(Client, FarmId, Input) ->
    create_queue(Client, FarmId, Input, []).

-spec create_queue(aws_client:aws_client(), binary() | list(), create_queue_request(), proplists:proplist()) ->
    {ok, create_queue_response(), tuple()} |
    {error, any()} |
    {error, create_queue_errors(), tuple()}.
create_queue(Client, FarmId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an environment for a queue that defines how jobs in the queue
%% run.
-spec create_queue_environment(aws_client:aws_client(), binary() | list(), binary() | list(), create_queue_environment_request()) ->
    {ok, create_queue_environment_response(), tuple()} |
    {error, any()} |
    {error, create_queue_environment_errors(), tuple()}.
create_queue_environment(Client, FarmId, QueueId, Input) ->
    create_queue_environment(Client, FarmId, QueueId, Input, []).

-spec create_queue_environment(aws_client:aws_client(), binary() | list(), binary() | list(), create_queue_environment_request(), proplists:proplist()) ->
    {ok, create_queue_environment_response(), tuple()} |
    {error, any()} |
    {error, create_queue_environment_errors(), tuple()}.
create_queue_environment(Client, FarmId, QueueId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/environments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an association between a queue and a fleet.
-spec create_queue_fleet_association(aws_client:aws_client(), binary() | list(), create_queue_fleet_association_request()) ->
    {ok, create_queue_fleet_association_response(), tuple()} |
    {error, any()} |
    {error, create_queue_fleet_association_errors(), tuple()}.
create_queue_fleet_association(Client, FarmId, Input) ->
    create_queue_fleet_association(Client, FarmId, Input, []).

-spec create_queue_fleet_association(aws_client:aws_client(), binary() | list(), create_queue_fleet_association_request(), proplists:proplist()) ->
    {ok, create_queue_fleet_association_response(), tuple()} |
    {error, any()} |
    {error, create_queue_fleet_association_errors(), tuple()}.
create_queue_fleet_association(Client, FarmId, Input0, Options0) ->
    Method = put,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queue-fleet-associations"],
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

%% @doc Associates a limit with a particular queue.
%%
%% After the limit is associated, all workers
%% for jobs that specify the limit associated with the queue are subject to
%% the limit. You
%% can't associate two limits with the same `amountRequirementName'
%% to the same
%% queue.
-spec create_queue_limit_association(aws_client:aws_client(), binary() | list(), create_queue_limit_association_request()) ->
    {ok, create_queue_limit_association_response(), tuple()} |
    {error, any()} |
    {error, create_queue_limit_association_errors(), tuple()}.
create_queue_limit_association(Client, FarmId, Input) ->
    create_queue_limit_association(Client, FarmId, Input, []).

-spec create_queue_limit_association(aws_client:aws_client(), binary() | list(), create_queue_limit_association_request(), proplists:proplist()) ->
    {ok, create_queue_limit_association_response(), tuple()} |
    {error, any()} |
    {error, create_queue_limit_association_errors(), tuple()}.
create_queue_limit_association(Client, FarmId, Input0, Options0) ->
    Method = put,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queue-limit-associations"],
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

%% @doc Creates a storage profile that specifies the operating system, file
%% type, and file
%% location of resources used on a farm.
-spec create_storage_profile(aws_client:aws_client(), binary() | list(), create_storage_profile_request()) ->
    {ok, create_storage_profile_response(), tuple()} |
    {error, any()} |
    {error, create_storage_profile_errors(), tuple()}.
create_storage_profile(Client, FarmId, Input) ->
    create_storage_profile(Client, FarmId, Input, []).

-spec create_storage_profile(aws_client:aws_client(), binary() | list(), create_storage_profile_request(), proplists:proplist()) ->
    {ok, create_storage_profile_response(), tuple()} |
    {error, any()} |
    {error, create_storage_profile_errors(), tuple()}.
create_storage_profile(Client, FarmId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/storage-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a worker.
%%
%% A worker tells your instance how much processing power (vCPU), and
%% memory (GiB) you’ll need to assemble the digital assets held within a
%% particular instance.
%% You can specify certain instance types to use, or let the worker know
%% which instances types
%% to exclude.
-spec create_worker(aws_client:aws_client(), binary() | list(), binary() | list(), create_worker_request()) ->
    {ok, create_worker_response(), tuple()} |
    {error, any()} |
    {error, create_worker_errors(), tuple()}.
create_worker(Client, FarmId, FleetId, Input) ->
    create_worker(Client, FarmId, FleetId, Input, []).

-spec create_worker(aws_client:aws_client(), binary() | list(), binary() | list(), create_worker_request(), proplists:proplist()) ->
    {ok, create_worker_response(), tuple()} |
    {error, any()} |
    {error, create_worker_errors(), tuple()}.
create_worker(Client, FarmId, FleetId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/workers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a budget.
-spec delete_budget(aws_client:aws_client(), binary() | list(), binary() | list(), delete_budget_request()) ->
    {ok, delete_budget_response(), tuple()} |
    {error, any()} |
    {error, delete_budget_errors(), tuple()}.
delete_budget(Client, BudgetId, FarmId, Input) ->
    delete_budget(Client, BudgetId, FarmId, Input, []).

-spec delete_budget(aws_client:aws_client(), binary() | list(), binary() | list(), delete_budget_request(), proplists:proplist()) ->
    {ok, delete_budget_response(), tuple()} |
    {error, any()} |
    {error, delete_budget_errors(), tuple()}.
delete_budget(Client, BudgetId, FarmId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/budgets/", aws_util:encode_uri(BudgetId), ""],
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

%% @doc Deletes a farm.
-spec delete_farm(aws_client:aws_client(), binary() | list(), delete_farm_request()) ->
    {ok, delete_farm_response(), tuple()} |
    {error, any()} |
    {error, delete_farm_errors(), tuple()}.
delete_farm(Client, FarmId, Input) ->
    delete_farm(Client, FarmId, Input, []).

-spec delete_farm(aws_client:aws_client(), binary() | list(), delete_farm_request(), proplists:proplist()) ->
    {ok, delete_farm_response(), tuple()} |
    {error, any()} |
    {error, delete_farm_errors(), tuple()}.
delete_farm(Client, FarmId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), ""],
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

%% @doc Deletes a fleet.
-spec delete_fleet(aws_client:aws_client(), binary() | list(), binary() | list(), delete_fleet_request()) ->
    {ok, delete_fleet_response(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, FarmId, FleetId, Input) ->
    delete_fleet(Client, FarmId, FleetId, Input, []).

-spec delete_fleet(aws_client:aws_client(), binary() | list(), binary() | list(), delete_fleet_request(), proplists:proplist()) ->
    {ok, delete_fleet_response(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, FarmId, FleetId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a license endpoint.
-spec delete_license_endpoint(aws_client:aws_client(), binary() | list(), delete_license_endpoint_request()) ->
    {ok, delete_license_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_license_endpoint_errors(), tuple()}.
delete_license_endpoint(Client, LicenseEndpointId, Input) ->
    delete_license_endpoint(Client, LicenseEndpointId, Input, []).

-spec delete_license_endpoint(aws_client:aws_client(), binary() | list(), delete_license_endpoint_request(), proplists:proplist()) ->
    {ok, delete_license_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_license_endpoint_errors(), tuple()}.
delete_license_endpoint(Client, LicenseEndpointId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/license-endpoints/", aws_util:encode_uri(LicenseEndpointId), ""],
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

%% @doc Removes a limit from the specified farm.
%%
%% Before you delete a limit you must use the
%% `DeleteQueueLimitAssociation' operation to remove the association with
%% any
%% queues.
-spec delete_limit(aws_client:aws_client(), binary() | list(), binary() | list(), delete_limit_request()) ->
    {ok, delete_limit_response(), tuple()} |
    {error, any()} |
    {error, delete_limit_errors(), tuple()}.
delete_limit(Client, FarmId, LimitId, Input) ->
    delete_limit(Client, FarmId, LimitId, Input, []).

-spec delete_limit(aws_client:aws_client(), binary() | list(), binary() | list(), delete_limit_request(), proplists:proplist()) ->
    {ok, delete_limit_response(), tuple()} |
    {error, any()} |
    {error, delete_limit_errors(), tuple()}.
delete_limit(Client, FarmId, LimitId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/limits/", aws_util:encode_uri(LimitId), ""],
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

%% @doc Deletes a metered product.
-spec delete_metered_product(aws_client:aws_client(), binary() | list(), binary() | list(), delete_metered_product_request()) ->
    {ok, delete_metered_product_response(), tuple()} |
    {error, any()} |
    {error, delete_metered_product_errors(), tuple()}.
delete_metered_product(Client, LicenseEndpointId, ProductId, Input) ->
    delete_metered_product(Client, LicenseEndpointId, ProductId, Input, []).

-spec delete_metered_product(aws_client:aws_client(), binary() | list(), binary() | list(), delete_metered_product_request(), proplists:proplist()) ->
    {ok, delete_metered_product_response(), tuple()} |
    {error, any()} |
    {error, delete_metered_product_errors(), tuple()}.
delete_metered_product(Client, LicenseEndpointId, ProductId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/license-endpoints/", aws_util:encode_uri(LicenseEndpointId), "/metered-products/", aws_util:encode_uri(ProductId), ""],
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

%% @doc Removes a Deadline Cloud monitor.
%%
%% After you delete a monitor, you can create a new one and
%% attach farms to the monitor.
-spec delete_monitor(aws_client:aws_client(), binary() | list(), delete_monitor_request()) ->
    {ok, delete_monitor_response(), tuple()} |
    {error, any()} |
    {error, delete_monitor_errors(), tuple()}.
delete_monitor(Client, MonitorId, Input) ->
    delete_monitor(Client, MonitorId, Input, []).

-spec delete_monitor(aws_client:aws_client(), binary() | list(), delete_monitor_request(), proplists:proplist()) ->
    {ok, delete_monitor_response(), tuple()} |
    {error, any()} |
    {error, delete_monitor_errors(), tuple()}.
delete_monitor(Client, MonitorId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/monitors/", aws_util:encode_uri(MonitorId), ""],
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

%% @doc Deletes a queue.
%%
%% You can't recover the jobs in a queue if you delete the queue.
%% Deleting the queue
%% also deletes the jobs in that queue.
-spec delete_queue(aws_client:aws_client(), binary() | list(), binary() | list(), delete_queue_request()) ->
    {ok, delete_queue_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_errors(), tuple()}.
delete_queue(Client, FarmId, QueueId, Input) ->
    delete_queue(Client, FarmId, QueueId, Input, []).

-spec delete_queue(aws_client:aws_client(), binary() | list(), binary() | list(), delete_queue_request(), proplists:proplist()) ->
    {ok, delete_queue_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_errors(), tuple()}.
delete_queue(Client, FarmId, QueueId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), ""],
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

%% @doc Deletes a queue environment.
-spec delete_queue_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_queue_environment_request()) ->
    {ok, delete_queue_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_environment_errors(), tuple()}.
delete_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId, Input) ->
    delete_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId, Input, []).

-spec delete_queue_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_queue_environment_request(), proplists:proplist()) ->
    {ok, delete_queue_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_environment_errors(), tuple()}.
delete_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/environments/", aws_util:encode_uri(QueueEnvironmentId), ""],
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

%% @doc Deletes a queue-fleet association.
-spec delete_queue_fleet_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_queue_fleet_association_request()) ->
    {ok, delete_queue_fleet_association_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_fleet_association_errors(), tuple()}.
delete_queue_fleet_association(Client, FarmId, FleetId, QueueId, Input) ->
    delete_queue_fleet_association(Client, FarmId, FleetId, QueueId, Input, []).

-spec delete_queue_fleet_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_queue_fleet_association_request(), proplists:proplist()) ->
    {ok, delete_queue_fleet_association_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_fleet_association_errors(), tuple()}.
delete_queue_fleet_association(Client, FarmId, FleetId, QueueId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queue-fleet-associations/", aws_util:encode_uri(QueueId), "/", aws_util:encode_uri(FleetId), ""],
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

%% @doc Removes the association between a queue and a limit.
%%
%% You must use the
%% `UpdateQueueLimitAssociation' operation to set the status to
%% `STOP_LIMIT_USAGE_AND_COMPLETE_TASKS' or
%% `STOP_LIMIT_USAGE_AND_CANCEL_TASKS'. The status does not change
%% immediately.
%% Use the `GetQueueLimitAssociation' operation to see if the status
%% changed to
%% `STOPPED' before deleting the association.
-spec delete_queue_limit_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_queue_limit_association_request()) ->
    {ok, delete_queue_limit_association_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_limit_association_errors(), tuple()}.
delete_queue_limit_association(Client, FarmId, LimitId, QueueId, Input) ->
    delete_queue_limit_association(Client, FarmId, LimitId, QueueId, Input, []).

-spec delete_queue_limit_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_queue_limit_association_request(), proplists:proplist()) ->
    {ok, delete_queue_limit_association_response(), tuple()} |
    {error, any()} |
    {error, delete_queue_limit_association_errors(), tuple()}.
delete_queue_limit_association(Client, FarmId, LimitId, QueueId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queue-limit-associations/", aws_util:encode_uri(QueueId), "/", aws_util:encode_uri(LimitId), ""],
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

%% @doc Deletes a storage profile.
-spec delete_storage_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_storage_profile_request()) ->
    {ok, delete_storage_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_storage_profile_errors(), tuple()}.
delete_storage_profile(Client, FarmId, StorageProfileId, Input) ->
    delete_storage_profile(Client, FarmId, StorageProfileId, Input, []).

-spec delete_storage_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_storage_profile_request(), proplists:proplist()) ->
    {ok, delete_storage_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_storage_profile_errors(), tuple()}.
delete_storage_profile(Client, FarmId, StorageProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/storage-profiles/", aws_util:encode_uri(StorageProfileId), ""],
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

%% @doc Deletes a worker.
-spec delete_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_worker_request()) ->
    {ok, delete_worker_response(), tuple()} |
    {error, any()} |
    {error, delete_worker_errors(), tuple()}.
delete_worker(Client, FarmId, FleetId, WorkerId, Input) ->
    delete_worker(Client, FarmId, FleetId, WorkerId, Input, []).

-spec delete_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_worker_request(), proplists:proplist()) ->
    {ok, delete_worker_response(), tuple()} |
    {error, any()} |
    {error, delete_worker_errors(), tuple()}.
delete_worker(Client, FarmId, FleetId, WorkerId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/workers/", aws_util:encode_uri(WorkerId), ""],
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

%% @doc Disassociates a member from a farm.
-spec disassociate_member_from_farm(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_member_from_farm_request()) ->
    {ok, disassociate_member_from_farm_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_from_farm_errors(), tuple()}.
disassociate_member_from_farm(Client, FarmId, PrincipalId, Input) ->
    disassociate_member_from_farm(Client, FarmId, PrincipalId, Input, []).

-spec disassociate_member_from_farm(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_member_from_farm_request(), proplists:proplist()) ->
    {ok, disassociate_member_from_farm_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_from_farm_errors(), tuple()}.
disassociate_member_from_farm(Client, FarmId, PrincipalId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/members/", aws_util:encode_uri(PrincipalId), ""],
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

%% @doc Disassociates a member from a fleet.
-spec disassociate_member_from_fleet(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_member_from_fleet_request()) ->
    {ok, disassociate_member_from_fleet_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_from_fleet_errors(), tuple()}.
disassociate_member_from_fleet(Client, FarmId, FleetId, PrincipalId, Input) ->
    disassociate_member_from_fleet(Client, FarmId, FleetId, PrincipalId, Input, []).

-spec disassociate_member_from_fleet(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_member_from_fleet_request(), proplists:proplist()) ->
    {ok, disassociate_member_from_fleet_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_from_fleet_errors(), tuple()}.
disassociate_member_from_fleet(Client, FarmId, FleetId, PrincipalId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/members/", aws_util:encode_uri(PrincipalId), ""],
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

%% @doc Disassociates a member from a job.
-spec disassociate_member_from_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), disassociate_member_from_job_request()) ->
    {ok, disassociate_member_from_job_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_from_job_errors(), tuple()}.
disassociate_member_from_job(Client, FarmId, JobId, PrincipalId, QueueId, Input) ->
    disassociate_member_from_job(Client, FarmId, JobId, PrincipalId, QueueId, Input, []).

-spec disassociate_member_from_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), disassociate_member_from_job_request(), proplists:proplist()) ->
    {ok, disassociate_member_from_job_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_from_job_errors(), tuple()}.
disassociate_member_from_job(Client, FarmId, JobId, PrincipalId, QueueId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/members/", aws_util:encode_uri(PrincipalId), ""],
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

%% @doc Disassociates a member from a queue.
-spec disassociate_member_from_queue(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_member_from_queue_request()) ->
    {ok, disassociate_member_from_queue_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_from_queue_errors(), tuple()}.
disassociate_member_from_queue(Client, FarmId, PrincipalId, QueueId, Input) ->
    disassociate_member_from_queue(Client, FarmId, PrincipalId, QueueId, Input, []).

-spec disassociate_member_from_queue(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_member_from_queue_request(), proplists:proplist()) ->
    {ok, disassociate_member_from_queue_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_from_queue_errors(), tuple()}.
disassociate_member_from_queue(Client, FarmId, PrincipalId, QueueId, Input0, Options0) ->
    Method = delete,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/members/", aws_util:encode_uri(PrincipalId), ""],
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

%% @doc Get a budget.
-spec get_budget(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_budget_response(), tuple()} |
    {error, any()} |
    {error, get_budget_errors(), tuple()}.
get_budget(Client, BudgetId, FarmId)
  when is_map(Client) ->
    get_budget(Client, BudgetId, FarmId, #{}, #{}).

-spec get_budget(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_budget_response(), tuple()} |
    {error, any()} |
    {error, get_budget_errors(), tuple()}.
get_budget(Client, BudgetId, FarmId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_budget(Client, BudgetId, FarmId, QueryMap, HeadersMap, []).

-spec get_budget(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_budget_response(), tuple()} |
    {error, any()} |
    {error, get_budget_errors(), tuple()}.
get_budget(Client, BudgetId, FarmId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/budgets/", aws_util:encode_uri(BudgetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a farm.
-spec get_farm(aws_client:aws_client(), binary() | list()) ->
    {ok, get_farm_response(), tuple()} |
    {error, any()} |
    {error, get_farm_errors(), tuple()}.
get_farm(Client, FarmId)
  when is_map(Client) ->
    get_farm(Client, FarmId, #{}, #{}).

-spec get_farm(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_farm_response(), tuple()} |
    {error, any()} |
    {error, get_farm_errors(), tuple()}.
get_farm(Client, FarmId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_farm(Client, FarmId, QueryMap, HeadersMap, []).

-spec get_farm(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_farm_response(), tuple()} |
    {error, any()} |
    {error, get_farm_errors(), tuple()}.
get_farm(Client, FarmId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a fleet.
-spec get_fleet(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_fleet_response(), tuple()} |
    {error, any()} |
    {error, get_fleet_errors(), tuple()}.
get_fleet(Client, FarmId, FleetId)
  when is_map(Client) ->
    get_fleet(Client, FarmId, FleetId, #{}, #{}).

-spec get_fleet(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_fleet_response(), tuple()} |
    {error, any()} |
    {error, get_fleet_errors(), tuple()}.
get_fleet(Client, FarmId, FleetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_fleet(Client, FarmId, FleetId, QueryMap, HeadersMap, []).

-spec get_fleet(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_fleet_response(), tuple()} |
    {error, any()} |
    {error, get_fleet_errors(), tuple()}.
get_fleet(Client, FarmId, FleetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a Deadline Cloud job.
-spec get_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, FarmId, JobId, QueueId)
  when is_map(Client) ->
    get_job(Client, FarmId, JobId, QueueId, #{}, #{}).

-spec get_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, []).

-spec get_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a licence endpoint.
-spec get_license_endpoint(aws_client:aws_client(), binary() | list()) ->
    {ok, get_license_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_license_endpoint_errors(), tuple()}.
get_license_endpoint(Client, LicenseEndpointId)
  when is_map(Client) ->
    get_license_endpoint(Client, LicenseEndpointId, #{}, #{}).

-spec get_license_endpoint(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_license_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_license_endpoint_errors(), tuple()}.
get_license_endpoint(Client, LicenseEndpointId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_license_endpoint(Client, LicenseEndpointId, QueryMap, HeadersMap, []).

-spec get_license_endpoint(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_license_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_license_endpoint_errors(), tuple()}.
get_license_endpoint(Client, LicenseEndpointId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/license-endpoints/", aws_util:encode_uri(LicenseEndpointId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specific limit.
-spec get_limit(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_limit_response(), tuple()} |
    {error, any()} |
    {error, get_limit_errors(), tuple()}.
get_limit(Client, FarmId, LimitId)
  when is_map(Client) ->
    get_limit(Client, FarmId, LimitId, #{}, #{}).

-spec get_limit(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_limit_response(), tuple()} |
    {error, any()} |
    {error, get_limit_errors(), tuple()}.
get_limit(Client, FarmId, LimitId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_limit(Client, FarmId, LimitId, QueryMap, HeadersMap, []).

-spec get_limit(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_limit_response(), tuple()} |
    {error, any()} |
    {error, get_limit_errors(), tuple()}.
get_limit(Client, FarmId, LimitId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/limits/", aws_util:encode_uri(LimitId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified monitor.
-spec get_monitor(aws_client:aws_client(), binary() | list()) ->
    {ok, get_monitor_response(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorId)
  when is_map(Client) ->
    get_monitor(Client, MonitorId, #{}, #{}).

-spec get_monitor(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_monitor_response(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_monitor(Client, MonitorId, QueryMap, HeadersMap, []).

-spec get_monitor(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_monitor_response(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/monitors/", aws_util:encode_uri(MonitorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a queue.
-spec get_queue(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_queue_response(), tuple()} |
    {error, any()} |
    {error, get_queue_errors(), tuple()}.
get_queue(Client, FarmId, QueueId)
  when is_map(Client) ->
    get_queue(Client, FarmId, QueueId, #{}, #{}).

-spec get_queue(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_queue_response(), tuple()} |
    {error, any()} |
    {error, get_queue_errors(), tuple()}.
get_queue(Client, FarmId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_queue(Client, FarmId, QueueId, QueryMap, HeadersMap, []).

-spec get_queue(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_queue_response(), tuple()} |
    {error, any()} |
    {error, get_queue_errors(), tuple()}.
get_queue(Client, FarmId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a queue environment.
-spec get_queue_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_queue_environment_response(), tuple()} |
    {error, any()} |
    {error, get_queue_environment_errors(), tuple()}.
get_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId)
  when is_map(Client) ->
    get_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId, #{}, #{}).

-spec get_queue_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_queue_environment_response(), tuple()} |
    {error, any()} |
    {error, get_queue_environment_errors(), tuple()}.
get_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId, QueryMap, HeadersMap, []).

-spec get_queue_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_queue_environment_response(), tuple()} |
    {error, any()} |
    {error, get_queue_environment_errors(), tuple()}.
get_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/environments/", aws_util:encode_uri(QueueEnvironmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a queue-fleet association.
-spec get_queue_fleet_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_queue_fleet_association_response(), tuple()} |
    {error, any()} |
    {error, get_queue_fleet_association_errors(), tuple()}.
get_queue_fleet_association(Client, FarmId, FleetId, QueueId)
  when is_map(Client) ->
    get_queue_fleet_association(Client, FarmId, FleetId, QueueId, #{}, #{}).

-spec get_queue_fleet_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_queue_fleet_association_response(), tuple()} |
    {error, any()} |
    {error, get_queue_fleet_association_errors(), tuple()}.
get_queue_fleet_association(Client, FarmId, FleetId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_queue_fleet_association(Client, FarmId, FleetId, QueueId, QueryMap, HeadersMap, []).

-spec get_queue_fleet_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_queue_fleet_association_response(), tuple()} |
    {error, any()} |
    {error, get_queue_fleet_association_errors(), tuple()}.
get_queue_fleet_association(Client, FarmId, FleetId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queue-fleet-associations/", aws_util:encode_uri(QueueId), "/", aws_util:encode_uri(FleetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specific association between a queue and a
%% limit.
-spec get_queue_limit_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_queue_limit_association_response(), tuple()} |
    {error, any()} |
    {error, get_queue_limit_association_errors(), tuple()}.
get_queue_limit_association(Client, FarmId, LimitId, QueueId)
  when is_map(Client) ->
    get_queue_limit_association(Client, FarmId, LimitId, QueueId, #{}, #{}).

-spec get_queue_limit_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_queue_limit_association_response(), tuple()} |
    {error, any()} |
    {error, get_queue_limit_association_errors(), tuple()}.
get_queue_limit_association(Client, FarmId, LimitId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_queue_limit_association(Client, FarmId, LimitId, QueueId, QueryMap, HeadersMap, []).

-spec get_queue_limit_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_queue_limit_association_response(), tuple()} |
    {error, any()} |
    {error, get_queue_limit_association_errors(), tuple()}.
get_queue_limit_association(Client, FarmId, LimitId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queue-limit-associations/", aws_util:encode_uri(QueueId), "/", aws_util:encode_uri(LimitId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a session.
-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, FarmId, JobId, QueueId, SessionId)
  when is_map(Client) ->
    get_session(Client, FarmId, JobId, QueueId, SessionId, #{}, #{}).

-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, FarmId, JobId, QueueId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session(Client, FarmId, JobId, QueueId, SessionId, QueryMap, HeadersMap, []).

-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, FarmId, JobId, QueueId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a session action for the job.
-spec get_session_action(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_session_action_response(), tuple()} |
    {error, any()} |
    {error, get_session_action_errors(), tuple()}.
get_session_action(Client, FarmId, JobId, QueueId, SessionActionId)
  when is_map(Client) ->
    get_session_action(Client, FarmId, JobId, QueueId, SessionActionId, #{}, #{}).

-spec get_session_action(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_session_action_response(), tuple()} |
    {error, any()} |
    {error, get_session_action_errors(), tuple()}.
get_session_action(Client, FarmId, JobId, QueueId, SessionActionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session_action(Client, FarmId, JobId, QueueId, SessionActionId, QueryMap, HeadersMap, []).

-spec get_session_action(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_session_action_response(), tuple()} |
    {error, any()} |
    {error, get_session_action_errors(), tuple()}.
get_session_action(Client, FarmId, JobId, QueueId, SessionActionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/session-actions/", aws_util:encode_uri(SessionActionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a set of statistics for queues or farms.
%%
%% Before you can call the
%% `GetSessionStatisticsAggregation' operation, you must first call the
%% `StartSessionsStatisticsAggregation' operation. Statistics are
%% available for
%% 1 hour after you call the `StartSessionsStatisticsAggregation'
%% operation.
-spec get_sessions_statistics_aggregation(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_sessions_statistics_aggregation_response(), tuple()} |
    {error, any()} |
    {error, get_sessions_statistics_aggregation_errors(), tuple()}.
get_sessions_statistics_aggregation(Client, FarmId, AggregationId)
  when is_map(Client) ->
    get_sessions_statistics_aggregation(Client, FarmId, AggregationId, #{}, #{}).

-spec get_sessions_statistics_aggregation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_sessions_statistics_aggregation_response(), tuple()} |
    {error, any()} |
    {error, get_sessions_statistics_aggregation_errors(), tuple()}.
get_sessions_statistics_aggregation(Client, FarmId, AggregationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sessions_statistics_aggregation(Client, FarmId, AggregationId, QueryMap, HeadersMap, []).

-spec get_sessions_statistics_aggregation(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sessions_statistics_aggregation_response(), tuple()} |
    {error, any()} |
    {error, get_sessions_statistics_aggregation_errors(), tuple()}.
get_sessions_statistics_aggregation(Client, FarmId, AggregationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/sessions-statistics-aggregation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"aggregationId">>, AggregationId},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a step.
-spec get_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_step_response(), tuple()} |
    {error, any()} |
    {error, get_step_errors(), tuple()}.
get_step(Client, FarmId, JobId, QueueId, StepId)
  when is_map(Client) ->
    get_step(Client, FarmId, JobId, QueueId, StepId, #{}, #{}).

-spec get_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_step_response(), tuple()} |
    {error, any()} |
    {error, get_step_errors(), tuple()}.
get_step(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_step(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap, []).

-spec get_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_step_response(), tuple()} |
    {error, any()} |
    {error, get_step_errors(), tuple()}.
get_step(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/steps/", aws_util:encode_uri(StepId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a storage profile.
-spec get_storage_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_storage_profile_response(), tuple()} |
    {error, any()} |
    {error, get_storage_profile_errors(), tuple()}.
get_storage_profile(Client, FarmId, StorageProfileId)
  when is_map(Client) ->
    get_storage_profile(Client, FarmId, StorageProfileId, #{}, #{}).

-spec get_storage_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_storage_profile_response(), tuple()} |
    {error, any()} |
    {error, get_storage_profile_errors(), tuple()}.
get_storage_profile(Client, FarmId, StorageProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_storage_profile(Client, FarmId, StorageProfileId, QueryMap, HeadersMap, []).

-spec get_storage_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_storage_profile_response(), tuple()} |
    {error, any()} |
    {error, get_storage_profile_errors(), tuple()}.
get_storage_profile(Client, FarmId, StorageProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/storage-profiles/", aws_util:encode_uri(StorageProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a storage profile for a queue.
-spec get_storage_profile_for_queue(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_storage_profile_for_queue_response(), tuple()} |
    {error, any()} |
    {error, get_storage_profile_for_queue_errors(), tuple()}.
get_storage_profile_for_queue(Client, FarmId, QueueId, StorageProfileId)
  when is_map(Client) ->
    get_storage_profile_for_queue(Client, FarmId, QueueId, StorageProfileId, #{}, #{}).

-spec get_storage_profile_for_queue(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_storage_profile_for_queue_response(), tuple()} |
    {error, any()} |
    {error, get_storage_profile_for_queue_errors(), tuple()}.
get_storage_profile_for_queue(Client, FarmId, QueueId, StorageProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_storage_profile_for_queue(Client, FarmId, QueueId, StorageProfileId, QueryMap, HeadersMap, []).

-spec get_storage_profile_for_queue(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_storage_profile_for_queue_response(), tuple()} |
    {error, any()} |
    {error, get_storage_profile_for_queue_errors(), tuple()}.
get_storage_profile_for_queue(Client, FarmId, QueueId, StorageProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/storage-profiles/", aws_util:encode_uri(StorageProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a task.
-spec get_task(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_task_response(), tuple()} |
    {error, any()} |
    {error, get_task_errors(), tuple()}.
get_task(Client, FarmId, JobId, QueueId, StepId, TaskId)
  when is_map(Client) ->
    get_task(Client, FarmId, JobId, QueueId, StepId, TaskId, #{}, #{}).

-spec get_task(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_task_response(), tuple()} |
    {error, any()} |
    {error, get_task_errors(), tuple()}.
get_task(Client, FarmId, JobId, QueueId, StepId, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_task(Client, FarmId, JobId, QueueId, StepId, TaskId, QueryMap, HeadersMap, []).

-spec get_task(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_task_response(), tuple()} |
    {error, any()} |
    {error, get_task_errors(), tuple()}.
get_task(Client, FarmId, JobId, QueueId, StepId, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/steps/", aws_util:encode_uri(StepId), "/tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a worker.
-spec get_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_worker_response(), tuple()} |
    {error, any()} |
    {error, get_worker_errors(), tuple()}.
get_worker(Client, FarmId, FleetId, WorkerId)
  when is_map(Client) ->
    get_worker(Client, FarmId, FleetId, WorkerId, #{}, #{}).

-spec get_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_worker_response(), tuple()} |
    {error, any()} |
    {error, get_worker_errors(), tuple()}.
get_worker(Client, FarmId, FleetId, WorkerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_worker(Client, FarmId, FleetId, WorkerId, QueryMap, HeadersMap, []).

-spec get_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_worker_response(), tuple()} |
    {error, any()} |
    {error, get_worker_errors(), tuple()}.
get_worker(Client, FarmId, FleetId, WorkerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/workers/", aws_util:encode_uri(WorkerId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of the available metered products.
-spec list_available_metered_products(aws_client:aws_client()) ->
    {ok, list_available_metered_products_response(), tuple()} |
    {error, any()} |
    {error, list_available_metered_products_errors(), tuple()}.
list_available_metered_products(Client)
  when is_map(Client) ->
    list_available_metered_products(Client, #{}, #{}).

-spec list_available_metered_products(aws_client:aws_client(), map(), map()) ->
    {ok, list_available_metered_products_response(), tuple()} |
    {error, any()} |
    {error, list_available_metered_products_errors(), tuple()}.
list_available_metered_products(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_available_metered_products(Client, QueryMap, HeadersMap, []).

-spec list_available_metered_products(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_available_metered_products_response(), tuple()} |
    {error, any()} |
    {error, list_available_metered_products_errors(), tuple()}.
list_available_metered_products(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/metered-products"],
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

%% @doc A list of budgets in a farm.
-spec list_budgets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_budgets_response(), tuple()} |
    {error, any()} |
    {error, list_budgets_errors(), tuple()}.
list_budgets(Client, FarmId)
  when is_map(Client) ->
    list_budgets(Client, FarmId, #{}, #{}).

-spec list_budgets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_budgets_response(), tuple()} |
    {error, any()} |
    {error, list_budgets_errors(), tuple()}.
list_budgets(Client, FarmId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_budgets(Client, FarmId, QueryMap, HeadersMap, []).

-spec list_budgets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_budgets_response(), tuple()} |
    {error, any()} |
    {error, list_budgets_errors(), tuple()}.
list_budgets(Client, FarmId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/budgets"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the members of a farm.
-spec list_farm_members(aws_client:aws_client(), binary() | list()) ->
    {ok, list_farm_members_response(), tuple()} |
    {error, any()} |
    {error, list_farm_members_errors(), tuple()}.
list_farm_members(Client, FarmId)
  when is_map(Client) ->
    list_farm_members(Client, FarmId, #{}, #{}).

-spec list_farm_members(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_farm_members_response(), tuple()} |
    {error, any()} |
    {error, list_farm_members_errors(), tuple()}.
list_farm_members(Client, FarmId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_farm_members(Client, FarmId, QueryMap, HeadersMap, []).

-spec list_farm_members(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_farm_members_response(), tuple()} |
    {error, any()} |
    {error, list_farm_members_errors(), tuple()}.
list_farm_members(Client, FarmId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/members"],
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

%% @doc Lists farms.
-spec list_farms(aws_client:aws_client()) ->
    {ok, list_farms_response(), tuple()} |
    {error, any()} |
    {error, list_farms_errors(), tuple()}.
list_farms(Client)
  when is_map(Client) ->
    list_farms(Client, #{}, #{}).

-spec list_farms(aws_client:aws_client(), map(), map()) ->
    {ok, list_farms_response(), tuple()} |
    {error, any()} |
    {error, list_farms_errors(), tuple()}.
list_farms(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_farms(Client, QueryMap, HeadersMap, []).

-spec list_farms(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_farms_response(), tuple()} |
    {error, any()} |
    {error, list_farms_errors(), tuple()}.
list_farms(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms"],
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
        {<<"principalId">>, maps:get(<<"principalId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists fleet members.
-spec list_fleet_members(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_fleet_members_response(), tuple()} |
    {error, any()} |
    {error, list_fleet_members_errors(), tuple()}.
list_fleet_members(Client, FarmId, FleetId)
  when is_map(Client) ->
    list_fleet_members(Client, FarmId, FleetId, #{}, #{}).

-spec list_fleet_members(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_fleet_members_response(), tuple()} |
    {error, any()} |
    {error, list_fleet_members_errors(), tuple()}.
list_fleet_members(Client, FarmId, FleetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_fleet_members(Client, FarmId, FleetId, QueryMap, HeadersMap, []).

-spec list_fleet_members(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_fleet_members_response(), tuple()} |
    {error, any()} |
    {error, list_fleet_members_errors(), tuple()}.
list_fleet_members(Client, FarmId, FleetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/members"],
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

%% @doc Lists fleets.
-spec list_fleets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_fleets_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, FarmId)
  when is_map(Client) ->
    list_fleets(Client, FarmId, #{}, #{}).

-spec list_fleets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_fleets_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, FarmId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_fleets(Client, FarmId, QueryMap, HeadersMap, []).

-spec list_fleets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_fleets_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, FarmId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"displayName">>, maps:get(<<"displayName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"principalId">>, maps:get(<<"principalId">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists members on a job.
-spec list_job_members(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_job_members_response(), tuple()} |
    {error, any()} |
    {error, list_job_members_errors(), tuple()}.
list_job_members(Client, FarmId, JobId, QueueId)
  when is_map(Client) ->
    list_job_members(Client, FarmId, JobId, QueueId, #{}, #{}).

-spec list_job_members(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_job_members_response(), tuple()} |
    {error, any()} |
    {error, list_job_members_errors(), tuple()}.
list_job_members(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_members(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, []).

-spec list_job_members(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_job_members_response(), tuple()} |
    {error, any()} |
    {error, list_job_members_errors(), tuple()}.
list_job_members(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/members"],
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

%% @doc Lists parameter definitions of a job.
-spec list_job_parameter_definitions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_job_parameter_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_job_parameter_definitions_errors(), tuple()}.
list_job_parameter_definitions(Client, FarmId, JobId, QueueId)
  when is_map(Client) ->
    list_job_parameter_definitions(Client, FarmId, JobId, QueueId, #{}, #{}).

-spec list_job_parameter_definitions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_job_parameter_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_job_parameter_definitions_errors(), tuple()}.
list_job_parameter_definitions(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_parameter_definitions(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, []).

-spec list_job_parameter_definitions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_job_parameter_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_job_parameter_definitions_errors(), tuple()}.
list_job_parameter_definitions(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/parameter-definitions"],
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

%% @doc Lists jobs.
-spec list_jobs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, FarmId, QueueId)
  when is_map(Client) ->
    list_jobs(Client, FarmId, QueueId, #{}, #{}).

-spec list_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, FarmId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, FarmId, QueueId, QueryMap, HeadersMap, []).

-spec list_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, FarmId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs"],
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
        {<<"principalId">>, maps:get(<<"principalId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists license endpoints.
-spec list_license_endpoints(aws_client:aws_client()) ->
    {ok, list_license_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_license_endpoints_errors(), tuple()}.
list_license_endpoints(Client)
  when is_map(Client) ->
    list_license_endpoints(Client, #{}, #{}).

-spec list_license_endpoints(aws_client:aws_client(), map(), map()) ->
    {ok, list_license_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_license_endpoints_errors(), tuple()}.
list_license_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_license_endpoints(Client, QueryMap, HeadersMap, []).

-spec list_license_endpoints(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_license_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_license_endpoints_errors(), tuple()}.
list_license_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/license-endpoints"],
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

%% @doc Gets a list of limits defined in the specified farm.
-spec list_limits(aws_client:aws_client(), binary() | list()) ->
    {ok, list_limits_response(), tuple()} |
    {error, any()} |
    {error, list_limits_errors(), tuple()}.
list_limits(Client, FarmId)
  when is_map(Client) ->
    list_limits(Client, FarmId, #{}, #{}).

-spec list_limits(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_limits_response(), tuple()} |
    {error, any()} |
    {error, list_limits_errors(), tuple()}.
list_limits(Client, FarmId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_limits(Client, FarmId, QueryMap, HeadersMap, []).

-spec list_limits(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_limits_response(), tuple()} |
    {error, any()} |
    {error, list_limits_errors(), tuple()}.
list_limits(Client, FarmId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/limits"],
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

%% @doc Lists metered products.
-spec list_metered_products(aws_client:aws_client(), binary() | list()) ->
    {ok, list_metered_products_response(), tuple()} |
    {error, any()} |
    {error, list_metered_products_errors(), tuple()}.
list_metered_products(Client, LicenseEndpointId)
  when is_map(Client) ->
    list_metered_products(Client, LicenseEndpointId, #{}, #{}).

-spec list_metered_products(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_metered_products_response(), tuple()} |
    {error, any()} |
    {error, list_metered_products_errors(), tuple()}.
list_metered_products(Client, LicenseEndpointId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_metered_products(Client, LicenseEndpointId, QueryMap, HeadersMap, []).

-spec list_metered_products(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_metered_products_response(), tuple()} |
    {error, any()} |
    {error, list_metered_products_errors(), tuple()}.
list_metered_products(Client, LicenseEndpointId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/license-endpoints/", aws_util:encode_uri(LicenseEndpointId), "/metered-products"],
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

%% @doc Gets a list of your monitors in Deadline Cloud.
-spec list_monitors(aws_client:aws_client()) ->
    {ok, list_monitors_response(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client)
  when is_map(Client) ->
    list_monitors(Client, #{}, #{}).

-spec list_monitors(aws_client:aws_client(), map(), map()) ->
    {ok, list_monitors_response(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_monitors(Client, QueryMap, HeadersMap, []).

-spec list_monitors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_monitors_response(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/monitors"],
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

%% @doc Lists queue environments.
-spec list_queue_environments(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_queue_environments_response(), tuple()} |
    {error, any()} |
    {error, list_queue_environments_errors(), tuple()}.
list_queue_environments(Client, FarmId, QueueId)
  when is_map(Client) ->
    list_queue_environments(Client, FarmId, QueueId, #{}, #{}).

-spec list_queue_environments(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_queue_environments_response(), tuple()} |
    {error, any()} |
    {error, list_queue_environments_errors(), tuple()}.
list_queue_environments(Client, FarmId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queue_environments(Client, FarmId, QueueId, QueryMap, HeadersMap, []).

-spec list_queue_environments(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_queue_environments_response(), tuple()} |
    {error, any()} |
    {error, list_queue_environments_errors(), tuple()}.
list_queue_environments(Client, FarmId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/environments"],
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

%% @doc Lists queue-fleet associations.
-spec list_queue_fleet_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_queue_fleet_associations_response(), tuple()} |
    {error, any()} |
    {error, list_queue_fleet_associations_errors(), tuple()}.
list_queue_fleet_associations(Client, FarmId)
  when is_map(Client) ->
    list_queue_fleet_associations(Client, FarmId, #{}, #{}).

-spec list_queue_fleet_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_queue_fleet_associations_response(), tuple()} |
    {error, any()} |
    {error, list_queue_fleet_associations_errors(), tuple()}.
list_queue_fleet_associations(Client, FarmId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queue_fleet_associations(Client, FarmId, QueryMap, HeadersMap, []).

-spec list_queue_fleet_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_queue_fleet_associations_response(), tuple()} |
    {error, any()} |
    {error, list_queue_fleet_associations_errors(), tuple()}.
list_queue_fleet_associations(Client, FarmId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queue-fleet-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"fleetId">>, maps:get(<<"fleetId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"queueId">>, maps:get(<<"queueId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of the associations between queues and limits defined in
%% a farm.
-spec list_queue_limit_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_queue_limit_associations_response(), tuple()} |
    {error, any()} |
    {error, list_queue_limit_associations_errors(), tuple()}.
list_queue_limit_associations(Client, FarmId)
  when is_map(Client) ->
    list_queue_limit_associations(Client, FarmId, #{}, #{}).

-spec list_queue_limit_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_queue_limit_associations_response(), tuple()} |
    {error, any()} |
    {error, list_queue_limit_associations_errors(), tuple()}.
list_queue_limit_associations(Client, FarmId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queue_limit_associations(Client, FarmId, QueryMap, HeadersMap, []).

-spec list_queue_limit_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_queue_limit_associations_response(), tuple()} |
    {error, any()} |
    {error, list_queue_limit_associations_errors(), tuple()}.
list_queue_limit_associations(Client, FarmId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queue-limit-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limitId">>, maps:get(<<"limitId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"queueId">>, maps:get(<<"queueId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the members in a queue.
-spec list_queue_members(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_queue_members_response(), tuple()} |
    {error, any()} |
    {error, list_queue_members_errors(), tuple()}.
list_queue_members(Client, FarmId, QueueId)
  when is_map(Client) ->
    list_queue_members(Client, FarmId, QueueId, #{}, #{}).

-spec list_queue_members(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_queue_members_response(), tuple()} |
    {error, any()} |
    {error, list_queue_members_errors(), tuple()}.
list_queue_members(Client, FarmId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queue_members(Client, FarmId, QueueId, QueryMap, HeadersMap, []).

-spec list_queue_members(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_queue_members_response(), tuple()} |
    {error, any()} |
    {error, list_queue_members_errors(), tuple()}.
list_queue_members(Client, FarmId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/members"],
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

%% @doc Lists queues.
-spec list_queues(aws_client:aws_client(), binary() | list()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, FarmId)
  when is_map(Client) ->
    list_queues(Client, FarmId, #{}, #{}).

-spec list_queues(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, FarmId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queues(Client, FarmId, QueryMap, HeadersMap, []).

-spec list_queues(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_queues_response(), tuple()} |
    {error, any()} |
    {error, list_queues_errors(), tuple()}.
list_queues(Client, FarmId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues"],
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
        {<<"principalId">>, maps:get(<<"principalId">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists session actions.
-spec list_session_actions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_session_actions_response(), tuple()} |
    {error, any()} |
    {error, list_session_actions_errors(), tuple()}.
list_session_actions(Client, FarmId, JobId, QueueId)
  when is_map(Client) ->
    list_session_actions(Client, FarmId, JobId, QueueId, #{}, #{}).

-spec list_session_actions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_session_actions_response(), tuple()} |
    {error, any()} |
    {error, list_session_actions_errors(), tuple()}.
list_session_actions(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_session_actions(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, []).

-spec list_session_actions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_session_actions_response(), tuple()} |
    {error, any()} |
    {error, list_session_actions_errors(), tuple()}.
list_session_actions(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/session-actions"],
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
        {<<"sessionId">>, maps:get(<<"sessionId">>, QueryMap, undefined)},
        {<<"taskId">>, maps:get(<<"taskId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists sessions.
-spec list_sessions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, FarmId, JobId, QueueId)
  when is_map(Client) ->
    list_sessions(Client, FarmId, JobId, QueueId, #{}, #{}).

-spec list_sessions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sessions(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, []).

-spec list_sessions(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/sessions"],
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

%% @doc Lists sessions for a worker.
-spec list_sessions_for_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_sessions_for_worker_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_for_worker_errors(), tuple()}.
list_sessions_for_worker(Client, FarmId, FleetId, WorkerId)
  when is_map(Client) ->
    list_sessions_for_worker(Client, FarmId, FleetId, WorkerId, #{}, #{}).

-spec list_sessions_for_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_sessions_for_worker_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_for_worker_errors(), tuple()}.
list_sessions_for_worker(Client, FarmId, FleetId, WorkerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sessions_for_worker(Client, FarmId, FleetId, WorkerId, QueryMap, HeadersMap, []).

-spec list_sessions_for_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_sessions_for_worker_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_for_worker_errors(), tuple()}.
list_sessions_for_worker(Client, FarmId, FleetId, WorkerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/workers/", aws_util:encode_uri(WorkerId), "/sessions"],
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

%% @doc Lists step consumers.
-spec list_step_consumers(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_step_consumers_response(), tuple()} |
    {error, any()} |
    {error, list_step_consumers_errors(), tuple()}.
list_step_consumers(Client, FarmId, JobId, QueueId, StepId)
  when is_map(Client) ->
    list_step_consumers(Client, FarmId, JobId, QueueId, StepId, #{}, #{}).

-spec list_step_consumers(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_step_consumers_response(), tuple()} |
    {error, any()} |
    {error, list_step_consumers_errors(), tuple()}.
list_step_consumers(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_step_consumers(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap, []).

-spec list_step_consumers(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_step_consumers_response(), tuple()} |
    {error, any()} |
    {error, list_step_consumers_errors(), tuple()}.
list_step_consumers(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/steps/", aws_util:encode_uri(StepId), "/consumers"],
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

%% @doc Lists the dependencies for a step.
-spec list_step_dependencies(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_step_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_step_dependencies_errors(), tuple()}.
list_step_dependencies(Client, FarmId, JobId, QueueId, StepId)
  when is_map(Client) ->
    list_step_dependencies(Client, FarmId, JobId, QueueId, StepId, #{}, #{}).

-spec list_step_dependencies(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_step_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_step_dependencies_errors(), tuple()}.
list_step_dependencies(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_step_dependencies(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap, []).

-spec list_step_dependencies(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_step_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_step_dependencies_errors(), tuple()}.
list_step_dependencies(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/steps/", aws_util:encode_uri(StepId), "/dependencies"],
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

%% @doc Lists steps for a job.
-spec list_steps(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_steps_response(), tuple()} |
    {error, any()} |
    {error, list_steps_errors(), tuple()}.
list_steps(Client, FarmId, JobId, QueueId)
  when is_map(Client) ->
    list_steps(Client, FarmId, JobId, QueueId, #{}, #{}).

-spec list_steps(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_steps_response(), tuple()} |
    {error, any()} |
    {error, list_steps_errors(), tuple()}.
list_steps(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_steps(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, []).

-spec list_steps(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_steps_response(), tuple()} |
    {error, any()} |
    {error, list_steps_errors(), tuple()}.
list_steps(Client, FarmId, JobId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/steps"],
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

%% @doc Lists storage profiles.
-spec list_storage_profiles(aws_client:aws_client(), binary() | list()) ->
    {ok, list_storage_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_storage_profiles_errors(), tuple()}.
list_storage_profiles(Client, FarmId)
  when is_map(Client) ->
    list_storage_profiles(Client, FarmId, #{}, #{}).

-spec list_storage_profiles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_storage_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_storage_profiles_errors(), tuple()}.
list_storage_profiles(Client, FarmId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_storage_profiles(Client, FarmId, QueryMap, HeadersMap, []).

-spec list_storage_profiles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_storage_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_storage_profiles_errors(), tuple()}.
list_storage_profiles(Client, FarmId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/storage-profiles"],
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

%% @doc Lists storage profiles for a queue.
-spec list_storage_profiles_for_queue(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_storage_profiles_for_queue_response(), tuple()} |
    {error, any()} |
    {error, list_storage_profiles_for_queue_errors(), tuple()}.
list_storage_profiles_for_queue(Client, FarmId, QueueId)
  when is_map(Client) ->
    list_storage_profiles_for_queue(Client, FarmId, QueueId, #{}, #{}).

-spec list_storage_profiles_for_queue(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_storage_profiles_for_queue_response(), tuple()} |
    {error, any()} |
    {error, list_storage_profiles_for_queue_errors(), tuple()}.
list_storage_profiles_for_queue(Client, FarmId, QueueId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_storage_profiles_for_queue(Client, FarmId, QueueId, QueryMap, HeadersMap, []).

-spec list_storage_profiles_for_queue(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_storage_profiles_for_queue_response(), tuple()} |
    {error, any()} |
    {error, list_storage_profiles_for_queue_errors(), tuple()}.
list_storage_profiles_for_queue(Client, FarmId, QueueId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/storage-profiles"],
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
    Path = ["/2023-10-12/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tasks for a job.
-spec list_tasks(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_tasks_errors(), tuple()}.
list_tasks(Client, FarmId, JobId, QueueId, StepId)
  when is_map(Client) ->
    list_tasks(Client, FarmId, JobId, QueueId, StepId, #{}, #{}).

-spec list_tasks(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_tasks_errors(), tuple()}.
list_tasks(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tasks(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap, []).

-spec list_tasks(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_tasks_errors(), tuple()}.
list_tasks(Client, FarmId, JobId, QueueId, StepId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/steps/", aws_util:encode_uri(StepId), "/tasks"],
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

%% @doc Lists workers.
-spec list_workers(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_workers_response(), tuple()} |
    {error, any()} |
    {error, list_workers_errors(), tuple()}.
list_workers(Client, FarmId, FleetId)
  when is_map(Client) ->
    list_workers(Client, FarmId, FleetId, #{}, #{}).

-spec list_workers(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_workers_response(), tuple()} |
    {error, any()} |
    {error, list_workers_errors(), tuple()}.
list_workers(Client, FarmId, FleetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workers(Client, FarmId, FleetId, QueryMap, HeadersMap, []).

-spec list_workers(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_workers_response(), tuple()} |
    {error, any()} |
    {error, list_workers_errors(), tuple()}.
list_workers(Client, FarmId, FleetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/workers"],
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

%% @doc Adds a metered product.
-spec put_metered_product(aws_client:aws_client(), binary() | list(), binary() | list(), put_metered_product_request()) ->
    {ok, put_metered_product_response(), tuple()} |
    {error, any()} |
    {error, put_metered_product_errors(), tuple()}.
put_metered_product(Client, LicenseEndpointId, ProductId, Input) ->
    put_metered_product(Client, LicenseEndpointId, ProductId, Input, []).

-spec put_metered_product(aws_client:aws_client(), binary() | list(), binary() | list(), put_metered_product_request(), proplists:proplist()) ->
    {ok, put_metered_product_response(), tuple()} |
    {error, any()} |
    {error, put_metered_product_errors(), tuple()}.
put_metered_product(Client, LicenseEndpointId, ProductId, Input0, Options0) ->
    Method = put,
    Path = ["/2023-10-12/license-endpoints/", aws_util:encode_uri(LicenseEndpointId), "/metered-products/", aws_util:encode_uri(ProductId), ""],
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

%% @doc Searches for jobs.
-spec search_jobs(aws_client:aws_client(), binary() | list(), search_jobs_request()) ->
    {ok, search_jobs_response(), tuple()} |
    {error, any()} |
    {error, search_jobs_errors(), tuple()}.
search_jobs(Client, FarmId, Input) ->
    search_jobs(Client, FarmId, Input, []).

-spec search_jobs(aws_client:aws_client(), binary() | list(), search_jobs_request(), proplists:proplist()) ->
    {ok, search_jobs_response(), tuple()} |
    {error, any()} |
    {error, search_jobs_errors(), tuple()}.
search_jobs(Client, FarmId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/search/jobs"],
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

%% @doc Searches for steps.
-spec search_steps(aws_client:aws_client(), binary() | list(), search_steps_request()) ->
    {ok, search_steps_response(), tuple()} |
    {error, any()} |
    {error, search_steps_errors(), tuple()}.
search_steps(Client, FarmId, Input) ->
    search_steps(Client, FarmId, Input, []).

-spec search_steps(aws_client:aws_client(), binary() | list(), search_steps_request(), proplists:proplist()) ->
    {ok, search_steps_response(), tuple()} |
    {error, any()} |
    {error, search_steps_errors(), tuple()}.
search_steps(Client, FarmId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/search/steps"],
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

%% @doc Searches for tasks.
-spec search_tasks(aws_client:aws_client(), binary() | list(), search_tasks_request()) ->
    {ok, search_tasks_response(), tuple()} |
    {error, any()} |
    {error, search_tasks_errors(), tuple()}.
search_tasks(Client, FarmId, Input) ->
    search_tasks(Client, FarmId, Input, []).

-spec search_tasks(aws_client:aws_client(), binary() | list(), search_tasks_request(), proplists:proplist()) ->
    {ok, search_tasks_response(), tuple()} |
    {error, any()} |
    {error, search_tasks_errors(), tuple()}.
search_tasks(Client, FarmId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/search/tasks"],
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

%% @doc Searches for workers.
-spec search_workers(aws_client:aws_client(), binary() | list(), search_workers_request()) ->
    {ok, search_workers_response(), tuple()} |
    {error, any()} |
    {error, search_workers_errors(), tuple()}.
search_workers(Client, FarmId, Input) ->
    search_workers(Client, FarmId, Input, []).

-spec search_workers(aws_client:aws_client(), binary() | list(), search_workers_request(), proplists:proplist()) ->
    {ok, search_workers_response(), tuple()} |
    {error, any()} |
    {error, search_workers_errors(), tuple()}.
search_workers(Client, FarmId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/search/workers"],
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

%% @doc Starts an asynchronous request for getting aggregated statistics
%% about queues and farms.
%%
%% Get the statistics using the `GetSessionsStatisticsAggregation'
%% operation. You
%% can only have one running aggregation for your Deadline Cloud farm. Call
%% the
%% `GetSessionsStatisticsAggregation' operation and check the
%% `status' field to see if an aggregation is running. Statistics are
%% available
%% for 1 hour after you call the `StartSessionsStatisticsAggregation'
%% operation.
-spec start_sessions_statistics_aggregation(aws_client:aws_client(), binary() | list(), start_sessions_statistics_aggregation_request()) ->
    {ok, start_sessions_statistics_aggregation_response(), tuple()} |
    {error, any()} |
    {error, start_sessions_statistics_aggregation_errors(), tuple()}.
start_sessions_statistics_aggregation(Client, FarmId, Input) ->
    start_sessions_statistics_aggregation(Client, FarmId, Input, []).

-spec start_sessions_statistics_aggregation(aws_client:aws_client(), binary() | list(), start_sessions_statistics_aggregation_request(), proplists:proplist()) ->
    {ok, start_sessions_statistics_aggregation_response(), tuple()} |
    {error, any()} |
    {error, start_sessions_statistics_aggregation_errors(), tuple()}.
start_sessions_statistics_aggregation(Client, FarmId, Input0, Options0) ->
    Method = post,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/sessions-statistics-aggregation"],
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

%% @doc Tags a resource using the resource's ARN and desired tags.
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
    Path = ["/2023-10-12/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes a tag from a resource using the resource's ARN and tag to
%% remove.
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
    Path = ["/2023-10-12/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a budget that sets spending thresholds for rendering
%% activity.
-spec update_budget(aws_client:aws_client(), binary() | list(), binary() | list(), update_budget_request()) ->
    {ok, update_budget_response(), tuple()} |
    {error, any()} |
    {error, update_budget_errors(), tuple()}.
update_budget(Client, BudgetId, FarmId, Input) ->
    update_budget(Client, BudgetId, FarmId, Input, []).

-spec update_budget(aws_client:aws_client(), binary() | list(), binary() | list(), update_budget_request(), proplists:proplist()) ->
    {ok, update_budget_response(), tuple()} |
    {error, any()} |
    {error, update_budget_errors(), tuple()}.
update_budget(Client, BudgetId, FarmId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/budgets/", aws_util:encode_uri(BudgetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a farm.
-spec update_farm(aws_client:aws_client(), binary() | list(), update_farm_request()) ->
    {ok, update_farm_response(), tuple()} |
    {error, any()} |
    {error, update_farm_errors(), tuple()}.
update_farm(Client, FarmId, Input) ->
    update_farm(Client, FarmId, Input, []).

-spec update_farm(aws_client:aws_client(), binary() | list(), update_farm_request(), proplists:proplist()) ->
    {ok, update_farm_response(), tuple()} |
    {error, any()} |
    {error, update_farm_errors(), tuple()}.
update_farm(Client, FarmId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), ""],
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

%% @doc Updates a fleet.
-spec update_fleet(aws_client:aws_client(), binary() | list(), binary() | list(), update_fleet_request()) ->
    {ok, update_fleet_response(), tuple()} |
    {error, any()} |
    {error, update_fleet_errors(), tuple()}.
update_fleet(Client, FarmId, FleetId, Input) ->
    update_fleet(Client, FarmId, FleetId, Input, []).

-spec update_fleet(aws_client:aws_client(), binary() | list(), binary() | list(), update_fleet_request(), proplists:proplist()) ->
    {ok, update_fleet_response(), tuple()} |
    {error, any()} |
    {error, update_fleet_errors(), tuple()}.
update_fleet(Client, FarmId, FleetId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a job.
%%
%% When you change the status of the job to `ARCHIVED', the job can't
%% be
%% scheduled or archived.
%%
%% An archived jobs and its steps and tasks are deleted after 120 days. The
%% job can't be
%% recovered.
-spec update_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_job_request()) ->
    {ok, update_job_response(), tuple()} |
    {error, any()} |
    {error, update_job_errors(), tuple()}.
update_job(Client, FarmId, JobId, QueueId, Input) ->
    update_job(Client, FarmId, JobId, QueueId, Input, []).

-spec update_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_job_request(), proplists:proplist()) ->
    {ok, update_job_response(), tuple()} |
    {error, any()} |
    {error, update_job_errors(), tuple()}.
update_job(Client, FarmId, JobId, QueueId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the properties of the specified limit.
-spec update_limit(aws_client:aws_client(), binary() | list(), binary() | list(), update_limit_request()) ->
    {ok, update_limit_response(), tuple()} |
    {error, any()} |
    {error, update_limit_errors(), tuple()}.
update_limit(Client, FarmId, LimitId, Input) ->
    update_limit(Client, FarmId, LimitId, Input, []).

-spec update_limit(aws_client:aws_client(), binary() | list(), binary() | list(), update_limit_request(), proplists:proplist()) ->
    {ok, update_limit_response(), tuple()} |
    {error, any()} |
    {error, update_limit_errors(), tuple()}.
update_limit(Client, FarmId, LimitId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/limits/", aws_util:encode_uri(LimitId), ""],
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

%% @doc Modifies the settings for a Deadline Cloud monitor.
%%
%% You can modify one or all of the settings
%% when you call `UpdateMonitor'.
-spec update_monitor(aws_client:aws_client(), binary() | list(), update_monitor_request()) ->
    {ok, update_monitor_response(), tuple()} |
    {error, any()} |
    {error, update_monitor_errors(), tuple()}.
update_monitor(Client, MonitorId, Input) ->
    update_monitor(Client, MonitorId, Input, []).

-spec update_monitor(aws_client:aws_client(), binary() | list(), update_monitor_request(), proplists:proplist()) ->
    {ok, update_monitor_response(), tuple()} |
    {error, any()} |
    {error, update_monitor_errors(), tuple()}.
update_monitor(Client, MonitorId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/monitors/", aws_util:encode_uri(MonitorId), ""],
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

%% @doc Updates a queue.
-spec update_queue(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_request()) ->
    {ok, update_queue_response(), tuple()} |
    {error, any()} |
    {error, update_queue_errors(), tuple()}.
update_queue(Client, FarmId, QueueId, Input) ->
    update_queue(Client, FarmId, QueueId, Input, []).

-spec update_queue(aws_client:aws_client(), binary() | list(), binary() | list(), update_queue_request(), proplists:proplist()) ->
    {ok, update_queue_response(), tuple()} |
    {error, any()} |
    {error, update_queue_errors(), tuple()}.
update_queue(Client, FarmId, QueueId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the queue environment.
-spec update_queue_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_queue_environment_request()) ->
    {ok, update_queue_environment_response(), tuple()} |
    {error, any()} |
    {error, update_queue_environment_errors(), tuple()}.
update_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId, Input) ->
    update_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId, Input, []).

-spec update_queue_environment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_queue_environment_request(), proplists:proplist()) ->
    {ok, update_queue_environment_response(), tuple()} |
    {error, any()} |
    {error, update_queue_environment_errors(), tuple()}.
update_queue_environment(Client, FarmId, QueueEnvironmentId, QueueId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/environments/", aws_util:encode_uri(QueueEnvironmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a queue-fleet association.
-spec update_queue_fleet_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_queue_fleet_association_request()) ->
    {ok, update_queue_fleet_association_response(), tuple()} |
    {error, any()} |
    {error, update_queue_fleet_association_errors(), tuple()}.
update_queue_fleet_association(Client, FarmId, FleetId, QueueId, Input) ->
    update_queue_fleet_association(Client, FarmId, FleetId, QueueId, Input, []).

-spec update_queue_fleet_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_queue_fleet_association_request(), proplists:proplist()) ->
    {ok, update_queue_fleet_association_response(), tuple()} |
    {error, any()} |
    {error, update_queue_fleet_association_errors(), tuple()}.
update_queue_fleet_association(Client, FarmId, FleetId, QueueId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queue-fleet-associations/", aws_util:encode_uri(QueueId), "/", aws_util:encode_uri(FleetId), ""],
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

%% @doc Updates the status of the queue.
%%
%% If you set the status to one of the
%% `STOP_LIMIT_USAGE*' values, there will be a delay before the status
%% transitions to the `STOPPED' state.
-spec update_queue_limit_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_queue_limit_association_request()) ->
    {ok, update_queue_limit_association_response(), tuple()} |
    {error, any()} |
    {error, update_queue_limit_association_errors(), tuple()}.
update_queue_limit_association(Client, FarmId, LimitId, QueueId, Input) ->
    update_queue_limit_association(Client, FarmId, LimitId, QueueId, Input, []).

-spec update_queue_limit_association(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_queue_limit_association_request(), proplists:proplist()) ->
    {ok, update_queue_limit_association_response(), tuple()} |
    {error, any()} |
    {error, update_queue_limit_association_errors(), tuple()}.
update_queue_limit_association(Client, FarmId, LimitId, QueueId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queue-limit-associations/", aws_util:encode_uri(QueueId), "/", aws_util:encode_uri(LimitId), ""],
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

%% @doc Updates a session.
-spec update_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_session_request()) ->
    {ok, update_session_response(), tuple()} |
    {error, any()} |
    {error, update_session_errors(), tuple()}.
update_session(Client, FarmId, JobId, QueueId, SessionId, Input) ->
    update_session(Client, FarmId, JobId, QueueId, SessionId, Input, []).

-spec update_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_session_request(), proplists:proplist()) ->
    {ok, update_session_response(), tuple()} |
    {error, any()} |
    {error, update_session_errors(), tuple()}.
update_session(Client, FarmId, JobId, QueueId, SessionId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a step.
-spec update_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_step_request()) ->
    {ok, update_step_response(), tuple()} |
    {error, any()} |
    {error, update_step_errors(), tuple()}.
update_step(Client, FarmId, JobId, QueueId, StepId, Input) ->
    update_step(Client, FarmId, JobId, QueueId, StepId, Input, []).

-spec update_step(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_step_request(), proplists:proplist()) ->
    {ok, update_step_response(), tuple()} |
    {error, any()} |
    {error, update_step_errors(), tuple()}.
update_step(Client, FarmId, JobId, QueueId, StepId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/steps/", aws_util:encode_uri(StepId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a storage profile.
-spec update_storage_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_storage_profile_request()) ->
    {ok, update_storage_profile_response(), tuple()} |
    {error, any()} |
    {error, update_storage_profile_errors(), tuple()}.
update_storage_profile(Client, FarmId, StorageProfileId, Input) ->
    update_storage_profile(Client, FarmId, StorageProfileId, Input, []).

-spec update_storage_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_storage_profile_request(), proplists:proplist()) ->
    {ok, update_storage_profile_response(), tuple()} |
    {error, any()} |
    {error, update_storage_profile_errors(), tuple()}.
update_storage_profile(Client, FarmId, StorageProfileId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/storage-profiles/", aws_util:encode_uri(StorageProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a task.
-spec update_task(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_task_request()) ->
    {ok, update_task_response(), tuple()} |
    {error, any()} |
    {error, update_task_errors(), tuple()}.
update_task(Client, FarmId, JobId, QueueId, StepId, TaskId, Input) ->
    update_task(Client, FarmId, JobId, QueueId, StepId, TaskId, Input, []).

-spec update_task(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), update_task_request(), proplists:proplist()) ->
    {ok, update_task_response(), tuple()} |
    {error, any()} |
    {error, update_task_errors(), tuple()}.
update_task(Client, FarmId, JobId, QueueId, StepId, TaskId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/queues/", aws_util:encode_uri(QueueId), "/jobs/", aws_util:encode_uri(JobId), "/steps/", aws_util:encode_uri(StepId), "/tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a worker.
-spec update_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_worker_request()) ->
    {ok, update_worker_response(), tuple()} |
    {error, any()} |
    {error, update_worker_errors(), tuple()}.
update_worker(Client, FarmId, FleetId, WorkerId, Input) ->
    update_worker(Client, FarmId, FleetId, WorkerId, Input, []).

-spec update_worker(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_worker_request(), proplists:proplist()) ->
    {ok, update_worker_response(), tuple()} |
    {error, any()} |
    {error, update_worker_errors(), tuple()}.
update_worker(Client, FarmId, FleetId, WorkerId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/workers/", aws_util:encode_uri(WorkerId), ""],
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

%% @doc Updates the schedule for a worker.
-spec update_worker_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_worker_schedule_request()) ->
    {ok, update_worker_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_worker_schedule_errors(), tuple()}.
update_worker_schedule(Client, FarmId, FleetId, WorkerId, Input) ->
    update_worker_schedule(Client, FarmId, FleetId, WorkerId, Input, []).

-spec update_worker_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_worker_schedule_request(), proplists:proplist()) ->
    {ok, update_worker_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_worker_schedule_errors(), tuple()}.
update_worker_schedule(Client, FarmId, FleetId, WorkerId, Input0, Options0) ->
    Method = patch,
    Path = ["/2023-10-12/farms/", aws_util:encode_uri(FarmId), "/fleets/", aws_util:encode_uri(FleetId), "/workers/", aws_util:encode_uri(WorkerId), "/schedule"],
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
    Client1 = Client#{service => <<"deadline">>},
    Host = build_host(<<"deadline">>, Client1),
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
