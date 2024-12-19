%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT
%%
%% IoT provides secure, bi-directional communication between
%% Internet-connected
%% devices (such as sensors, actuators, embedded devices, or smart
%% appliances) and the Amazon Web Services
%% cloud.
%%
%% You can discover your custom IoT-Data endpoint to communicate with,
%% configure
%% rules for data processing and integration with other services, organize
%% resources
%% associated with each device (Registry), configure logging, and create and
%% manage
%% policies and credentials to authenticate devices.
%%
%% The service endpoints that expose this API are listed in
%% Amazon Web Services IoT Core Endpoints and Quotas:
%% https://docs.aws.amazon.com/general/latest/gr/iot-core.html.
%% You must use the endpoint for the region that has the resources you want
%% to access.
%%
%% The service name used by Amazon Web Services
%% Signature Version 4:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html to
%% sign the request is:
%% execute-api.
%%
%% For more information about how IoT works, see the Developer
%% Guide:
%% https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html.
%%
%% For information about how to use the credentials provider for IoT, see
%% Authorizing Direct Calls to Amazon Web Services Services:
%% https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html.
-module(aws_iot).

-export([accept_certificate_transfer/3,
         accept_certificate_transfer/4,
         add_thing_to_billing_group/2,
         add_thing_to_billing_group/3,
         add_thing_to_thing_group/2,
         add_thing_to_thing_group/3,
         associate_sbom_with_package_version/4,
         associate_sbom_with_package_version/5,
         associate_targets_with_job/3,
         associate_targets_with_job/4,
         attach_policy/3,
         attach_policy/4,
         attach_principal_policy/3,
         attach_principal_policy/4,
         attach_security_profile/3,
         attach_security_profile/4,
         attach_thing_principal/3,
         attach_thing_principal/4,
         cancel_audit_mitigation_actions_task/3,
         cancel_audit_mitigation_actions_task/4,
         cancel_audit_task/3,
         cancel_audit_task/4,
         cancel_certificate_transfer/3,
         cancel_certificate_transfer/4,
         cancel_detect_mitigation_actions_task/3,
         cancel_detect_mitigation_actions_task/4,
         cancel_job/3,
         cancel_job/4,
         cancel_job_execution/4,
         cancel_job_execution/5,
         clear_default_authorizer/2,
         clear_default_authorizer/3,
         confirm_topic_rule_destination/2,
         confirm_topic_rule_destination/4,
         confirm_topic_rule_destination/5,
         create_audit_suppression/2,
         create_audit_suppression/3,
         create_authorizer/3,
         create_authorizer/4,
         create_billing_group/3,
         create_billing_group/4,
         create_certificate_from_csr/2,
         create_certificate_from_csr/3,
         create_certificate_provider/3,
         create_certificate_provider/4,
         create_command/3,
         create_command/4,
         create_custom_metric/3,
         create_custom_metric/4,
         create_dimension/3,
         create_dimension/4,
         create_domain_configuration/3,
         create_domain_configuration/4,
         create_dynamic_thing_group/3,
         create_dynamic_thing_group/4,
         create_fleet_metric/3,
         create_fleet_metric/4,
         create_job/3,
         create_job/4,
         create_job_template/3,
         create_job_template/4,
         create_keys_and_certificate/2,
         create_keys_and_certificate/3,
         create_mitigation_action/3,
         create_mitigation_action/4,
         create_ota_update/3,
         create_ota_update/4,
         create_package/3,
         create_package/4,
         create_package_version/4,
         create_package_version/5,
         create_policy/3,
         create_policy/4,
         create_policy_version/3,
         create_policy_version/4,
         create_provisioning_claim/3,
         create_provisioning_claim/4,
         create_provisioning_template/2,
         create_provisioning_template/3,
         create_provisioning_template_version/3,
         create_provisioning_template_version/4,
         create_role_alias/3,
         create_role_alias/4,
         create_scheduled_audit/3,
         create_scheduled_audit/4,
         create_security_profile/3,
         create_security_profile/4,
         create_stream/3,
         create_stream/4,
         create_thing/3,
         create_thing/4,
         create_thing_group/3,
         create_thing_group/4,
         create_thing_type/3,
         create_thing_type/4,
         create_topic_rule/3,
         create_topic_rule/4,
         create_topic_rule_destination/2,
         create_topic_rule_destination/3,
         delete_account_audit_configuration/2,
         delete_account_audit_configuration/3,
         delete_audit_suppression/2,
         delete_audit_suppression/3,
         delete_authorizer/3,
         delete_authorizer/4,
         delete_billing_group/3,
         delete_billing_group/4,
         delete_ca_certificate/3,
         delete_ca_certificate/4,
         delete_certificate/3,
         delete_certificate/4,
         delete_certificate_provider/3,
         delete_certificate_provider/4,
         delete_command/3,
         delete_command/4,
         delete_command_execution/3,
         delete_command_execution/4,
         delete_custom_metric/3,
         delete_custom_metric/4,
         delete_dimension/3,
         delete_dimension/4,
         delete_domain_configuration/3,
         delete_domain_configuration/4,
         delete_dynamic_thing_group/3,
         delete_dynamic_thing_group/4,
         delete_fleet_metric/3,
         delete_fleet_metric/4,
         delete_job/3,
         delete_job/4,
         delete_job_execution/5,
         delete_job_execution/6,
         delete_job_template/3,
         delete_job_template/4,
         delete_mitigation_action/3,
         delete_mitigation_action/4,
         delete_ota_update/3,
         delete_ota_update/4,
         delete_package/3,
         delete_package/4,
         delete_package_version/4,
         delete_package_version/5,
         delete_policy/3,
         delete_policy/4,
         delete_policy_version/4,
         delete_policy_version/5,
         delete_provisioning_template/3,
         delete_provisioning_template/4,
         delete_provisioning_template_version/4,
         delete_provisioning_template_version/5,
         delete_registration_code/2,
         delete_registration_code/3,
         delete_role_alias/3,
         delete_role_alias/4,
         delete_scheduled_audit/3,
         delete_scheduled_audit/4,
         delete_security_profile/3,
         delete_security_profile/4,
         delete_stream/3,
         delete_stream/4,
         delete_thing/3,
         delete_thing/4,
         delete_thing_group/3,
         delete_thing_group/4,
         delete_thing_type/3,
         delete_thing_type/4,
         delete_topic_rule/3,
         delete_topic_rule/4,
         delete_topic_rule_destination/3,
         delete_topic_rule_destination/4,
         delete_v2_logging_level/2,
         delete_v2_logging_level/3,
         deprecate_thing_type/3,
         deprecate_thing_type/4,
         describe_account_audit_configuration/1,
         describe_account_audit_configuration/3,
         describe_account_audit_configuration/4,
         describe_audit_finding/2,
         describe_audit_finding/4,
         describe_audit_finding/5,
         describe_audit_mitigation_actions_task/2,
         describe_audit_mitigation_actions_task/4,
         describe_audit_mitigation_actions_task/5,
         describe_audit_suppression/2,
         describe_audit_suppression/3,
         describe_audit_task/2,
         describe_audit_task/4,
         describe_audit_task/5,
         describe_authorizer/2,
         describe_authorizer/4,
         describe_authorizer/5,
         describe_billing_group/2,
         describe_billing_group/4,
         describe_billing_group/5,
         describe_ca_certificate/2,
         describe_ca_certificate/4,
         describe_ca_certificate/5,
         describe_certificate/2,
         describe_certificate/4,
         describe_certificate/5,
         describe_certificate_provider/2,
         describe_certificate_provider/4,
         describe_certificate_provider/5,
         describe_custom_metric/2,
         describe_custom_metric/4,
         describe_custom_metric/5,
         describe_default_authorizer/1,
         describe_default_authorizer/3,
         describe_default_authorizer/4,
         describe_detect_mitigation_actions_task/2,
         describe_detect_mitigation_actions_task/4,
         describe_detect_mitigation_actions_task/5,
         describe_dimension/2,
         describe_dimension/4,
         describe_dimension/5,
         describe_domain_configuration/2,
         describe_domain_configuration/4,
         describe_domain_configuration/5,
         describe_endpoint/1,
         describe_endpoint/3,
         describe_endpoint/4,
         describe_event_configurations/1,
         describe_event_configurations/3,
         describe_event_configurations/4,
         describe_fleet_metric/2,
         describe_fleet_metric/4,
         describe_fleet_metric/5,
         describe_index/2,
         describe_index/4,
         describe_index/5,
         describe_job/2,
         describe_job/4,
         describe_job/5,
         describe_job_execution/3,
         describe_job_execution/5,
         describe_job_execution/6,
         describe_job_template/2,
         describe_job_template/4,
         describe_job_template/5,
         describe_managed_job_template/2,
         describe_managed_job_template/4,
         describe_managed_job_template/5,
         describe_mitigation_action/2,
         describe_mitigation_action/4,
         describe_mitigation_action/5,
         describe_provisioning_template/2,
         describe_provisioning_template/4,
         describe_provisioning_template/5,
         describe_provisioning_template_version/3,
         describe_provisioning_template_version/5,
         describe_provisioning_template_version/6,
         describe_role_alias/2,
         describe_role_alias/4,
         describe_role_alias/5,
         describe_scheduled_audit/2,
         describe_scheduled_audit/4,
         describe_scheduled_audit/5,
         describe_security_profile/2,
         describe_security_profile/4,
         describe_security_profile/5,
         describe_stream/2,
         describe_stream/4,
         describe_stream/5,
         describe_thing/2,
         describe_thing/4,
         describe_thing/5,
         describe_thing_group/2,
         describe_thing_group/4,
         describe_thing_group/5,
         describe_thing_registration_task/2,
         describe_thing_registration_task/4,
         describe_thing_registration_task/5,
         describe_thing_type/2,
         describe_thing_type/4,
         describe_thing_type/5,
         detach_policy/3,
         detach_policy/4,
         detach_principal_policy/3,
         detach_principal_policy/4,
         detach_security_profile/3,
         detach_security_profile/4,
         detach_thing_principal/3,
         detach_thing_principal/4,
         disable_topic_rule/3,
         disable_topic_rule/4,
         disassociate_sbom_from_package_version/4,
         disassociate_sbom_from_package_version/5,
         enable_topic_rule/3,
         enable_topic_rule/4,
         get_behavior_model_training_summaries/1,
         get_behavior_model_training_summaries/3,
         get_behavior_model_training_summaries/4,
         get_buckets_aggregation/2,
         get_buckets_aggregation/3,
         get_cardinality/2,
         get_cardinality/3,
         get_command/2,
         get_command/4,
         get_command/5,
         get_command_execution/3,
         get_command_execution/5,
         get_command_execution/6,
         get_effective_policies/2,
         get_effective_policies/3,
         get_indexing_configuration/1,
         get_indexing_configuration/3,
         get_indexing_configuration/4,
         get_job_document/2,
         get_job_document/4,
         get_job_document/5,
         get_logging_options/1,
         get_logging_options/3,
         get_logging_options/4,
         get_ota_update/2,
         get_ota_update/4,
         get_ota_update/5,
         get_package/2,
         get_package/4,
         get_package/5,
         get_package_configuration/1,
         get_package_configuration/3,
         get_package_configuration/4,
         get_package_version/3,
         get_package_version/5,
         get_package_version/6,
         get_percentiles/2,
         get_percentiles/3,
         get_policy/2,
         get_policy/4,
         get_policy/5,
         get_policy_version/3,
         get_policy_version/5,
         get_policy_version/6,
         get_registration_code/1,
         get_registration_code/3,
         get_registration_code/4,
         get_statistics/2,
         get_statistics/3,
         get_thing_connectivity_data/3,
         get_thing_connectivity_data/4,
         get_topic_rule/2,
         get_topic_rule/4,
         get_topic_rule/5,
         get_topic_rule_destination/2,
         get_topic_rule_destination/4,
         get_topic_rule_destination/5,
         get_v2_logging_options/1,
         get_v2_logging_options/3,
         get_v2_logging_options/4,
         list_active_violations/1,
         list_active_violations/3,
         list_active_violations/4,
         list_attached_policies/3,
         list_attached_policies/4,
         list_audit_findings/2,
         list_audit_findings/3,
         list_audit_mitigation_actions_executions/3,
         list_audit_mitigation_actions_executions/5,
         list_audit_mitigation_actions_executions/6,
         list_audit_mitigation_actions_tasks/3,
         list_audit_mitigation_actions_tasks/5,
         list_audit_mitigation_actions_tasks/6,
         list_audit_suppressions/2,
         list_audit_suppressions/3,
         list_audit_tasks/3,
         list_audit_tasks/5,
         list_audit_tasks/6,
         list_authorizers/1,
         list_authorizers/3,
         list_authorizers/4,
         list_billing_groups/1,
         list_billing_groups/3,
         list_billing_groups/4,
         list_ca_certificates/1,
         list_ca_certificates/3,
         list_ca_certificates/4,
         list_certificate_providers/1,
         list_certificate_providers/3,
         list_certificate_providers/4,
         list_certificates/1,
         list_certificates/3,
         list_certificates/4,
         list_certificates_by_ca/2,
         list_certificates_by_ca/4,
         list_certificates_by_ca/5,
         list_command_executions/2,
         list_command_executions/3,
         list_commands/1,
         list_commands/3,
         list_commands/4,
         list_custom_metrics/1,
         list_custom_metrics/3,
         list_custom_metrics/4,
         list_detect_mitigation_actions_executions/1,
         list_detect_mitigation_actions_executions/3,
         list_detect_mitigation_actions_executions/4,
         list_detect_mitigation_actions_tasks/3,
         list_detect_mitigation_actions_tasks/5,
         list_detect_mitigation_actions_tasks/6,
         list_dimensions/1,
         list_dimensions/3,
         list_dimensions/4,
         list_domain_configurations/1,
         list_domain_configurations/3,
         list_domain_configurations/4,
         list_fleet_metrics/1,
         list_fleet_metrics/3,
         list_fleet_metrics/4,
         list_indices/1,
         list_indices/3,
         list_indices/4,
         list_job_executions_for_job/2,
         list_job_executions_for_job/4,
         list_job_executions_for_job/5,
         list_job_executions_for_thing/2,
         list_job_executions_for_thing/4,
         list_job_executions_for_thing/5,
         list_job_templates/1,
         list_job_templates/3,
         list_job_templates/4,
         list_jobs/1,
         list_jobs/3,
         list_jobs/4,
         list_managed_job_templates/1,
         list_managed_job_templates/3,
         list_managed_job_templates/4,
         list_metric_values/5,
         list_metric_values/7,
         list_metric_values/8,
         list_mitigation_actions/1,
         list_mitigation_actions/3,
         list_mitigation_actions/4,
         list_ota_updates/1,
         list_ota_updates/3,
         list_ota_updates/4,
         list_outgoing_certificates/1,
         list_outgoing_certificates/3,
         list_outgoing_certificates/4,
         list_package_versions/2,
         list_package_versions/4,
         list_package_versions/5,
         list_packages/1,
         list_packages/3,
         list_packages/4,
         list_policies/1,
         list_policies/3,
         list_policies/4,
         list_policy_principals/2,
         list_policy_principals/4,
         list_policy_principals/5,
         list_policy_versions/2,
         list_policy_versions/4,
         list_policy_versions/5,
         list_principal_policies/2,
         list_principal_policies/4,
         list_principal_policies/5,
         list_principal_things/2,
         list_principal_things/4,
         list_principal_things/5,
         list_principal_things_v2/2,
         list_principal_things_v2/4,
         list_principal_things_v2/5,
         list_provisioning_template_versions/2,
         list_provisioning_template_versions/4,
         list_provisioning_template_versions/5,
         list_provisioning_templates/1,
         list_provisioning_templates/3,
         list_provisioning_templates/4,
         list_related_resources_for_audit_finding/2,
         list_related_resources_for_audit_finding/4,
         list_related_resources_for_audit_finding/5,
         list_role_aliases/1,
         list_role_aliases/3,
         list_role_aliases/4,
         list_sbom_validation_results/3,
         list_sbom_validation_results/5,
         list_sbom_validation_results/6,
         list_scheduled_audits/1,
         list_scheduled_audits/3,
         list_scheduled_audits/4,
         list_security_profiles/1,
         list_security_profiles/3,
         list_security_profiles/4,
         list_security_profiles_for_target/2,
         list_security_profiles_for_target/4,
         list_security_profiles_for_target/5,
         list_streams/1,
         list_streams/3,
         list_streams/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_targets_for_policy/3,
         list_targets_for_policy/4,
         list_targets_for_security_profile/2,
         list_targets_for_security_profile/4,
         list_targets_for_security_profile/5,
         list_thing_groups/1,
         list_thing_groups/3,
         list_thing_groups/4,
         list_thing_groups_for_thing/2,
         list_thing_groups_for_thing/4,
         list_thing_groups_for_thing/5,
         list_thing_principals/2,
         list_thing_principals/4,
         list_thing_principals/5,
         list_thing_principals_v2/2,
         list_thing_principals_v2/4,
         list_thing_principals_v2/5,
         list_thing_registration_task_reports/3,
         list_thing_registration_task_reports/5,
         list_thing_registration_task_reports/6,
         list_thing_registration_tasks/1,
         list_thing_registration_tasks/3,
         list_thing_registration_tasks/4,
         list_thing_types/1,
         list_thing_types/3,
         list_thing_types/4,
         list_things/1,
         list_things/3,
         list_things/4,
         list_things_in_billing_group/2,
         list_things_in_billing_group/4,
         list_things_in_billing_group/5,
         list_things_in_thing_group/2,
         list_things_in_thing_group/4,
         list_things_in_thing_group/5,
         list_topic_rule_destinations/1,
         list_topic_rule_destinations/3,
         list_topic_rule_destinations/4,
         list_topic_rules/1,
         list_topic_rules/3,
         list_topic_rules/4,
         list_v2_logging_levels/1,
         list_v2_logging_levels/3,
         list_v2_logging_levels/4,
         list_violation_events/3,
         list_violation_events/5,
         list_violation_events/6,
         put_verification_state_on_violation/3,
         put_verification_state_on_violation/4,
         register_ca_certificate/2,
         register_ca_certificate/3,
         register_certificate/2,
         register_certificate/3,
         register_certificate_without_ca/2,
         register_certificate_without_ca/3,
         register_thing/2,
         register_thing/3,
         reject_certificate_transfer/3,
         reject_certificate_transfer/4,
         remove_thing_from_billing_group/2,
         remove_thing_from_billing_group/3,
         remove_thing_from_thing_group/2,
         remove_thing_from_thing_group/3,
         replace_topic_rule/3,
         replace_topic_rule/4,
         search_index/2,
         search_index/3,
         set_default_authorizer/2,
         set_default_authorizer/3,
         set_default_policy_version/4,
         set_default_policy_version/5,
         set_logging_options/2,
         set_logging_options/3,
         set_v2_logging_level/2,
         set_v2_logging_level/3,
         set_v2_logging_options/2,
         set_v2_logging_options/3,
         start_audit_mitigation_actions_task/3,
         start_audit_mitigation_actions_task/4,
         start_detect_mitigation_actions_task/3,
         start_detect_mitigation_actions_task/4,
         start_on_demand_audit_task/2,
         start_on_demand_audit_task/3,
         start_thing_registration_task/2,
         start_thing_registration_task/3,
         stop_thing_registration_task/3,
         stop_thing_registration_task/4,
         tag_resource/2,
         tag_resource/3,
         test_authorization/2,
         test_authorization/3,
         test_invoke_authorizer/3,
         test_invoke_authorizer/4,
         transfer_certificate/3,
         transfer_certificate/4,
         untag_resource/2,
         untag_resource/3,
         update_account_audit_configuration/2,
         update_account_audit_configuration/3,
         update_audit_suppression/2,
         update_audit_suppression/3,
         update_authorizer/3,
         update_authorizer/4,
         update_billing_group/3,
         update_billing_group/4,
         update_ca_certificate/3,
         update_ca_certificate/4,
         update_certificate/3,
         update_certificate/4,
         update_certificate_provider/3,
         update_certificate_provider/4,
         update_command/3,
         update_command/4,
         update_custom_metric/3,
         update_custom_metric/4,
         update_dimension/3,
         update_dimension/4,
         update_domain_configuration/3,
         update_domain_configuration/4,
         update_dynamic_thing_group/3,
         update_dynamic_thing_group/4,
         update_event_configurations/2,
         update_event_configurations/3,
         update_fleet_metric/3,
         update_fleet_metric/4,
         update_indexing_configuration/2,
         update_indexing_configuration/3,
         update_job/3,
         update_job/4,
         update_mitigation_action/3,
         update_mitigation_action/4,
         update_package/3,
         update_package/4,
         update_package_configuration/2,
         update_package_configuration/3,
         update_package_version/4,
         update_package_version/5,
         update_provisioning_template/3,
         update_provisioning_template/4,
         update_role_alias/3,
         update_role_alias/4,
         update_scheduled_audit/3,
         update_scheduled_audit/4,
         update_security_profile/3,
         update_security_profile/4,
         update_stream/3,
         update_stream/4,
         update_thing/3,
         update_thing/4,
         update_thing_group/3,
         update_thing_group/4,
         update_thing_groups_for_thing/2,
         update_thing_groups_for_thing/3,
         update_thing_type/3,
         update_thing_type/4,
         update_topic_rule_destination/2,
         update_topic_rule_destination/3,
         validate_security_profile_behaviors/2,
         validate_security_profile_behaviors/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_buckets_aggregation_response() :: #{
%%   <<"buckets">> => list(bucket()()),
%%   <<"totalCount">> => integer()
%% }
-type get_buckets_aggregation_response() :: #{binary() => any()}.


%% Example:
%% http_url_destination_configuration() :: #{
%%   <<"confirmationUrl">> => string()
%% }
-type http_url_destination_configuration() :: #{binary() => any()}.


%% Example:
%% describe_audit_suppression_request() :: #{
%%   <<"checkName">> := string(),
%%   <<"resourceIdentifier">> := resource_identifier()
%% }
-type describe_audit_suppression_request() :: #{binary() => any()}.


%% Example:
%% list_sbom_validation_results_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"validationResultSummaries">> => list(sbom_validation_result_summary()())
%% }
-type list_sbom_validation_results_response() :: #{binary() => any()}.


%% Example:
%% describe_billing_group_response() :: #{
%%   <<"billingGroupArn">> => string(),
%%   <<"billingGroupId">> => string(),
%%   <<"billingGroupMetadata">> => billing_group_metadata(),
%%   <<"billingGroupName">> => string(),
%%   <<"billingGroupProperties">> => billing_group_properties(),
%%   <<"version">> => float()
%% }
-type describe_billing_group_response() :: #{binary() => any()}.


%% Example:
%% delete_command_response() :: #{
%%   <<"statusCode">> => integer()
%% }
-type delete_command_response() :: #{binary() => any()}.


%% Example:
%% cancel_job_request() :: #{
%%   <<"comment">> => string(),
%%   <<"force">> => boolean(),
%%   <<"reasonCode">> => string()
%% }
-type cancel_job_request() :: #{binary() => any()}.


%% Example:
%% create_thing_response() :: #{
%%   <<"thingArn">> => string(),
%%   <<"thingId">> => string(),
%%   <<"thingName">> => string()
%% }
-type create_thing_response() :: #{binary() => any()}.


%% Example:
%% list_thing_registration_task_reports_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reportType">> => list(any()),
%%   <<"resourceLinks">> => list(string()())
%% }
-type list_thing_registration_task_reports_response() :: #{binary() => any()}.

%% Example:
%% describe_certificate_provider_request() :: #{}
-type describe_certificate_provider_request() :: #{}.


%% Example:
%% get_command_response() :: #{
%%   <<"commandArn">> => string(),
%%   <<"commandId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deprecated">> => boolean(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"mandatoryParameters">> => list(command_parameter()()),
%%   <<"namespace">> => list(any()),
%%   <<"payload">> => command_payload(),
%%   <<"pendingDeletion">> => boolean(),
%%   <<"roleArn">> => string()
%% }
-type get_command_response() :: #{binary() => any()}.


%% Example:
%% retry_criteria() :: #{
%%   <<"failureType">> => list(any()),
%%   <<"numberOfRetries">> => integer()
%% }
-type retry_criteria() :: #{binary() => any()}.


%% Example:
%% create_billing_group_response() :: #{
%%   <<"billingGroupArn">> => string(),
%%   <<"billingGroupId">> => string(),
%%   <<"billingGroupName">> => string()
%% }
-type create_billing_group_response() :: #{binary() => any()}.


%% Example:
%% create_dimension_response() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string()
%% }
-type create_dimension_response() :: #{binary() => any()}.

%% Example:
%% delete_mitigation_action_request() :: #{}
-type delete_mitigation_action_request() :: #{}.


%% Example:
%% list_provisioning_template_versions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"versions">> => list(provisioning_template_version_summary()())
%% }
-type list_provisioning_template_versions_response() :: #{binary() => any()}.


%% Example:
%% audit_mitigation_action_execution_metadata() :: #{
%%   <<"actionId">> => string(),
%%   <<"actionName">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"errorCode">> => string(),
%%   <<"findingId">> => string(),
%%   <<"message">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"taskId">> => string()
%% }
-type audit_mitigation_action_execution_metadata() :: #{binary() => any()}.


%% Example:
%% geo_location_target() :: #{
%%   <<"name">> => string(),
%%   <<"order">> => list(any())
%% }
-type geo_location_target() :: #{binary() => any()}.


%% Example:
%% update_certificate_request() :: #{
%%   <<"newStatus">> := list(any())
%% }
-type update_certificate_request() :: #{binary() => any()}.


%% Example:
%% user_property() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type user_property() :: #{binary() => any()}.


%% Example:
%% topic_rule() :: #{
%%   <<"actions">> => list(action()()),
%%   <<"awsIotSqlVersion">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"errorAction">> => action(),
%%   <<"ruleDisabled">> => boolean(),
%%   <<"ruleName">> => string(),
%%   <<"sql">> => string()
%% }
-type topic_rule() :: #{binary() => any()}.


%% Example:
%% timestream_dimension() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type timestream_dimension() :: #{binary() => any()}.


%% Example:
%% terms_aggregation() :: #{
%%   <<"maxBuckets">> => integer()
%% }
-type terms_aggregation() :: #{binary() => any()}.

%% Example:
%% create_provisioning_claim_request() :: #{}
-type create_provisioning_claim_request() :: #{}.


%% Example:
%% command_payload() :: #{
%%   <<"content">> => binary(),
%%   <<"contentType">> => string()
%% }
-type command_payload() :: #{binary() => any()}.

%% Example:
%% get_topic_rule_destination_request() :: #{}
-type get_topic_rule_destination_request() :: #{}.


%% Example:
%% update_package_configuration_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"versionUpdateByJobsConfig">> => version_update_by_jobs_config()
%% }
-type update_package_configuration_request() :: #{binary() => any()}.


%% Example:
%% ota_update_file() :: #{
%%   <<"attributes">> => map(),
%%   <<"codeSigning">> => code_signing(),
%%   <<"fileLocation">> => file_location(),
%%   <<"fileName">> => string(),
%%   <<"fileType">> => integer(),
%%   <<"fileVersion">> => string()
%% }
-type ota_update_file() :: #{binary() => any()}.


%% Example:
%% get_statistics_response() :: #{
%%   <<"statistics">> => statistics()
%% }
-type get_statistics_response() :: #{binary() => any()}.


%% Example:
%% violation_event_additional_info() :: #{
%%   <<"confidenceLevel">> => list(any())
%% }
-type violation_event_additional_info() :: #{binary() => any()}.


%% Example:
%% delete_billing_group_request() :: #{
%%   <<"expectedVersion">> => float()
%% }
-type delete_billing_group_request() :: #{binary() => any()}.


%% Example:
%% list_policy_versions_response() :: #{
%%   <<"policyVersions">> => list(policy_version()())
%% }
-type list_policy_versions_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_indexing_configuration_response() :: #{
%%   <<"thingGroupIndexingConfiguration">> => thing_group_indexing_configuration(),
%%   <<"thingIndexingConfiguration">> => thing_indexing_configuration()
%% }
-type get_indexing_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_thing_request() :: #{
%%   <<"attributePayload">> => attribute_payload(),
%%   <<"expectedVersion">> => float(),
%%   <<"removeThingType">> => boolean(),
%%   <<"thingTypeName">> => string()
%% }
-type update_thing_request() :: #{binary() => any()}.

%% Example:
%% delete_ca_certificate_request() :: #{}
-type delete_ca_certificate_request() :: #{}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% create_job_template_response() :: #{
%%   <<"jobTemplateArn">> => string(),
%%   <<"jobTemplateId">> => string()
%% }
-type create_job_template_response() :: #{binary() => any()}.

%% Example:
%% set_default_policy_version_request() :: #{}
-type set_default_policy_version_request() :: #{}.


%% Example:
%% thing_group_indexing_configuration() :: #{
%%   <<"customFields">> => list(field()()),
%%   <<"managedFields">> => list(field()()),
%%   <<"thingGroupIndexingMode">> => list(any())
%% }
-type thing_group_indexing_configuration() :: #{binary() => any()}.


%% Example:
%% get_policy_version_response() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"generationId">> => string(),
%%   <<"isDefaultVersion">> => boolean(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"policyArn">> => string(),
%%   <<"policyDocument">> => string(),
%%   <<"policyName">> => string(),
%%   <<"policyVersionId">> => string()
%% }
-type get_policy_version_response() :: #{binary() => any()}.


%% Example:
%% firehose_action() :: #{
%%   <<"batchMode">> => boolean(),
%%   <<"deliveryStreamName">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"separator">> => string()
%% }
-type firehose_action() :: #{binary() => any()}.


%% Example:
%% start_audit_mitigation_actions_task_response() :: #{
%%   <<"taskId">> => string()
%% }
-type start_audit_mitigation_actions_task_response() :: #{binary() => any()}.


%% Example:
%% list_things_in_thing_group_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"recursive">> => boolean()
%% }
-type list_things_in_thing_group_request() :: #{binary() => any()}.


%% Example:
%% http_authorization() :: #{
%%   <<"sigv4">> => sig_v4_authorization()
%% }
-type http_authorization() :: #{binary() => any()}.


%% Example:
%% detect_mitigation_actions_task_target() :: #{
%%   <<"behaviorName">> => string(),
%%   <<"securityProfileName">> => string(),
%%   <<"violationIds">> => list(string()())
%% }
-type detect_mitigation_actions_task_target() :: #{binary() => any()}.


%% Example:
%% registration_config() :: #{
%%   <<"roleArn">> => string(),
%%   <<"templateBody">> => string(),
%%   <<"templateName">> => string()
%% }
-type registration_config() :: #{binary() => any()}.


%% Example:
%% list_provisioning_template_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_provisioning_template_versions_request() :: #{binary() => any()}.


%% Example:
%% malformed_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type malformed_policy_exception() :: #{binary() => any()}.


%% Example:
%% list_principal_things_v2_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"principalThingObjects">> => list(principal_thing_object()())
%% }
-type list_principal_things_v2_response() :: #{binary() => any()}.


%% Example:
%% list_thing_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"namePrefixFilter">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"parentGroup">> => string(),
%%   <<"recursive">> => boolean()
%% }
-type list_thing_groups_request() :: #{binary() => any()}.


%% Example:
%% describe_domain_configuration_response() :: #{
%%   <<"applicationProtocol">> => list(any()),
%%   <<"authenticationType">> => list(any()),
%%   <<"authorizerConfig">> => authorizer_config(),
%%   <<"clientCertificateConfig">> => client_certificate_config(),
%%   <<"domainConfigurationArn">> => string(),
%%   <<"domainConfigurationName">> => string(),
%%   <<"domainConfigurationStatus">> => list(any()),
%%   <<"domainName">> => string(),
%%   <<"domainType">> => list(any()),
%%   <<"lastStatusChangeDate">> => non_neg_integer(),
%%   <<"serverCertificateConfig">> => server_certificate_config(),
%%   <<"serverCertificates">> => list(server_certificate_summary()()),
%%   <<"serviceType">> => list(any()),
%%   <<"tlsConfig">> => tls_config()
%% }
-type describe_domain_configuration_response() :: #{binary() => any()}.


%% Example:
%% attach_thing_principal_request() :: #{
%%   <<"principal">> := string(),
%%   <<"thingPrincipalType">> => list(any())
%% }
-type attach_thing_principal_request() :: #{binary() => any()}.


%% Example:
%% delete_package_version_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_package_version_request() :: #{binary() => any()}.


%% Example:
%% describe_job_response() :: #{
%%   <<"documentSource">> => string(),
%%   <<"job">> => job()
%% }
-type describe_job_response() :: #{binary() => any()}.


%% Example:
%% version_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type version_conflict_exception() :: #{binary() => any()}.


%% Example:
%% describe_job_execution_request() :: #{
%%   <<"executionNumber">> => float()
%% }
-type describe_job_execution_request() :: #{binary() => any()}.

%% Example:
%% delete_security_profile_response() :: #{}
-type delete_security_profile_response() :: #{}.


%% Example:
%% cancel_job_execution_request() :: #{
%%   <<"expectedVersion">> => float(),
%%   <<"force">> => boolean(),
%%   <<"statusDetails">> => map()
%% }
-type cancel_job_execution_request() :: #{binary() => any()}.


%% Example:
%% list_topic_rules_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"rules">> => list(topic_rule_list_item()())
%% }
-type list_topic_rules_response() :: #{binary() => any()}.


%% Example:
%% create_job_response() :: #{
%%   <<"description">> => string(),
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string()
%% }
-type create_job_response() :: #{binary() => any()}.


%% Example:
%% audit_finding() :: #{
%%   <<"checkName">> => string(),
%%   <<"findingId">> => string(),
%%   <<"findingTime">> => non_neg_integer(),
%%   <<"isSuppressed">> => boolean(),
%%   <<"nonCompliantResource">> => non_compliant_resource(),
%%   <<"reasonForNonCompliance">> => string(),
%%   <<"reasonForNonComplianceCode">> => string(),
%%   <<"relatedResources">> => list(related_resource()()),
%%   <<"severity">> => list(any()),
%%   <<"taskId">> => string(),
%%   <<"taskStartTime">> => non_neg_integer()
%% }
-type audit_finding() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.

%% Example:
%% get_indexing_configuration_request() :: #{}
-type get_indexing_configuration_request() :: #{}.


%% Example:
%% describe_provisioning_template_version_response() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"isDefaultVersion">> => boolean(),
%%   <<"templateBody">> => string(),
%%   <<"versionId">> => integer()
%% }
-type describe_provisioning_template_version_response() :: #{binary() => any()}.


%% Example:
%% tls_context() :: #{
%%   <<"serverName">> => string()
%% }
-type tls_context() :: #{binary() => any()}.

%% Example:
%% get_policy_version_request() :: #{}
-type get_policy_version_request() :: #{}.


%% Example:
%% status_reason() :: #{
%%   <<"reasonCode">> => string(),
%%   <<"reasonDescription">> => string()
%% }
-type status_reason() :: #{binary() => any()}.


%% Example:
%% update_domain_configuration_request() :: #{
%%   <<"applicationProtocol">> => list(any()),
%%   <<"authenticationType">> => list(any()),
%%   <<"authorizerConfig">> => authorizer_config(),
%%   <<"clientCertificateConfig">> => client_certificate_config(),
%%   <<"domainConfigurationStatus">> => list(any()),
%%   <<"removeAuthorizerConfig">> => boolean(),
%%   <<"serverCertificateConfig">> => server_certificate_config(),
%%   <<"tlsConfig">> => tls_config()
%% }
-type update_domain_configuration_request() :: #{binary() => any()}.

%% Example:
%% attach_security_profile_response() :: #{}
-type attach_security_profile_response() :: #{}.


%% Example:
%% billing_group_metadata() :: #{
%%   <<"creationDate">> => non_neg_integer()
%% }
-type billing_group_metadata() :: #{binary() => any()}.


%% Example:
%% buckets_aggregation_type() :: #{
%%   <<"termsAggregation">> => terms_aggregation()
%% }
-type buckets_aggregation_type() :: #{binary() => any()}.


%% Example:
%% describe_authorizer_response() :: #{
%%   <<"authorizerDescription">> => authorizer_description()
%% }
-type describe_authorizer_response() :: #{binary() => any()}.

%% Example:
%% delete_custom_metric_request() :: #{}
-type delete_custom_metric_request() :: #{}.


%% Example:
%% test_authorization_response() :: #{
%%   <<"authResults">> => list(auth_result()())
%% }
-type test_authorization_response() :: #{binary() => any()}.


%% Example:
%% aws_job_executions_rollout_config() :: #{
%%   <<"exponentialRate">> => aws_job_exponential_rollout_rate(),
%%   <<"maximumPerMinute">> => integer()
%% }
-type aws_job_executions_rollout_config() :: #{binary() => any()}.


%% Example:
%% get_topic_rule_response() :: #{
%%   <<"rule">> => topic_rule(),
%%   <<"ruleArn">> => string()
%% }
-type get_topic_rule_response() :: #{binary() => any()}.


%% Example:
%% violation_event_occurrence_range() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type violation_event_occurrence_range() :: #{binary() => any()}.


%% Example:
%% list_commands_response() :: #{
%%   <<"commands">> => list(command_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_commands_response() :: #{binary() => any()}.


%% Example:
%% list_security_profiles_for_target_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"recursive">> => boolean(),
%%   <<"securityProfileTargetArn">> := string()
%% }
-type list_security_profiles_for_target_request() :: #{binary() => any()}.


%% Example:
%% get_thing_connectivity_data_response() :: #{
%%   <<"connected">> => boolean(),
%%   <<"disconnectReason">> => list(any()),
%%   <<"thingName">> => string(),
%%   <<"timestamp">> => non_neg_integer()
%% }
-type get_thing_connectivity_data_response() :: #{binary() => any()}.


%% Example:
%% ca_certificate_description() :: #{
%%   <<"autoRegistrationStatus">> => list(any()),
%%   <<"certificateArn">> => string(),
%%   <<"certificateId">> => string(),
%%   <<"certificateMode">> => list(any()),
%%   <<"certificatePem">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"customerVersion">> => integer(),
%%   <<"generationId">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"ownedBy">> => string(),
%%   <<"status">> => list(any()),
%%   <<"validity">> => certificate_validity()
%% }
-type ca_certificate_description() :: #{binary() => any()}.


%% Example:
%% list_policies_response() :: #{
%%   <<"nextMarker">> => string(),
%%   <<"policies">> => list(policy()())
%% }
-type list_policies_response() :: #{binary() => any()}.

%% Example:
%% cancel_certificate_transfer_request() :: #{}
-type cancel_certificate_transfer_request() :: #{}.

%% Example:
%% delete_scheduled_audit_response() :: #{}
-type delete_scheduled_audit_response() :: #{}.

%% Example:
%% delete_command_execution_response() :: #{}
-type delete_command_execution_response() :: #{}.


%% Example:
%% get_percentiles_response() :: #{
%%   <<"percentiles">> => list(percent_pair()())
%% }
-type get_percentiles_response() :: #{binary() => any()}.


%% Example:
%% list_topic_rules_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"ruleDisabled">> => boolean(),
%%   <<"topic">> => string()
%% }
-type list_topic_rules_request() :: #{binary() => any()}.


%% Example:
%% aws_job_timeout_config() :: #{
%%   <<"inProgressTimeoutInMinutes">> => float()
%% }
-type aws_job_timeout_config() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% confirm_topic_rule_destination_response() :: #{}
-type confirm_topic_rule_destination_response() :: #{}.


%% Example:
%% create_package_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"tags">> => map()
%% }
-type create_package_request() :: #{binary() => any()}.


%% Example:
%% list_audit_mitigation_actions_executions_request() :: #{
%%   <<"actionStatus">> => list(any()),
%%   <<"findingId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"taskId">> := string()
%% }
-type list_audit_mitigation_actions_executions_request() :: #{binary() => any()}.

%% Example:
%% detach_thing_principal_response() :: #{}
-type detach_thing_principal_response() :: #{}.


%% Example:
%% update_thing_type_request() :: #{
%%   <<"thingTypeProperties">> => thing_type_properties()
%% }
-type update_thing_type_request() :: #{binary() => any()}.

%% Example:
%% delete_thing_type_request() :: #{}
-type delete_thing_type_request() :: #{}.


%% Example:
%% list_topic_rule_destinations_response() :: #{
%%   <<"destinationSummaries">> => list(topic_rule_destination_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_topic_rule_destinations_response() :: #{binary() => any()}.


%% Example:
%% list_detect_mitigation_actions_tasks_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tasks">> => list(detect_mitigation_actions_task_summary()())
%% }
-type list_detect_mitigation_actions_tasks_response() :: #{binary() => any()}.


%% Example:
%% test_invoke_authorizer_request() :: #{
%%   <<"httpContext">> => http_context(),
%%   <<"mqttContext">> => mqtt_context(),
%%   <<"tlsContext">> => tls_context(),
%%   <<"token">> => string(),
%%   <<"tokenSignature">> => string()
%% }
-type test_invoke_authorizer_request() :: #{binary() => any()}.


%% Example:
%% aws_job_abort_criteria() :: #{
%%   <<"action">> => list(any()),
%%   <<"failureType">> => list(any()),
%%   <<"minNumberOfExecutedThings">> => integer(),
%%   <<"thresholdPercentage">> => float()
%% }
-type aws_job_abort_criteria() :: #{binary() => any()}.

%% Example:
%% update_audit_suppression_response() :: #{}
-type update_audit_suppression_response() :: #{}.


%% Example:
%% provisioning_hook() :: #{
%%   <<"payloadVersion">> => string(),
%%   <<"targetArn">> => string()
%% }
-type provisioning_hook() :: #{binary() => any()}.


%% Example:
%% dynamo_dbv2_action() :: #{
%%   <<"putItem">> => put_item_input(),
%%   <<"roleArn">> => string()
%% }
-type dynamo_dbv2_action() :: #{binary() => any()}.

%% Example:
%% enable_topic_rule_request() :: #{}
-type enable_topic_rule_request() :: #{}.


%% Example:
%% audit_mitigation_actions_task_metadata() :: #{
%%   <<"startTime">> => non_neg_integer(),
%%   <<"taskId">> => string(),
%%   <<"taskStatus">> => list(any())
%% }
-type audit_mitigation_actions_task_metadata() :: #{binary() => any()}.


%% Example:
%% get_ota_update_response() :: #{
%%   <<"otaUpdateInfo">> => ota_update_info()
%% }
-type get_ota_update_response() :: #{binary() => any()}.


%% Example:
%% asset_property_value() :: #{
%%   <<"quality">> => string(),
%%   <<"timestamp">> => asset_property_timestamp(),
%%   <<"value">> => list()
%% }
-type asset_property_value() :: #{binary() => any()}.


%% Example:
%% list_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"namespaceId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any()),
%%   <<"targetSelection">> => list(any()),
%%   <<"thingGroupId">> => string(),
%%   <<"thingGroupName">> => string()
%% }
-type list_jobs_request() :: #{binary() => any()}.


%% Example:
%% list_policies_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer()
%% }
-type list_policies_request() :: #{binary() => any()}.


%% Example:
%% mqtt5_configuration() :: #{
%%   <<"propagatingAttributes">> => list(propagating_attribute()())
%% }
-type mqtt5_configuration() :: #{binary() => any()}.


%% Example:
%% list_billing_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"namePrefixFilter">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_billing_groups_request() :: #{binary() => any()}.


%% Example:
%% s3_action() :: #{
%%   <<"bucketName">> => string(),
%%   <<"cannedAcl">> => list(any()),
%%   <<"key">> => string(),
%%   <<"roleArn">> => string()
%% }
-type s3_action() :: #{binary() => any()}.


%% Example:
%% document_parameter() :: #{
%%   <<"description">> => string(),
%%   <<"example">> => string(),
%%   <<"key">> => string(),
%%   <<"optional">> => boolean(),
%%   <<"regex">> => string()
%% }
-type document_parameter() :: #{binary() => any()}.

%% Example:
%% get_policy_request() :: #{}
-type get_policy_request() :: #{}.


%% Example:
%% update_billing_group_response() :: #{
%%   <<"version">> => float()
%% }
-type update_billing_group_response() :: #{binary() => any()}.


%% Example:
%% reject_certificate_transfer_request() :: #{
%%   <<"rejectReason">> => string()
%% }
-type reject_certificate_transfer_request() :: #{binary() => any()}.


%% Example:
%% list_thing_principals_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_thing_principals_request() :: #{binary() => any()}.


%% Example:
%% billing_group_properties() :: #{
%%   <<"billingGroupDescription">> => string()
%% }
-type billing_group_properties() :: #{binary() => any()}.


%% Example:
%% describe_security_profile_response() :: #{
%%   <<"additionalMetricsToRetain">> => list(string()()),
%%   <<"additionalMetricsToRetainV2">> => list(metric_to_retain()()),
%%   <<"alertTargets">> => map(),
%%   <<"behaviors">> => list(behavior()()),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"metricsExportConfig">> => metrics_export_config(),
%%   <<"securityProfileArn">> => string(),
%%   <<"securityProfileDescription">> => string(),
%%   <<"securityProfileName">> => string(),
%%   <<"version">> => float()
%% }
-type describe_security_profile_response() :: #{binary() => any()}.


%% Example:
%% invalid_aggregation_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_aggregation_exception() :: #{binary() => any()}.


%% Example:
%% create_security_profile_response() :: #{
%%   <<"securityProfileArn">> => string(),
%%   <<"securityProfileName">> => string()
%% }
-type create_security_profile_response() :: #{binary() => any()}.


%% Example:
%% http_url_destination_properties() :: #{
%%   <<"confirmationUrl">> => string()
%% }
-type http_url_destination_properties() :: #{binary() => any()}.


%% Example:
%% register_certificate_without_ca_response() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateId">> => string()
%% }
-type register_certificate_without_ca_response() :: #{binary() => any()}.


%% Example:
%% create_certificate_provider_request() :: #{
%%   <<"accountDefaultForOperations">> := list(list(any())()),
%%   <<"clientToken">> => string(),
%%   <<"lambdaFunctionArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_certificate_provider_request() :: #{binary() => any()}.


%% Example:
%% delete_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type delete_conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_certificate_from_csr_request() :: #{
%%   <<"certificateSigningRequest">> := string(),
%%   <<"setAsActive">> => boolean()
%% }
-type create_certificate_from_csr_request() :: #{binary() => any()}.


%% Example:
%% list_audit_findings_response() :: #{
%%   <<"findings">> => list(audit_finding()()),
%%   <<"nextToken">> => string()
%% }
-type list_audit_findings_response() :: #{binary() => any()}.


%% Example:
%% list_attached_policies_response() :: #{
%%   <<"nextMarker">> => string(),
%%   <<"policies">> => list(policy()())
%% }
-type list_attached_policies_response() :: #{binary() => any()}.


%% Example:
%% thing_indexing_configuration() :: #{
%%   <<"customFields">> => list(field()()),
%%   <<"deviceDefenderIndexingMode">> => list(any()),
%%   <<"filter">> => indexing_filter(),
%%   <<"managedFields">> => list(field()()),
%%   <<"namedShadowIndexingMode">> => list(any()),
%%   <<"thingConnectivityIndexingMode">> => list(any()),
%%   <<"thingIndexingMode">> => list(any())
%% }
-type thing_indexing_configuration() :: #{binary() => any()}.


%% Example:
%% update_security_profile_request() :: #{
%%   <<"additionalMetricsToRetain">> => list(string()()),
%%   <<"additionalMetricsToRetainV2">> => list(metric_to_retain()()),
%%   <<"alertTargets">> => map(),
%%   <<"behaviors">> => list(behavior()()),
%%   <<"deleteAdditionalMetricsToRetain">> => boolean(),
%%   <<"deleteAlertTargets">> => boolean(),
%%   <<"deleteBehaviors">> => boolean(),
%%   <<"deleteMetricsExportConfig">> => boolean(),
%%   <<"expectedVersion">> => float(),
%%   <<"metricsExportConfig">> => metrics_export_config(),
%%   <<"securityProfileDescription">> => string()
%% }
-type update_security_profile_request() :: #{binary() => any()}.


%% Example:
%% create_fleet_metric_request() :: #{
%%   <<"aggregationField">> := string(),
%%   <<"aggregationType">> := aggregation_type(),
%%   <<"description">> => string(),
%%   <<"indexName">> => string(),
%%   <<"period">> := integer(),
%%   <<"queryString">> := string(),
%%   <<"queryVersion">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"unit">> => list(any())
%% }
-type create_fleet_metric_request() :: #{binary() => any()}.

%% Example:
%% stop_thing_registration_task_request() :: #{}
-type stop_thing_registration_task_request() :: #{}.

%% Example:
%% describe_custom_metric_request() :: #{}
-type describe_custom_metric_request() :: #{}.


%% Example:
%% list_role_aliases_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer()
%% }
-type list_role_aliases_request() :: #{binary() => any()}.


%% Example:
%% update_custom_metric_request() :: #{
%%   <<"displayName">> := string()
%% }
-type update_custom_metric_request() :: #{binary() => any()}.


%% Example:
%% get_job_document_request() :: #{
%%   <<"beforeSubstitution">> => boolean()
%% }
-type get_job_document_request() :: #{binary() => any()}.


%% Example:
%% dynamo_db_action() :: #{
%%   <<"hashKeyField">> => string(),
%%   <<"hashKeyType">> => list(any()),
%%   <<"hashKeyValue">> => string(),
%%   <<"operation">> => string(),
%%   <<"payloadField">> => string(),
%%   <<"rangeKeyField">> => string(),
%%   <<"rangeKeyType">> => list(any()),
%%   <<"rangeKeyValue">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"tableName">> => string()
%% }
-type dynamo_db_action() :: #{binary() => any()}.


%% Example:
%% certificate_description() :: #{
%%   <<"caCertificateId">> => string(),
%%   <<"certificateArn">> => string(),
%%   <<"certificateId">> => string(),
%%   <<"certificateMode">> => list(any()),
%%   <<"certificatePem">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"customerVersion">> => integer(),
%%   <<"generationId">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"ownedBy">> => string(),
%%   <<"previousOwnedBy">> => string(),
%%   <<"status">> => list(any()),
%%   <<"transferData">> => transfer_data(),
%%   <<"validity">> => certificate_validity()
%% }
-type certificate_description() :: #{binary() => any()}.


%% Example:
%% put_asset_property_value_entry() :: #{
%%   <<"assetId">> => string(),
%%   <<"entryId">> => string(),
%%   <<"propertyAlias">> => string(),
%%   <<"propertyId">> => string(),
%%   <<"propertyValues">> => list(asset_property_value()())
%% }
-type put_asset_property_value_entry() :: #{binary() => any()}.


%% Example:
%% get_effective_policies_response() :: #{
%%   <<"effectivePolicies">> => list(effective_policy()())
%% }
-type get_effective_policies_response() :: #{binary() => any()}.


%% Example:
%% list_mitigation_actions_request() :: #{
%%   <<"actionType">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_mitigation_actions_request() :: #{binary() => any()}.


%% Example:
%% list_policy_principals_response() :: #{
%%   <<"nextMarker">> => string(),
%%   <<"principals">> => list(string()())
%% }
-type list_policy_principals_response() :: #{binary() => any()}.


%% Example:
%% certificate_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type certificate_state_exception() :: #{binary() => any()}.


%% Example:
%% list_domain_configurations_response() :: #{
%%   <<"domainConfigurations">> => list(domain_configuration_summary()()),
%%   <<"nextMarker">> => string()
%% }
-type list_domain_configurations_response() :: #{binary() => any()}.


%% Example:
%% create_policy_request() :: #{
%%   <<"policyDocument">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_policy_request() :: #{binary() => any()}.


%% Example:
%% list_packages_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_packages_request() :: #{binary() => any()}.

%% Example:
%% get_ota_update_request() :: #{}
-type get_ota_update_request() :: #{}.


%% Example:
%% replace_topic_rule_request() :: #{
%%   <<"topicRulePayload">> := topic_rule_payload()
%% }
-type replace_topic_rule_request() :: #{binary() => any()}.


%% Example:
%% start_thing_registration_task_request() :: #{
%%   <<"inputFileBucket">> := string(),
%%   <<"inputFileKey">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"templateBody">> := string()
%% }
-type start_thing_registration_task_request() :: #{binary() => any()}.


%% Example:
%% detach_security_profile_request() :: #{
%%   <<"securityProfileTargetArn">> := string()
%% }
-type detach_security_profile_request() :: #{binary() => any()}.


%% Example:
%% delete_command_execution_request() :: #{
%%   <<"targetArn">> := string()
%% }
-type delete_command_execution_request() :: #{binary() => any()}.

%% Example:
%% describe_authorizer_request() :: #{}
-type describe_authorizer_request() :: #{}.


%% Example:
%% list_fleet_metrics_response() :: #{
%%   <<"fleetMetrics">> => list(fleet_metric_name_and_arn()()),
%%   <<"nextToken">> => string()
%% }
-type list_fleet_metrics_response() :: #{binary() => any()}.

%% Example:
%% update_thing_type_response() :: #{}
-type update_thing_type_response() :: #{}.


%% Example:
%% metric_to_retain() :: #{
%%   <<"exportMetric">> => boolean(),
%%   <<"metric">> => string(),
%%   <<"metricDimension">> => metric_dimension()
%% }
-type metric_to_retain() :: #{binary() => any()}.


%% Example:
%% create_topic_rule_destination_response() :: #{
%%   <<"topicRuleDestination">> => topic_rule_destination()
%% }
-type create_topic_rule_destination_response() :: #{binary() => any()}.


%% Example:
%% list_ca_certificates_response() :: #{
%%   <<"certificates">> => list(ca_certificate()()),
%%   <<"nextMarker">> => string()
%% }
-type list_ca_certificates_response() :: #{binary() => any()}.

%% Example:
%% update_package_version_response() :: #{}
-type update_package_version_response() :: #{}.

%% Example:
%% update_event_configurations_response() :: #{}
-type update_event_configurations_response() :: #{}.


%% Example:
%% versions_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type versions_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_mitigation_action_request() :: #{
%%   <<"actionParams">> => mitigation_action_params(),
%%   <<"roleArn">> => string()
%% }
-type update_mitigation_action_request() :: #{binary() => any()}.


%% Example:
%% list_violation_events_request() :: #{
%%   <<"behaviorCriteriaType">> => list(any()),
%%   <<"endTime">> := non_neg_integer(),
%%   <<"listSuppressedAlerts">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"securityProfileName">> => string(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"thingName">> => string(),
%%   <<"verificationState">> => list(any())
%% }
-type list_violation_events_request() :: #{binary() => any()}.


%% Example:
%% create_policy_version_response() :: #{
%%   <<"isDefaultVersion">> => boolean(),
%%   <<"policyArn">> => string(),
%%   <<"policyDocument">> => string(),
%%   <<"policyVersionId">> => string()
%% }
-type create_policy_version_response() :: #{binary() => any()}.


%% Example:
%% add_things_to_thing_group_params() :: #{
%%   <<"overrideDynamicGroups">> => boolean(),
%%   <<"thingGroupNames">> => list(string()())
%% }
-type add_things_to_thing_group_params() :: #{binary() => any()}.


%% Example:
%% register_certificate_without_ca_request() :: #{
%%   <<"certificatePem">> := string(),
%%   <<"status">> => list(any())
%% }
-type register_certificate_without_ca_request() :: #{binary() => any()}.


%% Example:
%% list_things_in_thing_group_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"things">> => list(string()())
%% }
-type list_things_in_thing_group_response() :: #{binary() => any()}.


%% Example:
%% configuration() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type configuration() :: #{binary() => any()}.


%% Example:
%% start_audit_mitigation_actions_task_request() :: #{
%%   <<"auditCheckToActionsMapping">> := map(),
%%   <<"clientRequestToken">> := string(),
%%   <<"target">> := audit_mitigation_actions_task_target()
%% }
-type start_audit_mitigation_actions_task_request() :: #{binary() => any()}.

%% Example:
%% delete_stream_response() :: #{}
-type delete_stream_response() :: #{}.

%% Example:
%% update_indexing_configuration_response() :: #{}
-type update_indexing_configuration_response() :: #{}.


%% Example:
%% http_action_header() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type http_action_header() :: #{binary() => any()}.


%% Example:
%% exponential_rollout_rate() :: #{
%%   <<"baseRatePerMinute">> => integer(),
%%   <<"incrementFactor">> => float(),
%%   <<"rateIncreaseCriteria">> => rate_increase_criteria()
%% }
-type exponential_rollout_rate() :: #{binary() => any()}.


%% Example:
%% register_ca_certificate_response() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateId">> => string()
%% }
-type register_ca_certificate_response() :: #{binary() => any()}.


%% Example:
%% list_jobs_response() :: #{
%%   <<"jobs">> => list(job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_jobs_response() :: #{binary() => any()}.


%% Example:
%% list_security_profiles_for_target_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"securityProfileTargetMappings">> => list(security_profile_target_mapping()())
%% }
-type list_security_profiles_for_target_response() :: #{binary() => any()}.


%% Example:
%% create_job_request() :: #{
%%   <<"abortConfig">> => abort_config(),
%%   <<"description">> => string(),
%%   <<"destinationPackageVersions">> => list(string()()),
%%   <<"document">> => string(),
%%   <<"documentParameters">> => map(),
%%   <<"documentSource">> => string(),
%%   <<"jobExecutionsRetryConfig">> => job_executions_retry_config(),
%%   <<"jobExecutionsRolloutConfig">> => job_executions_rollout_config(),
%%   <<"jobTemplateArn">> => string(),
%%   <<"namespaceId">> => string(),
%%   <<"presignedUrlConfig">> => presigned_url_config(),
%%   <<"schedulingConfig">> => scheduling_config(),
%%   <<"tags">> => list(tag()()),
%%   <<"targetSelection">> => list(any()),
%%   <<"targets">> := list(string()()),
%%   <<"timeoutConfig">> => timeout_config()
%% }
-type create_job_request() :: #{binary() => any()}.


%% Example:
%% detach_policy_request() :: #{
%%   <<"target">> := string()
%% }
-type detach_policy_request() :: #{binary() => any()}.


%% Example:
%% describe_account_audit_configuration_response() :: #{
%%   <<"auditCheckConfigurations">> => map(),
%%   <<"auditNotificationTargetConfigurations">> => map(),
%%   <<"roleArn">> => string()
%% }
-type describe_account_audit_configuration_response() :: #{binary() => any()}.

%% Example:
%% describe_domain_configuration_request() :: #{}
-type describe_domain_configuration_request() :: #{}.


%% Example:
%% mqtt_headers() :: #{
%%   <<"contentType">> => string(),
%%   <<"correlationData">> => string(),
%%   <<"messageExpiry">> => string(),
%%   <<"payloadFormatIndicator">> => string(),
%%   <<"responseTopic">> => string(),
%%   <<"userProperties">> => list(user_property()())
%% }
-type mqtt_headers() :: #{binary() => any()}.


%% Example:
%% associate_sbom_with_package_version_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"sbom">> := sbom()
%% }
-type associate_sbom_with_package_version_request() :: #{binary() => any()}.


%% Example:
%% remove_thing_from_billing_group_request() :: #{
%%   <<"billingGroupArn">> => string(),
%%   <<"billingGroupName">> => string(),
%%   <<"thingArn">> => string(),
%%   <<"thingName">> => string()
%% }
-type remove_thing_from_billing_group_request() :: #{binary() => any()}.


%% Example:
%% list_provisioning_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"templates">> => list(provisioning_template_summary()())
%% }
-type list_provisioning_templates_response() :: #{binary() => any()}.

%% Example:
%% describe_account_audit_configuration_request() :: #{}
-type describe_account_audit_configuration_request() :: #{}.


%% Example:
%% update_ca_certificate_params() :: #{
%%   <<"action">> => list(any())
%% }
-type update_ca_certificate_params() :: #{binary() => any()}.


%% Example:
%% list_ca_certificates_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer(),
%%   <<"templateName">> => string()
%% }
-type list_ca_certificates_request() :: #{binary() => any()}.


%% Example:
%% create_topic_rule_request() :: #{
%%   <<"tags">> => string(),
%%   <<"topicRulePayload">> := topic_rule_payload()
%% }
-type create_topic_rule_request() :: #{binary() => any()}.


%% Example:
%% associate_targets_with_job_request() :: #{
%%   <<"comment">> => string(),
%%   <<"namespaceId">> => string(),
%%   <<"targets">> := list(string()())
%% }
-type associate_targets_with_job_request() :: #{binary() => any()}.

%% Example:
%% update_package_response() :: #{}
-type update_package_response() :: #{}.

%% Example:
%% remove_thing_from_billing_group_response() :: #{}
-type remove_thing_from_billing_group_response() :: #{}.


%% Example:
%% update_certificate_provider_response() :: #{
%%   <<"certificateProviderArn">> => string(),
%%   <<"certificateProviderName">> => string()
%% }
-type update_certificate_provider_response() :: #{binary() => any()}.

%% Example:
%% describe_scheduled_audit_request() :: #{}
-type describe_scheduled_audit_request() :: #{}.


%% Example:
%% list_policy_principals_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer(),
%%   <<"policyName">> := string()
%% }
-type list_policy_principals_request() :: #{binary() => any()}.


%% Example:
%% create_dynamic_thing_group_response() :: #{
%%   <<"indexName">> => string(),
%%   <<"queryString">> => string(),
%%   <<"queryVersion">> => string(),
%%   <<"thingGroupArn">> => string(),
%%   <<"thingGroupId">> => string(),
%%   <<"thingGroupName">> => string()
%% }
-type create_dynamic_thing_group_response() :: #{binary() => any()}.


%% Example:
%% error_info() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type error_info() :: #{binary() => any()}.


%% Example:
%% statistical_threshold() :: #{
%%   <<"statistic">> => string()
%% }
-type statistical_threshold() :: #{binary() => any()}.


%% Example:
%% update_scheduled_audit_request() :: #{
%%   <<"dayOfMonth">> => string(),
%%   <<"dayOfWeek">> => list(any()),
%%   <<"frequency">> => list(any()),
%%   <<"targetCheckNames">> => list(string()())
%% }
-type update_scheduled_audit_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_index_request() :: #{}
-type describe_index_request() :: #{}.


%% Example:
%% thing_connectivity() :: #{
%%   <<"connected">> => boolean(),
%%   <<"disconnectReason">> => string(),
%%   <<"timestamp">> => float()
%% }
-type thing_connectivity() :: #{binary() => any()}.


%% Example:
%% create_keys_and_certificate_request() :: #{
%%   <<"setAsActive">> => boolean()
%% }
-type create_keys_and_certificate_request() :: #{binary() => any()}.


%% Example:
%% list_certificates_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer()
%% }
-type list_certificates_request() :: #{binary() => any()}.

%% Example:
%% cancel_audit_task_response() :: #{}
-type cancel_audit_task_response() :: #{}.

%% Example:
%% delete_authorizer_request() :: #{}
-type delete_authorizer_request() :: #{}.


%% Example:
%% timestream_action() :: #{
%%   <<"databaseName">> => string(),
%%   <<"dimensions">> => list(timestream_dimension()()),
%%   <<"roleArn">> => string(),
%%   <<"tableName">> => string(),
%%   <<"timestamp">> => timestream_timestamp()
%% }
-type timestream_action() :: #{binary() => any()}.


%% Example:
%% code_signing_signature() :: #{
%%   <<"inlineDocument">> => binary()
%% }
-type code_signing_signature() :: #{binary() => any()}.


%% Example:
%% create_keys_and_certificate_response() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateId">> => string(),
%%   <<"certificatePem">> => string(),
%%   <<"keyPair">> => key_pair()
%% }
-type create_keys_and_certificate_response() :: #{binary() => any()}.


%% Example:
%% list_streams_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_streams_request() :: #{binary() => any()}.


%% Example:
%% create_authorizer_request() :: #{
%%   <<"authorizerFunctionArn">> := string(),
%%   <<"enableCachingForHttp">> => boolean(),
%%   <<"signingDisabled">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => list(tag()()),
%%   <<"tokenKeyName">> => string(),
%%   <<"tokenSigningPublicKeys">> => map()
%% }
-type create_authorizer_request() :: #{binary() => any()}.


%% Example:
%% create_provisioning_template_version_response() :: #{
%%   <<"isDefaultVersion">> => boolean(),
%%   <<"templateArn">> => string(),
%%   <<"templateName">> => string(),
%%   <<"versionId">> => integer()
%% }
-type create_provisioning_template_version_response() :: #{binary() => any()}.


%% Example:
%% list_audit_tasks_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"taskStatus">> => list(any()),
%%   <<"taskType">> => list(any())
%% }
-type list_audit_tasks_request() :: #{binary() => any()}.


%% Example:
%% describe_index_response() :: #{
%%   <<"indexName">> => string(),
%%   <<"indexStatus">> => list(any()),
%%   <<"schema">> => string()
%% }
-type describe_index_response() :: #{binary() => any()}.


%% Example:
%% list_audit_mitigation_actions_tasks_request() :: #{
%%   <<"auditTaskId">> => string(),
%%   <<"endTime">> := non_neg_integer(),
%%   <<"findingId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"taskStatus">> => list(any())
%% }
-type list_audit_mitigation_actions_tasks_request() :: #{binary() => any()}.


%% Example:
%% create_ota_update_request() :: #{
%%   <<"additionalParameters">> => map(),
%%   <<"awsJobAbortConfig">> => aws_job_abort_config(),
%%   <<"awsJobExecutionsRolloutConfig">> => aws_job_executions_rollout_config(),
%%   <<"awsJobPresignedUrlConfig">> => aws_job_presigned_url_config(),
%%   <<"awsJobTimeoutConfig">> => aws_job_timeout_config(),
%%   <<"description">> => string(),
%%   <<"files">> := list(ota_update_file()()),
%%   <<"protocols">> => list(list(any())()),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag()()),
%%   <<"targetSelection">> => list(any()),
%%   <<"targets">> := list(string()())
%% }
-type create_ota_update_request() :: #{binary() => any()}.


%% Example:
%% list_fleet_metrics_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_fleet_metrics_request() :: #{binary() => any()}.


%% Example:
%% create_role_alias_request() :: #{
%%   <<"credentialDurationSeconds">> => integer(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_role_alias_request() :: #{binary() => any()}.


%% Example:
%% create_certificate_provider_response() :: #{
%%   <<"certificateProviderArn">> => string(),
%%   <<"certificateProviderName">> => string()
%% }
-type create_certificate_provider_response() :: #{binary() => any()}.


%% Example:
%% log_target() :: #{
%%   <<"targetName">> => string(),
%%   <<"targetType">> => list(any())
%% }
-type log_target() :: #{binary() => any()}.


%% Example:
%% mitigation_action() :: #{
%%   <<"actionParams">> => mitigation_action_params(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"roleArn">> => string()
%% }
-type mitigation_action() :: #{binary() => any()}.


%% Example:
%% create_ota_update_response() :: #{
%%   <<"awsIotJobArn">> => string(),
%%   <<"awsIotJobId">> => string(),
%%   <<"otaUpdateArn">> => string(),
%%   <<"otaUpdateId">> => string(),
%%   <<"otaUpdateStatus">> => list(any())
%% }
-type create_ota_update_response() :: #{binary() => any()}.


%% Example:
%% metrics_export_config() :: #{
%%   <<"mqttTopic">> => string(),
%%   <<"roleArn">> => string()
%% }
-type metrics_export_config() :: #{binary() => any()}.


%% Example:
%% mitigation_action_identifier() :: #{
%%   <<"actionArn">> => string(),
%%   <<"actionName">> => string(),
%%   <<"creationDate">> => non_neg_integer()
%% }
-type mitigation_action_identifier() :: #{binary() => any()}.


%% Example:
%% list_commands_request() :: #{
%%   <<"commandParameterName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"namespace">> => list(any()),
%%   <<"nextToken">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_commands_request() :: #{binary() => any()}.

%% Example:
%% delete_authorizer_response() :: #{}
-type delete_authorizer_response() :: #{}.


%% Example:
%% aws_job_presigned_url_config() :: #{
%%   <<"expiresInSec">> => float()
%% }
-type aws_job_presigned_url_config() :: #{binary() => any()}.


%% Example:
%% update_command_response() :: #{
%%   <<"commandId">> => string(),
%%   <<"deprecated">> => boolean(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer()
%% }
-type update_command_response() :: #{binary() => any()}.


%% Example:
%% percent_pair() :: #{
%%   <<"percent">> => float(),
%%   <<"value">> => float()
%% }
-type percent_pair() :: #{binary() => any()}.


%% Example:
%% list_things_in_billing_group_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_things_in_billing_group_request() :: #{binary() => any()}.


%% Example:
%% create_billing_group_request() :: #{
%%   <<"billingGroupProperties">> => billing_group_properties(),
%%   <<"tags">> => list(tag()())
%% }
-type create_billing_group_request() :: #{binary() => any()}.


%% Example:
%% security_profile_identifier() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string()
%% }
-type security_profile_identifier() :: #{binary() => any()}.


%% Example:
%% start_on_demand_audit_task_response() :: #{
%%   <<"taskId">> => string()
%% }
-type start_on_demand_audit_task_response() :: #{binary() => any()}.


%% Example:
%% list_indices_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_indices_request() :: #{binary() => any()}.


%% Example:
%% location_timestamp() :: #{
%%   <<"unit">> => string(),
%%   <<"value">> => string()
%% }
-type location_timestamp() :: #{binary() => any()}.


%% Example:
%% elasticsearch_action() :: #{
%%   <<"endpoint">> => string(),
%%   <<"id">> => string(),
%%   <<"index">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"type">> => string()
%% }
-type elasticsearch_action() :: #{binary() => any()}.


%% Example:
%% policy_version_identifier() :: #{
%%   <<"policyName">> => string(),
%%   <<"policyVersionId">> => string()
%% }
-type policy_version_identifier() :: #{binary() => any()}.


%% Example:
%% list_job_executions_for_thing_request() :: #{
%%   <<"jobId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"namespaceId">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_job_executions_for_thing_request() :: #{binary() => any()}.


%% Example:
%% associate_targets_with_job_response() :: #{
%%   <<"description">> => string(),
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string()
%% }
-type associate_targets_with_job_response() :: #{binary() => any()}.


%% Example:
%% start_detect_mitigation_actions_task_request() :: #{
%%   <<"actions">> := list(string()()),
%%   <<"clientRequestToken">> := string(),
%%   <<"includeOnlyActiveViolations">> => boolean(),
%%   <<"includeSuppressedAlerts">> => boolean(),
%%   <<"target">> := detect_mitigation_actions_task_target(),
%%   <<"violationEventOccurrenceRange">> => violation_event_occurrence_range()
%% }
-type start_detect_mitigation_actions_task_request() :: #{binary() => any()}.

%% Example:
%% delete_scheduled_audit_request() :: #{}
-type delete_scheduled_audit_request() :: #{}.


%% Example:
%% policy_version() :: #{
%%   <<"createDate">> => non_neg_integer(),
%%   <<"isDefaultVersion">> => boolean(),
%%   <<"versionId">> => string()
%% }
-type policy_version() :: #{binary() => any()}.


%% Example:
%% create_provisioning_claim_response() :: #{
%%   <<"certificateId">> => string(),
%%   <<"certificatePem">> => string(),
%%   <<"expiration">> => non_neg_integer(),
%%   <<"keyPair">> => key_pair()
%% }
-type create_provisioning_claim_response() :: #{binary() => any()}.


%% Example:
%% start_thing_registration_task_response() :: #{
%%   <<"taskId">> => string()
%% }
-type start_thing_registration_task_response() :: #{binary() => any()}.


%% Example:
%% get_percentiles_request() :: #{
%%   <<"aggregationField">> => string(),
%%   <<"indexName">> => string(),
%%   <<"percents">> => list(float()()),
%%   <<"queryString">> := string(),
%%   <<"queryVersion">> => string()
%% }
-type get_percentiles_request() :: #{binary() => any()}.


%% Example:
%% create_authorizer_response() :: #{
%%   <<"authorizerArn">> => string(),
%%   <<"authorizerName">> => string()
%% }
-type create_authorizer_response() :: #{binary() => any()}.


%% Example:
%% create_thing_request() :: #{
%%   <<"attributePayload">> => attribute_payload(),
%%   <<"billingGroupName">> => string(),
%%   <<"thingTypeName">> => string()
%% }
-type create_thing_request() :: #{binary() => any()}.


%% Example:
%% update_package_version_request() :: #{
%%   <<"action">> => list(any()),
%%   <<"artifact">> => package_version_artifact(),
%%   <<"attributes">> => map(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"recipe">> => string()
%% }
-type update_package_version_request() :: #{binary() => any()}.


%% Example:
%% provisioning_template_version_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"isDefaultVersion">> => boolean(),
%%   <<"versionId">> => integer()
%% }
-type provisioning_template_version_summary() :: #{binary() => any()}.

%% Example:
%% describe_ca_certificate_request() :: #{}
-type describe_ca_certificate_request() :: #{}.

%% Example:
%% delete_job_template_request() :: #{}
-type delete_job_template_request() :: #{}.


%% Example:
%% job_process_details() :: #{
%%   <<"numberOfCanceledThings">> => integer(),
%%   <<"numberOfFailedThings">> => integer(),
%%   <<"numberOfInProgressThings">> => integer(),
%%   <<"numberOfQueuedThings">> => integer(),
%%   <<"numberOfRejectedThings">> => integer(),
%%   <<"numberOfRemovedThings">> => integer(),
%%   <<"numberOfSucceededThings">> => integer(),
%%   <<"numberOfTimedOutThings">> => integer(),
%%   <<"processingTargets">> => list(string()())
%% }
-type job_process_details() :: #{binary() => any()}.

%% Example:
%% cancel_detect_mitigation_actions_task_request() :: #{}
-type cancel_detect_mitigation_actions_task_request() :: #{}.


%% Example:
%% get_command_execution_request() :: #{
%%   <<"includeResult">> => boolean(),
%%   <<"targetArn">> := string()
%% }
-type get_command_execution_request() :: #{binary() => any()}.

%% Example:
%% describe_audit_mitigation_actions_task_request() :: #{}
-type describe_audit_mitigation_actions_task_request() :: #{}.


%% Example:
%% sns_action() :: #{
%%   <<"messageFormat">> => list(any()),
%%   <<"roleArn">> => string(),
%%   <<"targetArn">> => string()
%% }
-type sns_action() :: #{binary() => any()}.


%% Example:
%% indexing_filter() :: #{
%%   <<"geoLocations">> => list(geo_location_target()()),
%%   <<"namedShadowNames">> => list(string()())
%% }
-type indexing_filter() :: #{binary() => any()}.


%% Example:
%% set_logging_options_request() :: #{
%%   <<"loggingOptionsPayload">> := logging_options_payload()
%% }
-type set_logging_options_request() :: #{binary() => any()}.

%% Example:
%% deprecate_thing_type_response() :: #{}
-type deprecate_thing_type_response() :: #{}.


%% Example:
%% describe_audit_finding_response() :: #{
%%   <<"finding">> => audit_finding()
%% }
-type describe_audit_finding_response() :: #{binary() => any()}.


%% Example:
%% list_attached_policies_request() :: #{
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer(),
%%   <<"recursive">> => boolean()
%% }
-type list_attached_policies_request() :: #{binary() => any()}.


%% Example:
%% sig_v4_authorization() :: #{
%%   <<"roleArn">> => string(),
%%   <<"serviceName">> => string(),
%%   <<"signingRegion">> => string()
%% }
-type sig_v4_authorization() :: #{binary() => any()}.


%% Example:
%% create_stream_request() :: #{
%%   <<"description">> => string(),
%%   <<"files">> := list(stream_file()()),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_stream_request() :: #{binary() => any()}.


%% Example:
%% update_provisioning_template_request() :: #{
%%   <<"defaultVersionId">> => integer(),
%%   <<"description">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"preProvisioningHook">> => provisioning_hook(),
%%   <<"provisioningRoleArn">> => string(),
%%   <<"removePreProvisioningHook">> => boolean()
%% }
-type update_provisioning_template_request() :: #{binary() => any()}.


%% Example:
%% list_v2_logging_levels_response() :: #{
%%   <<"logTargetConfigurations">> => list(log_target_configuration()()),
%%   <<"nextToken">> => string()
%% }
-type list_v2_logging_levels_response() :: #{binary() => any()}.


%% Example:
%% delete_audit_suppression_request() :: #{
%%   <<"checkName">> := string(),
%%   <<"resourceIdentifier">> := resource_identifier()
%% }
-type delete_audit_suppression_request() :: #{binary() => any()}.

%% Example:
%% describe_event_configurations_request() :: #{}
-type describe_event_configurations_request() :: #{}.


%% Example:
%% job_summary() :: #{
%%   <<"completedAt">> => non_neg_integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"isConcurrent">> => boolean(),
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"targetSelection">> => list(any()),
%%   <<"thingGroupId">> => string()
%% }
-type job_summary() :: #{binary() => any()}.


%% Example:
%% create_scheduled_audit_request() :: #{
%%   <<"dayOfMonth">> => string(),
%%   <<"dayOfWeek">> => list(any()),
%%   <<"frequency">> := list(any()),
%%   <<"tags">> => list(tag()()),
%%   <<"targetCheckNames">> := list(string()())
%% }
-type create_scheduled_audit_request() :: #{binary() => any()}.


%% Example:
%% sbom() :: #{
%%   <<"s3Location">> => s3_location()
%% }
-type sbom() :: #{binary() => any()}.

%% Example:
%% describe_audit_finding_request() :: #{}
-type describe_audit_finding_request() :: #{}.


%% Example:
%% get_statistics_request() :: #{
%%   <<"aggregationField">> => string(),
%%   <<"indexName">> => string(),
%%   <<"queryString">> := string(),
%%   <<"queryVersion">> => string()
%% }
-type get_statistics_request() :: #{binary() => any()}.


%% Example:
%% thing_attribute() :: #{
%%   <<"attributes">> => map(),
%%   <<"thingArn">> => string(),
%%   <<"thingName">> => string(),
%%   <<"thingTypeName">> => string(),
%%   <<"version">> => float()
%% }
-type thing_attribute() :: #{binary() => any()}.


%% Example:
%% list_active_violations_response() :: #{
%%   <<"activeViolations">> => list(active_violation()()),
%%   <<"nextToken">> => string()
%% }
-type list_active_violations_response() :: #{binary() => any()}.


%% Example:
%% describe_custom_metric_response() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"metricArn">> => string(),
%%   <<"metricName">> => string(),
%%   <<"metricType">> => list(any())
%% }
-type describe_custom_metric_response() :: #{binary() => any()}.


%% Example:
%% create_command_request() :: #{
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"mandatoryParameters">> => list(command_parameter()()),
%%   <<"namespace">> => list(any()),
%%   <<"payload">> => command_payload(),
%%   <<"roleArn">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_command_request() :: #{binary() => any()}.

%% Example:
%% delete_command_request() :: #{}
-type delete_command_request() :: #{}.

%% Example:
%% cancel_detect_mitigation_actions_task_response() :: #{}
-type cancel_detect_mitigation_actions_task_response() :: #{}.


%% Example:
%% describe_managed_job_template_request() :: #{
%%   <<"templateVersion">> => string()
%% }
-type describe_managed_job_template_request() :: #{binary() => any()}.


%% Example:
%% list_targets_for_policy_response() :: #{
%%   <<"nextMarker">> => string(),
%%   <<"targets">> => list(string()())
%% }
-type list_targets_for_policy_response() :: #{binary() => any()}.


%% Example:
%% create_audit_suppression_request() :: #{
%%   <<"checkName">> := string(),
%%   <<"clientRequestToken">> := string(),
%%   <<"description">> => string(),
%%   <<"expirationDate">> => non_neg_integer(),
%%   <<"resourceIdentifier">> := resource_identifier(),
%%   <<"suppressIndefinitely">> => boolean()
%% }
-type create_audit_suppression_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_configuration_request() :: #{}
-type delete_domain_configuration_request() :: #{}.


%% Example:
%% aws_job_rate_increase_criteria() :: #{
%%   <<"numberOfNotifiedThings">> => integer(),
%%   <<"numberOfSucceededThings">> => integer()
%% }
-type aws_job_rate_increase_criteria() :: #{binary() => any()}.


%% Example:
%% cloudwatch_metric_action() :: #{
%%   <<"metricName">> => string(),
%%   <<"metricNamespace">> => string(),
%%   <<"metricTimestamp">> => string(),
%%   <<"metricUnit">> => string(),
%%   <<"metricValue">> => string(),
%%   <<"roleArn">> => string()
%% }
-type cloudwatch_metric_action() :: #{binary() => any()}.


%% Example:
%% list_certificate_providers_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"nextToken">> => string()
%% }
-type list_certificate_providers_request() :: #{binary() => any()}.


%% Example:
%% describe_job_execution_response() :: #{
%%   <<"execution">> => job_execution()
%% }
-type describe_job_execution_response() :: #{binary() => any()}.

%% Example:
%% delete_policy_version_request() :: #{}
-type delete_policy_version_request() :: #{}.


%% Example:
%% http_context() :: #{
%%   <<"headers">> => map(),
%%   <<"queryString">> => string()
%% }
-type http_context() :: #{binary() => any()}.

%% Example:
%% detach_security_profile_response() :: #{}
-type detach_security_profile_response() :: #{}.


%% Example:
%% iot_analytics_action() :: #{
%%   <<"batchMode">> => boolean(),
%%   <<"channelArn">> => string(),
%%   <<"channelName">> => string(),
%%   <<"roleArn">> => string()
%% }
-type iot_analytics_action() :: #{binary() => any()}.


%% Example:
%% metric_datum() :: #{
%%   <<"timestamp">> => non_neg_integer(),
%%   <<"value">> => metric_value()
%% }
-type metric_datum() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_package_response() :: #{}
-type delete_package_response() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% logging_options_payload() :: #{
%%   <<"logLevel">> => list(any()),
%%   <<"roleArn">> => string()
%% }
-type logging_options_payload() :: #{binary() => any()}.


%% Example:
%% create_security_profile_request() :: #{
%%   <<"additionalMetricsToRetain">> => list(string()()),
%%   <<"additionalMetricsToRetainV2">> => list(metric_to_retain()()),
%%   <<"alertTargets">> => map(),
%%   <<"behaviors">> => list(behavior()()),
%%   <<"metricsExportConfig">> => metrics_export_config(),
%%   <<"securityProfileDescription">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_security_profile_request() :: #{binary() => any()}.


%% Example:
%% create_mitigation_action_response() :: #{
%%   <<"actionArn">> => string(),
%%   <<"actionId">> => string()
%% }
-type create_mitigation_action_response() :: #{binary() => any()}.


%% Example:
%% list_ota_updates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"otaUpdateStatus">> => list(any())
%% }
-type list_ota_updates_request() :: #{binary() => any()}.


%% Example:
%% update_indexing_configuration_request() :: #{
%%   <<"thingGroupIndexingConfiguration">> => thing_group_indexing_configuration(),
%%   <<"thingIndexingConfiguration">> => thing_indexing_configuration()
%% }
-type update_indexing_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_things_in_billing_group_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"things">> => list(string()())
%% }
-type list_things_in_billing_group_response() :: #{binary() => any()}.

%% Example:
%% get_command_request() :: #{}
-type get_command_request() :: #{}.


%% Example:
%% list_managed_job_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"templateName">> => string()
%% }
-type list_managed_job_templates_request() :: #{binary() => any()}.


%% Example:
%% list_provisioning_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_provisioning_templates_request() :: #{binary() => any()}.


%% Example:
%% lambda_action() :: #{
%%   <<"functionArn">> => string()
%% }
-type lambda_action() :: #{binary() => any()}.


%% Example:
%% attach_security_profile_request() :: #{
%%   <<"securityProfileTargetArn">> := string()
%% }
-type attach_security_profile_request() :: #{binary() => any()}.


%% Example:
%% update_command_request() :: #{
%%   <<"deprecated">> => boolean(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string()
%% }
-type update_command_request() :: #{binary() => any()}.


%% Example:
%% command_parameter() :: #{
%%   <<"defaultValue">> => command_parameter_value(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"value">> => command_parameter_value()
%% }
-type command_parameter() :: #{binary() => any()}.


%% Example:
%% update_role_alias_request() :: #{
%%   <<"credentialDurationSeconds">> => integer(),
%%   <<"roleArn">> => string()
%% }
-type update_role_alias_request() :: #{binary() => any()}.


%% Example:
%% kinesis_action() :: #{
%%   <<"partitionKey">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"streamName">> => string()
%% }
-type kinesis_action() :: #{binary() => any()}.


%% Example:
%% timestream_timestamp() :: #{
%%   <<"unit">> => string(),
%%   <<"value">> => string()
%% }
-type timestream_timestamp() :: #{binary() => any()}.


%% Example:
%% resource_identifier() :: #{
%%   <<"account">> => string(),
%%   <<"caCertificateId">> => string(),
%%   <<"clientId">> => string(),
%%   <<"cognitoIdentityPoolId">> => string(),
%%   <<"deviceCertificateArn">> => string(),
%%   <<"deviceCertificateId">> => string(),
%%   <<"iamRoleArn">> => string(),
%%   <<"issuerCertificateIdentifier">> => issuer_certificate_identifier(),
%%   <<"policyVersionIdentifier">> => policy_version_identifier(),
%%   <<"roleAliasArn">> => string()
%% }
-type resource_identifier() :: #{binary() => any()}.


%% Example:
%% signing_profile_parameter() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificatePathOnDevice">> => string(),
%%   <<"platform">> => string()
%% }
-type signing_profile_parameter() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% list_custom_metrics_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_custom_metrics_request() :: #{binary() => any()}.


%% Example:
%% create_package_version_request() :: #{
%%   <<"artifact">> => package_version_artifact(),
%%   <<"attributes">> => map(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"recipe">> => string(),
%%   <<"tags">> => map()
%% }
-type create_package_version_request() :: #{binary() => any()}.


%% Example:
%% create_policy_version_request() :: #{
%%   <<"policyDocument">> := string(),
%%   <<"setAsDefault">> => boolean()
%% }
-type create_policy_version_request() :: #{binary() => any()}.


%% Example:
%% invalid_response_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_response_exception() :: #{binary() => any()}.


%% Example:
%% update_job_request() :: #{
%%   <<"abortConfig">> => abort_config(),
%%   <<"description">> => string(),
%%   <<"jobExecutionsRetryConfig">> => job_executions_retry_config(),
%%   <<"jobExecutionsRolloutConfig">> => job_executions_rollout_config(),
%%   <<"namespaceId">> => string(),
%%   <<"presignedUrlConfig">> => presigned_url_config(),
%%   <<"timeoutConfig">> => timeout_config()
%% }
-type update_job_request() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% describe_thing_group_request() :: #{}
-type describe_thing_group_request() :: #{}.


%% Example:
%% describe_audit_suppression_response() :: #{
%%   <<"checkName">> => string(),
%%   <<"description">> => string(),
%%   <<"expirationDate">> => non_neg_integer(),
%%   <<"resourceIdentifier">> => resource_identifier(),
%%   <<"suppressIndefinitely">> => boolean()
%% }
-type describe_audit_suppression_response() :: #{binary() => any()}.


%% Example:
%% update_audit_suppression_request() :: #{
%%   <<"checkName">> := string(),
%%   <<"description">> => string(),
%%   <<"expirationDate">> => non_neg_integer(),
%%   <<"resourceIdentifier">> := resource_identifier(),
%%   <<"suppressIndefinitely">> => boolean()
%% }
-type update_audit_suppression_request() :: #{binary() => any()}.


%% Example:
%% update_thing_group_request() :: #{
%%   <<"expectedVersion">> => float(),
%%   <<"thingGroupProperties">> := thing_group_properties()
%% }
-type update_thing_group_request() :: #{binary() => any()}.


%% Example:
%% certificate_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type certificate_conflict_exception() :: #{binary() => any()}.

%% Example:
%% describe_mitigation_action_request() :: #{}
-type describe_mitigation_action_request() :: #{}.


%% Example:
%% create_thing_group_request() :: #{
%%   <<"parentGroupName">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"thingGroupProperties">> => thing_group_properties()
%% }
-type create_thing_group_request() :: #{binary() => any()}.


%% Example:
%% list_scheduled_audits_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"scheduledAudits">> => list(scheduled_audit_metadata()())
%% }
-type list_scheduled_audits_response() :: #{binary() => any()}.


%% Example:
%% enable_io_t_logging_params() :: #{
%%   <<"logLevel">> => list(any()),
%%   <<"roleArnForLogging">> => string()
%% }
-type enable_io_t_logging_params() :: #{binary() => any()}.

%% Example:
%% describe_job_template_request() :: #{}
-type describe_job_template_request() :: #{}.


%% Example:
%% list_thing_types_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"thingTypes">> => list(thing_type_definition()())
%% }
-type list_thing_types_response() :: #{binary() => any()}.


%% Example:
%% list_security_profiles_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"securityProfileIdentifiers">> => list(security_profile_identifier()())
%% }
-type list_security_profiles_response() :: #{binary() => any()}.


%% Example:
%% list_streams_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"streams">> => list(stream_summary()())
%% }
-type list_streams_response() :: #{binary() => any()}.


%% Example:
%% register_ca_certificate_request() :: #{
%%   <<"allowAutoRegistration">> => boolean(),
%%   <<"caCertificate">> := string(),
%%   <<"certificateMode">> => list(any()),
%%   <<"registrationConfig">> => registration_config(),
%%   <<"setAsActive">> => boolean(),
%%   <<"tags">> => list(tag()()),
%%   <<"verificationCertificate">> => string()
%% }
-type register_ca_certificate_request() :: #{binary() => any()}.

%% Example:
%% delete_certificate_provider_request() :: #{}
-type delete_certificate_provider_request() :: #{}.

%% Example:
%% describe_dimension_request() :: #{}
-type describe_dimension_request() :: #{}.


%% Example:
%% cloudwatch_alarm_action() :: #{
%%   <<"alarmName">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"stateReason">> => string(),
%%   <<"stateValue">> => string()
%% }
-type cloudwatch_alarm_action() :: #{binary() => any()}.


%% Example:
%% time_filter() :: #{
%%   <<"after">> => string(),
%%   <<"before">> => string()
%% }
-type time_filter() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_billing_group_response() :: #{}
-type delete_billing_group_response() :: #{}.


%% Example:
%% effective_policy() :: #{
%%   <<"policyArn">> => string(),
%%   <<"policyDocument">> => string(),
%%   <<"policyName">> => string()
%% }
-type effective_policy() :: #{binary() => any()}.


%% Example:
%% get_logging_options_response() :: #{
%%   <<"logLevel">> => list(any()),
%%   <<"roleArn">> => string()
%% }
-type get_logging_options_response() :: #{binary() => any()}.


%% Example:
%% describe_role_alias_response() :: #{
%%   <<"roleAliasDescription">> => role_alias_description()
%% }
-type describe_role_alias_response() :: #{binary() => any()}.


%% Example:
%% attach_policy_request() :: #{
%%   <<"target">> := string()
%% }
-type attach_policy_request() :: #{binary() => any()}.

%% Example:
%% get_registration_code_request() :: #{}
-type get_registration_code_request() :: #{}.


%% Example:
%% describe_thing_registration_task_response() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"failureCount">> => integer(),
%%   <<"inputFileBucket">> => string(),
%%   <<"inputFileKey">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"message">> => string(),
%%   <<"percentageProgress">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"successCount">> => integer(),
%%   <<"taskId">> => string(),
%%   <<"templateBody">> => string()
%% }
-type describe_thing_registration_task_response() :: #{binary() => any()}.


%% Example:
%% list_principal_things_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"things">> => list(string()())
%% }
-type list_principal_things_response() :: #{binary() => any()}.

%% Example:
%% delete_topic_rule_request() :: #{}
-type delete_topic_rule_request() :: #{}.


%% Example:
%% create_certificate_from_csr_response() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateId">> => string(),
%%   <<"certificatePem">> => string()
%% }
-type create_certificate_from_csr_response() :: #{binary() => any()}.


%% Example:
%% register_thing_request() :: #{
%%   <<"parameters">> => map(),
%%   <<"templateBody">> := string()
%% }
-type register_thing_request() :: #{binary() => any()}.

%% Example:
%% describe_certificate_request() :: #{}
-type describe_certificate_request() :: #{}.


%% Example:
%% list_principal_policies_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer(),
%%   <<"principal">> := string()
%% }
-type list_principal_policies_request() :: #{binary() => any()}.


%% Example:
%% thing_principal_object() :: #{
%%   <<"principal">> => string(),
%%   <<"thingPrincipalType">> => list(any())
%% }
-type thing_principal_object() :: #{binary() => any()}.


%% Example:
%% delete_account_audit_configuration_request() :: #{
%%   <<"deleteScheduledAudits">> => boolean()
%% }
-type delete_account_audit_configuration_request() :: #{binary() => any()}.


%% Example:
%% abort_config() :: #{
%%   <<"criteriaList">> => list(abort_criteria()())
%% }
-type abort_config() :: #{binary() => any()}.


%% Example:
%% delete_ota_update_request() :: #{
%%   <<"deleteStream">> => boolean(),
%%   <<"forceDeleteAWSJob">> => boolean()
%% }
-type delete_ota_update_request() :: #{binary() => any()}.


%% Example:
%% list_metric_values_response() :: #{
%%   <<"metricDatumList">> => list(metric_datum()()),
%%   <<"nextToken">> => string()
%% }
-type list_metric_values_response() :: #{binary() => any()}.


%% Example:
%% client_certificate_config() :: #{
%%   <<"clientCertificateCallbackArn">> => string()
%% }
-type client_certificate_config() :: #{binary() => any()}.


%% Example:
%% update_certificate_provider_request() :: #{
%%   <<"accountDefaultForOperations">> => list(list(any())()),
%%   <<"lambdaFunctionArn">> => string()
%% }
-type update_certificate_provider_request() :: #{binary() => any()}.


%% Example:
%% update_event_configurations_request() :: #{
%%   <<"eventConfigurations">> => map()
%% }
-type update_event_configurations_request() :: #{binary() => any()}.


%% Example:
%% allowed() :: #{
%%   <<"policies">> => list(policy()())
%% }
-type allowed() :: #{binary() => any()}.


%% Example:
%% update_dimension_request() :: #{
%%   <<"stringValues">> := list(string()())
%% }
-type update_dimension_request() :: #{binary() => any()}.


%% Example:
%% deprecate_thing_type_request() :: #{
%%   <<"undoDeprecate">> => boolean()
%% }
-type deprecate_thing_type_request() :: #{binary() => any()}.

%% Example:
%% describe_detect_mitigation_actions_task_request() :: #{}
-type describe_detect_mitigation_actions_task_request() :: #{}.


%% Example:
%% security_profile_target() :: #{
%%   <<"arn">> => string()
%% }
-type security_profile_target() :: #{binary() => any()}.

%% Example:
%% delete_thing_type_response() :: #{}
-type delete_thing_type_response() :: #{}.


%% Example:
%% issuer_certificate_identifier() :: #{
%%   <<"issuerCertificateSerialNumber">> => string(),
%%   <<"issuerCertificateSubject">> => string(),
%%   <<"issuerId">> => string()
%% }
-type issuer_certificate_identifier() :: #{binary() => any()}.


%% Example:
%% topic_rule_destination_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"httpUrlSummary">> => http_url_destination_summary(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"vpcDestinationSummary">> => vpc_destination_summary()
%% }
-type topic_rule_destination_summary() :: #{binary() => any()}.


%% Example:
%% alert_target() :: #{
%%   <<"alertTargetArn">> => string(),
%%   <<"roleArn">> => string()
%% }
-type alert_target() :: #{binary() => any()}.


%% Example:
%% task_statistics_for_audit_check() :: #{
%%   <<"canceledFindingsCount">> => float(),
%%   <<"failedFindingsCount">> => float(),
%%   <<"skippedFindingsCount">> => float(),
%%   <<"succeededFindingsCount">> => float(),
%%   <<"totalFindingsCount">> => float()
%% }
-type task_statistics_for_audit_check() :: #{binary() => any()}.


%% Example:
%% list_domain_configurations_request() :: #{
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer(),
%%   <<"serviceType">> => list(any())
%% }
-type list_domain_configurations_request() :: #{binary() => any()}.


%% Example:
%% list_job_executions_for_job_response() :: #{
%%   <<"executionSummaries">> => list(job_execution_summary_for_job()()),
%%   <<"nextToken">> => string()
%% }
-type list_job_executions_for_job_response() :: #{binary() => any()}.


%% Example:
%% field() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type field() :: #{binary() => any()}.


%% Example:
%% step_functions_action() :: #{
%%   <<"executionNamePrefix">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"stateMachineName">> => string()
%% }
-type step_functions_action() :: #{binary() => any()}.


%% Example:
%% list_thing_groups_for_thing_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_thing_groups_for_thing_request() :: #{binary() => any()}.


%% Example:
%% list_certificate_providers_response() :: #{
%%   <<"certificateProviders">> => list(certificate_provider_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_certificate_providers_response() :: #{binary() => any()}.


%% Example:
%% principal_thing_object() :: #{
%%   <<"thingName">> => string(),
%%   <<"thingPrincipalType">> => list(any())
%% }
-type principal_thing_object() :: #{binary() => any()}.


%% Example:
%% attribute_payload() :: #{
%%   <<"attributes">> => map(),
%%   <<"merge">> => boolean()
%% }
-type attribute_payload() :: #{binary() => any()}.


%% Example:
%% update_dynamic_thing_group_request() :: #{
%%   <<"expectedVersion">> => float(),
%%   <<"indexName">> => string(),
%%   <<"queryString">> => string(),
%%   <<"queryVersion">> => string(),
%%   <<"thingGroupProperties">> := thing_group_properties()
%% }
-type update_dynamic_thing_group_request() :: #{binary() => any()}.


%% Example:
%% update_role_alias_response() :: #{
%%   <<"roleAlias">> => string(),
%%   <<"roleAliasArn">> => string()
%% }
-type update_role_alias_response() :: #{binary() => any()}.


%% Example:
%% invalid_state_transition_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_state_transition_exception() :: #{binary() => any()}.


%% Example:
%% presigned_url_config() :: #{
%%   <<"expiresInSec">> => float(),
%%   <<"roleArn">> => string()
%% }
-type presigned_url_config() :: #{binary() => any()}.


%% Example:
%% list_thing_principals_v2_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"thingPrincipalType">> => list(any())
%% }
-type list_thing_principals_v2_request() :: #{binary() => any()}.


%% Example:
%% aws_job_abort_config() :: #{
%%   <<"abortCriteriaList">> => list(aws_job_abort_criteria()())
%% }
-type aws_job_abort_config() :: #{binary() => any()}.


%% Example:
%% describe_job_request() :: #{
%%   <<"beforeSubstitution">> => boolean()
%% }
-type describe_job_request() :: #{binary() => any()}.


%% Example:
%% managed_job_template_summary() :: #{
%%   <<"description">> => string(),
%%   <<"environments">> => list(string()()),
%%   <<"templateArn">> => string(),
%%   <<"templateName">> => string(),
%%   <<"templateVersion">> => string()
%% }
-type managed_job_template_summary() :: #{binary() => any()}.


%% Example:
%% transfer_already_completed_exception() :: #{
%%   <<"message">> => string()
%% }
-type transfer_already_completed_exception() :: #{binary() => any()}.


%% Example:
%% create_domain_configuration_response() :: #{
%%   <<"domainConfigurationArn">> => string(),
%%   <<"domainConfigurationName">> => string()
%% }
-type create_domain_configuration_response() :: #{binary() => any()}.


%% Example:
%% describe_endpoint_request() :: #{
%%   <<"endpointType">> => string()
%% }
-type describe_endpoint_request() :: #{binary() => any()}.


%% Example:
%% list_thing_registration_tasks_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_thing_registration_tasks_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% get_v2_logging_options_request() :: #{}
-type get_v2_logging_options_request() :: #{}.


%% Example:
%% create_dynamic_thing_group_request() :: #{
%%   <<"indexName">> => string(),
%%   <<"queryString">> := string(),
%%   <<"queryVersion">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"thingGroupProperties">> => thing_group_properties()
%% }
-type create_dynamic_thing_group_request() :: #{binary() => any()}.


%% Example:
%% validation_error() :: #{
%%   <<"errorMessage">> => string()
%% }
-type validation_error() :: #{binary() => any()}.

%% Example:
%% attach_thing_principal_response() :: #{}
-type attach_thing_principal_response() :: #{}.


%% Example:
%% update_ca_certificate_request() :: #{
%%   <<"newAutoRegistrationStatus">> => list(any()),
%%   <<"newStatus">> => list(any()),
%%   <<"registrationConfig">> => registration_config(),
%%   <<"removeAutoRegistration">> => boolean()
%% }
-type update_ca_certificate_request() :: #{binary() => any()}.

%% Example:
%% delete_ota_update_response() :: #{}
-type delete_ota_update_response() :: #{}.

%% Example:
%% clear_default_authorizer_response() :: #{}
-type clear_default_authorizer_response() :: #{}.


%% Example:
%% auth_info() :: #{
%%   <<"actionType">> => list(any()),
%%   <<"resources">> => list(string()())
%% }
-type auth_info() :: #{binary() => any()}.

%% Example:
%% delete_dimension_request() :: #{}
-type delete_dimension_request() :: #{}.


%% Example:
%% describe_job_template_response() :: #{
%%   <<"abortConfig">> => abort_config(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"destinationPackageVersions">> => list(string()()),
%%   <<"document">> => string(),
%%   <<"documentSource">> => string(),
%%   <<"jobExecutionsRetryConfig">> => job_executions_retry_config(),
%%   <<"jobExecutionsRolloutConfig">> => job_executions_rollout_config(),
%%   <<"jobTemplateArn">> => string(),
%%   <<"jobTemplateId">> => string(),
%%   <<"maintenanceWindows">> => list(maintenance_window()()),
%%   <<"presignedUrlConfig">> => presigned_url_config(),
%%   <<"timeoutConfig">> => timeout_config()
%% }
-type describe_job_template_response() :: #{binary() => any()}.


%% Example:
%% delete_thing_request() :: #{
%%   <<"expectedVersion">> => float()
%% }
-type delete_thing_request() :: #{binary() => any()}.


%% Example:
%% register_certificate_request() :: #{
%%   <<"caCertificatePem">> => string(),
%%   <<"certificatePem">> := string(),
%%   <<"setAsActive">> => boolean(),
%%   <<"status">> => list(any())
%% }
-type register_certificate_request() :: #{binary() => any()}.


%% Example:
%% list_active_violations_request() :: #{
%%   <<"behaviorCriteriaType">> => list(any()),
%%   <<"listSuppressedAlerts">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"securityProfileName">> => string(),
%%   <<"thingName">> => string(),
%%   <<"verificationState">> => list(any())
%% }
-type list_active_violations_request() :: #{binary() => any()}.


%% Example:
%% describe_certificate_provider_response() :: #{
%%   <<"accountDefaultForOperations">> => list(list(any())()),
%%   <<"certificateProviderArn">> => string(),
%%   <<"certificateProviderName">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"lambdaFunctionArn">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer()
%% }
-type describe_certificate_provider_response() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% set_default_authorizer_response() :: #{
%%   <<"authorizerArn">> => string(),
%%   <<"authorizerName">> => string()
%% }
-type set_default_authorizer_response() :: #{binary() => any()}.


%% Example:
%% describe_thing_response() :: #{
%%   <<"attributes">> => map(),
%%   <<"billingGroupName">> => string(),
%%   <<"defaultClientId">> => string(),
%%   <<"thingArn">> => string(),
%%   <<"thingId">> => string(),
%%   <<"thingName">> => string(),
%%   <<"thingTypeName">> => string(),
%%   <<"version">> => float()
%% }
-type describe_thing_response() :: #{binary() => any()}.

%% Example:
%% put_verification_state_on_violation_response() :: #{}
-type put_verification_state_on_violation_response() :: #{}.

%% Example:
%% delete_topic_rule_destination_request() :: #{}
-type delete_topic_rule_destination_request() :: #{}.

%% Example:
%% remove_thing_from_thing_group_response() :: #{}
-type remove_thing_from_thing_group_response() :: #{}.


%% Example:
%% security_profile_target_mapping() :: #{
%%   <<"securityProfileIdentifier">> => security_profile_identifier(),
%%   <<"target">> => security_profile_target()
%% }
-type security_profile_target_mapping() :: #{binary() => any()}.


%% Example:
%% list_outgoing_certificates_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer()
%% }
-type list_outgoing_certificates_request() :: #{binary() => any()}.


%% Example:
%% list_audit_tasks_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tasks">> => list(audit_task_metadata()())
%% }
-type list_audit_tasks_response() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string(),
%%   <<"version">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% put_item_input() :: #{
%%   <<"tableName">> => string()
%% }
-type put_item_input() :: #{binary() => any()}.


%% Example:
%% update_mitigation_action_response() :: #{
%%   <<"actionArn">> => string(),
%%   <<"actionId">> => string()
%% }
-type update_mitigation_action_response() :: #{binary() => any()}.


%% Example:
%% update_package_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"defaultVersionName">> => string(),
%%   <<"description">> => string(),
%%   <<"unsetDefaultVersion">> => boolean()
%% }
-type update_package_request() :: #{binary() => any()}.


%% Example:
%% detect_mitigation_action_execution() :: #{
%%   <<"actionName">> => string(),
%%   <<"errorCode">> => string(),
%%   <<"executionEndDate">> => non_neg_integer(),
%%   <<"executionStartDate">> => non_neg_integer(),
%%   <<"message">> => string(),
%%   <<"status">> => list(any()),
%%   <<"taskId">> => string(),
%%   <<"thingName">> => string(),
%%   <<"violationId">> => string()
%% }
-type detect_mitigation_action_execution() :: #{binary() => any()}.

%% Example:
%% create_audit_suppression_response() :: #{}
-type create_audit_suppression_response() :: #{}.

%% Example:
%% add_thing_to_thing_group_response() :: #{}
-type add_thing_to_thing_group_response() :: #{}.


%% Example:
%% violation_event() :: #{
%%   <<"behavior">> => behavior(),
%%   <<"metricValue">> => metric_value(),
%%   <<"securityProfileName">> => string(),
%%   <<"thingName">> => string(),
%%   <<"verificationState">> => list(any()),
%%   <<"verificationStateDescription">> => string(),
%%   <<"violationEventAdditionalInfo">> => violation_event_additional_info(),
%%   <<"violationEventTime">> => non_neg_integer(),
%%   <<"violationEventType">> => list(any()),
%%   <<"violationId">> => string()
%% }
-type violation_event() :: #{binary() => any()}.


%% Example:
%% list_indices_response() :: #{
%%   <<"indexNames">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_indices_response() :: #{binary() => any()}.


%% Example:
%% list_command_executions_request() :: #{
%%   <<"commandArn">> => string(),
%%   <<"completedTimeFilter">> => time_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"namespace">> => list(any()),
%%   <<"nextToken">> => string(),
%%   <<"sortOrder">> => list(any()),
%%   <<"startedTimeFilter">> => time_filter(),
%%   <<"status">> => list(any()),
%%   <<"targetArn">> => string()
%% }
-type list_command_executions_request() :: #{binary() => any()}.


%% Example:
%% key_pair() :: #{
%%   <<"PrivateKey">> => string(),
%%   <<"PublicKey">> => string()
%% }
-type key_pair() :: #{binary() => any()}.


%% Example:
%% update_scheduled_audit_response() :: #{
%%   <<"scheduledAuditArn">> => string()
%% }
-type update_scheduled_audit_response() :: #{binary() => any()}.


%% Example:
%% job_executions_retry_config() :: #{
%%   <<"criteriaList">> => list(retry_criteria()())
%% }
-type job_executions_retry_config() :: #{binary() => any()}.


%% Example:
%% kafka_action() :: #{
%%   <<"clientProperties">> => map(),
%%   <<"destinationArn">> => string(),
%%   <<"headers">> => list(kafka_action_header()()),
%%   <<"key">> => string(),
%%   <<"partition">> => string(),
%%   <<"topic">> => string()
%% }
-type kafka_action() :: #{binary() => any()}.


%% Example:
%% s3_destination() :: #{
%%   <<"bucket">> => string(),
%%   <<"prefix">> => string()
%% }
-type s3_destination() :: #{binary() => any()}.


%% Example:
%% metric_dimension() :: #{
%%   <<"dimensionName">> => string(),
%%   <<"operator">> => list(any())
%% }
-type metric_dimension() :: #{binary() => any()}.


%% Example:
%% create_policy_response() :: #{
%%   <<"policyArn">> => string(),
%%   <<"policyDocument">> => string(),
%%   <<"policyName">> => string(),
%%   <<"policyVersionId">> => string()
%% }
-type create_policy_response() :: #{binary() => any()}.


%% Example:
%% get_package_version_response() :: #{
%%   <<"artifact">> => package_version_artifact(),
%%   <<"attributes">> => map(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"errorReason">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"packageName">> => string(),
%%   <<"packageVersionArn">> => string(),
%%   <<"recipe">> => string(),
%%   <<"sbom">> => sbom(),
%%   <<"sbomValidationStatus">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"versionName">> => string()
%% }
-type get_package_version_response() :: #{binary() => any()}.


%% Example:
%% job_execution() :: #{
%%   <<"approximateSecondsBeforeTimedOut">> => float(),
%%   <<"executionNumber">> => float(),
%%   <<"forceCanceled">> => boolean(),
%%   <<"jobId">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"queuedAt">> => non_neg_integer(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusDetails">> => job_execution_status_details(),
%%   <<"thingArn">> => string(),
%%   <<"versionNumber">> => float()
%% }
-type job_execution() :: #{binary() => any()}.


%% Example:
%% scheduled_audit_metadata() :: #{
%%   <<"dayOfMonth">> => string(),
%%   <<"dayOfWeek">> => list(any()),
%%   <<"frequency">> => list(any()),
%%   <<"scheduledAuditArn">> => string(),
%%   <<"scheduledAuditName">> => string()
%% }
-type scheduled_audit_metadata() :: #{binary() => any()}.


%% Example:
%% disassociate_sbom_from_package_version_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type disassociate_sbom_from_package_version_request() :: #{binary() => any()}.


%% Example:
%% domain_configuration_summary() :: #{
%%   <<"domainConfigurationArn">> => string(),
%%   <<"domainConfigurationName">> => string(),
%%   <<"serviceType">> => list(any())
%% }
-type domain_configuration_summary() :: #{binary() => any()}.

%% Example:
%% describe_provisioning_template_request() :: #{}
-type describe_provisioning_template_request() :: #{}.

%% Example:
%% cancel_audit_mitigation_actions_task_response() :: #{}
-type cancel_audit_mitigation_actions_task_response() :: #{}.

%% Example:
%% list_policy_versions_request() :: #{}
-type list_policy_versions_request() :: #{}.


%% Example:
%% invalid_query_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_query_exception() :: #{binary() => any()}.


%% Example:
%% update_stream_request() :: #{
%%   <<"description">> => string(),
%%   <<"files">> => list(stream_file()()),
%%   <<"roleArn">> => string()
%% }
-type update_stream_request() :: #{binary() => any()}.


%% Example:
%% get_command_execution_response() :: #{
%%   <<"commandArn">> => string(),
%%   <<"completedAt">> => non_neg_integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"executionId">> => string(),
%%   <<"executionTimeoutSeconds">> => float(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"parameters">> => map(),
%%   <<"result">> => map(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => status_reason(),
%%   <<"targetArn">> => string(),
%%   <<"timeToLive">> => non_neg_integer()
%% }
-type get_command_execution_response() :: #{binary() => any()}.


%% Example:
%% abort_criteria() :: #{
%%   <<"action">> => list(any()),
%%   <<"failureType">> => list(any()),
%%   <<"minNumberOfExecutedThings">> => integer(),
%%   <<"thresholdPercentage">> => float()
%% }
-type abort_criteria() :: #{binary() => any()}.


%% Example:
%% topic_rule_list_item() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"ruleArn">> => string(),
%%   <<"ruleDisabled">> => boolean(),
%%   <<"ruleName">> => string(),
%%   <<"topicPattern">> => string()
%% }
-type topic_rule_list_item() :: #{binary() => any()}.

%% Example:
%% delete_thing_group_response() :: #{}
-type delete_thing_group_response() :: #{}.


%% Example:
%% propagating_attribute() :: #{
%%   <<"connectionAttribute">> => string(),
%%   <<"thingAttribute">> => string(),
%%   <<"userPropertyKey">> => string()
%% }
-type propagating_attribute() :: #{binary() => any()}.


%% Example:
%% get_policy_response() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"defaultVersionId">> => string(),
%%   <<"generationId">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"policyArn">> => string(),
%%   <<"policyDocument">> => string(),
%%   <<"policyName">> => string()
%% }
-type get_policy_response() :: #{binary() => any()}.


%% Example:
%% describe_ca_certificate_response() :: #{
%%   <<"certificateDescription">> => ca_certificate_description(),
%%   <<"registrationConfig">> => registration_config()
%% }
-type describe_ca_certificate_response() :: #{binary() => any()}.

%% Example:
%% delete_role_alias_response() :: #{}
-type delete_role_alias_response() :: #{}.


%% Example:
%% create_mitigation_action_request() :: #{
%%   <<"actionParams">> := mitigation_action_params(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_mitigation_action_request() :: #{binary() => any()}.


%% Example:
%% ca_certificate() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateId">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type ca_certificate() :: #{binary() => any()}.

%% Example:
%% confirm_topic_rule_destination_request() :: #{}
-type confirm_topic_rule_destination_request() :: #{}.

%% Example:
%% disable_topic_rule_request() :: #{}
-type disable_topic_rule_request() :: #{}.

%% Example:
%% describe_stream_request() :: #{}
-type describe_stream_request() :: #{}.


%% Example:
%% update_stream_response() :: #{
%%   <<"description">> => string(),
%%   <<"streamArn">> => string(),
%%   <<"streamId">> => string(),
%%   <<"streamVersion">> => integer()
%% }
-type update_stream_response() :: #{binary() => any()}.

%% Example:
%% delete_custom_metric_response() :: #{}
-type delete_custom_metric_response() :: #{}.


%% Example:
%% search_index_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"thingGroups">> => list(thing_group_document()()),
%%   <<"things">> => list(thing_document()())
%% }
-type search_index_response() :: #{binary() => any()}.


%% Example:
%% task_statistics() :: #{
%%   <<"canceledChecks">> => integer(),
%%   <<"compliantChecks">> => integer(),
%%   <<"failedChecks">> => integer(),
%%   <<"inProgressChecks">> => integer(),
%%   <<"nonCompliantChecks">> => integer(),
%%   <<"totalChecks">> => integer(),
%%   <<"waitingForDataCollectionChecks">> => integer()
%% }
-type task_statistics() :: #{binary() => any()}.


%% Example:
%% not_configured_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_configured_exception() :: #{binary() => any()}.


%% Example:
%% file_location() :: #{
%%   <<"s3Location">> => s3_location(),
%%   <<"stream">> => stream()
%% }
-type file_location() :: #{binary() => any()}.

%% Example:
%% describe_thing_registration_task_request() :: #{}
-type describe_thing_registration_task_request() :: #{}.


%% Example:
%% job_execution_status_details() :: #{
%%   <<"detailsMap">> => map()
%% }
-type job_execution_status_details() :: #{binary() => any()}.

%% Example:
%% delete_dimension_response() :: #{}
-type delete_dimension_response() :: #{}.


%% Example:
%% rate_increase_criteria() :: #{
%%   <<"numberOfNotifiedThings">> => integer(),
%%   <<"numberOfSucceededThings">> => integer()
%% }
-type rate_increase_criteria() :: #{binary() => any()}.


%% Example:
%% get_registration_code_response() :: #{
%%   <<"registrationCode">> => string()
%% }
-type get_registration_code_response() :: #{binary() => any()}.


%% Example:
%% thing_group_metadata() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"parentGroupName">> => string(),
%%   <<"rootToParentThingGroups">> => list(group_name_and_arn()())
%% }
-type thing_group_metadata() :: #{binary() => any()}.


%% Example:
%% custom_code_signing() :: #{
%%   <<"certificateChain">> => code_signing_certificate_chain(),
%%   <<"hashAlgorithm">> => string(),
%%   <<"signature">> => code_signing_signature(),
%%   <<"signatureAlgorithm">> => string()
%% }
-type custom_code_signing() :: #{binary() => any()}.


%% Example:
%% group_name_and_arn() :: #{
%%   <<"groupArn">> => string(),
%%   <<"groupName">> => string()
%% }
-type group_name_and_arn() :: #{binary() => any()}.


%% Example:
%% package_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"defaultVersionName">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"packageName">> => string()
%% }
-type package_summary() :: #{binary() => any()}.


%% Example:
%% create_thing_group_response() :: #{
%%   <<"thingGroupArn">> => string(),
%%   <<"thingGroupId">> => string(),
%%   <<"thingGroupName">> => string()
%% }
-type create_thing_group_response() :: #{binary() => any()}.

%% Example:
%% delete_ca_certificate_response() :: #{}
-type delete_ca_certificate_response() :: #{}.


%% Example:
%% list_ota_updates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"otaUpdates">> => list(ota_update_summary()())
%% }
-type list_ota_updates_response() :: #{binary() => any()}.

%% Example:
%% update_thing_response() :: #{}
-type update_thing_response() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_v2_logging_levels_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"targetType">> => list(any())
%% }
-type list_v2_logging_levels_request() :: #{binary() => any()}.


%% Example:
%% describe_default_authorizer_response() :: #{
%%   <<"authorizerDescription">> => authorizer_description()
%% }
-type describe_default_authorizer_response() :: #{binary() => any()}.


%% Example:
%% command_execution_result() :: #{
%%   <<"B">> => boolean(),
%%   <<"BIN">> => binary(),
%%   <<"S">> => string()
%% }
-type command_execution_result() :: #{binary() => any()}.


%% Example:
%% get_package_configuration_response() :: #{
%%   <<"versionUpdateByJobsConfig">> => version_update_by_jobs_config()
%% }
-type get_package_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_billing_group_request() :: #{
%%   <<"billingGroupProperties">> := billing_group_properties(),
%%   <<"expectedVersion">> => float()
%% }
-type update_billing_group_request() :: #{binary() => any()}.

%% Example:
%% delete_policy_request() :: #{}
-type delete_policy_request() :: #{}.


%% Example:
%% delete_security_profile_request() :: #{
%%   <<"expectedVersion">> => float()
%% }
-type delete_security_profile_request() :: #{binary() => any()}.

%% Example:
%% update_thing_groups_for_thing_response() :: #{}
-type update_thing_groups_for_thing_response() :: #{}.


%% Example:
%% delete_job_execution_request() :: #{
%%   <<"force">> => boolean(),
%%   <<"namespaceId">> => string()
%% }
-type delete_job_execution_request() :: #{binary() => any()}.


%% Example:
%% thing_group_properties() :: #{
%%   <<"attributePayload">> => attribute_payload(),
%%   <<"thingGroupDescription">> => string()
%% }
-type thing_group_properties() :: #{binary() => any()}.

%% Example:
%% delete_mitigation_action_response() :: #{}
-type delete_mitigation_action_response() :: #{}.


%% Example:
%% get_buckets_aggregation_request() :: #{
%%   <<"aggregationField">> := string(),
%%   <<"bucketsAggregationType">> := buckets_aggregation_type(),
%%   <<"indexName">> => string(),
%%   <<"queryString">> := string(),
%%   <<"queryVersion">> => string()
%% }
-type get_buckets_aggregation_request() :: #{binary() => any()}.


%% Example:
%% certificate() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateId">> => string(),
%%   <<"certificateMode">> => list(any()),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type certificate() :: #{binary() => any()}.


%% Example:
%% ota_update_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"otaUpdateArn">> => string(),
%%   <<"otaUpdateId">> => string()
%% }
-type ota_update_summary() :: #{binary() => any()}.


%% Example:
%% set_default_authorizer_request() :: #{
%%   <<"authorizerName">> := string()
%% }
-type set_default_authorizer_request() :: #{binary() => any()}.


%% Example:
%% denied() :: #{
%%   <<"explicitDeny">> => explicit_deny(),
%%   <<"implicitDeny">> => implicit_deny()
%% }
-type denied() :: #{binary() => any()}.


%% Example:
%% delete_fleet_metric_request() :: #{
%%   <<"expectedVersion">> => float()
%% }
-type delete_fleet_metric_request() :: #{binary() => any()}.


%% Example:
%% describe_provisioning_template_response() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"defaultVersionId">> => integer(),
%%   <<"description">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"preProvisioningHook">> => provisioning_hook(),
%%   <<"provisioningRoleArn">> => string(),
%%   <<"templateArn">> => string(),
%%   <<"templateBody">> => string(),
%%   <<"templateName">> => string(),
%%   <<"type">> => list(any())
%% }
-type describe_provisioning_template_response() :: #{binary() => any()}.


%% Example:
%% list_things_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"things">> => list(thing_attribute()())
%% }
-type list_things_response() :: #{binary() => any()}.

%% Example:
%% delete_provisioning_template_version_response() :: #{}
-type delete_provisioning_template_version_response() :: #{}.


%% Example:
%% asset_property_timestamp() :: #{
%%   <<"offsetInNanos">> => string(),
%%   <<"timeInSeconds">> => string()
%% }
-type asset_property_timestamp() :: #{binary() => any()}.


%% Example:
%% update_custom_metric_response() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"metricArn">> => string(),
%%   <<"metricName">> => string(),
%%   <<"metricType">> => list(any())
%% }
-type update_custom_metric_response() :: #{binary() => any()}.


%% Example:
%% code_signing_certificate_chain() :: #{
%%   <<"certificateName">> => string(),
%%   <<"inlineDocument">> => string()
%% }
-type code_signing_certificate_chain() :: #{binary() => any()}.


%% Example:
%% create_scheduled_audit_response() :: #{
%%   <<"scheduledAuditArn">> => string()
%% }
-type create_scheduled_audit_response() :: #{binary() => any()}.


%% Example:
%% create_custom_metric_request() :: #{
%%   <<"clientRequestToken">> := string(),
%%   <<"displayName">> => string(),
%%   <<"metricType">> := list(any()),
%%   <<"tags">> => list(tag()())
%% }
-type create_custom_metric_request() :: #{binary() => any()}.


%% Example:
%% task_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type task_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% list_thing_groups_for_thing_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"thingGroups">> => list(group_name_and_arn()())
%% }
-type list_thing_groups_for_thing_response() :: #{binary() => any()}.


%% Example:
%% register_certificate_response() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateId">> => string()
%% }
-type register_certificate_response() :: #{binary() => any()}.


%% Example:
%% authorizer_description() :: #{
%%   <<"authorizerArn">> => string(),
%%   <<"authorizerFunctionArn">> => string(),
%%   <<"authorizerName">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"enableCachingForHttp">> => boolean(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"signingDisabled">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"tokenKeyName">> => string(),
%%   <<"tokenSigningPublicKeys">> => map()
%% }
-type authorizer_description() :: #{binary() => any()}.


%% Example:
%% http_url_destination_summary() :: #{
%%   <<"confirmationUrl">> => string()
%% }
-type http_url_destination_summary() :: #{binary() => any()}.


%% Example:
%% action() :: #{
%%   <<"cloudwatchAlarm">> => cloudwatch_alarm_action(),
%%   <<"cloudwatchLogs">> => cloudwatch_logs_action(),
%%   <<"cloudwatchMetric">> => cloudwatch_metric_action(),
%%   <<"dynamoDB">> => dynamo_db_action(),
%%   <<"dynamoDBv2">> => dynamo_dbv2_action(),
%%   <<"elasticsearch">> => elasticsearch_action(),
%%   <<"firehose">> => firehose_action(),
%%   <<"http">> => http_action(),
%%   <<"iotAnalytics">> => iot_analytics_action(),
%%   <<"iotEvents">> => iot_events_action(),
%%   <<"iotSiteWise">> => iot_site_wise_action(),
%%   <<"kafka">> => kafka_action(),
%%   <<"kinesis">> => kinesis_action(),
%%   <<"lambda">> => lambda_action(),
%%   <<"location">> => location_action(),
%%   <<"openSearch">> => open_search_action(),
%%   <<"republish">> => republish_action(),
%%   <<"s3">> => s3_action(),
%%   <<"salesforce">> => salesforce_action(),
%%   <<"sns">> => sns_action(),
%%   <<"sqs">> => sqs_action(),
%%   <<"stepFunctions">> => step_functions_action(),
%%   <<"timestream">> => timestream_action()
%% }
-type action() :: #{binary() => any()}.


%% Example:
%% list_violation_events_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"violationEvents">> => list(violation_event()())
%% }
-type list_violation_events_response() :: #{binary() => any()}.


%% Example:
%% tls_config() :: #{
%%   <<"securityPolicy">> => string()
%% }
-type tls_config() :: #{binary() => any()}.


%% Example:
%% republish_action() :: #{
%%   <<"headers">> => mqtt_headers(),
%%   <<"qos">> => integer(),
%%   <<"roleArn">> => string(),
%%   <<"topic">> => string()
%% }
-type republish_action() :: #{binary() => any()}.

%% Example:
%% update_package_configuration_response() :: #{}
-type update_package_configuration_response() :: #{}.


%% Example:
%% put_verification_state_on_violation_request() :: #{
%%   <<"verificationState">> := list(any()),
%%   <<"verificationStateDescription">> => string()
%% }
-type put_verification_state_on_violation_request() :: #{binary() => any()}.


%% Example:
%% list_authorizers_response() :: #{
%%   <<"authorizers">> => list(authorizer_summary()()),
%%   <<"nextMarker">> => string()
%% }
-type list_authorizers_response() :: #{binary() => any()}.


%% Example:
%% server_certificate_config() :: #{
%%   <<"enableOCSPCheck">> => boolean(),
%%   <<"ocspAuthorizedResponderArn">> => string(),
%%   <<"ocspLambdaArn">> => string()
%% }
-type server_certificate_config() :: #{binary() => any()}.


%% Example:
%% list_job_executions_for_thing_response() :: #{
%%   <<"executionSummaries">> => list(job_execution_summary_for_thing()()),
%%   <<"nextToken">> => string()
%% }
-type list_job_executions_for_thing_response() :: #{binary() => any()}.


%% Example:
%% topic_rule_destination_configuration() :: #{
%%   <<"httpUrlConfiguration">> => http_url_destination_configuration(),
%%   <<"vpcConfiguration">> => vpc_destination_configuration()
%% }
-type topic_rule_destination_configuration() :: #{binary() => any()}.


%% Example:
%% index_not_ready_exception() :: #{
%%   <<"message">> => string()
%% }
-type index_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% list_job_templates_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_job_templates_request() :: #{binary() => any()}.


%% Example:
%% policy() :: #{
%%   <<"policyArn">> => string(),
%%   <<"policyName">> => string()
%% }
-type policy() :: #{binary() => any()}.


%% Example:
%% detect_mitigation_actions_task_summary() :: #{
%%   <<"actionsDefinition">> => list(mitigation_action()()),
%%   <<"onlyActiveViolationsIncluded">> => boolean(),
%%   <<"suppressedAlertsIncluded">> => boolean(),
%%   <<"target">> => detect_mitigation_actions_task_target(),
%%   <<"taskEndTime">> => non_neg_integer(),
%%   <<"taskId">> => string(),
%%   <<"taskStartTime">> => non_neg_integer(),
%%   <<"taskStatistics">> => detect_mitigation_actions_task_statistics(),
%%   <<"taskStatus">> => list(any()),
%%   <<"violationEventOccurrenceRange">> => violation_event_occurrence_range()
%% }
-type detect_mitigation_actions_task_summary() :: #{binary() => any()}.


%% Example:
%% command_execution_summary() :: #{
%%   <<"commandArn">> => string(),
%%   <<"completedAt">> => non_neg_integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"executionId">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"targetArn">> => string()
%% }
-type command_execution_summary() :: #{binary() => any()}.


%% Example:
%% bucket() :: #{
%%   <<"count">> => integer(),
%%   <<"keyValue">> => string()
%% }
-type bucket() :: #{binary() => any()}.


%% Example:
%% list_thing_registration_tasks_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"taskIds">> => list(string()())
%% }
-type list_thing_registration_tasks_response() :: #{binary() => any()}.


%% Example:
%% attach_principal_policy_request() :: #{
%%   <<"principal">> := string()
%% }
-type attach_principal_policy_request() :: #{binary() => any()}.


%% Example:
%% thing_group_document() :: #{
%%   <<"attributes">> => map(),
%%   <<"parentGroupNames">> => list(string()()),
%%   <<"thingGroupDescription">> => string(),
%%   <<"thingGroupId">> => string(),
%%   <<"thingGroupName">> => string()
%% }
-type thing_group_document() :: #{binary() => any()}.


%% Example:
%% create_job_template_request() :: #{
%%   <<"abortConfig">> => abort_config(),
%%   <<"description">> := string(),
%%   <<"destinationPackageVersions">> => list(string()()),
%%   <<"document">> => string(),
%%   <<"documentSource">> => string(),
%%   <<"jobArn">> => string(),
%%   <<"jobExecutionsRetryConfig">> => job_executions_retry_config(),
%%   <<"jobExecutionsRolloutConfig">> => job_executions_rollout_config(),
%%   <<"maintenanceWindows">> => list(maintenance_window()()),
%%   <<"presignedUrlConfig">> => presigned_url_config(),
%%   <<"tags">> => list(tag()()),
%%   <<"timeoutConfig">> => timeout_config()
%% }
-type create_job_template_request() :: #{binary() => any()}.


%% Example:
%% create_stream_response() :: #{
%%   <<"description">> => string(),
%%   <<"streamArn">> => string(),
%%   <<"streamId">> => string(),
%%   <<"streamVersion">> => integer()
%% }
-type create_stream_response() :: #{binary() => any()}.


%% Example:
%% publish_finding_to_sns_params() :: #{
%%   <<"topicArn">> => string()
%% }
-type publish_finding_to_sns_params() :: #{binary() => any()}.


%% Example:
%% create_thing_type_response() :: #{
%%   <<"thingTypeArn">> => string(),
%%   <<"thingTypeId">> => string(),
%%   <<"thingTypeName">> => string()
%% }
-type create_thing_type_response() :: #{binary() => any()}.


%% Example:
%% job_executions_rollout_config() :: #{
%%   <<"exponentialRate">> => exponential_rollout_rate(),
%%   <<"maximumPerMinute">> => integer()
%% }
-type job_executions_rollout_config() :: #{binary() => any()}.


%% Example:
%% delete_package_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_package_request() :: #{binary() => any()}.


%% Example:
%% timeout_config() :: #{
%%   <<"inProgressTimeoutInMinutes">> => float()
%% }
-type timeout_config() :: #{binary() => any()}.


%% Example:
%% thing_document() :: #{
%%   <<"attributes">> => map(),
%%   <<"connectivity">> => thing_connectivity(),
%%   <<"deviceDefender">> => string(),
%%   <<"shadow">> => string(),
%%   <<"thingGroupNames">> => list(string()()),
%%   <<"thingId">> => string(),
%%   <<"thingName">> => string(),
%%   <<"thingTypeName">> => string()
%% }
-type thing_document() :: #{binary() => any()}.


%% Example:
%% replace_default_policy_version_params() :: #{
%%   <<"templateName">> => list(any())
%% }
-type replace_default_policy_version_params() :: #{binary() => any()}.


%% Example:
%% internal_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_exception() :: #{binary() => any()}.

%% Example:
%% cancel_audit_task_request() :: #{}
-type cancel_audit_task_request() :: #{}.


%% Example:
%% list_related_resources_for_audit_finding_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"relatedResources">> => list(related_resource()())
%% }
-type list_related_resources_for_audit_finding_response() :: #{binary() => any()}.


%% Example:
%% get_job_document_response() :: #{
%%   <<"document">> => string()
%% }
-type get_job_document_response() :: #{binary() => any()}.

%% Example:
%% describe_default_authorizer_request() :: #{}
-type describe_default_authorizer_request() :: #{}.


%% Example:
%% create_provisioning_template_version_request() :: #{
%%   <<"setAsDefault">> => boolean(),
%%   <<"templateBody">> := string()
%% }
-type create_provisioning_template_version_request() :: #{binary() => any()}.


%% Example:
%% transfer_certificate_request() :: #{
%%   <<"targetAwsAccount">> := string(),
%%   <<"transferMessage">> => string()
%% }
-type transfer_certificate_request() :: #{binary() => any()}.


%% Example:
%% list_related_resources_for_audit_finding_request() :: #{
%%   <<"findingId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_related_resources_for_audit_finding_request() :: #{binary() => any()}.


%% Example:
%% delete_certificate_request() :: #{
%%   <<"forceDelete">> => boolean()
%% }
-type delete_certificate_request() :: #{binary() => any()}.


%% Example:
%% describe_detect_mitigation_actions_task_response() :: #{
%%   <<"taskSummary">> => detect_mitigation_actions_task_summary()
%% }
-type describe_detect_mitigation_actions_task_response() :: #{binary() => any()}.


%% Example:
%% behavior() :: #{
%%   <<"criteria">> => behavior_criteria(),
%%   <<"exportMetric">> => boolean(),
%%   <<"metric">> => string(),
%%   <<"metricDimension">> => metric_dimension(),
%%   <<"name">> => string(),
%%   <<"suppressAlerts">> => boolean()
%% }
-type behavior() :: #{binary() => any()}.


%% Example:
%% describe_certificate_response() :: #{
%%   <<"certificateDescription">> => certificate_description()
%% }
-type describe_certificate_response() :: #{binary() => any()}.


%% Example:
%% list_dimensions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_dimensions_request() :: #{binary() => any()}.


%% Example:
%% describe_endpoint_response() :: #{
%%   <<"endpointAddress">> => string()
%% }
-type describe_endpoint_response() :: #{binary() => any()}.

%% Example:
%% delete_certificate_provider_response() :: #{}
-type delete_certificate_provider_response() :: #{}.


%% Example:
%% server_certificate_summary() :: #{
%%   <<"serverCertificateArn">> => string(),
%%   <<"serverCertificateStatus">> => list(any()),
%%   <<"serverCertificateStatusDetail">> => string()
%% }
-type server_certificate_summary() :: #{binary() => any()}.


%% Example:
%% code_signing() :: #{
%%   <<"awsSignerJobId">> => string(),
%%   <<"customCodeSigning">> => custom_code_signing(),
%%   <<"startSigningJobParameter">> => start_signing_job_parameter()
%% }
-type code_signing() :: #{binary() => any()}.


%% Example:
%% list_thing_registration_task_reports_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"reportType">> := list(any())
%% }
-type list_thing_registration_task_reports_request() :: #{binary() => any()}.


%% Example:
%% authorizer_summary() :: #{
%%   <<"authorizerArn">> => string(),
%%   <<"authorizerName">> => string()
%% }
-type authorizer_summary() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% authorizer_config() :: #{
%%   <<"allowAuthorizerOverride">> => boolean(),
%%   <<"defaultAuthorizerName">> => string()
%% }
-type authorizer_config() :: #{binary() => any()}.


%% Example:
%% update_dimension_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"stringValues">> => list(string()()),
%%   <<"type">> => list(any())
%% }
-type update_dimension_response() :: #{binary() => any()}.


%% Example:
%% list_audit_mitigation_actions_tasks_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tasks">> => list(audit_mitigation_actions_task_metadata()())
%% }
-type list_audit_mitigation_actions_tasks_response() :: #{binary() => any()}.


%% Example:
%% open_search_action() :: #{
%%   <<"endpoint">> => string(),
%%   <<"id">> => string(),
%%   <<"index">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"type">> => string()
%% }
-type open_search_action() :: #{binary() => any()}.


%% Example:
%% machine_learning_detection_config() :: #{
%%   <<"confidenceLevel">> => list(any())
%% }
-type machine_learning_detection_config() :: #{binary() => any()}.


%% Example:
%% conflicting_resource_update_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflicting_resource_update_exception() :: #{binary() => any()}.


%% Example:
%% update_thing_groups_for_thing_request() :: #{
%%   <<"overrideDynamicGroups">> => boolean(),
%%   <<"thingGroupsToAdd">> => list(string()()),
%%   <<"thingGroupsToRemove">> => list(string()()),
%%   <<"thingName">> => string()
%% }
-type update_thing_groups_for_thing_request() :: #{binary() => any()}.


%% Example:
%% list_thing_groups_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"thingGroups">> => list(group_name_and_arn()())
%% }
-type list_thing_groups_response() :: #{binary() => any()}.


%% Example:
%% create_provisioning_template_response() :: #{
%%   <<"defaultVersionId">> => integer(),
%%   <<"templateArn">> => string(),
%%   <<"templateName">> => string()
%% }
-type create_provisioning_template_response() :: #{binary() => any()}.


%% Example:
%% behavior_criteria() :: #{
%%   <<"comparisonOperator">> => list(any()),
%%   <<"consecutiveDatapointsToAlarm">> => integer(),
%%   <<"consecutiveDatapointsToClear">> => integer(),
%%   <<"durationSeconds">> => integer(),
%%   <<"mlDetectionConfig">> => machine_learning_detection_config(),
%%   <<"statisticalThreshold">> => statistical_threshold(),
%%   <<"value">> => metric_value()
%% }
-type behavior_criteria() :: #{binary() => any()}.


%% Example:
%% list_principal_policies_response() :: #{
%%   <<"nextMarker">> => string(),
%%   <<"policies">> => list(policy()())
%% }
-type list_principal_policies_response() :: #{binary() => any()}.


%% Example:
%% list_detect_mitigation_actions_tasks_request() :: #{
%%   <<"endTime">> := non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> := non_neg_integer()
%% }
-type list_detect_mitigation_actions_tasks_request() :: #{binary() => any()}.


%% Example:
%% update_fleet_metric_request() :: #{
%%   <<"aggregationField">> => string(),
%%   <<"aggregationType">> => aggregation_type(),
%%   <<"description">> => string(),
%%   <<"expectedVersion">> => float(),
%%   <<"indexName">> := string(),
%%   <<"period">> => integer(),
%%   <<"queryString">> => string(),
%%   <<"queryVersion">> => string(),
%%   <<"unit">> => list(any())
%% }
-type update_fleet_metric_request() :: #{binary() => any()}.


%% Example:
%% delete_thing_group_request() :: #{
%%   <<"expectedVersion">> => float()
%% }
-type delete_thing_group_request() :: #{binary() => any()}.


%% Example:
%% start_detect_mitigation_actions_task_response() :: #{
%%   <<"taskId">> => string()
%% }
-type start_detect_mitigation_actions_task_response() :: #{binary() => any()}.


%% Example:
%% registration_code_validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type registration_code_validation_exception() :: #{binary() => any()}.


%% Example:
%% mitigation_action_params() :: #{
%%   <<"addThingsToThingGroupParams">> => add_things_to_thing_group_params(),
%%   <<"enableIoTLoggingParams">> => enable_io_t_logging_params(),
%%   <<"publishFindingToSnsParams">> => publish_finding_to_sns_params(),
%%   <<"replaceDefaultPolicyVersionParams">> => replace_default_policy_version_params(),
%%   <<"updateCACertificateParams">> => update_ca_certificate_params(),
%%   <<"updateDeviceCertificateParams">> => update_device_certificate_params()
%% }
-type mitigation_action_params() :: #{binary() => any()}.


%% Example:
%% list_dimensions_response() :: #{
%%   <<"dimensionNames">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_dimensions_response() :: #{binary() => any()}.

%% Example:
%% describe_security_profile_request() :: #{}
-type describe_security_profile_request() :: #{}.


%% Example:
%% delete_job_request() :: #{
%%   <<"force">> => boolean(),
%%   <<"namespaceId">> => string()
%% }
-type delete_job_request() :: #{binary() => any()}.


%% Example:
%% sbom_validation_result_summary() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"fileName">> => string(),
%%   <<"validationResult">> => list(any())
%% }
-type sbom_validation_result_summary() :: #{binary() => any()}.


%% Example:
%% statistics() :: #{
%%   <<"average">> => float(),
%%   <<"count">> => integer(),
%%   <<"maximum">> => float(),
%%   <<"minimum">> => float(),
%%   <<"stdDeviation">> => float(),
%%   <<"sum">> => float(),
%%   <<"sumOfSquares">> => float(),
%%   <<"variance">> => float()
%% }
-type statistics() :: #{binary() => any()}.


%% Example:
%% describe_audit_mitigation_actions_task_response() :: #{
%%   <<"actionsDefinition">> => list(mitigation_action()()),
%%   <<"auditCheckToActionsMapping">> => map(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"target">> => audit_mitigation_actions_task_target(),
%%   <<"taskStatistics">> => map(),
%%   <<"taskStatus">> => list(any())
%% }
-type describe_audit_mitigation_actions_task_response() :: #{binary() => any()}.


%% Example:
%% detach_principal_policy_request() :: #{
%%   <<"principal">> := string()
%% }
-type detach_principal_policy_request() :: #{binary() => any()}.


%% Example:
%% behavior_model_training_summary() :: #{
%%   <<"behaviorName">> => string(),
%%   <<"datapointsCollectionPercentage">> => float(),
%%   <<"lastModelRefreshDate">> => non_neg_integer(),
%%   <<"modelStatus">> => list(any()),
%%   <<"securityProfileName">> => string(),
%%   <<"trainingDataCollectionStartDate">> => non_neg_integer()
%% }
-type behavior_model_training_summary() :: #{binary() => any()}.


%% Example:
%% role_alias_description() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"credentialDurationSeconds">> => integer(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"owner">> => string(),
%%   <<"roleAlias">> => string(),
%%   <<"roleAliasArn">> => string(),
%%   <<"roleArn">> => string()
%% }
-type role_alias_description() :: #{binary() => any()}.


%% Example:
%% metric_value() :: #{
%%   <<"cidrs">> => list(string()()),
%%   <<"count">> => float(),
%%   <<"number">> => float(),
%%   <<"numbers">> => list(float()()),
%%   <<"ports">> => list(integer()()),
%%   <<"strings">> => list(string()())
%% }
-type metric_value() :: #{binary() => any()}.


%% Example:
%% http_action() :: #{
%%   <<"auth">> => http_authorization(),
%%   <<"confirmationUrl">> => string(),
%%   <<"headers">> => list(http_action_header()()),
%%   <<"url">> => string()
%% }
-type http_action() :: #{binary() => any()}.


%% Example:
%% describe_fleet_metric_response() :: #{
%%   <<"aggregationField">> => string(),
%%   <<"aggregationType">> => aggregation_type(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"indexName">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"metricArn">> => string(),
%%   <<"metricName">> => string(),
%%   <<"period">> => integer(),
%%   <<"queryString">> => string(),
%%   <<"queryVersion">> => string(),
%%   <<"unit">> => list(any()),
%%   <<"version">> => float()
%% }
-type describe_fleet_metric_response() :: #{binary() => any()}.


%% Example:
%% validate_security_profile_behaviors_response() :: #{
%%   <<"valid">> => boolean(),
%%   <<"validationErrors">> => list(validation_error()())
%% }
-type validate_security_profile_behaviors_response() :: #{binary() => any()}.


%% Example:
%% start_signing_job_parameter() :: #{
%%   <<"destination">> => destination(),
%%   <<"signingProfileName">> => string(),
%%   <<"signingProfileParameter">> => signing_profile_parameter()
%% }
-type start_signing_job_parameter() :: #{binary() => any()}.


%% Example:
%% set_v2_logging_options_request() :: #{
%%   <<"defaultLogLevel">> => list(any()),
%%   <<"disableAllLogs">> => boolean(),
%%   <<"roleArn">> => string()
%% }
-type set_v2_logging_options_request() :: #{binary() => any()}.


%% Example:
%% set_v2_logging_level_request() :: #{
%%   <<"logLevel">> := list(any()),
%%   <<"logTarget">> := log_target()
%% }
-type set_v2_logging_level_request() :: #{binary() => any()}.

%% Example:
%% get_package_configuration_request() :: #{}
-type get_package_configuration_request() :: #{}.

%% Example:
%% cancel_audit_mitigation_actions_task_request() :: #{}
-type cancel_audit_mitigation_actions_task_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_detect_mitigation_actions_executions_request() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"taskId">> => string(),
%%   <<"thingName">> => string(),
%%   <<"violationId">> => string()
%% }
-type list_detect_mitigation_actions_executions_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% certificate_validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type certificate_validation_exception() :: #{binary() => any()}.

%% Example:
%% delete_provisioning_template_version_request() :: #{}
-type delete_provisioning_template_version_request() :: #{}.


%% Example:
%% list_thing_principals_v2_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"thingPrincipalObjects">> => list(thing_principal_object()())
%% }
-type list_thing_principals_v2_response() :: #{binary() => any()}.


%% Example:
%% list_audit_mitigation_actions_executions_response() :: #{
%%   <<"actionsExecutions">> => list(audit_mitigation_action_execution_metadata()()),
%%   <<"nextToken">> => string()
%% }
-type list_audit_mitigation_actions_executions_response() :: #{binary() => any()}.


%% Example:
%% job() :: #{
%%   <<"abortConfig">> => abort_config(),
%%   <<"comment">> => string(),
%%   <<"completedAt">> => non_neg_integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"destinationPackageVersions">> => list(string()()),
%%   <<"documentParameters">> => map(),
%%   <<"forceCanceled">> => boolean(),
%%   <<"isConcurrent">> => boolean(),
%%   <<"jobArn">> => string(),
%%   <<"jobExecutionsRetryConfig">> => job_executions_retry_config(),
%%   <<"jobExecutionsRolloutConfig">> => job_executions_rollout_config(),
%%   <<"jobId">> => string(),
%%   <<"jobProcessDetails">> => job_process_details(),
%%   <<"jobTemplateArn">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"namespaceId">> => string(),
%%   <<"presignedUrlConfig">> => presigned_url_config(),
%%   <<"reasonCode">> => string(),
%%   <<"scheduledJobRollouts">> => list(scheduled_job_rollout()()),
%%   <<"schedulingConfig">> => scheduling_config(),
%%   <<"status">> => list(any()),
%%   <<"targetSelection">> => list(any()),
%%   <<"targets">> => list(string()()),
%%   <<"timeoutConfig">> => timeout_config()
%% }
-type job() :: #{binary() => any()}.

%% Example:
%% delete_provisioning_template_request() :: #{}
-type delete_provisioning_template_request() :: #{}.


%% Example:
%% list_package_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_package_versions_request() :: #{binary() => any()}.


%% Example:
%% destination() :: #{
%%   <<"s3Destination">> => s3_destination()
%% }
-type destination() :: #{binary() => any()}.


%% Example:
%% stream_file() :: #{
%%   <<"fileId">> => integer(),
%%   <<"s3Location">> => s3_location()
%% }
-type stream_file() :: #{binary() => any()}.


%% Example:
%% mqtt_context() :: #{
%%   <<"clientId">> => string(),
%%   <<"password">> => binary(),
%%   <<"username">> => string()
%% }
-type mqtt_context() :: #{binary() => any()}.

%% Example:
%% update_topic_rule_destination_response() :: #{}
-type update_topic_rule_destination_response() :: #{}.


%% Example:
%% job_execution_summary_for_thing() :: #{
%%   <<"jobExecutionSummary">> => job_execution_summary(),
%%   <<"jobId">> => string()
%% }
-type job_execution_summary_for_thing() :: #{binary() => any()}.


%% Example:
%% list_thing_principals_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"principals">> => list(string()())
%% }
-type list_thing_principals_response() :: #{binary() => any()}.


%% Example:
%% audit_task_metadata() :: #{
%%   <<"taskId">> => string(),
%%   <<"taskStatus">> => list(any()),
%%   <<"taskType">> => list(any())
%% }
-type audit_task_metadata() :: #{binary() => any()}.


%% Example:
%% update_authorizer_response() :: #{
%%   <<"authorizerArn">> => string(),
%%   <<"authorizerName">> => string()
%% }
-type update_authorizer_response() :: #{binary() => any()}.


%% Example:
%% certificate_provider_summary() :: #{
%%   <<"certificateProviderArn">> => string(),
%%   <<"certificateProviderName">> => string()
%% }
-type certificate_provider_summary() :: #{binary() => any()}.


%% Example:
%% list_scheduled_audits_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_scheduled_audits_request() :: #{binary() => any()}.

%% Example:
%% get_topic_rule_request() :: #{}
-type get_topic_rule_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% sql_parse_exception() :: #{
%%   <<"message">> => string()
%% }
-type sql_parse_exception() :: #{binary() => any()}.


%% Example:
%% describe_audit_task_response() :: #{
%%   <<"auditDetails">> => map(),
%%   <<"scheduledAuditName">> => string(),
%%   <<"taskStartTime">> => non_neg_integer(),
%%   <<"taskStatistics">> => task_statistics(),
%%   <<"taskStatus">> => list(any()),
%%   <<"taskType">> => list(any())
%% }
-type describe_audit_task_response() :: #{binary() => any()}.


%% Example:
%% kafka_action_header() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type kafka_action_header() :: #{binary() => any()}.


%% Example:
%% get_behavior_model_training_summaries_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"securityProfileName">> => string()
%% }
-type get_behavior_model_training_summaries_request() :: #{binary() => any()}.

%% Example:
%% get_thing_connectivity_data_request() :: #{}
-type get_thing_connectivity_data_request() :: #{}.

%% Example:
%% describe_provisioning_template_version_request() :: #{}
-type describe_provisioning_template_version_request() :: #{}.


%% Example:
%% list_targets_for_policy_request() :: #{
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer()
%% }
-type list_targets_for_policy_request() :: #{binary() => any()}.


%% Example:
%% ota_update_info() :: #{
%%   <<"additionalParameters">> => map(),
%%   <<"awsIotJobArn">> => string(),
%%   <<"awsIotJobId">> => string(),
%%   <<"awsJobExecutionsRolloutConfig">> => aws_job_executions_rollout_config(),
%%   <<"awsJobPresignedUrlConfig">> => aws_job_presigned_url_config(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"errorInfo">> => error_info(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"otaUpdateArn">> => string(),
%%   <<"otaUpdateFiles">> => list(ota_update_file()()),
%%   <<"otaUpdateId">> => string(),
%%   <<"otaUpdateStatus">> => list(any()),
%%   <<"protocols">> => list(list(any())()),
%%   <<"targetSelection">> => list(any()),
%%   <<"targets">> => list(string()())
%% }
-type ota_update_info() :: #{binary() => any()}.


%% Example:
%% get_behavior_model_training_summaries_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(behavior_model_training_summary()())
%% }
-type get_behavior_model_training_summaries_response() :: #{binary() => any()}.


%% Example:
%% associate_sbom_with_package_version_response() :: #{
%%   <<"packageName">> => string(),
%%   <<"sbom">> => sbom(),
%%   <<"sbomValidationStatus">> => list(any()),
%%   <<"versionName">> => string()
%% }
-type associate_sbom_with_package_version_response() :: #{binary() => any()}.


%% Example:
%% create_package_response() :: #{
%%   <<"description">> => string(),
%%   <<"packageArn">> => string(),
%%   <<"packageName">> => string()
%% }
-type create_package_response() :: #{binary() => any()}.


%% Example:
%% audit_check_configuration() :: #{
%%   <<"enabled">> => boolean()
%% }
-type audit_check_configuration() :: #{binary() => any()}.

%% Example:
%% delete_stream_request() :: #{}
-type delete_stream_request() :: #{}.


%% Example:
%% scheduling_config() :: #{
%%   <<"endBehavior">> => list(any()),
%%   <<"endTime">> => string(),
%%   <<"maintenanceWindows">> => list(maintenance_window()()),
%%   <<"startTime">> => string()
%% }
-type scheduling_config() :: #{binary() => any()}.


%% Example:
%% provisioning_template_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"templateArn">> => string(),
%%   <<"templateName">> => string(),
%%   <<"type">> => list(any())
%% }
-type provisioning_template_summary() :: #{binary() => any()}.


%% Example:
%% list_sbom_validation_results_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"validationResult">> => list(any())
%% }
-type list_sbom_validation_results_request() :: #{binary() => any()}.


%% Example:
%% describe_event_configurations_response() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"eventConfigurations">> => map(),
%%   <<"lastModifiedDate">> => non_neg_integer()
%% }
-type describe_event_configurations_response() :: #{binary() => any()}.


%% Example:
%% create_provisioning_template_request() :: #{
%%   <<"description">> => string(),
%%   <<"enabled">> => boolean(),
%%   <<"preProvisioningHook">> => provisioning_hook(),
%%   <<"provisioningRoleArn">> := string(),
%%   <<"tags">> => list(tag()()),
%%   <<"templateBody">> := string(),
%%   <<"templateName">> := string(),
%%   <<"type">> => list(any())
%% }
-type create_provisioning_template_request() :: #{binary() => any()}.


%% Example:
%% stream_summary() :: #{
%%   <<"description">> => string(),
%%   <<"streamArn">> => string(),
%%   <<"streamId">> => string(),
%%   <<"streamVersion">> => integer()
%% }
-type stream_summary() :: #{binary() => any()}.


%% Example:
%% describe_thing_group_response() :: #{
%%   <<"indexName">> => string(),
%%   <<"queryString">> => string(),
%%   <<"queryVersion">> => string(),
%%   <<"status">> => list(any()),
%%   <<"thingGroupArn">> => string(),
%%   <<"thingGroupId">> => string(),
%%   <<"thingGroupMetadata">> => thing_group_metadata(),
%%   <<"thingGroupName">> => string(),
%%   <<"thingGroupProperties">> => thing_group_properties(),
%%   <<"version">> => float()
%% }
-type describe_thing_group_response() :: #{binary() => any()}.

%% Example:
%% delete_thing_response() :: #{}
-type delete_thing_response() :: #{}.


%% Example:
%% validate_security_profile_behaviors_request() :: #{
%%   <<"behaviors">> := list(behavior()())
%% }
-type validate_security_profile_behaviors_request() :: #{binary() => any()}.

%% Example:
%% describe_audit_task_request() :: #{}
-type describe_audit_task_request() :: #{}.


%% Example:
%% list_authorizers_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer(),
%%   <<"status">> => list(any())
%% }
-type list_authorizers_request() :: #{binary() => any()}.

%% Example:
%% delete_account_audit_configuration_response() :: #{}
-type delete_account_audit_configuration_response() :: #{}.


%% Example:
%% register_thing_response() :: #{
%%   <<"certificatePem">> => string(),
%%   <<"resourceArns">> => map()
%% }
-type register_thing_response() :: #{binary() => any()}.


%% Example:
%% list_role_aliases_response() :: #{
%%   <<"nextMarker">> => string(),
%%   <<"roleAliases">> => list(string()())
%% }
-type list_role_aliases_response() :: #{binary() => any()}.


%% Example:
%% remove_thing_from_thing_group_request() :: #{
%%   <<"thingArn">> => string(),
%%   <<"thingGroupArn">> => string(),
%%   <<"thingGroupName">> => string(),
%%   <<"thingName">> => string()
%% }
-type remove_thing_from_thing_group_request() :: #{binary() => any()}.


%% Example:
%% list_audit_suppressions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"suppressions">> => list(audit_suppression()())
%% }
-type list_audit_suppressions_response() :: #{binary() => any()}.


%% Example:
%% create_fleet_metric_response() :: #{
%%   <<"metricArn">> => string(),
%%   <<"metricName">> => string()
%% }
-type create_fleet_metric_response() :: #{binary() => any()}.


%% Example:
%% related_resource() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"resourceIdentifier">> => resource_identifier(),
%%   <<"resourceType">> => list(any())
%% }
-type related_resource() :: #{binary() => any()}.

%% Example:
%% delete_audit_suppression_response() :: #{}
-type delete_audit_suppression_response() :: #{}.


%% Example:
%% fleet_metric_name_and_arn() :: #{
%%   <<"metricArn">> => string(),
%%   <<"metricName">> => string()
%% }
-type fleet_metric_name_and_arn() :: #{binary() => any()}.

%% Example:
%% disassociate_sbom_from_package_version_response() :: #{}
-type disassociate_sbom_from_package_version_response() :: #{}.


%% Example:
%% implicit_deny() :: #{
%%   <<"policies">> => list(policy()())
%% }
-type implicit_deny() :: #{binary() => any()}.

%% Example:
%% delete_topic_rule_destination_response() :: #{}
-type delete_topic_rule_destination_response() :: #{}.


%% Example:
%% vpc_destination_summary() :: #{
%%   <<"roleArn">> => string(),
%%   <<"securityGroups">> => list(string()()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcId">> => string()
%% }
-type vpc_destination_summary() :: #{binary() => any()}.


%% Example:
%% resource_registration_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_registration_failure_exception() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% accept_certificate_transfer_request() :: #{
%%   <<"setAsActive">> => boolean()
%% }
-type accept_certificate_transfer_request() :: #{binary() => any()}.


%% Example:
%% iot_site_wise_action() :: #{
%%   <<"putAssetPropertyValueEntries">> => list(put_asset_property_value_entry()()),
%%   <<"roleArn">> => string()
%% }
-type iot_site_wise_action() :: #{binary() => any()}.


%% Example:
%% update_thing_group_response() :: #{
%%   <<"version">> => float()
%% }
-type update_thing_group_response() :: #{binary() => any()}.


%% Example:
%% describe_scheduled_audit_response() :: #{
%%   <<"dayOfMonth">> => string(),
%%   <<"dayOfWeek">> => list(any()),
%%   <<"frequency">> => list(any()),
%%   <<"scheduledAuditArn">> => string(),
%%   <<"scheduledAuditName">> => string(),
%%   <<"targetCheckNames">> => list(string()())
%% }
-type describe_scheduled_audit_response() :: #{binary() => any()}.

%% Example:
%% get_package_version_request() :: #{}
-type get_package_version_request() :: #{}.


%% Example:
%% list_billing_groups_response() :: #{
%%   <<"billingGroups">> => list(group_name_and_arn()()),
%%   <<"nextToken">> => string()
%% }
-type list_billing_groups_response() :: #{binary() => any()}.


%% Example:
%% create_topic_rule_destination_request() :: #{
%%   <<"destinationConfiguration">> := topic_rule_destination_configuration()
%% }
-type create_topic_rule_destination_request() :: #{binary() => any()}.


%% Example:
%% active_violation() :: #{
%%   <<"behavior">> => behavior(),
%%   <<"lastViolationTime">> => non_neg_integer(),
%%   <<"lastViolationValue">> => metric_value(),
%%   <<"securityProfileName">> => string(),
%%   <<"thingName">> => string(),
%%   <<"verificationState">> => list(any()),
%%   <<"verificationStateDescription">> => string(),
%%   <<"violationEventAdditionalInfo">> => violation_event_additional_info(),
%%   <<"violationId">> => string(),
%%   <<"violationStartTime">> => non_neg_integer()
%% }
-type active_violation() :: #{binary() => any()}.


%% Example:
%% detect_mitigation_actions_task_statistics() :: #{
%%   <<"actionsExecuted">> => float(),
%%   <<"actionsFailed">> => float(),
%%   <<"actionsSkipped">> => float()
%% }
-type detect_mitigation_actions_task_statistics() :: #{binary() => any()}.


%% Example:
%% list_things_request() :: #{
%%   <<"attributeName">> => string(),
%%   <<"attributeValue">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"thingTypeName">> => string(),
%%   <<"usePrefixAttributeValue">> => boolean()
%% }
-type list_things_request() :: #{binary() => any()}.


%% Example:
%% list_command_executions_response() :: #{
%%   <<"commandExecutions">> => list(command_execution_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_command_executions_response() :: #{binary() => any()}.

%% Example:
%% get_logging_options_request() :: #{}
-type get_logging_options_request() :: #{}.


%% Example:
%% test_invoke_authorizer_response() :: #{
%%   <<"disconnectAfterInSeconds">> => integer(),
%%   <<"isAuthenticated">> => boolean(),
%%   <<"policyDocuments">> => list(string()()),
%%   <<"principalId">> => string(),
%%   <<"refreshAfterInSeconds">> => integer()
%% }
-type test_invoke_authorizer_response() :: #{binary() => any()}.


%% Example:
%% list_audit_findings_request() :: #{
%%   <<"checkName">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"listSuppressedFindings">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceIdentifier">> => resource_identifier(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"taskId">> => string()
%% }
-type list_audit_findings_request() :: #{binary() => any()}.


%% Example:
%% location_action() :: #{
%%   <<"deviceId">> => string(),
%%   <<"latitude">> => string(),
%%   <<"longitude">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"timestamp">> => location_timestamp(),
%%   <<"trackerName">> => string()
%% }
-type location_action() :: #{binary() => any()}.


%% Example:
%% list_thing_types_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"thingTypeName">> => string()
%% }
-type list_thing_types_request() :: #{binary() => any()}.

%% Example:
%% describe_role_alias_request() :: #{}
-type describe_role_alias_request() :: #{}.


%% Example:
%% thing_type_metadata() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"deprecated">> => boolean(),
%%   <<"deprecationDate">> => non_neg_integer()
%% }
-type thing_type_metadata() :: #{binary() => any()}.


%% Example:
%% get_effective_policies_request() :: #{
%%   <<"cognitoIdentityPoolId">> => string(),
%%   <<"principal">> => string(),
%%   <<"thingName">> => string()
%% }
-type get_effective_policies_request() :: #{binary() => any()}.


%% Example:
%% list_topic_rule_destinations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_topic_rule_destinations_request() :: #{binary() => any()}.


%% Example:
%% get_topic_rule_destination_response() :: #{
%%   <<"topicRuleDestination">> => topic_rule_destination()
%% }
-type get_topic_rule_destination_response() :: #{binary() => any()}.


%% Example:
%% package_version_summary() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"packageName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"versionName">> => string()
%% }
-type package_version_summary() :: #{binary() => any()}.


%% Example:
%% update_dynamic_thing_group_response() :: #{
%%   <<"version">> => float()
%% }
-type update_dynamic_thing_group_response() :: #{binary() => any()}.


%% Example:
%% describe_dimension_response() :: #{
%%   <<"arn">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"stringValues">> => list(string()()),
%%   <<"type">> => list(any())
%% }
-type describe_dimension_response() :: #{binary() => any()}.


%% Example:
%% list_audit_suppressions_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"checkName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceIdentifier">> => resource_identifier()
%% }
-type list_audit_suppressions_request() :: #{binary() => any()}.


%% Example:
%% add_thing_to_billing_group_request() :: #{
%%   <<"billingGroupArn">> => string(),
%%   <<"billingGroupName">> => string(),
%%   <<"thingArn">> => string(),
%%   <<"thingName">> => string()
%% }
-type add_thing_to_billing_group_request() :: #{binary() => any()}.


%% Example:
%% get_cardinality_request() :: #{
%%   <<"aggregationField">> => string(),
%%   <<"indexName">> => string(),
%%   <<"queryString">> := string(),
%%   <<"queryVersion">> => string()
%% }
-type get_cardinality_request() :: #{binary() => any()}.


%% Example:
%% stream() :: #{
%%   <<"fileId">> => integer(),
%%   <<"streamId">> => string()
%% }
-type stream() :: #{binary() => any()}.

%% Example:
%% delete_dynamic_thing_group_response() :: #{}
-type delete_dynamic_thing_group_response() :: #{}.


%% Example:
%% list_detect_mitigation_actions_executions_response() :: #{
%%   <<"actionsExecutions">> => list(detect_mitigation_action_execution()()),
%%   <<"nextToken">> => string()
%% }
-type list_detect_mitigation_actions_executions_response() :: #{binary() => any()}.


%% Example:
%% list_job_templates_response() :: #{
%%   <<"jobTemplates">> => list(job_template_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_job_templates_response() :: #{binary() => any()}.


%% Example:
%% non_compliant_resource() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"resourceIdentifier">> => resource_identifier(),
%%   <<"resourceType">> => list(any())
%% }
-type non_compliant_resource() :: #{binary() => any()}.


%% Example:
%% describe_mitigation_action_response() :: #{
%%   <<"actionArn">> => string(),
%%   <<"actionId">> => string(),
%%   <<"actionName">> => string(),
%%   <<"actionParams">> => mitigation_action_params(),
%%   <<"actionType">> => list(any()),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"roleArn">> => string()
%% }
-type describe_mitigation_action_response() :: #{binary() => any()}.


%% Example:
%% stream_info() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"files">> => list(stream_file()()),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"roleArn">> => string(),
%%   <<"streamArn">> => string(),
%%   <<"streamId">> => string(),
%%   <<"streamVersion">> => integer()
%% }
-type stream_info() :: #{binary() => any()}.


%% Example:
%% topic_rule_payload() :: #{
%%   <<"actions">> => list(action()()),
%%   <<"awsIotSqlVersion">> => string(),
%%   <<"description">> => string(),
%%   <<"errorAction">> => action(),
%%   <<"ruleDisabled">> => boolean(),
%%   <<"sql">> => string()
%% }
-type topic_rule_payload() :: #{binary() => any()}.

%% Example:
%% update_account_audit_configuration_response() :: #{}
-type update_account_audit_configuration_response() :: #{}.


%% Example:
%% explicit_deny() :: #{
%%   <<"policies">> => list(policy()())
%% }
-type explicit_deny() :: #{binary() => any()}.


%% Example:
%% delete_dynamic_thing_group_request() :: #{
%%   <<"expectedVersion">> => float()
%% }
-type delete_dynamic_thing_group_request() :: #{binary() => any()}.


%% Example:
%% delete_v2_logging_level_request() :: #{
%%   <<"targetName">> := string(),
%%   <<"targetType">> := list(any())
%% }
-type delete_v2_logging_level_request() :: #{binary() => any()}.

%% Example:
%% describe_billing_group_request() :: #{}
-type describe_billing_group_request() :: #{}.


%% Example:
%% list_mitigation_actions_response() :: #{
%%   <<"actionIdentifiers">> => list(mitigation_action_identifier()()),
%%   <<"nextToken">> => string()
%% }
-type list_mitigation_actions_response() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceId">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% certificate_validity() :: #{
%%   <<"notAfter">> => non_neg_integer(),
%%   <<"notBefore">> => non_neg_integer()
%% }
-type certificate_validity() :: #{binary() => any()}.


%% Example:
%% scheduled_job_rollout() :: #{
%%   <<"startTime">> => string()
%% }
-type scheduled_job_rollout() :: #{binary() => any()}.


%% Example:
%% aws_job_exponential_rollout_rate() :: #{
%%   <<"baseRatePerMinute">> => integer(),
%%   <<"incrementFactor">> => float(),
%%   <<"rateIncreaseCriteria">> => aws_job_rate_increase_criteria()
%% }
-type aws_job_exponential_rollout_rate() :: #{binary() => any()}.


%% Example:
%% list_outgoing_certificates_response() :: #{
%%   <<"nextMarker">> => string(),
%%   <<"outgoingCertificates">> => list(outgoing_certificate()())
%% }
-type list_outgoing_certificates_response() :: #{binary() => any()}.


%% Example:
%% list_custom_metrics_response() :: #{
%%   <<"metricNames">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_custom_metrics_response() :: #{binary() => any()}.


%% Example:
%% create_dimension_request() :: #{
%%   <<"clientRequestToken">> := string(),
%%   <<"stringValues">> := list(string()()),
%%   <<"tags">> => list(tag()()),
%%   <<"type">> := list(any())
%% }
-type create_dimension_request() :: #{binary() => any()}.


%% Example:
%% list_certificates_by_ca_request() :: #{
%%   <<"ascendingOrder">> => boolean(),
%%   <<"marker">> => string(),
%%   <<"pageSize">> => integer()
%% }
-type list_certificates_by_ca_request() :: #{binary() => any()}.


%% Example:
%% create_package_version_response() :: #{
%%   <<"attributes">> => map(),
%%   <<"description">> => string(),
%%   <<"errorReason">> => string(),
%%   <<"packageName">> => string(),
%%   <<"packageVersionArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"versionName">> => string()
%% }
-type create_package_version_response() :: #{binary() => any()}.


%% Example:
%% version_update_by_jobs_config() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"roleArn">> => string()
%% }
-type version_update_by_jobs_config() :: #{binary() => any()}.

%% Example:
%% add_thing_to_billing_group_response() :: #{}
-type add_thing_to_billing_group_response() :: #{}.


%% Example:
%% create_command_response() :: #{
%%   <<"commandArn">> => string(),
%%   <<"commandId">> => string()
%% }
-type create_command_response() :: #{binary() => any()}.


%% Example:
%% audit_mitigation_actions_task_target() :: #{
%%   <<"auditCheckToReasonCodeFilter">> => map(),
%%   <<"auditTaskId">> => string(),
%%   <<"findingIds">> => list(string()())
%% }
-type audit_mitigation_actions_task_target() :: #{binary() => any()}.


%% Example:
%% package_version_artifact() :: #{
%%   <<"s3Location">> => s3_location()
%% }
-type package_version_artifact() :: #{binary() => any()}.


%% Example:
%% get_v2_logging_options_response() :: #{
%%   <<"defaultLogLevel">> => list(any()),
%%   <<"disableAllLogs">> => boolean(),
%%   <<"roleArn">> => string()
%% }
-type get_v2_logging_options_response() :: #{binary() => any()}.


%% Example:
%% topic_rule_destination() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"httpUrlProperties">> => http_url_destination_properties(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => string(),
%%   <<"vpcProperties">> => vpc_destination_properties()
%% }
-type topic_rule_destination() :: #{binary() => any()}.


%% Example:
%% vpc_destination_configuration() :: #{
%%   <<"roleArn">> => string(),
%%   <<"securityGroups">> => list(string()()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcId">> => string()
%% }
-type vpc_destination_configuration() :: #{binary() => any()}.


%% Example:
%% command_summary() :: #{
%%   <<"commandArn">> => string(),
%%   <<"commandId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deprecated">> => boolean(),
%%   <<"displayName">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"pendingDeletion">> => boolean()
%% }
-type command_summary() :: #{binary() => any()}.


%% Example:
%% audit_notification_target() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"roleArn">> => string(),
%%   <<"targetArn">> => string()
%% }
-type audit_notification_target() :: #{binary() => any()}.


%% Example:
%% list_security_profiles_request() :: #{
%%   <<"dimensionName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"metricName">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_security_profiles_request() :: #{binary() => any()}.


%% Example:
%% list_metric_values_request() :: #{
%%   <<"dimensionName">> => string(),
%%   <<"dimensionValueOperator">> => list(any()),
%%   <<"endTime">> := non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"metricName">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> := non_neg_integer(),
%%   <<"thingName">> := string()
%% }
-type list_metric_values_request() :: #{binary() => any()}.


%% Example:
%% cancel_job_response() :: #{
%%   <<"description">> => string(),
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string()
%% }
-type cancel_job_response() :: #{binary() => any()}.


%% Example:
%% maintenance_window() :: #{
%%   <<"durationInMinutes">> => integer(),
%%   <<"startTime">> => string()
%% }
-type maintenance_window() :: #{binary() => any()}.


%% Example:
%% create_domain_configuration_request() :: #{
%%   <<"applicationProtocol">> => list(any()),
%%   <<"authenticationType">> => list(any()),
%%   <<"authorizerConfig">> => authorizer_config(),
%%   <<"clientCertificateConfig">> => client_certificate_config(),
%%   <<"domainName">> => string(),
%%   <<"serverCertificateArns">> => list(string()()),
%%   <<"serverCertificateConfig">> => server_certificate_config(),
%%   <<"serviceType">> => list(any()),
%%   <<"tags">> => list(tag()()),
%%   <<"tlsConfig">> => tls_config(),
%%   <<"validationCertificateArn">> => string()
%% }
-type create_domain_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_provisioning_template_response() :: #{}
-type delete_provisioning_template_response() :: #{}.


%% Example:
%% update_security_profile_response() :: #{
%%   <<"additionalMetricsToRetain">> => list(string()()),
%%   <<"additionalMetricsToRetainV2">> => list(metric_to_retain()()),
%%   <<"alertTargets">> => map(),
%%   <<"behaviors">> => list(behavior()()),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"metricsExportConfig">> => metrics_export_config(),
%%   <<"securityProfileArn">> => string(),
%%   <<"securityProfileDescription">> => string(),
%%   <<"securityProfileName">> => string(),
%%   <<"version">> => float()
%% }
-type update_security_profile_response() :: #{binary() => any()}.


%% Example:
%% list_targets_for_security_profile_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_targets_for_security_profile_request() :: #{binary() => any()}.

%% Example:
%% delete_registration_code_request() :: #{}
-type delete_registration_code_request() :: #{}.

%% Example:
%% describe_thing_type_request() :: #{}
-type describe_thing_type_request() :: #{}.


%% Example:
%% job_execution_summary() :: #{
%%   <<"executionNumber">> => float(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"queuedAt">> => non_neg_integer(),
%%   <<"retryAttempt">> => integer(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type job_execution_summary() :: #{binary() => any()}.


%% Example:
%% update_device_certificate_params() :: #{
%%   <<"action">> => list(any())
%% }
-type update_device_certificate_params() :: #{binary() => any()}.


%% Example:
%% list_managed_job_templates_response() :: #{
%%   <<"managedJobTemplates">> => list(managed_job_template_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_job_templates_response() :: #{binary() => any()}.


%% Example:
%% update_account_audit_configuration_request() :: #{
%%   <<"auditCheckConfigurations">> => map(),
%%   <<"auditNotificationTargetConfigurations">> => map(),
%%   <<"roleArn">> => string()
%% }
-type update_account_audit_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_package_request() :: #{}
-type get_package_request() :: #{}.


%% Example:
%% list_principal_things_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principal">> := string()
%% }
-type list_principal_things_request() :: #{binary() => any()}.


%% Example:
%% get_cardinality_response() :: #{
%%   <<"cardinality">> => integer()
%% }
-type get_cardinality_response() :: #{binary() => any()}.


%% Example:
%% detach_thing_principal_request() :: #{
%%   <<"principal">> := string()
%% }
-type detach_thing_principal_request() :: #{binary() => any()}.


%% Example:
%% audit_suppression() :: #{
%%   <<"checkName">> => string(),
%%   <<"description">> => string(),
%%   <<"expirationDate">> => non_neg_integer(),
%%   <<"resourceIdentifier">> => resource_identifier(),
%%   <<"suppressIndefinitely">> => boolean()
%% }
-type audit_suppression() :: #{binary() => any()}.


%% Example:
%% start_on_demand_audit_task_request() :: #{
%%   <<"targetCheckNames">> := list(string()())
%% }
-type start_on_demand_audit_task_request() :: #{binary() => any()}.

%% Example:
%% clear_default_authorizer_request() :: #{}
-type clear_default_authorizer_request() :: #{}.

%% Example:
%% describe_thing_request() :: #{}
-type describe_thing_request() :: #{}.


%% Example:
%% transfer_data() :: #{
%%   <<"acceptDate">> => non_neg_integer(),
%%   <<"rejectDate">> => non_neg_integer(),
%%   <<"rejectReason">> => string(),
%%   <<"transferDate">> => non_neg_integer(),
%%   <<"transferMessage">> => string()
%% }
-type transfer_data() :: #{binary() => any()}.


%% Example:
%% list_packages_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"packageSummaries">> => list(package_summary()())
%% }
-type list_packages_response() :: #{binary() => any()}.


%% Example:
%% search_index_request() :: #{
%%   <<"indexName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"queryString">> := string(),
%%   <<"queryVersion">> => string()
%% }
-type search_index_request() :: #{binary() => any()}.


%% Example:
%% command_parameter_value() :: #{
%%   <<"B">> => boolean(),
%%   <<"BIN">> => binary(),
%%   <<"D">> => float(),
%%   <<"I">> => integer(),
%%   <<"L">> => float(),
%%   <<"S">> => string(),
%%   <<"UL">> => string()
%% }
-type command_parameter_value() :: #{binary() => any()}.


%% Example:
%% transfer_certificate_response() :: #{
%%   <<"transferredCertificateArn">> => string()
%% }
-type transfer_certificate_response() :: #{binary() => any()}.


%% Example:
%% get_package_response() :: #{
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"defaultVersionName">> => string(),
%%   <<"description">> => string(),
%%   <<"lastModifiedDate">> => non_neg_integer(),
%%   <<"packageArn">> => string(),
%%   <<"packageName">> => string()
%% }
-type get_package_response() :: #{binary() => any()}.


%% Example:
%% transfer_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type transfer_conflict_exception() :: #{binary() => any()}.


%% Example:
%% list_targets_for_security_profile_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"securityProfileTargets">> => list(security_profile_target()())
%% }
-type list_targets_for_security_profile_response() :: #{binary() => any()}.


%% Example:
%% describe_stream_response() :: #{
%%   <<"streamInfo">> => stream_info()
%% }
-type describe_stream_response() :: #{binary() => any()}.


%% Example:
%% create_custom_metric_response() :: #{
%%   <<"metricArn">> => string(),
%%   <<"metricName">> => string()
%% }
-type create_custom_metric_response() :: #{binary() => any()}.

%% Example:
%% update_provisioning_template_response() :: #{}
-type update_provisioning_template_response() :: #{}.

%% Example:
%% delete_domain_configuration_response() :: #{}
-type delete_domain_configuration_response() :: #{}.


%% Example:
%% audit_check_details() :: #{
%%   <<"checkCompliant">> => boolean(),
%%   <<"checkRunStatus">> => list(any()),
%%   <<"errorCode">> => string(),
%%   <<"message">> => string(),
%%   <<"nonCompliantResourcesCount">> => float(),
%%   <<"suppressedNonCompliantResourcesCount">> => float(),
%%   <<"totalResourcesCount">> => float()
%% }
-type audit_check_details() :: #{binary() => any()}.


%% Example:
%% list_certificates_by_ca_response() :: #{
%%   <<"certificates">> => list(certificate()()),
%%   <<"nextMarker">> => string()
%% }
-type list_certificates_by_ca_response() :: #{binary() => any()}.


%% Example:
%% thing_type_properties() :: #{
%%   <<"mqtt5Configuration">> => mqtt5_configuration(),
%%   <<"searchableAttributes">> => list(string()()),
%%   <<"thingTypeDescription">> => string()
%% }
-type thing_type_properties() :: #{binary() => any()}.


%% Example:
%% list_job_executions_for_job_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_job_executions_for_job_request() :: #{binary() => any()}.


%% Example:
%% update_authorizer_request() :: #{
%%   <<"authorizerFunctionArn">> => string(),
%%   <<"enableCachingForHttp">> => boolean(),
%%   <<"status">> => list(any()),
%%   <<"tokenKeyName">> => string(),
%%   <<"tokenSigningPublicKeys">> => map()
%% }
-type update_authorizer_request() :: #{binary() => any()}.


%% Example:
%% auth_result() :: #{
%%   <<"allowed">> => allowed(),
%%   <<"authDecision">> => list(any()),
%%   <<"authInfo">> => auth_info(),
%%   <<"denied">> => denied(),
%%   <<"missingContextValues">> => list(string()())
%% }
-type auth_result() :: #{binary() => any()}.

%% Example:
%% delete_role_alias_request() :: #{}
-type delete_role_alias_request() :: #{}.


%% Example:
%% update_domain_configuration_response() :: #{
%%   <<"domainConfigurationArn">> => string(),
%%   <<"domainConfigurationName">> => string()
%% }
-type update_domain_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_certificates_response() :: #{
%%   <<"certificates">> => list(certificate()()),
%%   <<"nextMarker">> => string()
%% }
-type list_certificates_response() :: #{binary() => any()}.


%% Example:
%% list_principal_things_v2_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principal">> := string(),
%%   <<"thingPrincipalType">> => list(any())
%% }
-type list_principal_things_v2_request() :: #{binary() => any()}.


%% Example:
%% test_authorization_request() :: #{
%%   <<"authInfos">> := list(auth_info()()),
%%   <<"clientId">> => string(),
%%   <<"cognitoIdentityPoolId">> => string(),
%%   <<"policyNamesToAdd">> => list(string()()),
%%   <<"policyNamesToSkip">> => list(string()()),
%%   <<"principal">> => string()
%% }
-type test_authorization_request() :: #{binary() => any()}.


%% Example:
%% describe_thing_type_response() :: #{
%%   <<"thingTypeArn">> => string(),
%%   <<"thingTypeId">> => string(),
%%   <<"thingTypeMetadata">> => thing_type_metadata(),
%%   <<"thingTypeName">> => string(),
%%   <<"thingTypeProperties">> => thing_type_properties()
%% }
-type describe_thing_type_response() :: #{binary() => any()}.


%% Example:
%% log_target_configuration() :: #{
%%   <<"logLevel">> => list(any()),
%%   <<"logTarget">> => log_target()
%% }
-type log_target_configuration() :: #{binary() => any()}.


%% Example:
%% aggregation_type() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string()())
%% }
-type aggregation_type() :: #{binary() => any()}.

%% Example:
%% stop_thing_registration_task_response() :: #{}
-type stop_thing_registration_task_response() :: #{}.


%% Example:
%% salesforce_action() :: #{
%%   <<"token">> => string(),
%%   <<"url">> => string()
%% }
-type salesforce_action() :: #{binary() => any()}.


%% Example:
%% describe_managed_job_template_response() :: #{
%%   <<"description">> => string(),
%%   <<"document">> => string(),
%%   <<"documentParameters">> => list(document_parameter()()),
%%   <<"environments">> => list(string()()),
%%   <<"templateArn">> => string(),
%%   <<"templateName">> => string(),
%%   <<"templateVersion">> => string()
%% }
-type describe_managed_job_template_response() :: #{binary() => any()}.


%% Example:
%% create_thing_type_request() :: #{
%%   <<"tags">> => list(tag()()),
%%   <<"thingTypeProperties">> => thing_type_properties()
%% }
-type create_thing_type_request() :: #{binary() => any()}.

%% Example:
%% delete_registration_code_response() :: #{}
-type delete_registration_code_response() :: #{}.


%% Example:
%% add_thing_to_thing_group_request() :: #{
%%   <<"overrideDynamicGroups">> => boolean(),
%%   <<"thingArn">> => string(),
%%   <<"thingGroupArn">> => string(),
%%   <<"thingGroupName">> => string(),
%%   <<"thingName">> => string()
%% }
-type add_thing_to_thing_group_request() :: #{binary() => any()}.


%% Example:
%% job_execution_summary_for_job() :: #{
%%   <<"jobExecutionSummary">> => job_execution_summary(),
%%   <<"thingArn">> => string()
%% }
-type job_execution_summary_for_job() :: #{binary() => any()}.


%% Example:
%% list_package_versions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"packageVersionSummaries">> => list(package_version_summary()())
%% }
-type list_package_versions_response() :: #{binary() => any()}.


%% Example:
%% outgoing_certificate() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"certificateId">> => string(),
%%   <<"creationDate">> => non_neg_integer(),
%%   <<"transferDate">> => non_neg_integer(),
%%   <<"transferMessage">> => string(),
%%   <<"transferredTo">> => string()
%% }
-type outgoing_certificate() :: #{binary() => any()}.


%% Example:
%% sqs_action() :: #{
%%   <<"queueUrl">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"useBase64">> => boolean()
%% }
-type sqs_action() :: #{binary() => any()}.


%% Example:
%% update_topic_rule_destination_request() :: #{
%%   <<"arn">> := string(),
%%   <<"status">> := list(any())
%% }
-type update_topic_rule_destination_request() :: #{binary() => any()}.


%% Example:
%% thing_type_definition() :: #{
%%   <<"thingTypeArn">> => string(),
%%   <<"thingTypeMetadata">> => thing_type_metadata(),
%%   <<"thingTypeName">> => string(),
%%   <<"thingTypeProperties">> => thing_type_properties()
%% }
-type thing_type_definition() :: #{binary() => any()}.

%% Example:
%% describe_fleet_metric_request() :: #{}
-type describe_fleet_metric_request() :: #{}.


%% Example:
%% cloudwatch_logs_action() :: #{
%%   <<"batchMode">> => boolean(),
%%   <<"logGroupName">> => string(),
%%   <<"roleArn">> => string()
%% }
-type cloudwatch_logs_action() :: #{binary() => any()}.


%% Example:
%% job_template_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"jobTemplateArn">> => string(),
%%   <<"jobTemplateId">> => string()
%% }
-type job_template_summary() :: #{binary() => any()}.


%% Example:
%% iot_events_action() :: #{
%%   <<"batchMode">> => boolean(),
%%   <<"inputName">> => string(),
%%   <<"messageId">> => string(),
%%   <<"roleArn">> => string()
%% }
-type iot_events_action() :: #{binary() => any()}.


%% Example:
%% vpc_destination_properties() :: #{
%%   <<"roleArn">> => string(),
%%   <<"securityGroups">> => list(string()()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcId">> => string()
%% }
-type vpc_destination_properties() :: #{binary() => any()}.


%% Example:
%% create_role_alias_response() :: #{
%%   <<"roleAlias">> => string(),
%%   <<"roleAliasArn">> => string()
%% }
-type create_role_alias_response() :: #{binary() => any()}.

%% Example:
%% delete_package_version_response() :: #{}
-type delete_package_version_response() :: #{}.

-type accept_certificate_transfer_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    transfer_already_completed_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type add_thing_to_billing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type add_thing_to_thing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type associate_sbom_with_package_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_targets_with_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type attach_policy_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type attach_principal_policy_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type attach_security_profile_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type attach_thing_principal_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type cancel_audit_mitigation_actions_task_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type cancel_audit_task_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type cancel_certificate_transfer_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    transfer_already_completed_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type cancel_detect_mitigation_actions_task_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type cancel_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type cancel_job_execution_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_state_transition_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    version_conflict_exception().

-type clear_default_authorizer_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type confirm_topic_rule_destination_errors() ::
    conflicting_resource_update_exception() | 
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type create_audit_suppression_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_authorizer_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_billing_group_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_certificate_from_csr_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_certificate_provider_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_command_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_custom_metric_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_dimension_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_domain_configuration_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    certificate_validation_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_dynamic_thing_group_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_query_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_fleet_metric_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    index_not_ready_exception() | 
    invalid_query_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_aggregation_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_job_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_job_template_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type create_keys_and_certificate_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_mitigation_action_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_ota_update_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_package_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_policy_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    malformed_policy_exception() | 
    internal_failure_exception().

-type create_policy_version_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    versions_limit_exceeded_exception() | 
    unauthorized_exception() | 
    malformed_policy_exception() | 
    internal_failure_exception().

-type create_provisioning_claim_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_provisioning_template_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_provisioning_template_version_errors() ::
    throttling_exception() | 
    conflicting_resource_update_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    versions_limit_exceeded_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_role_alias_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_scheduled_audit_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_security_profile_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_stream_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_thing_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_thing_group_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_thing_type_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type create_topic_rule_errors() ::
    resource_already_exists_exception() | 
    sql_parse_exception() | 
    conflicting_resource_update_exception() | 
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception().

-type create_topic_rule_destination_errors() ::
    resource_already_exists_exception() | 
    conflicting_resource_update_exception() | 
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception().

-type delete_account_audit_configuration_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_audit_suppression_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type delete_authorizer_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    delete_conflict_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_billing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type delete_ca_certificate_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    certificate_state_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_certificate_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    certificate_state_exception() | 
    delete_conflict_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_certificate_provider_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    delete_conflict_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_command_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_command_execution_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_custom_metric_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type delete_dimension_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type delete_domain_configuration_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_dynamic_thing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type delete_fleet_metric_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type delete_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_state_transition_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_job_execution_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_state_transition_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_job_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_mitigation_action_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type delete_ota_update_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type delete_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type delete_package_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type delete_policy_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    delete_conflict_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_policy_version_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    delete_conflict_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_provisioning_template_errors() ::
    throttling_exception() | 
    conflicting_resource_update_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    delete_conflict_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_provisioning_template_version_errors() ::
    throttling_exception() | 
    conflicting_resource_update_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    delete_conflict_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_registration_code_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_role_alias_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    delete_conflict_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_scheduled_audit_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_security_profile_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type delete_stream_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    delete_conflict_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_thing_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type delete_thing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type delete_thing_type_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type delete_topic_rule_errors() ::
    conflicting_resource_update_exception() | 
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type delete_topic_rule_destination_errors() ::
    conflicting_resource_update_exception() | 
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type delete_v2_logging_level_errors() ::
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception().

-type deprecate_thing_type_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_account_audit_configuration_errors() ::
    throttling_exception() | 
    internal_failure_exception().

-type describe_audit_finding_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_audit_mitigation_actions_task_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_audit_suppression_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_audit_task_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_authorizer_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_billing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_ca_certificate_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_certificate_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_certificate_provider_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_custom_metric_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_default_authorizer_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_detect_mitigation_actions_task_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_dimension_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_domain_configuration_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_endpoint_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_event_configurations_errors() ::
    throttling_exception() | 
    internal_failure_exception().

-type describe_fleet_metric_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_index_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_job_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_job_execution_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_job_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_managed_job_template_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_mitigation_action_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_provisioning_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_provisioning_template_version_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_role_alias_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_scheduled_audit_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_security_profile_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_stream_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_thing_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_thing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_thing_registration_task_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type describe_thing_type_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type detach_policy_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type detach_principal_policy_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type detach_security_profile_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type detach_thing_principal_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type disable_topic_rule_errors() ::
    conflicting_resource_update_exception() | 
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type disassociate_sbom_from_package_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type enable_topic_rule_errors() ::
    conflicting_resource_update_exception() | 
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type get_behavior_model_training_summaries_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_buckets_aggregation_errors() ::
    throttling_exception() | 
    index_not_ready_exception() | 
    invalid_query_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_aggregation_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_cardinality_errors() ::
    throttling_exception() | 
    index_not_ready_exception() | 
    invalid_query_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_aggregation_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_command_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_command_execution_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_effective_policies_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_indexing_configuration_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_job_document_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_logging_options_errors() ::
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception().

-type get_ota_update_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_package_configuration_errors() ::
    throttling_exception() | 
    internal_server_exception().

-type get_package_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_percentiles_errors() ::
    throttling_exception() | 
    index_not_ready_exception() | 
    invalid_query_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_aggregation_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_policy_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_policy_version_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_registration_code_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_statistics_errors() ::
    throttling_exception() | 
    index_not_ready_exception() | 
    invalid_query_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_aggregation_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_thing_connectivity_data_errors() ::
    throttling_exception() | 
    index_not_ready_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type get_topic_rule_errors() ::
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type get_topic_rule_destination_errors() ::
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type get_v2_logging_options_errors() ::
    internal_exception() | 
    not_configured_exception() | 
    service_unavailable_exception().

-type list_active_violations_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_attached_policies_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_audit_findings_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_audit_mitigation_actions_executions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_audit_mitigation_actions_tasks_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_audit_suppressions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_audit_tasks_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_authorizers_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_billing_groups_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_ca_certificates_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_certificate_providers_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_certificates_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_certificates_by_ca_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_command_executions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_commands_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_custom_metrics_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_detect_mitigation_actions_executions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_detect_mitigation_actions_tasks_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_dimensions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_domain_configurations_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_fleet_metrics_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_indices_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_job_executions_for_job_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_job_executions_for_thing_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_job_templates_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_jobs_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_managed_job_templates_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_metric_values_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_mitigation_actions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_ota_updates_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_outgoing_certificates_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_package_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_packages_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_policies_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_policy_principals_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_policy_versions_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_principal_policies_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_principal_things_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_principal_things_v2_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_provisioning_template_versions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_provisioning_templates_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_related_resources_for_audit_finding_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_role_aliases_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_sbom_validation_results_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_scheduled_audits_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_security_profiles_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_security_profiles_for_target_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_streams_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_targets_for_policy_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_targets_for_security_profile_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_thing_groups_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_thing_groups_for_thing_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_thing_principals_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_thing_principals_v2_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_thing_registration_task_reports_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_thing_registration_tasks_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_thing_types_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_things_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type list_things_in_billing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_things_in_thing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_topic_rule_destinations_errors() ::
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type list_topic_rules_errors() ::
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception().

-type list_v2_logging_levels_errors() ::
    internal_exception() | 
    not_configured_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception().

-type list_violation_events_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type put_verification_state_on_violation_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type register_ca_certificate_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    certificate_validation_exception() | 
    registration_code_validation_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type register_certificate_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    certificate_validation_exception() | 
    service_unavailable_exception() | 
    certificate_conflict_exception() | 
    invalid_request_exception() | 
    certificate_state_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type register_certificate_without_ca_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    certificate_validation_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    certificate_state_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type register_thing_errors() ::
    resource_registration_failure_exception() | 
    throttling_exception() | 
    conflicting_resource_update_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type reject_certificate_transfer_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    transfer_already_completed_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type remove_thing_from_billing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type remove_thing_from_thing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type replace_topic_rule_errors() ::
    sql_parse_exception() | 
    conflicting_resource_update_exception() | 
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type search_index_errors() ::
    throttling_exception() | 
    index_not_ready_exception() | 
    invalid_query_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type set_default_authorizer_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type set_default_policy_version_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type set_logging_options_errors() ::
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception().

-type set_v2_logging_level_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    not_configured_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception().

-type set_v2_logging_options_errors() ::
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception().

-type start_audit_mitigation_actions_task_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    task_already_exists_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type start_detect_mitigation_actions_task_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    task_already_exists_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type start_on_demand_audit_task_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type start_thing_registration_task_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type stop_thing_registration_task_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type test_authorization_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type test_invoke_authorizer_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    invalid_response_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type transfer_certificate_errors() ::
    transfer_conflict_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    certificate_state_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_account_audit_configuration_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type update_audit_suppression_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_authorizer_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_billing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type update_ca_certificate_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_certificate_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    certificate_state_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_certificate_provider_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_command_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_custom_metric_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_dimension_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_domain_configuration_errors() ::
    throttling_exception() | 
    certificate_validation_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_dynamic_thing_group_errors() ::
    throttling_exception() | 
    invalid_query_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type update_event_configurations_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type update_fleet_metric_errors() ::
    throttling_exception() | 
    index_not_ready_exception() | 
    invalid_query_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_aggregation_exception() | 
    unauthorized_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type update_indexing_configuration_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_job_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_mitigation_action_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_package_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type update_package_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_provisioning_template_errors() ::
    conflicting_resource_update_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_role_alias_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_scheduled_audit_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_security_profile_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type update_stream_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_thing_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type update_thing_group_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    version_conflict_exception() | 
    internal_failure_exception().

-type update_thing_groups_for_thing_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_thing_type_errors() ::
    throttling_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception() | 
    internal_failure_exception().

-type update_topic_rule_destination_errors() ::
    conflicting_resource_update_exception() | 
    internal_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type validate_security_profile_behaviors_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a pending certificate transfer.
%%
%% The default state of the certificate is
%% INACTIVE.
%%
%% To check for pending certificate transfers, call `ListCertificates'
%% to enumerate your certificates.
%%
%% Requires permission to access the AcceptCertificateTransfer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec accept_certificate_transfer(aws_client:aws_client(), binary() | list(), accept_certificate_transfer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, accept_certificate_transfer_errors(), tuple()}.
accept_certificate_transfer(Client, CertificateId, Input) ->
    accept_certificate_transfer(Client, CertificateId, Input, []).

-spec accept_certificate_transfer(aws_client:aws_client(), binary() | list(), accept_certificate_transfer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, accept_certificate_transfer_errors(), tuple()}.
accept_certificate_transfer(Client, CertificateId, Input0, Options0) ->
    Method = patch,
    Path = ["/accept-certificate-transfer/", aws_util:encode_uri(CertificateId), ""],
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
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a thing to a billing group.
%%
%% Requires permission to access the AddThingToBillingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec add_thing_to_billing_group(aws_client:aws_client(), add_thing_to_billing_group_request()) ->
    {ok, add_thing_to_billing_group_response(), tuple()} |
    {error, any()} |
    {error, add_thing_to_billing_group_errors(), tuple()}.
add_thing_to_billing_group(Client, Input) ->
    add_thing_to_billing_group(Client, Input, []).

-spec add_thing_to_billing_group(aws_client:aws_client(), add_thing_to_billing_group_request(), proplists:proplist()) ->
    {ok, add_thing_to_billing_group_response(), tuple()} |
    {error, any()} |
    {error, add_thing_to_billing_group_errors(), tuple()}.
add_thing_to_billing_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/billing-groups/addThingToBillingGroup"],
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

%% @doc Adds a thing to a thing group.
%%
%% Requires permission to access the AddThingToThingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec add_thing_to_thing_group(aws_client:aws_client(), add_thing_to_thing_group_request()) ->
    {ok, add_thing_to_thing_group_response(), tuple()} |
    {error, any()} |
    {error, add_thing_to_thing_group_errors(), tuple()}.
add_thing_to_thing_group(Client, Input) ->
    add_thing_to_thing_group(Client, Input, []).

-spec add_thing_to_thing_group(aws_client:aws_client(), add_thing_to_thing_group_request(), proplists:proplist()) ->
    {ok, add_thing_to_thing_group_response(), tuple()} |
    {error, any()} |
    {error, add_thing_to_thing_group_errors(), tuple()}.
add_thing_to_thing_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/thing-groups/addThingToThingGroup"],
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

%% @doc Associates the selected software bill of materials (SBOM) with a
%% specific software package version.
%%
%% Requires permission to access the AssociateSbomWithPackageVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec associate_sbom_with_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), associate_sbom_with_package_version_request()) ->
    {ok, associate_sbom_with_package_version_response(), tuple()} |
    {error, any()} |
    {error, associate_sbom_with_package_version_errors(), tuple()}.
associate_sbom_with_package_version(Client, PackageName, VersionName, Input) ->
    associate_sbom_with_package_version(Client, PackageName, VersionName, Input, []).

-spec associate_sbom_with_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), associate_sbom_with_package_version_request(), proplists:proplist()) ->
    {ok, associate_sbom_with_package_version_response(), tuple()} |
    {error, any()} |
    {error, associate_sbom_with_package_version_errors(), tuple()}.
associate_sbom_with_package_version(Client, PackageName, VersionName, Input0, Options0) ->
    Method = put,
    Path = ["/packages/", aws_util:encode_uri(PackageName), "/versions/", aws_util:encode_uri(VersionName), "/sbom"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a group with a continuous job.
%%
%% The following criteria must be met:
%%
%% The job must have been created with the `targetSelection' field
%% set to &quot;CONTINUOUS&quot;.
%%
%% The job status must currently be &quot;IN_PROGRESS&quot;.
%%
%% The total number of targets associated with a job must not exceed
%% 100.
%%
%% Requires permission to access the AssociateTargetsWithJob:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec associate_targets_with_job(aws_client:aws_client(), binary() | list(), associate_targets_with_job_request()) ->
    {ok, associate_targets_with_job_response(), tuple()} |
    {error, any()} |
    {error, associate_targets_with_job_errors(), tuple()}.
associate_targets_with_job(Client, JobId, Input) ->
    associate_targets_with_job(Client, JobId, Input, []).

-spec associate_targets_with_job(aws_client:aws_client(), binary() | list(), associate_targets_with_job_request(), proplists:proplist()) ->
    {ok, associate_targets_with_job_response(), tuple()} |
    {error, any()} |
    {error, associate_targets_with_job_errors(), tuple()}.
associate_targets_with_job(Client, JobId, Input0, Options0) ->
    Method = post,
    Path = ["/jobs/", aws_util:encode_uri(JobId), "/targets"],
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
                     {<<"namespaceId">>, <<"namespaceId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches the specified policy to the specified principal (certificate
%% or other
%% credential).
%%
%% Requires permission to access the AttachPolicy:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec attach_policy(aws_client:aws_client(), binary() | list(), attach_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_policy_errors(), tuple()}.
attach_policy(Client, PolicyName, Input) ->
    attach_policy(Client, PolicyName, Input, []).

-spec attach_policy(aws_client:aws_client(), binary() | list(), attach_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_policy_errors(), tuple()}.
attach_policy(Client, PolicyName, Input0, Options0) ->
    Method = put,
    Path = ["/target-policies/", aws_util:encode_uri(PolicyName), ""],
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

%% @doc Attaches the specified policy to the specified principal (certificate
%% or other
%% credential).
%%
%% Note: This action is deprecated and works as
%% expected for backward compatibility, but we won't add enhancements.
%% Use `AttachPolicy' instead.
%%
%% Requires permission to access the AttachPrincipalPolicy:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec attach_principal_policy(aws_client:aws_client(), binary() | list(), attach_principal_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_principal_policy_errors(), tuple()}.
attach_principal_policy(Client, PolicyName, Input) ->
    attach_principal_policy(Client, PolicyName, Input, []).

-spec attach_principal_policy(aws_client:aws_client(), binary() | list(), attach_principal_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, attach_principal_policy_errors(), tuple()}.
attach_principal_policy(Client, PolicyName, Input0, Options0) ->
    Method = put,
    Path = ["/principal-policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-iot-principal">>, <<"principal">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a Device Defender security profile with a thing group or
%% this account.
%%
%% Each
%% thing group or account can have up to five security profiles associated
%% with it.
%%
%% Requires permission to access the AttachSecurityProfile:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec attach_security_profile(aws_client:aws_client(), binary() | list(), attach_security_profile_request()) ->
    {ok, attach_security_profile_response(), tuple()} |
    {error, any()} |
    {error, attach_security_profile_errors(), tuple()}.
attach_security_profile(Client, SecurityProfileName, Input) ->
    attach_security_profile(Client, SecurityProfileName, Input, []).

-spec attach_security_profile(aws_client:aws_client(), binary() | list(), attach_security_profile_request(), proplists:proplist()) ->
    {ok, attach_security_profile_response(), tuple()} |
    {error, any()} |
    {error, attach_security_profile_errors(), tuple()}.
attach_security_profile(Client, SecurityProfileName, Input0, Options0) ->
    Method = put,
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), "/targets"],
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
                     {<<"securityProfileTargetArn">>, <<"securityProfileTargetArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches the specified principal to the specified thing.
%%
%% A principal can be X.509
%% certificates, Amazon Cognito identities or federated identities.
%%
%% Requires permission to access the AttachThingPrincipal:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec attach_thing_principal(aws_client:aws_client(), binary() | list(), attach_thing_principal_request()) ->
    {ok, attach_thing_principal_response(), tuple()} |
    {error, any()} |
    {error, attach_thing_principal_errors(), tuple()}.
attach_thing_principal(Client, ThingName, Input) ->
    attach_thing_principal(Client, ThingName, Input, []).

-spec attach_thing_principal(aws_client:aws_client(), binary() | list(), attach_thing_principal_request(), proplists:proplist()) ->
    {ok, attach_thing_principal_response(), tuple()} |
    {error, any()} |
    {error, attach_thing_principal_errors(), tuple()}.
attach_thing_principal(Client, ThingName, Input0, Options0) ->
    Method = put,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/principals"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-principal">>, <<"principal">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"thingPrincipalType">>, <<"thingPrincipalType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a mitigation action task that is in progress.
%%
%% If the task
%% is not
%% in progress, an InvalidRequestException occurs.
%%
%% Requires permission to access the CancelAuditMitigationActionsTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec cancel_audit_mitigation_actions_task(aws_client:aws_client(), binary() | list(), cancel_audit_mitigation_actions_task_request()) ->
    {ok, cancel_audit_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_audit_mitigation_actions_task_errors(), tuple()}.
cancel_audit_mitigation_actions_task(Client, TaskId, Input) ->
    cancel_audit_mitigation_actions_task(Client, TaskId, Input, []).

-spec cancel_audit_mitigation_actions_task(aws_client:aws_client(), binary() | list(), cancel_audit_mitigation_actions_task_request(), proplists:proplist()) ->
    {ok, cancel_audit_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_audit_mitigation_actions_task_errors(), tuple()}.
cancel_audit_mitigation_actions_task(Client, TaskId, Input0, Options0) ->
    Method = put,
    Path = ["/audit/mitigationactions/tasks/", aws_util:encode_uri(TaskId), "/cancel"],
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

%% @doc Cancels an audit that is in progress.
%%
%% The audit can be either scheduled or on demand. If the audit isn't in
%% progress, an &quot;InvalidRequestException&quot; occurs.
%%
%% Requires permission to access the CancelAuditTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec cancel_audit_task(aws_client:aws_client(), binary() | list(), cancel_audit_task_request()) ->
    {ok, cancel_audit_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_audit_task_errors(), tuple()}.
cancel_audit_task(Client, TaskId, Input) ->
    cancel_audit_task(Client, TaskId, Input, []).

-spec cancel_audit_task(aws_client:aws_client(), binary() | list(), cancel_audit_task_request(), proplists:proplist()) ->
    {ok, cancel_audit_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_audit_task_errors(), tuple()}.
cancel_audit_task(Client, TaskId, Input0, Options0) ->
    Method = put,
    Path = ["/audit/tasks/", aws_util:encode_uri(TaskId), "/cancel"],
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

%% @doc Cancels a pending transfer for the specified certificate.
%%
%% Note Only the transfer source account can use this
%% operation to cancel a transfer. (Transfer destinations can use
%% `RejectCertificateTransfer' instead.) After transfer, IoT returns the
%% certificate to the source account in the INACTIVE state. After the
%% destination account has
%% accepted the transfer, the transfer cannot be cancelled.
%%
%% After a certificate transfer is cancelled, the status of the certificate
%% changes from
%% PENDING_TRANSFER to INACTIVE.
%%
%% Requires permission to access the CancelCertificateTransfer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec cancel_certificate_transfer(aws_client:aws_client(), binary() | list(), cancel_certificate_transfer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_certificate_transfer_errors(), tuple()}.
cancel_certificate_transfer(Client, CertificateId, Input) ->
    cancel_certificate_transfer(Client, CertificateId, Input, []).

-spec cancel_certificate_transfer(aws_client:aws_client(), binary() | list(), cancel_certificate_transfer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_certificate_transfer_errors(), tuple()}.
cancel_certificate_transfer(Client, CertificateId, Input0, Options0) ->
    Method = patch,
    Path = ["/cancel-certificate-transfer/", aws_util:encode_uri(CertificateId), ""],
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
%% Cancels a Device Defender ML Detect mitigation action.
%%
%% Requires permission to access the CancelDetectMitigationActionsTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec cancel_detect_mitigation_actions_task(aws_client:aws_client(), binary() | list(), cancel_detect_mitigation_actions_task_request()) ->
    {ok, cancel_detect_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_detect_mitigation_actions_task_errors(), tuple()}.
cancel_detect_mitigation_actions_task(Client, TaskId, Input) ->
    cancel_detect_mitigation_actions_task(Client, TaskId, Input, []).

-spec cancel_detect_mitigation_actions_task(aws_client:aws_client(), binary() | list(), cancel_detect_mitigation_actions_task_request(), proplists:proplist()) ->
    {ok, cancel_detect_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_detect_mitigation_actions_task_errors(), tuple()}.
cancel_detect_mitigation_actions_task(Client, TaskId, Input0, Options0) ->
    Method = put,
    Path = ["/detect/mitigationactions/tasks/", aws_util:encode_uri(TaskId), "/cancel"],
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

%% @doc Cancels a job.
%%
%% Requires permission to access the CancelJob:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec cancel_job(aws_client:aws_client(), binary() | list(), cancel_job_request()) ->
    {ok, cancel_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, JobId, Input) ->
    cancel_job(Client, JobId, Input, []).

-spec cancel_job(aws_client:aws_client(), binary() | list(), cancel_job_request(), proplists:proplist()) ->
    {ok, cancel_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, JobId, Input0, Options0) ->
    Method = put,
    Path = ["/jobs/", aws_util:encode_uri(JobId), "/cancel"],
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
                     {<<"force">>, <<"force">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels the execution of a job for a given thing.
%%
%% Requires permission to access the CancelJobExecution:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec cancel_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_job_execution_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_job_execution_errors(), tuple()}.
cancel_job_execution(Client, JobId, ThingName, Input) ->
    cancel_job_execution(Client, JobId, ThingName, Input, []).

-spec cancel_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_job_execution_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_job_execution_errors(), tuple()}.
cancel_job_execution(Client, JobId, ThingName, Input0, Options0) ->
    Method = put,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/", aws_util:encode_uri(JobId), "/cancel"],
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
                     {<<"force">>, <<"force">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Clears the default authorizer.
%%
%% Requires permission to access the ClearDefaultAuthorizer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec clear_default_authorizer(aws_client:aws_client(), clear_default_authorizer_request()) ->
    {ok, clear_default_authorizer_response(), tuple()} |
    {error, any()} |
    {error, clear_default_authorizer_errors(), tuple()}.
clear_default_authorizer(Client, Input) ->
    clear_default_authorizer(Client, Input, []).

-spec clear_default_authorizer(aws_client:aws_client(), clear_default_authorizer_request(), proplists:proplist()) ->
    {ok, clear_default_authorizer_response(), tuple()} |
    {error, any()} |
    {error, clear_default_authorizer_errors(), tuple()}.
clear_default_authorizer(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/default-authorizer"],
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

%% @doc Confirms a topic rule destination.
%%
%% When you create a rule requiring a destination, IoT
%% sends a confirmation message to the endpoint or base address you specify.
%% The message
%% includes a token which you pass back when calling
%% `ConfirmTopicRuleDestination'
%% to confirm that you own or have access to the endpoint.
%%
%% Requires permission to access the ConfirmTopicRuleDestination:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec confirm_topic_rule_destination(aws_client:aws_client(), binary() | list()) ->
    {ok, confirm_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, confirm_topic_rule_destination_errors(), tuple()}.
confirm_topic_rule_destination(Client, ConfirmationToken)
  when is_map(Client) ->
    confirm_topic_rule_destination(Client, ConfirmationToken, #{}, #{}).

-spec confirm_topic_rule_destination(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, confirm_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, confirm_topic_rule_destination_errors(), tuple()}.
confirm_topic_rule_destination(Client, ConfirmationToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    confirm_topic_rule_destination(Client, ConfirmationToken, QueryMap, HeadersMap, []).

-spec confirm_topic_rule_destination(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, confirm_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, confirm_topic_rule_destination_errors(), tuple()}.
confirm_topic_rule_destination(Client, ConfirmationToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/confirmdestination/", aws_util:encode_multi_segment_uri(ConfirmationToken), ""],
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
%% Creates a Device Defender audit suppression.
%%
%% Requires permission to access the CreateAuditSuppression:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_audit_suppression(aws_client:aws_client(), create_audit_suppression_request()) ->
    {ok, create_audit_suppression_response(), tuple()} |
    {error, any()} |
    {error, create_audit_suppression_errors(), tuple()}.
create_audit_suppression(Client, Input) ->
    create_audit_suppression(Client, Input, []).

-spec create_audit_suppression(aws_client:aws_client(), create_audit_suppression_request(), proplists:proplist()) ->
    {ok, create_audit_suppression_response(), tuple()} |
    {error, any()} |
    {error, create_audit_suppression_errors(), tuple()}.
create_audit_suppression(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/suppressions/create"],
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

%% @doc Creates an authorizer.
%%
%% Requires permission to access the CreateAuthorizer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_authorizer(aws_client:aws_client(), binary() | list(), create_authorizer_request()) ->
    {ok, create_authorizer_response(), tuple()} |
    {error, any()} |
    {error, create_authorizer_errors(), tuple()}.
create_authorizer(Client, AuthorizerName, Input) ->
    create_authorizer(Client, AuthorizerName, Input, []).

-spec create_authorizer(aws_client:aws_client(), binary() | list(), create_authorizer_request(), proplists:proplist()) ->
    {ok, create_authorizer_response(), tuple()} |
    {error, any()} |
    {error, create_authorizer_errors(), tuple()}.
create_authorizer(Client, AuthorizerName, Input0, Options0) ->
    Method = post,
    Path = ["/authorizer/", aws_util:encode_uri(AuthorizerName), ""],
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

%% @doc Creates a billing group.
%%
%% If this call is made multiple times using
%% the same billing group name and configuration, the call will succeed. If
%% this call is made with
%% the same billing group name but different configuration a
%% `ResourceAlreadyExistsException' is thrown.
%%
%% Requires permission to access the CreateBillingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_billing_group(aws_client:aws_client(), binary() | list(), create_billing_group_request()) ->
    {ok, create_billing_group_response(), tuple()} |
    {error, any()} |
    {error, create_billing_group_errors(), tuple()}.
create_billing_group(Client, BillingGroupName, Input) ->
    create_billing_group(Client, BillingGroupName, Input, []).

-spec create_billing_group(aws_client:aws_client(), binary() | list(), create_billing_group_request(), proplists:proplist()) ->
    {ok, create_billing_group_response(), tuple()} |
    {error, any()} |
    {error, create_billing_group_errors(), tuple()}.
create_billing_group(Client, BillingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/billing-groups/", aws_util:encode_uri(BillingGroupName), ""],
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

%% @doc Creates an X.509 certificate using the specified certificate signing
%% request.
%%
%% Requires permission to access the CreateCertificateFromCsr:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% The CSR must include a public key that is either an RSA key with a length
%% of at least
%% 2048 bits or an ECC key from NIST P-256, NIST P-384, or NIST P-521 curves.
%% For supported
%% certificates, consult Certificate signing algorithms supported by IoT:
%% https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms.
%%
%% Reusing the same certificate signing request (CSR)
%% results in a distinct certificate.
%%
%% You can create multiple certificates in a batch by creating a directory,
%% copying
%% multiple `.csr' files into that directory, and then specifying that
%% directory on the command
%% line. The following commands show how to create a batch of certificates
%% given a batch of
%% CSRs. In the following commands, we assume that a set of CSRs are located
%% inside of the
%% directory my-csr-directory:
%%
%% On Linux and OS X, the command is:
%%
%% ```
%% $ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr
%% --certificate-signing-request file://my-csr-directory/{}'''
%%
%% This command lists all of the CSRs in my-csr-directory and pipes each CSR
%% file name
%% to the `aws iot create-certificate-from-csr' Amazon Web Services CLI
%% command to create a certificate for
%% the corresponding CSR.
%%
%% You can also run the `aws iot create-certificate-from-csr' part of the
%% command in parallel to speed up the certificate creation process:
%%
%% ```
%% $ ls my-csr-directory/ | xargs -P 10 -I {} aws iot
%% create-certificate-from-csr --certificate-signing-request
%% file://my-csr-directory/{} '''
%%
%% On Windows PowerShell, the command to create certificates for all CSRs in
%% my-csr-directory is:
%%
%% ```
%% &gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
%% --certificate-signing-request file://my-csr-directory/$_} '''
%%
%% On a Windows command prompt, the command to create certificates for all
%% CSRs in
%% my-csr-directory is:
%%
%% ```
%% &gt; forfiles /p my-csr-directory /c &quot;cmd /c aws iot
%% create-certificate-from-csr --certificate-signing-request
%% file://@path&quot; '''
-spec create_certificate_from_csr(aws_client:aws_client(), create_certificate_from_csr_request()) ->
    {ok, create_certificate_from_csr_response(), tuple()} |
    {error, any()} |
    {error, create_certificate_from_csr_errors(), tuple()}.
create_certificate_from_csr(Client, Input) ->
    create_certificate_from_csr(Client, Input, []).

-spec create_certificate_from_csr(aws_client:aws_client(), create_certificate_from_csr_request(), proplists:proplist()) ->
    {ok, create_certificate_from_csr_response(), tuple()} |
    {error, any()} |
    {error, create_certificate_from_csr_errors(), tuple()}.
create_certificate_from_csr(Client, Input0, Options0) ->
    Method = post,
    Path = ["/certificates"],
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
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Web Services IoT Core certificate provider.
%%
%% You can use Amazon Web Services IoT Core certificate provider to
%% customize how to sign a certificate signing request (CSR) in IoT fleet
%% provisioning. For
%% more information, see Customizing certificate
%% signing using Amazon Web Services IoT Core certificate provider:
%% https://docs.aws.amazon.com/iot/latest/developerguide/provisioning-cert-provider.html
%% from Amazon Web Services IoT Core Developer
%% Guide.
%%
%% Requires permission to access the CreateCertificateProvider:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% After you create a certificate provider, the behavior of
%% `CreateCertificateFromCsr' API for fleet provisioning:
%% https://docs.aws.amazon.com/iot/latest/developerguide/fleet-provision-api.html#create-cert-csr
%% will
%% change and all API calls to `CreateCertificateFromCsr' will invoke the
%% certificate provider to create the certificates. It can take up to a few
%% minutes for
%% this behavior to change after a certificate provider is created.
-spec create_certificate_provider(aws_client:aws_client(), binary() | list(), create_certificate_provider_request()) ->
    {ok, create_certificate_provider_response(), tuple()} |
    {error, any()} |
    {error, create_certificate_provider_errors(), tuple()}.
create_certificate_provider(Client, CertificateProviderName, Input) ->
    create_certificate_provider(Client, CertificateProviderName, Input, []).

-spec create_certificate_provider(aws_client:aws_client(), binary() | list(), create_certificate_provider_request(), proplists:proplist()) ->
    {ok, create_certificate_provider_response(), tuple()} |
    {error, any()} |
    {error, create_certificate_provider_errors(), tuple()}.
create_certificate_provider(Client, CertificateProviderName, Input0, Options0) ->
    Method = post,
    Path = ["/certificate-providers/", aws_util:encode_uri(CertificateProviderName), ""],
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

%% @doc Creates a command.
%%
%% A command contains reusable configurations that can be applied
%% before they are sent to the devices.
-spec create_command(aws_client:aws_client(), binary() | list(), create_command_request()) ->
    {ok, create_command_response(), tuple()} |
    {error, any()} |
    {error, create_command_errors(), tuple()}.
create_command(Client, CommandId, Input) ->
    create_command(Client, CommandId, Input, []).

-spec create_command(aws_client:aws_client(), binary() | list(), create_command_request(), proplists:proplist()) ->
    {ok, create_command_response(), tuple()} |
    {error, any()} |
    {error, create_command_errors(), tuple()}.
create_command(Client, CommandId, Input0, Options0) ->
    Method = put,
    Path = ["/commands/", aws_util:encode_uri(CommandId), ""],
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

%% @doc Use this API to define a
%% Custom
%% Metric
%% published by your devices to Device Defender.
%%
%% Requires permission to access the CreateCustomMetric:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_custom_metric(aws_client:aws_client(), binary() | list(), create_custom_metric_request()) ->
    {ok, create_custom_metric_response(), tuple()} |
    {error, any()} |
    {error, create_custom_metric_errors(), tuple()}.
create_custom_metric(Client, MetricName, Input) ->
    create_custom_metric(Client, MetricName, Input, []).

-spec create_custom_metric(aws_client:aws_client(), binary() | list(), create_custom_metric_request(), proplists:proplist()) ->
    {ok, create_custom_metric_response(), tuple()} |
    {error, any()} |
    {error, create_custom_metric_errors(), tuple()}.
create_custom_metric(Client, MetricName, Input0, Options0) ->
    Method = post,
    Path = ["/custom-metric/", aws_util:encode_uri(MetricName), ""],
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

%% @doc Create a dimension that you can use to limit the scope of a metric
%% used in a security profile for IoT Device Defender.
%%
%% For example, using a `TOPIC_FILTER' dimension, you can narrow down the
%% scope of the metric only to MQTT topics whose name match the pattern
%% specified in the dimension.
%%
%% Requires permission to access the CreateDimension:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_dimension(aws_client:aws_client(), binary() | list(), create_dimension_request()) ->
    {ok, create_dimension_response(), tuple()} |
    {error, any()} |
    {error, create_dimension_errors(), tuple()}.
create_dimension(Client, Name, Input) ->
    create_dimension(Client, Name, Input, []).

-spec create_dimension(aws_client:aws_client(), binary() | list(), create_dimension_request(), proplists:proplist()) ->
    {ok, create_dimension_response(), tuple()} |
    {error, any()} |
    {error, create_dimension_errors(), tuple()}.
create_dimension(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/dimensions/", aws_util:encode_uri(Name), ""],
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

%% @doc Creates a domain configuration.
%%
%% Requires permission to access the CreateDomainConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_domain_configuration(aws_client:aws_client(), binary() | list(), create_domain_configuration_request()) ->
    {ok, create_domain_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_domain_configuration_errors(), tuple()}.
create_domain_configuration(Client, DomainConfigurationName, Input) ->
    create_domain_configuration(Client, DomainConfigurationName, Input, []).

-spec create_domain_configuration(aws_client:aws_client(), binary() | list(), create_domain_configuration_request(), proplists:proplist()) ->
    {ok, create_domain_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_domain_configuration_errors(), tuple()}.
create_domain_configuration(Client, DomainConfigurationName, Input0, Options0) ->
    Method = post,
    Path = ["/domainConfigurations/", aws_util:encode_uri(DomainConfigurationName), ""],
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

%% @doc Creates a dynamic thing group.
%%
%% Requires permission to access the CreateDynamicThingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_dynamic_thing_group(aws_client:aws_client(), binary() | list(), create_dynamic_thing_group_request()) ->
    {ok, create_dynamic_thing_group_response(), tuple()} |
    {error, any()} |
    {error, create_dynamic_thing_group_errors(), tuple()}.
create_dynamic_thing_group(Client, ThingGroupName, Input) ->
    create_dynamic_thing_group(Client, ThingGroupName, Input, []).

-spec create_dynamic_thing_group(aws_client:aws_client(), binary() | list(), create_dynamic_thing_group_request(), proplists:proplist()) ->
    {ok, create_dynamic_thing_group_response(), tuple()} |
    {error, any()} |
    {error, create_dynamic_thing_group_errors(), tuple()}.
create_dynamic_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/dynamic-thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
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

%% @doc Creates a fleet metric.
%%
%% Requires permission to access the CreateFleetMetric:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_fleet_metric(aws_client:aws_client(), binary() | list(), create_fleet_metric_request()) ->
    {ok, create_fleet_metric_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_metric_errors(), tuple()}.
create_fleet_metric(Client, MetricName, Input) ->
    create_fleet_metric(Client, MetricName, Input, []).

-spec create_fleet_metric(aws_client:aws_client(), binary() | list(), create_fleet_metric_request(), proplists:proplist()) ->
    {ok, create_fleet_metric_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_metric_errors(), tuple()}.
create_fleet_metric(Client, MetricName, Input0, Options0) ->
    Method = put,
    Path = ["/fleet-metric/", aws_util:encode_uri(MetricName), ""],
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

%% @doc Creates a job.
%%
%% Requires permission to access the CreateJob:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_job(aws_client:aws_client(), binary() | list(), create_job_request()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, JobId, Input) ->
    create_job(Client, JobId, Input, []).

-spec create_job(aws_client:aws_client(), binary() | list(), create_job_request(), proplists:proplist()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, JobId, Input0, Options0) ->
    Method = put,
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
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

%% @doc Creates a job template.
%%
%% Requires permission to access the CreateJobTemplate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_job_template(aws_client:aws_client(), binary() | list(), create_job_template_request()) ->
    {ok, create_job_template_response(), tuple()} |
    {error, any()} |
    {error, create_job_template_errors(), tuple()}.
create_job_template(Client, JobTemplateId, Input) ->
    create_job_template(Client, JobTemplateId, Input, []).

-spec create_job_template(aws_client:aws_client(), binary() | list(), create_job_template_request(), proplists:proplist()) ->
    {ok, create_job_template_response(), tuple()} |
    {error, any()} |
    {error, create_job_template_errors(), tuple()}.
create_job_template(Client, JobTemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/job-templates/", aws_util:encode_uri(JobTemplateId), ""],
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

%% @doc Creates a 2048-bit RSA key pair and issues an X.509 certificate using
%% the issued
%% public key.
%%
%% You can also call `CreateKeysAndCertificate' over MQTT from a
%% device, for more information, see Provisioning MQTT API:
%% https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html#provision-mqtt-api.
%%
%% Note This is the only time IoT issues the private key
%% for this certificate, so it is important to keep it in a secure location.
%%
%% Requires permission to access the CreateKeysAndCertificate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_keys_and_certificate(aws_client:aws_client(), create_keys_and_certificate_request()) ->
    {ok, create_keys_and_certificate_response(), tuple()} |
    {error, any()} |
    {error, create_keys_and_certificate_errors(), tuple()}.
create_keys_and_certificate(Client, Input) ->
    create_keys_and_certificate(Client, Input, []).

-spec create_keys_and_certificate(aws_client:aws_client(), create_keys_and_certificate_request(), proplists:proplist()) ->
    {ok, create_keys_and_certificate_response(), tuple()} |
    {error, any()} |
    {error, create_keys_and_certificate_errors(), tuple()}.
create_keys_and_certificate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/keys-and-certificate"],
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
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Defines an action that can be applied to audit findings by using
%% StartAuditMitigationActionsTask.
%%
%% Only certain types of mitigation actions can be applied to specific check
%% names.
%% For more information, see Mitigation actions:
%% https://docs.aws.amazon.com/iot/latest/developerguide/device-defender-mitigation-actions.html.
%% Each mitigation action can apply only one type of change.
%%
%% Requires permission to access the CreateMitigationAction:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_mitigation_action(aws_client:aws_client(), binary() | list(), create_mitigation_action_request()) ->
    {ok, create_mitigation_action_response(), tuple()} |
    {error, any()} |
    {error, create_mitigation_action_errors(), tuple()}.
create_mitigation_action(Client, ActionName, Input) ->
    create_mitigation_action(Client, ActionName, Input, []).

-spec create_mitigation_action(aws_client:aws_client(), binary() | list(), create_mitigation_action_request(), proplists:proplist()) ->
    {ok, create_mitigation_action_response(), tuple()} |
    {error, any()} |
    {error, create_mitigation_action_errors(), tuple()}.
create_mitigation_action(Client, ActionName, Input0, Options0) ->
    Method = post,
    Path = ["/mitigationactions/actions/", aws_util:encode_uri(ActionName), ""],
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

%% @doc Creates an IoT OTA update on a target group of things or groups.
%%
%% Requires permission to access the CreateOTAUpdate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_ota_update(aws_client:aws_client(), binary() | list(), create_ota_update_request()) ->
    {ok, create_ota_update_response(), tuple()} |
    {error, any()} |
    {error, create_ota_update_errors(), tuple()}.
create_ota_update(Client, OtaUpdateId, Input) ->
    create_ota_update(Client, OtaUpdateId, Input, []).

-spec create_ota_update(aws_client:aws_client(), binary() | list(), create_ota_update_request(), proplists:proplist()) ->
    {ok, create_ota_update_response(), tuple()} |
    {error, any()} |
    {error, create_ota_update_errors(), tuple()}.
create_ota_update(Client, OtaUpdateId, Input0, Options0) ->
    Method = post,
    Path = ["/otaUpdates/", aws_util:encode_uri(OtaUpdateId), ""],
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

%% @doc Creates an IoT software package that can be deployed to your fleet.
%%
%% Requires permission to access the CreatePackage:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% and GetIndexingConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% actions.
-spec create_package(aws_client:aws_client(), binary() | list(), create_package_request()) ->
    {ok, create_package_response(), tuple()} |
    {error, any()} |
    {error, create_package_errors(), tuple()}.
create_package(Client, PackageName, Input) ->
    create_package(Client, PackageName, Input, []).

-spec create_package(aws_client:aws_client(), binary() | list(), create_package_request(), proplists:proplist()) ->
    {ok, create_package_response(), tuple()} |
    {error, any()} |
    {error, create_package_errors(), tuple()}.
create_package(Client, PackageName, Input0, Options0) ->
    Method = put,
    Path = ["/packages/", aws_util:encode_uri(PackageName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version for an existing IoT software package.
%%
%% Requires permission to access the CreatePackageVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% and GetIndexingConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% actions.
-spec create_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_package_version_request()) ->
    {ok, create_package_version_response(), tuple()} |
    {error, any()} |
    {error, create_package_version_errors(), tuple()}.
create_package_version(Client, PackageName, VersionName, Input) ->
    create_package_version(Client, PackageName, VersionName, Input, []).

-spec create_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_package_version_request(), proplists:proplist()) ->
    {ok, create_package_version_response(), tuple()} |
    {error, any()} |
    {error, create_package_version_errors(), tuple()}.
create_package_version(Client, PackageName, VersionName, Input0, Options0) ->
    Method = put,
    Path = ["/packages/", aws_util:encode_uri(PackageName), "/versions/", aws_util:encode_uri(VersionName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an IoT policy.
%%
%% The created policy is the default version for the policy. This operation
%% creates a
%% policy version with a version identifier of 1 and sets
%% 1 as the policy's default version.
%%
%% Requires permission to access the CreatePolicy:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_policy(aws_client:aws_client(), binary() | list(), create_policy_request()) ->
    {ok, create_policy_response(), tuple()} |
    {error, any()} |
    {error, create_policy_errors(), tuple()}.
create_policy(Client, PolicyName, Input) ->
    create_policy(Client, PolicyName, Input, []).

-spec create_policy(aws_client:aws_client(), binary() | list(), create_policy_request(), proplists:proplist()) ->
    {ok, create_policy_response(), tuple()} |
    {error, any()} |
    {error, create_policy_errors(), tuple()}.
create_policy(Client, PolicyName, Input0, Options0) ->
    Method = post,
    Path = ["/policies/", aws_util:encode_uri(PolicyName), ""],
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

%% @doc Creates a new version of the specified IoT policy.
%%
%% To update a policy, create a
%% new policy version. A managed policy can have up to five versions. If the
%% policy has five
%% versions, you must use `DeletePolicyVersion' to delete an existing
%% version
%% before you create a new one.
%%
%% Optionally, you can set the new version as the policy's default
%% version. The default
%% version is the operative version (that is, the version that is in effect
%% for the
%% certificates to which the policy is attached).
%%
%% Requires permission to access the CreatePolicyVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_policy_version(aws_client:aws_client(), binary() | list(), create_policy_version_request()) ->
    {ok, create_policy_version_response(), tuple()} |
    {error, any()} |
    {error, create_policy_version_errors(), tuple()}.
create_policy_version(Client, PolicyName, Input) ->
    create_policy_version(Client, PolicyName, Input, []).

-spec create_policy_version(aws_client:aws_client(), binary() | list(), create_policy_version_request(), proplists:proplist()) ->
    {ok, create_policy_version_response(), tuple()} |
    {error, any()} |
    {error, create_policy_version_errors(), tuple()}.
create_policy_version(Client, PolicyName, Input0, Options0) ->
    Method = post,
    Path = ["/policies/", aws_util:encode_uri(PolicyName), "/version"],
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
                     {<<"setAsDefault">>, <<"setAsDefault">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a provisioning claim.
%%
%% Requires permission to access the CreateProvisioningClaim:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_provisioning_claim(aws_client:aws_client(), binary() | list(), create_provisioning_claim_request()) ->
    {ok, create_provisioning_claim_response(), tuple()} |
    {error, any()} |
    {error, create_provisioning_claim_errors(), tuple()}.
create_provisioning_claim(Client, TemplateName, Input) ->
    create_provisioning_claim(Client, TemplateName, Input, []).

-spec create_provisioning_claim(aws_client:aws_client(), binary() | list(), create_provisioning_claim_request(), proplists:proplist()) ->
    {ok, create_provisioning_claim_response(), tuple()} |
    {error, any()} |
    {error, create_provisioning_claim_errors(), tuple()}.
create_provisioning_claim(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), "/provisioning-claim"],
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

%% @doc Creates a provisioning template.
%%
%% Requires permission to access the CreateProvisioningTemplate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_provisioning_template(aws_client:aws_client(), create_provisioning_template_request()) ->
    {ok, create_provisioning_template_response(), tuple()} |
    {error, any()} |
    {error, create_provisioning_template_errors(), tuple()}.
create_provisioning_template(Client, Input) ->
    create_provisioning_template(Client, Input, []).

-spec create_provisioning_template(aws_client:aws_client(), create_provisioning_template_request(), proplists:proplist()) ->
    {ok, create_provisioning_template_response(), tuple()} |
    {error, any()} |
    {error, create_provisioning_template_errors(), tuple()}.
create_provisioning_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/provisioning-templates"],
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

%% @doc Creates a new version of a provisioning template.
%%
%% Requires permission to access the CreateProvisioningTemplateVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_provisioning_template_version(aws_client:aws_client(), binary() | list(), create_provisioning_template_version_request()) ->
    {ok, create_provisioning_template_version_response(), tuple()} |
    {error, any()} |
    {error, create_provisioning_template_version_errors(), tuple()}.
create_provisioning_template_version(Client, TemplateName, Input) ->
    create_provisioning_template_version(Client, TemplateName, Input, []).

-spec create_provisioning_template_version(aws_client:aws_client(), binary() | list(), create_provisioning_template_version_request(), proplists:proplist()) ->
    {ok, create_provisioning_template_version_response(), tuple()} |
    {error, any()} |
    {error, create_provisioning_template_version_errors(), tuple()}.
create_provisioning_template_version(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), "/versions"],
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
                     {<<"setAsDefault">>, <<"setAsDefault">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a role alias.
%%
%% Requires permission to access the CreateRoleAlias:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% The value of
%% `credentialDurationSeconds'
%% :
%% https://docs.aws.amazon.com/iot/latest/apireference/API_CreateRoleAlias.html#iot-CreateRoleAlias-request-credentialDurationSeconds
%% must be less than or equal to the maximum session
%% duration of the IAM role that the role alias references. For more
%% information, see
%%
%% Modifying a role maximum session duration (Amazon Web Services API):
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-api.html#roles-modify_max-session-duration-api
%% from the Amazon Web Services Identity and Access Management User Guide.
-spec create_role_alias(aws_client:aws_client(), binary() | list(), create_role_alias_request()) ->
    {ok, create_role_alias_response(), tuple()} |
    {error, any()} |
    {error, create_role_alias_errors(), tuple()}.
create_role_alias(Client, RoleAlias, Input) ->
    create_role_alias(Client, RoleAlias, Input, []).

-spec create_role_alias(aws_client:aws_client(), binary() | list(), create_role_alias_request(), proplists:proplist()) ->
    {ok, create_role_alias_response(), tuple()} |
    {error, any()} |
    {error, create_role_alias_errors(), tuple()}.
create_role_alias(Client, RoleAlias, Input0, Options0) ->
    Method = post,
    Path = ["/role-aliases/", aws_util:encode_uri(RoleAlias), ""],
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

%% @doc Creates a scheduled audit that is run at a specified
%% time interval.
%%
%% Requires permission to access the CreateScheduledAudit:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_scheduled_audit(aws_client:aws_client(), binary() | list(), create_scheduled_audit_request()) ->
    {ok, create_scheduled_audit_response(), tuple()} |
    {error, any()} |
    {error, create_scheduled_audit_errors(), tuple()}.
create_scheduled_audit(Client, ScheduledAuditName, Input) ->
    create_scheduled_audit(Client, ScheduledAuditName, Input, []).

-spec create_scheduled_audit(aws_client:aws_client(), binary() | list(), create_scheduled_audit_request(), proplists:proplist()) ->
    {ok, create_scheduled_audit_response(), tuple()} |
    {error, any()} |
    {error, create_scheduled_audit_errors(), tuple()}.
create_scheduled_audit(Client, ScheduledAuditName, Input0, Options0) ->
    Method = post,
    Path = ["/audit/scheduledaudits/", aws_util:encode_uri(ScheduledAuditName), ""],
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

%% @doc Creates a Device Defender security profile.
%%
%% Requires permission to access the CreateSecurityProfile:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_security_profile(aws_client:aws_client(), binary() | list(), create_security_profile_request()) ->
    {ok, create_security_profile_response(), tuple()} |
    {error, any()} |
    {error, create_security_profile_errors(), tuple()}.
create_security_profile(Client, SecurityProfileName, Input) ->
    create_security_profile(Client, SecurityProfileName, Input, []).

-spec create_security_profile(aws_client:aws_client(), binary() | list(), create_security_profile_request(), proplists:proplist()) ->
    {ok, create_security_profile_response(), tuple()} |
    {error, any()} |
    {error, create_security_profile_errors(), tuple()}.
create_security_profile(Client, SecurityProfileName, Input0, Options0) ->
    Method = post,
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), ""],
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

%% @doc Creates a stream for delivering one or more large files in chunks
%% over MQTT.
%%
%% A stream transports data
%% bytes in chunks or blocks packaged as MQTT messages from a source like S3.
%% You can have one or more files
%% associated with a stream.
%%
%% Requires permission to access the CreateStream:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_stream(aws_client:aws_client(), binary() | list(), create_stream_request()) ->
    {ok, create_stream_response(), tuple()} |
    {error, any()} |
    {error, create_stream_errors(), tuple()}.
create_stream(Client, StreamId, Input) ->
    create_stream(Client, StreamId, Input, []).

-spec create_stream(aws_client:aws_client(), binary() | list(), create_stream_request(), proplists:proplist()) ->
    {ok, create_stream_response(), tuple()} |
    {error, any()} |
    {error, create_stream_errors(), tuple()}.
create_stream(Client, StreamId, Input0, Options0) ->
    Method = post,
    Path = ["/streams/", aws_util:encode_uri(StreamId), ""],
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

%% @doc Creates a thing record in the registry.
%%
%% If this call is made multiple times using
%% the same thing name and configuration, the call will succeed. If this call
%% is made with
%% the same thing name but different configuration a
%% `ResourceAlreadyExistsException' is thrown.
%%
%% This is a control plane operation. See Authorization:
%% https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html
%% for
%% information about authorizing control plane actions.
%%
%% Requires permission to access the CreateThing:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_thing(aws_client:aws_client(), binary() | list(), create_thing_request()) ->
    {ok, create_thing_response(), tuple()} |
    {error, any()} |
    {error, create_thing_errors(), tuple()}.
create_thing(Client, ThingName, Input) ->
    create_thing(Client, ThingName, Input, []).

-spec create_thing(aws_client:aws_client(), binary() | list(), create_thing_request(), proplists:proplist()) ->
    {ok, create_thing_response(), tuple()} |
    {error, any()} |
    {error, create_thing_errors(), tuple()}.
create_thing(Client, ThingName, Input0, Options0) ->
    Method = post,
    Path = ["/things/", aws_util:encode_uri(ThingName), ""],
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

%% @doc Create a thing group.
%%
%% This is a control plane operation. See Authorization:
%% https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html
%% for
%% information about authorizing control plane actions.
%%
%% If the `ThingGroup' that you create has the exact same attributes as
%% an existing
%% `ThingGroup', you will get a 200 success response.
%%
%% Requires permission to access the CreateThingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_thing_group(aws_client:aws_client(), binary() | list(), create_thing_group_request()) ->
    {ok, create_thing_group_response(), tuple()} |
    {error, any()} |
    {error, create_thing_group_errors(), tuple()}.
create_thing_group(Client, ThingGroupName, Input) ->
    create_thing_group(Client, ThingGroupName, Input, []).

-spec create_thing_group(aws_client:aws_client(), binary() | list(), create_thing_group_request(), proplists:proplist()) ->
    {ok, create_thing_group_response(), tuple()} |
    {error, any()} |
    {error, create_thing_group_errors(), tuple()}.
create_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
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

%% @doc Creates a new thing type.
%%
%% If this call is made multiple times using
%% the same thing type name and configuration, the call will succeed. If this
%% call is made with
%% the same thing type name but different configuration a
%% `ResourceAlreadyExistsException' is thrown.
%%
%% Requires permission to access the CreateThingType:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_thing_type(aws_client:aws_client(), binary() | list(), create_thing_type_request()) ->
    {ok, create_thing_type_response(), tuple()} |
    {error, any()} |
    {error, create_thing_type_errors(), tuple()}.
create_thing_type(Client, ThingTypeName, Input) ->
    create_thing_type(Client, ThingTypeName, Input, []).

-spec create_thing_type(aws_client:aws_client(), binary() | list(), create_thing_type_request(), proplists:proplist()) ->
    {ok, create_thing_type_response(), tuple()} |
    {error, any()} |
    {error, create_thing_type_errors(), tuple()}.
create_thing_type(Client, ThingTypeName, Input0, Options0) ->
    Method = post,
    Path = ["/thing-types/", aws_util:encode_uri(ThingTypeName), ""],
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

%% @doc Creates a rule.
%%
%% Creating rules is an administrator-level action. Any user who has
%% permission to create rules will be able to access data processed by the
%% rule.
%%
%% Requires permission to access the CreateTopicRule:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_topic_rule(aws_client:aws_client(), binary() | list(), create_topic_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_topic_rule_errors(), tuple()}.
create_topic_rule(Client, RuleName, Input) ->
    create_topic_rule(Client, RuleName, Input, []).

-spec create_topic_rule(aws_client:aws_client(), binary() | list(), create_topic_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_topic_rule_errors(), tuple()}.
create_topic_rule(Client, RuleName, Input0, Options0) ->
    Method = post,
    Path = ["/rules/", aws_util:encode_uri(RuleName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-tagging">>, <<"tags">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a topic rule destination.
%%
%% The destination must be confirmed prior to use.
%%
%% Requires permission to access the CreateTopicRuleDestination:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_topic_rule_destination(aws_client:aws_client(), create_topic_rule_destination_request()) ->
    {ok, create_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, create_topic_rule_destination_errors(), tuple()}.
create_topic_rule_destination(Client, Input) ->
    create_topic_rule_destination(Client, Input, []).

-spec create_topic_rule_destination(aws_client:aws_client(), create_topic_rule_destination_request(), proplists:proplist()) ->
    {ok, create_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, create_topic_rule_destination_errors(), tuple()}.
create_topic_rule_destination(Client, Input0, Options0) ->
    Method = post,
    Path = ["/destinations"],
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

%% @doc Restores the default settings for Device Defender audits for this
%% account.
%%
%% Any
%% configuration data you entered is deleted and all audit checks are reset
%% to
%% disabled.
%%
%% Requires permission to access the DeleteAccountAuditConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_account_audit_configuration(aws_client:aws_client(), delete_account_audit_configuration_request()) ->
    {ok, delete_account_audit_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_account_audit_configuration_errors(), tuple()}.
delete_account_audit_configuration(Client, Input) ->
    delete_account_audit_configuration(Client, Input, []).

-spec delete_account_audit_configuration(aws_client:aws_client(), delete_account_audit_configuration_request(), proplists:proplist()) ->
    {ok, delete_account_audit_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_account_audit_configuration_errors(), tuple()}.
delete_account_audit_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/audit/configuration"],
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
                     {<<"deleteScheduledAudits">>, <<"deleteScheduledAudits">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes a Device Defender audit suppression.
%%
%% Requires permission to access the DeleteAuditSuppression:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_audit_suppression(aws_client:aws_client(), delete_audit_suppression_request()) ->
    {ok, delete_audit_suppression_response(), tuple()} |
    {error, any()} |
    {error, delete_audit_suppression_errors(), tuple()}.
delete_audit_suppression(Client, Input) ->
    delete_audit_suppression(Client, Input, []).

-spec delete_audit_suppression(aws_client:aws_client(), delete_audit_suppression_request(), proplists:proplist()) ->
    {ok, delete_audit_suppression_response(), tuple()} |
    {error, any()} |
    {error, delete_audit_suppression_errors(), tuple()}.
delete_audit_suppression(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/suppressions/delete"],
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

%% @doc Deletes an authorizer.
%%
%% Requires permission to access the DeleteAuthorizer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_authorizer(aws_client:aws_client(), binary() | list(), delete_authorizer_request()) ->
    {ok, delete_authorizer_response(), tuple()} |
    {error, any()} |
    {error, delete_authorizer_errors(), tuple()}.
delete_authorizer(Client, AuthorizerName, Input) ->
    delete_authorizer(Client, AuthorizerName, Input, []).

-spec delete_authorizer(aws_client:aws_client(), binary() | list(), delete_authorizer_request(), proplists:proplist()) ->
    {ok, delete_authorizer_response(), tuple()} |
    {error, any()} |
    {error, delete_authorizer_errors(), tuple()}.
delete_authorizer(Client, AuthorizerName, Input0, Options0) ->
    Method = delete,
    Path = ["/authorizer/", aws_util:encode_uri(AuthorizerName), ""],
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

%% @doc Deletes the billing group.
%%
%% Requires permission to access the DeleteBillingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_billing_group(aws_client:aws_client(), binary() | list(), delete_billing_group_request()) ->
    {ok, delete_billing_group_response(), tuple()} |
    {error, any()} |
    {error, delete_billing_group_errors(), tuple()}.
delete_billing_group(Client, BillingGroupName, Input) ->
    delete_billing_group(Client, BillingGroupName, Input, []).

-spec delete_billing_group(aws_client:aws_client(), binary() | list(), delete_billing_group_request(), proplists:proplist()) ->
    {ok, delete_billing_group_response(), tuple()} |
    {error, any()} |
    {error, delete_billing_group_errors(), tuple()}.
delete_billing_group(Client, BillingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/billing-groups/", aws_util:encode_uri(BillingGroupName), ""],
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
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a registered CA certificate.
%%
%% Requires permission to access the DeleteCACertificate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_ca_certificate(aws_client:aws_client(), binary() | list(), delete_ca_certificate_request()) ->
    {ok, delete_ca_certificate_response(), tuple()} |
    {error, any()} |
    {error, delete_ca_certificate_errors(), tuple()}.
delete_ca_certificate(Client, CertificateId, Input) ->
    delete_ca_certificate(Client, CertificateId, Input, []).

-spec delete_ca_certificate(aws_client:aws_client(), binary() | list(), delete_ca_certificate_request(), proplists:proplist()) ->
    {ok, delete_ca_certificate_response(), tuple()} |
    {error, any()} |
    {error, delete_ca_certificate_errors(), tuple()}.
delete_ca_certificate(Client, CertificateId, Input0, Options0) ->
    Method = delete,
    Path = ["/cacertificate/", aws_util:encode_uri(CertificateId), ""],
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

%% @doc Deletes the specified certificate.
%%
%% A certificate cannot be deleted if it has a policy or IoT thing attached
%% to it or if
%% its status is set to ACTIVE. To delete a certificate, first use the
%% `DetachPolicy' action to detach all policies. Next, use the
%% `UpdateCertificate' action to set the certificate to the INACTIVE
%% status.
%%
%% Requires permission to access the DeleteCertificate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_certificate(aws_client:aws_client(), binary() | list(), delete_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_certificate_errors(), tuple()}.
delete_certificate(Client, CertificateId, Input) ->
    delete_certificate(Client, CertificateId, Input, []).

-spec delete_certificate(aws_client:aws_client(), binary() | list(), delete_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_certificate_errors(), tuple()}.
delete_certificate(Client, CertificateId, Input0, Options0) ->
    Method = delete,
    Path = ["/certificates/", aws_util:encode_uri(CertificateId), ""],
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
                     {<<"forceDelete">>, <<"forceDelete">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a certificate provider.
%%
%% Requires permission to access the DeleteCertificateProvider:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% If you delete the certificate provider resource, the behavior of
%% `CreateCertificateFromCsr' will resume, and IoT will create
%% certificates signed by IoT from a certificate signing request (CSR).
-spec delete_certificate_provider(aws_client:aws_client(), binary() | list(), delete_certificate_provider_request()) ->
    {ok, delete_certificate_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_certificate_provider_errors(), tuple()}.
delete_certificate_provider(Client, CertificateProviderName, Input) ->
    delete_certificate_provider(Client, CertificateProviderName, Input, []).

-spec delete_certificate_provider(aws_client:aws_client(), binary() | list(), delete_certificate_provider_request(), proplists:proplist()) ->
    {ok, delete_certificate_provider_response(), tuple()} |
    {error, any()} |
    {error, delete_certificate_provider_errors(), tuple()}.
delete_certificate_provider(Client, CertificateProviderName, Input0, Options0) ->
    Method = delete,
    Path = ["/certificate-providers/", aws_util:encode_uri(CertificateProviderName), ""],
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

%% @doc Delete a command resource.
-spec delete_command(aws_client:aws_client(), binary() | list(), delete_command_request()) ->
    {ok, delete_command_response(), tuple()} |
    {error, any()} |
    {error, delete_command_errors(), tuple()}.
delete_command(Client, CommandId, Input) ->
    delete_command(Client, CommandId, Input, []).

-spec delete_command(aws_client:aws_client(), binary() | list(), delete_command_request(), proplists:proplist()) ->
    {ok, delete_command_response(), tuple()} |
    {error, any()} |
    {error, delete_command_errors(), tuple()}.
delete_command(Client, CommandId, Input0, Options0) ->
    Method = delete,
    Path = ["/commands/", aws_util:encode_uri(CommandId), ""],
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

%% @doc Delete a command execution.
%%
%% Only command executions that enter a terminal state can be deleted from
%% your account.
-spec delete_command_execution(aws_client:aws_client(), binary() | list(), delete_command_execution_request()) ->
    {ok, delete_command_execution_response(), tuple()} |
    {error, any()} |
    {error, delete_command_execution_errors(), tuple()}.
delete_command_execution(Client, ExecutionId, Input) ->
    delete_command_execution(Client, ExecutionId, Input, []).

-spec delete_command_execution(aws_client:aws_client(), binary() | list(), delete_command_execution_request(), proplists:proplist()) ->
    {ok, delete_command_execution_response(), tuple()} |
    {error, any()} |
    {error, delete_command_execution_errors(), tuple()}.
delete_command_execution(Client, ExecutionId, Input0, Options0) ->
    Method = delete,
    Path = ["/command-executions/", aws_util:encode_uri(ExecutionId), ""],
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
                     {<<"targetArn">>, <<"targetArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes a Device Defender detect custom metric.
%%
%% Requires permission to access the DeleteCustomMetric:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% Before you can delete a custom metric, you must first remove the custom
%% metric from all
%% security profiles it's a part of.
%% The
%% security
%% profile associated with the custom metric can be found using the
%% ListSecurityProfiles:
%% https://docs.aws.amazon.com/iot/latest/apireference/API_ListSecurityProfiles.html
%% API with `metricName' set to your custom metric name.
-spec delete_custom_metric(aws_client:aws_client(), binary() | list(), delete_custom_metric_request()) ->
    {ok, delete_custom_metric_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_metric_errors(), tuple()}.
delete_custom_metric(Client, MetricName, Input) ->
    delete_custom_metric(Client, MetricName, Input, []).

-spec delete_custom_metric(aws_client:aws_client(), binary() | list(), delete_custom_metric_request(), proplists:proplist()) ->
    {ok, delete_custom_metric_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_metric_errors(), tuple()}.
delete_custom_metric(Client, MetricName, Input0, Options0) ->
    Method = delete,
    Path = ["/custom-metric/", aws_util:encode_uri(MetricName), ""],
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

%% @doc Removes the specified dimension from your Amazon Web Services
%% accounts.
%%
%% Requires permission to access the DeleteDimension:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_dimension(aws_client:aws_client(), binary() | list(), delete_dimension_request()) ->
    {ok, delete_dimension_response(), tuple()} |
    {error, any()} |
    {error, delete_dimension_errors(), tuple()}.
delete_dimension(Client, Name, Input) ->
    delete_dimension(Client, Name, Input, []).

-spec delete_dimension(aws_client:aws_client(), binary() | list(), delete_dimension_request(), proplists:proplist()) ->
    {ok, delete_dimension_response(), tuple()} |
    {error, any()} |
    {error, delete_dimension_errors(), tuple()}.
delete_dimension(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/dimensions/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes the specified domain configuration.
%%
%% Requires permission to access the DeleteDomainConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_domain_configuration(aws_client:aws_client(), binary() | list(), delete_domain_configuration_request()) ->
    {ok, delete_domain_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_configuration_errors(), tuple()}.
delete_domain_configuration(Client, DomainConfigurationName, Input) ->
    delete_domain_configuration(Client, DomainConfigurationName, Input, []).

-spec delete_domain_configuration(aws_client:aws_client(), binary() | list(), delete_domain_configuration_request(), proplists:proplist()) ->
    {ok, delete_domain_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_configuration_errors(), tuple()}.
delete_domain_configuration(Client, DomainConfigurationName, Input0, Options0) ->
    Method = delete,
    Path = ["/domainConfigurations/", aws_util:encode_uri(DomainConfigurationName), ""],
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

%% @doc Deletes a dynamic thing group.
%%
%% Requires permission to access the DeleteDynamicThingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_dynamic_thing_group(aws_client:aws_client(), binary() | list(), delete_dynamic_thing_group_request()) ->
    {ok, delete_dynamic_thing_group_response(), tuple()} |
    {error, any()} |
    {error, delete_dynamic_thing_group_errors(), tuple()}.
delete_dynamic_thing_group(Client, ThingGroupName, Input) ->
    delete_dynamic_thing_group(Client, ThingGroupName, Input, []).

-spec delete_dynamic_thing_group(aws_client:aws_client(), binary() | list(), delete_dynamic_thing_group_request(), proplists:proplist()) ->
    {ok, delete_dynamic_thing_group_response(), tuple()} |
    {error, any()} |
    {error, delete_dynamic_thing_group_errors(), tuple()}.
delete_dynamic_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/dynamic-thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
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
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified fleet metric.
%%
%% Returns successfully with no error if the deletion is successful or you
%% specify a fleet metric that doesn't exist.
%%
%% Requires permission to access the DeleteFleetMetric:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_fleet_metric(aws_client:aws_client(), binary() | list(), delete_fleet_metric_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_fleet_metric_errors(), tuple()}.
delete_fleet_metric(Client, MetricName, Input) ->
    delete_fleet_metric(Client, MetricName, Input, []).

-spec delete_fleet_metric(aws_client:aws_client(), binary() | list(), delete_fleet_metric_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_fleet_metric_errors(), tuple()}.
delete_fleet_metric(Client, MetricName, Input0, Options0) ->
    Method = delete,
    Path = ["/fleet-metric/", aws_util:encode_uri(MetricName), ""],
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
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a job and its related job executions.
%%
%% Deleting a job may take time, depending on the number of job executions
%% created for
%% the job and various other factors. While the job is being deleted, the
%% status of the job
%% will be shown as &quot;DELETION_IN_PROGRESS&quot;. Attempting to delete or
%% cancel a job whose
%% status is already &quot;DELETION_IN_PROGRESS&quot; will result in an
%% error.
%%
%% Only 10 jobs may have status &quot;DELETION_IN_PROGRESS&quot; at the same
%% time, or a
%% LimitExceededException will occur.
%%
%% Requires permission to access the DeleteJob:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_job(aws_client:aws_client(), binary() | list(), delete_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_job_errors(), tuple()}.
delete_job(Client, JobId, Input) ->
    delete_job(Client, JobId, Input, []).

-spec delete_job(aws_client:aws_client(), binary() | list(), delete_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_job_errors(), tuple()}.
delete_job(Client, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
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
                     {<<"force">>, <<"force">>},
                     {<<"namespaceId">>, <<"namespaceId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a job execution.
%%
%% Requires permission to access the DeleteJobExecution:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_job_execution_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_job_execution_errors(), tuple()}.
delete_job_execution(Client, ExecutionNumber, JobId, ThingName, Input) ->
    delete_job_execution(Client, ExecutionNumber, JobId, ThingName, Input, []).

-spec delete_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_job_execution_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_job_execution_errors(), tuple()}.
delete_job_execution(Client, ExecutionNumber, JobId, ThingName, Input0, Options0) ->
    Method = delete,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/", aws_util:encode_uri(JobId), "/executionNumber/", aws_util:encode_uri(ExecutionNumber), ""],
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
                     {<<"force">>, <<"force">>},
                     {<<"namespaceId">>, <<"namespaceId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified job template.
-spec delete_job_template(aws_client:aws_client(), binary() | list(), delete_job_template_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_job_template_errors(), tuple()}.
delete_job_template(Client, JobTemplateId, Input) ->
    delete_job_template(Client, JobTemplateId, Input, []).

-spec delete_job_template(aws_client:aws_client(), binary() | list(), delete_job_template_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_job_template_errors(), tuple()}.
delete_job_template(Client, JobTemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/job-templates/", aws_util:encode_uri(JobTemplateId), ""],
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

%% @doc Deletes a defined mitigation action from your Amazon Web Services
%% accounts.
%%
%% Requires permission to access the DeleteMitigationAction:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_mitigation_action(aws_client:aws_client(), binary() | list(), delete_mitigation_action_request()) ->
    {ok, delete_mitigation_action_response(), tuple()} |
    {error, any()} |
    {error, delete_mitigation_action_errors(), tuple()}.
delete_mitigation_action(Client, ActionName, Input) ->
    delete_mitigation_action(Client, ActionName, Input, []).

-spec delete_mitigation_action(aws_client:aws_client(), binary() | list(), delete_mitigation_action_request(), proplists:proplist()) ->
    {ok, delete_mitigation_action_response(), tuple()} |
    {error, any()} |
    {error, delete_mitigation_action_errors(), tuple()}.
delete_mitigation_action(Client, ActionName, Input0, Options0) ->
    Method = delete,
    Path = ["/mitigationactions/actions/", aws_util:encode_uri(ActionName), ""],
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

%% @doc Delete an OTA update.
%%
%% Requires permission to access the DeleteOTAUpdate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_ota_update(aws_client:aws_client(), binary() | list(), delete_ota_update_request()) ->
    {ok, delete_ota_update_response(), tuple()} |
    {error, any()} |
    {error, delete_ota_update_errors(), tuple()}.
delete_ota_update(Client, OtaUpdateId, Input) ->
    delete_ota_update(Client, OtaUpdateId, Input, []).

-spec delete_ota_update(aws_client:aws_client(), binary() | list(), delete_ota_update_request(), proplists:proplist()) ->
    {ok, delete_ota_update_response(), tuple()} |
    {error, any()} |
    {error, delete_ota_update_errors(), tuple()}.
delete_ota_update(Client, OtaUpdateId, Input0, Options0) ->
    Method = delete,
    Path = ["/otaUpdates/", aws_util:encode_uri(OtaUpdateId), ""],
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
                     {<<"deleteStream">>, <<"deleteStream">>},
                     {<<"forceDeleteAWSJob">>, <<"forceDeleteAWSJob">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific version from a software package.
%%
%% Note: All package versions must be deleted before deleting the software
%% package.
%%
%% Requires permission to access the DeletePackageVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_package(aws_client:aws_client(), binary() | list(), delete_package_request()) ->
    {ok, delete_package_response(), tuple()} |
    {error, any()} |
    {error, delete_package_errors(), tuple()}.
delete_package(Client, PackageName, Input) ->
    delete_package(Client, PackageName, Input, []).

-spec delete_package(aws_client:aws_client(), binary() | list(), delete_package_request(), proplists:proplist()) ->
    {ok, delete_package_response(), tuple()} |
    {error, any()} |
    {error, delete_package_errors(), tuple()}.
delete_package(Client, PackageName, Input0, Options0) ->
    Method = delete,
    Path = ["/packages/", aws_util:encode_uri(PackageName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific version from a software package.
%%
%% Note: If a package version is designated as default, you must remove the
%% designation from the software package using the `UpdatePackage'
%% action.
-spec delete_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_package_version_request()) ->
    {ok, delete_package_version_response(), tuple()} |
    {error, any()} |
    {error, delete_package_version_errors(), tuple()}.
delete_package_version(Client, PackageName, VersionName, Input) ->
    delete_package_version(Client, PackageName, VersionName, Input, []).

-spec delete_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_package_version_request(), proplists:proplist()) ->
    {ok, delete_package_version_response(), tuple()} |
    {error, any()} |
    {error, delete_package_version_errors(), tuple()}.
delete_package_version(Client, PackageName, VersionName, Input0, Options0) ->
    Method = delete,
    Path = ["/packages/", aws_util:encode_uri(PackageName), "/versions/", aws_util:encode_uri(VersionName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified policy.
%%
%% A policy cannot be deleted if it has non-default versions or it is
%% attached to any
%% certificate.
%%
%% To delete a policy, use the `DeletePolicyVersion' action to delete all
%% non-default
%% versions of the policy; use the `DetachPolicy' action to detach the
%% policy from any
%% certificate; and then use the DeletePolicy action to delete the policy.
%%
%% When a policy is deleted using DeletePolicy, its default version is
%% deleted with
%% it.
%%
%% Because of the distributed nature of Amazon Web Services, it can take up
%% to five minutes after
%% a policy is detached before it's ready to be deleted.
%%
%% Requires permission to access the DeletePolicy:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_policy(aws_client:aws_client(), binary() | list(), delete_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, PolicyName, Input) ->
    delete_policy(Client, PolicyName, Input, []).

-spec delete_policy(aws_client:aws_client(), binary() | list(), delete_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, PolicyName, Input0, Options0) ->
    Method = delete,
    Path = ["/policies/", aws_util:encode_uri(PolicyName), ""],
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

%% @doc Deletes the specified version of the specified policy.
%%
%% You cannot delete the default
%% version of a policy using this action. To delete the default version of a
%% policy, use `DeletePolicy'. To find out which version of a policy is
%% marked as the default
%% version, use ListPolicyVersions.
%%
%% Requires permission to access the DeletePolicyVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_policy_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_policy_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_version_errors(), tuple()}.
delete_policy_version(Client, PolicyName, PolicyVersionId, Input) ->
    delete_policy_version(Client, PolicyName, PolicyVersionId, Input, []).

-spec delete_policy_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_policy_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_policy_version_errors(), tuple()}.
delete_policy_version(Client, PolicyName, PolicyVersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/policies/", aws_util:encode_uri(PolicyName), "/version/", aws_util:encode_uri(PolicyVersionId), ""],
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

%% @doc Deletes a provisioning template.
%%
%% Requires permission to access the DeleteProvisioningTemplate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_provisioning_template(aws_client:aws_client(), binary() | list(), delete_provisioning_template_request()) ->
    {ok, delete_provisioning_template_response(), tuple()} |
    {error, any()} |
    {error, delete_provisioning_template_errors(), tuple()}.
delete_provisioning_template(Client, TemplateName, Input) ->
    delete_provisioning_template(Client, TemplateName, Input, []).

-spec delete_provisioning_template(aws_client:aws_client(), binary() | list(), delete_provisioning_template_request(), proplists:proplist()) ->
    {ok, delete_provisioning_template_response(), tuple()} |
    {error, any()} |
    {error, delete_provisioning_template_errors(), tuple()}.
delete_provisioning_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), ""],
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

%% @doc Deletes a provisioning template version.
%%
%% Requires permission to access the DeleteProvisioningTemplateVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_provisioning_template_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_provisioning_template_version_request()) ->
    {ok, delete_provisioning_template_version_response(), tuple()} |
    {error, any()} |
    {error, delete_provisioning_template_version_errors(), tuple()}.
delete_provisioning_template_version(Client, TemplateName, VersionId, Input) ->
    delete_provisioning_template_version(Client, TemplateName, VersionId, Input, []).

-spec delete_provisioning_template_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_provisioning_template_version_request(), proplists:proplist()) ->
    {ok, delete_provisioning_template_version_response(), tuple()} |
    {error, any()} |
    {error, delete_provisioning_template_version_errors(), tuple()}.
delete_provisioning_template_version(Client, TemplateName, VersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), "/versions/", aws_util:encode_uri(VersionId), ""],
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

%% @doc Deletes a CA certificate registration code.
%%
%% Requires permission to access the DeleteRegistrationCode:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_registration_code(aws_client:aws_client(), delete_registration_code_request()) ->
    {ok, delete_registration_code_response(), tuple()} |
    {error, any()} |
    {error, delete_registration_code_errors(), tuple()}.
delete_registration_code(Client, Input) ->
    delete_registration_code(Client, Input, []).

-spec delete_registration_code(aws_client:aws_client(), delete_registration_code_request(), proplists:proplist()) ->
    {ok, delete_registration_code_response(), tuple()} |
    {error, any()} |
    {error, delete_registration_code_errors(), tuple()}.
delete_registration_code(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/registrationcode"],
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

%% @doc Deletes a role alias
%%
%% Requires permission to access the DeleteRoleAlias:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_role_alias(aws_client:aws_client(), binary() | list(), delete_role_alias_request()) ->
    {ok, delete_role_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_role_alias_errors(), tuple()}.
delete_role_alias(Client, RoleAlias, Input) ->
    delete_role_alias(Client, RoleAlias, Input, []).

-spec delete_role_alias(aws_client:aws_client(), binary() | list(), delete_role_alias_request(), proplists:proplist()) ->
    {ok, delete_role_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_role_alias_errors(), tuple()}.
delete_role_alias(Client, RoleAlias, Input0, Options0) ->
    Method = delete,
    Path = ["/role-aliases/", aws_util:encode_uri(RoleAlias), ""],
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

%% @doc Deletes a scheduled audit.
%%
%% Requires permission to access the DeleteScheduledAudit:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_scheduled_audit(aws_client:aws_client(), binary() | list(), delete_scheduled_audit_request()) ->
    {ok, delete_scheduled_audit_response(), tuple()} |
    {error, any()} |
    {error, delete_scheduled_audit_errors(), tuple()}.
delete_scheduled_audit(Client, ScheduledAuditName, Input) ->
    delete_scheduled_audit(Client, ScheduledAuditName, Input, []).

-spec delete_scheduled_audit(aws_client:aws_client(), binary() | list(), delete_scheduled_audit_request(), proplists:proplist()) ->
    {ok, delete_scheduled_audit_response(), tuple()} |
    {error, any()} |
    {error, delete_scheduled_audit_errors(), tuple()}.
delete_scheduled_audit(Client, ScheduledAuditName, Input0, Options0) ->
    Method = delete,
    Path = ["/audit/scheduledaudits/", aws_util:encode_uri(ScheduledAuditName), ""],
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

%% @doc Deletes a Device Defender security profile.
%%
%% Requires permission to access the DeleteSecurityProfile:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_security_profile(aws_client:aws_client(), binary() | list(), delete_security_profile_request()) ->
    {ok, delete_security_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_security_profile_errors(), tuple()}.
delete_security_profile(Client, SecurityProfileName, Input) ->
    delete_security_profile(Client, SecurityProfileName, Input, []).

-spec delete_security_profile(aws_client:aws_client(), binary() | list(), delete_security_profile_request(), proplists:proplist()) ->
    {ok, delete_security_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_security_profile_errors(), tuple()}.
delete_security_profile(Client, SecurityProfileName, Input0, Options0) ->
    Method = delete,
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), ""],
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
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a stream.
%%
%% Requires permission to access the DeleteStream:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_stream(aws_client:aws_client(), binary() | list(), delete_stream_request()) ->
    {ok, delete_stream_response(), tuple()} |
    {error, any()} |
    {error, delete_stream_errors(), tuple()}.
delete_stream(Client, StreamId, Input) ->
    delete_stream(Client, StreamId, Input, []).

-spec delete_stream(aws_client:aws_client(), binary() | list(), delete_stream_request(), proplists:proplist()) ->
    {ok, delete_stream_response(), tuple()} |
    {error, any()} |
    {error, delete_stream_errors(), tuple()}.
delete_stream(Client, StreamId, Input0, Options0) ->
    Method = delete,
    Path = ["/streams/", aws_util:encode_uri(StreamId), ""],
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

%% @doc Deletes the specified thing.
%%
%% Returns successfully with no error if the deletion is
%% successful or you specify a thing that doesn't exist.
%%
%% Requires permission to access the DeleteThing:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_thing(aws_client:aws_client(), binary() | list(), delete_thing_request()) ->
    {ok, delete_thing_response(), tuple()} |
    {error, any()} |
    {error, delete_thing_errors(), tuple()}.
delete_thing(Client, ThingName, Input) ->
    delete_thing(Client, ThingName, Input, []).

-spec delete_thing(aws_client:aws_client(), binary() | list(), delete_thing_request(), proplists:proplist()) ->
    {ok, delete_thing_response(), tuple()} |
    {error, any()} |
    {error, delete_thing_errors(), tuple()}.
delete_thing(Client, ThingName, Input0, Options0) ->
    Method = delete,
    Path = ["/things/", aws_util:encode_uri(ThingName), ""],
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
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a thing group.
%%
%% Requires permission to access the DeleteThingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_thing_group(aws_client:aws_client(), binary() | list(), delete_thing_group_request()) ->
    {ok, delete_thing_group_response(), tuple()} |
    {error, any()} |
    {error, delete_thing_group_errors(), tuple()}.
delete_thing_group(Client, ThingGroupName, Input) ->
    delete_thing_group(Client, ThingGroupName, Input, []).

-spec delete_thing_group(aws_client:aws_client(), binary() | list(), delete_thing_group_request(), proplists:proplist()) ->
    {ok, delete_thing_group_response(), tuple()} |
    {error, any()} |
    {error, delete_thing_group_errors(), tuple()}.
delete_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
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
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified thing type.
%%
%% You cannot delete a thing type if it has things
%% associated with it. To delete a thing type, first mark it as deprecated by
%% calling `DeprecateThingType', then remove any associated things by
%% calling `UpdateThing' to change the thing type on any associated
%% thing, and
%% finally use `DeleteThingType' to delete the thing type.
%%
%% Requires permission to access the DeleteThingType:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_thing_type(aws_client:aws_client(), binary() | list(), delete_thing_type_request()) ->
    {ok, delete_thing_type_response(), tuple()} |
    {error, any()} |
    {error, delete_thing_type_errors(), tuple()}.
delete_thing_type(Client, ThingTypeName, Input) ->
    delete_thing_type(Client, ThingTypeName, Input, []).

-spec delete_thing_type(aws_client:aws_client(), binary() | list(), delete_thing_type_request(), proplists:proplist()) ->
    {ok, delete_thing_type_response(), tuple()} |
    {error, any()} |
    {error, delete_thing_type_errors(), tuple()}.
delete_thing_type(Client, ThingTypeName, Input0, Options0) ->
    Method = delete,
    Path = ["/thing-types/", aws_util:encode_uri(ThingTypeName), ""],
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

%% @doc Deletes the rule.
%%
%% Requires permission to access the DeleteTopicRule:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_topic_rule(aws_client:aws_client(), binary() | list(), delete_topic_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_topic_rule_errors(), tuple()}.
delete_topic_rule(Client, RuleName, Input) ->
    delete_topic_rule(Client, RuleName, Input, []).

-spec delete_topic_rule(aws_client:aws_client(), binary() | list(), delete_topic_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_topic_rule_errors(), tuple()}.
delete_topic_rule(Client, RuleName, Input0, Options0) ->
    Method = delete,
    Path = ["/rules/", aws_util:encode_uri(RuleName), ""],
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

%% @doc Deletes a topic rule destination.
%%
%% Requires permission to access the DeleteTopicRuleDestination:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_topic_rule_destination(aws_client:aws_client(), binary() | list(), delete_topic_rule_destination_request()) ->
    {ok, delete_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_topic_rule_destination_errors(), tuple()}.
delete_topic_rule_destination(Client, Arn, Input) ->
    delete_topic_rule_destination(Client, Arn, Input, []).

-spec delete_topic_rule_destination(aws_client:aws_client(), binary() | list(), delete_topic_rule_destination_request(), proplists:proplist()) ->
    {ok, delete_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_topic_rule_destination_errors(), tuple()}.
delete_topic_rule_destination(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/destinations/", aws_util:encode_multi_segment_uri(Arn), ""],
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

%% @doc Deletes a logging level.
%%
%% Requires permission to access the DeleteV2LoggingLevel:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_v2_logging_level(aws_client:aws_client(), delete_v2_logging_level_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_v2_logging_level_errors(), tuple()}.
delete_v2_logging_level(Client, Input) ->
    delete_v2_logging_level(Client, Input, []).

-spec delete_v2_logging_level(aws_client:aws_client(), delete_v2_logging_level_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_v2_logging_level_errors(), tuple()}.
delete_v2_logging_level(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v2LoggingLevel"],
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
                     {<<"targetName">>, <<"targetName">>},
                     {<<"targetType">>, <<"targetType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deprecates a thing type.
%%
%% You can not associate new things with deprecated thing
%% type.
%%
%% Requires permission to access the DeprecateThingType:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec deprecate_thing_type(aws_client:aws_client(), binary() | list(), deprecate_thing_type_request()) ->
    {ok, deprecate_thing_type_response(), tuple()} |
    {error, any()} |
    {error, deprecate_thing_type_errors(), tuple()}.
deprecate_thing_type(Client, ThingTypeName, Input) ->
    deprecate_thing_type(Client, ThingTypeName, Input, []).

-spec deprecate_thing_type(aws_client:aws_client(), binary() | list(), deprecate_thing_type_request(), proplists:proplist()) ->
    {ok, deprecate_thing_type_response(), tuple()} |
    {error, any()} |
    {error, deprecate_thing_type_errors(), tuple()}.
deprecate_thing_type(Client, ThingTypeName, Input0, Options0) ->
    Method = post,
    Path = ["/thing-types/", aws_util:encode_uri(ThingTypeName), "/deprecate"],
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

%% @doc Gets information about the Device Defender audit settings for this
%% account.
%%
%% Settings include how audit notifications are sent and which audit checks
%% are
%% enabled or disabled.
%%
%% Requires permission to access the DescribeAccountAuditConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_account_audit_configuration(aws_client:aws_client()) ->
    {ok, describe_account_audit_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_account_audit_configuration_errors(), tuple()}.
describe_account_audit_configuration(Client)
  when is_map(Client) ->
    describe_account_audit_configuration(Client, #{}, #{}).

-spec describe_account_audit_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, describe_account_audit_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_account_audit_configuration_errors(), tuple()}.
describe_account_audit_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_audit_configuration(Client, QueryMap, HeadersMap, []).

-spec describe_account_audit_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_account_audit_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_account_audit_configuration_errors(), tuple()}.
describe_account_audit_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a single audit finding.
%%
%% Properties include the reason for
%% noncompliance, the severity of the issue,
%% and the start time
%% when the audit that returned the
%% finding.
%%
%% Requires permission to access the DescribeAuditFinding:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_audit_finding(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_audit_finding_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_finding_errors(), tuple()}.
describe_audit_finding(Client, FindingId)
  when is_map(Client) ->
    describe_audit_finding(Client, FindingId, #{}, #{}).

-spec describe_audit_finding(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_audit_finding_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_finding_errors(), tuple()}.
describe_audit_finding(Client, FindingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_audit_finding(Client, FindingId, QueryMap, HeadersMap, []).

-spec describe_audit_finding(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_audit_finding_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_finding_errors(), tuple()}.
describe_audit_finding(Client, FindingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/findings/", aws_util:encode_uri(FindingId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an audit mitigation task that is used to apply
%% mitigation actions to a set of audit findings.
%%
%% Properties include the actions being applied, the audit checks to which
%% they're being applied, the task status, and aggregated task
%% statistics.
-spec describe_audit_mitigation_actions_task(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_audit_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_mitigation_actions_task_errors(), tuple()}.
describe_audit_mitigation_actions_task(Client, TaskId)
  when is_map(Client) ->
    describe_audit_mitigation_actions_task(Client, TaskId, #{}, #{}).

-spec describe_audit_mitigation_actions_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_audit_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_mitigation_actions_task_errors(), tuple()}.
describe_audit_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_audit_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap, []).

-spec describe_audit_mitigation_actions_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_audit_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_mitigation_actions_task_errors(), tuple()}.
describe_audit_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/mitigationactions/tasks/", aws_util:encode_uri(TaskId), ""],
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
%% Gets information about a Device Defender audit suppression.
-spec describe_audit_suppression(aws_client:aws_client(), describe_audit_suppression_request()) ->
    {ok, describe_audit_suppression_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_suppression_errors(), tuple()}.
describe_audit_suppression(Client, Input) ->
    describe_audit_suppression(Client, Input, []).

-spec describe_audit_suppression(aws_client:aws_client(), describe_audit_suppression_request(), proplists:proplist()) ->
    {ok, describe_audit_suppression_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_suppression_errors(), tuple()}.
describe_audit_suppression(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/suppressions/describe"],
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

%% @doc Gets information about a Device Defender audit.
%%
%% Requires permission to access the DescribeAuditTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_audit_task(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_audit_task_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_task_errors(), tuple()}.
describe_audit_task(Client, TaskId)
  when is_map(Client) ->
    describe_audit_task(Client, TaskId, #{}, #{}).

-spec describe_audit_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_audit_task_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_task_errors(), tuple()}.
describe_audit_task(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_audit_task(Client, TaskId, QueryMap, HeadersMap, []).

-spec describe_audit_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_audit_task_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_task_errors(), tuple()}.
describe_audit_task(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an authorizer.
%%
%% Requires permission to access the DescribeAuthorizer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_authorizer(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_authorizer_response(), tuple()} |
    {error, any()} |
    {error, describe_authorizer_errors(), tuple()}.
describe_authorizer(Client, AuthorizerName)
  when is_map(Client) ->
    describe_authorizer(Client, AuthorizerName, #{}, #{}).

-spec describe_authorizer(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_authorizer_response(), tuple()} |
    {error, any()} |
    {error, describe_authorizer_errors(), tuple()}.
describe_authorizer(Client, AuthorizerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_authorizer(Client, AuthorizerName, QueryMap, HeadersMap, []).

-spec describe_authorizer(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_authorizer_response(), tuple()} |
    {error, any()} |
    {error, describe_authorizer_errors(), tuple()}.
describe_authorizer(Client, AuthorizerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/authorizer/", aws_util:encode_uri(AuthorizerName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a billing group.
%%
%% Requires permission to access the DescribeBillingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_billing_group(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_billing_group_response(), tuple()} |
    {error, any()} |
    {error, describe_billing_group_errors(), tuple()}.
describe_billing_group(Client, BillingGroupName)
  when is_map(Client) ->
    describe_billing_group(Client, BillingGroupName, #{}, #{}).

-spec describe_billing_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_billing_group_response(), tuple()} |
    {error, any()} |
    {error, describe_billing_group_errors(), tuple()}.
describe_billing_group(Client, BillingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_billing_group(Client, BillingGroupName, QueryMap, HeadersMap, []).

-spec describe_billing_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_billing_group_response(), tuple()} |
    {error, any()} |
    {error, describe_billing_group_errors(), tuple()}.
describe_billing_group(Client, BillingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/billing-groups/", aws_util:encode_uri(BillingGroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a registered CA certificate.
%%
%% Requires permission to access the DescribeCACertificate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_ca_certificate(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_ca_certificate_response(), tuple()} |
    {error, any()} |
    {error, describe_ca_certificate_errors(), tuple()}.
describe_ca_certificate(Client, CertificateId)
  when is_map(Client) ->
    describe_ca_certificate(Client, CertificateId, #{}, #{}).

-spec describe_ca_certificate(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_ca_certificate_response(), tuple()} |
    {error, any()} |
    {error, describe_ca_certificate_errors(), tuple()}.
describe_ca_certificate(Client, CertificateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_ca_certificate(Client, CertificateId, QueryMap, HeadersMap, []).

-spec describe_ca_certificate(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_ca_certificate_response(), tuple()} |
    {error, any()} |
    {error, describe_ca_certificate_errors(), tuple()}.
describe_ca_certificate(Client, CertificateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cacertificate/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified certificate.
%%
%% Requires permission to access the DescribeCertificate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_certificate(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_certificate_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_errors(), tuple()}.
describe_certificate(Client, CertificateId)
  when is_map(Client) ->
    describe_certificate(Client, CertificateId, #{}, #{}).

-spec describe_certificate(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_certificate_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_errors(), tuple()}.
describe_certificate(Client, CertificateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_certificate(Client, CertificateId, QueryMap, HeadersMap, []).

-spec describe_certificate(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_certificate_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_errors(), tuple()}.
describe_certificate(Client, CertificateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/certificates/", aws_util:encode_uri(CertificateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a certificate provider.
%%
%% Requires permission to access the DescribeCertificateProvider:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_certificate_provider(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_certificate_provider_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_provider_errors(), tuple()}.
describe_certificate_provider(Client, CertificateProviderName)
  when is_map(Client) ->
    describe_certificate_provider(Client, CertificateProviderName, #{}, #{}).

-spec describe_certificate_provider(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_certificate_provider_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_provider_errors(), tuple()}.
describe_certificate_provider(Client, CertificateProviderName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_certificate_provider(Client, CertificateProviderName, QueryMap, HeadersMap, []).

-spec describe_certificate_provider(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_certificate_provider_response(), tuple()} |
    {error, any()} |
    {error, describe_certificate_provider_errors(), tuple()}.
describe_certificate_provider(Client, CertificateProviderName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/certificate-providers/", aws_util:encode_uri(CertificateProviderName), ""],
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
%% Gets information about a Device Defender detect custom metric.
%%
%% Requires permission to access the DescribeCustomMetric:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_custom_metric(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_custom_metric_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_metric_errors(), tuple()}.
describe_custom_metric(Client, MetricName)
  when is_map(Client) ->
    describe_custom_metric(Client, MetricName, #{}, #{}).

-spec describe_custom_metric(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_custom_metric_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_metric_errors(), tuple()}.
describe_custom_metric(Client, MetricName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_custom_metric(Client, MetricName, QueryMap, HeadersMap, []).

-spec describe_custom_metric(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_custom_metric_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_metric_errors(), tuple()}.
describe_custom_metric(Client, MetricName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/custom-metric/", aws_util:encode_uri(MetricName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the default authorizer.
%%
%% Requires permission to access the DescribeDefaultAuthorizer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_default_authorizer(aws_client:aws_client()) ->
    {ok, describe_default_authorizer_response(), tuple()} |
    {error, any()} |
    {error, describe_default_authorizer_errors(), tuple()}.
describe_default_authorizer(Client)
  when is_map(Client) ->
    describe_default_authorizer(Client, #{}, #{}).

-spec describe_default_authorizer(aws_client:aws_client(), map(), map()) ->
    {ok, describe_default_authorizer_response(), tuple()} |
    {error, any()} |
    {error, describe_default_authorizer_errors(), tuple()}.
describe_default_authorizer(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_default_authorizer(Client, QueryMap, HeadersMap, []).

-spec describe_default_authorizer(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_default_authorizer_response(), tuple()} |
    {error, any()} |
    {error, describe_default_authorizer_errors(), tuple()}.
describe_default_authorizer(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/default-authorizer"],
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
%% Gets information about a Device Defender ML Detect mitigation action.
%%
%% Requires permission to access the DescribeDetectMitigationActionsTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_detect_mitigation_actions_task(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_detect_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, describe_detect_mitigation_actions_task_errors(), tuple()}.
describe_detect_mitigation_actions_task(Client, TaskId)
  when is_map(Client) ->
    describe_detect_mitigation_actions_task(Client, TaskId, #{}, #{}).

-spec describe_detect_mitigation_actions_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_detect_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, describe_detect_mitigation_actions_task_errors(), tuple()}.
describe_detect_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_detect_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap, []).

-spec describe_detect_mitigation_actions_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_detect_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, describe_detect_mitigation_actions_task_errors(), tuple()}.
describe_detect_mitigation_actions_task(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detect/mitigationactions/tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides details about a dimension that is defined in your Amazon Web
%% Services accounts.
%%
%% Requires permission to access the DescribeDimension:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_dimension(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_dimension_response(), tuple()} |
    {error, any()} |
    {error, describe_dimension_errors(), tuple()}.
describe_dimension(Client, Name)
  when is_map(Client) ->
    describe_dimension(Client, Name, #{}, #{}).

-spec describe_dimension(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_dimension_response(), tuple()} |
    {error, any()} |
    {error, describe_dimension_errors(), tuple()}.
describe_dimension(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dimension(Client, Name, QueryMap, HeadersMap, []).

-spec describe_dimension(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dimension_response(), tuple()} |
    {error, any()} |
    {error, describe_dimension_errors(), tuple()}.
describe_dimension(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dimensions/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets summary information about a domain configuration.
%%
%% Requires permission to access the DescribeDomainConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_domain_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_domain_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_configuration_errors(), tuple()}.
describe_domain_configuration(Client, DomainConfigurationName)
  when is_map(Client) ->
    describe_domain_configuration(Client, DomainConfigurationName, #{}, #{}).

-spec describe_domain_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_domain_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_configuration_errors(), tuple()}.
describe_domain_configuration(Client, DomainConfigurationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain_configuration(Client, DomainConfigurationName, QueryMap, HeadersMap, []).

-spec describe_domain_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_domain_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_configuration_errors(), tuple()}.
describe_domain_configuration(Client, DomainConfigurationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainConfigurations/", aws_util:encode_uri(DomainConfigurationName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns or creates a unique endpoint specific to the Amazon Web
%% Services account making the
%% call.
%%
%% The first time `DescribeEndpoint' is called, an endpoint is created.
%% All subsequent calls to `DescribeEndpoint' return the same endpoint.
%%
%% Requires permission to access the DescribeEndpoint:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_endpoint(aws_client:aws_client()) ->
    {ok, describe_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_errors(), tuple()}.
describe_endpoint(Client)
  when is_map(Client) ->
    describe_endpoint(Client, #{}, #{}).

-spec describe_endpoint(aws_client:aws_client(), map(), map()) ->
    {ok, describe_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_errors(), tuple()}.
describe_endpoint(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_endpoint(Client, QueryMap, HeadersMap, []).

-spec describe_endpoint(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_errors(), tuple()}.
describe_endpoint(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/endpoint"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endpointType">>, maps:get(<<"endpointType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes event configurations.
%%
%% Requires permission to access the DescribeEventConfigurations:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_event_configurations(aws_client:aws_client()) ->
    {ok, describe_event_configurations_response(), tuple()} |
    {error, any()} |
    {error, describe_event_configurations_errors(), tuple()}.
describe_event_configurations(Client)
  when is_map(Client) ->
    describe_event_configurations(Client, #{}, #{}).

-spec describe_event_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, describe_event_configurations_response(), tuple()} |
    {error, any()} |
    {error, describe_event_configurations_errors(), tuple()}.
describe_event_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_event_configurations(Client, QueryMap, HeadersMap, []).

-spec describe_event_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_event_configurations_response(), tuple()} |
    {error, any()} |
    {error, describe_event_configurations_errors(), tuple()}.
describe_event_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/event-configurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified fleet metric.
%%
%% Requires permission to access the DescribeFleetMetric:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_fleet_metric(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_fleet_metric_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_metric_errors(), tuple()}.
describe_fleet_metric(Client, MetricName)
  when is_map(Client) ->
    describe_fleet_metric(Client, MetricName, #{}, #{}).

-spec describe_fleet_metric(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_fleet_metric_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_metric_errors(), tuple()}.
describe_fleet_metric(Client, MetricName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_fleet_metric(Client, MetricName, QueryMap, HeadersMap, []).

-spec describe_fleet_metric(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_fleet_metric_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_metric_errors(), tuple()}.
describe_fleet_metric(Client, MetricName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/fleet-metric/", aws_util:encode_uri(MetricName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a search index.
%%
%% Requires permission to access the DescribeIndex:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_index(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_index_response(), tuple()} |
    {error, any()} |
    {error, describe_index_errors(), tuple()}.
describe_index(Client, IndexName)
  when is_map(Client) ->
    describe_index(Client, IndexName, #{}, #{}).

-spec describe_index(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_index_response(), tuple()} |
    {error, any()} |
    {error, describe_index_errors(), tuple()}.
describe_index(Client, IndexName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_index(Client, IndexName, QueryMap, HeadersMap, []).

-spec describe_index(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_index_response(), tuple()} |
    {error, any()} |
    {error, describe_index_errors(), tuple()}.
describe_index(Client, IndexName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/indices/", aws_util:encode_uri(IndexName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a job.
%%
%% Requires permission to access the DescribeJob:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_job_response(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, JobId)
  when is_map(Client) ->
    describe_job(Client, JobId, #{}, #{}).

-spec describe_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_job_response(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job(Client, JobId, QueryMap, HeadersMap, []).

-spec describe_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_job_response(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"beforeSubstitution">>, maps:get(<<"beforeSubstitution">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a job execution.
%%
%% Requires permission to access the DescribeJobExecution:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_job_execution(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_job_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_job_execution_errors(), tuple()}.
describe_job_execution(Client, JobId, ThingName)
  when is_map(Client) ->
    describe_job_execution(Client, JobId, ThingName, #{}, #{}).

-spec describe_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_job_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_job_execution_errors(), tuple()}.
describe_job_execution(Client, JobId, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job_execution(Client, JobId, ThingName, QueryMap, HeadersMap, []).

-spec describe_job_execution(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_job_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_job_execution_errors(), tuple()}.
describe_job_execution(Client, JobId, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"executionNumber">>, maps:get(<<"executionNumber">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a job template.
-spec describe_job_template(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_job_template_response(), tuple()} |
    {error, any()} |
    {error, describe_job_template_errors(), tuple()}.
describe_job_template(Client, JobTemplateId)
  when is_map(Client) ->
    describe_job_template(Client, JobTemplateId, #{}, #{}).

-spec describe_job_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_job_template_response(), tuple()} |
    {error, any()} |
    {error, describe_job_template_errors(), tuple()}.
describe_job_template(Client, JobTemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job_template(Client, JobTemplateId, QueryMap, HeadersMap, []).

-spec describe_job_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_job_template_response(), tuple()} |
    {error, any()} |
    {error, describe_job_template_errors(), tuple()}.
describe_job_template(Client, JobTemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/job-templates/", aws_util:encode_uri(JobTemplateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc View details of a managed job template.
-spec describe_managed_job_template(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_managed_job_template_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_job_template_errors(), tuple()}.
describe_managed_job_template(Client, TemplateName)
  when is_map(Client) ->
    describe_managed_job_template(Client, TemplateName, #{}, #{}).

-spec describe_managed_job_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_managed_job_template_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_job_template_errors(), tuple()}.
describe_managed_job_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_managed_job_template(Client, TemplateName, QueryMap, HeadersMap, []).

-spec describe_managed_job_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_managed_job_template_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_job_template_errors(), tuple()}.
describe_managed_job_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-job-templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"templateVersion">>, maps:get(<<"templateVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a mitigation action.
%%
%% Requires permission to access the DescribeMitigationAction:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_mitigation_action(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_mitigation_action_response(), tuple()} |
    {error, any()} |
    {error, describe_mitigation_action_errors(), tuple()}.
describe_mitigation_action(Client, ActionName)
  when is_map(Client) ->
    describe_mitigation_action(Client, ActionName, #{}, #{}).

-spec describe_mitigation_action(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_mitigation_action_response(), tuple()} |
    {error, any()} |
    {error, describe_mitigation_action_errors(), tuple()}.
describe_mitigation_action(Client, ActionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_mitigation_action(Client, ActionName, QueryMap, HeadersMap, []).

-spec describe_mitigation_action(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_mitigation_action_response(), tuple()} |
    {error, any()} |
    {error, describe_mitigation_action_errors(), tuple()}.
describe_mitigation_action(Client, ActionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/mitigationactions/actions/", aws_util:encode_uri(ActionName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a provisioning template.
%%
%% Requires permission to access the DescribeProvisioningTemplate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_provisioning_template(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_provisioning_template_response(), tuple()} |
    {error, any()} |
    {error, describe_provisioning_template_errors(), tuple()}.
describe_provisioning_template(Client, TemplateName)
  when is_map(Client) ->
    describe_provisioning_template(Client, TemplateName, #{}, #{}).

-spec describe_provisioning_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_provisioning_template_response(), tuple()} |
    {error, any()} |
    {error, describe_provisioning_template_errors(), tuple()}.
describe_provisioning_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_provisioning_template(Client, TemplateName, QueryMap, HeadersMap, []).

-spec describe_provisioning_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_provisioning_template_response(), tuple()} |
    {error, any()} |
    {error, describe_provisioning_template_errors(), tuple()}.
describe_provisioning_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a provisioning template version.
%%
%% Requires permission to access the DescribeProvisioningTemplateVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_provisioning_template_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_provisioning_template_version_response(), tuple()} |
    {error, any()} |
    {error, describe_provisioning_template_version_errors(), tuple()}.
describe_provisioning_template_version(Client, TemplateName, VersionId)
  when is_map(Client) ->
    describe_provisioning_template_version(Client, TemplateName, VersionId, #{}, #{}).

-spec describe_provisioning_template_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_provisioning_template_version_response(), tuple()} |
    {error, any()} |
    {error, describe_provisioning_template_version_errors(), tuple()}.
describe_provisioning_template_version(Client, TemplateName, VersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_provisioning_template_version(Client, TemplateName, VersionId, QueryMap, HeadersMap, []).

-spec describe_provisioning_template_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_provisioning_template_version_response(), tuple()} |
    {error, any()} |
    {error, describe_provisioning_template_version_errors(), tuple()}.
describe_provisioning_template_version(Client, TemplateName, VersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a role alias.
%%
%% Requires permission to access the DescribeRoleAlias:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_role_alias(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_role_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_role_alias_errors(), tuple()}.
describe_role_alias(Client, RoleAlias)
  when is_map(Client) ->
    describe_role_alias(Client, RoleAlias, #{}, #{}).

-spec describe_role_alias(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_role_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_role_alias_errors(), tuple()}.
describe_role_alias(Client, RoleAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_role_alias(Client, RoleAlias, QueryMap, HeadersMap, []).

-spec describe_role_alias(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_role_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_role_alias_errors(), tuple()}.
describe_role_alias(Client, RoleAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/role-aliases/", aws_util:encode_uri(RoleAlias), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a scheduled audit.
%%
%% Requires permission to access the DescribeScheduledAudit:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_scheduled_audit(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_scheduled_audit_response(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_audit_errors(), tuple()}.
describe_scheduled_audit(Client, ScheduledAuditName)
  when is_map(Client) ->
    describe_scheduled_audit(Client, ScheduledAuditName, #{}, #{}).

-spec describe_scheduled_audit(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_scheduled_audit_response(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_audit_errors(), tuple()}.
describe_scheduled_audit(Client, ScheduledAuditName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_scheduled_audit(Client, ScheduledAuditName, QueryMap, HeadersMap, []).

-spec describe_scheduled_audit(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_scheduled_audit_response(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_audit_errors(), tuple()}.
describe_scheduled_audit(Client, ScheduledAuditName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/scheduledaudits/", aws_util:encode_uri(ScheduledAuditName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Device Defender security profile.
%%
%% Requires permission to access the DescribeSecurityProfile:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_security_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_security_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_security_profile_errors(), tuple()}.
describe_security_profile(Client, SecurityProfileName)
  when is_map(Client) ->
    describe_security_profile(Client, SecurityProfileName, #{}, #{}).

-spec describe_security_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_security_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_security_profile_errors(), tuple()}.
describe_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap, []).

-spec describe_security_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_security_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_security_profile_errors(), tuple()}.
describe_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a stream.
%%
%% Requires permission to access the DescribeStream:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_stream(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_stream_response(), tuple()} |
    {error, any()} |
    {error, describe_stream_errors(), tuple()}.
describe_stream(Client, StreamId)
  when is_map(Client) ->
    describe_stream(Client, StreamId, #{}, #{}).

-spec describe_stream(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_stream_response(), tuple()} |
    {error, any()} |
    {error, describe_stream_errors(), tuple()}.
describe_stream(Client, StreamId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_stream(Client, StreamId, QueryMap, HeadersMap, []).

-spec describe_stream(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_stream_response(), tuple()} |
    {error, any()} |
    {error, describe_stream_errors(), tuple()}.
describe_stream(Client, StreamId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/streams/", aws_util:encode_uri(StreamId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified thing.
%%
%% Requires permission to access the DescribeThing:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_thing(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_thing_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_errors(), tuple()}.
describe_thing(Client, ThingName)
  when is_map(Client) ->
    describe_thing(Client, ThingName, #{}, #{}).

-spec describe_thing(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_thing_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_errors(), tuple()}.
describe_thing(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_thing(Client, ThingName, QueryMap, HeadersMap, []).

-spec describe_thing(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_thing_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_errors(), tuple()}.
describe_thing(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe a thing group.
%%
%% Requires permission to access the DescribeThingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_thing_group(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_thing_group_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_group_errors(), tuple()}.
describe_thing_group(Client, ThingGroupName)
  when is_map(Client) ->
    describe_thing_group(Client, ThingGroupName, #{}, #{}).

-spec describe_thing_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_thing_group_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_group_errors(), tuple()}.
describe_thing_group(Client, ThingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_thing_group(Client, ThingGroupName, QueryMap, HeadersMap, []).

-spec describe_thing_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_thing_group_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_group_errors(), tuple()}.
describe_thing_group(Client, ThingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a bulk thing provisioning task.
%%
%% Requires permission to access the DescribeThingRegistrationTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_thing_registration_task(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_thing_registration_task_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_registration_task_errors(), tuple()}.
describe_thing_registration_task(Client, TaskId)
  when is_map(Client) ->
    describe_thing_registration_task(Client, TaskId, #{}, #{}).

-spec describe_thing_registration_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_thing_registration_task_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_registration_task_errors(), tuple()}.
describe_thing_registration_task(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_thing_registration_task(Client, TaskId, QueryMap, HeadersMap, []).

-spec describe_thing_registration_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_thing_registration_task_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_registration_task_errors(), tuple()}.
describe_thing_registration_task(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-registration-tasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified thing type.
%%
%% Requires permission to access the DescribeThingType:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec describe_thing_type(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_thing_type_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_type_errors(), tuple()}.
describe_thing_type(Client, ThingTypeName)
  when is_map(Client) ->
    describe_thing_type(Client, ThingTypeName, #{}, #{}).

-spec describe_thing_type(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_thing_type_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_type_errors(), tuple()}.
describe_thing_type(Client, ThingTypeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_thing_type(Client, ThingTypeName, QueryMap, HeadersMap, []).

-spec describe_thing_type(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_thing_type_response(), tuple()} |
    {error, any()} |
    {error, describe_thing_type_errors(), tuple()}.
describe_thing_type(Client, ThingTypeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-types/", aws_util:encode_uri(ThingTypeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Detaches a policy from the specified target.
%%
%% Because of the distributed nature of Amazon Web Services, it can take up
%% to five minutes after
%% a policy is detached before it's ready to be deleted.
%%
%% Requires permission to access the DetachPolicy:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec detach_policy(aws_client:aws_client(), binary() | list(), detach_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_policy_errors(), tuple()}.
detach_policy(Client, PolicyName, Input) ->
    detach_policy(Client, PolicyName, Input, []).

-spec detach_policy(aws_client:aws_client(), binary() | list(), detach_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_policy_errors(), tuple()}.
detach_policy(Client, PolicyName, Input0, Options0) ->
    Method = post,
    Path = ["/target-policies/", aws_util:encode_uri(PolicyName), ""],
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

%% @doc Removes the specified policy from the specified certificate.
%%
%% Note: This action is deprecated and works as
%% expected for backward compatibility, but we won't add enhancements.
%% Use `DetachPolicy' instead.
%%
%% Requires permission to access the DetachPrincipalPolicy:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec detach_principal_policy(aws_client:aws_client(), binary() | list(), detach_principal_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_principal_policy_errors(), tuple()}.
detach_principal_policy(Client, PolicyName, Input) ->
    detach_principal_policy(Client, PolicyName, Input, []).

-spec detach_principal_policy(aws_client:aws_client(), binary() | list(), detach_principal_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_principal_policy_errors(), tuple()}.
detach_principal_policy(Client, PolicyName, Input0, Options0) ->
    Method = delete,
    Path = ["/principal-policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-iot-principal">>, <<"principal">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a Device Defender security profile from a thing group
%% or from this account.
%%
%% Requires permission to access the DetachSecurityProfile:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec detach_security_profile(aws_client:aws_client(), binary() | list(), detach_security_profile_request()) ->
    {ok, detach_security_profile_response(), tuple()} |
    {error, any()} |
    {error, detach_security_profile_errors(), tuple()}.
detach_security_profile(Client, SecurityProfileName, Input) ->
    detach_security_profile(Client, SecurityProfileName, Input, []).

-spec detach_security_profile(aws_client:aws_client(), binary() | list(), detach_security_profile_request(), proplists:proplist()) ->
    {ok, detach_security_profile_response(), tuple()} |
    {error, any()} |
    {error, detach_security_profile_errors(), tuple()}.
detach_security_profile(Client, SecurityProfileName, Input0, Options0) ->
    Method = delete,
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), "/targets"],
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
                     {<<"securityProfileTargetArn">>, <<"securityProfileTargetArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Detaches the specified principal from the specified thing.
%%
%% A principal can be X.509
%% certificates, IAM users, groups, and roles, Amazon Cognito identities or
%% federated
%% identities.
%%
%% This call is asynchronous. It might take several seconds for the
%% detachment to
%% propagate.
%%
%% Requires permission to access the DetachThingPrincipal:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec detach_thing_principal(aws_client:aws_client(), binary() | list(), detach_thing_principal_request()) ->
    {ok, detach_thing_principal_response(), tuple()} |
    {error, any()} |
    {error, detach_thing_principal_errors(), tuple()}.
detach_thing_principal(Client, ThingName, Input) ->
    detach_thing_principal(Client, ThingName, Input, []).

-spec detach_thing_principal(aws_client:aws_client(), binary() | list(), detach_thing_principal_request(), proplists:proplist()) ->
    {ok, detach_thing_principal_response(), tuple()} |
    {error, any()} |
    {error, detach_thing_principal_errors(), tuple()}.
detach_thing_principal(Client, ThingName, Input0, Options0) ->
    Method = delete,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/principals"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-principal">>, <<"principal">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the rule.
%%
%% Requires permission to access the DisableTopicRule:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec disable_topic_rule(aws_client:aws_client(), binary() | list(), disable_topic_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_topic_rule_errors(), tuple()}.
disable_topic_rule(Client, RuleName, Input) ->
    disable_topic_rule(Client, RuleName, Input, []).

-spec disable_topic_rule(aws_client:aws_client(), binary() | list(), disable_topic_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_topic_rule_errors(), tuple()}.
disable_topic_rule(Client, RuleName, Input0, Options0) ->
    Method = post,
    Path = ["/rules/", aws_util:encode_uri(RuleName), "/disable"],
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

%% @doc Disassociates the selected software bill of materials (SBOM) from a
%% specific software package version.
%%
%% Requires permission to access the DisassociateSbomWithPackageVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec disassociate_sbom_from_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_sbom_from_package_version_request()) ->
    {ok, disassociate_sbom_from_package_version_response(), tuple()} |
    {error, any()} |
    {error, disassociate_sbom_from_package_version_errors(), tuple()}.
disassociate_sbom_from_package_version(Client, PackageName, VersionName, Input) ->
    disassociate_sbom_from_package_version(Client, PackageName, VersionName, Input, []).

-spec disassociate_sbom_from_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_sbom_from_package_version_request(), proplists:proplist()) ->
    {ok, disassociate_sbom_from_package_version_response(), tuple()} |
    {error, any()} |
    {error, disassociate_sbom_from_package_version_errors(), tuple()}.
disassociate_sbom_from_package_version(Client, PackageName, VersionName, Input0, Options0) ->
    Method = delete,
    Path = ["/packages/", aws_util:encode_uri(PackageName), "/versions/", aws_util:encode_uri(VersionName), "/sbom"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the rule.
%%
%% Requires permission to access the EnableTopicRule:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec enable_topic_rule(aws_client:aws_client(), binary() | list(), enable_topic_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_topic_rule_errors(), tuple()}.
enable_topic_rule(Client, RuleName, Input) ->
    enable_topic_rule(Client, RuleName, Input, []).

-spec enable_topic_rule(aws_client:aws_client(), binary() | list(), enable_topic_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_topic_rule_errors(), tuple()}.
enable_topic_rule(Client, RuleName, Input0, Options0) ->
    Method = post,
    Path = ["/rules/", aws_util:encode_uri(RuleName), "/enable"],
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
%% Returns a Device Defender's ML Detect Security Profile training
%% model's status.
%%
%% Requires permission to access the GetBehaviorModelTrainingSummaries:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_behavior_model_training_summaries(aws_client:aws_client()) ->
    {ok, get_behavior_model_training_summaries_response(), tuple()} |
    {error, any()} |
    {error, get_behavior_model_training_summaries_errors(), tuple()}.
get_behavior_model_training_summaries(Client)
  when is_map(Client) ->
    get_behavior_model_training_summaries(Client, #{}, #{}).

-spec get_behavior_model_training_summaries(aws_client:aws_client(), map(), map()) ->
    {ok, get_behavior_model_training_summaries_response(), tuple()} |
    {error, any()} |
    {error, get_behavior_model_training_summaries_errors(), tuple()}.
get_behavior_model_training_summaries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_behavior_model_training_summaries(Client, QueryMap, HeadersMap, []).

-spec get_behavior_model_training_summaries(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_behavior_model_training_summaries_response(), tuple()} |
    {error, any()} |
    {error, get_behavior_model_training_summaries_errors(), tuple()}.
get_behavior_model_training_summaries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/behavior-model-training/summaries"],
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
        {<<"securityProfileName">>, maps:get(<<"securityProfileName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Aggregates on indexed data with search queries pertaining to
%% particular fields.
%%
%% Requires permission to access the GetBucketsAggregation:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_buckets_aggregation(aws_client:aws_client(), get_buckets_aggregation_request()) ->
    {ok, get_buckets_aggregation_response(), tuple()} |
    {error, any()} |
    {error, get_buckets_aggregation_errors(), tuple()}.
get_buckets_aggregation(Client, Input) ->
    get_buckets_aggregation(Client, Input, []).

-spec get_buckets_aggregation(aws_client:aws_client(), get_buckets_aggregation_request(), proplists:proplist()) ->
    {ok, get_buckets_aggregation_response(), tuple()} |
    {error, any()} |
    {error, get_buckets_aggregation_errors(), tuple()}.
get_buckets_aggregation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indices/buckets"],
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

%% @doc Returns the approximate count of unique values that match the query.
%%
%% Requires permission to access the GetCardinality:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_cardinality(aws_client:aws_client(), get_cardinality_request()) ->
    {ok, get_cardinality_response(), tuple()} |
    {error, any()} |
    {error, get_cardinality_errors(), tuple()}.
get_cardinality(Client, Input) ->
    get_cardinality(Client, Input, []).

-spec get_cardinality(aws_client:aws_client(), get_cardinality_request(), proplists:proplist()) ->
    {ok, get_cardinality_response(), tuple()} |
    {error, any()} |
    {error, get_cardinality_errors(), tuple()}.
get_cardinality(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indices/cardinality"],
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

%% @doc Gets information about the specified command.
-spec get_command(aws_client:aws_client(), binary() | list()) ->
    {ok, get_command_response(), tuple()} |
    {error, any()} |
    {error, get_command_errors(), tuple()}.
get_command(Client, CommandId)
  when is_map(Client) ->
    get_command(Client, CommandId, #{}, #{}).

-spec get_command(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_command_response(), tuple()} |
    {error, any()} |
    {error, get_command_errors(), tuple()}.
get_command(Client, CommandId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_command(Client, CommandId, QueryMap, HeadersMap, []).

-spec get_command(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_command_response(), tuple()} |
    {error, any()} |
    {error, get_command_errors(), tuple()}.
get_command(Client, CommandId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/commands/", aws_util:encode_uri(CommandId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specific command execution on a single
%% device.
-spec get_command_execution(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_command_execution_response(), tuple()} |
    {error, any()} |
    {error, get_command_execution_errors(), tuple()}.
get_command_execution(Client, ExecutionId, TargetArn)
  when is_map(Client) ->
    get_command_execution(Client, ExecutionId, TargetArn, #{}, #{}).

-spec get_command_execution(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_command_execution_response(), tuple()} |
    {error, any()} |
    {error, get_command_execution_errors(), tuple()}.
get_command_execution(Client, ExecutionId, TargetArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_command_execution(Client, ExecutionId, TargetArn, QueryMap, HeadersMap, []).

-spec get_command_execution(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_command_execution_response(), tuple()} |
    {error, any()} |
    {error, get_command_execution_errors(), tuple()}.
get_command_execution(Client, ExecutionId, TargetArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/command-executions/", aws_util:encode_uri(ExecutionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeResult">>, maps:get(<<"includeResult">>, QueryMap, undefined)},
        {<<"targetArn">>, TargetArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of the policies that have an effect on the authorization
%% behavior of the
%% specified device when it connects to the IoT device gateway.
%%
%% Requires permission to access the GetEffectivePolicies:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_effective_policies(aws_client:aws_client(), get_effective_policies_request()) ->
    {ok, get_effective_policies_response(), tuple()} |
    {error, any()} |
    {error, get_effective_policies_errors(), tuple()}.
get_effective_policies(Client, Input) ->
    get_effective_policies(Client, Input, []).

-spec get_effective_policies(aws_client:aws_client(), get_effective_policies_request(), proplists:proplist()) ->
    {ok, get_effective_policies_response(), tuple()} |
    {error, any()} |
    {error, get_effective_policies_errors(), tuple()}.
get_effective_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/effective-policies"],
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
                     {<<"thingName">>, <<"thingName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the indexing configuration.
%%
%% Requires permission to access the GetIndexingConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_indexing_configuration(aws_client:aws_client()) ->
    {ok, get_indexing_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_indexing_configuration_errors(), tuple()}.
get_indexing_configuration(Client)
  when is_map(Client) ->
    get_indexing_configuration(Client, #{}, #{}).

-spec get_indexing_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_indexing_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_indexing_configuration_errors(), tuple()}.
get_indexing_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_indexing_configuration(Client, QueryMap, HeadersMap, []).

-spec get_indexing_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_indexing_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_indexing_configuration_errors(), tuple()}.
get_indexing_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/indexing/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a job document.
%%
%% Requires permission to access the GetJobDocument:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_job_document(aws_client:aws_client(), binary() | list()) ->
    {ok, get_job_document_response(), tuple()} |
    {error, any()} |
    {error, get_job_document_errors(), tuple()}.
get_job_document(Client, JobId)
  when is_map(Client) ->
    get_job_document(Client, JobId, #{}, #{}).

-spec get_job_document(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_job_document_response(), tuple()} |
    {error, any()} |
    {error, get_job_document_errors(), tuple()}.
get_job_document(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job_document(Client, JobId, QueryMap, HeadersMap, []).

-spec get_job_document(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_document_response(), tuple()} |
    {error, any()} |
    {error, get_job_document_errors(), tuple()}.
get_job_document(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), "/job-document"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"beforeSubstitution">>, maps:get(<<"beforeSubstitution">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the logging options.
%%
%% NOTE: use of this command is not recommended. Use
%% `GetV2LoggingOptions'
%% instead.
%%
%% Requires permission to access the GetLoggingOptions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_logging_options(aws_client:aws_client()) ->
    {ok, get_logging_options_response(), tuple()} |
    {error, any()} |
    {error, get_logging_options_errors(), tuple()}.
get_logging_options(Client)
  when is_map(Client) ->
    get_logging_options(Client, #{}, #{}).

-spec get_logging_options(aws_client:aws_client(), map(), map()) ->
    {ok, get_logging_options_response(), tuple()} |
    {error, any()} |
    {error, get_logging_options_errors(), tuple()}.
get_logging_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_logging_options(Client, QueryMap, HeadersMap, []).

-spec get_logging_options(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_logging_options_response(), tuple()} |
    {error, any()} |
    {error, get_logging_options_errors(), tuple()}.
get_logging_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/loggingOptions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an OTA update.
%%
%% Requires permission to access the GetOTAUpdate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_ota_update(aws_client:aws_client(), binary() | list()) ->
    {ok, get_ota_update_response(), tuple()} |
    {error, any()} |
    {error, get_ota_update_errors(), tuple()}.
get_ota_update(Client, OtaUpdateId)
  when is_map(Client) ->
    get_ota_update(Client, OtaUpdateId, #{}, #{}).

-spec get_ota_update(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_ota_update_response(), tuple()} |
    {error, any()} |
    {error, get_ota_update_errors(), tuple()}.
get_ota_update(Client, OtaUpdateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ota_update(Client, OtaUpdateId, QueryMap, HeadersMap, []).

-spec get_ota_update(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ota_update_response(), tuple()} |
    {error, any()} |
    {error, get_ota_update_errors(), tuple()}.
get_ota_update(Client, OtaUpdateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/otaUpdates/", aws_util:encode_uri(OtaUpdateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified software package.
%%
%% Requires permission to access the GetPackage:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_package(aws_client:aws_client(), binary() | list()) ->
    {ok, get_package_response(), tuple()} |
    {error, any()} |
    {error, get_package_errors(), tuple()}.
get_package(Client, PackageName)
  when is_map(Client) ->
    get_package(Client, PackageName, #{}, #{}).

-spec get_package(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_package_response(), tuple()} |
    {error, any()} |
    {error, get_package_errors(), tuple()}.
get_package(Client, PackageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_package(Client, PackageName, QueryMap, HeadersMap, []).

-spec get_package(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_package_response(), tuple()} |
    {error, any()} |
    {error, get_package_errors(), tuple()}.
get_package(Client, PackageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/", aws_util:encode_uri(PackageName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified software package's
%% configuration.
%%
%% Requires permission to access the GetPackageConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_package_configuration(aws_client:aws_client()) ->
    {ok, get_package_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_package_configuration_errors(), tuple()}.
get_package_configuration(Client)
  when is_map(Client) ->
    get_package_configuration(Client, #{}, #{}).

-spec get_package_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_package_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_package_configuration_errors(), tuple()}.
get_package_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_package_configuration(Client, QueryMap, HeadersMap, []).

-spec get_package_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_package_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_package_configuration_errors(), tuple()}.
get_package_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/package-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified package version.
%%
%% Requires permission to access the GetPackageVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_package_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_package_version_response(), tuple()} |
    {error, any()} |
    {error, get_package_version_errors(), tuple()}.
get_package_version(Client, PackageName, VersionName)
  when is_map(Client) ->
    get_package_version(Client, PackageName, VersionName, #{}, #{}).

-spec get_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_package_version_response(), tuple()} |
    {error, any()} |
    {error, get_package_version_errors(), tuple()}.
get_package_version(Client, PackageName, VersionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_package_version(Client, PackageName, VersionName, QueryMap, HeadersMap, []).

-spec get_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_package_version_response(), tuple()} |
    {error, any()} |
    {error, get_package_version_errors(), tuple()}.
get_package_version(Client, PackageName, VersionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/", aws_util:encode_uri(PackageName), "/versions/", aws_util:encode_uri(VersionName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Groups the aggregated values that match the query into percentile
%% groupings.
%%
%% The default
%% percentile groupings are: 1,5,25,50,75,95,99, although you can specify
%% your own
%% when you call `GetPercentiles'. This function returns a value for each
%% percentile group specified (or the default percentile groupings). The
%% percentile group
%% &quot;1&quot; contains the aggregated field value that occurs in
%% approximately one percent of the
%% values that match the query. The percentile group &quot;5&quot; contains
%% the aggregated field value
%% that occurs in approximately five percent of the values that match the
%% query, and so on.
%% The result is an approximation, the more values that match the query, the
%% more accurate
%% the percentile values.
%%
%% Requires permission to access the GetPercentiles:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_percentiles(aws_client:aws_client(), get_percentiles_request()) ->
    {ok, get_percentiles_response(), tuple()} |
    {error, any()} |
    {error, get_percentiles_errors(), tuple()}.
get_percentiles(Client, Input) ->
    get_percentiles(Client, Input, []).

-spec get_percentiles(aws_client:aws_client(), get_percentiles_request(), proplists:proplist()) ->
    {ok, get_percentiles_response(), tuple()} |
    {error, any()} |
    {error, get_percentiles_errors(), tuple()}.
get_percentiles(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indices/percentiles"],
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

%% @doc Gets information about the specified policy with the policy document
%% of the default
%% version.
%%
%% Requires permission to access the GetPolicy:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, PolicyName)
  when is_map(Client) ->
    get_policy(Client, PolicyName, #{}, #{}).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, PolicyName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, PolicyName, QueryMap, HeadersMap, []).

-spec get_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_policy_response(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, PolicyName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified policy version.
%%
%% Requires permission to access the GetPolicyVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_policy_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_policy_version_response(), tuple()} |
    {error, any()} |
    {error, get_policy_version_errors(), tuple()}.
get_policy_version(Client, PolicyName, PolicyVersionId)
  when is_map(Client) ->
    get_policy_version(Client, PolicyName, PolicyVersionId, #{}, #{}).

-spec get_policy_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_policy_version_response(), tuple()} |
    {error, any()} |
    {error, get_policy_version_errors(), tuple()}.
get_policy_version(Client, PolicyName, PolicyVersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy_version(Client, PolicyName, PolicyVersionId, QueryMap, HeadersMap, []).

-spec get_policy_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_policy_version_response(), tuple()} |
    {error, any()} |
    {error, get_policy_version_errors(), tuple()}.
get_policy_version(Client, PolicyName, PolicyVersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies/", aws_util:encode_uri(PolicyName), "/version/", aws_util:encode_uri(PolicyVersionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a registration code used to register a CA certificate with IoT.
%%
%% IoT will create a registration code as part of this API call if the
%% registration
%% code doesn't exist or has been deleted. If you already have a
%% registration code, this API
%% call will return the same registration code.
%%
%% Requires permission to access the GetRegistrationCode:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_registration_code(aws_client:aws_client()) ->
    {ok, get_registration_code_response(), tuple()} |
    {error, any()} |
    {error, get_registration_code_errors(), tuple()}.
get_registration_code(Client)
  when is_map(Client) ->
    get_registration_code(Client, #{}, #{}).

-spec get_registration_code(aws_client:aws_client(), map(), map()) ->
    {ok, get_registration_code_response(), tuple()} |
    {error, any()} |
    {error, get_registration_code_errors(), tuple()}.
get_registration_code(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_registration_code(Client, QueryMap, HeadersMap, []).

-spec get_registration_code(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_registration_code_response(), tuple()} |
    {error, any()} |
    {error, get_registration_code_errors(), tuple()}.
get_registration_code(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/registrationcode"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the count, average, sum, minimum, maximum, sum of squares,
%% variance,
%% and standard deviation for the specified aggregated field.
%%
%% If the aggregation field is of type
%% `String', only the count statistic is returned.
%%
%% Requires permission to access the GetStatistics:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_statistics(aws_client:aws_client(), get_statistics_request()) ->
    {ok, get_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_statistics_errors(), tuple()}.
get_statistics(Client, Input) ->
    get_statistics(Client, Input, []).

-spec get_statistics(aws_client:aws_client(), get_statistics_request(), proplists:proplist()) ->
    {ok, get_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_statistics_errors(), tuple()}.
get_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indices/statistics"],
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

%% @doc Retrieves the live connectivity status per device.
-spec get_thing_connectivity_data(aws_client:aws_client(), binary() | list(), get_thing_connectivity_data_request()) ->
    {ok, get_thing_connectivity_data_response(), tuple()} |
    {error, any()} |
    {error, get_thing_connectivity_data_errors(), tuple()}.
get_thing_connectivity_data(Client, ThingName, Input) ->
    get_thing_connectivity_data(Client, ThingName, Input, []).

-spec get_thing_connectivity_data(aws_client:aws_client(), binary() | list(), get_thing_connectivity_data_request(), proplists:proplist()) ->
    {ok, get_thing_connectivity_data_response(), tuple()} |
    {error, any()} |
    {error, get_thing_connectivity_data_errors(), tuple()}.
get_thing_connectivity_data(Client, ThingName, Input0, Options0) ->
    Method = post,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/connectivity-data"],
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

%% @doc Gets information about the rule.
%%
%% Requires permission to access the GetTopicRule:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_topic_rule(aws_client:aws_client(), binary() | list()) ->
    {ok, get_topic_rule_response(), tuple()} |
    {error, any()} |
    {error, get_topic_rule_errors(), tuple()}.
get_topic_rule(Client, RuleName)
  when is_map(Client) ->
    get_topic_rule(Client, RuleName, #{}, #{}).

-spec get_topic_rule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_topic_rule_response(), tuple()} |
    {error, any()} |
    {error, get_topic_rule_errors(), tuple()}.
get_topic_rule(Client, RuleName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_topic_rule(Client, RuleName, QueryMap, HeadersMap, []).

-spec get_topic_rule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_topic_rule_response(), tuple()} |
    {error, any()} |
    {error, get_topic_rule_errors(), tuple()}.
get_topic_rule(Client, RuleName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules/", aws_util:encode_uri(RuleName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a topic rule destination.
%%
%% Requires permission to access the GetTopicRuleDestination:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_topic_rule_destination(aws_client:aws_client(), binary() | list()) ->
    {ok, get_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, get_topic_rule_destination_errors(), tuple()}.
get_topic_rule_destination(Client, Arn)
  when is_map(Client) ->
    get_topic_rule_destination(Client, Arn, #{}, #{}).

-spec get_topic_rule_destination(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, get_topic_rule_destination_errors(), tuple()}.
get_topic_rule_destination(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_topic_rule_destination(Client, Arn, QueryMap, HeadersMap, []).

-spec get_topic_rule_destination(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, get_topic_rule_destination_errors(), tuple()}.
get_topic_rule_destination(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/destinations/", aws_util:encode_multi_segment_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the fine grained logging options.
%%
%% Requires permission to access the GetV2LoggingOptions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_v2_logging_options(aws_client:aws_client()) ->
    {ok, get_v2_logging_options_response(), tuple()} |
    {error, any()} |
    {error, get_v2_logging_options_errors(), tuple()}.
get_v2_logging_options(Client)
  when is_map(Client) ->
    get_v2_logging_options(Client, #{}, #{}).

-spec get_v2_logging_options(aws_client:aws_client(), map(), map()) ->
    {ok, get_v2_logging_options_response(), tuple()} |
    {error, any()} |
    {error, get_v2_logging_options_errors(), tuple()}.
get_v2_logging_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_v2_logging_options(Client, QueryMap, HeadersMap, []).

-spec get_v2_logging_options(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_v2_logging_options_response(), tuple()} |
    {error, any()} |
    {error, get_v2_logging_options_errors(), tuple()}.
get_v2_logging_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2LoggingOptions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the active violations for a given Device Defender security
%% profile.
%%
%% Requires permission to access the ListActiveViolations:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_active_violations(aws_client:aws_client()) ->
    {ok, list_active_violations_response(), tuple()} |
    {error, any()} |
    {error, list_active_violations_errors(), tuple()}.
list_active_violations(Client)
  when is_map(Client) ->
    list_active_violations(Client, #{}, #{}).

-spec list_active_violations(aws_client:aws_client(), map(), map()) ->
    {ok, list_active_violations_response(), tuple()} |
    {error, any()} |
    {error, list_active_violations_errors(), tuple()}.
list_active_violations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_active_violations(Client, QueryMap, HeadersMap, []).

-spec list_active_violations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_active_violations_response(), tuple()} |
    {error, any()} |
    {error, list_active_violations_errors(), tuple()}.
list_active_violations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/active-violations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"behaviorCriteriaType">>, maps:get(<<"behaviorCriteriaType">>, QueryMap, undefined)},
        {<<"listSuppressedAlerts">>, maps:get(<<"listSuppressedAlerts">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"securityProfileName">>, maps:get(<<"securityProfileName">>, QueryMap, undefined)},
        {<<"thingName">>, maps:get(<<"thingName">>, QueryMap, undefined)},
        {<<"verificationState">>, maps:get(<<"verificationState">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the policies attached to the specified thing group.
%%
%% Requires permission to access the ListAttachedPolicies:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_attached_policies(aws_client:aws_client(), binary() | list(), list_attached_policies_request()) ->
    {ok, list_attached_policies_response(), tuple()} |
    {error, any()} |
    {error, list_attached_policies_errors(), tuple()}.
list_attached_policies(Client, Target, Input) ->
    list_attached_policies(Client, Target, Input, []).

-spec list_attached_policies(aws_client:aws_client(), binary() | list(), list_attached_policies_request(), proplists:proplist()) ->
    {ok, list_attached_policies_response(), tuple()} |
    {error, any()} |
    {error, list_attached_policies_errors(), tuple()}.
list_attached_policies(Client, Target, Input0, Options0) ->
    Method = post,
    Path = ["/attached-policies/", aws_util:encode_uri(Target), ""],
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
                     {<<"marker">>, <<"marker">>},
                     {<<"pageSize">>, <<"pageSize">>},
                     {<<"recursive">>, <<"recursive">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the findings (results) of a Device Defender audit or of the
%% audits
%% performed during a specified time period.
%%
%% (Findings are retained for 90 days.)
%%
%% Requires permission to access the ListAuditFindings:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_audit_findings(aws_client:aws_client(), list_audit_findings_request()) ->
    {ok, list_audit_findings_response(), tuple()} |
    {error, any()} |
    {error, list_audit_findings_errors(), tuple()}.
list_audit_findings(Client, Input) ->
    list_audit_findings(Client, Input, []).

-spec list_audit_findings(aws_client:aws_client(), list_audit_findings_request(), proplists:proplist()) ->
    {ok, list_audit_findings_response(), tuple()} |
    {error, any()} |
    {error, list_audit_findings_errors(), tuple()}.
list_audit_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/findings"],
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

%% @doc Gets the status of audit mitigation action tasks that were
%% executed.
%%
%% Requires permission to access the ListAuditMitigationActionsExecutions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_audit_mitigation_actions_executions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_audit_mitigation_actions_executions_response(), tuple()} |
    {error, any()} |
    {error, list_audit_mitigation_actions_executions_errors(), tuple()}.
list_audit_mitigation_actions_executions(Client, FindingId, TaskId)
  when is_map(Client) ->
    list_audit_mitigation_actions_executions(Client, FindingId, TaskId, #{}, #{}).

-spec list_audit_mitigation_actions_executions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_audit_mitigation_actions_executions_response(), tuple()} |
    {error, any()} |
    {error, list_audit_mitigation_actions_executions_errors(), tuple()}.
list_audit_mitigation_actions_executions(Client, FindingId, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audit_mitigation_actions_executions(Client, FindingId, TaskId, QueryMap, HeadersMap, []).

-spec list_audit_mitigation_actions_executions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_audit_mitigation_actions_executions_response(), tuple()} |
    {error, any()} |
    {error, list_audit_mitigation_actions_executions_errors(), tuple()}.
list_audit_mitigation_actions_executions(Client, FindingId, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/mitigationactions/executions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"actionStatus">>, maps:get(<<"actionStatus">>, QueryMap, undefined)},
        {<<"findingId">>, FindingId},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"taskId">>, TaskId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of audit mitigation action tasks that match the specified
%% filters.
%%
%% Requires permission to access the ListAuditMitigationActionsTasks:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_audit_mitigation_actions_tasks(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_audit_mitigation_actions_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_audit_mitigation_actions_tasks_errors(), tuple()}.
list_audit_mitigation_actions_tasks(Client, EndTime, StartTime)
  when is_map(Client) ->
    list_audit_mitigation_actions_tasks(Client, EndTime, StartTime, #{}, #{}).

-spec list_audit_mitigation_actions_tasks(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_audit_mitigation_actions_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_audit_mitigation_actions_tasks_errors(), tuple()}.
list_audit_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audit_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, []).

-spec list_audit_mitigation_actions_tasks(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_audit_mitigation_actions_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_audit_mitigation_actions_tasks_errors(), tuple()}.
list_audit_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/mitigationactions/tasks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"auditTaskId">>, maps:get(<<"auditTaskId">>, QueryMap, undefined)},
        {<<"endTime">>, EndTime},
        {<<"findingId">>, maps:get(<<"findingId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startTime">>, StartTime},
        {<<"taskStatus">>, maps:get(<<"taskStatus">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists your Device Defender audit listings.
%%
%% Requires permission to access the ListAuditSuppressions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_audit_suppressions(aws_client:aws_client(), list_audit_suppressions_request()) ->
    {ok, list_audit_suppressions_response(), tuple()} |
    {error, any()} |
    {error, list_audit_suppressions_errors(), tuple()}.
list_audit_suppressions(Client, Input) ->
    list_audit_suppressions(Client, Input, []).

-spec list_audit_suppressions(aws_client:aws_client(), list_audit_suppressions_request(), proplists:proplist()) ->
    {ok, list_audit_suppressions_response(), tuple()} |
    {error, any()} |
    {error, list_audit_suppressions_errors(), tuple()}.
list_audit_suppressions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/suppressions/list"],
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

%% @doc Lists the Device Defender audits that have been performed during a
%% given
%% time period.
%%
%% Requires permission to access the ListAuditTasks:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_audit_tasks(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_audit_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_audit_tasks_errors(), tuple()}.
list_audit_tasks(Client, EndTime, StartTime)
  when is_map(Client) ->
    list_audit_tasks(Client, EndTime, StartTime, #{}, #{}).

-spec list_audit_tasks(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_audit_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_audit_tasks_errors(), tuple()}.
list_audit_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audit_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, []).

-spec list_audit_tasks(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_audit_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_audit_tasks_errors(), tuple()}.
list_audit_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/tasks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startTime">>, StartTime},
        {<<"taskStatus">>, maps:get(<<"taskStatus">>, QueryMap, undefined)},
        {<<"taskType">>, maps:get(<<"taskType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the authorizers registered in your account.
%%
%% Requires permission to access the ListAuthorizers:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_authorizers(aws_client:aws_client()) ->
    {ok, list_authorizers_response(), tuple()} |
    {error, any()} |
    {error, list_authorizers_errors(), tuple()}.
list_authorizers(Client)
  when is_map(Client) ->
    list_authorizers(Client, #{}, #{}).

-spec list_authorizers(aws_client:aws_client(), map(), map()) ->
    {ok, list_authorizers_response(), tuple()} |
    {error, any()} |
    {error, list_authorizers_errors(), tuple()}.
list_authorizers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_authorizers(Client, QueryMap, HeadersMap, []).

-spec list_authorizers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_authorizers_response(), tuple()} |
    {error, any()} |
    {error, list_authorizers_errors(), tuple()}.
list_authorizers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/authorizers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the billing groups you have created.
%%
%% Requires permission to access the ListBillingGroups:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_billing_groups(aws_client:aws_client()) ->
    {ok, list_billing_groups_response(), tuple()} |
    {error, any()} |
    {error, list_billing_groups_errors(), tuple()}.
list_billing_groups(Client)
  when is_map(Client) ->
    list_billing_groups(Client, #{}, #{}).

-spec list_billing_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_billing_groups_response(), tuple()} |
    {error, any()} |
    {error, list_billing_groups_errors(), tuple()}.
list_billing_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_billing_groups(Client, QueryMap, HeadersMap, []).

-spec list_billing_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_billing_groups_response(), tuple()} |
    {error, any()} |
    {error, list_billing_groups_errors(), tuple()}.
list_billing_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/billing-groups"],
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
        {<<"namePrefixFilter">>, maps:get(<<"namePrefixFilter">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the CA certificates registered for your Amazon Web Services
%% account.
%%
%% The results are paginated with a default page size of 25. You can use the
%% returned
%% marker to retrieve additional results.
%%
%% Requires permission to access the ListCACertificates:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_ca_certificates(aws_client:aws_client()) ->
    {ok, list_ca_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_ca_certificates_errors(), tuple()}.
list_ca_certificates(Client)
  when is_map(Client) ->
    list_ca_certificates(Client, #{}, #{}).

-spec list_ca_certificates(aws_client:aws_client(), map(), map()) ->
    {ok, list_ca_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_ca_certificates_errors(), tuple()}.
list_ca_certificates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ca_certificates(Client, QueryMap, HeadersMap, []).

-spec list_ca_certificates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ca_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_ca_certificates_errors(), tuple()}.
list_ca_certificates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cacertificates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)},
        {<<"templateName">>, maps:get(<<"templateName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all your certificate providers in your Amazon Web Services
%% account.
%%
%% Requires permission to access the ListCertificateProviders:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_certificate_providers(aws_client:aws_client()) ->
    {ok, list_certificate_providers_response(), tuple()} |
    {error, any()} |
    {error, list_certificate_providers_errors(), tuple()}.
list_certificate_providers(Client)
  when is_map(Client) ->
    list_certificate_providers(Client, #{}, #{}).

-spec list_certificate_providers(aws_client:aws_client(), map(), map()) ->
    {ok, list_certificate_providers_response(), tuple()} |
    {error, any()} |
    {error, list_certificate_providers_errors(), tuple()}.
list_certificate_providers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_certificate_providers(Client, QueryMap, HeadersMap, []).

-spec list_certificate_providers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_certificate_providers_response(), tuple()} |
    {error, any()} |
    {error, list_certificate_providers_errors(), tuple()}.
list_certificate_providers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/certificate-providers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the certificates registered in your Amazon Web Services
%% account.
%%
%% The results are paginated with a default page size of 25. You can use the
%% returned
%% marker to retrieve additional results.
%%
%% Requires permission to access the ListCertificates:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_certificates(aws_client:aws_client()) ->
    {ok, list_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_certificates_errors(), tuple()}.
list_certificates(Client)
  when is_map(Client) ->
    list_certificates(Client, #{}, #{}).

-spec list_certificates(aws_client:aws_client(), map(), map()) ->
    {ok, list_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_certificates_errors(), tuple()}.
list_certificates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_certificates(Client, QueryMap, HeadersMap, []).

-spec list_certificates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_certificates_errors(), tuple()}.
list_certificates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/certificates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the device certificates signed by the specified CA certificate.
%%
%% Requires permission to access the ListCertificatesByCA:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_certificates_by_ca(aws_client:aws_client(), binary() | list()) ->
    {ok, list_certificates_by_ca_response(), tuple()} |
    {error, any()} |
    {error, list_certificates_by_ca_errors(), tuple()}.
list_certificates_by_ca(Client, CaCertificateId)
  when is_map(Client) ->
    list_certificates_by_ca(Client, CaCertificateId, #{}, #{}).

-spec list_certificates_by_ca(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_certificates_by_ca_response(), tuple()} |
    {error, any()} |
    {error, list_certificates_by_ca_errors(), tuple()}.
list_certificates_by_ca(Client, CaCertificateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_certificates_by_ca(Client, CaCertificateId, QueryMap, HeadersMap, []).

-spec list_certificates_by_ca(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_certificates_by_ca_response(), tuple()} |
    {error, any()} |
    {error, list_certificates_by_ca_errors(), tuple()}.
list_certificates_by_ca(Client, CaCertificateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/certificates-by-ca/", aws_util:encode_uri(CaCertificateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all command executions.
%%
%% You must provide only the `startedTimeFilter' or
%% the `completedTimeFilter' information. If you provide
%% both time filters, the API will generate an error. You can use
%% this information to retrieve a list of command executions
%% within a specific timeframe.
%%
%% You must provide only the `commandArn' or
%% the `thingArn' information depending on whether you want
%% to list executions for a specific command or an IoT thing. If you provide
%% both fields, the API will generate an error.
%%
%% For more information about considerations for using this API, see
%% List
%% command executions in your account (CLI):
%% https://docs.aws.amazon.com/iot/latest/developerguide/iot-remote-command-execution-start-monitor.html#iot-remote-command-execution-list-cli.
-spec list_command_executions(aws_client:aws_client(), list_command_executions_request()) ->
    {ok, list_command_executions_response(), tuple()} |
    {error, any()} |
    {error, list_command_executions_errors(), tuple()}.
list_command_executions(Client, Input) ->
    list_command_executions(Client, Input, []).

-spec list_command_executions(aws_client:aws_client(), list_command_executions_request(), proplists:proplist()) ->
    {ok, list_command_executions_response(), tuple()} |
    {error, any()} |
    {error, list_command_executions_errors(), tuple()}.
list_command_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/command-executions"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc List all commands in your account.
-spec list_commands(aws_client:aws_client()) ->
    {ok, list_commands_response(), tuple()} |
    {error, any()} |
    {error, list_commands_errors(), tuple()}.
list_commands(Client)
  when is_map(Client) ->
    list_commands(Client, #{}, #{}).

-spec list_commands(aws_client:aws_client(), map(), map()) ->
    {ok, list_commands_response(), tuple()} |
    {error, any()} |
    {error, list_commands_errors(), tuple()}.
list_commands(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_commands(Client, QueryMap, HeadersMap, []).

-spec list_commands(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_commands_response(), tuple()} |
    {error, any()} |
    {error, list_commands_errors(), tuple()}.
list_commands(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/commands"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"commandParameterName">>, maps:get(<<"commandParameterName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists your Device Defender detect custom metrics.
%%
%% Requires permission to access the ListCustomMetrics:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_custom_metrics(aws_client:aws_client()) ->
    {ok, list_custom_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_custom_metrics_errors(), tuple()}.
list_custom_metrics(Client)
  when is_map(Client) ->
    list_custom_metrics(Client, #{}, #{}).

-spec list_custom_metrics(aws_client:aws_client(), map(), map()) ->
    {ok, list_custom_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_custom_metrics_errors(), tuple()}.
list_custom_metrics(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_custom_metrics(Client, QueryMap, HeadersMap, []).

-spec list_custom_metrics(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_custom_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_custom_metrics_errors(), tuple()}.
list_custom_metrics(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/custom-metrics"],
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

%% @doc
%% Lists mitigation actions executions for a Device Defender ML Detect
%% Security Profile.
%%
%% Requires permission to access the ListDetectMitigationActionsExecutions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_detect_mitigation_actions_executions(aws_client:aws_client()) ->
    {ok, list_detect_mitigation_actions_executions_response(), tuple()} |
    {error, any()} |
    {error, list_detect_mitigation_actions_executions_errors(), tuple()}.
list_detect_mitigation_actions_executions(Client)
  when is_map(Client) ->
    list_detect_mitigation_actions_executions(Client, #{}, #{}).

-spec list_detect_mitigation_actions_executions(aws_client:aws_client(), map(), map()) ->
    {ok, list_detect_mitigation_actions_executions_response(), tuple()} |
    {error, any()} |
    {error, list_detect_mitigation_actions_executions_errors(), tuple()}.
list_detect_mitigation_actions_executions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detect_mitigation_actions_executions(Client, QueryMap, HeadersMap, []).

-spec list_detect_mitigation_actions_executions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_detect_mitigation_actions_executions_response(), tuple()} |
    {error, any()} |
    {error, list_detect_mitigation_actions_executions_errors(), tuple()}.
list_detect_mitigation_actions_executions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detect/mitigationactions/executions"],
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
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)},
        {<<"taskId">>, maps:get(<<"taskId">>, QueryMap, undefined)},
        {<<"thingName">>, maps:get(<<"thingName">>, QueryMap, undefined)},
        {<<"violationId">>, maps:get(<<"violationId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% List of Device Defender ML Detect mitigation actions tasks.
%%
%% Requires permission to access the ListDetectMitigationActionsTasks:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_detect_mitigation_actions_tasks(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_detect_mitigation_actions_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_detect_mitigation_actions_tasks_errors(), tuple()}.
list_detect_mitigation_actions_tasks(Client, EndTime, StartTime)
  when is_map(Client) ->
    list_detect_mitigation_actions_tasks(Client, EndTime, StartTime, #{}, #{}).

-spec list_detect_mitigation_actions_tasks(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_detect_mitigation_actions_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_detect_mitigation_actions_tasks_errors(), tuple()}.
list_detect_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detect_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, []).

-spec list_detect_mitigation_actions_tasks(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_detect_mitigation_actions_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_detect_mitigation_actions_tasks_errors(), tuple()}.
list_detect_mitigation_actions_tasks(Client, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detect/mitigationactions/tasks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the set of dimensions that are defined for your Amazon Web
%% Services accounts.
%%
%% Requires permission to access the ListDimensions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_dimensions(aws_client:aws_client()) ->
    {ok, list_dimensions_response(), tuple()} |
    {error, any()} |
    {error, list_dimensions_errors(), tuple()}.
list_dimensions(Client)
  when is_map(Client) ->
    list_dimensions(Client, #{}, #{}).

-spec list_dimensions(aws_client:aws_client(), map(), map()) ->
    {ok, list_dimensions_response(), tuple()} |
    {error, any()} |
    {error, list_dimensions_errors(), tuple()}.
list_dimensions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dimensions(Client, QueryMap, HeadersMap, []).

-spec list_dimensions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_dimensions_response(), tuple()} |
    {error, any()} |
    {error, list_dimensions_errors(), tuple()}.
list_dimensions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/dimensions"],
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

%% @doc Gets a list of domain configurations for the user.
%%
%% This list is sorted
%% alphabetically by domain configuration name.
%%
%% Requires permission to access the ListDomainConfigurations:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_domain_configurations(aws_client:aws_client()) ->
    {ok, list_domain_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_domain_configurations_errors(), tuple()}.
list_domain_configurations(Client)
  when is_map(Client) ->
    list_domain_configurations(Client, #{}, #{}).

-spec list_domain_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_domain_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_domain_configurations_errors(), tuple()}.
list_domain_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_configurations(Client, QueryMap, HeadersMap, []).

-spec list_domain_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_domain_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_domain_configurations_errors(), tuple()}.
list_domain_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domainConfigurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)},
        {<<"serviceType">>, maps:get(<<"serviceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all your fleet metrics.
%%
%% Requires permission to access the ListFleetMetrics:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_fleet_metrics(aws_client:aws_client()) ->
    {ok, list_fleet_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_fleet_metrics_errors(), tuple()}.
list_fleet_metrics(Client)
  when is_map(Client) ->
    list_fleet_metrics(Client, #{}, #{}).

-spec list_fleet_metrics(aws_client:aws_client(), map(), map()) ->
    {ok, list_fleet_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_fleet_metrics_errors(), tuple()}.
list_fleet_metrics(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_fleet_metrics(Client, QueryMap, HeadersMap, []).

-spec list_fleet_metrics(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_fleet_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_fleet_metrics_errors(), tuple()}.
list_fleet_metrics(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/fleet-metrics"],
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

%% @doc Lists the search indices.
%%
%% Requires permission to access the ListIndices:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_indices(aws_client:aws_client()) ->
    {ok, list_indices_response(), tuple()} |
    {error, any()} |
    {error, list_indices_errors(), tuple()}.
list_indices(Client)
  when is_map(Client) ->
    list_indices(Client, #{}, #{}).

-spec list_indices(aws_client:aws_client(), map(), map()) ->
    {ok, list_indices_response(), tuple()} |
    {error, any()} |
    {error, list_indices_errors(), tuple()}.
list_indices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_indices(Client, QueryMap, HeadersMap, []).

-spec list_indices(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_indices_response(), tuple()} |
    {error, any()} |
    {error, list_indices_errors(), tuple()}.
list_indices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/indices"],
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

%% @doc Lists the job executions for a job.
%%
%% Requires permission to access the ListJobExecutionsForJob:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_job_executions_for_job(aws_client:aws_client(), binary() | list()) ->
    {ok, list_job_executions_for_job_response(), tuple()} |
    {error, any()} |
    {error, list_job_executions_for_job_errors(), tuple()}.
list_job_executions_for_job(Client, JobId)
  when is_map(Client) ->
    list_job_executions_for_job(Client, JobId, #{}, #{}).

-spec list_job_executions_for_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_job_executions_for_job_response(), tuple()} |
    {error, any()} |
    {error, list_job_executions_for_job_errors(), tuple()}.
list_job_executions_for_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_executions_for_job(Client, JobId, QueryMap, HeadersMap, []).

-spec list_job_executions_for_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_job_executions_for_job_response(), tuple()} |
    {error, any()} |
    {error, list_job_executions_for_job_errors(), tuple()}.
list_job_executions_for_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), "/things"],
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

%% @doc Lists the job executions for the specified thing.
%%
%% Requires permission to access the ListJobExecutionsForThing:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_job_executions_for_thing(aws_client:aws_client(), binary() | list()) ->
    {ok, list_job_executions_for_thing_response(), tuple()} |
    {error, any()} |
    {error, list_job_executions_for_thing_errors(), tuple()}.
list_job_executions_for_thing(Client, ThingName)
  when is_map(Client) ->
    list_job_executions_for_thing(Client, ThingName, #{}, #{}).

-spec list_job_executions_for_thing(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_job_executions_for_thing_response(), tuple()} |
    {error, any()} |
    {error, list_job_executions_for_thing_errors(), tuple()}.
list_job_executions_for_thing(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_executions_for_thing(Client, ThingName, QueryMap, HeadersMap, []).

-spec list_job_executions_for_thing(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_job_executions_for_thing_response(), tuple()} |
    {error, any()} |
    {error, list_job_executions_for_thing_errors(), tuple()}.
list_job_executions_for_thing(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"jobId">>, maps:get(<<"jobId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"namespaceId">>, maps:get(<<"namespaceId">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of job templates.
%%
%% Requires permission to access the ListJobTemplates:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_job_templates(aws_client:aws_client()) ->
    {ok, list_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_job_templates_errors(), tuple()}.
list_job_templates(Client)
  when is_map(Client) ->
    list_job_templates(Client, #{}, #{}).

-spec list_job_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_job_templates_errors(), tuple()}.
list_job_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_templates(Client, QueryMap, HeadersMap, []).

-spec list_job_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_job_templates_errors(), tuple()}.
list_job_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/job-templates"],
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
%%
%% Requires permission to access the ListJobs:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_jobs(aws_client:aws_client()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client)
  when is_map(Client) ->
    list_jobs(Client, #{}, #{}).

-spec list_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, QueryMap, HeadersMap, []).

-spec list_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs"],
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
        {<<"namespaceId">>, maps:get(<<"namespaceId">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"targetSelection">>, maps:get(<<"targetSelection">>, QueryMap, undefined)},
        {<<"thingGroupId">>, maps:get(<<"thingGroupId">>, QueryMap, undefined)},
        {<<"thingGroupName">>, maps:get(<<"thingGroupName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of managed job templates.
-spec list_managed_job_templates(aws_client:aws_client()) ->
    {ok, list_managed_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_managed_job_templates_errors(), tuple()}.
list_managed_job_templates(Client)
  when is_map(Client) ->
    list_managed_job_templates(Client, #{}, #{}).

-spec list_managed_job_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_managed_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_managed_job_templates_errors(), tuple()}.
list_managed_job_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_job_templates(Client, QueryMap, HeadersMap, []).

-spec list_managed_job_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_job_templates_response(), tuple()} |
    {error, any()} |
    {error, list_managed_job_templates_errors(), tuple()}.
list_managed_job_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-job-templates"],
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
        {<<"templateName">>, maps:get(<<"templateName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the values reported for an IoT Device Defender metric
%% (device-side metric, cloud-side metric, or custom metric)
%% by the given thing during the specified time period.
-spec list_metric_values(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_metric_values_response(), tuple()} |
    {error, any()} |
    {error, list_metric_values_errors(), tuple()}.
list_metric_values(Client, EndTime, MetricName, StartTime, ThingName)
  when is_map(Client) ->
    list_metric_values(Client, EndTime, MetricName, StartTime, ThingName, #{}, #{}).

-spec list_metric_values(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_metric_values_response(), tuple()} |
    {error, any()} |
    {error, list_metric_values_errors(), tuple()}.
list_metric_values(Client, EndTime, MetricName, StartTime, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_metric_values(Client, EndTime, MetricName, StartTime, ThingName, QueryMap, HeadersMap, []).

-spec list_metric_values(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_metric_values_response(), tuple()} |
    {error, any()} |
    {error, list_metric_values_errors(), tuple()}.
list_metric_values(Client, EndTime, MetricName, StartTime, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/metric-values"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dimensionName">>, maps:get(<<"dimensionName">>, QueryMap, undefined)},
        {<<"dimensionValueOperator">>, maps:get(<<"dimensionValueOperator">>, QueryMap, undefined)},
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"metricName">>, MetricName},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startTime">>, StartTime},
        {<<"thingName">>, ThingName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of all mitigation actions that match the specified filter
%% criteria.
%%
%% Requires permission to access the ListMitigationActions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_mitigation_actions(aws_client:aws_client()) ->
    {ok, list_mitigation_actions_response(), tuple()} |
    {error, any()} |
    {error, list_mitigation_actions_errors(), tuple()}.
list_mitigation_actions(Client)
  when is_map(Client) ->
    list_mitigation_actions(Client, #{}, #{}).

-spec list_mitigation_actions(aws_client:aws_client(), map(), map()) ->
    {ok, list_mitigation_actions_response(), tuple()} |
    {error, any()} |
    {error, list_mitigation_actions_errors(), tuple()}.
list_mitigation_actions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_mitigation_actions(Client, QueryMap, HeadersMap, []).

-spec list_mitigation_actions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_mitigation_actions_response(), tuple()} |
    {error, any()} |
    {error, list_mitigation_actions_errors(), tuple()}.
list_mitigation_actions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/mitigationactions/actions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"actionType">>, maps:get(<<"actionType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists OTA updates.
%%
%% Requires permission to access the ListOTAUpdates:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_ota_updates(aws_client:aws_client()) ->
    {ok, list_ota_updates_response(), tuple()} |
    {error, any()} |
    {error, list_ota_updates_errors(), tuple()}.
list_ota_updates(Client)
  when is_map(Client) ->
    list_ota_updates(Client, #{}, #{}).

-spec list_ota_updates(aws_client:aws_client(), map(), map()) ->
    {ok, list_ota_updates_response(), tuple()} |
    {error, any()} |
    {error, list_ota_updates_errors(), tuple()}.
list_ota_updates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ota_updates(Client, QueryMap, HeadersMap, []).

-spec list_ota_updates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ota_updates_response(), tuple()} |
    {error, any()} |
    {error, list_ota_updates_errors(), tuple()}.
list_ota_updates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/otaUpdates"],
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
        {<<"otaUpdateStatus">>, maps:get(<<"otaUpdateStatus">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists certificates that are being transferred but not yet accepted.
%%
%% Requires permission to access the ListOutgoingCertificates:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_outgoing_certificates(aws_client:aws_client()) ->
    {ok, list_outgoing_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_outgoing_certificates_errors(), tuple()}.
list_outgoing_certificates(Client)
  when is_map(Client) ->
    list_outgoing_certificates(Client, #{}, #{}).

-spec list_outgoing_certificates(aws_client:aws_client(), map(), map()) ->
    {ok, list_outgoing_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_outgoing_certificates_errors(), tuple()}.
list_outgoing_certificates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_outgoing_certificates(Client, QueryMap, HeadersMap, []).

-spec list_outgoing_certificates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_outgoing_certificates_response(), tuple()} |
    {error, any()} |
    {error, list_outgoing_certificates_errors(), tuple()}.
list_outgoing_certificates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/certificates-out-going"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the software package versions associated to the account.
%%
%% Requires permission to access the ListPackageVersions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_package_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_package_versions_response(), tuple()} |
    {error, any()} |
    {error, list_package_versions_errors(), tuple()}.
list_package_versions(Client, PackageName)
  when is_map(Client) ->
    list_package_versions(Client, PackageName, #{}, #{}).

-spec list_package_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_package_versions_response(), tuple()} |
    {error, any()} |
    {error, list_package_versions_errors(), tuple()}.
list_package_versions(Client, PackageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_package_versions(Client, PackageName, QueryMap, HeadersMap, []).

-spec list_package_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_package_versions_response(), tuple()} |
    {error, any()} |
    {error, list_package_versions_errors(), tuple()}.
list_package_versions(Client, PackageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/", aws_util:encode_uri(PackageName), "/versions"],
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

%% @doc Lists the software packages associated to the account.
%%
%% Requires permission to access the ListPackages:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_packages(aws_client:aws_client()) ->
    {ok, list_packages_response(), tuple()} |
    {error, any()} |
    {error, list_packages_errors(), tuple()}.
list_packages(Client)
  when is_map(Client) ->
    list_packages(Client, #{}, #{}).

-spec list_packages(aws_client:aws_client(), map(), map()) ->
    {ok, list_packages_response(), tuple()} |
    {error, any()} |
    {error, list_packages_errors(), tuple()}.
list_packages(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_packages(Client, QueryMap, HeadersMap, []).

-spec list_packages(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_packages_response(), tuple()} |
    {error, any()} |
    {error, list_packages_errors(), tuple()}.
list_packages(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages"],
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

%% @doc Lists your policies.
%%
%% Requires permission to access the ListPolicies:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
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
    Path = ["/policies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the principals associated with the specified policy.
%%
%% Note: This action is deprecated and works as
%% expected for backward compatibility, but we won't add enhancements.
%% Use `ListTargetsForPolicy' instead.
%%
%% Requires permission to access the ListPolicyPrincipals:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_policy_principals(aws_client:aws_client(), binary() | list()) ->
    {ok, list_policy_principals_response(), tuple()} |
    {error, any()} |
    {error, list_policy_principals_errors(), tuple()}.
list_policy_principals(Client, PolicyName)
  when is_map(Client) ->
    list_policy_principals(Client, PolicyName, #{}, #{}).

-spec list_policy_principals(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_policy_principals_response(), tuple()} |
    {error, any()} |
    {error, list_policy_principals_errors(), tuple()}.
list_policy_principals(Client, PolicyName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policy_principals(Client, PolicyName, QueryMap, HeadersMap, []).

-spec list_policy_principals(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_policy_principals_response(), tuple()} |
    {error, any()} |
    {error, list_policy_principals_errors(), tuple()}.
list_policy_principals(Client, PolicyName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policy-principals"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amzn-iot-policy">>, PolicyName}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the versions of the specified policy and identifies the default
%% version.
%%
%% Requires permission to access the ListPolicyVersions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_policy_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_policy_versions_errors(), tuple()}.
list_policy_versions(Client, PolicyName)
  when is_map(Client) ->
    list_policy_versions(Client, PolicyName, #{}, #{}).

-spec list_policy_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_policy_versions_errors(), tuple()}.
list_policy_versions(Client, PolicyName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policy_versions(Client, PolicyName, QueryMap, HeadersMap, []).

-spec list_policy_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_policy_versions_errors(), tuple()}.
list_policy_versions(Client, PolicyName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policies/", aws_util:encode_uri(PolicyName), "/version"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the policies attached to the specified principal.
%%
%% If you use an Cognito
%% identity, the ID must be in AmazonCognito Identity format:
%% https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax.
%%
%% Note: This action is deprecated and works as
%% expected for backward compatibility, but we won't add enhancements.
%% Use `ListAttachedPolicies' instead.
%%
%% Requires permission to access the ListPrincipalPolicies:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_principal_policies(aws_client:aws_client(), binary() | list()) ->
    {ok, list_principal_policies_response(), tuple()} |
    {error, any()} |
    {error, list_principal_policies_errors(), tuple()}.
list_principal_policies(Client, Principal)
  when is_map(Client) ->
    list_principal_policies(Client, Principal, #{}, #{}).

-spec list_principal_policies(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_principal_policies_response(), tuple()} |
    {error, any()} |
    {error, list_principal_policies_errors(), tuple()}.
list_principal_policies(Client, Principal, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_principal_policies(Client, Principal, QueryMap, HeadersMap, []).

-spec list_principal_policies(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_principal_policies_response(), tuple()} |
    {error, any()} |
    {error, list_principal_policies_errors(), tuple()}.
list_principal_policies(Client, Principal, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/principal-policies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amzn-iot-principal">>, Principal}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the things associated with the specified principal.
%%
%% A principal can be X.509
%% certificates, IAM users, groups, and roles, Amazon Cognito identities or
%% federated
%% identities.
%%
%% Requires permission to access the ListPrincipalThings:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_principal_things(aws_client:aws_client(), binary() | list()) ->
    {ok, list_principal_things_response(), tuple()} |
    {error, any()} |
    {error, list_principal_things_errors(), tuple()}.
list_principal_things(Client, Principal)
  when is_map(Client) ->
    list_principal_things(Client, Principal, #{}, #{}).

-spec list_principal_things(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_principal_things_response(), tuple()} |
    {error, any()} |
    {error, list_principal_things_errors(), tuple()}.
list_principal_things(Client, Principal, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_principal_things(Client, Principal, QueryMap, HeadersMap, []).

-spec list_principal_things(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_principal_things_response(), tuple()} |
    {error, any()} |
    {error, list_principal_things_errors(), tuple()}.
list_principal_things(Client, Principal, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/principals/things"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amzn-principal">>, Principal}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the things associated with the specified principal.
%%
%% A principal can be an X.509
%% certificate or an Amazon Cognito ID.
%%
%% Requires permission to access the ListPrincipalThings:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_principal_things_v2(aws_client:aws_client(), binary() | list()) ->
    {ok, list_principal_things_v2_response(), tuple()} |
    {error, any()} |
    {error, list_principal_things_v2_errors(), tuple()}.
list_principal_things_v2(Client, Principal)
  when is_map(Client) ->
    list_principal_things_v2(Client, Principal, #{}, #{}).

-spec list_principal_things_v2(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_principal_things_v2_response(), tuple()} |
    {error, any()} |
    {error, list_principal_things_v2_errors(), tuple()}.
list_principal_things_v2(Client, Principal, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_principal_things_v2(Client, Principal, QueryMap, HeadersMap, []).

-spec list_principal_things_v2(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_principal_things_v2_response(), tuple()} |
    {error, any()} |
    {error, list_principal_things_v2_errors(), tuple()}.
list_principal_things_v2(Client, Principal, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/principals/things-v2"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"x-amzn-principal">>, Principal}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"thingPrincipalType">>, maps:get(<<"thingPrincipalType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of provisioning template versions.
%%
%% Requires permission to access the ListProvisioningTemplateVersions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_provisioning_template_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_provisioning_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_provisioning_template_versions_errors(), tuple()}.
list_provisioning_template_versions(Client, TemplateName)
  when is_map(Client) ->
    list_provisioning_template_versions(Client, TemplateName, #{}, #{}).

-spec list_provisioning_template_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_provisioning_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_provisioning_template_versions_errors(), tuple()}.
list_provisioning_template_versions(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provisioning_template_versions(Client, TemplateName, QueryMap, HeadersMap, []).

-spec list_provisioning_template_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_provisioning_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_provisioning_template_versions_errors(), tuple()}.
list_provisioning_template_versions(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), "/versions"],
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

%% @doc Lists the provisioning templates in your Amazon Web Services account.
%%
%% Requires permission to access the ListProvisioningTemplates:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_provisioning_templates(aws_client:aws_client()) ->
    {ok, list_provisioning_templates_response(), tuple()} |
    {error, any()} |
    {error, list_provisioning_templates_errors(), tuple()}.
list_provisioning_templates(Client)
  when is_map(Client) ->
    list_provisioning_templates(Client, #{}, #{}).

-spec list_provisioning_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_provisioning_templates_response(), tuple()} |
    {error, any()} |
    {error, list_provisioning_templates_errors(), tuple()}.
list_provisioning_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provisioning_templates(Client, QueryMap, HeadersMap, []).

-spec list_provisioning_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_provisioning_templates_response(), tuple()} |
    {error, any()} |
    {error, list_provisioning_templates_errors(), tuple()}.
list_provisioning_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioning-templates"],
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

%% @doc The related resources of an Audit finding.
%%
%% The following resources can be returned from calling this API:
%%
%% DEVICE_CERTIFICATE
%%
%% CA_CERTIFICATE
%%
%% IOT_POLICY
%%
%% COGNITO_IDENTITY_POOL
%%
%% CLIENT_ID
%%
%% ACCOUNT_SETTINGS
%%
%% ROLE_ALIAS
%%
%% IAM_ROLE
%%
%% ISSUER_CERTIFICATE
%%
%% This API is similar to DescribeAuditFinding's RelatedResources:
%% https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeAuditFinding.html
%% but provides pagination and is not limited to 10 resources.
%% When calling DescribeAuditFinding:
%% https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeAuditFinding.html
%% for the intermediate CA revoked for
%% active device certificates check, RelatedResources will not be populated.
%% You must use this API, ListRelatedResourcesForAuditFinding, to list the
%% certificates.
-spec list_related_resources_for_audit_finding(aws_client:aws_client(), binary() | list()) ->
    {ok, list_related_resources_for_audit_finding_response(), tuple()} |
    {error, any()} |
    {error, list_related_resources_for_audit_finding_errors(), tuple()}.
list_related_resources_for_audit_finding(Client, FindingId)
  when is_map(Client) ->
    list_related_resources_for_audit_finding(Client, FindingId, #{}, #{}).

-spec list_related_resources_for_audit_finding(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_related_resources_for_audit_finding_response(), tuple()} |
    {error, any()} |
    {error, list_related_resources_for_audit_finding_errors(), tuple()}.
list_related_resources_for_audit_finding(Client, FindingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_related_resources_for_audit_finding(Client, FindingId, QueryMap, HeadersMap, []).

-spec list_related_resources_for_audit_finding(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_related_resources_for_audit_finding_response(), tuple()} |
    {error, any()} |
    {error, list_related_resources_for_audit_finding_errors(), tuple()}.
list_related_resources_for_audit_finding(Client, FindingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/relatedResources"],
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
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the role aliases registered in your account.
%%
%% Requires permission to access the ListRoleAliases:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_role_aliases(aws_client:aws_client()) ->
    {ok, list_role_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_role_aliases_errors(), tuple()}.
list_role_aliases(Client)
  when is_map(Client) ->
    list_role_aliases(Client, #{}, #{}).

-spec list_role_aliases(aws_client:aws_client(), map(), map()) ->
    {ok, list_role_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_role_aliases_errors(), tuple()}.
list_role_aliases(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_role_aliases(Client, QueryMap, HeadersMap, []).

-spec list_role_aliases(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_role_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_role_aliases_errors(), tuple()}.
list_role_aliases(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/role-aliases"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The validation results for all software bill of materials (SBOM)
%% attached to a specific software package version.
%%
%% Requires permission to access the ListSbomValidationResults:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_sbom_validation_results(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_sbom_validation_results_response(), tuple()} |
    {error, any()} |
    {error, list_sbom_validation_results_errors(), tuple()}.
list_sbom_validation_results(Client, PackageName, VersionName)
  when is_map(Client) ->
    list_sbom_validation_results(Client, PackageName, VersionName, #{}, #{}).

-spec list_sbom_validation_results(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_sbom_validation_results_response(), tuple()} |
    {error, any()} |
    {error, list_sbom_validation_results_errors(), tuple()}.
list_sbom_validation_results(Client, PackageName, VersionName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sbom_validation_results(Client, PackageName, VersionName, QueryMap, HeadersMap, []).

-spec list_sbom_validation_results(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_sbom_validation_results_response(), tuple()} |
    {error, any()} |
    {error, list_sbom_validation_results_errors(), tuple()}.
list_sbom_validation_results(Client, PackageName, VersionName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/", aws_util:encode_uri(PackageName), "/versions/", aws_util:encode_uri(VersionName), "/sbom-validation-results"],
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
        {<<"validationResult">>, maps:get(<<"validationResult">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of your scheduled audits.
%%
%% Requires permission to access the ListScheduledAudits:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_scheduled_audits(aws_client:aws_client()) ->
    {ok, list_scheduled_audits_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_audits_errors(), tuple()}.
list_scheduled_audits(Client)
  when is_map(Client) ->
    list_scheduled_audits(Client, #{}, #{}).

-spec list_scheduled_audits(aws_client:aws_client(), map(), map()) ->
    {ok, list_scheduled_audits_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_audits_errors(), tuple()}.
list_scheduled_audits(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scheduled_audits(Client, QueryMap, HeadersMap, []).

-spec list_scheduled_audits(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_scheduled_audits_response(), tuple()} |
    {error, any()} |
    {error, list_scheduled_audits_errors(), tuple()}.
list_scheduled_audits(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audit/scheduledaudits"],
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

%% @doc Lists the Device Defender security profiles
%% you've
%% created.
%%
%% You can filter security profiles by dimension or custom metric.
%%
%% Requires permission to access the ListSecurityProfiles:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% `dimensionName' and `metricName' cannot be used in the same
%% request.
-spec list_security_profiles(aws_client:aws_client()) ->
    {ok, list_security_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_security_profiles_errors(), tuple()}.
list_security_profiles(Client)
  when is_map(Client) ->
    list_security_profiles(Client, #{}, #{}).

-spec list_security_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_security_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_security_profiles_errors(), tuple()}.
list_security_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_profiles(Client, QueryMap, HeadersMap, []).

-spec list_security_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_security_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_security_profiles_errors(), tuple()}.
list_security_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dimensionName">>, maps:get(<<"dimensionName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"metricName">>, maps:get(<<"metricName">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Device Defender security profiles attached to a target
%% (thing group).
%%
%% Requires permission to access the ListSecurityProfilesForTarget:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_security_profiles_for_target(aws_client:aws_client(), binary() | list()) ->
    {ok, list_security_profiles_for_target_response(), tuple()} |
    {error, any()} |
    {error, list_security_profiles_for_target_errors(), tuple()}.
list_security_profiles_for_target(Client, SecurityProfileTargetArn)
  when is_map(Client) ->
    list_security_profiles_for_target(Client, SecurityProfileTargetArn, #{}, #{}).

-spec list_security_profiles_for_target(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_security_profiles_for_target_response(), tuple()} |
    {error, any()} |
    {error, list_security_profiles_for_target_errors(), tuple()}.
list_security_profiles_for_target(Client, SecurityProfileTargetArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_profiles_for_target(Client, SecurityProfileTargetArn, QueryMap, HeadersMap, []).

-spec list_security_profiles_for_target(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_security_profiles_for_target_response(), tuple()} |
    {error, any()} |
    {error, list_security_profiles_for_target_errors(), tuple()}.
list_security_profiles_for_target(Client, SecurityProfileTargetArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles-for-target"],
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
        {<<"recursive">>, maps:get(<<"recursive">>, QueryMap, undefined)},
        {<<"securityProfileTargetArn">>, SecurityProfileTargetArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the streams in your Amazon Web Services account.
%%
%% Requires permission to access the ListStreams:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_streams(aws_client:aws_client()) ->
    {ok, list_streams_response(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client)
  when is_map(Client) ->
    list_streams(Client, #{}, #{}).

-spec list_streams(aws_client:aws_client(), map(), map()) ->
    {ok, list_streams_response(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_streams(Client, QueryMap, HeadersMap, []).

-spec list_streams(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_streams_response(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/streams"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isAscendingOrder">>, maps:get(<<"isAscendingOrder">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags (metadata) you have assigned to the resource.
%%
%% Requires permission to access the ListTagsForResource:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
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
    Path = ["/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List targets for the specified policy.
%%
%% Requires permission to access the ListTargetsForPolicy:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_targets_for_policy(aws_client:aws_client(), binary() | list(), list_targets_for_policy_request()) ->
    {ok, list_targets_for_policy_response(), tuple()} |
    {error, any()} |
    {error, list_targets_for_policy_errors(), tuple()}.
list_targets_for_policy(Client, PolicyName, Input) ->
    list_targets_for_policy(Client, PolicyName, Input, []).

-spec list_targets_for_policy(aws_client:aws_client(), binary() | list(), list_targets_for_policy_request(), proplists:proplist()) ->
    {ok, list_targets_for_policy_response(), tuple()} |
    {error, any()} |
    {error, list_targets_for_policy_errors(), tuple()}.
list_targets_for_policy(Client, PolicyName, Input0, Options0) ->
    Method = post,
    Path = ["/policy-targets/", aws_util:encode_uri(PolicyName), ""],
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
                     {<<"marker">>, <<"marker">>},
                     {<<"pageSize">>, <<"pageSize">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the targets (thing groups) associated with a given Device
%% Defender security profile.
%%
%% Requires permission to access the ListTargetsForSecurityProfile:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_targets_for_security_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, list_targets_for_security_profile_response(), tuple()} |
    {error, any()} |
    {error, list_targets_for_security_profile_errors(), tuple()}.
list_targets_for_security_profile(Client, SecurityProfileName)
  when is_map(Client) ->
    list_targets_for_security_profile(Client, SecurityProfileName, #{}, #{}).

-spec list_targets_for_security_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_targets_for_security_profile_response(), tuple()} |
    {error, any()} |
    {error, list_targets_for_security_profile_errors(), tuple()}.
list_targets_for_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_targets_for_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap, []).

-spec list_targets_for_security_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_targets_for_security_profile_response(), tuple()} |
    {error, any()} |
    {error, list_targets_for_security_profile_errors(), tuple()}.
list_targets_for_security_profile(Client, SecurityProfileName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), "/targets"],
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

%% @doc List the thing groups in your account.
%%
%% Requires permission to access the ListThingGroups:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_thing_groups(aws_client:aws_client()) ->
    {ok, list_thing_groups_response(), tuple()} |
    {error, any()} |
    {error, list_thing_groups_errors(), tuple()}.
list_thing_groups(Client)
  when is_map(Client) ->
    list_thing_groups(Client, #{}, #{}).

-spec list_thing_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_thing_groups_response(), tuple()} |
    {error, any()} |
    {error, list_thing_groups_errors(), tuple()}.
list_thing_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_groups(Client, QueryMap, HeadersMap, []).

-spec list_thing_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_thing_groups_response(), tuple()} |
    {error, any()} |
    {error, list_thing_groups_errors(), tuple()}.
list_thing_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-groups"],
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
        {<<"namePrefixFilter">>, maps:get(<<"namePrefixFilter">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"parentGroup">>, maps:get(<<"parentGroup">>, QueryMap, undefined)},
        {<<"recursive">>, maps:get(<<"recursive">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the thing groups to which the specified thing belongs.
%%
%% Requires permission to access the ListThingGroupsForThing:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_thing_groups_for_thing(aws_client:aws_client(), binary() | list()) ->
    {ok, list_thing_groups_for_thing_response(), tuple()} |
    {error, any()} |
    {error, list_thing_groups_for_thing_errors(), tuple()}.
list_thing_groups_for_thing(Client, ThingName)
  when is_map(Client) ->
    list_thing_groups_for_thing(Client, ThingName, #{}, #{}).

-spec list_thing_groups_for_thing(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_thing_groups_for_thing_response(), tuple()} |
    {error, any()} |
    {error, list_thing_groups_for_thing_errors(), tuple()}.
list_thing_groups_for_thing(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_groups_for_thing(Client, ThingName, QueryMap, HeadersMap, []).

-spec list_thing_groups_for_thing(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_thing_groups_for_thing_response(), tuple()} |
    {error, any()} |
    {error, list_thing_groups_for_thing_errors(), tuple()}.
list_thing_groups_for_thing(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/thing-groups"],
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

%% @doc Lists the principals associated with the specified thing.
%%
%% A principal can be X.509
%% certificates, IAM users, groups, and roles, Amazon Cognito identities or
%% federated
%% identities.
%%
%% Requires permission to access the ListThingPrincipals:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_thing_principals(aws_client:aws_client(), binary() | list()) ->
    {ok, list_thing_principals_response(), tuple()} |
    {error, any()} |
    {error, list_thing_principals_errors(), tuple()}.
list_thing_principals(Client, ThingName)
  when is_map(Client) ->
    list_thing_principals(Client, ThingName, #{}, #{}).

-spec list_thing_principals(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_thing_principals_response(), tuple()} |
    {error, any()} |
    {error, list_thing_principals_errors(), tuple()}.
list_thing_principals(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_principals(Client, ThingName, QueryMap, HeadersMap, []).

-spec list_thing_principals(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_thing_principals_response(), tuple()} |
    {error, any()} |
    {error, list_thing_principals_errors(), tuple()}.
list_thing_principals(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/principals"],
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

%% @doc Lists the principals associated with the specified thing.
%%
%% A principal can be an X.509
%% certificate or an Amazon Cognito ID.
%%
%% Requires permission to access the ListThingPrincipals:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_thing_principals_v2(aws_client:aws_client(), binary() | list()) ->
    {ok, list_thing_principals_v2_response(), tuple()} |
    {error, any()} |
    {error, list_thing_principals_v2_errors(), tuple()}.
list_thing_principals_v2(Client, ThingName)
  when is_map(Client) ->
    list_thing_principals_v2(Client, ThingName, #{}, #{}).

-spec list_thing_principals_v2(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_thing_principals_v2_response(), tuple()} |
    {error, any()} |
    {error, list_thing_principals_v2_errors(), tuple()}.
list_thing_principals_v2(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_principals_v2(Client, ThingName, QueryMap, HeadersMap, []).

-spec list_thing_principals_v2(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_thing_principals_v2_response(), tuple()} |
    {error, any()} |
    {error, list_thing_principals_v2_errors(), tuple()}.
list_thing_principals_v2(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/principals-v2"],
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
        {<<"thingPrincipalType">>, maps:get(<<"thingPrincipalType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Information about the thing registration tasks.
-spec list_thing_registration_task_reports(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_thing_registration_task_reports_response(), tuple()} |
    {error, any()} |
    {error, list_thing_registration_task_reports_errors(), tuple()}.
list_thing_registration_task_reports(Client, TaskId, ReportType)
  when is_map(Client) ->
    list_thing_registration_task_reports(Client, TaskId, ReportType, #{}, #{}).

-spec list_thing_registration_task_reports(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_thing_registration_task_reports_response(), tuple()} |
    {error, any()} |
    {error, list_thing_registration_task_reports_errors(), tuple()}.
list_thing_registration_task_reports(Client, TaskId, ReportType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_registration_task_reports(Client, TaskId, ReportType, QueryMap, HeadersMap, []).

-spec list_thing_registration_task_reports(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_thing_registration_task_reports_response(), tuple()} |
    {error, any()} |
    {error, list_thing_registration_task_reports_errors(), tuple()}.
list_thing_registration_task_reports(Client, TaskId, ReportType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-registration-tasks/", aws_util:encode_uri(TaskId), "/reports"],
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
        {<<"reportType">>, ReportType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List bulk thing provisioning tasks.
%%
%% Requires permission to access the ListThingRegistrationTasks:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_thing_registration_tasks(aws_client:aws_client()) ->
    {ok, list_thing_registration_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_thing_registration_tasks_errors(), tuple()}.
list_thing_registration_tasks(Client)
  when is_map(Client) ->
    list_thing_registration_tasks(Client, #{}, #{}).

-spec list_thing_registration_tasks(aws_client:aws_client(), map(), map()) ->
    {ok, list_thing_registration_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_thing_registration_tasks_errors(), tuple()}.
list_thing_registration_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_registration_tasks(Client, QueryMap, HeadersMap, []).

-spec list_thing_registration_tasks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_thing_registration_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_thing_registration_tasks_errors(), tuple()}.
list_thing_registration_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-registration-tasks"],
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

%% @doc Lists the existing thing types.
%%
%% Requires permission to access the ListThingTypes:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_thing_types(aws_client:aws_client()) ->
    {ok, list_thing_types_response(), tuple()} |
    {error, any()} |
    {error, list_thing_types_errors(), tuple()}.
list_thing_types(Client)
  when is_map(Client) ->
    list_thing_types(Client, #{}, #{}).

-spec list_thing_types(aws_client:aws_client(), map(), map()) ->
    {ok, list_thing_types_response(), tuple()} |
    {error, any()} |
    {error, list_thing_types_errors(), tuple()}.
list_thing_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_thing_types(Client, QueryMap, HeadersMap, []).

-spec list_thing_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_thing_types_response(), tuple()} |
    {error, any()} |
    {error, list_thing_types_errors(), tuple()}.
list_thing_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-types"],
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
        {<<"thingTypeName">>, maps:get(<<"thingTypeName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your things.
%%
%% Use the attributeName and attributeValue parameters to filter your things.
%% For example,
%% calling `ListThings' with attributeName=Color and attributeValue=Red
%% retrieves all things in the registry that contain an attribute Color with
%% the value Red. For more
%% information, see List Things:
%% https://docs.aws.amazon.com/iot/latest/developerguide/thing-registry.html#list-things
%% from the Amazon Web Services IoT Core Developer
%% Guide.
%%
%% Requires permission to access the ListThings:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% You will not be charged for calling this API if an `Access denied'
%% error is returned. You will also not be charged if no attributes or
%% pagination token was provided in request and no pagination token and no
%% results were returned.
-spec list_things(aws_client:aws_client()) ->
    {ok, list_things_response(), tuple()} |
    {error, any()} |
    {error, list_things_errors(), tuple()}.
list_things(Client)
  when is_map(Client) ->
    list_things(Client, #{}, #{}).

-spec list_things(aws_client:aws_client(), map(), map()) ->
    {ok, list_things_response(), tuple()} |
    {error, any()} |
    {error, list_things_errors(), tuple()}.
list_things(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_things(Client, QueryMap, HeadersMap, []).

-spec list_things(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_things_response(), tuple()} |
    {error, any()} |
    {error, list_things_errors(), tuple()}.
list_things(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"attributeName">>, maps:get(<<"attributeName">>, QueryMap, undefined)},
        {<<"attributeValue">>, maps:get(<<"attributeValue">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"thingTypeName">>, maps:get(<<"thingTypeName">>, QueryMap, undefined)},
        {<<"usePrefixAttributeValue">>, maps:get(<<"usePrefixAttributeValue">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the things you have added to the given billing group.
%%
%% Requires permission to access the ListThingsInBillingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_things_in_billing_group(aws_client:aws_client(), binary() | list()) ->
    {ok, list_things_in_billing_group_response(), tuple()} |
    {error, any()} |
    {error, list_things_in_billing_group_errors(), tuple()}.
list_things_in_billing_group(Client, BillingGroupName)
  when is_map(Client) ->
    list_things_in_billing_group(Client, BillingGroupName, #{}, #{}).

-spec list_things_in_billing_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_things_in_billing_group_response(), tuple()} |
    {error, any()} |
    {error, list_things_in_billing_group_errors(), tuple()}.
list_things_in_billing_group(Client, BillingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_things_in_billing_group(Client, BillingGroupName, QueryMap, HeadersMap, []).

-spec list_things_in_billing_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_things_in_billing_group_response(), tuple()} |
    {error, any()} |
    {error, list_things_in_billing_group_errors(), tuple()}.
list_things_in_billing_group(Client, BillingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/billing-groups/", aws_util:encode_uri(BillingGroupName), "/things"],
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

%% @doc Lists the things in the specified group.
%%
%% Requires permission to access the ListThingsInThingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_things_in_thing_group(aws_client:aws_client(), binary() | list()) ->
    {ok, list_things_in_thing_group_response(), tuple()} |
    {error, any()} |
    {error, list_things_in_thing_group_errors(), tuple()}.
list_things_in_thing_group(Client, ThingGroupName)
  when is_map(Client) ->
    list_things_in_thing_group(Client, ThingGroupName, #{}, #{}).

-spec list_things_in_thing_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_things_in_thing_group_response(), tuple()} |
    {error, any()} |
    {error, list_things_in_thing_group_errors(), tuple()}.
list_things_in_thing_group(Client, ThingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_things_in_thing_group(Client, ThingGroupName, QueryMap, HeadersMap, []).

-spec list_things_in_thing_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_things_in_thing_group_response(), tuple()} |
    {error, any()} |
    {error, list_things_in_thing_group_errors(), tuple()}.
list_things_in_thing_group(Client, ThingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/thing-groups/", aws_util:encode_uri(ThingGroupName), "/things"],
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
        {<<"recursive">>, maps:get(<<"recursive">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the topic rule destinations in your Amazon Web Services
%% account.
%%
%% Requires permission to access the ListTopicRuleDestinations:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_topic_rule_destinations(aws_client:aws_client()) ->
    {ok, list_topic_rule_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_topic_rule_destinations_errors(), tuple()}.
list_topic_rule_destinations(Client)
  when is_map(Client) ->
    list_topic_rule_destinations(Client, #{}, #{}).

-spec list_topic_rule_destinations(aws_client:aws_client(), map(), map()) ->
    {ok, list_topic_rule_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_topic_rule_destinations_errors(), tuple()}.
list_topic_rule_destinations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_topic_rule_destinations(Client, QueryMap, HeadersMap, []).

-spec list_topic_rule_destinations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_topic_rule_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_topic_rule_destinations_errors(), tuple()}.
list_topic_rule_destinations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/destinations"],
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

%% @doc Lists the rules for the specific topic.
%%
%% Requires permission to access the ListTopicRules:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_topic_rules(aws_client:aws_client()) ->
    {ok, list_topic_rules_response(), tuple()} |
    {error, any()} |
    {error, list_topic_rules_errors(), tuple()}.
list_topic_rules(Client)
  when is_map(Client) ->
    list_topic_rules(Client, #{}, #{}).

-spec list_topic_rules(aws_client:aws_client(), map(), map()) ->
    {ok, list_topic_rules_response(), tuple()} |
    {error, any()} |
    {error, list_topic_rules_errors(), tuple()}.
list_topic_rules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_topic_rules(Client, QueryMap, HeadersMap, []).

-spec list_topic_rules(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_topic_rules_response(), tuple()} |
    {error, any()} |
    {error, list_topic_rules_errors(), tuple()}.
list_topic_rules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules"],
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
        {<<"ruleDisabled">>, maps:get(<<"ruleDisabled">>, QueryMap, undefined)},
        {<<"topic">>, maps:get(<<"topic">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists logging levels.
%%
%% Requires permission to access the ListV2LoggingLevels:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_v2_logging_levels(aws_client:aws_client()) ->
    {ok, list_v2_logging_levels_response(), tuple()} |
    {error, any()} |
    {error, list_v2_logging_levels_errors(), tuple()}.
list_v2_logging_levels(Client)
  when is_map(Client) ->
    list_v2_logging_levels(Client, #{}, #{}).

-spec list_v2_logging_levels(aws_client:aws_client(), map(), map()) ->
    {ok, list_v2_logging_levels_response(), tuple()} |
    {error, any()} |
    {error, list_v2_logging_levels_errors(), tuple()}.
list_v2_logging_levels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_v2_logging_levels(Client, QueryMap, HeadersMap, []).

-spec list_v2_logging_levels(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_v2_logging_levels_response(), tuple()} |
    {error, any()} |
    {error, list_v2_logging_levels_errors(), tuple()}.
list_v2_logging_levels(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2LoggingLevel"],
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
        {<<"targetType">>, maps:get(<<"targetType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Device Defender security profile violations discovered
%% during the given time period.
%%
%% You can use filters to limit the results to those alerts issued for a
%% particular security profile,
%% behavior, or thing (device).
%%
%% Requires permission to access the ListViolationEvents:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_violation_events(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_violation_events_response(), tuple()} |
    {error, any()} |
    {error, list_violation_events_errors(), tuple()}.
list_violation_events(Client, EndTime, StartTime)
  when is_map(Client) ->
    list_violation_events(Client, EndTime, StartTime, #{}, #{}).

-spec list_violation_events(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_violation_events_response(), tuple()} |
    {error, any()} |
    {error, list_violation_events_errors(), tuple()}.
list_violation_events(Client, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_violation_events(Client, EndTime, StartTime, QueryMap, HeadersMap, []).

-spec list_violation_events(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_violation_events_response(), tuple()} |
    {error, any()} |
    {error, list_violation_events_errors(), tuple()}.
list_violation_events(Client, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/violation-events"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"behaviorCriteriaType">>, maps:get(<<"behaviorCriteriaType">>, QueryMap, undefined)},
        {<<"endTime">>, EndTime},
        {<<"listSuppressedAlerts">>, maps:get(<<"listSuppressedAlerts">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"securityProfileName">>, maps:get(<<"securityProfileName">>, QueryMap, undefined)},
        {<<"startTime">>, StartTime},
        {<<"thingName">>, maps:get(<<"thingName">>, QueryMap, undefined)},
        {<<"verificationState">>, maps:get(<<"verificationState">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Set a verification state and provide a description of that
%% verification state on a violation (detect alarm).
-spec put_verification_state_on_violation(aws_client:aws_client(), binary() | list(), put_verification_state_on_violation_request()) ->
    {ok, put_verification_state_on_violation_response(), tuple()} |
    {error, any()} |
    {error, put_verification_state_on_violation_errors(), tuple()}.
put_verification_state_on_violation(Client, ViolationId, Input) ->
    put_verification_state_on_violation(Client, ViolationId, Input, []).

-spec put_verification_state_on_violation(aws_client:aws_client(), binary() | list(), put_verification_state_on_violation_request(), proplists:proplist()) ->
    {ok, put_verification_state_on_violation_response(), tuple()} |
    {error, any()} |
    {error, put_verification_state_on_violation_errors(), tuple()}.
put_verification_state_on_violation(Client, ViolationId, Input0, Options0) ->
    Method = post,
    Path = ["/violations/verification-state/", aws_util:encode_uri(ViolationId), ""],
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

%% @doc Registers a CA certificate with Amazon Web Services IoT Core.
%%
%% There is no limit to the number of CA
%% certificates you can register in your Amazon Web Services account. You can
%% register up to 10 CA
%% certificates with the same `CA subject field' per Amazon Web Services
%% account.
%%
%% Requires permission to access the RegisterCACertificate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec register_ca_certificate(aws_client:aws_client(), register_ca_certificate_request()) ->
    {ok, register_ca_certificate_response(), tuple()} |
    {error, any()} |
    {error, register_ca_certificate_errors(), tuple()}.
register_ca_certificate(Client, Input) ->
    register_ca_certificate(Client, Input, []).

-spec register_ca_certificate(aws_client:aws_client(), register_ca_certificate_request(), proplists:proplist()) ->
    {ok, register_ca_certificate_response(), tuple()} |
    {error, any()} |
    {error, register_ca_certificate_errors(), tuple()}.
register_ca_certificate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cacertificate"],
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
                     {<<"allowAutoRegistration">>, <<"allowAutoRegistration">>},
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Registers a device certificate with IoT in the same certificate mode:
%% https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html#iot-Type-CertificateDescription-certificateMode
%% as the signing CA.
%%
%% If you have more than one CA certificate that has the same subject field,
%% you must
%% specify the CA certificate that was used to sign the device certificate
%% being
%% registered.
%%
%% Requires permission to access the RegisterCertificate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec register_certificate(aws_client:aws_client(), register_certificate_request()) ->
    {ok, register_certificate_response(), tuple()} |
    {error, any()} |
    {error, register_certificate_errors(), tuple()}.
register_certificate(Client, Input) ->
    register_certificate(Client, Input, []).

-spec register_certificate(aws_client:aws_client(), register_certificate_request(), proplists:proplist()) ->
    {ok, register_certificate_response(), tuple()} |
    {error, any()} |
    {error, register_certificate_errors(), tuple()}.
register_certificate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/certificate/register"],
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
                     {<<"setAsActive">>, <<"setAsActive">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Register a certificate that does not have a certificate authority
%% (CA).
%%
%% For supported certificates, consult
%% Certificate signing algorithms supported by IoT:
%% https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms.
-spec register_certificate_without_ca(aws_client:aws_client(), register_certificate_without_ca_request()) ->
    {ok, register_certificate_without_ca_response(), tuple()} |
    {error, any()} |
    {error, register_certificate_without_ca_errors(), tuple()}.
register_certificate_without_ca(Client, Input) ->
    register_certificate_without_ca(Client, Input, []).

-spec register_certificate_without_ca(aws_client:aws_client(), register_certificate_without_ca_request(), proplists:proplist()) ->
    {ok, register_certificate_without_ca_response(), tuple()} |
    {error, any()} |
    {error, register_certificate_without_ca_errors(), tuple()}.
register_certificate_without_ca(Client, Input0, Options0) ->
    Method = post,
    Path = ["/certificate/register-no-ca"],
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

%% @doc Provisions a thing in the device registry.
%%
%% RegisterThing calls other IoT control
%% plane APIs. These calls might exceed your account level
%% IoT Throttling Limits:
%% https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_iot
%% and cause throttle errors. Please contact Amazon Web Services Customer
%% Support: https://console.aws.amazon.com/support/home to raise
%% your throttling limits if necessary.
%%
%% Requires permission to access the RegisterThing:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec register_thing(aws_client:aws_client(), register_thing_request()) ->
    {ok, register_thing_response(), tuple()} |
    {error, any()} |
    {error, register_thing_errors(), tuple()}.
register_thing(Client, Input) ->
    register_thing(Client, Input, []).

-spec register_thing(aws_client:aws_client(), register_thing_request(), proplists:proplist()) ->
    {ok, register_thing_response(), tuple()} |
    {error, any()} |
    {error, register_thing_errors(), tuple()}.
register_thing(Client, Input0, Options0) ->
    Method = post,
    Path = ["/things"],
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

%% @doc Rejects a pending certificate transfer.
%%
%% After IoT rejects a certificate transfer,
%% the certificate status changes from PENDING_TRANSFER to
%% INACTIVE.
%%
%% To check for pending certificate transfers, call `ListCertificates'
%% to enumerate your certificates.
%%
%% This operation can only be called by the transfer destination. After it is
%% called,
%% the certificate will be returned to the source's account in the
%% INACTIVE state.
%%
%% Requires permission to access the RejectCertificateTransfer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec reject_certificate_transfer(aws_client:aws_client(), binary() | list(), reject_certificate_transfer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reject_certificate_transfer_errors(), tuple()}.
reject_certificate_transfer(Client, CertificateId, Input) ->
    reject_certificate_transfer(Client, CertificateId, Input, []).

-spec reject_certificate_transfer(aws_client:aws_client(), binary() | list(), reject_certificate_transfer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reject_certificate_transfer_errors(), tuple()}.
reject_certificate_transfer(Client, CertificateId, Input0, Options0) ->
    Method = patch,
    Path = ["/reject-certificate-transfer/", aws_util:encode_uri(CertificateId), ""],
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

%% @doc Removes the given thing from the billing group.
%%
%% Requires permission to access the RemoveThingFromBillingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% This call is asynchronous. It might take several seconds for the
%% detachment to propagate.
-spec remove_thing_from_billing_group(aws_client:aws_client(), remove_thing_from_billing_group_request()) ->
    {ok, remove_thing_from_billing_group_response(), tuple()} |
    {error, any()} |
    {error, remove_thing_from_billing_group_errors(), tuple()}.
remove_thing_from_billing_group(Client, Input) ->
    remove_thing_from_billing_group(Client, Input, []).

-spec remove_thing_from_billing_group(aws_client:aws_client(), remove_thing_from_billing_group_request(), proplists:proplist()) ->
    {ok, remove_thing_from_billing_group_response(), tuple()} |
    {error, any()} |
    {error, remove_thing_from_billing_group_errors(), tuple()}.
remove_thing_from_billing_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/billing-groups/removeThingFromBillingGroup"],
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

%% @doc Remove the specified thing from the specified group.
%%
%% You must specify either a `thingGroupArn' or a
%% `thingGroupName' to identify the thing group and
%% either a `thingArn' or a `thingName' to
%% identify the thing to remove from the thing group.
%%
%% Requires permission to access the RemoveThingFromThingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec remove_thing_from_thing_group(aws_client:aws_client(), remove_thing_from_thing_group_request()) ->
    {ok, remove_thing_from_thing_group_response(), tuple()} |
    {error, any()} |
    {error, remove_thing_from_thing_group_errors(), tuple()}.
remove_thing_from_thing_group(Client, Input) ->
    remove_thing_from_thing_group(Client, Input, []).

-spec remove_thing_from_thing_group(aws_client:aws_client(), remove_thing_from_thing_group_request(), proplists:proplist()) ->
    {ok, remove_thing_from_thing_group_response(), tuple()} |
    {error, any()} |
    {error, remove_thing_from_thing_group_errors(), tuple()}.
remove_thing_from_thing_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/thing-groups/removeThingFromThingGroup"],
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

%% @doc Replaces the rule.
%%
%% You must specify all parameters for the new rule. Creating rules
%% is an administrator-level action. Any user who has permission to create
%% rules will be able
%% to access data processed by the rule.
%%
%% Requires permission to access the ReplaceTopicRule:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec replace_topic_rule(aws_client:aws_client(), binary() | list(), replace_topic_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, replace_topic_rule_errors(), tuple()}.
replace_topic_rule(Client, RuleName, Input) ->
    replace_topic_rule(Client, RuleName, Input, []).

-spec replace_topic_rule(aws_client:aws_client(), binary() | list(), replace_topic_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, replace_topic_rule_errors(), tuple()}.
replace_topic_rule(Client, RuleName, Input0, Options0) ->
    Method = patch,
    Path = ["/rules/", aws_util:encode_uri(RuleName), ""],
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

%% @doc The query search index.
%%
%% Requires permission to access the SearchIndex:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec search_index(aws_client:aws_client(), search_index_request()) ->
    {ok, search_index_response(), tuple()} |
    {error, any()} |
    {error, search_index_errors(), tuple()}.
search_index(Client, Input) ->
    search_index(Client, Input, []).

-spec search_index(aws_client:aws_client(), search_index_request(), proplists:proplist()) ->
    {ok, search_index_response(), tuple()} |
    {error, any()} |
    {error, search_index_errors(), tuple()}.
search_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indices/search"],
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

%% @doc Sets the default authorizer.
%%
%% This will be used if a websocket connection is made
%% without specifying an authorizer.
%%
%% Requires permission to access the SetDefaultAuthorizer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec set_default_authorizer(aws_client:aws_client(), set_default_authorizer_request()) ->
    {ok, set_default_authorizer_response(), tuple()} |
    {error, any()} |
    {error, set_default_authorizer_errors(), tuple()}.
set_default_authorizer(Client, Input) ->
    set_default_authorizer(Client, Input, []).

-spec set_default_authorizer(aws_client:aws_client(), set_default_authorizer_request(), proplists:proplist()) ->
    {ok, set_default_authorizer_response(), tuple()} |
    {error, any()} |
    {error, set_default_authorizer_errors(), tuple()}.
set_default_authorizer(Client, Input0, Options0) ->
    Method = post,
    Path = ["/default-authorizer"],
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

%% @doc Sets the specified version of the specified policy as the
%% policy's default
%% (operative) version.
%%
%% This action affects all certificates to which the policy is attached.
%% To list the principals the policy is attached to, use the
%% `ListPrincipalPolicies'
%% action.
%%
%% Requires permission to access the SetDefaultPolicyVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec set_default_policy_version(aws_client:aws_client(), binary() | list(), binary() | list(), set_default_policy_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_default_policy_version_errors(), tuple()}.
set_default_policy_version(Client, PolicyName, PolicyVersionId, Input) ->
    set_default_policy_version(Client, PolicyName, PolicyVersionId, Input, []).

-spec set_default_policy_version(aws_client:aws_client(), binary() | list(), binary() | list(), set_default_policy_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_default_policy_version_errors(), tuple()}.
set_default_policy_version(Client, PolicyName, PolicyVersionId, Input0, Options0) ->
    Method = patch,
    Path = ["/policies/", aws_util:encode_uri(PolicyName), "/version/", aws_util:encode_uri(PolicyVersionId), ""],
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

%% @doc Sets the logging options.
%%
%% NOTE: use of this command is not recommended. Use
%% `SetV2LoggingOptions'
%% instead.
%%
%% Requires permission to access the SetLoggingOptions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec set_logging_options(aws_client:aws_client(), set_logging_options_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_logging_options_errors(), tuple()}.
set_logging_options(Client, Input) ->
    set_logging_options(Client, Input, []).

-spec set_logging_options(aws_client:aws_client(), set_logging_options_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_logging_options_errors(), tuple()}.
set_logging_options(Client, Input0, Options0) ->
    Method = post,
    Path = ["/loggingOptions"],
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

%% @doc Sets the logging level.
%%
%% Requires permission to access the SetV2LoggingLevel:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec set_v2_logging_level(aws_client:aws_client(), set_v2_logging_level_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_v2_logging_level_errors(), tuple()}.
set_v2_logging_level(Client, Input) ->
    set_v2_logging_level(Client, Input, []).

-spec set_v2_logging_level(aws_client:aws_client(), set_v2_logging_level_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_v2_logging_level_errors(), tuple()}.
set_v2_logging_level(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2LoggingLevel"],
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

%% @doc Sets the logging options for the V2 logging service.
%%
%% Requires permission to access the SetV2LoggingOptions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec set_v2_logging_options(aws_client:aws_client(), set_v2_logging_options_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_v2_logging_options_errors(), tuple()}.
set_v2_logging_options(Client, Input) ->
    set_v2_logging_options(Client, Input, []).

-spec set_v2_logging_options(aws_client:aws_client(), set_v2_logging_options_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_v2_logging_options_errors(), tuple()}.
set_v2_logging_options(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2LoggingOptions"],
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

%% @doc Starts a task that applies a set of mitigation actions to the
%% specified target.
%%
%% Requires permission to access the StartAuditMitigationActionsTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec start_audit_mitigation_actions_task(aws_client:aws_client(), binary() | list(), start_audit_mitigation_actions_task_request()) ->
    {ok, start_audit_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, start_audit_mitigation_actions_task_errors(), tuple()}.
start_audit_mitigation_actions_task(Client, TaskId, Input) ->
    start_audit_mitigation_actions_task(Client, TaskId, Input, []).

-spec start_audit_mitigation_actions_task(aws_client:aws_client(), binary() | list(), start_audit_mitigation_actions_task_request(), proplists:proplist()) ->
    {ok, start_audit_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, start_audit_mitigation_actions_task_errors(), tuple()}.
start_audit_mitigation_actions_task(Client, TaskId, Input0, Options0) ->
    Method = post,
    Path = ["/audit/mitigationactions/tasks/", aws_util:encode_uri(TaskId), ""],
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
%% Starts a Device Defender ML Detect mitigation actions task.
%%
%% Requires permission to access the StartDetectMitigationActionsTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec start_detect_mitigation_actions_task(aws_client:aws_client(), binary() | list(), start_detect_mitigation_actions_task_request()) ->
    {ok, start_detect_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, start_detect_mitigation_actions_task_errors(), tuple()}.
start_detect_mitigation_actions_task(Client, TaskId, Input) ->
    start_detect_mitigation_actions_task(Client, TaskId, Input, []).

-spec start_detect_mitigation_actions_task(aws_client:aws_client(), binary() | list(), start_detect_mitigation_actions_task_request(), proplists:proplist()) ->
    {ok, start_detect_mitigation_actions_task_response(), tuple()} |
    {error, any()} |
    {error, start_detect_mitigation_actions_task_errors(), tuple()}.
start_detect_mitigation_actions_task(Client, TaskId, Input0, Options0) ->
    Method = put,
    Path = ["/detect/mitigationactions/tasks/", aws_util:encode_uri(TaskId), ""],
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

%% @doc Starts an on-demand Device Defender audit.
%%
%% Requires permission to access the StartOnDemandAuditTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec start_on_demand_audit_task(aws_client:aws_client(), start_on_demand_audit_task_request()) ->
    {ok, start_on_demand_audit_task_response(), tuple()} |
    {error, any()} |
    {error, start_on_demand_audit_task_errors(), tuple()}.
start_on_demand_audit_task(Client, Input) ->
    start_on_demand_audit_task(Client, Input, []).

-spec start_on_demand_audit_task(aws_client:aws_client(), start_on_demand_audit_task_request(), proplists:proplist()) ->
    {ok, start_on_demand_audit_task_response(), tuple()} |
    {error, any()} |
    {error, start_on_demand_audit_task_errors(), tuple()}.
start_on_demand_audit_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audit/tasks"],
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

%% @doc Creates a bulk thing provisioning task.
%%
%% Requires permission to access the StartThingRegistrationTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec start_thing_registration_task(aws_client:aws_client(), start_thing_registration_task_request()) ->
    {ok, start_thing_registration_task_response(), tuple()} |
    {error, any()} |
    {error, start_thing_registration_task_errors(), tuple()}.
start_thing_registration_task(Client, Input) ->
    start_thing_registration_task(Client, Input, []).

-spec start_thing_registration_task(aws_client:aws_client(), start_thing_registration_task_request(), proplists:proplist()) ->
    {ok, start_thing_registration_task_response(), tuple()} |
    {error, any()} |
    {error, start_thing_registration_task_errors(), tuple()}.
start_thing_registration_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/thing-registration-tasks"],
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

%% @doc Cancels a bulk thing provisioning task.
%%
%% Requires permission to access the StopThingRegistrationTask:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec stop_thing_registration_task(aws_client:aws_client(), binary() | list(), stop_thing_registration_task_request()) ->
    {ok, stop_thing_registration_task_response(), tuple()} |
    {error, any()} |
    {error, stop_thing_registration_task_errors(), tuple()}.
stop_thing_registration_task(Client, TaskId, Input) ->
    stop_thing_registration_task(Client, TaskId, Input, []).

-spec stop_thing_registration_task(aws_client:aws_client(), binary() | list(), stop_thing_registration_task_request(), proplists:proplist()) ->
    {ok, stop_thing_registration_task_response(), tuple()} |
    {error, any()} |
    {error, stop_thing_registration_task_errors(), tuple()}.
stop_thing_registration_task(Client, TaskId, Input0, Options0) ->
    Method = put,
    Path = ["/thing-registration-tasks/", aws_util:encode_uri(TaskId), "/cancel"],
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

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata which can be
%% used to manage a resource.
%%
%% Requires permission to access the TagResource:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags"],
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

%% @doc Tests if a specified principal is authorized to perform an IoT action
%% on a
%% specified resource.
%%
%% Use this to test and debug the authorization behavior of devices that
%% connect to the IoT device gateway.
%%
%% Requires permission to access the TestAuthorization:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec test_authorization(aws_client:aws_client(), test_authorization_request()) ->
    {ok, test_authorization_response(), tuple()} |
    {error, any()} |
    {error, test_authorization_errors(), tuple()}.
test_authorization(Client, Input) ->
    test_authorization(Client, Input, []).

-spec test_authorization(aws_client:aws_client(), test_authorization_request(), proplists:proplist()) ->
    {ok, test_authorization_response(), tuple()} |
    {error, any()} |
    {error, test_authorization_errors(), tuple()}.
test_authorization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/test-authorization"],
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
                     {<<"clientId">>, <<"clientId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tests a custom authorization behavior by invoking a specified custom
%% authorizer.
%%
%% Use
%% this to test and debug the custom authorization behavior of devices that
%% connect to the IoT
%% device gateway.
%%
%% Requires permission to access the TestInvokeAuthorizer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec test_invoke_authorizer(aws_client:aws_client(), binary() | list(), test_invoke_authorizer_request()) ->
    {ok, test_invoke_authorizer_response(), tuple()} |
    {error, any()} |
    {error, test_invoke_authorizer_errors(), tuple()}.
test_invoke_authorizer(Client, AuthorizerName, Input) ->
    test_invoke_authorizer(Client, AuthorizerName, Input, []).

-spec test_invoke_authorizer(aws_client:aws_client(), binary() | list(), test_invoke_authorizer_request(), proplists:proplist()) ->
    {ok, test_invoke_authorizer_response(), tuple()} |
    {error, any()} |
    {error, test_invoke_authorizer_errors(), tuple()}.
test_invoke_authorizer(Client, AuthorizerName, Input0, Options0) ->
    Method = post,
    Path = ["/authorizer/", aws_util:encode_uri(AuthorizerName), "/test"],
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

%% @doc Transfers the specified certificate to the specified Amazon Web
%% Services account.
%%
%% Requires permission to access the TransferCertificate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% You can cancel the transfer until it is acknowledged by the recipient.
%%
%% No notification is sent to the transfer destination's account. It is
%% up to the caller
%% to notify the transfer target.
%%
%% The certificate being transferred must not be in the ACTIVE state. You can
%% use the
%% `UpdateCertificate' action to deactivate it.
%%
%% The certificate must not have any policies attached to it. You can use the
%% `DetachPolicy' action to detach them.
-spec transfer_certificate(aws_client:aws_client(), binary() | list(), transfer_certificate_request()) ->
    {ok, transfer_certificate_response(), tuple()} |
    {error, any()} |
    {error, transfer_certificate_errors(), tuple()}.
transfer_certificate(Client, CertificateId, Input) ->
    transfer_certificate(Client, CertificateId, Input, []).

-spec transfer_certificate(aws_client:aws_client(), binary() | list(), transfer_certificate_request(), proplists:proplist()) ->
    {ok, transfer_certificate_response(), tuple()} |
    {error, any()} |
    {error, transfer_certificate_errors(), tuple()}.
transfer_certificate(Client, CertificateId, Input0, Options0) ->
    Method = patch,
    Path = ["/transfer-certificate/", aws_util:encode_uri(CertificateId), ""],
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
                     {<<"targetAwsAccount">>, <<"targetAwsAccount">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the given tags (metadata) from the resource.
%%
%% Requires permission to access the UntagResource:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untag"],
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

%% @doc Configures or reconfigures the Device Defender audit settings for
%% this account.
%%
%% Settings include how audit notifications are sent and which audit checks
%% are
%% enabled or disabled.
%%
%% Requires permission to access the UpdateAccountAuditConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_account_audit_configuration(aws_client:aws_client(), update_account_audit_configuration_request()) ->
    {ok, update_account_audit_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_account_audit_configuration_errors(), tuple()}.
update_account_audit_configuration(Client, Input) ->
    update_account_audit_configuration(Client, Input, []).

-spec update_account_audit_configuration(aws_client:aws_client(), update_account_audit_configuration_request(), proplists:proplist()) ->
    {ok, update_account_audit_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_account_audit_configuration_errors(), tuple()}.
update_account_audit_configuration(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/audit/configuration"],
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
%% Updates a Device Defender audit suppression.
-spec update_audit_suppression(aws_client:aws_client(), update_audit_suppression_request()) ->
    {ok, update_audit_suppression_response(), tuple()} |
    {error, any()} |
    {error, update_audit_suppression_errors(), tuple()}.
update_audit_suppression(Client, Input) ->
    update_audit_suppression(Client, Input, []).

-spec update_audit_suppression(aws_client:aws_client(), update_audit_suppression_request(), proplists:proplist()) ->
    {ok, update_audit_suppression_response(), tuple()} |
    {error, any()} |
    {error, update_audit_suppression_errors(), tuple()}.
update_audit_suppression(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/audit/suppressions/update"],
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

%% @doc Updates an authorizer.
%%
%% Requires permission to access the UpdateAuthorizer:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_authorizer(aws_client:aws_client(), binary() | list(), update_authorizer_request()) ->
    {ok, update_authorizer_response(), tuple()} |
    {error, any()} |
    {error, update_authorizer_errors(), tuple()}.
update_authorizer(Client, AuthorizerName, Input) ->
    update_authorizer(Client, AuthorizerName, Input, []).

-spec update_authorizer(aws_client:aws_client(), binary() | list(), update_authorizer_request(), proplists:proplist()) ->
    {ok, update_authorizer_response(), tuple()} |
    {error, any()} |
    {error, update_authorizer_errors(), tuple()}.
update_authorizer(Client, AuthorizerName, Input0, Options0) ->
    Method = put,
    Path = ["/authorizer/", aws_util:encode_uri(AuthorizerName), ""],
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

%% @doc Updates information about the billing group.
%%
%% Requires permission to access the UpdateBillingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_billing_group(aws_client:aws_client(), binary() | list(), update_billing_group_request()) ->
    {ok, update_billing_group_response(), tuple()} |
    {error, any()} |
    {error, update_billing_group_errors(), tuple()}.
update_billing_group(Client, BillingGroupName, Input) ->
    update_billing_group(Client, BillingGroupName, Input, []).

-spec update_billing_group(aws_client:aws_client(), binary() | list(), update_billing_group_request(), proplists:proplist()) ->
    {ok, update_billing_group_response(), tuple()} |
    {error, any()} |
    {error, update_billing_group_errors(), tuple()}.
update_billing_group(Client, BillingGroupName, Input0, Options0) ->
    Method = patch,
    Path = ["/billing-groups/", aws_util:encode_uri(BillingGroupName), ""],
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

%% @doc Updates a registered CA certificate.
%%
%% Requires permission to access the UpdateCACertificate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_ca_certificate(aws_client:aws_client(), binary() | list(), update_ca_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_ca_certificate_errors(), tuple()}.
update_ca_certificate(Client, CertificateId, Input) ->
    update_ca_certificate(Client, CertificateId, Input, []).

-spec update_ca_certificate(aws_client:aws_client(), binary() | list(), update_ca_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_ca_certificate_errors(), tuple()}.
update_ca_certificate(Client, CertificateId, Input0, Options0) ->
    Method = put,
    Path = ["/cacertificate/", aws_util:encode_uri(CertificateId), ""],
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
                     {<<"newAutoRegistrationStatus">>, <<"newAutoRegistrationStatus">>},
                     {<<"newStatus">>, <<"newStatus">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status of the specified certificate.
%%
%% This operation is
%% idempotent.
%%
%% Requires permission to access the UpdateCertificate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% Certificates must be in the ACTIVE state to authenticate devices that use
%% a certificate to connect to IoT.
%%
%% Within a few minutes of updating a certificate from the ACTIVE state to
%% any other
%% state, IoT disconnects all devices that used that certificate to connect.
%% Devices cannot
%% use a certificate that is not in the ACTIVE state to reconnect.
-spec update_certificate(aws_client:aws_client(), binary() | list(), update_certificate_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_certificate_errors(), tuple()}.
update_certificate(Client, CertificateId, Input) ->
    update_certificate(Client, CertificateId, Input, []).

-spec update_certificate(aws_client:aws_client(), binary() | list(), update_certificate_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_certificate_errors(), tuple()}.
update_certificate(Client, CertificateId, Input0, Options0) ->
    Method = put,
    Path = ["/certificates/", aws_util:encode_uri(CertificateId), ""],
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
                     {<<"newStatus">>, <<"newStatus">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a certificate provider.
%%
%% Requires permission to access the UpdateCertificateProvider:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_certificate_provider(aws_client:aws_client(), binary() | list(), update_certificate_provider_request()) ->
    {ok, update_certificate_provider_response(), tuple()} |
    {error, any()} |
    {error, update_certificate_provider_errors(), tuple()}.
update_certificate_provider(Client, CertificateProviderName, Input) ->
    update_certificate_provider(Client, CertificateProviderName, Input, []).

-spec update_certificate_provider(aws_client:aws_client(), binary() | list(), update_certificate_provider_request(), proplists:proplist()) ->
    {ok, update_certificate_provider_response(), tuple()} |
    {error, any()} |
    {error, update_certificate_provider_errors(), tuple()}.
update_certificate_provider(Client, CertificateProviderName, Input0, Options0) ->
    Method = put,
    Path = ["/certificate-providers/", aws_util:encode_uri(CertificateProviderName), ""],
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

%% @doc Update information about a command or mark a command for deprecation.
-spec update_command(aws_client:aws_client(), binary() | list(), update_command_request()) ->
    {ok, update_command_response(), tuple()} |
    {error, any()} |
    {error, update_command_errors(), tuple()}.
update_command(Client, CommandId, Input) ->
    update_command(Client, CommandId, Input, []).

-spec update_command(aws_client:aws_client(), binary() | list(), update_command_request(), proplists:proplist()) ->
    {ok, update_command_response(), tuple()} |
    {error, any()} |
    {error, update_command_errors(), tuple()}.
update_command(Client, CommandId, Input0, Options0) ->
    Method = patch,
    Path = ["/commands/", aws_util:encode_uri(CommandId), ""],
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

%% @doc Updates a
%% Device Defender detect custom metric.
%%
%% Requires permission to access the UpdateCustomMetric:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_custom_metric(aws_client:aws_client(), binary() | list(), update_custom_metric_request()) ->
    {ok, update_custom_metric_response(), tuple()} |
    {error, any()} |
    {error, update_custom_metric_errors(), tuple()}.
update_custom_metric(Client, MetricName, Input) ->
    update_custom_metric(Client, MetricName, Input, []).

-spec update_custom_metric(aws_client:aws_client(), binary() | list(), update_custom_metric_request(), proplists:proplist()) ->
    {ok, update_custom_metric_response(), tuple()} |
    {error, any()} |
    {error, update_custom_metric_errors(), tuple()}.
update_custom_metric(Client, MetricName, Input0, Options0) ->
    Method = patch,
    Path = ["/custom-metric/", aws_util:encode_uri(MetricName), ""],
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

%% @doc Updates the definition for a dimension.
%%
%% You
%% cannot
%% change the type of a dimension after
%% it is created (you can delete it and
%% recreate
%% it).
%%
%% Requires permission to access the UpdateDimension:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_dimension(aws_client:aws_client(), binary() | list(), update_dimension_request()) ->
    {ok, update_dimension_response(), tuple()} |
    {error, any()} |
    {error, update_dimension_errors(), tuple()}.
update_dimension(Client, Name, Input) ->
    update_dimension(Client, Name, Input, []).

-spec update_dimension(aws_client:aws_client(), binary() | list(), update_dimension_request(), proplists:proplist()) ->
    {ok, update_dimension_response(), tuple()} |
    {error, any()} |
    {error, update_dimension_errors(), tuple()}.
update_dimension(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/dimensions/", aws_util:encode_uri(Name), ""],
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

%% @doc Updates values stored in the domain configuration.
%%
%% Domain configurations for default
%% endpoints can't be updated.
%%
%% Requires permission to access the UpdateDomainConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_domain_configuration(aws_client:aws_client(), binary() | list(), update_domain_configuration_request()) ->
    {ok, update_domain_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_domain_configuration_errors(), tuple()}.
update_domain_configuration(Client, DomainConfigurationName, Input) ->
    update_domain_configuration(Client, DomainConfigurationName, Input, []).

-spec update_domain_configuration(aws_client:aws_client(), binary() | list(), update_domain_configuration_request(), proplists:proplist()) ->
    {ok, update_domain_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_domain_configuration_errors(), tuple()}.
update_domain_configuration(Client, DomainConfigurationName, Input0, Options0) ->
    Method = put,
    Path = ["/domainConfigurations/", aws_util:encode_uri(DomainConfigurationName), ""],
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

%% @doc Updates a dynamic thing group.
%%
%% Requires permission to access the UpdateDynamicThingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_dynamic_thing_group(aws_client:aws_client(), binary() | list(), update_dynamic_thing_group_request()) ->
    {ok, update_dynamic_thing_group_response(), tuple()} |
    {error, any()} |
    {error, update_dynamic_thing_group_errors(), tuple()}.
update_dynamic_thing_group(Client, ThingGroupName, Input) ->
    update_dynamic_thing_group(Client, ThingGroupName, Input, []).

-spec update_dynamic_thing_group(aws_client:aws_client(), binary() | list(), update_dynamic_thing_group_request(), proplists:proplist()) ->
    {ok, update_dynamic_thing_group_response(), tuple()} |
    {error, any()} |
    {error, update_dynamic_thing_group_errors(), tuple()}.
update_dynamic_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = patch,
    Path = ["/dynamic-thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
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

%% @doc Updates the event configurations.
%%
%% Requires permission to access the UpdateEventConfigurations:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_event_configurations(aws_client:aws_client(), update_event_configurations_request()) ->
    {ok, update_event_configurations_response(), tuple()} |
    {error, any()} |
    {error, update_event_configurations_errors(), tuple()}.
update_event_configurations(Client, Input) ->
    update_event_configurations(Client, Input, []).

-spec update_event_configurations(aws_client:aws_client(), update_event_configurations_request(), proplists:proplist()) ->
    {ok, update_event_configurations_response(), tuple()} |
    {error, any()} |
    {error, update_event_configurations_errors(), tuple()}.
update_event_configurations(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/event-configurations"],
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

%% @doc Updates the data for a fleet metric.
%%
%% Requires permission to access the UpdateFleetMetric:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_fleet_metric(aws_client:aws_client(), binary() | list(), update_fleet_metric_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_fleet_metric_errors(), tuple()}.
update_fleet_metric(Client, MetricName, Input) ->
    update_fleet_metric(Client, MetricName, Input, []).

-spec update_fleet_metric(aws_client:aws_client(), binary() | list(), update_fleet_metric_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_fleet_metric_errors(), tuple()}.
update_fleet_metric(Client, MetricName, Input0, Options0) ->
    Method = patch,
    Path = ["/fleet-metric/", aws_util:encode_uri(MetricName), ""],
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

%% @doc Updates the search configuration.
%%
%% Requires permission to access the UpdateIndexingConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_indexing_configuration(aws_client:aws_client(), update_indexing_configuration_request()) ->
    {ok, update_indexing_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_indexing_configuration_errors(), tuple()}.
update_indexing_configuration(Client, Input) ->
    update_indexing_configuration(Client, Input, []).

-spec update_indexing_configuration(aws_client:aws_client(), update_indexing_configuration_request(), proplists:proplist()) ->
    {ok, update_indexing_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_indexing_configuration_errors(), tuple()}.
update_indexing_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/indexing/config"],
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

%% @doc Updates supported fields of the specified job.
%%
%% Requires permission to access the UpdateJob:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_job(aws_client:aws_client(), binary() | list(), update_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_job_errors(), tuple()}.
update_job(Client, JobId, Input) ->
    update_job(Client, JobId, Input, []).

-spec update_job(aws_client:aws_client(), binary() | list(), update_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_job_errors(), tuple()}.
update_job(Client, JobId, Input0, Options0) ->
    Method = patch,
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
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
                     {<<"namespaceId">>, <<"namespaceId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the definition for the specified mitigation action.
%%
%% Requires permission to access the UpdateMitigationAction:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_mitigation_action(aws_client:aws_client(), binary() | list(), update_mitigation_action_request()) ->
    {ok, update_mitigation_action_response(), tuple()} |
    {error, any()} |
    {error, update_mitigation_action_errors(), tuple()}.
update_mitigation_action(Client, ActionName, Input) ->
    update_mitigation_action(Client, ActionName, Input, []).

-spec update_mitigation_action(aws_client:aws_client(), binary() | list(), update_mitigation_action_request(), proplists:proplist()) ->
    {ok, update_mitigation_action_response(), tuple()} |
    {error, any()} |
    {error, update_mitigation_action_errors(), tuple()}.
update_mitigation_action(Client, ActionName, Input0, Options0) ->
    Method = patch,
    Path = ["/mitigationactions/actions/", aws_util:encode_uri(ActionName), ""],
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

%% @doc Updates the supported fields for a specific software package.
%%
%% Requires permission to access the UpdatePackage:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% and GetIndexingConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% actions.
-spec update_package(aws_client:aws_client(), binary() | list(), update_package_request()) ->
    {ok, update_package_response(), tuple()} |
    {error, any()} |
    {error, update_package_errors(), tuple()}.
update_package(Client, PackageName, Input) ->
    update_package(Client, PackageName, Input, []).

-spec update_package(aws_client:aws_client(), binary() | list(), update_package_request(), proplists:proplist()) ->
    {ok, update_package_response(), tuple()} |
    {error, any()} |
    {error, update_package_errors(), tuple()}.
update_package(Client, PackageName, Input0, Options0) ->
    Method = patch,
    Path = ["/packages/", aws_util:encode_uri(PackageName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the software package configuration.
%%
%% Requires permission to access the UpdatePackageConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% and iam:PassRole:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html
%% actions.
-spec update_package_configuration(aws_client:aws_client(), update_package_configuration_request()) ->
    {ok, update_package_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_package_configuration_errors(), tuple()}.
update_package_configuration(Client, Input) ->
    update_package_configuration(Client, Input, []).

-spec update_package_configuration(aws_client:aws_client(), update_package_configuration_request(), proplists:proplist()) ->
    {ok, update_package_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_package_configuration_errors(), tuple()}.
update_package_configuration(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/package-configuration"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the supported fields for a specific package version.
%%
%% Requires permission to access the UpdatePackageVersion:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% and GetIndexingConfiguration:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% actions.
-spec update_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_package_version_request()) ->
    {ok, update_package_version_response(), tuple()} |
    {error, any()} |
    {error, update_package_version_errors(), tuple()}.
update_package_version(Client, PackageName, VersionName, Input) ->
    update_package_version(Client, PackageName, VersionName, Input, []).

-spec update_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_package_version_request(), proplists:proplist()) ->
    {ok, update_package_version_response(), tuple()} |
    {error, any()} |
    {error, update_package_version_errors(), tuple()}.
update_package_version(Client, PackageName, VersionName, Input0, Options0) ->
    Method = patch,
    Path = ["/packages/", aws_util:encode_uri(PackageName), "/versions/", aws_util:encode_uri(VersionName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a provisioning template.
%%
%% Requires permission to access the UpdateProvisioningTemplate:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_provisioning_template(aws_client:aws_client(), binary() | list(), update_provisioning_template_request()) ->
    {ok, update_provisioning_template_response(), tuple()} |
    {error, any()} |
    {error, update_provisioning_template_errors(), tuple()}.
update_provisioning_template(Client, TemplateName, Input) ->
    update_provisioning_template(Client, TemplateName, Input, []).

-spec update_provisioning_template(aws_client:aws_client(), binary() | list(), update_provisioning_template_request(), proplists:proplist()) ->
    {ok, update_provisioning_template_response(), tuple()} |
    {error, any()} |
    {error, update_provisioning_template_errors(), tuple()}.
update_provisioning_template(Client, TemplateName, Input0, Options0) ->
    Method = patch,
    Path = ["/provisioning-templates/", aws_util:encode_uri(TemplateName), ""],
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

%% @doc Updates a role alias.
%%
%% Requires permission to access the UpdateRoleAlias:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% The value of
%% `credentialDurationSeconds'
%% :
%% https://docs.aws.amazon.com/iot/latest/apireference/API_UpdateRoleAlias.html#iot-UpdateRoleAlias-request-credentialDurationSeconds
%% must be less than or equal to the
%% maximum session duration of the IAM role that the role alias references.
%% For more
%% information, see Modifying a role maximum session duration (Amazon Web
%% Services API):
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-api.html#roles-modify_max-session-duration-api
%% from the Amazon Web Services
%% Identity and Access Management User Guide.
-spec update_role_alias(aws_client:aws_client(), binary() | list(), update_role_alias_request()) ->
    {ok, update_role_alias_response(), tuple()} |
    {error, any()} |
    {error, update_role_alias_errors(), tuple()}.
update_role_alias(Client, RoleAlias, Input) ->
    update_role_alias(Client, RoleAlias, Input, []).

-spec update_role_alias(aws_client:aws_client(), binary() | list(), update_role_alias_request(), proplists:proplist()) ->
    {ok, update_role_alias_response(), tuple()} |
    {error, any()} |
    {error, update_role_alias_errors(), tuple()}.
update_role_alias(Client, RoleAlias, Input0, Options0) ->
    Method = put,
    Path = ["/role-aliases/", aws_util:encode_uri(RoleAlias), ""],
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

%% @doc Updates a scheduled audit, including which checks are performed and
%% how often the audit takes place.
%%
%% Requires permission to access the UpdateScheduledAudit:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_scheduled_audit(aws_client:aws_client(), binary() | list(), update_scheduled_audit_request()) ->
    {ok, update_scheduled_audit_response(), tuple()} |
    {error, any()} |
    {error, update_scheduled_audit_errors(), tuple()}.
update_scheduled_audit(Client, ScheduledAuditName, Input) ->
    update_scheduled_audit(Client, ScheduledAuditName, Input, []).

-spec update_scheduled_audit(aws_client:aws_client(), binary() | list(), update_scheduled_audit_request(), proplists:proplist()) ->
    {ok, update_scheduled_audit_response(), tuple()} |
    {error, any()} |
    {error, update_scheduled_audit_errors(), tuple()}.
update_scheduled_audit(Client, ScheduledAuditName, Input0, Options0) ->
    Method = patch,
    Path = ["/audit/scheduledaudits/", aws_util:encode_uri(ScheduledAuditName), ""],
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

%% @doc Updates a Device Defender security profile.
%%
%% Requires permission to access the UpdateSecurityProfile:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_security_profile(aws_client:aws_client(), binary() | list(), update_security_profile_request()) ->
    {ok, update_security_profile_response(), tuple()} |
    {error, any()} |
    {error, update_security_profile_errors(), tuple()}.
update_security_profile(Client, SecurityProfileName, Input) ->
    update_security_profile(Client, SecurityProfileName, Input, []).

-spec update_security_profile(aws_client:aws_client(), binary() | list(), update_security_profile_request(), proplists:proplist()) ->
    {ok, update_security_profile_response(), tuple()} |
    {error, any()} |
    {error, update_security_profile_errors(), tuple()}.
update_security_profile(Client, SecurityProfileName, Input0, Options0) ->
    Method = patch,
    Path = ["/security-profiles/", aws_util:encode_uri(SecurityProfileName), ""],
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
                     {<<"expectedVersion">>, <<"expectedVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing stream.
%%
%% The stream version will be incremented by one.
%%
%% Requires permission to access the UpdateStream:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_stream(aws_client:aws_client(), binary() | list(), update_stream_request()) ->
    {ok, update_stream_response(), tuple()} |
    {error, any()} |
    {error, update_stream_errors(), tuple()}.
update_stream(Client, StreamId, Input) ->
    update_stream(Client, StreamId, Input, []).

-spec update_stream(aws_client:aws_client(), binary() | list(), update_stream_request(), proplists:proplist()) ->
    {ok, update_stream_response(), tuple()} |
    {error, any()} |
    {error, update_stream_errors(), tuple()}.
update_stream(Client, StreamId, Input0, Options0) ->
    Method = put,
    Path = ["/streams/", aws_util:encode_uri(StreamId), ""],
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

%% @doc Updates the data for a thing.
%%
%% Requires permission to access the UpdateThing:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_thing(aws_client:aws_client(), binary() | list(), update_thing_request()) ->
    {ok, update_thing_response(), tuple()} |
    {error, any()} |
    {error, update_thing_errors(), tuple()}.
update_thing(Client, ThingName, Input) ->
    update_thing(Client, ThingName, Input, []).

-spec update_thing(aws_client:aws_client(), binary() | list(), update_thing_request(), proplists:proplist()) ->
    {ok, update_thing_response(), tuple()} |
    {error, any()} |
    {error, update_thing_errors(), tuple()}.
update_thing(Client, ThingName, Input0, Options0) ->
    Method = patch,
    Path = ["/things/", aws_util:encode_uri(ThingName), ""],
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

%% @doc Update a thing group.
%%
%% Requires permission to access the UpdateThingGroup:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_thing_group(aws_client:aws_client(), binary() | list(), update_thing_group_request()) ->
    {ok, update_thing_group_response(), tuple()} |
    {error, any()} |
    {error, update_thing_group_errors(), tuple()}.
update_thing_group(Client, ThingGroupName, Input) ->
    update_thing_group(Client, ThingGroupName, Input, []).

-spec update_thing_group(aws_client:aws_client(), binary() | list(), update_thing_group_request(), proplists:proplist()) ->
    {ok, update_thing_group_response(), tuple()} |
    {error, any()} |
    {error, update_thing_group_errors(), tuple()}.
update_thing_group(Client, ThingGroupName, Input0, Options0) ->
    Method = patch,
    Path = ["/thing-groups/", aws_util:encode_uri(ThingGroupName), ""],
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

%% @doc Updates the groups to which the thing belongs.
%%
%% Requires permission to access the UpdateThingGroupsForThing:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_thing_groups_for_thing(aws_client:aws_client(), update_thing_groups_for_thing_request()) ->
    {ok, update_thing_groups_for_thing_response(), tuple()} |
    {error, any()} |
    {error, update_thing_groups_for_thing_errors(), tuple()}.
update_thing_groups_for_thing(Client, Input) ->
    update_thing_groups_for_thing(Client, Input, []).

-spec update_thing_groups_for_thing(aws_client:aws_client(), update_thing_groups_for_thing_request(), proplists:proplist()) ->
    {ok, update_thing_groups_for_thing_response(), tuple()} |
    {error, any()} |
    {error, update_thing_groups_for_thing_errors(), tuple()}.
update_thing_groups_for_thing(Client, Input0, Options0) ->
    Method = put,
    Path = ["/thing-groups/updateThingGroupsForThing"],
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

%% @doc Updates a thing type.
-spec update_thing_type(aws_client:aws_client(), binary() | list(), update_thing_type_request()) ->
    {ok, update_thing_type_response(), tuple()} |
    {error, any()} |
    {error, update_thing_type_errors(), tuple()}.
update_thing_type(Client, ThingTypeName, Input) ->
    update_thing_type(Client, ThingTypeName, Input, []).

-spec update_thing_type(aws_client:aws_client(), binary() | list(), update_thing_type_request(), proplists:proplist()) ->
    {ok, update_thing_type_response(), tuple()} |
    {error, any()} |
    {error, update_thing_type_errors(), tuple()}.
update_thing_type(Client, ThingTypeName, Input0, Options0) ->
    Method = patch,
    Path = ["/thing-types/", aws_util:encode_uri(ThingTypeName), ""],
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

%% @doc Updates a topic rule destination.
%%
%% You use this to change the status, endpoint URL, or
%% confirmation URL of the destination.
%%
%% Requires permission to access the UpdateTopicRuleDestination:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_topic_rule_destination(aws_client:aws_client(), update_topic_rule_destination_request()) ->
    {ok, update_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, update_topic_rule_destination_errors(), tuple()}.
update_topic_rule_destination(Client, Input) ->
    update_topic_rule_destination(Client, Input, []).

-spec update_topic_rule_destination(aws_client:aws_client(), update_topic_rule_destination_request(), proplists:proplist()) ->
    {ok, update_topic_rule_destination_response(), tuple()} |
    {error, any()} |
    {error, update_topic_rule_destination_errors(), tuple()}.
update_topic_rule_destination(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/destinations"],
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

%% @doc Validates a Device Defender security profile behaviors specification.
%%
%% Requires permission to access the ValidateSecurityProfileBehaviors:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec validate_security_profile_behaviors(aws_client:aws_client(), validate_security_profile_behaviors_request()) ->
    {ok, validate_security_profile_behaviors_response(), tuple()} |
    {error, any()} |
    {error, validate_security_profile_behaviors_errors(), tuple()}.
validate_security_profile_behaviors(Client, Input) ->
    validate_security_profile_behaviors(Client, Input, []).

-spec validate_security_profile_behaviors(aws_client:aws_client(), validate_security_profile_behaviors_request(), proplists:proplist()) ->
    {ok, validate_security_profile_behaviors_response(), tuple()} |
    {error, any()} |
    {error, validate_security_profile_behaviors_errors(), tuple()}.
validate_security_profile_behaviors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/security-profile-behaviors/validate"],
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
    Client1 = Client#{service => <<"iot">>},
    Host = build_host(<<"iot">>, Client1),
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
